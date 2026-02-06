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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay_outside_7F220/func_80071E88_80E38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay_outside_7F220/func_80071F28_80ED8.s")

void func_800720B8_81068(void) {
    D_80052B34 = D_80052B2C->unk38;
    D_80149440 = D_80052B2C->unk34;
    func_80071228_801D8();
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay_outside_7F220/func_800720F4_810A4.s")
