#include "motor_control.h"
#include "config.h"
#include <math.h>

/**
 * @brief Initializes GPIO pins and timers for roll and yaw motor control.
 * 
 * Configures direction, microstepping, enable, and step pins for both motor drivers.
 * Sets up TIM2 and TIM3 to generate PWM signals with 50% duty cycle for motor stepping.
 */
void motor_init()
{
    // Enable GPIO and TIM clocks
    __HAL_RCC_GPIOA_CLK_ENABLE();
    __HAL_RCC_GPIOC_CLK_ENABLE();
    __HAL_RCC_GPIOB_CLK_ENABLE();
    __HAL_RCC_TIM2_CLK_ENABLE();
    __HAL_RCC_TIM3_CLK_ENABLE();
    
    // --- YAW MOTOR INITIALIZATION ---

    // Configure PC6 (STEP) for PWM (TIM3_CH1)
    GPIO_InitTypeDef GPIO_InitStructPWM = {GPIO_PIN_6, 
                                            GPIO_MODE_AF_PP, 
                                            GPIO_NOPULL, 
                                            GPIO_SPEED_FREQ_LOW, 
                                            GPIO_AF0_TIM3};
    HAL_GPIO_Init(GPIOC, &GPIO_InitStructPWM);

    // Configure PC7 (DIR), PC8 (MS1), PC9 (MS2) as digital outputs
    GPIO_InitTypeDef GPIO_InitStructDIO1 = {GPIO_PIN_7 | GPIO_PIN_8 | GPIO_PIN_9, 
                                            GPIO_MODE_OUTPUT_PP, 
                                            GPIO_NOPULL, 
                                            GPIO_SPEED_FREQ_LOW};
    HAL_GPIO_Init(GPIOC, &GPIO_InitStructDIO1);

    // Configure PA8 (ENN) as a digital output
    GPIO_InitTypeDef GPIO_InitStructDIO2 = {GPIO_PIN_8, 
                                            GPIO_MODE_OUTPUT_PP, 
                                            GPIO_PULLDOWN, 
                                            GPIO_SPEED_FREQ_LOW};
    HAL_GPIO_Init(GPIOA, &GPIO_InitStructDIO2);

    

    // Timer3 PWM bitwise setup for PC6
    TIM3->PSC = 99; // Timer clock freq = 8MHz/(PSC+1) 
    TIM3->ARR = 79; // Set timer reload value
    // PWM Mode1 on CH1, preload enable
    TIM3->CCMR1 &= ~TIM_CCMR1_OC1M;
    TIM3->CCMR1 |= (6 << TIM_CCMR1_OC1M_Pos) | TIM_CCMR1_OC1PE;
    // 50% duty: CCR1 = (ARR+1)/2
    TIM3->CCR1 = (TIM3->ARR + 1) >> 1;
    // Enable CH1 output, start counter
    TIM3->CR1 |= 1;
    

    // Set initial outputs to motor driver
        // MS2, MS1 = 1,0: 1/64 microstep resolution
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_SET);     // MS2: 1   
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_RESET);   // MS1: 0
    HAL_GPIO_WritePin(GPIOA, GPIO_PIN_8, GPIO_PIN_RESET);   // ENN: 0
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET);     // DIR: 1


    // --- ROLL MOTOR INITIALIZATION ---
    // Configure PB10 (STEP) for PWM (TIM2_CH3)
    GPIO_InitTypeDef GPIO_InitStructPWM2 = {GPIO_PIN_10, 
                                            GPIO_MODE_AF_PP, 
                                            GPIO_NOPULL, 
                                            GPIO_SPEED_FREQ_LOW, 
                                            GPIO_AF2_TIM2};
    HAL_GPIO_Init(GPIOB, &GPIO_InitStructPWM2);

    // Configure PB2 (DIR), PB1 (MS1), PB0 (MS2) as digital outputs
    GPIO_InitTypeDef GPIO_InitStructDIO3 = {GPIO_PIN_2 | GPIO_PIN_1 | GPIO_PIN_0, 
            GPIO_MODE_OUTPUT_PP, 
            GPIO_NOPULL, 
            GPIO_SPEED_FREQ_LOW};
    HAL_GPIO_Init(GPIOB, &GPIO_InitStructDIO3);

    // Configure PC5 (ENN) as a digital output
    GPIO_InitTypeDef GPIO_InitStructDIO4 = {GPIO_PIN_5, 
            GPIO_MODE_OUTPUT_PP, 
            GPIO_PULLDOWN, 
            GPIO_SPEED_FREQ_LOW};
    HAL_GPIO_Init(GPIOC, &GPIO_InitStructDIO4);


    // Timer2 PWM bitwise setup for PB10
    TIM2->PSC = 49; // timer clock freq = 8MHz/(PSC+1) 
    TIM2->ARR = 79; // Set timer reload value
    // PWM Mode1 on CH3, preload enable
    TIM2->CCMR2 &= ~TIM_CCMR1_OC1M;
    TIM2->CCMR2 |= (6 << TIM_CCMR2_OC3M_Pos) | TIM_CCMR2_OC3PE;
    // 50% duty: CCR3 = (ARR+1)/2
    TIM2->CCR3 = (TIM2->ARR + 1) >> 1;
    // Enable CH3 output, start counter
    TIM2->CR1 |= 1;


    // Set initial outputs to motor driver
        // MS2, MS1 = 1,0: 1/64 microstep resolution
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0, GPIO_PIN_SET);     // MS2: 1
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_1, GPIO_PIN_RESET);   // MS1: 0   
    HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, GPIO_PIN_RESET);   // ENN: 0
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2, GPIO_PIN_SET);     // DIR: 1
}

