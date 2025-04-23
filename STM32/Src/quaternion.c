/**
 * @file quaternion.c
 * @brief Computes roll, pitch, and yaw errors between current and target quaternions
 * 
 * This implementation uses fixed-point arithmetic to efficiently compute angular
 * errors between two orientations represented as quaternions. The goal is compute without
 * using trignometric functions or floating-point operations. Furthermore, this a a half-way
 * conversion between quaternions to euler angles (in 3-2-1 sequence). This conversion requires
 * trignometric functions and square root, which are being avoid entirely. With testing, it was found
 * that we have enough precision for reorentation/gimbal movements, without fully converting into Euler angles. 
 * 
 * Quaternion to Euler angles (in 3-2-1 sequence) conversion: 
 * https://en.wikipedia.org/wiki/Conversion_between_quaternions_and_Euler_angles#Quaternion_to_Euler_angles_(in_3-2-1_sequence)_conversion
 */

#include "quaternion.h"
#include "config.h"

/**
 * @brief Compute roll angle error (x-axis rotation) between current and target quaternions
 * 
 * Uses the approximation:
 *   sin(roll) ≈ 2*(w*x + y*z)
 *   cos(roll) ≈ w² - x² - y² + z² (for unit quaternions)
 * 
 * Then computes sin(Δroll) = sin(roll_cur)*cos(roll_tar) - sin(roll_tar)*cos(roll_cur)
 * 
 * @param cr Current quaternion real component (w)
 * @param ci Current quaternion i component (x)
 * @param cj Current quaternion j component (y)
 * @param ck Current quaternion k component (z)
 * @param tr Target quaternion real component (w)
 * @param ti Target quaternion i component (x)
 * @param tj Target quaternion j component (y)
 * @param tk Target quaternion k component (z)
 * @return Roll error in terms of sin(Δroll)
 */
int16_t compute_roll_error(int16_t cr, int16_t ci, int16_t cj, int16_t ck, int16_t tr, int16_t ti, int16_t tj, int16_t tk) {

    // Compute 2*(w*x + y*z) for current and target quaternions
    // Right shift by (Q_SHIFT-1) is equivalent to multiplying by 2 
    int32_t sin_cur = ((int32_t)cr * ci + (int32_t)cj * ck) >> (Q_SHIFT - 1);
    int32_t sin_tar = ((int32_t)tr * ti + (int32_t)tj * tk) >> (Q_SHIFT - 1);

    // Compute w² - x² - y² + z² (derived from 1 - 2*(x² + y²) for unit quaternions)
    // This approximates cos(roll) using the quaternion components
    int32_t cos_cur = ((int32_t)cr * cr - (int32_t)ci * ci - (int32_t)cj * cj + (int32_t)ck * ck) >> Q_SHIFT;
    int32_t cos_tar = ((int32_t)tr * tr - (int32_t)ti * ti - (int32_t)tj * tj + (int32_t)tk * tk) >> Q_SHIFT;

    // Compute sin(Δroll) = sin_cur*cos_tar - sin_tar*cos_cur
    // This gives the angular difference while avoiding division
    int16_t delta = (int16_t)(((sin_cur * cos_tar - sin_tar * cos_cur)) >> Q_SHIFT);

    return delta;
}

/**
 * @brief Compute yaw angle error (z-axis rotation) between current and target quaternions
 * 
 * Uses the approximation:
 *   sin(yaw) ≈ 2*(w*z + x*y)
 *   cos(yaw) ≈ w² + x² - y² - z² (for unit quaternions)
 * 
 * Then computes sin(Δyaw) = sin(yaw_cur)*cos(yaw_tar) - sin(yaw_tar)*cos(yaw_cur)
 * 
 * @param Same parameters as compute_roll_error
 * @return Yaw error in terms of sin(yaw)
 */
int16_t compute_yaw_error(int16_t cr, int16_t ci, int16_t cj, int16_t ck, int16_t tr, int16_t ti, int16_t tj, int16_t tk) {

    // Compute 2*(w*z + x*y) for current and target quaternions
    int32_t sin_cur = ((int32_t)cr * ck + (int32_t)ci * cj) >> (Q_SHIFT - 1);
    int32_t sin_tar = ((int32_t)tr * tk + (int32_t)ti * tj) >> (Q_SHIFT - 1);

    // Compute w² + x² - y² - z² (derived from 1 - 2*(y² + z²) for unit quaternions)
    int32_t cos_cur = ((int32_t)cr * cr + (int32_t)ci * ci - (int32_t)cj * cj - (int32_t)ck * ck) >> Q_SHIFT;
    int32_t cos_tar = ((int32_t)tr * tr + (int32_t)ti * ti - (int32_t)tj * tj - (int32_t)tk * tk) >> Q_SHIFT;

    // Compute sin(Δyaw) = sin_cur*cos_tar - sin_tar*cos_cur
    int16_t delta = (int16_t)((sin_cur * cos_tar - sin_tar * cos_cur) >> Q_SHIFT);

    return delta;
}

/**
 * @brief Compute pitch angle error (y-axis rotation) between current and target quaternions
 * 
 * Uses the approximation:
 *   sin(pitch) ≈ 2*(w*y - z*x)
 *   cos(pitch) ≈ w² + x² - y² - z² (same as yaw)
 * 
 * Then computes sin(Δpitch) = sin(pitch_cur)*cos(pitch_tar) - sin(pitch_tar)*cos(pitch_cur)
 * 
 * @param[] Same parameters as compute_roll_error
 * @return Pitch error in terms of sin(pitch)
 */
int16_t compute_pitch_error(int16_t cr, int16_t ci, int16_t cj, int16_t ck, int16_t tr, int16_t ti, int16_t tj, int16_t tk) {
    
    // Compute 2*(w*y - z*x) for current and target quaternions
    int32_t sin_cur = ((int32_t)cr * cj - (int32_t)ck * ci) >> (Q_SHIFT - 1);
    int32_t sin_tar = ((int32_t)tr * tj - (int32_t)tk * ti) >> (Q_SHIFT - 1);

    // Compute w² + x² - y² - z² (same as yaw)
    int32_t cos_cur = ((int32_t)cr * cr + (int32_t)ci * ci - (int32_t)cj * cj - (int32_t)ck * ck) >> Q_SHIFT;
    int32_t cos_tar = ((int32_t)tr * tr + (int32_t)ti * ti - (int32_t)tj * tj - (int32_t)tk * tk) >> Q_SHIFT;

    // Compute sin(Δpitch) = sin_cur*cos_tar - sin_tar*cos_cur
    int16_t delta = (int16_t)((sin_cur * cos_tar - sin_tar * cos_cur) >> Q_SHIFT);

    return delta;
}