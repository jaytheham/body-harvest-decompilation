#include <ultra64.h>
#include "common.h"

// StripModelToBones
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800E88C0_F7870.s")

// castVehicleShadows?
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800E8A00_F79B0.s")

// SetupForShadows ?
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800E94B8_F8468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800E95BC_F856C.s")

s16 func_800E9868_F8818(s32 arg0, s32 arg1) {
    return (s16) ((D_801493D8 * 4) + 0x310);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800E988C_F883C.s")

// StopDrawingShadows ?
#ifdef NON_MATCHING
void func_800EA088_F9038(void) {
    Gfx *temp_v1;
    Gfx *temp_v1_2;
    Gfx *temp_v1_3;
    Gfx *temp_v1_4;
    Gfx *temp_v1_5;

    temp_v1 = D_8005BB2C;
    D_8005BB2C = temp_v1 + 1;
    temp_v1->words.w1 = 0;
    temp_v1->words.w0 = 0xE7000000;
    temp_v1_2 = D_8005BB2C;
    D_8005BB2C = temp_v1_2 + 1;
    temp_v1_2->words.w1 = 0;
    temp_v1_2->words.w0 = 0xE8000000;
    temp_v1_3 = D_8005BB2C;
    D_8005BB2C = temp_v1_3 + 1;
    temp_v1_3->words.w1 = 0x80008000;
    temp_v1_3->words.w0 = 0xBB000001;
    temp_v1_4 = D_8005BB2C;
    D_8005BB2C = temp_v1_4 + 1;
    temp_v1_4->words.w1 = 0xC8112078;
    temp_v1_4->words.w0 = 0xB900031D;
    temp_v1_5 = D_8005BB2C;
    D_8005BB2C = temp_v1_5 + 1;
    temp_v1_5->words.w0 = 0xB7000000;
    temp_v1_5->words.w1 = 0x20001;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800EA088_F9038.s")
#endif

// DisplayVehicleShadows
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800EA12C_F90DC.s")
