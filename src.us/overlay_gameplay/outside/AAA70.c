#include <ultra64.h>
#include "common.h"


#ifdef NON_MATCHING
void func_8009BAC0_AAA70(void) {
    s32 i;
    s32 j;
    s32 *ptr;
    s32 *inner;

    D_8014F20C = 0;
    D_8014EDDC = 0;
    D_8014EDD8 = 0;
    D_8014EDDA = 0x40;
    D_8014F1E4 = 160.0f;
    D_8014F1E8 = 250.0f;
    D_8014F1EC = 160.0f;
    D_8014F1F0 = 250.0f;
    D_8014F1F4 = 0x80;
    D_8014F1F6 = 0;
    D_8014F1FA = 0x80;
    D_8014F1F8 = 0;
    D_8014ED4A = 0;
    D_8014ED48 = D_8014ED4A;
    D_8014ED46 = D_8014ED48;
    D_8014ED44 = D_8014ED46;
    D_8014ED42 = D_8014ED44;
    D_8014ED52 = 0;
    D_8014ED50 = D_8014ED52;
    D_8014ED4E = D_8014ED50;
    D_8014ED4C = D_8014ED4E;
    ptr = D_8014F5F0;
    i = 0x1F;
    do {
        j = 7;
        inner = ptr + 7;
        do {
            *inner-- = 0;
        } while (j--);
        ptr -= 8;
    } while (i--);
    D_8014F610 = 0;
    D_8014F202 = 0;
    D_8014F203 = 0;
    D_8014F204 = (s32) D_8004816A;
    D_8014F208 = -1;
    func_80139B34_148AE4();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009BAC0_AAA70.s")
#endif

#ifdef NON_MATCHING
s32 func_8009BC48_AABF8(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_t0;
    s32 temp_v1;
    s32 var_v1;

    temp_v1 = arg0 - 0x10;
    temp_t0 = arg1 - 0x10;
    if ((arg0 >= 0) && (temp_v1 < 0x10) && (temp_t0 >= -0x10) && (temp_t0 < 0x10)) {
        var_v1 = 0x100;
        if (arg2 != 0) {
            var_v1 = 0x80;
        }
        if (((temp_v1 * temp_v1) + (temp_t0 * temp_t0)) < var_v1) {
            return 1;
        }
        return 0;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009BC48_AABF8.s")
#endif

s32 func_8009BCC0_AAC70(s32 arg0, s32 arg1, u8 arg2) {
    u8 *ptr;

    if (func_8009BC48_AABF8(arg0, arg1, 0) != 0) {
        if (arg0 & 1) {
            if (D_8014EDD8 != 0) {
                return 1;
            }
            ptr = &D_8014EDE0[(arg1 << 4) + arg0 / 2];
            *ptr &= 0xF0;
            *ptr |= arg2;
            return 1;
        }
        if (D_8014EDD8 != 0) {
            return 1;
        }
        ptr = &D_8014EDE0[(arg1 << 4) + arg0 / 2];
        *ptr &= 0xF;
        *ptr |= (arg2 << 4);
        return 1;
    }
    return 0;
}

#ifdef NON_MATCHING
void func_8009BDB8_AAD68(s32 arg0, s32 arg1) {
    Gfx *spC;
    s32 sp0;
    Gfx *dl;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xFD900000;
    dl->words.w1 = (s32)(((arg1 & 0xFF) << 7) + (u32)D_1009C70) & 0x1FFFFFFF;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    arg0 &= 0xFF;
    dl->words.w0 = 0xF5900000;
    dl->words.w1 = 0x07014050;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xE6000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x0703F800;
    dl->words.w0 = 0xF3000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xE7000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xF5800200;
    dl->words.w1 = 0x00014050;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xF2000000;
    dl->words.w1 = 0x0003C03C;

    sp0 = arg0;
    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = (s32)(((((arg0 + 0x15) << 2) & 0xFFF) << 12) | 0xE40000F4);
    dl->words.w1 = (s32)((((sp0 << 2) & 0xFFF) << 12) | 0xA0);

    spC = D_8005BB2C;
    D_8005BB2C = spC + 1;
    spC->words.w1 = 0;
    spC->words.w0 = 0xB4000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xB3000000;
    dl->words.w1 = 0x03000300;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xE7000000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009BDB8_AAD68.s")
#endif

#ifdef NON_MATCHING
void func_8009BF64_AAF14(u16 arg0) {
    u8 sp47;
    s32 sp1C;
    s32 sp18;
    u16 sp2A;
    Gfx *dl;

    sp47 = (u8)((s32)arg0 / 60);
    sp2A = (u16)((s32)arg0 % 60);

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xB6000000;
    dl->words.w1 = 1;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x80008000;
    dl->words.w0 = 0xBB000001;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xBA001301;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x5041C8;
    dl->words.w0 = 0xB900031D;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xE7000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xBA000E02;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xFCFFB3FF;
    dl->words.w1 = 0xFF65FEFF;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x325AE6FF;
    dl->words.w0 = 0xFA000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xE7000000;

    func_8009BDB8_AAD68(0x1E, sp47);

    if ((u32)(D_80052A8C % 20U) < 10U) {
        func_8009BDB8_AAD68(0x29, 0x0AU);
    }

    if ((s32)sp2A < 10) {
        sp1C = sp2A;
        func_8009BDB8_AAD68(0x32, 0U);
        sp2A = (u16)sp1C;
        sp18 = (sp2A % 10) & 0xFF;
    } else {
        sp18 = ((s32)sp2A % 10) & 0xFF;
        func_8009BDB8_AAD68(0x32, (u8)(((sp2A - sp18) / 10) & 0xFF));
    }
    func_8009BDB8_AAD68(0x41, (u8)(sp18 & 0xFF));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009BF64_AAF14.s")
#endif

// drawWaypointMarker ?
#ifdef NON_MATCHING
void func_8009C1D8_AB188(s16 arg0, s16 arg1, s32 arg2) {
    s16 sp36;
    s16 sp34;
    s32 sp18;
    s16 temp_t8;
    s32 temp_a0;
    s16 var_a1;
    s16 var_v1;
    Unk80052B40 *var_a1_2;
    Gfx *dl;

    temp_t8 = func_80003824_4424(
        (f32)(D_80052B34->unk4 - arg1),
        (f32)(D_80052B34->unk0 - arg0)
    ) - D_80047950;
    sp36 = temp_t8;
    sp34 = (s16)(s32)(((f64)(f32)sins(sp18 = (temp_t8 & 0xFFFF)) / 32768.0) * D_801426C0
                      + (f64)((s32)D_80068084 >> 1));
    var_a1 = sp34;
    var_v1 = (s16)(s32)(((f64)(f32)coss(sp18) / 32768.0) * D_801426C8
                        + (f64)((s32)D_80068088 >> 1));

    if (var_a1 >= 0x118) { var_a1 = 0x117; }
    if (var_a1 < 0x1C)   { var_a1 = 0x1C; }
    if (var_v1 < 0x1A)   { var_v1 = 0x1A; }
    if (var_v1 >= 0xCF)  { var_v1 = 0xCE; }

    D_80052B40.unk0 = var_a1;
    D_80052B40.unk2 = var_v1;
    D_80052B40.unk4 = -1;

    if (arg2 != 0) {
        D_80052B48.unk0 = 0;
        D_80052B48.unk4 = 0;
        D_80052B48.unk2 = (s16)(0x8000 - sp36);
    }

    if (arg2 != 0) {
        var_a1_2 = &D_80052B48;
    } else {
        var_a1_2 = NULL;
    }
    func_800039D0_45D0(&D_80052B40, var_a1_2, &D_8013D588, D_8005BB38);

    dl = D_8005BB2C; D_8005BB2C = dl + 1;
    dl->words.w0 = 0x01060040;
    dl->words.w1 = (s32)(D_8005BB38 & 0x1FFFFFFF);

    dl = D_8005BB2C; D_8005BB2C = dl + 1;
    D_8005BB38 += 0x40;
    dl->words.w1 = (s32)((s32)&D_8013D5E8 & 0x1FFFFFFF);
    dl->words.w0 = 0x0400103F;

    dl = D_8005BB2C; D_8005BB2C = dl + 1;
    dl->words.w1 = 0x00020406;
    dl->words.w0 = 0xB1020004;

    dl = D_8005BB2C; D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xBD000000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009C1D8_AB188.s")
#endif

void func_8009C458_AB408(void) {
    D_8014F1F6 = 0x10;
    D_8014F1F8 = 0x10;
}

void func_8009C470_AB420(void) {
    if (D_80052B34->unk1A != 0) {
        D_8014F1F6 = -0x10;
    }
    D_8014F1F8 = -0x10;
}

void func_8009C4A0_AB450(void) {
    D_8014F1F6 = 0x10;
}

void func_8009C4B0_AB460(void) {
    if (D_80052B34->unk1A != 0) {
        D_8014F1F6 = -0x10;
    }
}

void func_8009C4D8_AB488(void) {
    D_8014F1F8 = 0x10;
}

void func_8009C4E8_AB498(void) {
    D_8014F1F8 = -0x10;
}

#ifdef NON_MATCHING
void func_8009C4F8_AB4A8(s32 arg0, s32 arg1) {
    Gfx *spC;
    s32 sp0;
    Gfx *dl;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xFD900000;
    dl->words.w1 = (s32)(((arg1 & 0xFF) << 7) + (u32)D_1009C70) & 0x1FFFFFFF;

    arg0 &= 0xFF;
    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xF5900000;
    dl->words.w1 = 0x07014050;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xE6000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x0703F800;
    dl->words.w0 = 0xF3000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xE7000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xF5800200;
    dl->words.w1 = 0x00014050;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xF2000000;
    dl->words.w1 = 0x0003C03C;

    sp0 = arg0;
    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = (s32)(((((arg0 + 0xB) << 2) & 0xFFF) << 12) | 0xE4000000 | (((D_80068088 - 0x19) << 2) & 0xFFF));
    dl->words.w1 = (s32)((((sp0 << 2) & 0xFFF) << 12) | (((D_80068088 - 0x24) << 2) & 0xFFF));

    spC = D_8005BB2C;
    D_8005BB2C = spC + 1;
    spC->words.w1 = 0;
    spC->words.w0 = 0xB4000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xB3000000;
    dl->words.w1 = 0x06000600;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xE7000000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009C4F8_AB4A8.s")
#endif

// Additional params
// sp10 Pointer to icon
// sp14 Type, 2=Vertical, 3=Horizontal ...
// sp18 Values > 0 scale icon smaller
// sp1c Alters color of the bar - used to make it flash
// sp20 Length of the bar background
// drawHudBarWithIcon
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009C6CC_AB67C.s")

void func_8009D900_AC8B0(s16 *arg0, f32 *arg1, s16 arg2) {
    f32 temp_f0;
    f32 temp_f2;

    temp_f0 = (f32)*arg0 / (f32)arg2;
    temp_f2 = (f32)*arg0;
    if ((f64) temp_f0 > 1.0) {
        *arg0 = (s16) (s32) (temp_f2 / temp_f0);
        *arg1 /= temp_f0;
    }
}

// Draws Health/Human/vehicle/+more bars on HUD
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009D96C_AC91C.s")

// drawAlienHealth
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009E994_AD944.s")

void func_8009EC90_ADC40(s16 arg0, f32 *arg1, f32 *arg2) {
    s32 var_v0;

    if (((arg0 >= 0x2001) && (arg0 < 0x6000)) || ((arg0 < -0x2000) && (arg0 >= -0x5FFF))) {
        if (arg0 > 0) {
            *arg1 = 1.0f;
        } else {
            if (arg0 < 0) {
                var_v0 = -1;
            } else {
                var_v0 = 0;
            }
            *arg1 = (f32) var_v0;
        }
        *arg2 = (f32) (((f64) *arg1 * ((f64) (f32) coss(arg0) / 32768.0)) / ((f64) (f32) sins(arg0) / 32768.0));
        return;
    }
    if (arg0 >= 0) {
        var_v0 = arg0;
    } else {
        var_v0 = -(s32) arg0;
    }
    if (var_v0 < 0x4000) {
        *arg2 = 1.0f;
    } else {
        *arg2 = -1.0f;
    }
    *arg1 = (f32) (((f64) *arg2 * ((f64) (f32) sins(arg0) / 32768.0)) / ((f64) (f32) coss(arg0) / 32768.0));
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009EE30_ADDE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009F130_AE0E0.s")

void func_8009FB1C_AEACC(s16 arg0, s16 arg1) {
    D_8014F1EC = (f32) arg0;
    D_8014F1F0 = (f32) arg1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009FB58_AEB08.s")

// displayScanner
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A03FC_AF3AC.s")

#ifdef NON_MATCHING
void func_800A1364_B0314(void) {
    s32 temp_v0;
    u32 temp_t4;

    D_8013D758 = D_8013D75C;
    temp_v0 = osGetCount();
    D_8013D75C = temp_v0;
    D_8014F210[D_8014F20C][D_8014F610] = temp_v0 - D_8013D758;
    temp_t4 = D_8014F20C + 1;
    D_8014F20C = temp_t4;
    if (temp_t4 >= 0x20U) {
        D_8014F20C = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A1364_B0314.s")
#endif

void func_800A13E8_B0398(void) {
    D_8013D75C = osGetCount();
}

// drawDebugTimingGraphs
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A140C_B03BC.s")

void func_800A1764_B0714(void) {
    D_8014F618.unk69 = 0;
    D_8014F618.unk6A = 0;
    D_8014F618.unk6B = 0;
    D_8014F618.unk6C = 0;
    D_8014F618.unk6F = 0xF;
    D_8014F618.unk70 = 0;
    D_8014F618.unk71 = 0x14;
    D_8014F618.unk72 = 0xE6;
    D_8014F618.unk73 = 0x1E;
    D_8014F618.unk74 = 0x14;
    D_8014F618.unk75 = 0xE6;
    D_8014F618.unk76 = 0x1E;
    D_8014F618.unk6D = 0;
    D_8014F618.unk68 = 0;
    D_8014F618.unk67 = 0;
    D_8014F618.unk6E = 0;
    D_8014F618.unk77 = 0xA;
    D_8014F618.unk78 = 0x1E;
    D_8014F618.unk79 = 0x96;
    D_8014F618.unk7A = 0xA;
    D_8014F618.unk7B = 0x1E;
    D_8014F618.unk7C = 0x96;
    D_8014F618.unk7D = 0xA;
    D_8014F618.unk7E = 0x1E;
    D_8014F618.unk7F = 0x96;
}

void func_800A17EC_B079C(void) {
    D_8013D5B4 = 0;
    D_8013D5B8 = 0;
    D_8013D5BC = 0;
    D_8013D5C0 = 0;
    func_800A1764_B0714();
}

#ifdef NON_MATCHING
s32 func_800A1828_B07D8(s32 arg0, s32 arg1, s32 arg2) {
    s32 t6 = arg0 & 0xFF;
    s32 t7 = arg1 & 0xFF;
    s32 t8 = arg2 & 0xFF;
    if (t7 < t6) {
        if (t6 < t8 || (t6 - t7) < t8) {
            return t7 & 0xFF;
        }
        return (t6 - t8) & 0xFF;
    }
    if (t6 < t7) {
        if ((0xFF - t8) < t6 || (t7 - t6) < t8) {
            return t7 & 0xFF;
        }
        return (t6 + t8) & 0xFF;
    }
    return t6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A1828_B07D8.s")
#endif

s32 func_800A18CC_B087C(void) {
    s16 index = (s16)(D_80158FE8 - buildingInstances);
    return (D_8014D1B8[index >> 5] & (1 << (index & 0x1F))) != 0;
}

// checkIfShouldOpenPauseMenu
void func_800A1924_B08D4(void) {
    if ((currentControllerStates[0].button & 0x1000) &&
        (gameplayMode != GAMEPLAY_MODE_UNK3) &&
        (gameplayMode != GAMEPLAY_MODE_UNKB) &&
        (D_8004794C == 0) &&
        (func_80018A58_19658() == 0) &&
        (D_80048188 == 0)) {

        D_801591B0 = D_801591AC;
        D_80052AE0 = gameplayMode;
        D_801591AC = 3;
        gameplayMode = GAMEPLAY_MODE_UNK2;
        D_8014ED56 = 0xFF;
        D_8014ED54 = 0;
        D_80050AD0 = D_80050AD4;
        D_801591D4 = D_80052B34->unk6;
        D_8014ED40 = D_8004794A;
        func_800153D8_15FD8(0xC6);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A1A18_B09C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A1DD8_B0D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A2260_B1210.s")

s32 func_800A2A88_B1A38(void) {
    s32 temp_v0;

    if (D_8013D5B4 == 0) {
        return 0;
    }
    temp_v0 = D_80257A1C[D_80052B34->unk1A][0];
    if (temp_v0 == 0) {
        return 0;
    }
    if (((s32)D_80145BE8[temp_v0][0] >> 8) & 0x200000) {
        return 0;
    }
    if (D_80159320 & 0x10000) {
        return 0;
    }
    if (gameplayMode == GAMEPLAY_MODE_UNK3) {
        return 0;
    }
    if (gameplayMode == GAMEPLAY_MODE_UNKB) {
        return 0;
    }
    return 1;
}

// drawGhostTarget - R-trigger aiming reticle?
#ifdef NON_MATCHING
void func_800A2B58_B1B08(void) {
    Unk8014F618 *base = &D_8014F618;
    Gfx *dlA0;
    Gfx *dlA1;
    Gfx *dlA2;
    Gfx *dlA3;
    Gfx *dl;

    if (base->unk66 != 1) {
        return;
    }
    if (!func_800A2A88_B1A38()) {
        return;
    }
    base = &D_8014F618;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = (s32)&D_80031160 & 0x1FFFFFFF;
    dl->words.w0 = 0x01020040;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xE7000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x00032001;
    dl->words.w0 = 0xB6000000;

    dlA3 = D_8005BB2C;
    D_8005BB2C = dlA3 + 1;
    dlA3->words.w1 = 0;
    dlA3->words.w0 = 0xE7000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 4;
    dl->words.w0 = 0xB7000000;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x80008000;
    dl->words.w0 = 0xBB000001;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x2000;
    dl->words.w0 = 0xBA000C02;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xBA000602;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x80000;
    dl->words.w0 = 0xBA001301;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0x00504240;
    dl->words.w0 = 0xB900031D;

    dlA0 = D_8005BB2C;
    D_8005BB2C = dlA0 + 1;
    dlA0->words.w1 = 0;
    dlA0->words.w0 = 0xBA000E02;

    dlA1 = D_8005BB2C;
    D_8005BB2C = dlA1 + 1;
    dlA1->words.w1 = 0xFF65FEFF;
    dlA1->words.w0 = 0xFCFFB3FF;

    dlA2 = D_8005BB2C;
    D_8005BB2C = dlA2 + 1;
    dlA2->words.w0 = 0xFA000000;
    dlA2->words.w1 = (s32)((base->unk79 << 8) | (base->unk77 << 0x18) | (base->unk78 << 0x10) | (((s8)base->unk69 / 2) & 0xFF));

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w1 = 0;
    dl->words.w0 = 0xE7000000;

    func_800A2260_B1210(dlA0, dlA1, dlA2, dlA3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A2B58_B1B08.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A2D98_B1D48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A3490_B2440.s")

s32 func_800A3CD0_B2C80(void) {
    if (D_8014F1FA == 0) {
        return 1;
    }
    return 0;
}
