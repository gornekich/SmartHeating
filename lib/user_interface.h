#ifndef _USER_INTERFACE_H_
#define _USER_INTERFACE_H_

#include "stm32f1xx.h"
#include "FreeRTOS.h"
#include "task.h"

#include "rtc.h"
#include "temperature.h"

#define UI_SCREEN_UPDATE_MS         1000

/*
 * Typedef for user interface manager
 */
typedef struct {
    rtc_err_t rtc_err;
    temp_err_t temp_err;
    rtc_time_t rtc_time;
    float temperature[NUMBER_OF_TEMP_SNS];
    uint32_t ui_screen_update;
}ui_ctrl_t;

/*
 * Memory for error manager task
 */
#define UI_MAN_STACK_DEPTH                  1024

StackType_t ui_manager_ts[UI_MAN_STACK_DEPTH];
StaticTask_t ui_manager_tb;

/*
 * Main freertos task
 */
void ui_manager(void *arg);

#endif //_USER_INTERFACE_H_
