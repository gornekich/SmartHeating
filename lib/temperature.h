#ifndef _TEMPERATURE_H
#define _TEMPERATURE_H

#include "dev_map.h"
#include "ds18b20.h"
#include "rtc.h"

#include "FreeRTOS.h"
#include "task.h"

#define TEMP_MAN_STACK_DEPTH        1024

/*
 * Enum of OneWire errors
 */
typedef enum {
    TEMP_NO_ERR =       0x00,
    TEMP_LINE_ERR =     0x01,
    TEMP_NOT_FOUND =    0x02,
    TEMP_NOTIFIER_ERR = 0x03,
    TEMP_COMM_TIMEOUT = 0x04,
    TEMP_COMM_ERROR =   0x05
} temp_err_t;

#define temp_err_set(temp_ctrl, status, num) \
        (temp_ctrl.temp_err) |= (status) << (num * 3)
#define temp_err_clr(temp_ctrl, status, num) \
        (temp_ctrl.temp_err) &= ~((status) << (num * 3))
#define temp_err_is_set(temp_ctrl, status, num) \
        (temp_ctrl.temp_err) & (status) << (num * 3)

/*
 * Typedef for temperature control
 */
typedef struct {
    ow_ctrl_t ow_ctrl[NUMBER_OF_TEMP_SNS];
    float temp[NUMBER_OF_TEMP_SNS];
    uint32_t temp_err;
    rtc_task_notifier_t task_notifier;
} temp_ctrl_t;

/*
 * Memory for terminal task
 */
StackType_t temp_manager_ts[TEMP_MAN_STACK_DEPTH];
StaticTask_t temp_manager_tb;

/*
 * Main manager for temperature sensors processing
 */
void temp_manager(void *arg);

#endif // _TEMPERATURE_H
