#include <ultra64.h>
#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B0A10_BF9C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B0A88_BFA38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B0B94_BFB44.s")

/* Tests whether a bit is set in the 2D world-space collision/visibility bitfield at (x,y) */
s32 func_800B0C4C_BFBFC(s32 arg0, s32 arg1) {
    arg0 += 0x80;
    arg1 += 0x80;
    return D_8014FDD0[(arg1 << 5) + (arg0 >> 3)] & (1 << (arg0 & 7));
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B0C80_BFC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B0D10_BFCC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B0DF4_BFDA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B0F20_BFED0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B1028_BFFD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B165C_C060C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B1814_C07C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B19F8_C09A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B1A68_C0A18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B2354_C1304.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B2854_C1804.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B2CF0_C1CA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B316C_C211C.s")

/* Sets tile flags at position (arg0, arg1) in the world tile map */
#ifdef NON_MATCHING
void func_800B31FC_C21AC(s8 arg0, s8 arg1) {
    u8 *temp_v0;

    temp_v0 = (u8 *)((s32)D_80052A94 + (arg1 << 9) + (arg0 * 2));
    *temp_v0 |= 0x80;
    *temp_v0 &= 0xF7;
    *temp_v0 |= 4;
    *(u16 *)temp_v0 = (*(u16 *)temp_v0 & 0xFC3F) | 0x300;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B31FC_C21AC.s")
#endif

/* Looks up tile flags at (arg0, arg1) and tests against bitmask arg2 */
#ifdef NON_MATCHING
s32 func_800B325C_C220C(s8 arg0, s8 arg1, s32 arg2) {
    u8 *addr = (u8 *)((s32)D_8014F8A0 + (arg1 << 9) + (arg0 * 2));
    return *(s16 *)(addr + 0x10100) & arg2 & 0xFFFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B325C_C220C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B32AC_C225C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B33BC_C236C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B345C_C240C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B4050_C3000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B415C_C310C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B41C8_C3178.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B42B0_C3260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B4660_C3610.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B49A4_C3954.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B4D4C_C3CFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B5090_C4040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B5EE4_C4E94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B604C_C4FFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B753C_C64EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B84D0_C7480.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B85CC_C757C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B8688_C7638.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B879C_C774C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B8C2C_C7BDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B8D80_C7D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B8F30_C7EE0.s")

/* Initializes world state: calls C7BDC to set up position, sets float speed to 2.0,
   mode byte to 0x46 (animation state), and active flag to 1. arg2 is unused. */
void func_800B91C8_C8178(s16 arg0, s16 arg1, s32 arg2) {
    func_800B8C2C_C7BDC(arg0, arg1, 0x1F);
    D_8014F850 = 2.0f;
    D_8014F832 = 0x46;
    D_8014F838 = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B9228_C81D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B93AC_C835C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B960C_C85BC.s")

/* Frees a particle/effect slot and decrements active count */
void func_800B9954_C8904(u8 arg0) {
    D_80152B80[arg0].unk8 = 0;
    if (arg0 < D_8013DAE4) {
        D_8013DAE4 = arg0;
    }
    D_8013DAE0--;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B99A8_C8958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B9AC8_C8A78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B9C28_C8BD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B9DB8_C8D68.s")

/* Clamps arg0 to the range [arg1, arg2] */
s16 func_800BA4DC_C948C(s16 arg0, s16 arg1, s16 arg2) {
    if (arg0 < arg1) {
        return arg1;
    }
    if (arg2 < arg0) {
        return arg2;
    }
    return arg0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BA52C_C94DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BA5B0_C9560.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BB3D0_CA380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BB5E0_CA590.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BC2F8_CB2A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BC5DC_CB58C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BC760_CB710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BD20C_CC1BC.s")

#ifdef NON_MATCHING
/* Resets the animation speed field for each of 8 sub-entries of the current level's
   table at D_8003E0FC, then calls CC1BC to process them */
void func_800BD2F4_CC2A4(void) {
    s32 i = 0;
    s32 stride = 0xA;
    u8 *base = &D_8003E0FC[currentLevel * 0x50];

    do {
        base[i * stride - 0x4A] = 0;
        i = (i + 1) & 0xFF;
    } while (i < 8);
    func_800BD20C_CC1BC(base);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BD2F4_CC2A4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BD360_CC310.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BD688_CC638.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BD8B8_CC868.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BDAF4_CCAA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BDD24_CCCD4.s")

/* Resets trigger mode state and sub-state counter to 0 */
void func_800BDDA0_CCD50(void) {
    D_80151DD0 = 0;
    D_8013D9AC = 0;
}

/* Sets trigger mode state to 3 and resets sub-state counter */
void func_800BDDB4_CCD64(void) {
    D_80151DD0 = 3;
    D_8013D9AC = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BDDCC_CCD7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BE5C0_CD570.s")

/* Sets animation/mode byte to 0x4B (idle state) */
void func_800BECE0_CDC90(void) {
    D_8013D9B0 = 0x4B;
}

/* Sets animation/mode byte to 0x4B and marks as active */
void func_800BECF0_CDCA0(void) {
    D_8013D9B0 = 0x4B;
    D_8013D9B4 = 1;
}

/* Sets animation/mode byte to 1 and clears active flag */
void func_800BED0C_CDCBC(void) {
    D_8013D9B0 = 1;
    D_8013D9B4 = 0;
}

/* Clears the active entity state flag */
void func_800BED24_CDCD4(void) {
    D_8013D9B4 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BED30_CDCE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800C0678_CF628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800C0D1C_CFCCC.s")
