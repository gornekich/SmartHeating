#include "motors.h"
#include "gpio_map.h"
#include "peripheral.h"

#include <stdlib.h>
#include <string.h>

static mot_man_ctrl_t motors_ctrl;

/*
 * ----------------------------------------------------------------------------
 * Private functions
 * ----------------------------------------------------------------------------
 */

/*
 * Hardware configuration
 */
static void motors_hw_config(void)
{
    /*
     * Configure GPIO motor control
     */
    LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_GPIOB);
    LL_GPIO_SetPinMode(MOTOR_PORT0, MOTOR_PIN0, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetPinOutputType(MOTOR_PORT0, MOTOR_PIN0, LL_GPIO_OUTPUT_PUSHPULL);
    LL_GPIO_SetPinMode(MOTOR_PORT1, MOTOR_PIN1, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetPinOutputType(MOTOR_PORT1, MOTOR_PIN1, LL_GPIO_OUTPUT_PUSHPULL);
    /*
     * Configure timer in PWM mode
     */
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM4);
    LL_TIM_SetCounterMode(MOTOR_TIM, LL_TIM_COUNTERMODE_UP);
    LL_TIM_SetPrescaler(MOTOR_TIM, MOTOR_PWM_TIM_PSC);
    LL_TIM_SetAutoReload(MOTOR_TIM, MOTOR_PWM_TIM_ARR);
    LL_TIM_CC_EnableChannel(MOTOR_TIM, LL_TIM_CHANNEL_CH3 | LL_TIM_CHANNEL_CH4);
    LL_TIM_OC_SetMode(MOTOR_TIM, LL_TIM_CHANNEL_CH3, LL_TIM_OCMODE_PWM1);
    LL_TIM_OC_SetMode(MOTOR_TIM, LL_TIM_CHANNEL_CH4, LL_TIM_OCMODE_PWM1);
    LL_TIM_OC_EnableFast(MOTOR_TIM, LL_TIM_CHANNEL_CH3);
    LL_TIM_OC_EnableFast(MOTOR_TIM, LL_TIM_CHANNEL_CH4);
    LL_TIM_OC_EnablePreload(MOTOR_TIM, LL_TIM_CHANNEL_CH3);
    LL_TIM_OC_EnablePreload(MOTOR_TIM, LL_TIM_CHANNEL_CH4);
    LL_TIM_EnableARRPreload(MOTOR_TIM);
    LL_TIM_OC_SetCompareCH3(MOTOR_TIM, MOTOR_PWM_TIM_CCR_INIT);
    LL_TIM_OC_SetCompareCH4(MOTOR_TIM, MOTOR_PWM_TIM_CCR_INIT);
    // LL_TIM_GenerateEvent_UPDATE(MOTOR_TIM);
    LL_TIM_EnableCounter(MOTOR_TIM);
    /*
     * Feedback ADC pin configuration
     */
    LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(MOT_ADC_PORT0, MOT_ADC_PIN0, LL_GPIO_MODE_ANALOG);
    LL_GPIO_SetPinMode(MOT_ADC_PORT1, MOT_ADC_PIN1, LL_GPIO_MODE_ANALOG);
    /*
     * Feedback ADC module configuration
     */
    LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_ADC1);
    LL_ADC_SetDataAlignment(MOTOR_ADC, MOTOR_ADC_ALIGN);
    LL_ADC_SetSequencersScanMode(MOTOR_ADC, MOTOR_ADC_SEQ_SCAN);
    LL_ADC_REG_SetTriggerSource(MOTOR_ADC, LL_ADC_REG_TRIG_EXT_TIM4_CH4);
    LL_ADC_REG_SetSequencerLength(MOTOR_ADC, MOTOR_ADC_SEQ_LEN);
    LL_ADC_REG_SetSequencerRanks(MOTOR_ADC, LL_ADC_REG_RANK_1,
                                 MOTOR_ADC_CHANNEL0);
    LL_ADC_REG_SetSequencerRanks(MOTOR_ADC, LL_ADC_REG_RANK_2,
                                 MOTOR_ADC_CHANNEL1);
    LL_ADC_REG_SetContinuousMode(MOTOR_ADC, MOTOR_ADC_SINGLE_MODE);
    LL_ADC_REG_SetDMATransfer(MOTOR_ADC, MOTOR_ADC_DMA_MODE);
    LL_ADC_SetChannelSamplingTime(MOTOR_ADC, MOTOR_ADC_CHANNEL0,
                                  MOTOR_ADC_SAMPL_TIME);
    LL_ADC_SetChannelSamplingTime(MOTOR_ADC, MOTOR_ADC_CHANNEL1,
                                  MOTOR_ADC_SAMPL_TIME);
    LL_ADC_REG_StartConversionExtTrig(MOTOR_ADC, MOTOR_ADC_TRIG_POLARITY);
    LL_ADC_Enable(MOTOR_ADC);
    /*
     * Feedback ADC DMA module configuration
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_DMA1);
    LL_DMA_SetDataTransferDirection(MOTOR_DMA, MOTOR_DMA_CHANNEL,
                                    MOTOR_DMA_DIRECTION);
    LL_DMA_SetChannelPriorityLevel(MOTOR_DMA, MOTOR_DMA_CHANNEL,
                                   MOTOR_DMA_PRIORITY);
    LL_DMA_SetMode(MOTOR_DMA, MOTOR_DMA_CHANNEL, MOTOR_DMA_MODE);
    LL_DMA_SetPeriphIncMode(MOTOR_DMA, MOTOR_DMA_CHANNEL,
                            MOTOR_DMA_PERIPH_INC_MODE);
    LL_DMA_SetMemoryIncMode(MOTOR_DMA, MOTOR_DMA_CHANNEL,
                            MOTOR_DMA_MEM_INC_MODE);
    LL_DMA_SetPeriphSize(MOTOR_DMA, MOTOR_DMA_CHANNEL, MOTOR_DMA_PERIPH_SIZE);
    LL_DMA_SetMemorySize(MOTOR_DMA, MOTOR_DMA_CHANNEL, MOTOR_DMA_MEM_SIZE);
    LL_DMA_ConfigAddresses(MOTOR_DMA, MOTOR_DMA_CHANNEL, MOTOR_DMA_SRC_ADDR,
                           (uint32_t)motors_ctrl.adc_fb, MOTOR_DMA_DIRECTION);
    LL_DMA_SetDataLength(MOTOR_DMA, MOTOR_DMA_CHANNEL, MOTOR_DMA_BUFFER_SIZE);
    LL_DMA_EnableIT_TC(MOTOR_DMA, MOTOR_DMA_CHANNEL);
    LL_DMA_EnableChannel(MOTOR_DMA, MOTOR_DMA_CHANNEL);
    NVIC_SetPriority(MOTOR_DMA_IRQN, MOTOR_DMA_IRQN_PRIORITY);
    NVIC_EnableIRQ(MOTOR_DMA_IRQN);
    /*
     * Feedback ADC Timer trigger source configuration
     */
    LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_TIM1);
    LL_TIM_SetCounterMode(MOT_ADC_TIM, LL_TIM_COUNTERMODE_UP);
    LL_TIM_SetPrescaler(MOT_ADC_TIM, MOT_ADC_TIM_PSC);
    LL_TIM_SetAutoReload(MOT_ADC_TIM, MOT_ADC_TIM_ARR);
    LL_TIM_CC_EnableChannel(MOT_ADC_TIM, MOT_ADC_TIM_OC_CHANNEL);
    LL_TIM_OC_SetMode(MOT_ADC_TIM, MOT_ADC_TIM_OC_CHANNEL, LL_TIM_OCMODE_PWM1);
    LL_TIM_OC_EnableFast(MOT_ADC_TIM, MOT_ADC_TIM_OC_CHANNEL);
    LL_TIM_OC_EnablePreload(MOT_ADC_TIM, MOT_ADC_TIM_OC_CHANNEL);
    LL_TIM_EnableARRPreload(MOT_ADC_TIM);
    LL_TIM_OC_SetCompareCH1(MOT_ADC_TIM, MOT_ADC_TIM_CCR_INIT);
    LL_TIM_GenerateEvent_UPDATE(MOT_ADC_TIM);
    LL_TIM_EnableCounter(MOT_ADC_TIM);
    return;
}

