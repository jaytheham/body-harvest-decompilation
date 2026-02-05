#ifndef COMMON_H
#define COMMON_H

#define ABS(x) ((x)<0 ? -(x) : (x))
#define ABSF(x) ((x)<0.0f ? -(x) : (x))
#define ABSD(x) ((x)<0.0 ? -(x) : (x))

// opposite of ABS
#define NABS(x) ((x)>0 ? -(x) : (x))

#define SIGNUM(x) ((x)<0 ? -1 : 1)
#define SIGNUMF(x) ((x)<0.0f ? -1 : 1)

#define SQ(x) ((x)*(x))

#define MAX_INT                0x7FFFFFFF
#define MAX_SHORT              0x7FFF

typedef u8 Addr[];

#ifdef VERSION_US
#include "common.us.h"
#endif

#ifdef VERSION_EU
#include "common.eu.h"
#endif

#endif