/**
 * @brief Sets roll motor speed and direction based on gimbal mode error.
 * 
 * Adjusts motor speed by changing TIM2 prescaler based on the magnitude of the roll error.
 * Determines motor direction from the sign of the error.
 * Stops the motor if the error is below a threshold to prevent jitter.
 * 
 * @param err_roll Signed roll error from gimbal control algorithm.
 */
void roll_motor_set_speed_dir_gimbal(int16_t err_roll)
{
    // Dynamically adjust motor speed based on roll error
    if(abs(err_roll) >= 1000)
    { 
        TIM2->PSC = 70;
    }
    else if(abs(err_roll) >= 500)
    { 
        TIM2->PSC = 80;
    }
    else if(abs(err_roll) >= 100)
    { 
        TIM2->PSC = 249;
    }

    // When above a minimum threshold, set motor direction based on sign of roll error
    if (abs(err_roll) >= 100)
    {
        (err_roll > 0) ? roll_motor_set_dir(0) : roll_motor_set_dir(1);
        roll_motor_resume();
    }
    else    // When below minimum threshold, stop motors to prevent jitter
    {   
        roll_motor_stop();
    }
}

/**
 * @brief Sets roll motor speed and direction based on joystick input in manual mode.
 * 
 * Interprets joystick vertical input (vry) as speed and direction for the roll motor.
 * Adjusts TIM2 prescaler to change speed based on deviation from center position (70).
 * Stops the motor if input is near center to avoid unwanted movement.
 * 
 * @param vry Vertical joystick input (0–140 range expected, with ~70 as center).
 */
void roll_motor_set_speed_dir_manual(uint8_t vry)
{
    // Dynamically adjust motor speed based on vertical joystick input
    if(abs(vry-70) >= 60)
    { 
        TIM2->PSC = 40;
    }
    else if(abs(vry-70) >= 40)
    { 
        TIM2->PSC = 70;
    }

    // When above a minimum threshold, set motor direction based on sign of vertical joystick input
    if (abs(vry-70) >= 30)
    {
        (vry-70 > 0) ? roll_motor_set_dir(0) : roll_motor_set_dir(1);
        roll_motor_resume();
    }
    else    // When below minimum threshold, stop motors to prevent jitter
    {   
        roll_motor_stop();
    }
}

/**
 * @brief Disables roll motor PWM output, effectively stopping the motor while maintaining torque.
 * 
 * Clears TIM2 channel 3 output enable bit to halt motor stepping.
 */
void roll_motor_stop()
{
    TIM2->CCER &= ~TIM_CCER_CC3E;
}

