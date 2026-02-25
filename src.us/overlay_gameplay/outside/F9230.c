#include <ultra64.h>
#include "common.h"


void func_800EA280_F9230(void) { D_80047948 = 0; D_80157E7C = 4; }

void func_800EA298_F9248(s16 arg0) {
    s16 temp = 0xC000 - arg0;
    D_80157A40 = temp;
}

void func_800EA2B0_F9260(s32 arg0) { D_801575DC = arg0; }

#ifdef NON_MATCHING
void func_800EA2BC_F926C(void) {
    if (D_80052B34->unk1A == 0) {
        func_800EB534_FA4E4(&D_80157600, 0x2F, 0, 0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA2BC_F926C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA2FC_F92AC.s")

void *func_800EA3E8_F9398(s16 arg0) {
    if (arg0 >= 0x6E) {
        return &D_801442E0;
    }
    return (char *)&D_8013E5AC + (arg0 * 0x34) + 0x20;
}

#ifdef NON_MATCHING
void func_800EA434_F93E4(void) {
    f32 temp_zero = 0.0f;

    D_8004818C = 0;
    D_80157600.unk404 = func_8000C6F4_D2F4();
    D_80157600.unk408 = func_8000C6F4_D2F4();
    D_80157600.unk410 = 1.0f;
    D_80157A34 = 0;
    func_8000C790_D390(&D_80157600, &D_8003BAE0, 0x10);
    temp_zero = 0.0f;
    D_80157600.unk40C = 0x27;
    func_800EB534_FA4E4(&D_80157600, 0x23, 7, 0);
    D_80157600.unk8 = temp_zero;
    D_80157600.unk10 = temp_zero;
    D_80157600.unkC = 145.0f;
    D_801575D0 = 0;
    D_80157A28 = 1;
    D_801575DC = (s32) D_80047948;
    D_80157A38 = 2;
    D_80157A3C = 0x40;
    D_80157A48.unk404 = func_8000C6F4_D2F4();
    D_80157A48.unk408 = func_8000C6F4_D2F4();
    D_80157A48.unk410 = 1.0f;
    func_8000C790_D390(&D_80157A48, &D_8003BAE0, 0x10);
    D_80157E70 = 0;
    D_80157A48.unk8 = temp_zero;
    D_80157A48.unk10 = temp_zero;
    D_80157A48.unk40C = 0x27;
    D_80157A48.unkC = 145.0f;
    func_800EB534_FA4E4(&D_80157A48, 0x23, 7, 0);
    D_801575E0.unk0 = 0;
    D_801575E0.unk2 = 0;
    D_801575E0.unk4 = 0;
    D_801575E0.unk6 = 0;
    D_801575E0.unk8 = 0;
    D_801575E0.unkA = 0;
    D_801575E0.unkC = 0;
    D_801575E0.unkE = 0;
    D_801575E0.unk10 = 0;
    D_801575E0.unk12 = 0;
    D_801575E0.unk14 = 0;
    D_801575E0.unk16 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA434_F93E4.s")
#endif

void func_800EA5B8_F9568(void) {
    func_8000C764_D364(D_80157A04);
    func_8000C764_D364(D_80157A08);
    func_8000C764_D364(D_80157E4C);
    func_8000C764_D364(D_80157E50);
    D_80048188 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA604_F95B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA7DC_F978C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA8F8_F98A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EABE0_F9B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EADF8_F9DA8.s")

void func_800EB05C_FA00C(void) {
    osSyncPrintf(&D_801442F0);
    D_80157A28 |= 4;
}

void func_800EB090_FA040(void) {
    osSyncPrintf(&D_80144308);
    D_80157A28 &= ~4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EB0C8_FA078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EB534_FA4E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EB7CC_FA77C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EB8A4_FA854.s")

s16 func_800EB9B4_FA964(void *arg0) {
    return ((s16 *)arg0)[0xD];
}

f32 func_800EB9BC_FA96C(void *arg0) {
    return ((f32 *)arg0)[0x7];
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EB9C4_FA974.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EBA54_FAA04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EBC94_FAC44.s")

void func_800EBD5C_FAD0C(s32 arg0) {
    D_80157A28 |= 0x1000;
    func_80001144_1D44(0x46, 0xA, 0xA);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EBD9C_FAD4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EBE74_FAE24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EC0D0_FB080.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EC330_FB2E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EC3A0_FB350.s")

void func_800EC450_FB400(void) { D_80157A28 |= 0x200; }

void func_800EC468_FB418(void) { D_80157A28 &= ~0x200; }

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EC484_FB434.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800ED55C_FC50C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800ED78C_FC73C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EF0B0_FE060.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EF14C_FE0FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EF650_FE600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EF9F0_FE9A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EFC28_FEBD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EFCC0_FEC70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EFE50_FEE00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EFEB4_FEE64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EFFB4_FEF64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F0094_FF044.s")

void func_800F0234_FF1E4(void) {
    D_80157F68 = 0;
    D_80157F8C = 0;
    D_80157F8E = 0;
    D_80157F70 = 0;
    D_80157F96 = 0;
    D_80047968 = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F026C_FF21C.s")

s32 func_800F02E4_FF294(void) {
    return 0;
}

#ifdef NON_MATCHING
void func_800F02EC_FF29C(s16 arg0) {
    s32 temp = (s32)arg0 * 24 + (s32)D_80157F58;
    D_80157F4C = (void *)temp;
    D_80157F50 = (void *)(temp + 0x18);
    D_80157F64 = *(s16 *)(temp + 0xC);
    D_80157F54 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F02EC_FF29C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F0340_FF2F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F066C_FF61C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F1004_FFFB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F1134_1000E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F1DDC_100D8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F2890_101840.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F2980_101930.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F2D48_101CF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F2ED8_101E88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F3038_101FE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F3190_102140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F32EC_10229C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F34AC_10245C.s")

void func_800F3580_102530(u8 arg0) {
    D_80158022[arg0 * 0x170] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F35AC_10255C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F3670_102620.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F375C_10270C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F384C_1027FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F3990_102940.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F3EE4_102E94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F4028_102FD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F41E0_103190.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F4258_103208.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F450C_1034BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F4748_1036F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F49A4_103954.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F4DB0_103D60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F54AC_10445C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F554C_1044FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F63D0_105380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F7790_106740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F842C_1073DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F8B24_107AD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F9118_1080C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F97FC_1087AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F98C0_108870.s")

s32 func_800F9C40_108BF0(s32 arg0) { return arg0 * arg0; }

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F9C50_108C00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F9CB0_108C60.s")

s16 func_800F9D24_108CD4(s16 arg0, s16 arg1) {
    return (s16)(func_800B84D0_C7480(arg0, arg1) >> 8);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F9D60_108D10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F9E0C_108DBC.s")

s16 func_800F9EC4_108E74(s16 arg0, s16 arg1) {
    return (s16)(func_800B85CC_C757C(arg0, arg1) >> 8);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F9F00_108EB0.s")

s16 func_800F9F64_108F14(s16 arg0, s16 arg1) {
    s16 sp26;
    s16 sp24;
    s16 sp22;
    func_800F9D60_108D10(arg0, arg1, &sp22, &sp26, &sp24);
    return sp24;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F9FAC_108F5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FA018_108FC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FA40C_1093BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FA690_109640.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FA7F0_1097A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FAA08_1099B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FAB9C_109B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FAC90_109C40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FAD10_109CC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FADF8_109DA8.s")

s16 func_800FAE60_109E10(Unk8004DCD0 *arg0) {
    return (s16)(arg0 - D_8004DCD0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FAE84_109E34.s")

f32 func_800FAF74_109F24(Unk80052B34 *arg0, Unk80052B34 *arg1) {
    f32 temp_f0 = arg0->unk4C - arg1->unk4C;
    f32 temp_f2 = arg0->unk54 - arg1->unk54;
    return sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FAFB8_109F68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FB014_109FC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FB098_10A048.s")

f32 func_800FB11C_10A0CC(Unk80052B34 *arg0) {
    f32 sp1C = func_800FB014_109FC4(arg0);
    f32 temp_f0 = func_800FB098_10A048(arg0);
    return sqrtf((sp1C * sp1C) + (temp_f0 * temp_f0));
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FB160_10A110.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FB238_10A1E8.s")

void func_800FB3A0_10A350(Unk80052B34 *arg0, f32 arg1) {
    arg0->unk58 = arg0->unk58 + arg1;
    arg0->unk12 = (s16)(s32)arg0->unk58;
}

void func_800FB3C4_10A374(Unk80052B34 *arg0, f32 arg1) {
    arg0->unk4C = arg0->unk4C + arg1;
    arg0->unk0 = (s16)(s32)arg0->unk4C;
}

void func_800FB3E8_10A398(Unk80052B34 *arg0, f32 arg1) {
    arg0->unk50 = arg0->unk50 + arg1;
    arg0->unk2 = (s16)(s32)arg0->unk50;
}

void func_800FB40C_10A3BC(Unk80052B34 *arg0, f32 arg1) {
    arg0->unk54 = arg0->unk54 + arg1;
    arg0->unk4 = (s16)(s32)arg0->unk54;
}

void func_800FB430_10A3E0(Unk80052B34 *arg0, f32 arg1) { arg0->unk58 = arg1; arg0->unk12 = (s16)(s32)arg1; }

void func_800FB44C_10A3FC(Unk80052B34 *arg0, f32 arg1) { arg0->unk4C = arg1; arg0->unk0 = (s16)(s32)arg1; }

void func_800FB468_10A418(Unk80052B34 *arg0, f32 arg1) { arg0->unk50 = arg1; arg0->unk2 = (s16)(s32)arg1; }

void func_800FB484_10A434(Unk80052B34 *arg0, f32 arg1) { arg0->unk54 = arg1; arg0->unk4 = (s16)(s32)arg1; }

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FB4A0_10A450.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FB504_10A4B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FC1CC_10B17C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FC434_10B3E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FC568_10B518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FC7E0_10B790.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FC90C_10B8BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FCA5C_10BA0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FD0EC_10C09C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FD168_10C118.s")

void func_800FD1E4_10C194(void) {
    if (D_80159310++ >= 0x10) {
        D_8015930E = 0;
        D_8015920C = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FD218_10C1C8.s")

void func_800FD2AC_10C25C(void) {
    if (D_80052B34->unk3C != 0 && D_8015920C == 0) {
        D_8015930E = 1;
        D_8015920C = (s32)func_800FD0EC_10C09C;
        D_80159310 = 0;
    }
}

void func_800FD2F8_10C2A8(void) {
    if (D_80052B34->unk3C != 0 && D_8015920C == 0) {
        D_8015930E = 1;
        D_8015920C = (s32)func_800FD0EC_10C09C;
        D_80159310 = 0;
    }
}

void func_800FD344_10C2F4(void) {
    if (D_80052B34->unk3C != 0 && D_8015920C == 0) {
        D_8015930E = 1;
        D_8015920C = (s32)func_800FD168_10C118;
        D_80159310 = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FD390_10C340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FD410_10C3C0.s")

void func_800FD4D4_10C484(void *arg0) {
    u8 temp_v0;
    temp_v0 = *(u8 *)((u8 *)arg0 + 0x58);
    if ((temp_v0 == 2) || (temp_v0 == 4) || (temp_v0 == 8)) {
        D_8015930C = 0;
        D_80159310 = 0;
        D_8015920C = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FD510_10C4C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FD858_10C808.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FDB00_10CAB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FDB58_10CB08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FDC30_10CBE0.s")

void func_800FDD48_10CCF8(s16 arg0) {
    s16 temp_v0 = func_800FADF8_109DA8(arg0);
    if (temp_v0 != -1) {
        func_800FDC30_10CBE0(temp_v0);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FDD8C_10CD3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FDE00_10CDB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FDEA8_10CE58.s")

void func_800FE910_10D8C0(s32 arg0) {
    func_800039D0_45D0((Unk80052B40 *)(D_8013FDA8 + arg0 * 0x10 + 8), 0, 0, D_8005BB38);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FE954_10D904.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FE9AC_10D95C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FEA2C_10D9DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FEAA0_10DA50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FEB04_10DAB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FEB5C_10DB0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FEC78_10DC28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FECD4_10DC84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FED60_10DD10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FEDBC_10DD6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF164_10E114.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF1C4_10E174.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF258_10E208.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF2BC_10E26C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF334_10E2E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF390_10E340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF5A8_10E558.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF604_10E5B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF664_10E614.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF6C0_10E670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF720_10E6D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF794_10E744.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF80C_10E7BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF88C_10E83C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF90C_10E8BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF984_10E934.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FFA00_10E9B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FFC3C_10EBEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FFCB8_10EC68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FFD28_10ECD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80100114_10F0C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801001B4_10F164.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801005CC_10F57C.s")

void func_80100638_10F5E8(u8 arg0, u8 arg1) {
    D_80159320 |= 0x800000;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010065C_10F60C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80101C14_110BC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80101EF4_110EA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801022F4_1112A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80102600_1115B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801027E8_111798.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80102A0C_1119BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80102D00_111CB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80102DDC_111D8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80102FA4_111F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80103308_1122B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80103760_112710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80103D18_112CC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80103DD0_112D80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80103E54_112E04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801047C8_113778.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80104E00_113DB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801052E8_114298.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80106628_1155D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80107184_116134.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801073FC_1163AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80107890_116840.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80107970_116920.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80107EBC_116E6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80108138_1170E8.s")

s16 func_801081AC_11715C(s16 arg0, s16 arg1) {
    s16 sp1E;
    return (s16) ((func_8011E6FC_12D6AC(arg0, arg1, &sp1E) + 1) != 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801081F0_1171A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010895C_11790C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80108B48_117AF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80108CA8_117C58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80108D80_117D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80109370_118320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801095BC_11856C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801098E8_118898.s")

#ifdef NON_MATCHING
Unk8004DCD0 *func_80109960_118910(void) {
    s32 i = 0x7F;
    Unk8004DCD0 *ptr = &D_80050A74;
    do {
        if (ptr->unk1A == 5) {
            return ptr;
        }
        ptr--;
    } while (i-- != 0);
    return NULL;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80109960_118910.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010999C_11894C.s")

void func_80109B34_118AE4(Unk80052B34 *arg0, f32 arg1, f32 arg2) {
    func_800FB430_10A3E0(arg0, 0.0f);
    arg0->unk30 = arg1;
    arg0->unk38 = arg2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80109B74_118B24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80109C84_118C34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010ADA4_119D54.s")

void func_8010B5C8_11A578(Unk80052B34 *arg0, f32 arg1) {
    func_800FB430_10A3E0(arg0, 0.0f);
    arg0->unk30 = 0.0f;
    arg0->unk34 = 0.0f;
    arg0->unk38 = 0.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010B60C_11A5BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010B804_11A7B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010B970_11A920.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010BA04_11A9B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010C14C_11B0FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010C454_11B404.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010C4EC_11B49C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010CA38_11B9E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010CF7C_11BF2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010D234_11C1E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010D4EC_11C49C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010DC00_11CBB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010E040_11CFF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010E480_11D430.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010E684_11D634.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010EA54_11DA04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010ED84_11DD34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010EF40_11DEF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010F218_11E1C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010F5D8_11E588.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010F72C_11E6DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010F834_11E7E4.s")

void func_8010F93C_11E8EC(Unk80052B40 *arg0, Unk80052B40 *arg1) {
    func_8010F834_11E7E4(arg0, arg1->unk0, arg1->unk2, arg1->unk4);
}

#ifdef NON_MATCHING
void func_8010F96C_11E91C(Unk80052B40 *arg0, Unk80052B40_fp *arg1) {
    Unk80052B40_fp *temp = arg1;
    s32 x = temp->unk4;
    s32 y = temp->unk8;
    s32 z = arg1->unk0;
    func_8010F834_11E7E4(arg0, z >> 16, x >> 16, y >> 16);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010F96C_11E91C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010F9B4_11E964.s")

void func_8010FABC_11EA6C(void) { D_80158FDC = 0; }

void func_8010FAC8_11EA78(u8 arg0, s32 arg1) {
    s32 idx = D_80158FDC;
    D_80158F98[idx].unk0 = arg0;
    D_80158FDC = idx + 1;
    D_80158F98[idx].unk4 = arg1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010FAFC_11EAAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010FF84_11EF34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80110144_11F0F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801103B4_11F364.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8011049C_11F44C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80110818_11F7C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80110FB4_11FF64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8011290C_1218BC.s")

s32 func_80112A64_121A14(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_t6;
    s32 temp_t7;

    temp_t6 = (s32)(arg0 - arg2) >> 2;
    temp_t7 = (s32)(arg1 - arg3) >> 2;
    return (temp_t6 * temp_t6) + (temp_t7 * temp_t7);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80112A98_121A48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80112F98_121F48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801131D4_122184.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80113248_1221F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80113310_1222C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80113808_1227B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80113CEC_122C9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80115604_1245B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80115730_1246E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80115824_1247D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8011592C_1248DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80115A74_124A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80115CC0_124C70.s")
