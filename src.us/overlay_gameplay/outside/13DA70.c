#include <ultra64.h>
#include "common.h"

s32 func_8012F4E0_13E490(u8 *arg0, s32 arg1, s32 arg2, s32 arg3, u8 *arg4, s32 arg5, s32 arg6, s32 arg7);

#ifdef NON_MATCHING
/* Converts an integer to a decimal string, writes into arg1 */
void func_8012EAC0_13DA70(s32 arg0, u8 *arg1) {
    s16 numDigits = 0;
    s16 j = 0;
    s16 power;
    s16 k;
    s32 v = arg0;
    s32 digit;

    if (arg0 > 0) {
        do {
            numDigits++;
            v = (s32)((f32)v / 10.0f);
        } while (v > 0);
    }
    if (numDigits > 0) {
        do {
            power = 1;
            k = 0;
            if (j > 0) {
                do {
                    k++;
                    power *= 0xA;
                } while (k < j);
            }
            digit = (s32)((f32)arg0 / (f32)power);
            *(arg1 + numDigits - j - 1) = (u8)(digit - (s32)((f32)digit / 10.0f) * 0xA + 0x30);
            j++;
        } while (j < numDigits);
    }
    arg1[numDigits] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012EAC0_13DA70.s")
#endif

#ifdef NON_MATCHING
/* Concatenates two strings (arg0 + arg1) into the output buffer arg2 */
void func_8012EBC0_13DB70(u8 *arg0, u8 *arg1, u8 *arg2) {
    s16 i = 0;
    s16 j = 0;
    u8 c;

    if (*arg0 != 0) {
        c = *arg0;
        do {
            arg2[i] = c;
            i++;
            c = arg0[i];
        } while (c != 0);
    }
    do {
        arg2[i + j] = arg1[j];
        j++;
    } while (arg1[j - 1] != 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012EBC0_13DB70.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012EC3C_13DBEC.s")

#ifdef NON_MATCHING
/* Cycles RGBA color through hue phases over 300 steps using a global timer */
void func_8012F24C_13E1FC(u8 *arg0, s32 arg1) {
    s32 rem;

    rem = D_8015FF84 % 300;
    if (rem < 0x64) {
        arg0[2] = 0x96;
        arg0[1] = rem + 0x96;
        arg0[0] = 0xFA - rem;
    } else if (rem < 0xC8) {
        arg0[3] = rem + 0x32;
        arg0[0] = 0x96;
        arg0[1] = 0x15E - rem;
    } else {
        arg0[1] = 0x96;
        arg0[3] = 0x1C2 - rem;
        arg0[0] = rem - 0x32;
    }
    D_8015FF84 += arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012F24C_13E1FC.s")
#endif

#ifdef NON_MATCHING
/* Applies a cosine-based brightness oscillation to RGB color data */
void func_8012F2DC_13E28C(u8 *arg0, u8 *arg1, s32 arg2) {
    f32 var_f0;
    u8 temp_v0;
    s16 var_v1;
    u8 *temp_t8;

    if ((f32)((f64)(f32)coss((D_80140C78 * 0x3E8) & 0xFFFF) / 32768.0) >= 0.0) {
        var_f0 = (f32)((f64)(f32)coss((D_80140C78 * 0x3E8) & 0xFFFF) / 32768.0);
    } else {
        var_f0 = (f32) -((f64)(f32)coss((D_80140C78 * 0x3E8) & 0xFFFF) / 32768.0);
    }
    var_v1 = 0;
    do {
        temp_v0 = arg0[var_v1];
        temp_t8 = arg1 + var_v1;
        var_v1 = (var_v1 + 1) & 0xFF;
        *temp_t8 = (u32)((f32)(0xFF - temp_v0) * var_f0) + temp_v0;
    } while (var_v1 < 3);
    D_80140C78 += arg2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012F2DC_13E28C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012F4E0_13E490.s")

#ifdef NON_MATCHING
/* Writes a sequence of RDP GBI commands to the display list to set up UI rendering state */
void func_8012FE6C_13EE1C(s32 arg0) {
    Gfx *dl;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xE7000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xBA001402;
    dl->words.w1 = 0;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xB6000000;
    dl->words.w1 = 0x10001;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x504240;
    dl->words.w0 = 0xB900031D;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xBA000E02;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0xFFFDF6FB;
    dl->words.w0 = 0xFCFFFFFF;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = (arg0 & 0xFF);
    dl->words.w0 = 0xFA000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xE7000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = (s32)(((D_80068084 & 0x3FF) << 0xE) | 0xF6000000 | ((D_80068088 & 0x3FF) * 4));
    dl->words.w1 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012FE6C_13EE1C.s")
#endif

#ifdef NON_MATCHING
/* Stores the current score into the level slot and returns the total across all level slots */
s32 func_8012FFB0_13EF60(void) {
    Unk80052A98 *ptr;

    D_80052A98[currentLevel - 1].unk0 = (s32) D_80052B2C->unk30;
    ptr = &D_80052A98[2];
    return D_80052A98[0].unk0 + D_80052AA0 + ptr[0].unk0 + ptr[1].unk0 + ptr[2].unk0 + ptr[3].unk0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8012FFB0_13EF60.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_8013001C_13EFCC.s")

#ifdef NON_MATCHING
/* Manages end-of-mission UI flow: displays mission title, subtitle, and score screens in sequence,
   then transitions the game state once the player confirms */
void func_801306C4_13F674(u8 *arg0) {
    s32 pad0;
    s32 pad1;
    s32 pad2;
    s32 pad3;
    s32 pad4;
    s32 pad5;
    u8 sp40[4];
    s32 temp_v0;
    s32 var_v0;

    if (D_80140C84 != 0) {
        D_80140C84 = 0;
        D_80052B2C->unk30 += 0x2710;
        D_80140C88 = 0;
        D_80140C8C = 0;
        D_80140C90 = 0;
        D_80140C94 = 0;
        D_80140C98 = 0;
        D_80140C9C = 0;
        D_80140CA0 = 0;
    }
    func_8012EAC0_13DA70(0x2710, sp40);
    if (D_80140C88 == 0) {
        temp_v0 = func_8012F4E0_13E490(arg0, 0xA, 0x14, 0x47, D_80140C70, D_80140C98 == 0, D_80140C8C == 0, 0x14);
        D_80140C98 = temp_v0;
        D_80140C8C = 1;
        if (temp_v0 != 0) {
            switch (D_800313D0) {
            default:
            case 0:
                var_v0 = func_8012F4E0_13E490(D_801454C0, 0x12, 0x18, 0x82, D_80140C70, D_80140C9C == 0, D_80140C90 == 0, 0xC);
                break;
            case 2:
                var_v0 = func_8012F4E0_13E490(D_801454C8, 0x12, 0x18, 0x82, D_80140C70, D_80140C9C == 0, D_80140C90 == 0, 0xC);
                break;
            case 1:
                var_v0 = func_8012F4E0_13E490(D_801454D0, 0x12, 0x18, 0x82, D_80140C70, D_80140C9C == 0, D_80140C90 == 0, 0xC);
                break;
            }
            D_80140C9C = var_v0;
            D_80140C90 = 1;
        }
        if (D_80140C9C != 0) {
            D_80140CA0 = func_8012F4E0_13E490(sp40, 0x14, 0x1E, 0xA2, D_80140C74, D_80140CA0 == 0, D_80140C94 == 0, 0x34);
            D_80140C94 = 1;
        }
    } else {
        D_80140C98 = func_8012F4E0_13E490(arg0, 0xA, 0x14, 0x47, D_80140C70, D_80140C98 == 0, D_80140C8C == 0, 8);
        D_80140C8C = 1;
        switch (D_800313D0) {
        default:
        case 0:
            func_8012F4E0_13E490(D_801454D8, 0x12, 0x18, 0x82, D_80140C70, 0, 0, 0);
            break;
        case 2:
            func_8012F4E0_13E490(D_801454E0, 0x12, 0x18, 0x82, D_80140C70, 0, 0, 0);
            break;
        case 1:
            func_8012F4E0_13E490(D_801454E8, 0x12, 0x18, 0x82, D_80140C70, 0, 0, 0);
            break;
        }
        func_8012F4E0_13E490(sp40, 0x14, 0x1E, 0xA2, D_80140C74, 0, 0, 0x20);
    }
    func_800033D4_3FD4(0xD000, 0);
    if ((D_80047588[0].unk0 & 0xD000) && (D_80140C88 == 0)) {
        if ((D_80140C98 == 0) || (D_80140C9C == 0) || (D_80140CA0 == 0)) {
            D_80140CA0 = 1;
            D_80140C9C = 1;
            D_80140C98 = 1;
            D_80140C94 = 0;
            D_80140C90 = 0;
            D_80140C8C = 0;
        } else {
            D_80140C88 = 1;
            D_80140C98 = 0;
        }
    }
    if ((D_80140C88 != 0) && (D_80140C98 != 0)) {
        D_80140C84 = 1;
        if (D_8015FF80 == 5) {
            D_8015FF80 = 6;
            return;
        }
        if ((D_8004816E == 0) || (D_80048170 == 0)) {
            D_8015FF80 = 2;
            return;
        }
        D_8015FF80 = 4;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_801306C4_13F674.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_80130BA0_13FB50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_80131280_140230.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/13DA70/func_80131858_140808.s")
