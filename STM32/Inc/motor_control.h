#ifndef MOTOR_CONTROL_H
#define MOTOR_CONTROL_H

#include "stm32f0xx_hal.h"
#include <math.h>

// Function declarations
void motor_init(void);
void roll_motor_set_speed_direction(int16_t err_roll);
void roll_motor_stop(void);
void roll_motor_resume(void);
void roll_motor_set_dir(uint8_t direction);
void roll_motor_set_speed(uint16_t speed);

void yaw_motor_set_speed_direction(int16_t err_yaw);
void yaw_motor_stop(void);
void yaw_motor_resume(void);
void yaw_motor_set_dir(uint8_t direction);
void yaw_motor_set_speed(uint16_t speed);

uint16_t speed_to_psc(uint16_t speed);

#endif // MOTOR_CONTROL_H