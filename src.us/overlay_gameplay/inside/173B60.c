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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008CF2C_174FEC.s")

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
