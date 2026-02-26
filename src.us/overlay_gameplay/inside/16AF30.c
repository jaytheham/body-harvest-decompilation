#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80082E70_16AF30.s")

void func_80082F04_16AFC4(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
    arg2->x = arg0->y * arg1->z - arg0->z * arg1->y;
    arg2->y = arg0->z * arg1->x - arg0->x * arg1->z;
    arg2->z = arg0->x * arg1->y - arg0->y * arg1->x;
}

void func_80082F74_16B034(f32 arg0, Vec3f *arg1, Vec3f *arg2) {
    arg2->x = arg1->x / arg0;
    arg2->y = arg1->y / arg0;
    arg2->z = arg1->z / arg0;
}

f32 func_80082F9C_16B05C(Vec3f *arg0) {
    return (arg0->x * arg0->x) + (arg0->y * arg0->y) + (arg0->z * arg0->z);
}

f32 func_80082FC4_16B084(Vec3f *arg0) {
    f32 var_f12;

    var_f12 = func_80082F9C_16B05C(arg0);
    if ((f64) var_f12 != 0.0) {
        var_f12 = sqrtf(var_f12);
    }
    return var_f12;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083014_16B0D4.s")

f32 func_80083090_16B150(Vec3f *arg0, Vec3f *arg1) {
    return (arg0->x * arg1->x) + (arg0->y * arg1->y) + (arg0->z * arg1->z);
}

void func_800830C0_16B180(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
    arg2->x = arg0->x - arg1->x;
    arg2->y = arg0->y - arg1->y;
    arg2->z = arg0->z - arg1->z;
}

void func_800830F4_16B1B4(f32 arg0, Vec3f *arg1, Vec3f *arg2) {
    arg2->x = arg1->x * arg0;
    arg2->y = arg1->y * arg0;
    arg2->z = arg1->z * arg0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008311C_16B1DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083224_16B2E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083300_16B3C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083390_16B450.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800834CC_16B58C.s")

s16 func_80083584_16B644(u8 arg0) {
    s16 sp1E;

    sp1E = func_80083390_16B450(arg0);
    if (sp1E != -3) {
        if (func_80083390_16B450(arg0) == -3) {
            func_800835F0_16B6B0(sp1E, arg0);
            sp1E = -3;
        }
    }
    return sp1E;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800835F0_16B6B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083814_16B8D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083924_16B9E4.s")

#ifdef NON_MATCHING
void func_800839B8_16BA78(s32 arg0) {
    s32 temp_s1;
    UnkFB6F8Entry *temp_s0;

    temp_s1 = arg0 & 0xFF;
    temp_s0 = &D_800FB6F8 + temp_s1;
    if ((s32) temp_s0->unk4 > 0) {
        do {
            func_800835F0_16B6B0(temp_s0->unk6, temp_s1);
        } while ((s32) temp_s0->unk4 > 0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800839B8_16BA78.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083A20_16BAE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083F08_16BFC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800840F0_16C1B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084258_16C318.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084628_16C6E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084980_16CA40.s")

s32 func_80084C18_16CCD8(u8 arg0) {
    s32 temp_v0;
    s32 result;

    temp_v0 = func_80083224_16B2E4(1);
    result = temp_v0 & 0xFF;
    if (temp_v0 != 0xFB) {
        *(s16 *)(&D_800FB6FA + (temp_v0 * 0xC)) = arg0;
    }
    return result;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084C68_16CD28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084EEC_16CFAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008506C_16D12C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800852B8_16D378.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008568C_16D74C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008574C_16D80C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800858F4_16D9B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80085984_16DA44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80085CB4_16DD74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80085D40_16DE00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80085F28_16DFE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086550_16E610.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086728_16E7E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008688C_16E94C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086A34_16EAF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086B34_16EBF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086D88_16EE48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086E90_16EF50.s")

void func_80086F24_16EFE4(s16 arg0) {
    if (arg0 != -3) {
        func_80083924_16B9E4(arg0, 0xD);
    }
}

void func_80086F58_16F018(s16 arg0) {
    if (arg0 != -3) {
        func_80086F24_16EFE4(*(s16 *)(&D_800FB7BE + arg0 * 0x16));
        func_800835F0_16B6B0(arg0, 0xC);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086FC4_16F084.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80087A40_16FB00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80087CB8_16FD78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80087E3C_16FEFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800881C0_170280.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80088654_170714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80088B9C_170C5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80088DFC_170EBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089148_171208.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089408_1714C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089648_171708.s")

void func_8008972C_1717EC(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
    s16 temp_v0;
    s8 *temp_v1;

    temp_v0 = *(s16 *)(&D_800FB6FE + (arg3 * 0xC));
    temp_v1 = (s8 *)&D_800FB7B0 + temp_v0 * 0x16;
    *(s16 *)(temp_v1 + 0x8) = arg0 * 4;
    *(s16 *)(temp_v1 + 0xA) = arg1 * 4;
    *(s16 *)(temp_v1 + 0xC) = arg2 * 4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089794_171854.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089834_1718F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089BCC_171C8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089E54_171F14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008A1D8_172298.s")

#ifdef NON_MATCHING
void func_8008A59C_17265C(void) {
    UnkFC8E8Entry *ptr = &D_800FC8E8;
    s32 var_v0 = 0;

    do {
        ptr[var_v0].unkA = 0;
        var_v0 = (var_v0 + 1) & 0xFF;
    } while (var_v0 < 0x14);
    D_800FCA78 = 0;
    D_800FCA79 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008A59C_17265C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008A5E4_1726A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008A704_1727C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008AD40_172E00.s")

void func_8008AF08_172FC8(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
    if (arg0 != 0xFF) {
        (&D_800FC8E8)[arg0].unk6 = arg1;
        (&D_800FC8E8)[arg0].unk7 = arg2;
        (&D_800FC8E8)[arg0].unk8 = arg3;
    }
}

#ifdef NON_MATCHING
void func_8008AF5C_17301C(s32 arg0, s32 arg1) {
    s32 temp_t6;
    s32 temp_t7;

    temp_t6 = arg0 & 0xFF;
    temp_t7 = arg1 & 0xFF;
    if (temp_t6 != 0xFF) {
        *(&D_800FC8F5 + (temp_t6 * 0x14)) = temp_t7;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008AF5C_17301C.s")
#endif

#ifdef NON_MATCHING
void func_8008AF94_173054(s32 arg0, s8 arg1) {
    s32 temp_t6 = arg0 & 0xFF;

    if (temp_t6 != 0xFF) {
        *(&D_800FC8FA + (temp_t6 * 0x14)) = arg1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008AF94_173054.s")
#endif

void func_8008AFD0_173090(u8 arg0, s8 arg1, s8 arg2) {
    if (arg0 != 0xFF) {
        (&D_800FC8E8)[arg0].unk10 = arg1;
        (&D_800FC8E8)[arg0].unk11 = arg2;
    }
}

#if NON_MATCHING
void func_8008B020_1730E0(s32 arg0, s32 arg1) {
    s32 temp_t6;
    s32 temp_t7;

    temp_t6 = arg0 & 0xFF;
    temp_t7 = arg1 & 0xFF;
    if (temp_t6 != 0xFF) {
        *(&D_800FC8F7 + (temp_t6 * 0x14)) = temp_t7;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008B020_1730E0.s")
#endif

void func_8008B058_173118(u8 arg0) {
    (&D_800FC8E8)[arg0].unkA = 0;
    if (arg0 < D_800FCA79) {
        D_800FCA79 = arg0;
    }
    D_800FCA78--;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008B0AC_17316C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008B1A8_173268.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008B474_173534.s")

void func_8008B53C_1735FC(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4) {
    D_800A26A0 = 1;
    D_800FCA7A = arg0 * 4;
    D_800FCA7C = arg1 * 4;
    D_800FCA7E = arg2 * 4;
    D_800FB6A0 = arg3;
    D_800FB6A2 = arg4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008B594_173654.s")
