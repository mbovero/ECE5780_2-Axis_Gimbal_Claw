#ifndef CONFIG_H
#define CONFIG_H

// Constants for configuration

#define Q_SHIFT             14       // Bit shift for fixed point quaternion scaling
#define ROLL_THRESH         2500     // Threshold to start moving in roll direction
#define YAW_THRESH          2500     // Threshold to start moving in yaw direction

#define REVERSE_ROLL_DIR    0       // Direction for roll motor (0: normal, 1: reversed)
#define REVERSE_YAW_DIR     1       // Direction for yaw motor (0: normal, 1: reversed)

#endif // CONFIG_H
