#include <ultra64.h>
#include "common.h"

extern void func_800E2720_F16D0(s32);
extern s32 func_800DF9C8_EE978(s16, s16, s16, s32, u8, s32);
extern void func_80123E90_132E40(VehicleInstance *, s32);
extern u8 D_802D48D0;
extern u8 D_802D4AD0;
extern VehicleInstance D_8004DFB0;
extern s16 D_8004EE88;
extern u8 D_802E04A0;
extern s32 D_80256DEC;
extern char D_802E0D6C[];
extern char D_802E0D84[];
extern char D_802E0DA8[];
extern s16 D_801591C4;
extern f64 D_802E0EA8;
extern s32 D_502D390;
extern s16 D_802E0DC0;
extern s16 D_802E0DE8;
extern s16 D_802E0E04;
extern s16 D_802E0FB0;
extern char D_802E0E10[];
extern char D_802E0E18[];
extern char D_802E0E24[];
extern char D_802E0E30[];
extern char D_802E0E3C[];
extern void func_800AD554_BC504(s32, s32, s32);
extern s16 D_802E0FB2;
extern s16 D_802E0FB4;
extern s16 D_802E0FB6;
extern s32 D_80222A70;
extern void func_800E0F4C_EFEFC(s16, s16, s16, s16);
s32 func_802D57F4_1EE504(void);
extern void func_802D5590_1EE2A0(void);
extern void func_80135D08_144CB8(f32, s16, s16, s16);

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D4CD0_1ED9E0.s")

s16 func_802D4DB0_1EDAC0(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    s16 temp_v0;
    Unk80154318Entry *temp_v1;

    temp_v0 = func_800C17B4_D0764(0xD, 1);
    if (temp_v0 != -3) {
        temp_v1 = &D_80154318[temp_v0];
        temp_v1->unk2 = arg3;
        temp_v1->unk8 = arg0;
        temp_v1->unkA = arg1;
        temp_v1->unkC = arg2;
    }
    return temp_v0;
}

void func_802D4E34_1EDB44(s16 arg0) {
    if (arg0 != -3) {
        func_800C1A4C_D09FC(arg0, 0xD, 1);
    }
}

