#include "rtc.h"
#include "stm32f1xx_ll_bus.h"
#include "stm32f1xx_ll_pwr.h"
#include "stm32f1xx_ll_rcc.h"

#include "terminal_cmds.h"
#include <string.h>

/*
 * ----------------------------------------------------------------------------
 * Private variables
 * ----------------------------------------------------------------------------
 */

/*
 * Main RTC control structure object
 */
static rtc_ctrl_t rtc_ctrl;

/*
 * ----------------------------------------------------------------------------
 * Private functions
 * ----------------------------------------------------------------------------
 */

/*
 * Checking leap year function
 * @retval 0 - not leap year; 1 - leap year
 */
static uint8_t rtc_year_is_leap(uint16_t year) {
    if (year % 4 == 0) {
        if (year % 100 == 0) {
            if (year % 400 == 0)
                return 1;
            else
                return 0;
        }
        else
            return 1;
    }
    else
        return 0;
}

/*
 * ----------------------------------------------------------------------------
 * Public functions
 * ----------------------------------------------------------------------------
 */

/*
 * Add task notifier
 */
rtc_err_t rtc_add_notifier(rtc_task_notifier_t *task_notifier)
{
    if (rtc_ctrl.num_task_notify > MAX_TASK_NOTIFY - 2)
        return RTC_TOO_MUCH_NOTIFIERS;
    memcpy(&rtc_ctrl.rtc_task_notifier[rtc_ctrl.num_task_notify],
           task_notifier, sizeof(rtc_task_notifier_t));
    rtc_ctrl.num_task_notify++;
    return RTC_NO_ERR;
}

/*
 * Initialization function
 */
rtc_err_t rtc_init(void)
{
    uint32_t bkp_reg_val;

    /*
     * Check backup register value to detect RTC reset
     */
    bkp_reg_val = LL_RTC_BKP_GetRegister(RTC_BKP, RTC_BKP_REG);
    if (bkp_reg_val != RTC_BKP_REG_CHECK_VALUE) {
        /*
         * Enable access to backup registers
         */
        LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_PWR);
        LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_BKP);
        LL_PWR_EnableBkUpAccess();
        /*
         * RTC were not working during system reset
         * Reset backup register
         */
        LL_RCC_ForceBackupDomainReset();
        LL_RCC_ReleaseBackupDomainReset();
        /*
         * Configure RTC clocking
         */
        LL_RCC_LSE_Enable();
        while (!LL_RCC_LSE_IsReady());
        LL_RCC_SetRTCClockSource(LL_RCC_RTC_CLKSOURCE_LSE);
        LL_RCC_EnableRTC();
        /*
         * Configure RTC registers
         */
        while (!LL_RTC_IsActiveFlag_RTOF(RTC));
        while (!LL_RTC_IsActiveFlag_RS(RTC));
        LL_RTC_DisableWriteProtection(RTC);
        LL_RTC_SetAsynchPrescaler(RTC, (uint32_t) 32767);
        LL_RTC_EnableWriteProtection(RTC);
        while (!LL_RTC_IsActiveFlag_RTOF(RTC));
        /*
         * Enable 1 second interrupt
         */
        LL_RTC_EnableIT_SEC(RTC);
        while (!LL_RTC_IsActiveFlag_RTOF(RTC));
        rtc_ctrl.rtc_err_status = RTC_DESYNCHRONIZATION;
    }
    else {
        /*
         * RTC was operating during system reset. Just enable 1 second interrupt
         */
        while (!LL_RTC_IsActiveFlag_RS(RTC));
        LL_RTC_EnableIT_SEC(RTC);
        while (!LL_RTC_IsActiveFlag_RTOF(RTC));
        rtc_ctrl.rtc_err_status = RTC_NO_ERR;
    }
    /*
     * Enable backup registers write protection
     */
    LL_PWR_DisableBkUpAccess();
    /*
     * Enable global interrupt
     */
    NVIC_SetPriority(RTC_IRQN, RTC_IRQN_PRIORITY);
    NVIC_EnableIRQ(RTC_IRQN);
    return rtc_ctrl.rtc_err_status;
}

/*
 * Setting date and time function
 */
