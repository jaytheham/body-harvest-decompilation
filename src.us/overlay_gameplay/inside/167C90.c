#include <ultra64.h>
#include "common.h"


#ifdef NON_MATCHING
void func_8007FBD0_167C90(void) {
    D_800E747C = 0;
    D_800E73AC = 1;
    D_800E73B0 = 1.0f;
    D_800E73D4 = 0;
    D_800E7398 = 0;
    D_800E73DE = D_800E73DF = 1;
    D_80047F80 = 0;
    func_800808D0_168990();
    D_800E742C = 0;
    D_800E7480 = 0;
    D_800E7390 = 0;
    D_800E739C = 0;
    D_800E73A4 = 0;
    D_800E73A0 = 0;
    D_800E73A8 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_8007FBD0_167C90.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_8007FC74_167D34.s")

void func_80080168_168228(u16 arg0, u16 arg1, u16 arg2) {
    D_800E73D8 = arg0;
    D_800E73DA = arg1;
    D_800E73DC = arg2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80080190_168250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_800804E0_1685A0.s")

void func_800806F8_1687B8(void) {
    f32 temp_f0;

    temp_f0 = D_800E6A78.unk4C - 96.0f;
    D_8008DDF4 = temp_f0 - 96.0f;
    D_8008DDF8 = 75.0f;
    D_8008DDFC = (D_800E6A78.unk54 + 48.0f) - 96.0f;
    D_800E659C = temp_f0;
    D_800E65A0 = 50.0f;
    D_800E65A4 = D_800E6A78.unk54 - 96.0f;
}

void func_80080770_168830(void) {
    D_800E659C = D_800E6A78.unk4C - 96.0f;
    D_800E65A0 = 50.0f;
    D_800E65A4 = D_800E6A78.unk54 - 96.0f;
    D_8008DDF4 = (f32) (((f64) D_800E6A78.unk4C - (((f64) (f32) coss((u16) (D_800E6A78.unkE + 0x2000)) / 32768.0) * D_800A4F28)) - 96.0);
    D_8008DDF8 = 75.0f;
    D_8008DDFC = (f32) (((f64) D_800E6A78.unk54 - (((f64) (f32) sins((u16) (D_800E6A78.unkE + 0x2000)) / 32768.0) * D_800A4F30)) - 96.0);
}

void func_800808AC_16896C(void) { D_800E73DF = 2; }

void func_800808BC_16897C(void) { D_800E73DF = D_80047F80; }

void func_800808D0_168990(void) {
    D_800E73E0 = 0xC000 - D_800E6A86;
    D_800E73E8 = 144.0f;
    D_800E73E4 = 0xB60;
    D_800E73E4 = func_80003680_4280(D_800A0980 / D_800E73E8);
    D_800E73F0.x = D_800E6A78.unk4C - 96.0f;
    D_800E73F0.y = 40.0f;
    D_800E73F0.z = D_800E6A78.unk54 - 96.0f;
    osSyncPrintf(&D_800A4DC0, &D_800E73F0, (f64) D_800E6A78.unk4C);
    D_800E7400.x = 0.0f;
    D_800E7400.y = 0.0f;
    D_800E7400.z = 0.0f;
    if (D_800A0964 != 0) {
        D_800A0964 = 0;
        func_80080190_168250(&D_800E7410, &D_800E73F0, D_800E73E0, D_800E73E4, D_800E73E8);
        D_800A0964 = 1;
    } else {
        func_80080190_168250(&D_800E7410, &D_800E73F0, D_800E73E0, D_800E73E4, D_800E73E8);
    }
    D_800E6A74 = 0x4000 - D_800E73E0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80080A38_168AF8.s")

s32 func_80080DA8_168E68(s32 arg0, s32 arg1) {
    s32 v1;

    if (arg0 < 0) arg0 += 0x10000;
    if (arg1 < 0) arg1 += 0x10000;
    if (arg0 >= 0x8000) arg0 += 0xFFFF0000;
    if (arg1 >= 0x8000) arg1 += 0xFFFF0000;
    v1 = arg1 - arg0;
    while (v1 < -0x8000) v1 += 0x10000;
    while (v1 >= 0x8000) v1 += 0xFFFF0000;
    return v1;
}

#ifdef NON_MATCHING
void func_80080E28_168EE8(void) {
    s16 sp1E;
    s32 delta;
    s32 var_v1;

    D_800E7486 = 1;
    if (D_800A0964 == 0 && currentControllerStates[0].stick_x == 0 && currentControllerStates[0].stick_y == 0) {
        sp1E = 0x4000 - D_800E6A86;
        D_800E7486 = func_800813B4_169474(D_800E73E0, sp1E, *(s32 *) &D_800E73E8);
        if (D_800E7486 & 0xFF) {
            delta = func_80080DA8_168E68(sp1E, D_800E73E0);
            if (delta < 0) {
                var_v1 = -delta;
            } else {
                var_v1 = delta;
            }
            if (D_800A4F38 < (f64) var_v1) {
                if (D_800E7486 == 1) {
                    if (delta < 0) {
                        var_v1 = -delta;
                    } else {
                        var_v1 = delta;
                    }
                    sp1E = (s16) (s32) ((f64) var_v1 / 24.0 + (f64) D_800E73E0);
                } else {
                    if (delta < 0) {
                        var_v1 = -delta;
                    } else {
                        var_v1 = delta;
                    }
                    sp1E = (s16) (s32) ((f64) D_800E73E0 - (f64) var_v1 / 24.0);
                }
            }
            D_800E73E0 = sp1E;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80080E28_168EE8.s")
#endif

#ifdef NON_MATCHING
s16 func_80080FD8_169098(void) {
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    s32 sp28[8];
    s32 sp24;

    if ((currentControllerStates[0].stick_x == 0 && currentControllerStates[0].stick_y == 0 &&
         D_800E7480 == 0 && D_800E7486 != 0 && (s16) (0x4000 - D_800E6A86) == D_800E73E0) ||
        D_800E73E8 < 100.0f) {
        sp84 = D_800E73F0.x - D_800E7410.x;
        sp7C = D_800E73F0.z - D_800E7410.z;
        sp78 = sqrtf((sp84 * sp84) + ((D_800E73F0.y - D_800E7410.y) * (D_800E73F0.y - D_800E7410.y)) + (sp7C * sp7C));
        sp24 = (u16) func_80003824_4424(sp7C, sp84);
        if (sp78 < 192.0f) {
            sp68 = (f32) ((f64) D_800E7410.x - (f64) (f32) sins(sp24) / 32768.0);
            sp70 = (f32) ((f64) D_800E7410.z - (f64) (f32) coss(sp24) / 32768.0);
            sp48 = D_800E6A78.unk4C;
            sp54 = (sp68 + 96.0f) - D_800E6A78.unk4C;
            sp50 = D_800E6A78.unk54;
            sp5C = (sp70 + 96.0f) - D_800E6A78.unk54;
            func_8007B65C_16371C((Vec3f *) &sp48, (Vec3f *) &sp54, 10.0f, (Unk8007CAA8_6A40 *) sp28);
            if (sp28[7] == 0) {
                D_800E7410.x = sp68;
                D_800E7410.z = sp70;
            }
        }
    }
    return (s16) (0x4000 - D_800E6A86);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80080FD8_169098.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_800811DC_16929C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_800813B4_169474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80081764_169824.s")

void func_80081A18_169AD8(s32 arg0) {
    D_800E7488 = (Unk169EC8Entry *) arg0;
}

void func_80081A24_169AE4(void) {
    D_800E73DF = 6;
    D_800E7430 = D_800E73F0;
    D_800E744C = D_800E73E0;
    D_800E744E = D_800E73E4;
    D_800E7450 = (s16) D_800E73E8;
    D_800E7474 = 1.0f;
}

void func_80081AA8_169B68(void) {
    D_800E73DF = D_80047F80;
    D_800E73F0 = D_800E7430;
    D_800E73E0 = D_800E744C;
    D_800E73E4 = D_800E744E;
    D_800E73E8 = (f32) D_800E7450;
    func_80080190_168250(&D_800E7410, &D_800E73F0, D_800E73E0, D_800E73E4, D_800E73E8);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80081B58_169C18.s")

void func_80081E08_169EC8(s16 arg0) {
    Unk169EC8Entry *entry = &D_800E7488[arg0];

    D_800E73F0.x = entry->unk0;
    D_800E73F0.y = entry->unk4;
    D_800E73F0.z = entry->unk8;
    D_800E73E0 = (s16) entry->unkC;
    D_800E73E4 = entry->unk10;
    D_800E73E8 = (f32) entry->unk12;
    D_800E7474 = 1.0f;
}

void func_80081E90_169F50(s16 arg0, s16 arg1, s16 arg2) {
    Unk169EC8Entry *v0;
    Unk169EC8Entry *a3;

    D_800E7474 = 0.0f;
    v0 = &D_800E7488[arg0];
    a3 = &D_800E7488[arg1];
    D_800E7478 = (f32) (1.0 / (f64) (f32) arg2);
    D_800E73C8.x = v0->unk0;
    D_800E73C8.y = v0->unk4;
    D_800E73C8.z = v0->unk8;
    D_800E746C = v0->unkC;
    D_800E7470 = v0->unk10;
    D_800E7472 = v0->unk12;
    D_800E7458.x = a3->unk0;
    D_800E7458.y = a3->unk4;
    D_800E7458.z = a3->unk8;
    D_800E7464 = a3->unkC;
    D_800E7468 = a3->unk10;
    D_800E746A = a3->unk12;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80081F98_16A058.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_8008247C_16A53C.s")

void func_80082AA0_16AB60(void) {
    func_80017AAC_186AC();
    D_80034460 = &D_800E7490;
    D_80034468 = (s32) &D_800EAD90;
    D_80034470 = (s32) &D_800EAE98;
    D_8006C550 = &D_800EAC90;
    D_80052AD8 = 0;
}

void func_80082B04_16ABC4(void) {
    D_80034460 = &D_800E7490;
    D_80034468 = (s32) &D_800EAD90;
    D_80034470 = (s32) &D_800EAE98;
    D_8006C550 = &D_800EAC90;
    D_80034484 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/167C90/func_80082B50_16AC10.s")
