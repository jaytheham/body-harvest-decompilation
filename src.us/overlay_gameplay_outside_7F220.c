#include <ultra64.h>
#include "common.h"


s32 func_80070270_7F220(s32 arg0) {
    if (arg0 != 7) {
        if (arg0 == 8) {
            func_800720F4_810A4();
            D_800476A2 = 1;
        }
    } else {
        func_800720F4_810A4();
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay_outside_7F220/func_800702C0_7F270.s")

s32 func_800703B0_7F360(s16 arg0, s16 arg1) {
    s32 var_v1;

    var_v1 = 
        arg0 >= (D_80149434 - 0x800) &&
        arg1 >= (D_80149436 - 0x900) &&
        (D_80149434 + 0x700) >= arg0 &&
        (D_80149436 + 0x700) >= arg1;
    return var_v1;
}

void func_80070420_7F3D0(UnkArg0* arg0) {
    func_8007679C_8574C(arg0->unk9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay_outside_7F220/func_80070440_7F3F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay_outside_7F220/func_80070BFC_7FBAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay_outside_7F220/func_80070CC0_7FC70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay_outside_7F220/func_80070FB8_7FF68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay_outside_7F220/func_800710D4_80084.s")

void func_80071148_800F8(u8 arg0, u8 arg1) {
    D_80149448 = 1;
    D_80149449 = arg0;
    D_8014944A = arg1;
    D_8014944B = arg1;
}

void func_80071178_80128(void) {
    if ((s32) D_80149449 > 0) {
        if ((s32) D_8014944A > 0) {
            if (D_80149448 == 1) {
                func_800710D4_80084(0xBE, 0xBE, 0xFF, &D_8014944A);
                D_8014944A -= 1;
                return;
            }
            D_8014944A -= 1;
            return;
        }
        if (D_80149448 == 1) {
            D_80149449 -= 1;
        }
        D_80149448 = 1 - D_80149448;
        D_8014944A = D_8014944B;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay_outside_7F220/func_80071228_801D8.s")

void func_80071E88_80E38(UnkArg1* arg0) {
    D_80149430 = (s16) arg0->unkC;
    D_80149432 = (s16) arg0->unk14;
    D_80149434 = arg0->unk3C;
    D_80149436 = arg0->unk3E;
    D_80047954 = (f32) arg0->unk0 * 0.25;
    D_80047958 = (f32) arg0->unk4 * 0.25;
    D_8004795C = (f32) arg0->unk8 * 0.25;
}

void func_80071F28_80ED8(void) {
    D_80052B34 = D_80052B2C->unk38;
    D_80149440 = D_80052B2C->unk34;
    func_80071228_801D8();
    func_801052E8_114298(D_80052B2C, &D_80047588);
    D_80149406 = -D_80149406;
    if (D_80149406 > 0) {
        D_80149406 -= (s16) D_80149406 >> 1;
        D_80149406 -= 1;
    }
    if (D_80149406 >= 0x12D) {
        D_80149406 = 0x12C;
    }
    func_800BDDCC_CCD7C();
    func_800074F4_80F4();
    func_800BD8B8_CC868();
    func_800E72A0_F6250();
    func_8012B26C_13A21C();
    func_80113CEC_122C9C();
    func_80112F98_121F48();
    if ((D_8004D148 != 0) && (D_80159260 == 0)) {
        func_800F4DB0_103D60();
        func_800AE6CC_BD67C();
        func_8007AAEC_89A9C();
    }
    func_800FB504_10A4B4();
    func_800A1924_B08D4();
    func_800A1A18_B09C8();
    func_8012E258_13D208();
    func_8011A604_1295B4();
    func_800A854C_B74FC();
    func_800A7C6C_B6C1C();
    if (currentLevel == LEVEL_COMET) {
        func_802D4CD0_18D7E0(0x12, 0);
    }
    func_80075AA4_84A54();
    func_800A68CC_B587C();
    func_8013B688_14A638();
    func_800BE5C0_CD570();
    func_800BED30_CDCE0();
    func_802D4CD0_18D7E0(0x45, 0);
}

void func_800720B8_81068(void) {
    D_80052B34 = D_80052B2C->unk38;
    D_80149440 = D_80052B2C->unk34;
    func_80071228_801D8();
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay_outside_7F220/func_800720F4_810A4.s")