rtc_err_t rtc_set(rtc_time_t* time)
{
    static const uint8_t month_table[12] =
                         {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    uint32_t rtc_cnt = 0;
    uint16_t year_iter = 0;
    uint8_t month_iter = 0;

    /*
     * Check input parameters
     */
    if (time->year < RTC_INIT_YEAR || time->year > RTC_MAX_YEAR ||
        time->month < 1 || time->month > 12  ||
        time->date < 1  || time->date > 31   ||
        time->hour > 23 || time->minute > 59 || time->second > 59) {
        return RTC_WRONG_TIME;
    }
    /*
     * Update internal RTC stracture
     */
    memcpy(&rtc_ctrl.rtc_time, time, sizeof(rtc_time_t));
    /*
     * Calclate RTC CNT register
     */
    for (year_iter = RTC_INIT_YEAR; year_iter < time->year; year_iter++) {
        if (rtc_year_is_leap(year_iter))
            rtc_cnt += RTC_SECONDS_PER_LEAP_YEAR;
        else
            rtc_cnt += RTC_SECONDS_PER_YEAR;
    }
    for (month_iter = 0 ; month_iter < time->month - 1; month_iter++)
        rtc_cnt += (((uint32_t) month_table[month_iter]) * RTC_SECONDS_PER_DAY);
    // TODO check it!
    if ((rtc_year_is_leap(time->year)) && time->month > 2)
        rtc_cnt += RTC_SECONDS_PER_DAY;
    rtc_cnt += (uint32_t) (time->date - 1) * RTC_SECONDS_PER_DAY;
    rtc_cnt += (uint32_t) (time->hour * RTC_SECONDS_PER_HOUR);
    rtc_cnt += (uint32_t) (time->minute * RTC_SECONDS_PER_MINUTE);
    rtc_cnt += time->second;
    /*
     * Enable access to backup registers
     */
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_PWR);
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_BKP);
    LL_PWR_EnableBkUpAccess();
    /*
     * Update backup register value after RTC initialization
     */
    LL_RTC_BKP_SetRegister(RTC_BKP, RTC_BKP_REG, RTC_BKP_REG_CHECK_VALUE);
    rtc_ctrl.rtc_err_status = RTC_NO_ERR;
    /*
     * Write RTC CNT register
     */
    while (!LL_RTC_IsActiveFlag_RTOF(RTC));
    while (!LL_RTC_IsActiveFlag_RS(RTC));
    LL_RTC_DisableWriteProtection(RTC);
    LL_RTC_TIME_Set(RTC, rtc_cnt);
    LL_RTC_EnableWriteProtection(RTC);
    while (!LL_RTC_IsActiveFlag_RTOF(RTC));
    /*
     * Enable backup registers write protection
     */
    LL_PWR_DisableBkUpAccess();
    return rtc_ctrl.rtc_err_status;
}

/*
 * Getting date and time function with 1 second precision
 */
rtc_err_t rtc_get_precise(rtc_time_t* rtc_time)
{
    static const uint8_t month_table[12] =
                         {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    uint32_t sec_tmp;
    uint32_t day_tmp;
    uint16_t curr_year;
    uint8_t curr_month;
    static uint32_t last_day;
    /*
     * Read RTC CNT register
     */
    sec_tmp = LL_RTC_TIME_Get(RTC);
    day_tmp = sec_tmp / RTC_SECONDS_PER_DAY;
    /*
     * Update date only if it changes from last call
     */
    if (last_day != day_tmp) {
        last_day = day_tmp;
        /*
         * Calculate year
         */
        curr_year = RTC_INIT_YEAR;
        while (day_tmp >= 365) {
            if (rtc_year_is_leap(curr_year)) {
                if (day_tmp >= 366)
                    day_tmp -= 366;
                else
                    break;
            }
            else {
                day_tmp -= 365;
            }
            curr_year++;
        }
        rtc_time->year = curr_year;
        /*
         * Calculate month and date
         */
        curr_month = 0;
        while (day_tmp >= 28) {
            if ((curr_month == 1) && (rtc_year_is_leap (curr_year))) {
                if (day_tmp >= 29)
                    day_tmp -= 29;
                else
                    break;
            }
            else {
                if (day_tmp >= month_table[curr_month])
                    day_tmp -= (uint32_t) month_table[curr_month];
                else
                    break;
            }
            curr_month++;
        }
        rtc_time->month = curr_month;
        rtc_time->date = day_tmp;
    }
    /*
     * Calculate and update time
     */
    sec_tmp %= RTC_SECONDS_PER_DAY;
    rtc_time->hour = sec_tmp / RTC_SECONDS_PER_HOUR;
    rtc_time->minute = (sec_tmp % RTC_SECONDS_PER_HOUR) / \
                       RTC_SECONDS_PER_MINUTE;
    rtc_time->second = (sec_tmp % RTC_SECONDS_PER_HOUR) % \
                       RTC_SECONDS_PER_MINUTE;
    return RTC_NO_ERR;
}

/*
 * Getting date and time function with 1 minute precision
 */
rtc_err_t rtc_get(rtc_time_t* rtc_time)
{
    memcpy(rtc_time, &rtc_ctrl.rtc_time, sizeof(rtc_time_t));
    return RTC_NO_ERR;
}

/*
 * Get RTC error status
 */
rtc_err_t rtc_get_err_status(void)
{
    return rtc_ctrl.rtc_err_status;
}

/*
 * ----------------------------------------------------------------------------
 * Terminal commands implementation
 * ----------------------------------------------------------------------------
 */

int cmd_set_rtc(uint8_t *args)
{
    rtc_time_t *time = (rtc_time_t *) args;

    if (rtc_set(time))
        goto cmd_set_rtc_error;
    memcpy(args, "OK", 3);
    return 3;
cmd_set_rtc_error:
    memcpy(args, "ER", 3);
    return 3;
}

/*
 * ----------------------------------------------------------------------------
 * Hardware interrupts
 * ----------------------------------------------------------------------------
 */
void RTC_IRQHandler(void)
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    int i = 0;
    uint32_t rtc_cnt = 0;

    if (LL_RTC_IsActiveFlag_SEC(RTC)) {
        rtc_cnt = LL_RTC_TIME_Get(RTC);
        for (i = 0; i < rtc_ctrl.num_task_notify; i++) {
            if (!(rtc_cnt % rtc_ctrl.rtc_task_notifier[i].period)) {
                vTaskNotifyGiveFromISR(rtc_ctrl.rtc_task_notifier[i].xTaskToNotify,
                                        &xHigherPriorityTaskWoken);
            }
        }
        if (!(rtc_cnt % RTC_SECONDS_PER_MINUTE)) {
            rtc_get_precise(&rtc_ctrl.rtc_time);
        }
        LL_RTC_ClearFlag_SEC(RTC);
    }
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}
