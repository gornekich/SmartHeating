#ifndef _USER_INTERFACE_H_
#define _USER_INTERFACE_H_

#include "stm32f1xx.h"
#include "FreeRTOS.h"
#include "task.h"

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
