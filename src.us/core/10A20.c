#define OVERLAY_ENTRY_AS_FUNC
#include <ultra64.h>
#include "common.h"


s16 D_80031B50_32750 = 0;
s32 __osSiAccessQueueEnabled = 0;
u8 D_80031B58_32758 = 0;

void func_8000FE50_10A50(void *arg0) {
	osRecvMesg(&D_8006A8D0, &D_80068038, 1);
	osViSetSpecialFeatures(0x40);
	func_8000F618_10218();
	D_80052ACA = 3;
	func_800056A8_62A8();
	func_800056A8_62A8();
	osRecvMesg(&D_8006A8F0, &D_80068038, 1);
	func_80001984_2584();
	osSyncPrintf(D_80037764_38364, 0x28928);
	loadFrontendData();
	func_80070270(1);
}

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
	osRecvMesg(&__osSiAccessQueue, &D_80068038, 1);
}

// __osSiRelAccess duplicate ?
void func_8000FF88_10B88(void) {
	osSendMesg(&__osSiAccessQueue, 0, 0);
}