/*
 * Angle to PWM conversion function
 */
static uint32_t angle2pwm(uint8_t angle)
{
    float angle_coef = (float) angle / (float) MOTOR_MAX_ANGLE;
    angle_coef = angle_coef < 1 ? angle_coef : 1;
    return 350 * (1 - angle_coef) + 10;
}

/*
 * ADC feedback to angle conversion function
 */
static uint8_t adc2angle(uint16_t adc_fb)
{
    float adc_coef = (float) adc_fb / (float) MOTOR_MAX_ADC_FB;
    adc_coef = adc_coef < 1 ? adc_coef : 1;
    return MOTOR_MAX_ANGLE * adc_coef;
}

/*
 * Comparing target and current position function
 */
static uint8_t is_angle_not_set(uint8_t id, uint8_t angle)
{
    return abs(angle - motors_ctrl.motor[id].current_pos) >
           motors_ctrl.motor[id].accuacy;
}

/*
 * Set course target angle function
 */
static void set_angle_course(uint8_t id, uint8_t angle)
{
    uint32_t ccr_reg = angle2pwm(angle);

    if (id == 0)
        LL_TIM_OC_SetCompareCH4(MOTOR_TIM, ccr_reg);
    if (id == 1)
        LL_TIM_OC_SetCompareCH3(MOTOR_TIM, ccr_reg);
    return;
}

