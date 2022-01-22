#include "as5600.h"

#define AS5600 "AS5600"

i2c_config_t i2c_config = {.mode = I2C_MODE_MASTER,
                           .sda_io_num = SDA_GPIO,
                           .scl_io_num = SCL_GPIO,
                           .sda_pullup_en = GPIO_PULLUP_ENABLE,
                           .scl_pullup_en = GPIO_PULLUP_ENABLE,
                           .master.clk_speed = MASTER_CLK_SPEED};

esp_err_t write_8bits_data_to_slave(i2c_config_t i2c_config, uint8_t *value,
                                    size_t size, uint8_t reg)
{
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
                                    i2c_config_t i2c_config, uint8_t reg)
{
  i2c_param_config(I2C_PORT, &i2c_config);

  i2c_cmd_handle_t cmd = i2c_cmd_link_create();

  // sending internal address of the bearing register
  if (reg != 0x00)
  {

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
                                     uint8_t reg)
{
  uint8_t d[] = {0, 0};
  i2c_param_config(I2C_PORT, &i2c_config);
  esp_err_t ret = read_8bit_data_from_slave(2, d, i2c_config, reg);
  *r = d[0] | (d[1] << 8);

  return ret;
}

esp_err_t read_8bit_data_from_2_registers(uint8_t reg1, uint8_t reg2, uint16_t *data)
{
  uint8_t high, low;

  esp_err_t ret1 = read_8bit_data_from_slave(1, &high, i2c_config, reg1);
  esp_err_t ret2 = read_8bit_data_from_slave(1, &low, i2c_config, reg2);

  *data = ((high << 8) | low);

  return ret1 | ret2;
}

esp_err_t config_ams5600(as5600_config_t config)
{
  uint8_t config_lo = config.freq << 6 | config.out << 4 | config.hyst << 2 | config.mode;
  uint8_t config_hi = config.wd << 5 | config.threshold << 2 | config.filter;

  esp_err_t ret1 = write_8bits_data_to_slave(i2c_config, &config_lo, 1, CONF_LO);
  esp_err_t ret2 = write_8bits_data_to_slave(i2c_config, &config_hi, 1, CONF_HI);

  return ret1 && ret2;
}

esp_err_t set_max_angle(uint16_t new_max_angle)
{
  uint8_t low_byte = new_max_angle & 0xff;
  uint8_t high_byte = (new_max_angle >> 8) & 0xff;

  esp_err_t ret1 = write_8bits_data_to_slave(i2c_config, &low_byte, 1, MANG_LO);
  esp_err_t ret2 = write_8bits_data_to_slave(i2c_config, &high_byte, 1, MANG_HI);

  return ret1 && ret2;
}

esp_err_t get_max_angle(uint16_t *max_angle)
{
  return read_8bit_data_from_2_registers(MANG_HI, MANG_LO, max_angle);
}

esp_err_t set_start_position(uint16_t start_position)
{
  uint8_t low_byte = start_position & 0xff;
  uint8_t high_byte = (start_position >> 8) & 0xff;

  esp_err_t ret1 = write_8bits_data_to_slave(i2c_config, &low_byte, 1, ZPOS_LO);
  esp_err_t ret2 = write_8bits_data_to_slave(i2c_config, &high_byte, 1, ZPOS_HI);

  return ret1 && ret2;
}

esp_err_t get_start_position(uint16_t *start_position)
{
  return read_8bit_data_from_2_registers(ZPOS_HI, ZPOS_LO, start_position);
}

esp_err_t set_end_position(uint16_t end_angle)
{
  uint8_t low_byte = end_angle & 0xff;
  uint8_t high_byte = (end_angle >> 8) & 0xff;

  esp_err_t ret1 = write_8bits_data_to_slave(i2c_config, &low_byte, 1, MPOS_LO);
  esp_err_t ret2 = write_8bits_data_to_slave(i2c_config, &high_byte, 1, MPOS_HI);

  return ret1 && ret2;
}

esp_err_t get_end_position(uint16_t *end_position)
{
  return read_8bit_data_from_2_registers(MPOS_HI, MPOS_LO, end_position);
}

esp_err_t get_raw_angle(uint16_t *raw_angle)
{
  return read_8bit_data_from_2_registers(RAW_ANGLE_HI, RAW_ANGLE_LO, raw_angle);
}

esp_err_t get_scaled_angle(uint16_t *scaled_angle)
{
  return read_8bit_data_from_2_registers(ANG_HI, ANG_LO, scaled_angle);
}

esp_err_t detect_magnet()
{
  uint8_t mag_status;

  if (read_8bit_data_from_slave(1, &mag_status, i2c_config, STAT) != ESP_OK)
  {
    ESP_LOGI(AS5600, "Unable to Read Status Register");
    return ESP_FAIL;
  }

  if (mag_status & 0x20)
  {
    ESP_LOGI(AS5600, "Magnet was detected");
    return ESP_OK;
  }
  else if (mag_status & 0x10)
  {
    ESP_LOGE(AS5600, "AGC maximum gain overflow, magnet too weak");
    return ESP_FAIL;
  }
  else if (mag_status & 0x08)
  {
    ESP_LOGE(AS5600, "AGC minimum gain overflow, magnet too strong");
    return ESP_FAIL;
  }
  return ESP_FAIL;
}

esp_err_t get_agc(uint8_t *agc)
{
  return read_8bit_data_from_slave(1, agc, i2c_config, AGC);
}

esp_err_t get_magnitude(uint16_t *magnitude)
{
  return read_8bit_data_from_2_registers(MAG_HI, MAG_LO, magnitude);
}

esp_err_t get_conf(as5600_config_t *config)
{
  uint8_t high, low;
  esp_err_t ret = read_8bit_data_from_slave(1, &high, i2c_config, CONF_HI);
  esp_err_t ret1 = read_8bit_data_from_slave(1, &low, i2c_config, CONF_LO);

  config->mode = (low & 0x03);
  config->hyst = ((low & 0x0c) >> 2);
  config->out = ((low & 0x30) >> 4);
  config->freq = ((low & 0xc0) >> 6);
  config->filter = ((high & 0x03));
  config->threshold = ((high & 0x1c)) >> 2;
  config->wd = ((high & 0x20)) >> 5;

  return ret & ret1
}

esp_err_t get_burn_count(uint8_t *count)
{
  return read_8bit_data_from_slave(1, count, i2c_config, ZMCO);
}
