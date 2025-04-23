#ifndef MOTOR_CONTROL_H
#define MOTOR_CONTROL_H

#include "stm32f0xx_hal.h"

void motor_init(void);  // Initializes motor control GPIOs and PWM channels

// Roll axis motor control

void roll_motor_set_speed_dir_gimbal(int16_t err_roll); // Adjusts roll motor based on gimbal error
void roll_motor_set_speed_dir_manual(uint8_t vry);      // Adjusts roll motor using joystick input
void roll_motor_stop(void);                             // Stops the roll motor
void roll_motor_resume(void);                           // Resumes roll motor operation
void roll_motor_set_dir(uint8_t direction);             // Sets roll motor direction explicitly


// Yaw axis motor control

void yaw_motor_set_speed_dir_gimbal(int16_t err_yaw);   // Adjusts yaw motor based on gimbal error
void yaw_motor_set_speed_dir_manual(uint8_t vrx);       // Adjusts yaw motor using joystick input
void yaw_motor_stop(void);                              // Stops the yaw motor
void yaw_motor_resume(void);                            // Resumes yaw motor operation
void yaw_motor_set_dir(uint8_t direction);              // Sets yaw motor direction explicitly

#endif // MOTOR_CONTROL_H
