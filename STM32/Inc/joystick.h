#ifndef JOYSTICK_H
#define JOYSTICK_H

#include "debugUART.h"

void joystick_init(void);          // Initializes the joystick GPIO and ADC
void joystick_read_vrx_vry(uint8_t *vrx, uint8_t *vry);  // Reads VRX and VRY analog values

#endif // JOYSTICK_H