#ifndef COMMON_H
#define COMMON_H

#define ABS(x) ((x)<0 ? -(x) : (x))
#define BH_ABS(x) ((x)<(-x) ? -(x) : (x))
#define BH_ABS_ALT(x) (-(x)<(x) ? (x) : -(x))
#define ABSF(x) ((x)<0.0f ? -(x) : (x))
#define ABSD(x) ((x)<0.0 ? -(x) : (x))

// opposite of ABS
#define NABS(x) ((x)>0 ? -(x) : (x))
#define BH_NABS(x) ((x)<(-x) ? (x) : -(x))

#define SIGNUM(x) ((x)<0 ? -1 : 1)
#define SIGNUMF(x) ((x)<0.0f ? -1 : 1)

#define SQ(x) ((x)*(x))

#define MAX_INT                0x7FFFFFFF
#define MAX_SHORT              0x7FFF

#define ARRAY_COUNT(arr) (s32)(sizeof(arr) / sizeof(arr[0]))

typedef u8 Addr[];

#ifdef VERSION_US
#include "common.us.h"
#endif

#ifdef VERSION_EU
#include "common.eu.h"
#endif

#define CONTROLLER_ONE 0
#define CONTROLLER_TWO 1
#define CONTROLLER_THREE 2
#define CONTROLLER_FOUR 3

#define BUTTON_NONE 0
#define BUTTON_D_RIGHT 0x0100
#define BUTTON_D_LEFT 0x0200
#define BUTTON_D_DOWN 0x0400
#define BUTTON_D_UP 0x0800
#define BUTTON_START 0x1000
#define BUTTON_Z 0x2000
#define BUTTON_B 0x4000
#define BUTTON_A 0x8000
#define BUTTON_C_RIGHT 0x0001
#define BUTTON_C_LEFT 0x0002
#define BUTTON_C_DOWN 0x0004
#define BUTTON_C_UP 0x0008
#define BUTTON_R 0x0010
#define BUTTON_L 0x0020

#endif
