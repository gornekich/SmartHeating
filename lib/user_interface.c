#include "user_interface.h"
#include "oled_driver.h"
#include "xprintf.h"

#include "stm32f1xx_ll_gpio.h"

static ui_ctrl_t ui_ctrl;

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
 * Welcome page
 */
static void ui_welcome(void)
{
    oled_set_cursor(0, 0);
    xprintf("\n     Welcome to!\n\n");
    xprintf("  Smart Heat project\n");
    oled_update();
    vTaskDelay(1000);
}
/*
 * Configure RTC message
 */
static void ui_rtc_show(void)
{
    oled_set_cursor(0, 0);
    switch (ui_ctrl.rtc_err) {
        case RTC_NO_ERR:
            xprintf("Current time:\n");
            xprintf("%02d.%02d.%d %02d:%02d:%02d", ui_ctrl.rtc_time.date,
                    ui_ctrl.rtc_time.month, ui_ctrl.rtc_time.year,
                    ui_ctrl.rtc_time.hour, ui_ctrl.rtc_time.minute,
                    ui_ctrl.rtc_time.second);
            break;
        case RTC_WRONG_TIME:
            xprintf("Error setting rtc: wrong format");
            break;
        case RTC_DESYNCHRONIZATION:
            xprintf ("     Attention!\n");
            xprintf("   Need to update\n");
            xprintf("    time and date\n");
            break;
        case RTC_TOO_MUCH_NOTIFIERS:
            xprintf("Too many notifiers\n");
            break;
        default:
            xprintf("Error without handler oxxured!");
            break;
    }
    return;
}
/*
 * Configure temperature message
 */
static void ui_temp_show(void)
{
    int i = 0;
    int temp_int = 0;
    int temp_frac = 0;

    oled_set_cursor(0, 3);
    switch(ui_ctrl.temp_err) {
        case TEMP_NO_ERR:
            xprintf("Current temperature:\n");
            for (i = 0; i < NUMBER_OF_TEMP_SNS; i++) {
            temp_int = (int) ui_ctrl.temperature[i];
            temp_frac = (int)((ui_ctrl.temperature[i] - (float)temp_int) * 100);
            xprintf("%d.%d ", temp_int, temp_frac);
            }
            break;
        default:
            xprintf("Current temperature:\n");
            for (i = 0; i < NUMBER_OF_TEMP_SNS; i++) {
            temp_int = (int) ui_ctrl.temperature[i];
            temp_frac = (int)((ui_ctrl.temperature[i] - (float)temp_int) * 100);
            xprintf("%d.%d ", temp_int, temp_frac);
            }
            xprintf("\nSome errors occured!");
            break;
    }
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

    oled_config();
    printf_config();
    // rtc_init();
    ui_welcome();
    ui_ctrl.ui_screen_update = UI_SCREEN_UPDATE_MS;

    while (1) {
        /*
         * Get errors and data from other modules
         */
        ui_ctrl.rtc_err = rtc_get_err_status();
        rtc_get_precise(&ui_ctrl.rtc_time);
        ui_ctrl.temp_err = temp_get_err();
        temp_get_temp(ui_ctrl.temperature);
        /*
         * Show modules states
         */
        oled_clr(clBlack);
        ui_rtc_show();
        ui_temp_show();
        oled_update();
        LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_13);
        /*
         * Go to block state
         */
        vTaskDelay(ui_ctrl.ui_screen_update);
    }
}
