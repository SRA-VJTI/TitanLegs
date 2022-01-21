#include "as5600.h"

#define AS5600 "AS5600"

i2c_config_t i2c_config = {.mode = I2C_MODE_MASTER,
                           .sda_io_num = SDA_GPIO,
                           .scl_io_num = SCL_GPIO,
                           .sda_pullup_en = GPIO_PULLUP_ENABLE,
                           .scl_pullup_en = GPIO_PULLUP_ENABLE,
                           .master.clk_speed = MASTER_CLK_SPEED};

esp_err_t write_8bits_data_to_slave(i2c_config_t i2c_config, uint8_t *value,
                                    size_t size, uint8_t reg) {
  i2c_param_config(I2C_PORT, &i2c_config);

  // creating a command handle
  i2c_cmd_handle_t cmd = i2c_cmd_link_create();

  // Sending a Start sequence
  i2c_master_start(cmd);

  // Sending the I2C address of the slave with the R/W bit low
  i2c_master_write_byte(cmd, AS5600_CHIP_ID << 1 | I2C_MASTER_WRITE, true);

  // Sending the internal register number you want to write to
  i2c_master_write_byte(cmd, reg, true);

  // Sending the data byte
  i2c_master_write(cmd, value, size, I2C_MASTER_ACK);

  // stopping the command handle
  i2c_master_stop(cmd);

  esp_err_t res = i2c_master_cmd_begin(I2C_PORT, cmd, 1000 / portTICK_RATE_MS);
  i2c_cmd_link_delete(cmd);
  return res;
}

esp_err_t read_8bit_data_from_slave(uint8_t size, uint8_t *data,
                                    i2c_config_t i2c_config, uint8_t reg) {
  i2c_param_config(I2C_PORT, &i2c_config);

  i2c_cmd_handle_t cmd = i2c_cmd_link_create();

  // sending internal address of the bearing register
  if (reg != 0x00) {

    // sending a start sequence
    i2c_master_start(cmd);
    // sending the i2c address with R/W bit low
    i2c_master_write_byte(cmd, AS5600_CHIP_ID << 1, true);
    // sending the address of the register
    i2c_master_write(cmd, &reg, 1, true);
  }

  // sending a start sequence again
  i2c_master_start(cmd);
  // sending i2c address with R/W bit high
  i2c_master_write_byte(cmd, (AS5600_CHIP_ID << 1) | I2C_MASTER_READ, true);
  // reading the data byte
  i2c_master_read(cmd, data, size, I2C_MASTER_LAST_NACK);
  // sending the stop sequence
  i2c_master_stop(cmd);

  esp_err_t res = i2c_master_cmd_begin(I2C_PORT, cmd, 1000 / portTICK_RATE_MS);
  i2c_cmd_link_delete(cmd);
  return res;
}

esp_err_t read_16bit_data_from_slave(uint16_t *r, i2c_config_t i2c_config,
                                     uint8_t reg) {
  uint8_t d[] = {0, 0};
  i2c_param_config(I2C_PORT, &i2c_config);
  esp_err_t ret = read_8bit_data_from_slave(2, d, i2c_config, reg);
  *r = d[0] | (d[1] << 8);

  return ret;
}

esp_err_t config_ams5600(as5600_config_t config){
    uint8_t config_lo = config.freq<<6 | config.out << 4 | config.hyst << 2 | config.mode;
    uint8_t config_hi = config.wd << 4 | config.threshold << 2 | config.filter;

    esp_err_t ret1 = write_8bits_data_to_slave(i2c_config, &config_lo,1, CONF_LO);
    esp_err_t ret2 = write_8bits_data_to_slave(i2c_config, &config_hi,1, CONF_HI);

    return ret1 && ret2;
    
}

esp_err_t detect_magnet() {
  uint8_t mag_status;

  if (read_8bit_data_from_slave(1, &mag_status, i2c_config, STAT) != ESP_OK) {
    ESP_LOGI(AS5600, "Unable to Read Status Register");
    return ESP_FAIL;
  }

  if (mag_status & 0x20) {
    ESP_LOGI(AS5600, "Magnet was detected");
    return ESP_OK;
  } else if (mag_status & 0x10) {
    ESP_LOGI(AS5600, "AGC maximum gain overflow, magnet too weak");
    return ESP_FAIL;
  } else if (mag_status & 0x08) {
    ESP_LOGI(AS5600, "AGC minimum gain overflow, magnet too strong");
    return ESP_FAIL;
  }
  return ESP_FAIL;
}

esp_err_t get_magnitude(uint16_t *magnitude) {
  uint8_t mag_lo, mag_hi;

  if (read_8bit_data_from_slave(1, &mag_hi, i2c_config, MAG_HI) != ESP_OK ||
      read_8bit_data_from_slave(1, &mag_lo, i2c_config, MAG_LO) != ESP_OK) {
    ESP_LOGI(AS5600, "Unable to Get Magnitude");
    return ESP_FAIL;
  }

  *magnitude = ((mag_hi << 8) | mag_lo );

  return ESP_OK;
}