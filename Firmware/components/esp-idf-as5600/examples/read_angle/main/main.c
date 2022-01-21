#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/spi_master.h"
#include "driver/gpio.h"
#include "esp_err.h"
#include "esp_log.h"
#include "as5600.h"

static const char TAG[] = "bldc";

void app_main()
{
    if(detect_magnet()==ESP_FAIL)
    {
        while (1)
        {
            if(detect_magnet() == ESP_OK)
            {
                uint16_t magnitude;
                ESP_LOGI(TAG,"Current Magnitude = %d",get_magnitude(&magnitude));
            }
        }
        
    }
}