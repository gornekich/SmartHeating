#ifndef _ERR_MANAGER_H_
#define _ERR_MANAGER_H_

#include "stm32f1xx.h"
#include "FreeRTOS.h"
#include "task.h"

/*
 * Memory for error manager task
 */
#define ERR_MAN_STACK_DEPTH                  1024

StackType_t err_manager_ts[ERR_MAN_STACK_DEPTH];
StaticTask_t err_manager_tb;

/*
 * Main freertos task
 */
void err_manager(void *arg);

#endif //_ERR_MANAGER_H_
