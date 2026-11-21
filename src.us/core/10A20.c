#include <ultra64.h>
#include "common.h"
#include "core/loader.h"
#include "core/FD80.h"
#include "core/53F0.h"
#include "core/10A20.h"
#include "core/1050.h"


s16 D_80031B50_32750 = 0;
s32 __osSiAccessQueueEnabled = 0;
#if defined(VERSION_US)
u8 D_80031B58_32758 = 0;
#elif defined(VERSION_EU)
u8 D_80031B58_32758 = 1;
#else
#error "Unknown version: compile with -DVERSION_US or -DVERSION_EU"
#endif

// __osSiCreateAccessQueue duplicate ?
void func_8000FEF0_10AF0(void) {
	__osSiAccessQueueEnabled = 1;
	osCreateMesgQueue(&__osSiAccessQueue, &siacs_bss_0000, 1);
	osSendMesg(&__osSiAccessQueue, 0, 0);
}

void func_8000FF40_10B40(void) {
	if (__osSiAccessQueueEnabled == 0) {
		func_8000FEF0_10AF0();
	}
	osRecvMesg(&__osSiAccessQueue, &D_80068038, OS_MESG_BLOCK);
}

// __osSiRelAccess duplicate ?
void func_8000FF88_10B88(void) {
	osSendMesg(&__osSiAccessQueue, 0, 0);
}
