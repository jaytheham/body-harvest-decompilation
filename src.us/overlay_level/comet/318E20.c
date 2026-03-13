#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D4CD0_318E20.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D4EE4_319034.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D4F4C_31909C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D522C_31937C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D58BC_319A0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D59BC_319B0C.s")

void func_802D5BFC_319D4C(void) {
    s32 *counter = &D_802E7C3C;
    s32 val = D_802E7C3C - 1;

    *counter = val;
    if (val >= 0) {
        return;
    }
    func_80018D7C_1997C(0xE0);
    func_800074BC_80BC(func_802D5BFC_319D4C);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5C40_319D90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5C98_319DE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5CF0_319E40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5D48_319E98.s")

void func_802D5DA0_319EF0(void) {
    D_80047F9C = 5;
    D_802E7C3C = 0;
    func_80007410_8010(func_802D5BFC_319D4C);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5DD8_319F28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5F24_31A074.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D5F6C_31A0BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D60B8_31A208.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D6100_31A250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D624C_31A39C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D6294_31A3E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D63E0_31A530.s")

void func_802D6428_31A578(void) {
    func_800073B8_7FB8(0xA);
    func_800073B8_7FB8(0xB);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D6458_31A5A8.s")

void func_802D6558_31A6A8(void) {
    func_800073B8_7FB8(0xD);
}

void func_802D657C_31A6CC(void) {
    func_8011C080_12B030(0x86);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D659C_31A6EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802D6670_31A7C0.s")

void func_802D6770_31A8C0(void) {
    D_802E7C40 = 0;
    osSyncPrintf(D_802E7A7C);
    func_80007410_8010(func_802D6670_31A7C0);
}

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

void func_802D9100_31D250(u8 arg0) {
    func_8008735C_9630C(arg0);
}

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

void func_802DE7BC_32290C(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DE7C4_322914.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DF188_3232D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DF290_3233E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DF940_323A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DFE68_323FB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DFF04_324054.s")

s8 func_802DFF84_3240D4(u8 arg0) {
    return D_8014DD50[D_8014DD50[func_802DFF04_324054(arg0)].unkC].unkD;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802DFFC8_324118.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/comet/318E20/func_802E0018_324168.s")

s32 func_802E00D0_324220(s32 arg0, s32 arg1) {
    if ((arg0 < -0x2C00) || (arg0 >= -0x1EFF) || (arg1 < -0xD00) || (arg1 >= 0xE01)) {
        return 0;
    }
    return 1;
}

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
