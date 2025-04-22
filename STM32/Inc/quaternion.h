#ifndef QUATERNION_H
#define QUATERNION_H

#include <stdint.h>

// Function declarations
int16_t compute_roll_error(int16_t cr, int16_t ci, int16_t cj, int16_t ck,
    int16_t tr, int16_t ti, int16_t tj, int16_t tk);

int16_t compute_yaw_error(int16_t cr, int16_t ci, int16_t cj, int16_t ck,
    int16_t tr, int16_t ti, int16_t tj, int16_t tk);

int16_t compute_pitch_error(int16_t cr, int16_t ci, int16_t cj, int16_t ck,
    int16_t tr, int16_t ti, int16_t tj, int16_t tk);
    
    
#endif // QUATERNION_H