#include <ultra64.h>
#include "common.h"


#ifdef NON_MATCHING
s32 func_800959F0_A49A0(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_t8;

    temp_t6 = arg0 & 0xFFFF;
    temp_t7 = arg1 & 0xFFFF;
    temp_t8 = arg2 & 0xFFFF;
    arg2 = temp_t8;
    arg1 = temp_t7;
    if (temp_t6 < 0x1F) {
        arg0 = temp_t6 & 0xFFFF;
    } else {
        arg0 = 0x1F;
    }
    if (arg1 < 0x1F) {
        arg1 = arg1 & 0xFFFF;
    } else {
        arg1 = 0x1F;
    }
    if (arg2 < 0x3F) {
        arg2 = arg2 & 0xFFFF;
    } else {
        arg2 = 0x3F;
    }
    return ((arg0 << 0xB) + (arg1 << 6) + (arg2 & 0x3F)) & 0xFFFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_800959F0_A49A0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80095A6C_A4A1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80095BD4_A4B84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80095D4C_A4CFC.s")

// guess_drawMapTiles
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80095F08_A4EB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_800966EC_A569C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80096BC4_A5B74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_800970C0_A6070.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80097444_A63F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80097994_A6944.s")

#ifdef NON_MATCHING
void func_80097B74_A6B24(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
    Gfx *dl;
    s32 sa3 = arg3;
    s32 sa2 = arg2;
    s32 sa1 = arg1;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = (u32)&D_801592A0;
    dl->words.w0 = 0x03840010;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0x03820010;
    dl->words.w1 = (u32)&D_801592B0;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xE7000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x2000;
    dl->words.w0 = 0xB7000000;

    if (currentLevel != LEVEL_JAVA || D_8004DCD0[arg0].unk1A != 0x12) {
        func_80101EF4_110EA4(D_8004DCD0[arg0].unk1A, sa1, sa2, sa3, 0, 0x4000, (s32)arg4);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80097B74_A6B24.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80097CB4_A6C64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_80097E1C_A6DCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A49A0/func_8009811C_A70CC.s")
