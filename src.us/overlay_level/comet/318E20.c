#include <ultra64.h>
#include "common.h"


#ifdef NON_MATCHING
void func_802D4CD0_318E20(s32 arg0, void *arg1) {
    if (arg0 < 0x14) {
        ((void (*)(s32))D_802E4E84[arg0])(arg0);
        return;
    }

    switch (arg0) {
    case 0x16:
        func_802DFE68_323FB8(arg1, arg0);
        return;
    case 0x15:
        osSyncPrintf(D_802E7A30);
        func_800EFEB4_FEE64((void *)&func_802D67A8_31A8F8, 0x24, 0);
        return;
    case 0x45:
        func_802D7548_31B698(arg1, arg0);
        return;
    case 0x44:
        func_80007690_8290();
        return;
    default:
        osSyncPrintf(D_802E7A40);
        return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D4CD0_318E20.s")
#endif

s16 func_802D4DA8_318EF8(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;

    temp_v0 = func_800D249C_E144C(arg0, arg1, arg2, (s16) (arg3 / 2), (s32) arg4, (s32) arg4, -0xB, 1);
    if (temp_v0 != -3) {
        func_800D25A4_E1554(temp_v0);
        temp_v0_2 = (arg4 / 3) * 2;
        temp_v0_3 = func_800D249C_E144C(arg0, arg1, arg2, arg3, (s32) temp_v0_2, (s32) temp_v0_2, -0xB, 2);
        if (temp_v0_3 != -3) {
            D_80154318[temp_v0].unk14 = temp_v0_3;
            D_80154318[temp_v0_3].unk14 = temp_v0;
        } else {
            func_800C1A4C_D09FC(temp_v0, 0xB, 1);
            return -3;
        }
    }
    return temp_v0;
}

void func_802D4EE4_319034(s16 arg0) {
    s16 sp1E;

    if (arg0 != -3) {
        sp1E = D_80154318[arg0].unk14;
        func_800C1E24_D0DD4(arg0, 0xB, 1);
        func_800C1E24_D0DD4(sp1E, 0xB, 1);
    }
}

#ifdef NON_MATCHING
void func_802D4F4C_31909C(void) {
    BuildingInstance *temp_t5;

    osSyncPrintf(&D_802E7A60);
    if (func_8000726C_7E6C(0x2D) == 0) {
        D_802E7C30 = func_802D4DA8_318EF8(-0x3BF6, (s16) (func_800B84D0_C7480(-0x3BF6, 0x3900) >> 8), 0x37F5, 0x7D0, 0x1F4);
    } else {
        D_802E7C30 = -1;
        func_8011C080_12B030(0xC3);
        func_8011C080_12B030(0xCB);
        func_8011C080_12B030(0xD0);
        func_8011C080_12B030(0xC9);
        func_8011C080_12B030(0xCA);
    }
    if (func_8000726C_7E6C(0x2E) == 0) {
        D_802E7C32 = func_802D4DA8_318EF8(0x1000, (s16) (func_800B84D0_C7480(0x1000, 0x3900) >> 8), 0x37F5, 0x7D0, 0x1F4);
    } else {
        D_802E7C32 = -1;
        func_8011C080_12B030(0xC4);
        func_8011C080_12B030(0xCE);
        func_8011C080_12B030(0xD1);
        func_8011C080_12B030(0xCC);
        func_8011C080_12B030(0xCD);
    }
    if (func_8000726C_7E6C(0x2F) == 0) {
        D_802E7C34 = func_802D4DA8_318EF8(-0x3BF6, (s16) (func_800B84D0_C7480(-0x3BF6, -0x3900) >> 8), -0x3BF6, 0x7D0, 0x1F4);
    } else {
        D_802E7C34 = -1;
        func_8011C080_12B030(0x43);
        func_8011C080_12B030(0x3F);
        func_8011C080_12B030(0x45);
        func_8011C080_12B030(0x4D);
        func_8011C080_12B030(0x44);
    }
    if (func_8000726C_7E6C(0x30) == 0) {
        D_802E7C36 = func_802D4DA8_318EF8(0x1000, (s16) (func_800B84D0_C7480(0x1000, -0x3900) >> 8), -0x3BF6, 0x7D0, 0x1F4);
    } else {
        D_802E7C36 = -1;
        func_8011C080_12B030(0x40);
        func_8011C080_12B030(0x47);
        func_8011C080_12B030(0x4E);
        func_8011C080_12B030(0x46);
        func_8011C080_12B030(0x48);
    }
    D_802E4E80 = 0;
    if (func_8000726C_7E6C(0x29) != 0) {
        func_8011C080_12B030(0xF6);
    }
    if (func_8000726C_7E6C(0x2A) != 0) {
        func_8011C080_12B030(0x65);
    }
    if (func_8000726C_7E6C(0x2B) != 0) {
        func_8011C080_12B030(0x5D);
    }
    if (func_8000726C_7E6C(0x2C) != 0) {
        func_8011C080_12B030(0xAF);
    }
    if (D_80047F98 != 0) {
        temp_t5 = &buildingInstances[func_80120634_12F5E4()];
        D_80157FA4 = temp_t5;
        temp_t5->yCoord = 0x7D00;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D4F4C_31909C.s")
#endif

#ifdef NON_MATCHING
void func_802D522C_31937C(s16 arg0) {
    Unk80052B40_fp *temp_fp;
    s16 spBE;
    s16 spB8;
    s16 spB4;
    s16 spB0;
    s16 var_s1;
    s16 var_s1_2;
    s16 var_s4;
    s16 var_s5;
    s32 sp90;
    s32 sp8C;
    s32 sp88;
    s32 sp84;
    s16 temp_a1;
    s16 temp_a3;
    s32 temp_v0;
    s32 var_s6;
    s8 temp_s2;
    u32 temp_hi;
    u32 temp_v1_2;
    f64 temp_f20;
    Gfx *temp_v1;
    Gfx *temp_v1_3;
    Gfx *temp_v1_4;
    Gfx *temp_v1_5;
    s32 temp_t3;
    s32 temp_t4;
    Vtx *temp_t5;

    temp_fp = &D_802E4ED8[arg0];
    D_80052B40.unk0 = temp_fp->unk0 / 4;
    D_80052B40.unk2 = temp_fp->unk4 / 4;
    D_80052B40.unk4 = temp_fp->unk8 / 4;
    D_80052B50.unk0 = 0x40;
    D_80052B50.unk2 = 0x40;
    D_80052B50.unk4 = 0x40;
    func_800039D0_45D0(&D_80052B40, &D_80052B50, &D_80052B50, D_8005BB38);
    temp_v1 = D_8005BB2C;
    D_8005BB2C = temp_v1 + 8;
    temp_v1->words.w0 = 0x01020040;
    temp_v1->words.w1 = (s32)(D_8005BB38 & 0x1FFFFFFF);
    temp_a3 = temp_fp->unk8;
    var_s4 = 0;
    D_8005BB38 += 0x40;
    var_s5 = 0;
    temp_a1 = temp_fp->unk4;
    if (temp_a3 == 0) {
        sp90 = -temp_a1 / 2;
        var_s5 = *(s16*)(&D_80052B40.unk2);
    } else {
        sp90 = -temp_a1 / 2;
        var_s4 = *(s16*)(&D_80052B40.unk2);
    }
    temp_hi = (u32)D_80052A8C % 10U;
    var_s6 = ((D_80052A8C * 0x9C4) & 0xFFFF);
    if (temp_hi == ((u32)D_80052A8C % 20U)) {
        spB4 = (s16)temp_hi;
    } else {
        spB4 = 0xA - temp_hi;
    }
    spBE = 0;
    temp_f20 = D_802E7B00;
    sp84 = temp_a1 / 4;
    spB8 = 0x64;
    spB0 = temp_a3;
    do {
        var_s1 = 0;
        sp8C = spB8 + spB4 + 0xA;
        sp88 = spB8 - spB4 - 0xA;
        do {
            temp_s2 = (u8)(s32)(temp_f20 - (((f64)(f32)sins(var_s6 & 0xFFFF) / 32768.0) * 100.0));
            temp_v1_2 = (u32)((((f64)(f32)coss(var_s6 & 0xFFFF) / 32768.0) * 100.0) + temp_f20);
            D_8005BB34->v.ob[0] = var_s4;
            var_s6 = (var_s6 + 0x7D0) & 0xFFFF;
            D_8005BB34->v.ob[1] = (s16)sp8C;
            D_8005BB34->v.ob[2] = var_s5;
            D_8005BB34->v.flag = 0;
            D_8005BB34->v.tc[0] = 0;
            D_8005BB34->v.tc[1] = 0;
            D_8005BB34->v.cn[0] = temp_s2;
            D_8005BB34->v.cn[1] = 0x28;
            D_8005BB34->v.cn[2] = (u8)temp_v1_2;
            D_8005BB34->v.cn[3] = 0x64;
            temp_t5 = D_8005BB34 + 1;
            D_8005BB34 = temp_t5;
            temp_t5->v.ob[0] = var_s4;
            temp_t5->v.ob[1] = (s16)sp88;
            temp_t5->v.ob[2] = var_s5;
            temp_t5->v.flag = 0;
            temp_t5->v.tc[0] = 0;
            temp_t5->v.tc[1] = 0;
            temp_t5->v.cn[0] = temp_s2;
            temp_t5->v.cn[1] = 0x28;
            temp_t5->v.cn[2] = (u8)temp_v1_2;
            temp_t5->v.cn[3] = 0x64;
            D_8005BB34 += 1;
            if (spB0 == 0) {
                var_s5 += sp84;
            } else {
                var_s4 += sp84;
            }
            if (((u32)D_80052A8C % (u32)((func_800038E0_44E0() % 40) + 0x1E)) == 0) {
                func_800C541C_D43CC(temp_fp->unk0 + var_s4, temp_fp->unk4 + spB8,
                    temp_fp->unk8 + var_s5, 0, 0x7F, 0, 0x28, 0xFF, 0x14, 0x14,
                    temp_s2, 0x28, temp_v1_2 & 0xFF);
            }
            var_s1 += 1;
        } while (var_s1 < 5);
        spB8 += 0x55;
        if (spB0 == 0) {
            var_s5 = *(s16*)(&D_80052B40.unk2);
        } else {
            var_s4 = *(s16*)(&D_80052B40.unk2);
        }
        temp_v1_3 = D_8005BB2C;
        D_8005BB2C = temp_v1_3 + 1;
        temp_v1_3->words.w0 = 0x0400289F;
        var_s6 = (var_s6 + 0x1D4C) & 0xFFFF;
        var_s1_2 = 0;
        temp_v1_3->words.w1 = (s32)(D_8005BB34 - 0xA0);
        do {
            temp_v1_4 = D_8005BB2C;
            temp_v0 = var_s1_2 * 2;
            temp_t3 = (temp_v0 + 2) & 0xFF;
            D_8005BB2C = temp_v1_4 + 1;
            temp_t4 = (temp_v0 + 4) & 0xFF;
            temp_v1_4->words.w1 = (s32)(((temp_v0 & 0xFF) << 0x10) | (temp_t3 << 8) | temp_t4);
            temp_v1_4->words.w0 = 0xBF000000;
            temp_v1_5 = D_8005BB2C;
            var_s1_2 += 2;
            D_8005BB2C = temp_v1_5 + 1;
            temp_v1_5->words.w1 = (s32)((temp_t3 << 0x10) | (temp_t4 << 8) | ((temp_v0 + 6) & 0xFF));
            temp_v1_5->words.w0 = 0xBF000000;
        } while (var_s1_2 < 8);
        spBE += 1;
    } while (spBE < 3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D522C_31937C.s")
#endif

#ifdef NON_MATCHING
void func_802D58BC_319A0C(void) {
    s16 i;
    Gfx *dl;

    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xE7000000;
    dl->words.w1 = 0;
    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xB6000000;
    dl->words.w1 = 0x2000;
    for (i = 0; i < 9; i++) {
        if (D_802E4ED8[i].unkA == 1) {
            if (func_800B960C_C85BC(D_802E4ED8[i].unk0, D_802E4ED8[i].unk4, 0x190, 0x190) != 0) {
                func_802D522C_31937C(i);
            }
        }
    }
    dl = D_8005BB2C;
    D_8005BB2C = dl + 1;
    dl->words.w0 = 0xB7000000;
    dl->words.w1 = 0x2000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D58BC_319A0C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D59BC_319B0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5BFC_319D4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5C40_319D90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5C98_319DE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5CF0_319E40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5D48_319E98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5DA0_319EF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5DD8_319F28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5F24_31A074.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5F6C_31A0BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D60B8_31A208.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D6100_31A250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D624C_31A39C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D6294_31A3E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D63E0_31A530.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D6428_31A578.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D6458_31A5A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D6558_31A6A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D657C_31A6CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D659C_31A6EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D6670_31A7C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D6770_31A8C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D67A8_31A8F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D7548_31B698.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D76B0_31B800.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D7B4C_31BC9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D7C1C_31BD6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D7E7C_31BFCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D7F10_31C060.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D897C_31CACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D89F0_31CB40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D8B18_31CC68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D9100_31D250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D9128_31D278.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D92A8_31D3F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D93D8_31D528.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D95F8_31D748.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D9658_31D7A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D997C_31DACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D9ECC_31E01C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D9F60_31E0B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DA6A4_31E7F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DA6D4_31E824.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DA9C0_31EB10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DAC0C_31ED5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DAD78_31EEC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DB1D4_31F324.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DB9FC_31FB4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DBD18_31FE68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DBDD0_31FF20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DBEA4_31FFF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DBF88_3200D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DC2A4_3203F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DC2D4_320424.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DC874_3209C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DC8F4_320A44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DD554_3216A4.s")

void func_802DD748_321898(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DD750_3218A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DDB08_321C58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DDC44_321D94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DDFFC_32214C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DE0F4_322244.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DE7BC_32290C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DE7C4_322914.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DF188_3232D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DF290_3233E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DF940_323A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DFE68_323FB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DFF04_324054.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DFF84_3240D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DFFC8_324118.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E0018_324168.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E00D0_324220.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E0104_324254.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E015C_3242AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E0234_324384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E0588_3246D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E0B64_324CB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1274_3253C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1324_325474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E13D4_325524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E14F4_325644.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1630_325780.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E16A8_3257F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E193C_325A8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E19EC_325B3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1AE4_325C34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1C34_325D84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1CC0_325E10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1EFC_32604C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E1FE0_326130.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E205C_3261AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E21C4_326314.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E22A4_3263F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E2390_3264E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E2B78_326CC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E33B0_327500.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3550_3276A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3584_3276D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3744_327894.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E37D4_327924.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3808_327958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E38A4_3279F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E38D8_327A28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3A18_327B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3A4C_327B9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3E30_327F80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E3E64_327FB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4214_328364.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E43FC_32854C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E46B8_328808.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4774_3288C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4918_328A68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4ACC_328C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E4CB4_328E04.s")
