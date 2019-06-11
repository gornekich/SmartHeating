#include "rtc.h"
#include "stm32f1xx_ll_bus.h"
#include "stm32f1xx_ll_pwr.h"
#include "stm32f1xx_ll_rcc.h"

#include "FreeRTOS.h"

/*
 * ----------------------------------------------------------------------------
 * Private functions
 * ----------------------------------------------------------------------------
 */

/*
 * Converting time to seconds function
 */
static uint32_t rtc_time2sec(rtc_time_t rtc_time)
{
    return RTC_NO_ERR;
}
/*
 * ----------------------------------------------------------------------------
 * Public functions
 * ----------------------------------------------------------------------------
 */

/*
 * Initialization function
 */
rtc_err_t rtc_init(void)
{
    uint32_t bkp_reg_val;
    rtc_err_t rtc_err;

    /*
     * Enable access to backup registers
     */
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_PWR);
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_BKP);
    LL_PWR_EnableBkUpAccess();
    /*
     * Check backup register value to detect RTC reset
     */
    bkp_reg_val = LL_RTC_BKP_GetRegister(RTC_BKP, RTC_BKP_REG);
    if (bkp_reg_val != RTC_BKP_REG_CHECK_VALUE) {
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
        /*
         * Update backup register value after RTC initialization
         */
        LL_RTC_BKP_SetRegister(RTC_BKP, RTC_BKP_REG, RTC_BKP_REG_CHECK_VALUE);
        rtc_err = RTC_DESYNCHRONIZATION;
    }
    else {
        /*
         * RTC was operating during system reset. Just enable 1 second interrupt
         */
        while (!LL_RTC_IsActiveFlag_RS(RTC));
        LL_RTC_EnableIT_SEC(RTC);
        while (!LL_RTC_IsActiveFlag_RTOF(RTC));
        rtc_err = RTC_NO_ERR;
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
    return rtc_err;
}

/*
 * Setting date and time function
 */
rtc_err_t rtc_set(rtc_time_t* rtc_time)
{
    return RTC_NO_ERR;
}

/*
 * Getting date and time function
 */
rtc_err_t rtc_get(rtc_time_t* rtc_time)
{
    return RTC_NO_ERR;
}

/*
 * ----------------------------------------------------------------------------
 * Hardware interrupts
 * ----------------------------------------------------------------------------
 */
void RTC_IRQHandler(void)
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    if (LL_RTC_IsActiveFlag_SEC(RTC)) {
        LL_RTC_ClearFlag_SEC(RTC);
    }
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}
