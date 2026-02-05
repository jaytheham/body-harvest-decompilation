#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/main_FD80/func_8000F180_FD80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_FD80/func_8000F190_FD90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_FD80/func_8000F1E8_FDE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_FD80/func_8000F218_FE18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_FD80/func_8000F368_FF68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_FD80/func_8000F478_10078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_FD80/func_8000F5A8_101A8.s")

void func_8000F618_10218()
{
	func_8000A160();
	osViSetSpecialFeatures(OS_VI_GAMMA_OFF);
	osViSetSpecialFeatures(OS_VI_DITHER_FILTER_ON);
}

#pragma GLOBAL_ASM("asm/nonmatchings/main_FD80/setVideoInterfaceXSize.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_FD80/setVideoInterfaceYSize.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_FD80/func_8000F6B0_102B0.s")