#ifdef NON_MATCHING
void func_802D4E6C_1EDB7C(void) {
    s16 var_v1;
    s32 temp_v0;
    u16 temp_t9;
    u32 temp_v1;
    func_800FB468_10A418(&D_8004DFB0, 675.0f);
    *((u16 *) (((u8 *) vehicleInstances) + 0x300)) = (u16) ((*((u16 *) (((u8 *) vehicleInstances) + 0x300))) | 3);
    if (func_8000726C_7E6C((u64) 0x1E) != 0)
    {
 do { func_800E2720_F16D0(0); var_v1 = 0; do { temp_v0 = var_v1 * 2; ; var_v1 += 1; *((u16 *) ((&D_802D4AD0) + temp_v0)) = *((u16 *) ((&D_802D48D0) + temp_v0)); } while (var_v1 < 0x100); } while (0);
    }
    else
    {
        func_802D4CD0_1ED9E0(0xC, 0);
    }
    temp_v1 = (*((u32 *) (((u8 *) buildingInstances) + 0x398))) >> 0xC;
    *((u32 *) (((u8 *) buildingInstances) + 0x398)) = (u32) ((((temp_v1 | 0x10000) ^ temp_v1) << 0xC) ^ (*((u32 *) (((u8 *) buildingInstances) + 0x398))));
    if (func_8000726C_7E6C((u64) 0x11) != 0)
    {
        func_8011C080_12B030(0x31);
        func_8011C080_12B030(0x32);
    }
    *((u16 *) (((u8 *) vehicleInstances) + 0x14F8)) = (u16) ((*((u16 *) (((u8 *) vehicleInstances) + 0x14F8))) | 0x80);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D4E6C_1EDB7C.s")
#endif

void func_802D4F70_1EDC80(s32 arg0) {
    func_800072CC_7ECC((u64)0x2C);
}

#ifdef NON_MATCHING
void func_802D4F98_1EDCA8(void) {
    s32 temp_v0;
    AlienInstance *alien_ptr;
    u8 alien_id;
    Unk80222A78 callback_struct;
    s16 position;

    temp_v0 = (D_802E04A0 = func_8007956C_8851C(0x12));
    if (0xFF != (temp_v0 & 0xFF)) {
        D_80256DEC = 0x6F;
        D_80157E7C = 2;
        func_8011E6FC_12D6AC(-0x5954, -0x2258, &position);
        alien_ptr = &alienInstances[D_802E04A0];
        (&alienInstances[D_802E04A0])->unk0 = -0x5954;
        (&alienInstances[D_802E04A0])->unk4 = -0x2258;
        (&alienInstances[D_802E04A0])->unk2 = (s16) (position + 0xA);
        (&alienInstances[D_802E04A0])->unk24 = 4;
        alien_ptr->unk1B = 3;
        callback_struct.unk0 = 3;
        alien_id = D_802E04A0;
        callback_struct.unk8 = alien_id;
        callback_struct.unkC = (void (*)(void *)) func_802D4F70_1EDC80;
        func_800AE454_BD404(&callback_struct);
        return;
    }
    osSyncPrintf(D_802E0D6C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D4F98_1EDCA8.s")
#endif

void func_802D507C_1EDD8C(s32 arg0) {
    osSyncPrintf(D_802E0D84);
    func_800073B8_7FB8(0xBLL);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D50B0_1EDDC0.s")

void func_802D513C_1EDE4C(s32 arg0) {
    osSyncPrintf(&D_802E0DA8);
    func_800072CC_7ECC(0xC);
}

#ifdef NON_MATCHING
void func_802D5170_1EDE80(void) {
    u8 alien_id;
    s32 new_var;
    s32 new_var2;
    Unk80222A78 callback_struct;

    alien_id = (new_var = func_8007956C_8851C(0x24));
    new_var = new_var & 0xFF;
    if (alien_id != 0xFF) {
        alienInstances[alien_id].unk0 = (new_var2 = -0x14D8);
        alienInstances[alien_id].unk4 = 0x2900;
        alienInstances[alien_id].unk1B = 0;
        callback_struct.unk0 = 3;
        callback_struct.unk8 = alien_id;
        callback_struct.unkC = func_802D513C_1EDE4C;
        func_800AE454_BD404(&callback_struct);
    }
    func_800073B8_7FB8(0xCLL);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5170_1EDE80.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D51F8_1EDF08.s")

extern s16 D_802E0FB0;

void func_802D5508_1EE218(void);

#ifdef NON_MATCHING
void func_802D5508_1EE218(void) {
    D_802E0FB0 -= 1;
    if (D_802E0FB0 <= 0) {
        func_80013468_14068(6);
        func_800EFEB4_FEE64(&func_802D51F8_1EDF08, 0xC, 0);
        func_800074BC_80BC(func_802D5508_1EE218);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5508_1EE218.s")
#endif

void func_802D5560_1EE270(void) {
    D_802E0FB0 = 0x1E;
    func_80007410_8010(&func_802D5508_1EE218);
}

#ifdef NON_MATCHING
void func_802D5590_1EE2A0(void) {
    f64 temp_f20;
    s16 temp_s6;
    s16 temp_v0;
    s16 var_s1;
    s16 var_v0;
    s16 var_v0_2;

    temp_v0 = D_802E0FB0;
    if (temp_v0 == -1) {
        func_800076D4_82D4(8);
        func_80018D7C_1997C(0xDC);
    }
    D_802E0FB0 = temp_v0 + 1;
    if (D_802E0FB0 == 0xA) {
        func_80123E90_132E40(&D_8004F990, 2);
        D_802E0FB0 = 0;
    }
    if (vehicleInstances[80].unk1C <= 0) {
        func_800074BC_80BC(func_802D5590_1EE2A0);
        func_800AE190_BD140(D_801591C4);
        temp_s6 = (s16) func_800DF9C8_EE978(vehicleInstances[80].unk0, (s16) (vehicleInstances[80].unk2 + 0xA), vehicleInstances[80].unk4, 0xC8, 0, 0);
        var_s1 = 0;
        if (D_801591C4 >= 9) {
            var_v0 = 8;
        } else {
            var_v0 = D_801591C4;
        }
        if (var_v0 > 0) {
            temp_f20 = D_802E0EA8;
            do {
                if (var_s1 < 4) {
                    func_801371B8_146168(0, 0x185, vehicleInstances[80].unk0, vehicleInstances[80].unk2, (s32) vehicleInstances[80].unk4, (f32) (((f64) (f32) (func_800038E0_44E0() % 100) / temp_f20) + 1.625));
                }
                func_800C7924_D68D4(vehicleInstances[80].unk0, (s16) (vehicleInstances[80].unk2 + 0xA), vehicleInstances[80].unk4, 0x10, (s32) temp_s6, vehicleSpecs[vehicleInstances[80].unk1A].unk36 * 2, &D_502D390, 1);
                var_s1 += 1;
                if (D_801591C4 >= 9) {
                    var_v0_2 = 8;
                } else {
                    var_v0_2 = D_801591C4;
                }
            } while (var_s1 < var_v0_2);
        }
        D_801591C4 = 0;
        func_800076D4_82D4(9);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5590_1EE2A0.s")
#endif

#ifdef NON_MATCHING
s32 func_802D57F4_1EE504(void) {
    s16 temp_v0;
    s16 temp_v0_2;
    u32 temp_a0;
    u32 temp_a0_2;

    switch (D_80157F8C) {
    case 0:
        temp_a0 = (u32) buildingInstances[0].unk398 >> 0xC;
        buildingInstances[0].unk398 = (u32) ((((temp_a0 | 0x10000) ^ temp_a0) << 0xC) ^ buildingInstances[0].unk398);
        D_802E056C = 0;
        temp_v0 = D_80157F8E;
        if (temp_v0 == 1) {
            osSyncPrintf(&D_802E0DC0);
            func_8011D438_12C3E8(0xC, 0);
        }
        D_80157F8E = temp_v0 + 1;
        if (temp_v0 >= 0x15) {
            D_80157F8E = 0;
            D_80157F8C += 1;
        }
        /* fall through */
    default:
        D_802E056C += 1;
        return 0;

    case 1:
        temp_v0_2 = D_80157F8E;
        alienSpecs[0].unkBC = (s32) (alienSpecs[0].unkBC & ~2);
        if (temp_v0_2 == 5) {
            osSyncPrintf(&D_802E0DE8);
            temp_a0_2 = (u32) buildingInstances[0].unk398 >> 0xC;
            buildingInstances[0].unk398 = (u32) ((((temp_a0_2 | 0x20) ^ temp_a0_2) << 0xC) ^ buildingInstances[0].unk398);
            buildingInstances[0].unk39E = 0x50;
        }
        D_80157F8E = temp_v0_2 + 1;
        if (buildingInstances[0].unk397 == 0) {
            D_80157F8E = 0;
            D_80157F8C += 1;
        }
        D_802E056C += 1;
        return 0;

    case 2:
        if (D_802E056C == 0xB4) {
            func_800C0D1C_CFCCC(-0x50, 0x50, 0);
        }
        if ((D_802E056C == 0x91) || (D_802E056C == 0xC8)) {
            func_80014A3C_1563C(0, 0xDB, 800.0f, 0, -1.0f);
        }
        D_80157F8E += 1;
        if (D_80157F8E >= 0x191) {
            D_80157F8E = 0;
            D_80157F8C += 1;
        }
        D_802E056C += 1;
        return 0;

    case 3:
        alienSpecs[0].unkBC = (s32) (alienSpecs[0].unkBC | 2);
        osSyncPrintf(&D_802E0E04);
        D_802E0FB0 = 0;
        func_80007410_8010(&func_802D5590_1EE2A0);
        D_802E0FB0 = -0x32;
        return 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D57F4_1EE504.s")
#endif

void func_802D5A78_1EE788(void) {
    osSyncPrintf(&D_802E0E10);
    D_801591C4 = 0;
    D_802E0FB2 = 0;
    D_802E0FB4 = 0xA;
    D_802E0FB0 = 0;
    func_80013468_14068(8);
    func_800EFEB4_FEE64(&func_802D57F4_1EE504, 0xE, 0);
}

void func_802D5ADC_1EE7EC(void) {
    s16 sp1E;
    s16 sp1C;

    sp1E = *(s16 *)(((u8 *) vehicleInstances) + 0x1CC0);
    sp1C = *(s16 *)(((u8 *) vehicleInstances) + 0x1CC4);
    D_802E0FB0 += 1;
    osSyncPrintf(&D_802E0E18);
    if (D_802E0FB0 == 3) {
        D_802E0FB0 = 0;
        if (D_801591C4 != 0) {
            osSyncPrintf(&D_802E0E24);
            func_800AD554_BC504(sp1E + 0x64, sp1C + 0x64, 0x33);
            D_801591C4 -= 1;
            return;
        }
        func_800074BC_80BC((void *) func_802D5ADC_1EE7EC);
    }
}

void func_802D5BA0_1EE8B0(void) {
    osSyncPrintf(&D_802E0E30);
    D_802E0FB0 = 0;
    osSyncPrintf(&D_802E0E3C);
    func_800074BC_80BC(&func_802D5590_1EE2A0);
    func_80007410_8010(&func_802D5ADC_1EE7EC);
    func_800076D4_82D4(9);
}

#ifdef NON_MATCHING
void func_802D5BF8_1EE908(void) {
    if (currentLevel == 2) {
        func_802D4DB0_1EDAC0(0x2CB7, (s16) (func_800B84D0_C7480(0x2CB7, -0x42FA) >> 8), -0x42FA, 0x8C);
        func_802D4DB0_1EDAC0(0x25C3, (s16) (func_800B84D0_C7480(0x25C3, -0x40E6) >> 8), -0x40E6, 0x64);
        func_802D4DB0_1EDAC0(0x2751, (s16) (func_800B84D0_C7480(0x2751, -0x4D1F) >> 8), -0x4D1F, 0xAA);
        func_802D4DB0_1EDAC0(0x2779, (s16) (func_800B84D0_C7480(0x2779, -0x307D) >> 8), -0x307D, 0x5A);
        func_802D4DB0_1EDAC0(0x2EAA, (s16) (func_800B84D0_C7480(0x2EA7, -0x4E6E) >> 8), -0x4E6E, 0x64);
    }
    func_80135D08_144CB8(1.0f, 1, 0x3C, 1);
    func_800DF038_EDFE8(0x2CB7, (s16) ((func_800B84D0_C7480(0x2CB7, -0x42FA) >> 8) + 0x32), -0x42FA, 0x1F4, 0, 0);
    func_800DF038_EDFE8(0x2751, (s16) ((func_800B84D0_C7480(0x2751, -0x4D1F) >> 8) + 0x32), -0x4D1F, 0x1F4, 0, 0);
    func_800DF038_EDFE8(0x25C3, (s16) ((func_800B84D0_C7480(0x25C3, -0x40E6) >> 8) + 0x1E), -0x40E6, 0x12C, 0, 0);
    func_800DF038_EDFE8(0x2EAA, (s16) ((func_800B84D0_C7480(0x2EA7, -0x4E6E) >> 8) + 0x1E), -0x4E6E, 0x12C, 0, 0);
    func_800072CC_7ECC((u64)0x15);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5BF8_1EE908.s")
#endif

void func_802D5DE4_1EEAF4(void) {
    vehicleInstances[79].unk20 = (u16) (vehicleInstances[79].unk20 & 0xFBFF);
}

#ifdef NON_MATCHING
void func_802D5DFC_1EEB0C(AlienInstance *arg0) {
    s16 v0;
    s16 v1;
    s32 result;

    v0 = (s8) *((u8 *)arg0 + 1);
    v1 = (s8) *((u8 *)arg0 + 2);
    v0 = (v0 << 8) + 0x80;
    v1 = (v1 << 8) + 0x80;
    result = func_800B84D0_C7480(v0, v1) >> 8;
    func_80124B5C_133B0C(arg0->unk2A, (s16)result, *(s16 *)(&arg0->unk26), 0x3E8, 0x96);
    func_800DF038_EDFE8(arg0->unk2A, arg0->unk32, *(s16 *)(&arg0->unk26), 0xC8, 0, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5DFC_1EEB0C.s")
#endif

#ifdef NON_MATCHING
void func_802D5E98_1EEBA8(void) {
    s32 v0;
    s32 v0_2;
    s32 v0_3;
    s32 v0_4;
    s32 a0;
    s32 v1;
    s32 v1_2;
    s32 v1_3;

    /* Calculate absolute difference between vehicleInstances[x].unk119C and buildingInstances[y].unkDC8 */
    v0 = vehicleInstances[0].unk119C - buildingInstances[0].unkDC8;
    v1 = -v0;
    if (v0 >= 0) {
        v1 = v0;
    }
    if (v1 < 0x500) {
        /* Calculate absolute difference between vehicleInstances[x].unk11A0 and buildingInstances[y].unkDCC */
        v0_2 = vehicleInstances[0].unk11A0 - buildingInstances[0].unkDCC;
        v1_2 = -v0_2;
        if (v0_2 >= 0) {
            v1_2 = v0_2;
        }
        if (v1_2 >= 0x500) {
            goto block_6;
        }
        goto block_12;
    }
block_6:
    /* Load active vehicle instance and check position difference */
    v0_3 = D_80052B34->unk0 - buildingInstances[0].unkDC8;
    a0 = -v0_3;
    if (v0_3 >= 0) {
        a0 = v0_3;
    }
    if (a0 < 0xC8) {
        v0_4 = D_80052B34->unk4 - buildingInstances[0].unkDCC;
        v1_3 = -v0_4;
        if (v0_4 >= 0) {
            v1_3 = v0_4;
        }
        if (v1_3 < 0x15E) {
block_12:
            func_800072CC_7ECC(0xDu);
        } else {
            goto block_13;
        }
    } else {
block_13:
        func_800073B8_7FB8(0xDu);
    }
    if (D_8004EE88 > 0) {
        func_800074BC_80BC(func_802D5E98_1EEBA8);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5E98_1EEBA8.s")
#endif

#ifdef NON_MATCHING
void func_802D5F98_1EECA8(void) {
    func_80007410_8010(&func_802D5E98_1EEBA8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5F98_1EECA8.s")
#endif

void func_802D5FBC_1EECCC(void) {
    func_800EFEB4_FEE64(0, 0xF, 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5FE4_1EECF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D60DC_1EEDEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6104_1EEE14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6128_1EEE38.s")

void func_802D614C_1EEE5C(void)
{
  s16 temp_v0;
  temp_v0 = D_802E0FB6;
  if (temp_v0 > 0)
  {
    D_802E0FB6 = temp_v0 - 1;
    temp_v0 = D_802E0FB6;
  }
  if (temp_v0 == 0)
  {
    func_8011C080_12B030(0x32);
    func_8011C080_12B030(0x31);
    func_800E0F4C_EFEFC(*((s16 *) (((u8 *) buildingInstances) + 0x498)), (s16) (D_80222A70 + 0x64), *((s16 *) (((u8 *) buildingInstances) + 0x49C)), 0x19);
    func_800074BC_80BC((void *) func_802D614C_1EEE5C);
    func_800DF038_EDFE8(*((s16 *) (((u8 *) buildingInstances) + 0x498)), (s16) (D_80222A70 + 0x96), *((s16 *) (((u8 *) buildingInstances) + 0x49C)), 0x12C, 8, 0);
    func_800DF038_EDFE8(*((s16 *) (((u8 *) buildingInstances) + 0x4B0)), (s16) (D_80222A70 + 0x96), *((s16 *) (((u8 *) buildingInstances) + 0x4B4)), 0x12C, 0x10, 0);
    temp_v0 = D_802E0FB6;
  }
  if ((temp_v0 % 5) == 0)
  {
    func_800E0F4C_EFEFC((s16) (((*((s16 *) (((u8 *) buildingInstances) + 0x4B0))) - (temp_v0 * 0x32)) + 0x3E8), (s16) (D_80222A70 + 0x96), *((s16 *) (((u8 *) buildingInstances) + 0x4B4)), 0x19);
  }
}

#ifdef NON_MATCHING
void func_802D62A0_1EEFB0(void)
{
  s16 v0;
  s16 v1;
  v0 = D_802E0FB6;
  if (!v0)
  {
  }
  if ((v0 < 0x1E) && ((((u32) D_80052A8C) % 5) == 0))
  {
    D_802E0FB6 = v0 + 1;
    v0 = D_802E0FB6;
  }
  v1 = buildingInstances[50].xCoord;
  v1 = (s16) (v1 - v0);
  buildingInstances[50].xCoord = v1;
  v1 = buildingInstances[50].xCoord;
  if (v1 < (-0x5207))
  {
    D_802E0FB6 = 0x28;
    func_800074BC_80BC(func_802D62A0_1EEFB0);
    func_80007410_8010(&func_802D614C_1EEE5C);
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D62A0_1EEFB0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6338_1EF048.s")

void func_802D6338_1EF048(void);

void func_802D6840_1EF550(void) {
    D_802E0FB6 = 0;
    func_80013468_14068(7);
    func_800EFEB4_FEE64(&func_802D6338_1EF048, 0xD, 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D687C_1EF58C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D68F4_1EF604.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6DBC_1EFACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6DF8_1EFB08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6E70_1EFB80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D7938_1F0648.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D795C_1F066C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D7980_1F0690.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D7B68_1F0878.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D7EAC_1F0BBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D7FCC_1F0CDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D8578_1F1288.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D872C_1F143C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D8830_1F1540.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D89C4_1F16D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D8D14_1F1A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D8D68_1F1A78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D91F8_1F1F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D9CB8_1F29C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DA18C_1F2E9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DA210_1F2F20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DA548_1F3258.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DA844_1F3554.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DAF5C_1F3C6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DAFD0_1F3CE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DB14C_1F3E5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DB428_1F4138.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DB468_1F4178.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DB7A4_1F44B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBB58_1F4868.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBBE4_1F48F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBCB0_1F49C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBDDC_1F4AEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBF34_1F4C44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DC230_1F4F40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DC4A8_1F51B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DC738_1F5448.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DCA54_1F5764.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DCDD4_1F5AE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DCE34_1F5B44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DD140_1F5E50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DD244_1F5F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DD294_1F5FA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DD5A0_1F62B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DD5CC_1F62DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DD8E8_1F65F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DDA64_1F6774.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DDE04_1F6B14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DE0C8_1F6DD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DE594_1F72A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DE9B8_1F76C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DEE18_1F7B28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DEE4C_1F7B5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DEF70_1F7C80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DEFC0_1F7CD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF1F8_1F7F08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF3C0_1F80D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF69C_1F83AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF788_1F8498.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF7BC_1F84CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF8A8_1F85B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF8DC_1F85EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF99C_1F86AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFB94_1F88A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFC28_1F8938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFCA8_1F89B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFD80_1F8A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFF90_1F8CA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802E01A0_1F8EB0.s")
