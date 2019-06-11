#include "err_manager.h"
#include "oled_driver.h"
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
void err_manager(void *arg)
{
    (void) arg;

    oled_config();
    printf_config();
    rtc_init();

    xprintf("\n     Welcome to!\n\n");
    xprintf("  Smart Heat project\n");
    oled_update();
    
    while (1) {
        LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_13);
        vTaskDelay(1000);
    }
}
