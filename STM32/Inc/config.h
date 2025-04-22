#ifndef CONFIG_H
#define CONFIG_H

// Constants
#define Q_SHIFT            14
#define ROLL_THRESH        2500        // Threshold to start moving
#define PITCH_THRESH       2500
#define YAW_THRESH         2500

#define ROLL_PWM_ARR    49
#define YAW_PWM_ARR     99

#define MAX_PSC     300  // Minimum prescalar (slowest speed)
#define MIN_PSC     20    // Maximum prescalar (fastest speed)
#define MAX_SPEED   1000  // Maximum speed input value

#define REVERSE_ROLL_DIR    0
#define REVERSE_YAW_DIR     1

//TODO settings to reverse motor directions

#endif // CONFIG_H