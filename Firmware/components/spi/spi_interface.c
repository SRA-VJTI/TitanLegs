#include "spi_interface.h"
#include <stdio.h>
#include <stdint.h>
#include "driver/spi_common.h"
#include "driver/spi_master.h"
#include "esp_log.h"
#include "esp_err.h"
#include "sdkconfig.h"
#define HOST HSPI_HOST

#if defined   CONFIG_SPIBUS_LOG_RW_LEVEL_INFO
#define SPIBUS_LOG_RW(format, ... ) ESP_LOGI(TAG, format, ##__VA_ARGS__)
#elif defined CONFIG_SPIBUS_LOG_RW_LEVEL_DEBUG
#define SPIBUS_LOG_RW(format, ... ) ESP_LOGD(TAG, format, ##__VA_ARGS__)
#elif defined CONFIG_SPIBUS_LOG_RW_LEVEL_VERBOSE
#define SPIBUS_LOG_RW(format, ... ) ESP_LOGV(TAG, format, ##__VA_ARGS__)
#endif
#define SPIBUS_LOGE(format, ... )   ESP_LOGE(TAG, format, ##__VA_ARGS__)


static const char* TAG __attribute__((unused)) = "SPI Interface";


/*******************************************************************************
 * SETUP
 ******************************************************************************/

esp_err_t begin(int mosi_io_num, int miso_io_num, int sclk_io_num, int max_transfer_sz) {
    if(max_transfer_sz>= SPI_MAX_DMA_LEN){
        max_transfer_sz = SPI_MAX_DMA_LEN;
    }
    spi_bus_config_t config;
    config.mosi_io_num = mosi_io_num;
    config.miso_io_num = miso_io_num;
    config.sclk_io_num = sclk_io_num;
    config.quadwp_io_num = -1;  // -1 not used
    config.quadhd_io_num = -1;  // -1 not used
    config.max_transfer_sz = max_transfer_sz;
    config.flags= SPICOMMON_BUSFLAG_NATIVE_PINS;
    return spi_bus_initialize(HOST, &config, 0);  // 0 DMA not used
}

esp_err_t close() {
    return spi_bus_free(HOST);
}

esp_err_t addDevice_cs(uint8_t mode, uint32_t clock_speed_hz, int cs_io_num, spi_device_handle_t *handle) {
    spi_device_interface_config_t dev_config;
    dev_config.command_bits = 0;
    dev_config.address_bits = 8;
    dev_config.dummy_bits = 0;
    dev_config.mode = mode;
    dev_config.duty_cycle_pos = 128;  // default 128 = 50%/50% duty
    dev_config.cs_ena_pretrans = 0;  // 0 not used
    dev_config.cs_ena_posttrans = 0;  // 0 not used
    dev_config.clock_speed_hz = clock_speed_hz;
    dev_config.spics_io_num = cs_io_num;
    dev_config.flags = 0;  // 0 not used
    dev_config.queue_size = 1;
    dev_config.pre_cb = NULL;
    dev_config.post_cb = NULL;
    return spi_bus_add_device(HOST, &dev_config, handle);
}

esp_err_t addDevice(spi_device_interface_config_t *dev_config, spi_device_handle_t *handle) {
    dev_config->address_bits = 8;  // must be set, SPIbus uses this 8-bits to send the regAddr
    return spi_bus_add_device(HOST, dev_config, handle);
}

esp_err_t removeDevice(spi_device_handle_t handle) {
    return spi_bus_remove_device(handle);
}


/*******************************************************************************
 * WRITING
 ******************************************************************************/
esp_err_t writeBit(spi_device_handle_t handle, uint8_t regAddr, uint8_t bitNum, uint8_t data) {
    uint8_t buffer;
    esp_err_t err = readByte(handle, regAddr, &buffer);
    if (err) return err;
    buffer = data ? (buffer | (1 << bitNum)) : (buffer & ~(1 << bitNum));
    return writeByte(handle, regAddr, buffer);
}

esp_err_t writeBits(spi_device_handle_t handle, uint8_t regAddr, uint8_t bitStart, uint8_t length, uint8_t data) {
    uint8_t buffer;
    esp_err_t err = readByte(handle, regAddr, &buffer);
    if (err) return err;
    uint8_t mask = ((1 << length) - 1) << (bitStart - length + 1);
    data <<= (bitStart - length + 1);
    data &= mask;
    buffer &= ~mask;
    buffer |= data;
    return writeByte(handle, regAddr, buffer);
}

