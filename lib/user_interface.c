#include "user_interface.h"
#include "oled_driver.h"
#include "temperature.h"
#include "xprintf.h"
#include "rtc.h"

#include "stm32f1xx_ll_gpio.h"

/*
 * ----------------------------------------------------------------------------
 * Private functions
 * ----------------------------------------------------------------------------
 */

/*
 * Set callback for out device
 */
static void printf_config(void)
{
    xdev_out(oled_putc);
    return;
}

/*
 * ----------------------------------------------------------------------------
 * Public functions
 * ----------------------------------------------------------------------------
 */

/*
 * Main freertos task implementation
 */
void ui_manager(void *arg)
{
    (void) arg;
    rtc_time_t rtc_time;
    int i = 0;
    float temperature[NUMBER_OF_TEMP_SNS];
    int temp_tmp;

    oled_config();
    printf_config();
    rtc_init();

    xprintf("\n     Welcome to!\n\n");
    xprintf("  Smart Heat project\n");
    oled_update();
    vTaskDelay(1000);

    while (1) {

        if (rtc_get_err_status() == RTC_DESYNCHRONIZATION) {
            oled_clr(clBlack);
            oled_set_cursor(0, 0);
            xprintf ("     Attention!\n");
            xprintf("   Need to update\n");
            xprintf("    time and date\n");
        }
        else {
            rtc_get_precise(&rtc_time);
            oled_clr(clBlack);
            oled_set_cursor(0, 0);
            xprintf("Current time:\n");
            xprintf("%d.%d.%d %d:%d:%d", rtc_time.date, rtc_time.month,
                    rtc_time.year, rtc_time.hour, rtc_time.minute, rtc_time.second);
        }
        if (temp_get_err()) {
            xprintf("Error occured\n");
        }
        temp_get_temp(temperature);
        for (i = 0; i < NUMBER_OF_TEMP_SNS; i++) {
            temp_tmp = (int)temperature[i];
            xprintf("%d.%d ", temp_tmp, (int)((temperature[i] - temp_tmp) * 100));
        }
        oled_update();
        LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_13);
        vTaskDelay(1000);
    }
}
