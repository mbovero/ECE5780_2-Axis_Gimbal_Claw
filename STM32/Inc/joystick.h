#ifndef JOYSTICK_H
#define JOYSTICK_H

#include "hal_gpio.h"
#include "debugUART.h"

void joystick_init(void);
void joystick_read_vrx_vry(uint8_t *vrx, uint8_t *vry);

#endif // JOYSTICK_H