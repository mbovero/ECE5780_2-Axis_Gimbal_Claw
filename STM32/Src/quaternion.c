#include "quaternion.h"
#include "config.h"

int16_t compute_roll_error(int16_t cr, int16_t ci, int16_t cj, int16_t ck, int16_t tr, int16_t ti, int16_t tj, int16_t tk) {
    // Numerator approximation: 2 * (r*i + j*k)
    int32_t sin_cur = ((int32_t)cr * ci + (int32_t)cj * ck) >> (Q_SHIFT - 1);
    int32_t sin_tar = ((int32_t)tr * ti + (int32_t)tj * tk) >> (Q_SHIFT - 1);

    // Denominator approximation: 1 - 2*(i^2 + j^2)
    int32_t cos_cur = ((int32_t)cr * cr - (int32_t)ci * ci - (int32_t)cj * cj + (int32_t)ck * ck) >> Q_SHIFT;
    int32_t cos_tar = ((int32_t)tr * tr - (int32_t)ti * ti - (int32_t)tj * tj + (int32_t)tk * tk) >> Q_SHIFT;

    // Approximate angle error in fixed-point range, avoid division
    int16_t delta = (int16_t)(((sin_cur * cos_tar - sin_tar * cos_cur)) >> Q_SHIFT);

    return delta;
}

int16_t compute_yaw_error(int16_t cr, int16_t ci, int16_t cj, int16_t ck, int16_t tr, int16_t ti, int16_t tj, int16_t tk) {
    // Numerator approximation: 2 * (r*k + i*j)
    int32_t sin_cur = ((int32_t)cr * ck + (int32_t)ci * cj) >> (Q_SHIFT - 1);
    int32_t sin_tar = ((int32_t)tr * tk + (int32_t)ti * tj) >> (Q_SHIFT - 1);

    // Denominator approximation: 1 - 2*(j^2 + k^2)
    int32_t cos_cur = ((int32_t)cr * cr + (int32_t)ci * ci - (int32_t)cj * cj - (int32_t)ck * ck) >> Q_SHIFT;
    int32_t cos_tar = ((int32_t)tr * tr + (int32_t)ti * ti - (int32_t)tj * tj - (int32_t)tk * tk) >> Q_SHIFT;

    // Approximate angle error in fixed-point range, avoid division
    int16_t delta = (int16_t)((sin_cur * cos_tar - sin_tar * cos_cur) >> Q_SHIFT);

    return delta;
}

int16_t compute_pitch_error(int16_t cr, int16_t ci, int16_t cj, int16_t ck, int16_t tr, int16_t ti, int16_t tj, int16_t tk) {
    // Numerator approximation: 2 * (r*j - k*i)
    int32_t sin_cur = ((int32_t)cr * cj - (int32_t)ck * ci) >> (Q_SHIFT - 1);
    int32_t sin_tar = ((int32_t)tr * tj - (int32_t)tk * ti) >> (Q_SHIFT - 1);

    // Denominator approximation: 1 - 2*(j^2 + k^2)
    int32_t cos_cur = ((int32_t)cr * cr + (int32_t)ci * ci - (int32_t)cj * cj - (int32_t)ck * ck) >> Q_SHIFT;
    int32_t cos_tar = ((int32_t)tr * tr + (int32_t)ti * ti - (int32_t)tj * tj - (int32_t)tk * tk) >> Q_SHIFT;

    // Approximate angle error in fixed-point range, avoid division
    int16_t delta = (int16_t)((sin_cur * cos_tar - sin_tar * cos_cur) >> Q_SHIFT);

    return delta;
}