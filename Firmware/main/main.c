#include <stdio.h>
#include <stdint.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_log.h"
#include "esp_err.h"
#include "spi_interface.h"
#include "driver/gpio.h"

#define SPI_MODE  0
#define MISO_PIN  12
#define MOSI_PIN  13
#define SCLK_PIN  14
#define CS_PIN    15
#define SPI_CLOCK 1000000  // 1 MHz
#define MAX_TRANSFER_SZ  4094
#define DRV8305_EN 2

void app_main() {
    printf("SPIbus Example \n");
    fflush(stdout);

    gpio_config_t io_conf;
    //disable interrupt
    io_conf.intr_type = GPIO_INTR_DISABLE;
    //set as output mode
    io_conf.mode = GPIO_MODE_OUTPUT;
    //bit mask of the pins that you want to set,e.g.GPIO18/19
    io_conf.pin_bit_mask = 1ULL<<DRV8305_EN;
    //disable pull-down mode
    io_conf.pull_down_en = 0;
    //disable pull-up mode
    io_conf.pull_up_en = 0;
    //configure GPIO with the given settings
    gpio_config(&io_conf);
    gpio_set_level(DRV8305_EN,1);
    
    spi_device_handle_t device;
    ESP_ERROR_CHECK( hspi.begin(MOSI_PIN, MISO_PIN, SCLK_PIN,MAX_TRANSFER_SZ));
    ESP_ERROR_CHECK( hspi.addDevice_cs(SPI_MODE, SPI_CLOCK, CS_PIN, &device));

    uint8_t buffer=0;
    while (1) {
        for(int i=0x0;i<13;i++){
            ESP_ERROR_CHECK(hspi.readByte(device, i, &buffer));
            printf("Register %x Description:%d\n",i,buffer);
        }
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }

    hspi.removeDevice(device);
    hspi.close();
    vTaskDelay(portMAX_DELAY);
}