#include "temperature.h"
#include "rtc.h"

#include <string.h>
#include "gpio_map.h"

static temp_ctrl_t temp_ctrl;

/*
 * ----------------------------------------------------------------------------
 * Public functions
 * ----------------------------------------------------------------------------
 */

/*
 * Public function for reading current temperature
 */
void temp_get_temp(float *temp_addr)
{
    memcpy(temp_addr, temp_ctrl.temp, NUMBER_OF_TEMP_SNS * sizeof(float));
    return;
}

/*
 * Public function for reading error status
 */
temp_err_t temp_get_err(void)
{
    return temp_ctrl.temp_err;
}

/*
 * Main manager for temperature sensors processing
 */
void temp_manager(void *arg)
{
    (void) arg;
    int i = 0;
    uint8_t err = 0;
    uint32_t timeout = 0;
    temp_ctrl.temp_err = TEMP_NO_ERR;
    /*
     * Hardware OneWire lines initialization
     */
    temp_ctrl.ow_ctrl[0].ow_gpio.port = OW_PORT0;
    temp_ctrl.ow_ctrl[0].ow_gpio.pin = OW_PIN0;
    temp_ctrl.ow_ctrl[1].ow_gpio.port = OW_PORT1;
    temp_ctrl.ow_ctrl[1].ow_gpio.pin = OW_PIN1;
    temp_ctrl.ow_ctrl[2].ow_gpio.port = OW_PORT2;
    temp_ctrl.ow_ctrl[2].ow_gpio.pin = OW_PIN2;

    for (i = 0; i < NUMBER_OF_TEMP_SNS; i++) {
        ow_init(&temp_ctrl.ow_ctrl[i]);
        err = ow_start_search(&temp_ctrl.ow_ctrl[i]);
        if (err) {
           temp_err_set(temp_ctrl, TEMP_LINE_ERR, i);
           continue;
        }
        err = ds_set_resolution(&temp_ctrl.ow_ctrl[i], temp_ctrl.ow_ctrl[i].rom,
                                DS_RESOLUTION_11BITS);
        if (err) {
            temp_err_set(temp_ctrl, TEMP_NOT_FOUND, i);
            continue;
        }
    }
    temp_ctrl.task_notifier.xTaskToNotify = xTaskGetCurrentTaskHandle();
    temp_ctrl.task_notifier.period = 5;
    if (rtc_add_notifier(&temp_ctrl.task_notifier)) 
        temp_err_set(temp_ctrl, TEMP_NOTIFIER_ERR, 4);

    while (1) {
        ulTaskNotifyTake(pdTRUE, portMAX_DELAY);
        for (i = 0; i < NUMBER_OF_TEMP_SNS; i++) {
            timeout = 10000;
            /*
             * Start conversion on all sensors on the line
             */
            ds_start_all(&temp_ctrl.ow_ctrl[i]);
            /*
             * Wait for conversion finish or timeout
             */
            vTaskDelay(20);
            while ((!ds_finished(&temp_ctrl.ow_ctrl[i])) && (timeout-- > 0));
            if (timeout == 0)
                temp_err_set(temp_ctrl, TEMP_COMM_TIMEOUT, i);
            /*
             * Read temperature
             */
            err = ds_read(&temp_ctrl.ow_ctrl[i], temp_ctrl.ow_ctrl[i].rom,
                          &temp_ctrl.temp[i]);
            if (err) 
                temp_err_set(temp_ctrl, TEMP_COMM_ERROR, i);
        }
    }
    return;
}