esp_err_t writeByte(spi_device_handle_t handle, uint8_t regAddr, uint8_t data) {
    return writeBytes(handle, regAddr, 1, &data);
}

esp_err_t writeBytes(spi_device_handle_t handle, uint8_t regAddr, size_t length, const uint8_t *data) {
    spi_transaction_t transaction;
    transaction.flags = 0;
    transaction.cmd = 0;
    transaction.addr = regAddr & SPIBUS_WRITE;
    transaction.length = length * 8;
    transaction.rxlength = 0;
    transaction.user = NULL;
    transaction.tx_buffer = data;
    transaction.rx_buffer = NULL;
    esp_err_t err = spi_device_transmit(handle, &transaction);
    #if defined CONFIG_SPIBUS_LOG_READWRITES
        if (!err) { 
            char str[length*5+1];
            for(size_t i = 0; i < length; i++) 
                sprintf(str+i*5, "0x%s%X ", (data[i] < 0x10 ? "0" : ""), data[i]);
            SPIBUS_LOG_RW("[%s, handle:0x%X] Write %d bytes to__ register 0x%X, data: %s", (HOST == 1 ? "HSPI" : "VSPI"), (uint32_t)handle, length, regAddr, str);
        }
    #endif
    return err;
}


/*******************************************************************************
 * READING
 ******************************************************************************/
esp_err_t readBit(spi_device_handle_t handle, uint8_t regAddr, uint8_t bitNum, uint8_t *data) {
    return readBits(handle, regAddr, bitNum, 1, data);
}

esp_err_t readBits(spi_device_handle_t handle, uint8_t regAddr, uint8_t bitStart, uint8_t length, uint8_t *data) {
    uint8_t buffer;
    esp_err_t err = readByte(handle, regAddr, &buffer);
    if(!err) {
        uint8_t mask = ((1 << length) - 1) << (bitStart - length + 1);
        buffer &= mask;
        buffer >>= (bitStart - length + 1);
        *data = buffer;
    }
    return err;
}

esp_err_t readByte(spi_device_handle_t handle, uint8_t regAddr, uint8_t *data) {
    return readBytes(handle, regAddr, 1, data);
}

esp_err_t readBytes(spi_device_handle_t handle, uint8_t regAddr, size_t length, uint8_t *data) {
    if(length == 0) return ESP_ERR_INVALID_SIZE;
    spi_transaction_t transaction;
    transaction.flags = 0;
    transaction.cmd = 0;
    transaction.addr = regAddr | SPIBUS_READ;
    transaction.length = length * 8;
    transaction.rxlength = length * 8;
    transaction.user = NULL;
    transaction.tx_buffer = NULL;
    transaction.rx_buffer = data;
    esp_err_t err = spi_device_transmit(handle, &transaction);    
    #if defined CONFIG_SPIBUS_LOG_READWRITES
        if (!err) { 
            char str[length*5+1]; 
            for(size_t i = 0; i < length; i++) 
            sprintf(str+i*5, "0x%s%X ", (data[i] < 0x10 ? "0" : ""), data[i]);
            SPIBUS_LOG_RW("[%s, handle:0x%X] Read_ %d bytes from register 0x%X, data: %s", (HOST == 1 ? "HSPI" : "VSPI"), (uint32_t)handle, length, regAddr, str);
        }
    #endif
    return err;
}


/*******************************************************************************
 * OBJECTS
 ******************************************************************************/
SPI_t hspi = {
    .host = HSPI_HOST,
    .begin = begin,
    .close = close,
    .addDevice_cs = addDevice_cs,
    .addDevice = addDevice,
    .removeDevice = removeDevice,
    .writeBit=  writeBit,
    .writeBits = writeBits,
    .writeByte = writeByte,
    .writeBytes = writeBytes,
    .readBit = readBit,
    .readBits = readBits,
    .readByte = readByte,
    .readBytes = readBytes
};

SPI_t vspi = {
    .host = VSPI_HOST,
    .begin = begin,
    .close = close,
    .addDevice_cs = addDevice_cs,
    .addDevice = addDevice,
    .removeDevice = removeDevice,
    .writeBit=  writeBit,
    .writeBits = writeBits,
    .writeByte = writeByte,
    .writeBytes = writeBytes,
    .readBit = readBit,
    .readBits = readBits,
    .readByte = readByte,
    .readBytes = readBytes
};