/*
 * Set and maintain fine target angle function
 */
static void set_angle_fine(uint8_t id, uint8_t angle)
{
    int err = motors_ctrl.motor[id].target_pos -
              motors_ctrl.motor[id].current_pos;
    uint32_t ccr_reg = angle2pwm(angle) - motors_ctrl.motor[id].p_coeff * err;
    ccr_reg = ccr_reg > MOTOR_PWM_TIM_ARR ? MOTOR_PWM_TIM_ARR : ccr_reg;

    if (id == 0)
        LL_TIM_OC_SetCompareCH4(MOTOR_TIM, ccr_reg);
    if (id == 1)
        LL_TIM_OC_SetCompareCH3(MOTOR_TIM, ccr_reg);
    return;
}



/*
 * ----------------------------------------------------------------------------
 * Public functions
 * ----------------------------------------------------------------------------
 */

/*
 * Main manager for motors control
 */
void motors_manager(void *arg)
{
    (void) arg;
    int i = 0;

    motors_hw_config();
    motors_ctrl.motor[0].accuacy = 3;
    motors_ctrl.motor[1].accuacy = 3;
    motors_ctrl.motor[0].p_coeff = 6;
    motors_ctrl.motor[1].p_coeff = 6;

    while (1) {
        // for (i = 0; i < NUMBER_OF_MOTORS; i++) {
        //     if (is_angle_not_set(i, motors_ctrl.motor[i].target_pos) &&
        //         motors_ctrl.motor[i].state == MOTOR_STAY)
        //         set_angle_fine(i, motors_ctrl.motor[i].target_pos);
        // }
        vTaskDelay(1000);
    }
    return;
}

/*
 * Set target angle function
 */
