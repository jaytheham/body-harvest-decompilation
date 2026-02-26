#include <ultra64.h>
#include "common.h"


void func_8008BAA0_173B60(void) {
    D_8004794A = 0;
    D_800FCF22 = 0x80;
    D_800FCF24 = -1;
    D_800FCF26 = 0x80;
    D_800FCF28 = -1;
    D_800FCA80 = 0;
    D_800FCA84 = 0;
    D_800FCF3C = (s32) D_8004816A;
    D_800FCF40 = -1;
}

void func_8008BAFC_173BBC(void) {
    D_800FCF24 = 8;
    D_800FCF28 = 8;
}

void func_8008BB14_173BD4(void) {
    D_800FCF24 = -8;
    D_800FCF28 = -8;
}

void func_8008BB2C_173BEC(void) {
    D_800FCF24 = 8;
}

void func_8008BB3C_173BFC(void) {
    D_800FCF24 = -8;
}

void func_8008BB4C_173C0C(void) {
    D_800FCF28 = 8;
}

void func_8008BB5C_173C1C(void) {
    D_800FCF28 = -8;
}

#ifdef NON_MATCHING
void func_8008BB6C_173C2C(s32 arg0, s32 arg1) {
    Gfx *dl;
    Gfx *spC;
    s32 sp0;

    sp0 = arg0 &= 0xFF;
    arg1 &= 0xFF;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xFD900000;
    dl->words.w1 = (s32)(D_1009C70 + (arg1 << 7)) & 0x1FFFFFFF;

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

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = (s32)((((arg0 + 0xB) * 4 & 0xFFF) << 0xC) | 0xE4000344);
    dl->words.w1 = (s32)(((sp0 * 4 & 0xFFF) << 0xC) | 0x318);

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
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008BB6C_173C2C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008BD18_173DD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008C8A4_174964.s")

// doPauseMenu ?
#ifdef NON_MATCHING
void func_8008CF2C_174FEC(void) {
    u8 menuEntries[9];
    s16 temp_s0;
    s16 temp_t8;
    s16 var_v0_2;
    s32 spA8;
    Gfx **var_ra;
    Gfx *temp_v0;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_16;
    Gfx *temp_v0_18;
    Gfx *temp_v0_19;
    Gfx *temp_v0_20;
    Gfx *temp_v0_21;
    Gfx *temp_v0_22;
    Gfx *temp_v0_23;
    Gfx *temp_v0_24;
    Gfx *temp_v0_25;
    Gfx *temp_v0_26;
    Gfx *temp_v0_27;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    s32 *var_v0_3;
    s32 temp_t3;
    s32 var_t4;
    s32 var_t4_2;
    s32 var_t7;
    s8 temp_a0;
    s8 temp_v0_12;
    s8 var_v0;
    s8 var_v1;
    u8 *var_t5;
    u8 *var_t5_2;
    u8 temp_v0_15;
    u8 temp_v1;
    u8 temp_v1_2;

    var_ra = &D_8005BB2C;
    temp_v0 = D_8005BB2C;
    D_8005BB2C = temp_v0 + 1;
    temp_v0->words.w1 = 0x8000;
    temp_v0->words.w0 = 0xBA000E02;
    temp_v0_2 = D_8005BB2C;
    D_8005BB2C = temp_v0_2 + 1;
    temp_v0_2->words.w1 = 0;
    temp_v0_2->words.w0 = 0xBA001301;
    temp_v0_3 = D_8005BB2C;
    D_8005BB2C = temp_v0_3 + 1;
    temp_v0_3->words.w0 = 0xFD100000;
    temp_v0_3->words.w1 = (u32) &D_80260500;
    temp_v0_4 = D_8005BB2C;
    D_8005BB2C = temp_v0_4 + 1;
    temp_v0_4->words.w1 = 0;
    temp_v0_4->words.w0 = 0xE8000000;
    temp_v0_5 = D_8005BB2C;
    D_8005BB2C = temp_v0_5 + 1;
    temp_v0_5->words.w1 = 0x07000000;
    temp_v0_5->words.w0 = 0xF5000100;
    temp_v0_6 = D_8005BB2C;
    D_8005BB2C = temp_v0_6 + 1;
    temp_v0_6->words.w1 = 0;
    temp_v0_6->words.w0 = 0xE6000000;
    temp_v0_7 = D_8005BB2C;
    D_8005BB2C = temp_v0_7 + 1;
    temp_v0_7->words.w1 = 0x073FC000;
    temp_v0_7->words.w0 = 0xF0000000;
    temp_v0_8 = D_8005BB2C;
    D_8005BB2C = temp_v0_8 + 1;
    temp_v0_8->words.w1 = 0;
    temp_v0_8->words.w0 = 0xE7000000;
    temp_v0_9 = D_8005BB2C;
    D_8005BB2C = temp_v0_9 + 1;
    temp_v0_9->words.w1 = 0;
    temp_v0_9->words.w0 = 0xE7000000;
    temp_v0_10 = D_8005BB2C;
    var_t5 = &menuEntries[8];
    D_8005BB2C = temp_v0_10 + 1;
    temp_v0_10->words.w1 = 0xFF2FFFFF;
    temp_v0_10->words.w0 = 0xFC119623;
    temp_v0_11 = D_8005BB2C;
    D_8005BB2C = temp_v0_11 + 1;
    var_t4 = 8;
    temp_v0_11->words.w1 = 0x00504240;
    temp_v0_11->words.w0 = 0xB900031D;
    do {
        *var_t5 = 0xF;
        var_t5 -= 1;
        var_t4 -= 1;
    } while (var_t4 != 0);
    if (D_800FCA90 != 0) {
        menuEntries[4] = 0xE;
        menuEntries[1] = 8;
    } else {
        menuEntries[1] = 0xE;
        menuEntries[5] = 3;
        menuEntries[4] = 8;
        if (currentLevel != 5) {
            menuEntries[7] = 0xD;
        }
    }
    temp_a0 = D_8004758A;
    var_v0 = -temp_a0;
    if (temp_a0 >= 0) {
        var_v0 = temp_a0;
    }
    if (var_v0 < 0x14) {
        var_v1 = -D_8004758B;
        if (D_8004758B >= 0) {
            var_v1 = D_8004758B;
        }
        if (var_v1 < 0x14) {
            D_800FCF20 = 1;
        }
    }
    if (D_800FCF20 == 1) {
        if ((temp_a0 < -0x1E) && (D_800A4340 >= 4) && (menuEntries[D_800A4340 - 1] != 0xF)) {
            D_800A4340 -= 1;
            D_800FCF20 = 0;
            func_800153D8_15FD8(0xC7);
            var_ra = &D_8005BB2C;
        }
        if ((temp_a0 >= 0x1F) && (D_800A4340 < 5) && (menuEntries[D_800A4340 + 1] != 0xF) && (D_800A4348 == 0)) {
            D_800A4340 += 1;
            D_800FCF20 = 0;
            func_800153D8_15FD8(0xC7);
            var_ra = &D_8005BB2C;
        }
        temp_v0_12 = D_8004758B;
        if ((temp_v0_12 >= 0x1F) && (D_800A4340 >= 2) && (menuEntries[D_800A4340 - 3] != 0xF)) {
            D_800A4340 -= 3;
            D_800FCF20 = 0;
            func_800153D8_15FD8(0xC7);
            var_ra = &D_8005BB2C;
        }
        if ((temp_v0_12 < -0x1E) && (D_800A4340 < 7) && (menuEntries[D_800A4340 + 3] != 0xF)) {
            D_800A4340 += 3;
            D_800FCF20 = 0;
            func_800153D8_15FD8(0xC7);
            var_ra = &D_8005BB2C;
        }
    }
    var_v0_2 = D_800FCA92;
    temp_v1 = menuEntries[D_800A4340];
    if (var_v0_2 != 0xFF) {
        D_800A4344 = -1;
        func_8001A54C_1B14C(D_800A56EC, -1U);
        temp_t8 = D_800FCA92 - 0x20;
        var_ra = &D_8005BB2C;
        var_v0_2 = temp_t8;
        D_800FCA92 = temp_t8;
    } else {
        if (D_800A4344 != temp_v1) {
            switch (D_800313D0) {
                case 0:
                    D_800A4344 = (s32) temp_v1;
                    func_8001A54C_1B14C(D_800A428C[temp_v1], temp_v1);
                    var_v0_2 = D_800FCA92;
                    break;
                case 2:
                    D_800A4344 = (s32) temp_v1;
                    func_8001A54C_1B14C(D_800A4304[temp_v1], temp_v1);
                    var_v0_2 = D_800FCA92;
                    break;
                case 1:
                    D_800A4344 = (s32) temp_v1;
                    func_8001A54C_1B14C(D_800A42C8[temp_v1], temp_v1);
                    var_v0_2 = D_800FCA92;
                    break;
            }
            var_ra = &D_8005BB2C;
        }
        D_800FCF4C = -1;
    }
    var_t4_2 = 8;
    var_t5_2 = &menuEntries[8];
    if (D_800FCF4C != -1) {
        D_800A4340 = D_800FCF4C;
    }
    if (var_v0_2 < 0xFF) {
        temp_v0_13 = *var_ra;
        *var_ra = temp_v0_13 + 1;
        temp_v0_13->words.w1 = 3;
        temp_v0_13->words.w0 = 0xB9000002;
    } else {
        temp_v0_14 = *var_ra;
        *var_ra = temp_v0_14 + 1;
        temp_v0_14->words.w1 = 0;
        temp_v0_14->words.w0 = 0xB9000002;
    }
    do {
        temp_v0_15 = *var_t5_2;
        if (temp_v0_15 != 0xF) {
            temp_s0 = (((var_t4_2 % 3) << 5) + (D_80068084 / 2)) - 0x2C;
            temp_v0_16 = *var_ra;
            *var_ra = temp_v0_16 + 1;
            temp_v0_16->words.w0 = 0xFA000100;
            if (var_t4_2 == D_800A4340) {
                temp_v0_16->words.w1 = (D_800FCA92 & 0xFF) | 0x00C8FF00;
                if (D_800A4340 != D_800FCB1E) {
                    func_80013810_14410(D_800A4343);
                    var_ra = &D_8005BB2C;
                    D_800FCB1E = (u16) D_800A4340;
                }
            } else {
                temp_v0_16->words.w1 = (D_800FCA92 & 0xFF) | 0x00647F00;
            }
            spA8 = D_800A427C[temp_v0_15];
            temp_v0_18 = *var_ra;
            *var_ra = temp_v0_18 + 1;
            temp_v0_18->words.w0 = 0xFD500000;
            temp_v0_18->words.w1 = (u32) (&D_8025CCC0[spA8 * 0x240]) & 0x1FFFFFFF;
            temp_v0_19 = *var_ra;
            *var_ra = temp_v0_19 + 1;
            temp_v0_19->words.w1 = 0x07000000;
            temp_v0_19->words.w0 = 0xF5500000;
            temp_v0_20 = *var_ra;
            *var_ra = temp_v0_20 + 1;
            temp_v0_20->words.w1 = 0;
            temp_v0_20->words.w0 = 0xE6000000;
            temp_v0_21 = *var_ra;
            *var_ra = temp_v0_21 + 1;
            temp_v0_21->words.w1 = 0x0711F2AB;
            temp_v0_21->words.w0 = 0xF3000000;
            temp_v0_22 = *var_ra;
            *var_ra = temp_v0_22 + 1;
            temp_v0_22->words.w1 = 0;
            temp_v0_22->words.w0 = 0xE7000000;
            temp_v0_23 = *var_ra;
            *var_ra = temp_v0_23 + 1;
            temp_v0_23->words.w1 = 0;
            temp_v0_23->words.w0 = 0xF5480600;
            temp_v0_24 = *var_ra;
            *var_ra = temp_v0_24 + 1;
            temp_v0_24->words.w1 = 0x5C05C;
            temp_v0_24->words.w0 = 0xF2000000;
            temp_v0_25 = *var_ra;
            *var_ra = temp_v0_25 + 1;
            temp_t3 = ((var_t4_2 / 3) * 0x1E) + 0x38;
            temp_v0_25->words.w0 = ((((temp_s0 + 0x18) * 4) & 0xFFF) << 0xC) | 0xE4000000 | (((temp_t3 + 0x18) * 4) & 0xFFF);
            temp_v0_25->words.w1 = (((temp_s0 * 4) & 0xFFF) << 0xC) | ((temp_t3 * 4) & 0xFFF);
            temp_v0_26 = *var_ra;
            *var_ra = temp_v0_26 + 1;
            temp_v0_26->words.w1 = 0;
            temp_v0_26->words.w0 = 0xB4000000;
            temp_v0_27 = *var_ra;
            *var_ra = temp_v0_27 + 1;
            temp_v0_27->words.w1 = 0x04000400;
            temp_v0_27->words.w0 = 0xB3000000;
        }
        var_t5_2 -= 1;
        var_t4_2 -= 1;
    } while (var_t4_2 != 0);
    if ((isButtonNewlyPressed(0, 0x9000) != 0) && (D_800FCA92 == 0xFF) && (D_800FCA84 == 0)) {
        D_800FCA80 = 1;
        if (D_800FCA90 == 0) {
            func_800153D8_15FD8(0xC6);
        }
        func_8001A54C_1B14C(D_800A56F0);
        temp_v1_2 = menuEntries[D_800A4340];
        switch (temp_v1_2) {
            case 6:
                D_800E65A8 |= 0x100;
                return;
            case 0xE:
                if (D_800FCA90 == 0) {
                    D_800FCA90 = 1;
                    return;
                }
                D_800E65A8 |= 0x4100;
                func_80006DAC_79AC(0, 1);
                goto block_76;
            case 3:
                D_800E65B8 = 1;
                D_800E65A8 |= 0x2000;
                return;
            case 0xD:
                var_v0_3 = &D_800E65A8;
                D_800E65B8 = 1;
                var_t7 = D_800E65A8 | 0x80000;
                goto block_79;
            default:
                if (((D_80052B34->unk1A != 0) || (D_800A4340 != 3)) && (temp_v1_2 != 0xF) && (temp_v1_2 != 8)) {
                    D_80050AD4 = (s32) temp_v1_2;
                }
                D_800E65A8 &= ~2;
                D_800FCA92 -= 1;
                D_800FCF4C = D_800A4340;
                goto block_76;
        }
    } else {
block_76:
        if (D_800FCA92 < 0x21) {
            D_800A4340 = 4;
        }
        var_v0_3 = (s32 *) D_8005BB2C;
        var_t7 = 0xB9000002;
        D_8005BB2C = ((Gfx *) var_v0_3) + 1;
        ((Gfx *) var_v0_3)->words.w1 = 0;
block_79:
        ((Gfx *) var_v0_3)->words.w0 = var_t7;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008CF2C_174FEC.s")
#endif

#ifdef NON_MATCHING
void func_8008D900_1759C0(void) {
    s32 sp58_unk0;
    u16 sp58_unk4;
    s32 sp50_unk0;
    u16 sp50_unk4;
    s32 sp48_unk0;
    u16 sp48_unk4;
    Gfx *temp_v0;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;

    sp58_unk0 = D_800A4354.unk0;
    sp58_unk4 = D_800A4354.unk4;
    sp50_unk0 = D_800A435C.unk0;
    sp50_unk4 = D_800A435C.unk4;
    sp48_unk0 = D_800A4364.unk0;
    sp48_unk4 = D_800A4364.unk4;
    D_800A436C += 1;
    func_8001A130_1AD30(0x4A - D_800FCF26, D_80068088 - 0x50);
    if (isButtonNewlyPressed(0, 0x1000) == 0) {
        D_800FCA80 = 0;
        D_800FCA84 = 0;
    }
    if (func_80017B78_18778() == 1) {
        func_8008BAFC_173BBC();
    } else {
        if (D_80052B34->unk1A == 0) {
            if (gameplayMode == 0xA) {
                func_8008BB4C_173C0C();
            } else {
                func_8008BB5C_173C1C();
            }
        } else if (gameplayMode == 0xA) {
            func_8008BAFC_173BBC();
        } else {
            func_8008BB14_173BD4();
        }
        D_800A4370 = 0;
    }
    func_8001F2E0_1FEE0();
    temp_v0 = D_8005BB2C;
    D_8005BB2C = temp_v0 + 1;
    temp_v0->words.w0 = 0xB6000000;
    temp_v0->words.w1 = 0x23001;
    temp_v0_2 = D_8005BB2C;
    D_8005BB2C = temp_v0_2 + 1;
    temp_v0_2->words.w1 = 0xFFFF;
    temp_v0_2->words.w0 = 0xBC00000E;
    temp_v0_3 = D_8005BB2C;
    D_8005BB2C = temp_v0_3 + 1;
    temp_v0_3->words.w1 = (s32)(&D_800FCAD8) & 0x1FFFFFFF;
    temp_v0_3->words.w0 = 0x01030040;
    temp_v0_4 = D_8005BB2C;
    D_8005BB2C = temp_v0_4 + 1;
    temp_v0_4->words.w1 = 0;
    temp_v0_4->words.w0 = 0xE7000000;
    temp_v0_5 = D_8005BB2C;
    D_8005BB2C = temp_v0_5 + 1;
    temp_v0_5->words.w0 = 0xB900031D;
    temp_v0_5->words.w1 = 0x504240;
    func_8008C8A4_174964();
    if (D_800FCA92 >= 0x21) {
        func_8008CF2C_174FEC();
    } else {
        D_800FCA90 = 0;
    }
    if (isButtonNewlyPressed(0, 0x1000) != 0) {
        if (D_800FCA80 == 0) {
            if (D_800E65A8 == 1) {
                if (D_800FCA92 != 0xFF) {
                    D_800FCA92 = 0xFF;
                    D_800FCA90 = 0;
                    D_800FCA84 = 1;
                    D_800E65A8 |= 2;
                    func_800153D8_15FD8(0xC6);
                }
            }
        }
    }
    func_8001A828_1B428();
    temp_v0_6 = D_8005BB2C;
    D_8005BB2C = temp_v0_6 + 1;
    temp_v0_6->words.w1 = 0;
    temp_v0_6->words.w0 = 0xE7000000;
    temp_v0_7 = D_8005BB2C;
    D_8005BB2C = temp_v0_7 + 1;
    temp_v0_7->words.w1 = 0x80008000;
    temp_v0_7->words.w0 = 0xBB000000;
    temp_v0_8 = D_8005BB2C;
    D_8005BB2C = temp_v0_8 + 1;
    temp_v0_8->words.w0 = 0xFCFFFFFF;
    temp_v0_8->words.w1 = 0xFFFE793C;
    temp_v0_9 = D_8005BB2C;
    D_8005BB2C = temp_v0_9 + 1;
    temp_v0_9->words.w1 = 0;
    temp_v0_9->words.w0 = 0xBA000E02;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008D900_1759C0.s")
#endif

void func_8008DC44_175D04(s32 arg0) {
    switch (D_800313D0) {
    case 0:
        func_8001A598_1B198(D_800A26B0 + D_800A2EB0[arg0]);
        break;
    case 1:
        func_8001A598_1B198(D_800A2FB0 + D_800A37B0[arg0]);
        break;
    case 2:
        func_8001A598_1B198(D_800A38B0 + D_800A40B0[arg0]);
        break;
    }
}

void func_8008DCF4_175DB4(s32 arg0) {
    s32 temp_v1 = (currentLevel * 0xB) + arg0 + 0xA;
    switch (D_800313D0) {
    case 0:
        func_8001A598_1B198(D_800A26B0 + D_800A2EB0[temp_v1]);
        break;
    case 1:
        func_8001A598_1B198(D_800A2FB0 + D_800A37B0[temp_v1]);
        break;
    case 2:
        func_8001A598_1B198(D_800A38B0 + D_800A40B0[temp_v1]);
        break;
    }
}

s32 func_8008DDC0_175E80(void) {
    if (D_800FCF26 == 0) {
        return 1;
    }
    return 0;
}
