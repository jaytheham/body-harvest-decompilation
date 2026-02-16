#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80000400_1000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80000730_1330.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_8000091C_151C.s")
#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80000AD4_16D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80000B14_1714.s")

void* (*func_80000CD4_18D4(Unk80042DA8** arg0))(void) {
    if (D_80042DA8.unk0 == 0) {
        D_80042DA8.unk4 = 0;
        D_80042DA8.unk8 = &D_80042DB8;
        D_80042DA8.unk0 = 1U;
    }
    *arg0 = &D_80042DA8;
    return &func_80000B14_1714;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80000D0C_190C.s")

void checkForRumblePak(void) {
	if (osMotorInit(&D_80043388, &D_80047610, 0) != 0) {
		return;
	}

	osSyncPrintf(D_80036840);
	D_80047678 = 1;
	func_8000108C_1C8C(0);
	D_800313CC = 0;
	D_8004767C = 0;
	D_80047680 = 0;
	D_80047688 = 0;
	D_8004768C = 0;
	D_80047690 = 0;
	D_80047698 = gameplayMode;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80000ED4_1AD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80001050_1C50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_8000108C_1C8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_800010C4_1CC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80001108_1D08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80001144_1D44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80001190_1D90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/osViExtendVStart.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_8000140C_200C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/__osGetActiveQueue.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80001424_2024.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_800015B4_21B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/validateSaveVersionAndChecksum.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_800016D8_22D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80001830_2430.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80001984_2584.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/guess_prepareToSaveGame.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_800020E0_2CE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_800021CC_2DCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/guess_loadSavedGame.s")

s32 func_80002A88_3688(s32 arg0) {
    return *(&D_80043243 + (arg0 * 0x7A)) & 0xF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80002AB4_36B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80002B20_3720.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80002C58_3858.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80002CA4_38A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/guess_saveHighScores.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80002D58_3958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/guess_deleteSavedData.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/guess_restoreSavedData.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80002EB0_3AB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80002ED4_3AD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80002EF8_3AF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80003064_3C64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_800033D4_3FD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_8000345C_405C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/isButtonNewlyPressed.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_800035D8_41D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80003680_4280.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80003740_4340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80003824_4424.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_800038D4_44D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_800038E0_44E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80003910_4510.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_8000393C_453C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_800039D0_45D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80003DE8_49E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80004214_4E14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80004254_4E54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_80004498_5098.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1000/func_800044D4_50D4.s")