uint8_t motors_set_target_angle(uint8_t id, uint8_t angle)
{
    if (!IS_MOTOR_VALID(id))
        return 1;
    if (is_angle_not_set(id, angle)) {
        motors_ctrl.motor[id].target_pos = angle;
        set_angle_course(id, angle);
        motors_ctrl.motor[id].state = MOTOR_MOVE;
    }
    return 0;
}

/*
 * Get target angle function
 */
uint8_t motors_get_angle(uint8_t id, uint8_t *angle)
{
    if (!IS_MOTOR_VALID(id))
        return 1;
    *angle = motors_ctrl.motor[id].current_pos;
    return 0;
}

/*
 * ----------------------------------------------------------------------------
 * Terminal commands implementation
 * ----------------------------------------------------------------------------
 */

/*
 * Set ARR register
 */
int cmd_set_arr(void *args) {
    uint32_t *reg_arr = (uint32_t *) args;

    if (*reg_arr > 1000000)
        goto cmd_set_arr_error;

    LL_TIM_DisableCounter(MOTOR_TIM);
    LL_TIM_SetAutoReload(MOTOR_TIM, *reg_arr);
    LL_TIM_SetCounter(MOTOR_TIM, 0);
    LL_TIM_EnableCounter(MOTOR_TIM);

    memcpy(args, "OK", 3);
    return 3;
cmd_set_arr_error:
    memcpy(args, "ER", 3);
    return 3;
}

/*
 * Set ARR register
 */
int cmd_set_ccr(void *args) {
    uint32_t *reg_ccr = (uint32_t *) args;

    if (*reg_ccr > 1000000)
        goto cmd_set_ccr_error;

    LL_TIM_OC_SetCompareCH3(MOTOR_TIM, *reg_ccr);
    memcpy(args, "OK", 3);
    return 3;
cmd_set_ccr_error:
    memcpy(args, "ER", 3);
    return 3;
}

/*
 * Set angle command
 */
int cmd_set_angle(void *args) {
    uint8_t *params = (uint8_t *) args;

    if (motors_set_target_angle(params[0], params[1]) != 0)
        goto cmd_set_angle_error;

    memcpy(args, "OK", 3);
    return 3;
cmd_set_angle_error:
    memcpy(args, "ER", 3);
    return 3;
}

/*
 * Get angle command
 */
int cmd_get_angle(void *args) {
    uint8_t id = *((uint8_t *) args);
    uint8_t angle;

    if (motors_get_angle(id, &angle) != 0)
        goto cmd_get_angle_error;

    memcpy(args, &angle, 1);
    return 1;
cmd_get_angle_error:
    memcpy(args, "ER", 3);
    return 3;
}

/*
 * ----------------------------------------------------------------------------
 * Hardware interrupts
 * ----------------------------------------------------------------------------
 */

/*
 * DMA handler for processing motor adc feedback
 */
void DMA1_Channel1_IRQHandler(void)
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    int i = 0;
    int j = 0;
    uint16_t adc_fb_mean[NUMBER_OF_MOTORS] = {0, 0};

    if (LL_DMA_IsActiveFlag_TC1(MOTOR_DMA)) {
        LL_DMA_ClearFlag_TC1(MOTOR_DMA);
        for (i = 0; i < NUMBER_OF_MOTORS; i++) {
            for (j = 0; j < MOTOR_ADC_MEAN_SAMPLE_NUM; j++) {
                adc_fb_mean[i] += motors_ctrl.adc_fb[i + j * NUMBER_OF_MOTORS]
                                  / MOTOR_ADC_MEAN_SAMPLE_NUM;
            }
            motors_ctrl.motor[i].prev_pos = motors_ctrl.motor[i].current_pos;
            motors_ctrl.motor[i].current_pos = adc2angle(adc_fb_mean[i]);
            if (is_angle_not_set(i, motors_ctrl.motor[i].prev_pos))
                motors_ctrl.motor[i].state = MOTOR_MOVE;
            else
                motors_ctrl.motor[i].state = MOTOR_STAY;
        }
    }
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}
