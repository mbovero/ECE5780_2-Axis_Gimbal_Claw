#include "main.h"
#include <stm32f0xx_hal.h>

/**
 * Command  $ platformio run -e (name) -t upload
 * 
 * Go to platformio.ini file and add your file in the following format
 * [env:(file/custom name)]
 *  build_flags = -D(file/custom name)
 * 
 * The "(name)" is what you put inside the '[env:(name here)]'
 * 
 * Make sure to add your new file/function name to the main.h
 */
int main(void)
{
  #if defined(PWM_SIGNAL_GEN)
  pwm_signal_gen();
  #elif defined(STM_IMU_I2C)
  stm_imu_i2c_main();
  #elif defined(BLINK_TEST)
  blink_test();
  #elif defined(JOYSTICK_LED)
  joystick_led();

  /*
  #elif defined(othername)
  lab2_main();
 */
  #else
  #error No valid target specified
  #endif

}