/**
 * @brief Enables roll motor PWM output to resume motion.
 * 
 * Sets TIM2 channel 3 output enable bit to start motor stepping.
 */
void roll_motor_resume()
{
    TIM2->CCER |= TIM_CCER_CC3E;
}

/**
 * @brief Sets the direction of the roll motor.
 * 
 * Writes to the DIR pin based on the provided direction value and optional reversal macro.
 * 
 * @param direction 1 for forward, 0 for reverse (or vice versa if REVERSE_ROLL_DIR is set).
 */
void roll_motor_set_dir(uint8_t direction)
{
    if (REVERSE_ROLL_DIR)
    {
        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, !direction);
    }
    else
    {
        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, direction);
    }
}

/**
 * @brief Sets yaw motor speed and direction based on gimbal mode error.
 * 
 * Adjusts motor speed by changing TIM3 prescaler based on the magnitude of the yaw error.
 * Determines motor direction from the sign of the error.
 * Stops the motor if the error is below a threshold to prevent jitter.
 * 
 * @param err_yaw Signed yaw error from gimbal control algorithm.
 */
void yaw_motor_set_speed_dir_gimbal(int16_t err_yaw)
{
    // Dynamically adjust motor speed based on yaw error
    if(abs(err_yaw) >= 1000)
    {   
        TIM3->PSC = 50;
    }
    else if(abs(err_yaw) >= 500)
    { 
        TIM3->PSC = 70;
    }
    else if(abs(err_yaw) >= 100)
    { 
        TIM3->PSC = 249;
    }

    // When above a minimum threshold, set motor direction based on sign of yaw error
    if (abs(err_yaw) >= 100)
    {
        (err_yaw > 0) ? yaw_motor_set_dir(0) : yaw_motor_set_dir(1);
        yaw_motor_resume();
    }
    else    // When below minimum threshold, stop motors to prevent jitter
    {   
        yaw_motor_stop();
    }
}

/**
 * @brief Sets yaw motor speed and direction based on joystick input in manual mode.
 * 
 * Interprets joystick horizontal input (vrx) as speed and direction for the yaw motor.
 * Adjusts TIM3 prescaler to change speed based on deviation from center position (70).
 * Stops the motor if input is near center to avoid unwanted movement.
 * 
 * @param vrx Horizontal joystick input (0–140 range expected, with ~70 as center).
 */
void yaw_motor_set_speed_dir_manual(uint8_t vrx)
{
    // Dynamically adjust motor speed based on horizontal joystick input
    if(abs(vrx-70) >= 60)
    { 
        TIM3->PSC = 40;
    }
    else if(abs(vrx-70) >= 40)
    { 
        TIM3->PSC = 80;
    }
    
    // When above a minimum threshold, set motor direction based on sign of horizontal joystick input
    if (abs(vrx-70) >= 30)
    {
        (vrx-70 > 0) ? yaw_motor_set_dir(0) : yaw_motor_set_dir(1);
        yaw_motor_resume();
    }
    else    // When below minimum threshold, stop motors to prevent jitter
    {   
        yaw_motor_stop();
    }
}

/**
 * @brief Disables yaw motor PWM output, effectively stopping the motor while maintaining torque.
 * 
 * Clears TIM3 channel 1 output enable bit to halt motor stepping.
 */
void yaw_motor_stop()
{
    TIM3->CCER &= ~TIM_CCER_CC1E;
}

/**
 * @brief Enables yaw motor PWM output to resume motion.
 * 
 * Sets TIM3 channel 1 output enable bit to start motor stepping.
 */
void yaw_motor_resume()
{
    TIM3->CCER |= TIM_CCER_CC1E;
}

/**
 * @brief Sets the direction of the yaw motor.
 * 
 * Writes to the DIR pin based on the provided direction value and optional reversal macro.
 * 
 * @param direction 1 for forward, 0 for reverse (or vice versa if REVERSE_YAW_DIR is set).
 */
void yaw_motor_set_dir(uint8_t direction)
{
    if (REVERSE_YAW_DIR)
    {
        HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, !direction);
    }
    else
    {
        HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, direction);
    }
}
