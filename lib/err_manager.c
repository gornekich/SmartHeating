#include "err_manager.h"

#include "stm32f1xx_ll_gpio.h"

/*
 * Main freertos task implementation
 */
void err_manager(void *arg)
{
    (void) arg;
    
    while (1) {
        LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_13);
        vTaskDelay(1000);
    }
}