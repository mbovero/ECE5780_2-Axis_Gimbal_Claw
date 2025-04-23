#ifndef MOTOR_CONTROL_H
#define MOTOR_CONTROL_H

#include "stm32f0xx_hal.h"

// Function declarations
void motor_init(void);
void roll_motor_set_speed_dir_gimbal(int16_t err_roll);
void roll_motor_set_speed_dir_manual(uint8_t vry);
void roll_motor_stop(void);
void roll_motor_resume(void);
void roll_motor_set_dir(uint8_t direction);

void yaw_motor_set_speed_dir_gimbal(int16_t err_yaw);
void yaw_motor_set_speed_dir_manual(uint8_t vrx);
void yaw_motor_stop(void);
void yaw_motor_resume(void);
void yaw_motor_set_dir(uint8_t direction);

#endif // MOTOR_CONTROL_H