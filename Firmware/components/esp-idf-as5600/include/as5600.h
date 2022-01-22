#ifndef AS5600_H
#define AS5600_H

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "driver/i2c.h"
#include "esp_log.h"

#define SDA_GPIO 21
#define SCL_GPIO 22
#define I2C_PORT I2C_NUM_0
#define MASTER_CLK_SPEED 100000

#define AS5600_CHIP_ID  0x36

#define ZMCO  0x00
#define ZPOS_HI  0x01
#define ZPOS_LO  0x02
#define MPOS_HI  0x03
#define MPOS_LO  0x04
#define MANG_HI  0x05
#define MANG_LO  0x06
#define CONF_HI  0x07
#define CONF_LO  0x08
#define RAW_ANGLE_HI  0x0c
#define RAW_ANGLE_LO  0x0d
#define ANG_HI  0x0e
#define ANG_LO  0x0f
#define STAT  0x0b
#define AGC  0x1a
#define MAG_HI  0x1b
#define MAG_LO  0x1c
#define BURN  0xff


// Configuration Register
typedef enum {
    NOM =  0,  
    LPM1 = 1,
    LPM2 = 2,
    LPM3 = 3
} Power_Mode;

typedef enum {
    OFF = 0,  
    LSB_1 = 1,
    LSB_2 = 2,
    LSB_3 = 3
} Hysteresis;

typedef enum {
  ANALOG_1 = 0, // full range from 0% to 100% between GND and VDD
  ANALOG_2 = 1, // reduced range from 10% to 90% between GND and VDD,
  DIGITAL_PWM = 2
} Output_Stage;

typedef enum {
  FREQUENCY_115hz = 0,
  FREQUENCY_230hz = 1,
  FREQUENCY_460hz = 2,
  FREQUENCY_920hz = 3
} PWM_Frequency;

typedef enum {
  FILTER_16x = 0,
  FILTER_8x = 1,
  FILTER_4x = 2,
  FILTER_2x = 3
} Slow_Filter;

typedef enum {
  SLOW_FILTER = 0,
  LSB_6 = 1,
  LSB_7 = 2,
  LSB_9 = 3,
  LSB_18 = 4,
  LSB_21 = 5, 
  LSB_24 = 6,
  LSB_10 = 7
} Fast_Filter_Threshold;

typedef enum {
    // OFF 
  ON = 1
} Watchdog;

typedef struct 
{
    Power_Mode mode;
    Hysteresis hyst;       
    Output_Stage out;     
    PWM_Frequency freq;     
    Slow_Filter filter;
    Fast_Filter_Threshold threshold;
    Watchdog wd;
}as5600_config_t;








//////
  esp_err_t config_ams5600(as5600_config_t config);
  esp_err_t set_max_angle(uint16_t new_max_angle);
  esp_err_t get_max_angle(uint16_t *max_angle);

  esp_err_t set_start_position(uint16_t start_position);
  esp_err_t get_start_position(uint16_t *start_position);

  esp_err_t set_end_position(uint16_t end_angle);
  esp_err_t get_end_position(uint16_t *end_position);

  esp_err_t get_raw_angle(uint16_t *raw_angle);
  esp_err_t get_scaled_angle(uint16_t *scaled_angle);

  esp_err_t detect_magnet();

  esp_err_t get_agc(uint8_t *agc);
  esp_err_t get_magnitude(uint16_t *magnitude);
  esp_err_t get_conf(as5600_config_t *config);

  esp_err_t get_burn_count(uint8_t *count);
////////

// inline void init_AMS_5600(as5600_config &cfg) {}
// /* mode = 0, output PWM, mode = 1 output analog (full range from 0% to 100%
//  * between GND and VDD */
// void AMS_5600::setOutPut(uint8_t mode) {
//   uint8_t config_status;
//   config_status = readOneByte(_conf_lo);
//   if (mode == 1) {
//     config_status = config_status & 0xcf;
//   } else {
//     uint8_t config_status;
//     config_status = readOneByte(_conf_lo);
//     if (mode == 1) {
//       config_status = config_status & 0xcf;
//     } else {
//       config_status = config_status & 0xef;
//     }
//     writeOneByte(_conf_lo, lowByte(config_status));
//   }
// }

#endif