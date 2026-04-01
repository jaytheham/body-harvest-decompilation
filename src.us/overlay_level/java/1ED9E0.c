#include <ultra64.h>
#include "common.h"

#ifdef NON_MATCHING
void func_802D4CD0_1ED9E0(s32 arg0, void *arg1) {
	if (arg0 < 0x14) {
		((void (*)(s32))D_802E04A4[arg0])(arg0);
		return;
	}

	switch (arg0) {
	case 0x14:
		func_802D6DF8_1EFB08();
		func_800EFEB4_FEE64((void *)&func_800F1134_1000E4, 9, 0);
		break;
	case 0x15:
		func_800EFEB4_FEE64((void *)&func_800F1DDC_100D8C, 8, 1);
		break;
	case 0x45:
		func_802D7980_1F0690();
		break;
	case 0x44:
		func_80007690_8290();
		break;
	default:
		osSyncPrintf(&D_802E0D50, arg0);
		break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D4CD0_1ED9E0.s")
#endif

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
	vehicleInstances[8].unk20 = (u16) (vehicleInstances[8].unk20 | 3);
	if (func_8000726C_7E6C((u64) 0x1E) != 0) {
		func_800E2720_F16D0(0);
		var_v1 = 0;
		do {
			temp_v0 = var_v1 * 2;
			temp_t9 = ((u16 *)&D_802D48D0)[var_v1];
			var_v1 += 1;
			((u16 *)&D_802D4AD0)[var_v1] = temp_t9;
		} while (var_v1 < 0x100);
	} else {
		func_802D4CD0_1ED9E0(0xC, 0);
	}
	temp_v1 = buildingInstances[38].unk8 >> 0xC;
	buildingInstances[38].unk8 = (u32) ((((temp_v1 | 0x10000) ^ temp_v1) << 0xC) ^ buildingInstances[38].unk8);
	if (func_8000726C_7E6C((u64) 0x11) != 0) {
		func_8011C080_12B030(0x31);
		func_8011C080_12B030(0x32);
	}
	vehicleInstances[58].unk20 = (u16) (vehicleInstances[58].unk20 | 0x80);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D4E6C_1EDB7C.s")
#endif

void func_802D4F70_1EDC80(s32 arg0) {
	func_800072CC_7ECC((u64)0x2C);
}

void func_802D4F98_1EDCA8(void) {
	Unk80222A78 callback_struct;
	s16 position;

	D_802E04A0_1F91B0 = func_8007956C_8851C(0x12);
	if (D_802E04A0_1F91B0 != 0xFF) {
		D_80256DEC = 0x6F;
		D_80157E7C = 2;
		func_8011E6FC_12D6AC(-0x5954, -0x2258, &position);
		(&alienInstances[D_802E04A0_1F91B0])->unk0 = -0x5954;
		(&alienInstances[D_802E04A0_1F91B0])->unk4 = -0x2258;
		(&alienInstances[D_802E04A0_1F91B0])->unk2 = (s16) (position + 0xA);
		(&alienInstances[D_802E04A0_1F91B0])->unk24 = 4;
		(&alienInstances[D_802E04A0_1F91B0])->unk1B = 3;
		callback_struct.unk0 = 3;
		callback_struct.unk8 = D_802E04A0_1F91B0;
		callback_struct.unkC = (void (*)(void *)) func_802D4F70_1EDC80;
		func_800AE454_BD404(&callback_struct);
		return;
	}
	osSyncPrintf(D_802E0D6C_1F9A7C);
}

void func_802D507C_1EDD8C(s32 arg0) {
	osSyncPrintf(D_802E0D84_1F9A94);
	func_800073B8_7FB8(0xBLL);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D50B0_1EDDC0.s")

void func_802D513C_1EDE4C(s32 arg0) {
	osSyncPrintf(&D_802E0DA8_1F9AB8);
	func_800072CC_7ECC(0xC);
}

void func_802D5170_1EDE80(void) {
	u8 alien_id;
	Unk80222A78 callback_struct;

	alien_id = func_8007956C_8851C(0x24);
	if (alien_id != 0xFF) {
		alienInstances[alien_id].unk0 = -0x14D8;
		alienInstances[alien_id].unk4 = 0x2900;
		alienInstances[alien_id].unk1B = 0;
		callback_struct.unk0 = 3;
		callback_struct.unk8 = alien_id;
		callback_struct.unkC = func_802D513C_1EDE4C;
		func_800AE454_BD404(&callback_struct);
	}
	func_800073B8_7FB8(0xCLL);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D51F8_1EDF08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5508_1EE218.s")

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
		temp_a0 = (u32) buildingInstances[38].unk8 >> 0xC;
		buildingInstances[38].unk8 = (u32) ((((temp_a0 | 0x10000) ^ temp_a0) << 0xC) ^ buildingInstances[38].unk8);
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
			temp_a0_2 = (u32) buildingInstances[38].unk8 >> 0xC;
			buildingInstances[38].unk8 = (u32) ((((temp_a0_2 | 0x20) ^ temp_a0_2) << 0xC) ^ buildingInstances[38].unk8);
			buildingInstances[38].padC[2] = 0x50;
		}
		D_80157F8E = temp_v0_2 + 1;
		if (buildingInstances[38].unk7 == 0) {
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
	osSyncPrintf(&D_802E0E10_1F9B20);
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

	sp1E = vehicleInstances[80].unk0;
	sp1C = vehicleInstances[80].unk4;
	D_802E0FB0 += 1;
	osSyncPrintf(&D_802E0E18_1F9B28);
	if (D_802E0FB0 == 3) {
		D_802E0FB0 = 0;
		if (D_801591C4 != 0) {
			osSyncPrintf(&D_802E0E24_1F9B34);
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
	osSyncPrintf(&D_802E0E3C_1F9B4C);
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5DFC_1EEB0C.s")

void func_802D5E98_1EEBA8(void);

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

	v0 = vehicleInstances[49].unk0 - buildingInstances[147].xCoord;
	v1 = -v0;
	if (v0 >= 0) {
		v1 = v0;
	}
	if (v1 < 0x500) {
		v0_2 = vehicleInstances[49].unk4 - buildingInstances[147].zCoord;
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
	v0_3 = D_80052B34->unk0 - buildingInstances[147].xCoord;
	a0 = -v0_3;
	if (v0_3 >= 0) {
		a0 = v0_3;
	}
	if (a0 < 0xC8) {
		v0_4 = D_80052B34->unk4 - buildingInstances[147].zCoord;
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

void func_802D5F98_1EECA8(void) {
	func_80007410_8010(&func_802D5E98_1EEBA8);
}

void func_802D5FBC_1EECCC(void) {
	func_800EFEB4_FEE64(0, 0xF, 0);
}

#ifdef NON_MATCHING
void func_802D5FE4_1EECF4(void) {
	s8 *var_s0;
	s8 *var_s3;
	s32 var_s2;
	f64 temp_f20;
	f64 temp_f22;
	s32 temp_v0;

	var_s0 = &D_802E0570;
	var_s3 = &D_802E0580;
	var_s2 = 0xFF;
	temp_f20 = D_802E0EB0;
	temp_f22 = 0.0;

	do {
		s16 coord_x = (s16) ((s32) ((f64) (var_s0[0] << 8) * temp_f20) + buildingInstances[34].xCoord);
		s16 coord_y = (s16) ((s32) ((f64) (var_s0[1] << 8) * temp_f22) + buildingInstances[34].zCoord);
		temp_v0 = func_80092A50_A1A00(coord_x, coord_y, -1);
		if ((temp_v0 & 0xFF) != var_s2) {
			func_80080B44_8FAF4(temp_v0 & 0xFF, 0x22);
		}
		var_s0 += 2;
	} while (var_s0 != var_s3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D5FE4_1EECF4.s")
#endif

void func_802D60DC_1EEDEC(void) {
    func_802D5FE4_1EECF4();
}

static void func_802D60FC_stub(void) {
}

void func_802D6104_1EEE14(void) {
    func_80007410_8010((void *)func_802D60FC_stub);
}

void func_802D6128_1EEE38(void) {
    func_800074BC_80BC((void *)func_802D60FC_stub);
}

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
	func_800E0F4C_EFEFC(buildingInstances[49].xCoord, (s16) (D_80222A70 + 0x64), buildingInstances[49].zCoord, 0x19);
	func_800074BC_80BC((void *) func_802D614C_1EEE5C);
	func_800DF038_EDFE8(buildingInstances[49].xCoord, (s16) (D_80222A70 + 0x96), buildingInstances[49].zCoord, 0x12C, 8, 0);
	func_800DF038_EDFE8(buildingInstances[50].xCoord, (s16) (D_80222A70 + 0x96), buildingInstances[50].zCoord, 0x12C, 0x10, 0);
	temp_v0 = D_802E0FB6;
  }
  if ((temp_v0 % 5) == 0)
  {
	func_800E0F4C_EFEFC((s16) (((buildingInstances[50].xCoord) - (temp_v0 * 0x32)) + 0x3E8), (s16) (D_80222A70 + 0x96), buildingInstances[50].zCoord, 0x19);
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

#ifdef NON_MATCHING
/* State machine for java zone building display sequence
 * D_80157F8C: current state (0-6)
 * D_80157F8E: frame counter within state
 * After cases 0-5, calls building position display funcs if state < 4
 * NOTE: C body matches ROM only when compiled with NON_MATCHING=1 flag.
 * IDO produces different code without that flag — do not strip this wrapper. */
s32 func_802D6338_1EF048(void) {
	s16 temp_s1;

	switch (D_80157F8C) {
	case 0:
		/* Increment building fall speed every 5 frames; apply to building offset */
		if (((u32) D_80052A8C % 5U) == 0) {
			D_802E0FB6 += 2;
		}
		buildingInstances[50].xCoord = (s16) (buildingInstances[50].xCoord - D_802E0FB6);
		D_80157F8E += 1;
		if (D_80157F8E >= 0x29) {
			D_80157F8C += 1;
			D_80157F8E = 0;
		}
		break;
	case 1:
		/* Continue building descent for longer phase */
		buildingInstances[50].xCoord = (s16) (buildingInstances[50].xCoord - D_802E0FB6);
		D_80157F8E += 1;
		if (D_80157F8E >= 0x97) {
			D_80157F8C += 1;
			D_80157F8E = 0;
		}
		break;
	case 2:
		/* Snap building to fixed position */
		buildingInstances[50].xCoord = (s16) -0x4B00;
		D_80157F8E += 1;
		if (D_80157F8E >= 2) {
			D_80157F8C += 1;
			D_80157F8E = 0;
		}
		break;
	case 3:
		/* Continue descent; at frame 0x62 trigger display callback */
		buildingInstances[50].xCoord = (s16) (buildingInstances[50].xCoord - D_802E0FB6);
		if (D_80157F8E == 0x62) {
			func_800DF038_EDFE8((s16) (buildingInstances[49].xCoord + 0x64), (s16) (D_80222A70 + 0x96), buildingInstances[49].zCoord, 0x12C, 8, 0);
		}
		D_80157F8E += 1;
		if (D_80157F8E >= 0x83) {
			D_80157F8C += 1;
			D_80157F8E = 0;
		}
		break;
	case 4:
		/* Announce state progress; at frame 1 trigger building sequence; every 5 frames update offsets */
		osSyncPrintf(&D_802E0E50, D_80157F8E);
		if (D_802E04A0_1F91B0 != 0xFF) {
			func_80087AAC_96A5C(D_802E04A0_1F91B0);
		}
		if (D_80157F8E == 1) {
			func_80124B5C_133B0C((s16) -0x59A1, 0x2FF, (s16) -0x22CC, 0x2710, 0x3E8);
			func_800E0F4C_EFEFC(buildingInstances[49].xCoord, (s16) (D_80222A70 + 0x64), buildingInstances[49].zCoord, 0x19);
			func_800DF038_EDFE8(buildingInstances[49].xCoord, (s16) (D_80222A70 + 0x96), buildingInstances[49].zCoord, 0x12C, 8, 0);
			func_800DF038_EDFE8(buildingInstances[50].xCoord, (s16) (D_80222A70 + 0x96), buildingInstances[50].zCoord, 0x12C, 0x10, 0);
		}
		if ((D_80157F8E % 5) == 0) {
			func_800E0F4C_EFEFC((s16) (buildingInstances[50].xCoord - (D_80157F8E * 0x32) + 0x3E8), (s16) (D_80222A70 + 0x96), buildingInstances[50].zCoord, 0x19);
		}
		D_80157F8E += 1;
		if (D_80157F8E >= 0x29) {
			D_80157F8E = 0;
			D_80157F8C += 1;
		}
		break;
	case 5:
		/* Announce; at frame 1 trigger display callbacks; at frame 0x1E trigger second callback */
		osSyncPrintf(&D_802E0E58, D_80157F8E);
		if (D_80157F8E == 1) {
			func_8011C080_12B030(0x32);
			func_800DF038_EDFE8(buildingInstances[49].xCoord, (s16) (D_80222A70 + 0x96), buildingInstances[49].zCoord, 0x12C, 8, 0);
			func_800DF038_EDFE8(buildingInstances[50].xCoord, (s16) (D_80222A70 + 0x96), buildingInstances[50].zCoord, 0x12C, 0x10, 0);
		}
		if (D_80157F8E == 0x1E) {
			func_8011C080_12B030(0x31);
		}
		D_80157F8E += 1;
		if (D_80157F8E >= 0x29) {
			D_80157F8E = 0;
			D_80157F8C += 1;
		}
		break;
	case 6:
		return 1;
	default:
		break;
	}

	/* Tail: display building position while in early states */
	if (D_80157F8C < 4) {
		temp_s1 = func_80136ECC_145E7C(buildingInstances[50].xCoord, buildingInstances[50].yCoord, buildingInstances[50].zCoord);
		func_80014A3C_1563C(0, 0xB3, (f32) ((s16) func_80136DC0_145D70(buildingInstances[50].xCoord, buildingInstances[50].yCoord, buildingInstances[50].zCoord) / 5), temp_s1, -1.0f);
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6338_1EF048.s")
#endif

void func_802D6840_1EF550(void) {
	D_802E0FB6 = 0;
	func_80013468_14068(7);
	func_800EFEB4_FEE64(&func_802D6338_1EF048, 0xD, 0);
}

s32 func_802D687C_1EF58C(s32 arg0, s32 arg1, s16 arg2, s16 arg3) {
	return (s32) (((arg3 - arg2) * arg0) + (arg1 * arg2)) / arg3;
}

#ifdef NON_MATCHING
s32 func_802D68F4_1EF604(void) {
	s16 s0, s0_2, t1, t6, v1, v1_2, s1, s5;
	s32 s0_4, s0_5, s1_val, s1_2, s1_3, s2;
	u16 *s0_3;
	u16 t0, v0, v0_2;

	switch (D_80157F8C) {
	case 0:
		func_800E2720_F16D0(0x1F4 - (D_80157F8E * 0xA));
		D_80157F8E += 1;
		if (D_80157F8E >= 0x1F) {
			D_80157F8E = 0;
			D_80157F8C += 1;
		}
		return 0;
	case 1:
		s0 = (s16) (func_800038E0_44E0() >> 5);
		v1 = D_80157F8E;
		t6 = (s16) (func_800038E0_44E0() >> 5);
		if ((v1 % 7) == 0) {
			func_800D16BC_E066C(0x3980, 0xB3B, 0x1400, (s16) (s0 + 0x3778), 0x1194, t6 + 0x13EC, 0xA);
		}
		D_80157F8E = v1 + 1;
		if (v1 >= 0xA1) {
			D_80157F8E = 0;
			D_80157F8C += 1;
		}
		return 0;
	case 2:
		s0_2 = (s16) (func_800038E0_44E0() >> 5);
		v1_2 = D_80157F8E;
		t1 = (s16) (func_800038E0_44E0() >> 5);
		if ((v1_2 < 0x3C) && ((v1_2 % 12) == 0)) {
			func_800D16BC_E066C(0x3980, 0xB3B, 0x1400, (s16) (s0_2 + 0x3778), 0x1194, t1 + 0x13EC, 0xA);
		}
		s5 = 0x64 - v1_2;
		s1 = 0;
		do {
			s2 = s1 * 2;
			v0 = ((u16 *) &D_802D48D0)[s1];
			s0_3 = &((u16 *) &D_802D4AD0)[s1];
			*s0_3 = func_802D687C_1EF58C(((s32) (v0 & 0xF800) >> 0xB) & 0xFF, 0xC, s5, 0x64) << 0xB;
			*s0_3 += func_802D687C_1EF58C(((s32) (v0 & 0x7C0) >> 6) & 0xFF, 0xC, s5, 0x64) << 6;
			s1 += 1;
			*s0_3 += func_802D687C_1EF58C(((s32) (v0 & 0x3E) >> 1) & 0xFF, 0xA, s5, 0x64) * 2;
		} while (s1 < 0x100);
		if (s5 > 0) {
			s5 = 0x63 - D_80157F8E;
		}
		v0_2 = ((u16 *) &D_802D48D0)[D_802CA8D0];
		s1_val = (func_802D687C_1EF58C(((s32) (v0_2 & 0xF800) >> 0xB) & 0xFF, 0xC, s5, 0x64) << 0xB) & 0xFFFF;
		s1_2 = (s1_val + (func_802D687C_1EF58C(((s32) (v0_2 & 0x7C0) >> 6) & 0xFF, 0xC, s5, 0x64) << 6)) & 0xFFFF;
		t0 = ((u16 *) &D_802D48D0)[D_802D48CF];
		s1_3 = (s1_2 + (func_802D687C_1EF58C(((s32) (v0_2 & 0x3E) >> 1) & 0xFF, 0xA, s5, 0x64) * 2)) & 0xFFFF;
		s0_4 = (func_802D687C_1EF58C(((s32) (t0 & 0xF800) >> 0xB) & 0xFF, 0xC, s5, 0x64) << 0xB) & 0xFFFF;
		s0_5 = (s0_4 + (func_802D687C_1EF58C(((s32) (t0 & 0x7C0) >> 6) & 0xFF, 0xC, s5, 0x64) << 6)) & 0xFFFF;
		func_800049D4_55D4(s1_3 & 0xFFFF, (s0_5 + (func_802D687C_1EF58C(((s32) (t0 & 0x3E) >> 1) & 0xFF, 0xA, s5, 0x64) * 2)) & 0xFFFF);
		leoInitUnit_atten();
		D_80157F8E += 1;
		if (D_80157F8E >= 0x65) {
			D_80157F8E = 0;
			D_80157F8C += 1;
		}
		return 0;
	case 3:
		func_800072CC_7ECC(0x21);
		return 1;
	default:
		return 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D68F4_1EF604.s")
#endif


void func_802D6DBC_1EFACC(void) {
	D_802E0FB8 = 0;
	func_80013468_14068(5);
	func_800EFEB4_FEE64(&func_802D68F4_1EF604, 0xB, 1);
}

#ifdef NON_MATCHING
/* Pointer arithmetic form required for correct regalloc (t6/t7 instead of t7/t8).
 * base variable forces lui+addiu for D_802E04F8 to complete before move s0,zero. */
void func_802D6DF8_1EFB08(void) {
	s16 *temp_s1;
	s16 *base;
	s16 var_s0;

	osSyncPrintf(D_802E0E60);
	base = D_802E04F8;
	var_s0 = 0;
	do {
		temp_s1 = base + (var_s0 * 4);
		func_802D4E34_1EDB44(*temp_s1);
		var_s0 += 1;
		*temp_s1 = -3;
	} while (var_s0 < 0xE);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6DF8_1EFB08.s")
#endif

#ifdef NON_MATCHING
void func_802D6E70_1EFB80(void) {
	s16 sp6E;
	s16 sp6C;
	s16 sp6A;
	s16 sp68;
	s16 sp66;
	s16 sp64;
	s16 sp62;
	s16 sp5A;
	f32 sp4C;
	f32 temp_f10;
	f32 temp_f2;
	f32 temp_f2_2;
	f64 temp_f0;
	s16 temp_a0;
	s16 temp_a0_2;
	s16 temp_a1;
	s16 temp_a1_2;
	s16 temp_a2;
	s16 temp_a2_2;
	s16 temp_a3;
	s16 temp_a3_2;
	s16 temp_a3_3;
	s16 temp_t0;
	s16 temp_t0_2;
	s16 temp_v0;
	s16 temp_v1;
	s16 temp_v1_2;
	s16 temp_v1_3;
	s16 temp_v1_5;
	s16 var_v1;
	s16 var_v1_2;
	s32 temp_t9;
	s32 temp_v1_4;
	s32 temp_v1_6;
	Unk80154318Entry *temp_s0;

	temp_v0 = *(&D_80031634 + ((currentLevel - 1) * 4));
	if ((D_80047F94 == 2) && (*(&D_8003153E + (currentLevel * 0x18)) == 0)) {
		var_v1 = (s16) (s32) ((f32) temp_v0 - ((f32) (D_80052B34->unk2 - D_80222A70) / 15.0f));
	} else {
		var_v1 = temp_v0;
	}
	if (D_800313F8 < var_v1) {
		D_800313F8 += 1;
	} else if (var_v1 < D_800313F8) {
		D_800313F8 -= 1;
	}
	if (D_802E04F8 == -3) {
		var_v1_2 = 0;
		if (D_80047F94 == 2) {
			do {
				temp_s0 = (Unk80154318Entry *)((var_v1_2 * 8) + (s32)(&D_802E04F8));
				if (temp_s0->unk0 == -3) {
					sp5A = var_v1_2;
					temp_s0->unk0 = func_802D4DB0_1EDAC0(temp_s0->unk2, (s16) (func_800B84D0_C7480(temp_s0->unk2, temp_s0->unk4, 0, 0) >> 8), temp_s0->unk4, temp_s0->unk6);
				}
				var_v1_2 += 1;
			} while (var_v1_2 < 0xE);
		}
	}
	func_800E2720_F16D0(0x1F4);
	temp_f10 = (f32) (func_800038E0_44E0() % 100) / 2000.0f;
	sp4C = temp_f10;
	if (D_80047F94 != 3) {
		func_801371B8_146168((s32)(&D_802E0FBA), 0x18C, D_80052B34->unk0, (s16) (D_80052B34->unk2 - 0xFA0), (s32) D_80052B34->unk4, (f32) ((f64) temp_f10 + D_802E0ED8));
		if ((((u32) D_80052A8C % 400U) == 0) && ((D_80052A8C == 0x190) || (((u32) D_80052A8C >= 0x191U) && ((func_800038E0_44E0() % 10) == 0)))) {
			func_800C0D1C_CFCCC(-0x50, 0x50, 0);
		}
	}
	if (D_80047F94 == 3) {
		temp_v1 = D_80052B34->unk4;
		if (temp_v1 >= 0x3C01) {
			osSyncPrintf((s32)(&D_802E0E74));
			func_801371B8_146168((s32)(&D_802E0FBA), 0x18C, D_80052B34->unk0, (s16) (D_80052B34->unk2 - 0x5DC), (s32) D_80052B34->unk4, D_802E0EE0);
			if ((((u32) D_80052A8C % 10U) == 0) && ((func_800038E0_44E0() % 4) == 0) && (func_800C0D1C_CFCCC(-0x50, 0x50, 1) != 0)) {
				sp62 = 0x400 - (func_800038E0_44E0() >> 5);
				temp_a3 = D_80052B34->unk0;
				temp_t0 = D_80052B34->unk2;
				temp_v1_2 = D_80052B34->unk4;
				temp_a2 = temp_v1_2 + (0x400 - (func_800038E0_44E0() >> 5));
				sp68 = temp_a3;
				sp66 = temp_t0;
				sp64 = temp_v1_2;
				func_800D16BC_E066C((s16) (temp_a3 + sp62), (s16) (temp_t0 + 0x5DC), temp_a2, temp_a3, (s32) temp_t0, (s32) temp_v1_2, 6);
				func_800C541C_D43CC(sp68, sp66, sp64, 0, 0x7F, 0, 0x64, 0xFF, 0x18, 2, 0xD2, 0xD2, 0xFA);
				func_800D05A8_DF558(sp68, sp66, sp64, 0xC8, 0xC8, 0xC8, 0xFF);
				func_800DEA08_ED9B8(sp68, sp66, sp64, 0xC8, 0xA, 8, 0x28, 0xDC, 0x50, 0x50, 0x50);
				func_800E35E0_F2590(0xFF);
				func_80135D44_144CF4(sp68, sp66, sp64, 3.0f);
				if (D_80052B34->unk1A != 0) {
					func_80123E90_132E40(D_80052B34, 0xC8);
					return;
				}
				func_80123E90_132E40(D_80052B34, 0x4B);
			}
		} else {
			temp_f0 = (f64) sp4C;
			if (temp_v1 >= 0x2301) {
				temp_f2 = (f32) (0x3C00 - temp_v1) / 12800.0f;
				func_801371B8_146168((s32)(&D_802E0FBA), 0x18C, D_80052B34->unk0, (s16) (D_80052B34->unk2 - (s32) ((D_802E0EE4 * temp_f2) + D_802E0EE8)), (s32) temp_v1, (f32) (((f64) (1.0f - temp_f2) * D_802E0EF0) + D_802E0EF8 + temp_f0));
				if ((((u32) D_80052A8C % 10U) == 0) && ((func_800038E0_44E0() % 8) == 0) && (func_800C0D1C_CFCCC(-0x50, 0x50, 1) != 0)) {
					sp62 = 0x400 - (func_800038E0_44E0() >> 5);
					temp_a3_2 = D_80052B34->unk0;
					temp_t0_2 = 0x400 - (func_800038E0_44E0() >> 5);
					sp6E = temp_a3_2 + sp62;
					sp6C = D_80052B34->unk2 + 0x5DC;
					temp_v1_3 = D_80052B34->unk4;
					temp_a2_2 = temp_v1_3 + temp_t0_2;
					temp_a0 = temp_a3_2 + (sp62 / 2);
					temp_a1 = temp_v1_3 + (temp_t0_2 / 2);
					sp64 = temp_a1;
					sp68 = temp_a0;
					sp6A = temp_a2_2;
					temp_v1_4 = func_800B84D0_C7480(temp_a0, temp_a1, temp_a2_2, temp_a3_2) >> 8;
					func_800D16BC_E066C(sp6E, sp6C, temp_a2_2, sp68, temp_v1_4, (s32) sp64, 5);
					func_800DEA08_ED9B8(temp_a0, (s16) temp_v1_4, sp64, 0xC8, 0xA, 8, 0x28, 0xDC, 0x50, 0x50, 0x50);
					func_800C541C_D43CC(temp_a0, (s16) temp_v1_4, sp64, 0, 0x7F, 0, 0x64, 0xFF, 0x10, 2, 0xD2, 0xD2, 0xFA);
					func_80135D44_144CF4(temp_a0, (s16) temp_v1_4, sp64, 3.0f);
				}
			} else if (temp_v1 >= 0xA01) {
				temp_f2_2 = (f32) (0x3C00 - temp_v1) / 12800.0f;
				func_801371B8_146168((s32)(&D_802E0FBA), 0x18C, D_80052B34->unk0, (s16) (D_80052B34->unk2 - (s32) ((D_802E0F00 * temp_f2_2) + D_802E0F04)), (s32) temp_v1, (f32) (((f64) (1.0f - temp_f2_2) * D_802E0F08) + D_802E0F10 + temp_f0));
				if ((((u32) D_80052A8C % 10U) == 0) && ((func_800038E0_44E0() % 12) == 0) && (func_800C0D1C_CFCCC(-0x50, 0x50, 1) != 0)) {
					sp62 = 0x400 - (func_800038E0_44E0() >> 5);
					temp_a3_3 = D_80052B34->unk0;
					temp_t9 = 0x400 - (func_800038E0_44E0() >> 5);
					sp6E = temp_a3_3 + sp62;
					sp6C = D_80052B34->unk2 + 0x5DC;
					temp_v1_5 = D_80052B34->unk4;
					temp_a0_2 = temp_a3_3 + (sp62 * 2);
					temp_a1_2 = temp_v1_5 + (temp_t9 * 2);
					sp6A = temp_v1_5 + temp_t9;
					sp64 = temp_a1_2;
					sp68 = temp_a0_2;
					temp_v1_6 = func_800B84D0_C7480(temp_a0_2, temp_a1_2, 0, 0) >> 8;
					func_800D16BC_E066C(sp6E, sp6C, sp6A, sp68, temp_v1_6, (s32) sp64, 4);
					func_800C541C_D43CC(temp_a0_2, (s16) temp_v1_6, sp64, 0, 0x7F, 0, 0x64, 0xFF, 0x10, 2, 0xD2, 0xD2, 0xFA);
					func_800DEA08_ED9B8(temp_a0_2, (s16) temp_v1_6, sp64, 0xC8, 0xA, 8, 0x28, 0xDC, 0x50, 0x50, 0x50);
					func_80135D44_144CF4(temp_a0_2, (s16) temp_v1_6, sp64, 3.0f);
				}
			} else {
				func_801371B8_146168((s32)(&D_802E0FBA), 0x18C, D_80052B34->unk0, (s16) (D_80052B34->unk2 - 0xFA0), (s32) temp_v1, (f32) (temp_f0 + D_802E0F18));
				if ((((u32) D_80052A8C % 100U) == 0) && ((func_800038E0_44E0() % 10) == 0)) {
					osSyncPrintf((s32)(&D_802E0E7C));
					func_800C0D1C_CFCCC(-0x50, 0x50, 0);
				}
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D6E70_1EFB80.s")
#endif

void func_802D7938_1F0648(void) {
	func_80007410_8010(&func_802D6E70_1EFB80);
}

void func_802D795C_1F066C(void) {
	func_800074BC_80BC(&func_802D6E70_1EFB80);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D7980_1F0690.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D7B68_1F0878.s")

#ifdef NON_MATCHING
void func_802D7EAC_1F0BBC(u8 arg0) {
	AlienInstance *alien;
	s16 baseValue;
	s16 adjustedValue;
	u16 specTableValue;

	alien = &alienInstances[arg0];

	if (alien->unk20 & 0x600) {
		baseValue = alienSpecs[alien->specIndex].unkC;
		func_800DF848_EE7F8(alien->unk0, (s16)(alien->unk2 + 0x14), alien->unk4, baseValue, 0);

		alien->unk24 = func_800C2274_D1224(alien->unk0, (s16)(alien->unk2 + 0x64), alien->unk4, 2);
		alien->unk2C = 0x5A;
		alien->unk3D = 0;

		specTableValue = alienSpecs[alien->specIndex].unkC;
		adjustedValue = (s16)((specTableValue + 0x32) & 0xFFFF);

		func_800C3BD8_D2B88(alien->unk0, alien->unk2, alien->unk4, adjustedValue, 0x5A, 0xF0, 0x78, 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D7EAC_1F0BBC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D7FCC_1F0CDC.s")

#ifdef NON_MATCHING
/* Alien state machine: compute movement deltas, check height threshold, update flags based on unk20 bit 30 */
s32 func_802D8578_1F1288(u8 arg0, s32 arg1, s32 arg2) {
	AlienInstance *alien;
	s32 sp24;

	alien = &alienInstances[arg0 & 0xFF];
	sp24 = 0;

	/* Compute movement deltas */
	alien->unkA = func_8009395C_A290C(arg0 & 0xFF, alien->unk6);
	alien->unk8 = func_8009395C_A290C(arg0 & 0xFF, (s16)(alien->unk6 + 0x4000));

	/* Check if alien is above threshold and call initialization */
	if (((func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8) + 0x12C) < alien->unk2) {
		func_80088760_97710(alien);
	}

	/* Main state logic based on unk20 flags */
	if (alien->unk20 & 0x40000000) {
		/* High flag set: restore stored values and apply modifications */
		alien->unk6 = alien->unkE;

		if (D_80222A70 < alien->unk2) {
			alien->unk10 = (s16)(alien->unk10 + 0x30);
		}

		if (alien->unk47 & 0x4) {
			alien->unk12 = 0;
		}

		if ((alien->unk47 & 0x2) && ((alien->unk3A == 0) || (alien->unk10 != 0))) {
			alien->unk20 = (s32)(alien->unk20 | 0x40001000);
			alien->unk36 = 0;
			sp24 = 1;
			alien->unk10 = (s16)arg2;
			alien->unk2C = (s16)arg1;
		}

		alien->unk3A = (s16)alien->unk10;
	} else {
		/* Low flag: countdown timer logic */
		s16 temp_v0;

		temp_v0 = alien->unk2C;
		alien->unk12 = 0;

		if (temp_v0 != 0) {
			alien->unk2C = (s16)(temp_v0 - 1);
		} else {
			alien->unk20 = (s32)(alien->unk20 | 0x40001000);
			alien->unk36 = 0;
			sp24 = 1;
			alien->unk10 = (s16)arg2;
			alien->unk2C = (s16)arg1;
		}

		if (alien->unk47 & 0x1) {
			alien->unk2C = 0;
		}
	}

	return sp24;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D8578_1F1288.s")
#endif

#ifdef NON_MATCHING
void func_802D872C_1F143C(u8 arg0) {
	s32 sp24;
	AlienInstance *temp_s0;

	temp_s0 = &alienInstances[arg0];
	if ((temp_s0->unk20 & 0x2000) && (temp_s0->unk2C >= 0xF)) {
		func_80088760_97710(temp_s0);
	}
	if (temp_s0->unk2C == 0xE) {
		sp24 = (func_80084F00_93EB0(D_80052B34, temp_s0) - vehicleSpecs[D_80052B34->unk1A].unkC) - alienSpecs[temp_s0->specIndex].unkC;
		if ((func_80084FE8_93F98(arg0, 0x800) != 0) && (sp24 < 0x8C)) {
			temp_s0->unk20 = (s32) (temp_s0->unk20 | 0x2000);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D872C_1F143C.s")
#endif

#ifdef NON_MATCHING
void func_802D8830_1F1540(u8 arg0) {
	AlienInstance *alien;
	s32 temp_v1;
	s32 temp_unk20;
	s16 sp3C;
	s16 sp3E;

	alien = &alienInstances[arg0 & 0xFF];

	/* If pending unk2 override: apply and clear */
	if (alien->unk48 != 0) {
		alien->unk2 = alien->unk48;
		alien->unk48 = 0;
	}

	temp_v1 = func_802D8578_1F1288((u8)(arg0 & 0xFF), 0x14, 0x180);

	if (alien->unk47 & 0x8) {
		func_80088760_97710(alien);
	}
	temp_unk20 = alien->unk20;

	if ((s32)(temp_unk20 << 1) < 0) {
		if (temp_v1 != 0) {
			if (!(alien->unk47 & 0x1)) {
				alien->unk12 = alienSpecs[alien->specIndex].unk40;
			}
		}
		func_800808F0_8F8A0((u8)(arg0 & 0xFF), &alien->unkE);
		temp_unk20 = alien->unk20;
		if (temp_unk20 & 0x1000) {
			s8 next_node;
			s8 next_next;

			next_node = D_8014DD50[(s32)alien->unkC].unkC;
			next_next = D_8014DD50[(s32)next_node].unkD;
			sp3C = next_node;
			sp3E = next_next;
			if (func_80081F18_90EC8((u8)(arg0 & 0xFF), 2, 2, &sp3C, &D_802E0608) == 2) {
				alien->unk20 = (s32)(temp_unk20 & ~0x1000);
			}
		}
	} else {
		func_802D872C_1F143C((u8)(arg0 & 0xFF));
		temp_unk20 = alien->unk20;
	}

	if (temp_unk20 & 0x2000) {
		s32 new_flags = (s32)(temp_unk20 | 0x80000000);
		if (D_80052A8C & 0x1) {
			alien->unk20 = new_flags;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D8830_1F1540.s")
#endif

#ifdef NON_MATCHING
void func_802D89C4_1F16D4(u8 arg0) {
	AlienInstance *alien;
	AlienInstance *temp_alien;
	s32 temp_v1;
	s32 temp_v0;
	u8 temp_a1;
	u8 spec_index;

	spec_index = arg0 & 0xFF;
	alien = &alienInstances[spec_index];
	temp_a1 = alien->unk25;
	spec_index = alien->specIndex;
	if (!(alien->unk20 & 0x100000)) {
		if (temp_a1 != 0xFF) {
			temp_alien = &alienInstances[temp_a1];
			if (temp_alien->specIndex == 0x1A) {
				temp_alien->unk24 = (u8) (temp_alien->unk24 - 1);
			}
		}
		if (alien->unk20 & 0x600) {
			func_80137468_146418(arg0 & 0xFF, 0xD);
			if ((alien->unk47 & 8) || (alien->unk20 & 0x2000)) {
				alien->unk20 = (s32) (alien->unk20 | 0x100000);
				func_80124B5C_133B0C(alien->unk0, alien->unk2, alien->unk4, 0x12C, 0xC8);
				func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, ((&alienSpecs[0].unkC)[spec_index] * 3) & 0xFFFF, 4);
				alien->unk2C = 1;
				return;
			}
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, ((&alienSpecs[0].unkC)[spec_index] * 2) & 0xFFFF, 0);
			alien->unk10 = (s16) (alien->unk10 + (func_800038E0_44E0() >> 7) + 0x300);
			alien->unk20 = (s32) (alien->unk20 | 0x40000000);
			alien->unk14 = (s16) (0x1000 - (func_800038E0_44E0() >> 5));
			alien->unk18 = (s16) (0x1000 - (func_800038E0_44E0() >> 5));
			alien->unk26 = 1U;
			alien->unk2C = 0x50;
			alien->unk12 = 0x300;
			goto block_9;
		}
		goto block_9;
	}
block_9:
	if ((alien->unk10 <= 0) && (alien->unk26 != 0)) {
		alien->unk10 = (s16) (alien->unk10 + (func_800038E0_44E0() >> 7) + 0x300);
		alien->unk26 = 0U;
		if (alien->unk20 & 0x600) {
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, ((&alienSpecs[0].unkC)[spec_index] * 2) & 0xFFFF, 0);
		}
		alien->unk24 = func_800C2274_D1224(alien->unk0, alien->unk2, alien->unk4, 2);
	}
	temp_v1 = alien->unk20;
	if ((!(temp_v1 & 0x40000000) || (alien->unk47 & 1)) && (alien->unk2C > 0)) {
		if (temp_v1 & 0x600) {
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, ((&alienSpecs[0].unkC)[spec_index] * 2) & 0xFFFF, 2);
		}
		alien->unk2C = 1;
		return;
	}
	alien->unk8 = (s16) (alien->unk8 + alien->unk18);
	alien->unkA = (s16) (alien->unkA + alien->unk14);
	if (alien->unk26 == 0) {
		func_800C1ECC_D0E7C(alien->unk0, alien->unk2, alien->unk4, alien->unk24, 2);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D89C4_1F16D4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D8D14_1F1A24.s")

#ifdef NON_MATCHING
void func_802D8D68_1F1A78(u8 arg0) {
	AlienInstance *alien;
	Unk8014DD50 *ptr_a1;
	Unk8014DD50 *ptr_a3;
	s16 temp_v0;
	s16 temp_v1;
	s16 temp_a0_2;
	s16 temp_v0_3;
	s16 temp_v1_2;
	s32 temp_a0;
	s32 temp_t0;
	s32 temp_t4;
	s32 temp_t4_2;
	s32 temp_t7;
	s32 temp_t8;
	s32 temp_v0_2;
	s32 temp_v0_4;
	s32 temp_f6;
	s8 temp_a0_3;
	s8 temp_a0_4;
	s8 temp_a1;
	s8 temp_a1_2;
	u8 temp_t6;
	s8 sp37;
	s8 sp2F;
	s8 sp33;
	s8 sp42;
	s8 sp43;
	s32 sp34;
	s32 sp2C;
	s32 sp30;

	temp_t6 = arg0 & 0xFF;
	alien = &alienInstances[temp_t6];

	if (alien->unk47 & 1) {
		func_8008064C_8F5FC(temp_t6);
	} else {
		func_8008076C_8F71C(temp_t6);
	}

	temp_v0 = alien->unk0 - alien->unk14;
	temp_v1 = alien->unk4 - alien->unk18;
	temp_a0 = (temp_v0 * temp_v0) + (temp_v1 * temp_v1);

	if ((temp_a0 >= 0x225511) || (alien->unk47 & 1)) {
		temp_t0 = alien->unk20 | 0x100;
		alien->unk20 = temp_t0;
		alien->unk20 = (temp_t0 & ~0x840);
	} else if (temp_a0 >= 0xF4241) {
		temp_t4 = alien->unk20 | 0x800;
		alien->unk20 = temp_t4;
		alien->unk20 = (temp_t4 & ~0x140);
	} else {
		temp_t8 = alien->unk20 | 0x140;
		alien->unk20 = temp_t8;
		alien->unk20 = (temp_t8 & ~0x800);
	}

	temp_v0_2 = alien->unk20;
	if (temp_v0_2 & 0x1000) {
		temp_v0_3 = alien->unk2C;
		if (temp_v0_3 != 0) {
			alien->unk2C = temp_v0_3 - 1;
		} else {
			alien->unk10 = alien->unk10 + 0x40;
		}
		if ((alien->unk10 < 0) && (D_80222A70 < alien->unk2)) {
			alien->unk1E = 0;
			if (alien->unk20 & 0x08000000) {
				func_800871CC_9617C(arg0, 0, 0x18);
			} else {
				func_80129354_138304(alien, 0, alien->unk14, alien->unk16, alien->unk18);
			}
			alien->unk20 = (alien->unk20 & ~0x1000);
		}
		temp_v0_4 = alien->unk20;
		if (!(temp_v0_4 & 0x40000000)) {
			alien->unk20 = (temp_v0_4 | 0x40000000);
			alien->unk2C = 0;
		}
	} else if (temp_v0_2 & 0x40000000) {
		if (alien->unk2 < D_80222A70) {
			temp_a0_2 = alien->unk10;
			if (temp_a0_2 < -0x60) {
				alien->unk10 = temp_a0_2 + 0x40;
			}
		}
		if (alien->unk2 < (D_80222A70 - 0x14)) {
			alien->unk20 = (alien->unk20 & 0xBFFFFFFF);
		}
	} else if ((func_800038E0_44E0() < 0x3E8) && (alien->unk1E == 0) && (alien->unk12 >= 0x81)) {
		temp_t4_2 = (s16)alien->unk0 >> 8;
		temp_t7 = (s16)alien->unk4 >> 8;
		temp_a1 = temp_t7 - 1;
		temp_a0_3 = temp_t4_2 - 1;
		sp34 = temp_a0_3;
		sp30 = temp_a1;
		sp42 = temp_t7;
		sp43 = temp_t4_2;
		sp37 = temp_a0_3;
		sp2F = temp_a1;
		sp33 = temp_a1;

		if ((func_800B325C_C220C(temp_a0_3, temp_a1, 0x1000) != 0) &&
			(func_800B325C_C220C(sp37, sp42, 0x1000) != 0)) {
			temp_a1_2 = sp42 + 1;
			sp2C = temp_a1_2;
			if (func_800B325C_C220C(sp37, temp_a1_2, 0x1000) != 0) {
				temp_a0_4 = sp43 + 1;
				sp34 = temp_a0_4;
				if ((func_800B325C_C220C(temp_a0_4, sp33, 0x1000) != 0) &&
					(func_800B325C_C220C(sp37, sp42, 0x1000) != 0) &&
					(func_800B325C_C220C(sp37, sp2F, 0x1000) != 0) &&
					(func_800B325C_C220C(sp43, sp33, 0x1000) != 0) &&
					(func_800B325C_C220C(sp43, sp2F, 0x1000) != 0)) {
					alien->unk20 = (alien->unk20 | 0x40001000);
					alien->unk2C = 6;
					alien->unk10 = 0;
				}
			}
		}
	} else {
		alien->unk10 = 0;
	}

	if (alien->unk2 < (D_80222A70 + 5)) {
		func_800E24B8_F1468(arg0);
	}

	ptr_a1 = &D_8014DD50[alien->unkC];
	ptr_a1 = &D_8014DD50[ptr_a1->unkC];
	alien->unkA = alien->unk10 * -8;
	ptr_a3 = &D_8014DD50[ptr_a1->unkD];
	ptr_a3->unkA = alien->unkA;
	temp_v1_2 = alien->unk1E;
	temp_f6 = (s32)(((f64)(f32)sins(((arg0 + D_80052A8C) * 0x7D0) & 0xFFFF) / 32768.0) * D_802E0F58);
	ptr_a1->unk6 = temp_f6;
	ptr_a3->unk6 = temp_f6;
	if (temp_v1_2 != 0) {
		alien->unk1E = temp_v1_2 - 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D8D68_1F1A78.s")
#endif

#ifdef NON_MATCHING
void func_802D91F8_1F1F08(u8 arg0) {
	s16 spC4;
	s16 spBE;
	s16 spBC;
	s16 spBA;
	s16 spB8;
	s16 spB2;
	s16 spB0;
	s8 spAF;
	s32 sp9C;
	s32 sp98;
	s32 sp94;
	s16 sp92;
	s16 sp72;
	f32 sp7C;
	u16 sp6A;
	void *sp64;
	void *sp60;
	void *sp5C;
	void *sp58;
	void *sp54;
	void *temp_s0;
	void *temp_t0;
	void *temp_t2;
	void *temp_t3_2;
	void *temp_t5;
	void *temp_t7;
	void *temp_t9;
	void *temp_v0;
	void *temp_v0_2;
	void *temp_v1_2;
	void *var_t0;
	s32 temp_a0;
	s32 temp_a0_2;
	s32 temp_a1;
	s32 temp_a1_2;
	s32 temp_t2_2;
	s32 temp_v0_3;
	s32 temp_v0_4;
	s32 temp_v0_5;
	s32 temp_v0_6;
	s32 temp_v0_9;
	s8 temp_t3;
	s8 temp_t8;
	s8 temp_v0_8;
	s8 var_v0_2;
	u16 temp_t4;
	u8 temp_t5_2;
	u8 var_v0;
	u8 var_v1;
	s16 temp_a3;
	s16 temp_v0_7;
	s16 temp_v1;
	s16 var_a3;
	f64 temp_f4;

	temp_s0 = (arg0 * 0x50) + &alienInstances;
	spC4 = (s16) (&D_8014DD50 + (temp_s0->unkC * 0x10))->unkC;
	temp_t0 = &D_8014DD50 + (spC4 * 0x10);
	temp_t7 = &D_8014DD50 + (temp_t0->unkD * 0x10);
	sp64 = temp_t7;
	temp_t2 = &D_8014DD50 + (temp_t7->unkD * 0x10);
	sp60 = temp_t2;
	temp_t3 = temp_t2->unkD;
	temp_t5 = &D_8014DD50 + (temp_t3 * 0x10);
	sp5C = temp_t5;
	spBE = (s16) temp_t3;
	temp_t8 = temp_t5->unkD;
	spBC = (s16) temp_t8;
	temp_t3_2 = &D_8014DD50 + (temp_t8 * 0x10);
	sp58 = temp_t3_2;
	spBA = (s16) temp_t5->unkC;
	temp_t9 = (temp_s0->unk1A * 0x68) + &alienSpecs;
	sp54 = temp_t9;
	spB8 = (s16) temp_t3_2->unkC;

	if (temp_s0->unk1C < ((s32) temp_t9->unk3A / 4)) {
		sp68 = temp_t0;
		func_80089200_981B0(arg0, 4, 0x5A, &D_8014DD50);
	}

	sp68 = temp_t0;
	func_80085780_94730(arg0);

	if ((temp_s0->unk20 & 0x08000000) || (sp68 = temp_t0, var_t0 = temp_t0, (func_800859F4_949A4(arg0) != 0))) {
		sp68 = temp_t0;
		func_80085E2C_94DDC(arg0, spC4, 0x2000);
		func_800808F0_8F8A0(arg0, temp_s0 + 0xE);
		func_8008554C_944FC(arg0);
		var_t0 = temp_t0;

		if ((func_80084FE8_93F98(arg0, 0x800) != 0) && (temp_s0->unk4E != 0)) {
			temp_s0->unk48 = 1;
		}

		if ((temp_s0->unk48 == 1) && (temp_s0->unk3C == 0)) {
			temp_a1 = temp_s0->unk20;
			if (!(temp_a1 & 0x1000) && (currentLevel == 3)) {
				temp_s0->unk20 = (s32) (temp_a1 | 0x1000);
				temp_s0->unk3C = 0x3C;
			}
		}

		if ((currentLevel == 2) && (temp_s0->unk48 != 0)) {
			temp_s0->unk3C = 1;
		}
	}

	if (temp_s0->unk20 & 0x1000) {
		if (temp_s0->unk3C < 0x1E) {
			temp_t2_2 = (D_80052A8C & 1) * -0x10;
			sp64->unk4 = (s16) (temp_t2_2 - 0x18);
			sp60->unk4 = (s16) (temp_t2_2 - 0x1C);
			temp_v0 = (temp_s0->unk1A * 0x68) + &alienSpecs;
			var_t0->unkA = (u16) (var_t0->unkA - 0xC8);
			func_80128428_1373D8(temp_s0, temp_v0->unk20, temp_v0->unk22, temp_v0->unk24, &sp9C, &sp98, &sp94);
			func_800C56A4_D4654(sp9E, sp9A, sp96, 0xC8, 3, 0xF, 0xA);
			temp_v0_2 = (temp_s0->unk1A * 0x68) + &alienSpecs;
			func_80128428_1373D8(temp_s0, (s16) (temp_v0_2->unk20 * -1), temp_v0_2->unk22, temp_v0_2->unk24, &sp9C, &sp98, &sp94);
			func_800C56A4_D4654(sp9E, sp9A, sp96, 0xC8, 3, 0xF, 0xA);
		}

		if (temp_s0->unk3C == 0) {
			temp_s0->unk20 = (s32) (temp_s0->unk20 & ~0x1000);
			temp_s0->unk3C = 0x50;
			temp_s0->unk48 = 0;
		}
	} else {
		temp_t4 = var_t0->unkA + 0x1F4;
		var_t0->unkA = temp_t4;
		temp_v0_3 = temp_t4 & 0xFFFF;
		if ((temp_v0_3 > 0) && (temp_v0_3 < 0x1F5)) {
			var_t0->unkA = 0U;
		}
	}

	var_v0 = temp_s0->unk26;
	temp_t5_2 = var_v0 - 1;
	if (var_v0 != 0) {
		temp_s0->unk26 = temp_t5_2;
		var_v0 = temp_t5_2 & 0xFF;
	}

	var_v1 = var_v0;
	if ((s32) var_v0 >= 0x21) {
		temp_s0->unk26 = 0U;
		var_v1 = 0 & 0xFF;
	}

	if (currentLevel == 2) {
		temp_v0_4 = var_v1 << 7;
		sp64->unk8 = (u16) (sp64->unk8 + temp_v0_4);
		sp60->unk8 = (u16) (sp60->unk8 - temp_v0_4);
	} else {
		temp_v0_5 = var_v1 * 0xE6;
		sp64->unk8 = (u16) (sp64->unk8 + temp_v0_5);
		sp60->unk8 = (u16) (sp60->unk8 - temp_v0_5);
	}

	if (spBA == -1) {
		temp_v0_6 = var_v1 << 7;
		sp5C->unk8 = (u16) (sp5C->unk8 + temp_v0_6);
		sp58->unk8 = (u16) (sp58->unk8 - temp_v0_6);
	}

	if (!(temp_s0->unk20 & 0x1000) && (temp_s0->unk3C != 0) && (temp_s0->unk4E != 0) && !(temp_s0->unk47 & 1)) {
		if (func_80084FE8_93F98(arg0, 0xBB8) != 0) {
			func_800871CC_9617C(arg0, 0, 0x1E);
		} else {
			func_80086D70_95D20(arg0, 0, func_800870D8_96088(0xC8, 0x10));
		}

		if (spBA == -1) {
			temp_s0->unk1E = 0;
			func_80087188_96138(arg0, 1, 0x3F);
		}

		if ((s32) temp_s0->unk26 < 0x20) {
			func_80137468_146418(arg0, 0xC9);
			temp_s0->unk26 = (u8) (temp_s0->unk26 + 2);
		}
	}

	temp_v0_7 = temp_s0->unk1E;
	if (temp_v0_7 != 0) {
		temp_s0->unk1E = (s16) (temp_v0_7 - 1);
	}

	temp_v0_8 = temp_s0->unk3C;
	if (temp_v0_8 != 0) {
		temp_s0->unk3C = (s8) (temp_v0_8 - 1);
	}

	if ((spBA != -1) && (temp_a1_2 = temp_s0->unk20, (temp_a1_2 & 0x08000000))) {
		if (temp_a1_2 & 0x6000) {
			if (temp_a1_2 & 0x4000) {
				spB2 = spBA;
				spB0 = spBE;
				var_v0_2 = func_80081F18_90EC8(arg0, 2, 3, &spB0, &D_802E06D0);
			} else {
				spB0 = spBC;
				spB2 = spB8;
				var_v0_2 = func_80081F18_90EC8(arg0, 2, 3, &spB0, &D_802E06D8);
			}

			spAF = var_v0_2;

			if ((var_v0_2 == 2) || (temp_s0->unk36 == 2)) {
				sp9C = (s32) (((f64) (f32) sins(*(&D_8014DD56 + (spB2 * 0x10))) / 32768.0) * 120.0);
				temp_f4 = (f64) (f32) coss(*(&D_8014DD56 + (spB2 * 0x10))) / 32768.0;
				temp_v1 = *(&D_8014DD56 + (spB0 * 0x10));
				temp_a0 = temp_v1 & 0xFFFF;
				sp68 = temp_a0;
				sp92 = temp_v1;
				sp94 = (s32) ((temp_f4 * 120.0) + D_802E0F60);
				sp72 = coss((u16) temp_a0);
				sp54->unk2C = (s16) (s32) ((((f64) (f32) sins(sp6A) / 32768.0) * (f64) sp94) + ((f64) *(&D_8014DD50 + (spB0 * 0x10)) + ((f64) sp9C * ((f64) (f32) sp72 / 32768.0))));
				sp72 = sins(sp6A);
				temp_v1_2 = (spB0 * 0x10) + &D_8014DD50;
				sp54->unk30 = (s16) (s32) ((((f64) (f32) coss(sp6A) / 32768.0) * (f64) sp94) + ((f64) temp_v1_2->unk4 + ((f64) -sp9C * ((f64) (f32) sp72 / 32768.0))));
				sp54->unk2E = (s16) temp_v1_2->unk2;
				temp_a3 = sp92 + *(&D_8014DD56 + (spB2 * 0x10));
				if (temp_s0->unk20 & 0x4000) {
					var_a3 = (temp_s0->unk6 - temp_a3) - 0x4000;
				} else {
					var_a3 = (temp_s0->unk6 - temp_a3) + 0x4000;
				}

				sp92 = var_a3;
				if (func_800879A4_96954(arg0, 0x87, 1, var_a3) != 0) {
					sp68 = (void *) arg0;
					func_80102DDC_111D8C(D_80052B34, sp92, 0, 30.0f);
					if (D_80052B34->unk1A != 0) {
						func_80137468_146418((u8) sp68, 0x258);
						sp7C = (f32) ((f64) (f32) sins((temp_s0->unk6 + 0x4000) & 0xFFFF) / 32768.0);
						func_800C541C_D43CC(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, (s8) (s32) (sp7C * 127.0f), -0x50, (s32) ((f32) -((f64) (f32) coss((temp_s0->unk6 + 0x4000) & 0xFFFF) / 32768.0) * 127.0f), 0x5A, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0xC8);
					} else {
						func_80137468_146418((u8) sp68, 0x134);
					}
					func_80122524_1314D4(D_80052B34, 0xC8, temp_s0->unk0, temp_s0->unk4);
				}
			}

			if (spAF == 3) {
				temp_s0->unk20 = (s32) (temp_s0->unk20 & ~0x6000);
			}
		} else {
			temp_v0_9 = temp_s0->unk0 - D_80052B34->unk0;
			temp_a0_2 = temp_s0->unk4 - D_80052B34->unk4;
			if (((temp_v0_9 * temp_v0_9) + (temp_a0_2 * temp_a0_2)) < 0x1D4C0) {
				if (temp_s0->unk2A < temp_s0->unkE) {
					temp_s0->unk20 = (s32) (temp_a1_2 | 0x4000);
				} else {
					temp_s0->unk20 = (s32) (temp_a1_2 | 0x2000);
				}
				temp_s0->unk36 = 0U;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D91F8_1F1F08.s")
#endif

#ifdef NON_MATCHING
void func_802D9CB8_1F29C8(u8 alienIdx) {
	AlienInstance *alien;
	Unk8014DD50 *ptr1;
	Unk8014DD50 *ptr2;
	Unk8014DD50 *ptr3;
	Unk8014DD50 *ptr4;
	Unk8014DD50 *ptr5;
	s8 val1;
	s8 val2;
	s8 val3;
	s8 val4;
	s8 val5;
	s16 posX;
	s16 posZ;
	s32 tmp32;
	f32 fltVal;
	s16 sp9E;
	s16 sp9C;
	s16 sp9A;
	s16 sp98;
	s16 sp96;

	alien = &alienInstances[alienIdx];

	func_80089EB4_98E64(alienIdx, 0x46, 3, 6, 5);

	val1 = *(s8*)(&D_8014DD50[alien->unkC * 0x10] + 0xC);
	ptr1 = &D_8014DD50[val1 * 0x10];
	val2 = *(s8*)((s32)ptr1 + 0xD);
	ptr2 = &D_8014DD50[val2 * 0x10];
	val3 = *(s8*)((s32)ptr2 + 0xD);
	ptr3 = &D_8014DD50[val3 * 0x10];
	val4 = *(s8*)((s32)ptr3 + 0xD);
	ptr4 = &D_8014DD50[val4 * 0x10];
	val5 = *(s8*)((s32)ptr4 + 0xD);
	ptr5 = &D_8014DD50[val5 * 0x10];

	sp9E = (s16)val1;
	sp9C = (s16)val2;
	sp9A = (s16)val3;
	sp98 = (s16)val4;
	sp96 = *(s8*)((s32)ptr5 + 0xD);

	func_800893C8_98378(alienIdx, val1, 0xBB8, 0x3E8, 0, -0xFA0, 0x7D0, 0xA, 0xE);
	func_800893C8_98378(alienIdx, val2, 0xBB8, 0x1388, 0x7D0, -0xFA0, 0xFA0, 6, 0xC);
	func_800893C8_98378(alienIdx, val3, 0xBB8, 0x1388, -0x7D0, -0xFA0, 0xFA0, 6, 0xC);
	func_800893C8_98378(alienIdx, val4, 0, 0xBB8, 0x2710, -0x7D0, 0x7D0, 4, 8);
	func_800893C8_98378(alienIdx, val5, 0, 0xBB8, -0x2904, -0x7D0, 0x7D0, 4, 8);

	if ((alien->unk2C % 25 == 0) && (alien->unk2C >= 0x19)) {
		posX = alien->unk0;
		posZ = alien->unk4;
		tmp32 = (s32)(func_800B84D0_C7480(posX, posZ) >> 8);
		fltVal = (f32)(((f64)alienSpecs[alien->specIndex].unkC * 0.75));
		func_800DF848_EE7F8(posX, (s16)tmp32, posZ, (s32)fltVal, 2);
	}

	if (alien->unk2C == 1) {
		s16 angle1;
		s16 angle2;
		s16 angle3;
		s32 sinVal;
		s32 cosVal;

		func_80088E40_97DF0(alienIdx, sp9E, ptr1->unk0, ptr1->unk2, ptr1->unk4, 0, 4, 0);

		angle1 = (alien->unk6 + 0x2000) & 0xFFFF;
		sinVal = sins(angle1);
		fltVal = (f32)(((f64)(f32)sinVal / 32768.0) * 15.0);
		cosVal = coss(angle1);
		func_80088E40_97DF0(alienIdx, sp9C, ptr2->unk0, ptr2->unk2, ptr2->unk4, (s32)fltVal, 0, (s32)(f32)(((f64)(f32)cosVal / 32768.0) * -15.0));

		angle2 = (alien->unk6 + 0x6000) & 0xFFFF;
		sinVal = sins(angle2);
		fltVal = (f32)(((f64)(f32)sinVal / 32768.0) * 15.0);
		cosVal = coss(angle2);
		func_80088E40_97DF0(alienIdx, sp9A, ptr3->unk0, ptr3->unk2, ptr3->unk4, (s32)fltVal, 0, (s32)(f32)(((f64)(f32)cosVal / 32768.0) * -15.0));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802D9CB8_1F29C8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DA18C_1F2E9C.s")

#ifdef NON_MATCHING
void func_802DA210_1F2F20(u8 arg0, s16 arg1, s16 arg2) {
	AlienInstance *s0;
	u8 sp77;
	u8 sp76;
	s32 sp60;
	s32 sp5C;
	s32 sp58;
	s32 sp54;
	AlienSpec *v1;
	u8 temp_v0;
	u8 temp_v0_2;
	u8 temp_t5;
	u8 var_v0;
	s16 var_v0_2;
	s32 var_a0;

	s0 = &alienInstances[arg0];
	temp_v0 = s0->unk26;
	sp76 = s0->specIndex;
	if (s0->unk20 & 0x1000) {
		if (arg1 == temp_v0) {
			s0->unk2A = (s16) (s0->unk2A + 0x1000);
		} else {
			s0->unk2A = (s16) (s0->unk2A - 0x1000);
		}
		sp77 = temp_v0;
		func_80081E5C_90E0C((s16) temp_v0);
		if (D_8014DD5E[temp_v0][0] == 0) {
			temp_v0_2 = s0->unk36;
			if (temp_v0_2 == 3) {
				s0->unk20 = (s32) (s0->unk20 & ~0x1000);
				return;
			}
			func_80081C84_90C34((u8) temp_v0, &D_802E06E0[temp_v0_2 * 4]);
			temp_t5 = s0->unk36 + 1;
			var_v0 = temp_t5 & 0xFF;
			s0->unk36 = temp_t5;
			if (var_v0 == 3) {
				func_80137468_146418(arg0, 0x64);
				if (arg1 == s0->unk26) {
					sp60 = func_800879A4_96954(arg0, 0, 1);
				}
				var_a0 = sp60;
				if (arg2 == s0->unk26) {
					v1 = &alienSpecs[sp76];
					v1->unk2C = (s16) -v1->unk2C;
					var_a0 = func_800879A4_96954(arg0, 0x96, 1);
					v1->unk2C = (s16) -v1->unk2C;
				}
				v1 = &alienSpecs[sp76];
				if (var_a0 != 0) {
					func_80122524_1314D4(D_80052B34, 0x190, s0->unk0, s0->unk4);
				}
				if (arg2 == s0->unk26) {
					var_v0_2 = -v1->unk2C;
				} else {
					var_v0_2 = v1->unk2C;
				}
				func_80128428_1373D8(s0, var_v0_2, v1->unk2E, v1->unk30, &sp5C, &sp58, &sp54);
				func_800DEE5C_EDE0C((s16) sp5C, (s16) (sp58 + 5), (s16) sp54, 0x50, 0x14);
				func_800C541C_D43CC((s16) sp5C, (s16) sp58, (s16) sp54, 0, -1, 0, 0x64, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0x80);
				func_800DEA08_ED9B8((s16) sp5C, (s16) sp58, (s16) sp54, 0x96, 8, 6, 0x28, 0xC8, 0xA6, 0x85, 0x2F);
				func_80135D44_144CF4((s32) (s16) sp5C, sp58, (s32) (s16) sp54, 3.0f);
				var_v0 = s0->unk36;
			}
			if (var_v0 == 4) {
				s0->unk20 = (s32) (s0->unk20 & ~0x1000);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DA210_1F2F20.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DA548_1F3258.s")

#ifdef NON_MATCHING
void func_802DA844_1F3554(u8 arg0) {
	s16 sp6E;
	s16 sp6A;
	s16 sp66;
	s16 sp6C;
	s16 sp68;
	s16 sp64;
	s32 sp60;
	s32 sp5C;
	s16 sp5A;
	s16 sp58;
	s16 sp56;
	s16 sp54;
	s16 sp52;
	s8 sp5F;
	s8 sp43;
	s8 sp37;
	s8 sp63;
	s8 sp3F;
	void *sp40;
	void *sp3C;
	void *sp38;
	s32 sp34;
	s16 temp_v0_2;
	s16 temp_v0_3;
	s16 temp_v0_4;
	s16 temp_v0_5;
	s32 temp_s0;
	s32 temp_s0_2;
	s32 temp_s0_3;
	s32 temp_s0_4;
	s32 temp_s0_5;
	s32 temp_s0_6;
	s8 temp_a0;
	s8 temp_a1;
	s8 temp_a2_2;
	s8 temp_t0;
	s8 temp_t1;
	u8 temp_t6;
	void *temp_a2;
	void *temp_s1;
	void *temp_v0;
	void *temp_v1;
	void *temp_v1_2;
	void *temp_v1_3;

	temp_t6 = arg0 & 0xFF;
	temp_s1 = (void *)((temp_t6 * 0x50) + (s32)&alienInstances);
	if (((alienInstance *)temp_s1)->unk20 & 0x600) {
		temp_a1 = *(s8 *)((temp_t6 * 0x10) + (s32)&D_8014DD50 + 0xC);
		arg0 = temp_t6;
		temp_v1 = (void *)((temp_a1 * 0x10) + (s32)&D_8014DD50);
		temp_t0 = *(s8 *)((s32)temp_v1 + 0xD);
		sp40 = temp_v1;
		sp5A = (s16) temp_a1;
		temp_v0 = (void *)((temp_t0 * 0x10) + (s32)&D_8014DD50);
		temp_t1 = *(s8 *)((s32)temp_v0 + 0xD);
		sp3C = temp_v0;
		temp_a2 = (void *)((temp_t1 * 0x10) + (s32)&D_8014DD50);
		sp38 = temp_a2;
		sp58 = temp_t0;
		sp56 = temp_t1;
		sp54 = *(s8 *)((s32)temp_v0 + 0xC);
		sp52 = *(s8 *)((s32)temp_a2 + 0xC);
		temp_s0 = func_8008916C_9811C(temp_t6, temp_a1, temp_a2, &D_8014DD50);
		func_80128428_1373D8(temp_s1, ((Unk8014DD50 *)temp_v1)->unk0, ((Unk8014DD50 *)temp_v1)->unk2, ((Unk8014DD50 *)temp_v1)->unk4, (s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
		func_800C80F0_D70A0(((-(s32)((alienInstance *)sp40)->unk6 - ((alienInstance *)temp_s1)->unk6) + 0x4000) & 0xFFFF, 0, 0, func_800C7924_D68D4(sp6E, sp6A, sp66, 0x40, -8, (s32)&alienSpecs[((alienInstance *)temp_s1)->unk1A].unkC, temp_s0, 1));
		func_800E093C_EF8EC(sp6E, sp6A, sp66, 0);
		func_800E093C_EF8EC(sp6E, sp6A, sp66, 0x1E);
		temp_s0_2 = ((alienInstance *)temp_s1)->unk6 & 0xFFFF;
		((alienInstance *)temp_s1)->unk14 = (s16) (s32) sp6C;
		((alienInstance *)temp_s1)->unk16 = (s16) (s32) sp68;
		((alienInstance *)temp_s1)->unk18 = (s16) (s32) sp64;
		sp60 = (s32) (((f64) (f32) coss(temp_s0_2 & 0xFFFF) / 32768.0) * 6.0);
		sp5C = (s32) (((f64) (f32) sins(temp_s0_2 & 0xFFFF) / 32768.0) * 6.0);
		temp_s0_3 = func_8008916C_9811C(arg0, (s8) sp58);
		func_80128428_1373D8(temp_s1, ((Unk8014DD50 *)sp3C)->unk0, ((Unk8014DD50 *)sp3C)->unk2, ((Unk8014DD50 *)sp3C)->unk4, (s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
		temp_v0_2 = func_800C7924_D68D4(sp6E, sp6A, sp66, 0x40, -8, (s32)&alienSpecs[((alienInstance *)temp_s1)->unk1A].unkC, temp_s0_3, 1);
		func_800C80F0_D70A0((0x4000 - ((alienInstance *)temp_s1)->unk6) & 0xFFFF, 0, 0, temp_v0_2);
		func_800C820C_D71BC(0, 0, 0, temp_v0_2);
		temp_a2_2 = sp60 * -1;
		sp34 = (s32) temp_a2_2;
		sp5F = sp60 * -1;
		func_800C8184_D7134(sp5F, 3, temp_a2_2, temp_v0_2);
		if (sp54 != -1) {
			temp_v1_2 = (void *)((sp54 * 0x10) + (s32)&D_8014DD50);
			temp_s0_4 = func_8008916C_9811C(arg0, (s8) sp54);
			func_80128428_1373D8(temp_s1, (s16) (((Unk8014DD50 *)temp_v1_2)->unk0 + ((Unk8014DD50 *)sp3C)->unk0), (s16) (((Unk8014DD50 *)temp_v1_2)->unk2 + ((Unk8014DD50 *)sp3C)->unk2), (s16) (((Unk8014DD50 *)temp_v1_2)->unk4 + ((Unk8014DD50 *)sp3C)->unk4), (s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
			temp_v0_3 = func_800C7924_D68D4(sp6E, sp6A, sp66, 0x40, -8, (s32)&alienSpecs[((alienInstance *)temp_s1)->unk1A].unkC, temp_s0_4, 1);
			func_800C80F0_D70A0((0x4000 - ((alienInstance *)temp_s1)->unk6) & 0xFFFF, 0, 0, temp_v0_3);
			func_800C820C_D71BC(0, 0, 0, temp_v0_3);
			sp43 = *(s8 *)((s32)temp_v1_2 + 0xC);
			sp37 = *(s8 *)((s32)sp3C + 0xC);
			func_800C8184_D7134(sp43, 3, sp37, temp_v0_3);
		}
		temp_s0_5 = func_8008916C_9811C(arg0, (s8) sp56);
		func_80128428_1373D8(temp_s1, ((Unk8014DD50 *)sp38)->unk0, ((Unk8014DD50 *)sp38)->unk2, ((Unk8014DD50 *)sp38)->unk4, (s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
		temp_v0_4 = func_800C7924_D68D4(sp6E, sp6A, sp66, 0x40, -8, (s32)&alienSpecs[((alienInstance *)temp_s1)->unk1A].unkC, temp_s0_5, 1);
		func_800C80F0_D70A0((0x4000 - ((alienInstance *)temp_s1)->unk6) & 0xFFFF, 0, 0, temp_v0_4);
		func_800C820C_D71BC(0, 0, 0, temp_v0_4);
		temp_a0 = sp5C * -1;
		sp63 = temp_a0;
		func_800C8184_D7134(temp_a0, 3, sp63, temp_v0_4);
		if (sp52 != -1) {
			temp_v1_3 = (void *)((sp52 * 0x10) + (s32)&D_8014DD50);
			temp_s0_6 = func_8008916C_9811C(arg0, (s8) sp52);
			func_80128428_1373D8(temp_s1, (s16) (((Unk8014DD50 *)temp_v1_3)->unk0 + ((Unk8014DD50 *)sp38)->unk0), (s16) (((Unk8014DD50 *)temp_v1_3)->unk2 + ((Unk8014DD50 *)sp38)->unk2), (s16) (((Unk8014DD50 *)temp_v1_3)->unk4 + ((Unk8014DD50 *)sp38)->unk4), (s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
			temp_v0_5 = func_800C7924_D68D4(sp6E, sp6A, sp66, 0x40, -8, (s32)&alienSpecs[((alienInstance *)temp_s1)->unk1A].unkC, temp_s0_6, 1);
			func_800C80F0_D70A0((0x4000 - ((alienInstance *)temp_s1)->unk6) & 0xFFFF, 0, 0, temp_v0_5);
			func_800C820C_D71BC(0, 0, 0, temp_v0_5);
			sp43 = *(s8 *)((s32)temp_v1_3 + 0xC);
			sp3F = *(s8 *)((s32)sp38 + 0xC);
			func_800C8184_D7134(sp43, 3, sp3F, temp_v0_5);
		}
		func_80088E10_97DC0(sp5A);
		func_80088E10_97DC0(sp58);
		func_80088E10_97DC0(sp56);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DA844_1F3554.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DAF5C_1F3C6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DAFD0_1F3CE0.s")

#ifdef NON_MATCHING
void func_802DB14C_1F3E5C(u8 arg0) {
	s16 sp5E;
	s16 sp5C;
	void *sp1C;
	void *sp18;
	s16 temp_t0;
	s32 temp_a0;
	s32 temp_a1_2;
	s32 temp_v0_2;
	s32 temp_v0_3;
	s32 var_a1;
	s32 var_a2;
	s32 var_t0;
	s32 var_v1;
	s8 temp_a1;
	s8 temp_v1;
	u8 temp_t6;
	u8 var_v0;
	void *temp_a3;
	void *temp_v0;
	void *var_a3;

	temp_t6 = arg0 & 0xFF;
	temp_a3 = (temp_t6 * 0x50) + &alienInstances;
	temp_v1 = (&D_8014DD50 + (temp_a3->unkC * 0x10))->unkC;
	temp_v0 = &D_8014DD50 + (temp_v1 * 0x10);
	temp_a1 = temp_v0->unkD;
	arg0 = temp_t6;
	sp18 = temp_v0;
	sp1C = temp_a3;
	sp5E = (s16) temp_v1;
	sp5C = (s16) temp_a1;
	func_80086230_951E0(temp_t6, temp_a1, 0x2000, temp_a3);
	temp_v0_2 = func_802D8578_1F1288(arg0, 0x14, 0x180);
	var_a3 = temp_a3;
	if (var_a3->unk20 & 0x40000000) {
		temp_t0 = vehicleSpecs[D_80052B34->unk1A].unkC + 0x23;
		if ((temp_v0_2 != 0) && !(var_a3->unk47 & 1)) {
			var_a3->unk12 = (s16) *(&D_802566C0 + (var_a3->unk1A * 0x68));
		}
		if ((var_a3->unk20 & 0x8000) && (var_a3->unk4B == 0xA)) {
			sp1C = var_a3;
			func_8008751C_964CC(arg0, 0x3E8, 0x3E8, var_a3);
		} else {
			sp1C = var_a3;
			func_8008751C_964CC(arg0, temp_t0, (s16) (temp_t0 + 0x14), var_a3);
		}
		var_a3 = sp1C;
		if (var_a3->unk20 & 0x1000) {
			var_v0 = var_a3->unk36;
			if ((s32) var_v0 < 3) {
				if (sp18->unkE == 0) {
					if ((s32) var_v0 < 2) {
						func_80081C84_90C34(sp5E, (var_v0 * 0x10) + &D_802E0710);
						var_v0 = var_a3->unk36;
					}
					var_a3->unk36 = (u8) (var_v0 + 1);
				}
				func_80081E5C_90E0C(sp5E);
			}
		}
	} else {
		sp18->unkA = 0;
	}
	var_v1 = var_a3->unk0 - D_80052B34->unk0;
	temp_a1_2 = -var_v1;
	temp_a0 = var_a3->unk4 - D_80052B34->unk4;
	if (temp_a1_2 < var_v1) {
		var_t0 = var_v1;
	} else {
		var_t0 = temp_a1_2;
	}
	temp_v0_3 = -temp_a0;
	var_a2 = temp_v0_3;
	if (temp_v0_3 < temp_a0) {
		var_a2 = temp_a0;
	}
	if (var_a2 < var_t0) {
		if (temp_a1_2 < var_v1) {

		} else {
			var_v1 = temp_a1_2;
		}
	} else {
		var_a1 = temp_v0_3;
		if (temp_v0_3 < temp_a0) {
			var_a1 = temp_a0;
		}
		var_v1 = var_a1;
	}
	if ((var_v1 < 0x64) && !(var_a3->unk20 & 0xC000)) {
		sp1C = var_a3;
		if (func_80084FE8_93F98(arg0, 0x800, var_a2, var_a3) != 0) {
			var_a3->unk4B = 0;
			var_a3->unk20 = (s32) (var_a3->unk20 | 0x8000);
		}
	}
	if (var_a3->unk20 & 0x8000) {
		func_802DAFD0_1F3CE0(arg0, *(&D_8014DD5D + (sp5C * 0x10)));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DB14C_1F3E5C.s")
#endif

void func_802DB428_1F4138(u8 arg0) {
    func_80137468_146418(arg0, 0x25);
    alienInstances[arg0].unk12 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DB468_1F4178.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DB7A4_1F44B4.s")

#ifdef NON_MATCHING
void func_802DBB58_1F4868(u8 arg0) {
	AlienInstance *alien;
	u8 index;

	index = arg0 & 0xFF;
	alien = &alienInstances[index];
	if (alien->unk20 & 0x600) {
		if ((func_80085448_943F8(index) != 0) && (func_80129354_138304(alien, 0, 0, 0, 0) != NULL)) {
			func_80137468_146418(index, 0x65);
			alien->unk1E = 0x1E;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBB58_1F4868.s")
#endif

#ifdef NON_MATCHING
void func_802DBBE4_1F48F4(u8 arg0) {
	AlienInstance *alien;
	s8 temp_x;
	s8 temp_z;

	func_80091470_A0420(arg0);
	alien = &alienInstances[arg0];
	if (!(alien->unk20 & 0x4000)) {
		func_8009170C_A06BC(arg0);
	}
	if (alien->unk20 & 0x100) {
		temp_x = (s8) (alien->unk0 >> 8);
		temp_z = (s8) (alien->unk4 >> 8);
		if (func_800B325C_C220C(temp_x, temp_z, 0x800) != 0) {
			if (func_80129354_138304((s32) alien, 0, 0, 0, 0) != 0) {
				func_80137468_146418((s32) arg0, 0x65);
				alien->unk1E = 0x1E;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBBE4_1F48F4.s")
#endif

#ifdef NON_MATCHING
void func_802DBCB0_1F49C0(u8 arg0) {
	AlienInstance *alien;
	s16 temp_v0;
	s32 temp_s0;
	s32 temp_v1;
	u32 temp_t5;

	temp_s0 = arg0 & 0xFF;
	alien = &alienInstances[temp_s0];
	if (!(alien->unk20 & 0x4000)) {
		if ((func_8008E478_9D428(temp_s0 & 0xFF, alien) != 0) || (func_8008E30C_9D2BC(temp_s0 & 0xFF, 0x80000000, alien) != 0)) {
			func_802DBB58_1F4868(temp_s0 & 0xFF);
		} else {
			func_802DBBE4_1F48F4(temp_s0 & 0xFF);
			if ((D_80052A8C & 0x3C) == (temp_s0 & 0x3C)) {
				temp_v1 = alien->unk20;
				if ((temp_v1 & 0x100)) {
					temp_t5 = ((u32) buildingInstances[alien->unk39].unk8) >> 0xC;
					if (((temp_t5 & 1) == 0) || (temp_t5 & 4)) {
						alien->unk20 = (s32) (temp_v1 & ~0x100);
					}
				}
			}
		}
	} else {
		func_802DBBE4_1F48F4(temp_s0 & 0xFF);
		if ((D_80052A8C & 0x3C) == (temp_s0 & 0x3C)) {
			temp_v1 = alien->unk20;
			if ((temp_v1 & 0x100)) {
				temp_t5 = ((u32) buildingInstances[alien->unk39].unk8) >> 0xC;
				if (((temp_t5 & 1) == 0) || (temp_t5 & 4)) {
					alien->unk20 = (s32) (temp_v1 & ~0x100);
				}
			}
		}
	}
	func_8008076C_8F71C(temp_s0 & 0xFF);
	temp_v0 = alien->unk1E;
	if (temp_v0 > 0) {
		alien->unk1E = (s16) (temp_v0 - 4);
	} else {
		alien->unk1E = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBCB0_1F49C0.s")
#endif

#ifdef NON_MATCHING
void func_802DBDDC_1F4AEC(u8 arg0) {
	AlienInstance *alien;
	s32 flags;
	u32 temp_t5;
	s16 temp_v0;

	alien = &alienInstances[arg0];

	if (!(alien->unk20 & 0x4000)) {
		if ((func_8008E478_9D428(arg0, alien) != 0) || (func_8008E30C_9D2BC(arg0, 0x80000000, alien) != 0)) {
			func_80085900_948B0(arg0, 0x3E8, alien);
			func_802DBB58_1F4868(arg0);
		} else {
			func_802DBBE4_1F48F4(arg0);
			flags = alien->unk20;
			if ((flags & 0x100) && ((D_80052A8C & 0x3F) == (arg0 & 0x3F))) {
				temp_t5 = (u32) *(u32*)((u8*)buildingInstances + 0x8 + alien->unk39 * 0x28) /* TODO: non-standard stride */ >> 0xC;
				if (((temp_t5 & 1) != 0) || (temp_t5 & 0x10)) {
					alien->unk20 = (s32) (flags & ~0x100);
				}
			}
		}
	}

	temp_v0 = alien->unk1E;
	if (temp_v0 != 0) {
		alien->unk1E = (s16) (temp_v0 - 1);
	}

	func_8008076C_8F71C(arg0);
	func_800A53C0_B4370(arg0, 0x100, 0x1000);
	func_8008EDFC_9DDAC(arg0);
	func_8008EF1C_9DECC(arg0);
	func_80137468_146418(arg0, 7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBDDC_1F4AEC.s")
#endif

#ifdef NON_MATCHING
void func_802DBF34_1F4C44(u8 arg0) {
	AlienInstance *alien;
	s32 flags;
	s16 val14;
	s16 val38;
	s16 delta;
	s32 limit;
	s32 param;
	s16 spec_val;

	/* Get alien instance from arg0; manages alien state machine for harvest behavior */
	alien = &alienInstances[arg0];
	flags = alien->unk20;

	/* Check if flags bits 0x600 are set */
	if (flags & 0x600) {
		/* Check if bit 0x100000 is NOT set */
		if (!(flags & 0x100000)) {
			/* Set flags with 0x40000000 OR'd in */
			alien->unk20 = flags | 0x40000000;
			alien->unk2C = 0x7FFF;
			alien->unk10 = 0;
			alien->unk38 = 0;
			alien->unk14 = arg0 & 1;

			/* If new flags still have 0x600 bits set, call function */
			if ((flags | 0x40000000) & 0x600) {
				/* spec lookup table indexed by specIndex*0x68 */
				spec_val = alienSpecs[alien->specIndex].unkC;
				param = (s32)((f64)spec_val * 0.75);
				func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4,
									(s32)(param & 0xFFFF), 0);
			}
		} else {
			/* flags & 0x40000000 is set */
			limit = D_80222A70;

			if (limit < alien->unk2) {
				val14 = alien->unk14;
				val38 = alien->unk38;

				if (val14 != 0) {
					if (val38 >= -8) {
						alien->unk38 = val38 - 1;
					}
				} else {
					if (val38 < 0xA) {
						alien->unk38 = val38 + 1;
					}
				}

				/* Calculate delta based on unk38 value */
				val38 = alien->unk38;
				delta = val38 * 0xC8;
				alien->unkE = (s16)(alien->unkE + delta);
				alien->unk6 = (s16)(alien->unk6 + delta);
				alien->unk10 = (s16)(alien->unk10 + 0x60);
				alien->unk12 = (s16)(alien->unk12 + 0x10);
			}

			/* Set fields based on unk38 */
			alien->unk8 = (s16)(alien->unk38 << 8);
			alien->unkA = (s16)(alien->unk10 * -4);

			/* Call function if unk2C & 3 == 0 */
			if (!(alien->unk2C & 3)) {
				func_800DEA08_ED9B8(alien->unk0, alien->unk2, alien->unk4,
									0xFA, 2, 2, 0x1E, 0xC8, 0x82, 0x82, 0x82);
			}

			/* Check if in range and adjust unk38 */
			limit = D_80222A70;
			if ((limit < alien->unk30) && (alien->unk2 < limit)) {
				alien->unk38 = 0;
				alien->unk12 = (s16)((s16)alien->unk12 >> 1);
				alien->unk10 = (s16)((s16)alien->unk10 >> 1);
			}

			/* Call with spec value */
			spec_val = alienSpecs[alien->specIndex].unkC;
			func_8008AAFC_99AAC(arg0, (s32)spec_val, 3);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DBF34_1F4C44.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DC230_1F4F40.s")

#ifdef NON_MATCHING
void func_802DC4A8_1F51B8(u8 idx) {
	AlienInstance *alien;
	u8 color_r;
	u8 color_g;
	u8 color_b;
	s16 sp5C;
	s16 sp5A;
	s16 sp58;
	s16 sp56;
	s32 random_val;
	s32 divisor;
	u8 *color_ptr;
	s32 color_offset;
	s32 extra_component;

	alien = &alienInstances[idx & 0xFF];

	if (!(alien->unk20 & 0x100000) && (alien->unk20 & 0x600)) {
		alien->unk2C = 0x50;
		color_r = D_802E0884[0];
		color_g = D_802E0884[1];
		color_b = D_802E0884[2];
		func_800D05A8_DF558(alien->unk0, alien->unk2, alien->unk4, 0x7D0, color_r, color_g, color_b);
		return;
	}

	random_val = func_800038E0_44E0();

	divisor = (random_val % 10) + 4;
	if ((alien->unk2C % divisor) == 0) {
		random_val = func_800038E0_44E0();
		sp5C = random_val % 4;
		if (random_val < 0 && (random_val & 0x3) != 0) {
			sp5C = (random_val & 0x3) - 4;
		}

		random_val = func_800038E0_44E0();
		sp5A = ((random_val % 90) + alien->unk0) - 0x2D;

		random_val = func_800038E0_44E0();
		sp58 = (random_val % 160) + alien->unk2;

		random_val = func_800038E0_44E0();
		sp56 = ((random_val % 90) + alien->unk4) - 0x2D;

		random_val = func_800038E0_44E0();
		color_offset = (sp5C * 3) + (u32)D_802E0884;
		extra_component = ((random_val % 400) + 0x64) & 0xFFFF;

		color_ptr = (u8 *)color_offset;
		func_800D05A8_DF558(sp5A, sp58, sp56, extra_component, color_ptr[0], color_ptr[1], color_ptr[2]);

		color_ptr = (u8 *)color_offset;
		func_800CA5EC_D959C(sp5A, sp58, sp56, 0, 0x7F, 0, 0x64, 0xC, 0x8, 0xFF,
							(s32)color_ptr[0], (s32)color_ptr[1], (s32)color_ptr[2], 0x96);
	}

	if (alien->unk2C == 1) {
		func_801371B8_146168((s32)alien, 0xEB, alien->unk0, alien->unk2, alien->unk4, -1.0f);

		color_r = D_802E0884[0];
		color_g = D_802E0884[1];
		color_b = D_802E0884[2];
		func_800D05A8_DF558(alien->unk0, alien->unk2, alien->unk4, 0x7D0, color_r, color_g, color_b);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DC4A8_1F51B8.s")
#endif

#ifdef NON_MATCHING
void func_802DC738_1F5448(u8 arg0) {
	AlienInstance *alien;
	AlienSpec *spec_base;
	s16 sp48;
	s32 sp40;
	s32 sp38;
	s32 sp34;
	s32 sp6C;
	s32 sp68;
	s32 sp64;
	s32 sp60, sp5C, sp58;
	s32 sp54, sp50, sp4C;
	s16 sp62, sp5E, sp5A, sp56;
	u8 sp77;
	s8 sp75;
	s32 angle;
	s32 param;
	f32 cos_val;

	/* Get alien instance and initial state */
	alien = &alienInstances[arg0];
	sp77 = alien->unk36;
	spec_base = &D_8014DD50[alien->unkC * 0x10];
	sp75 = spec_base[spec_base->unkC * 0x10].unkD;
	sp40 = sp77 & 0xFF;

	if ((sp77 & 0xFF) < 4) {
		spec_base = &D_8014DD50[(sp75 & 0xFF) * 0x10];
		angle = spec_base->unk0;
		sp6C = angle + 0x17;
		param = spec_base->unkA & 0xFFFF;
		sp38 = param;

		sp48 = coss(param);

		/* Compute y position offset using trig value */
		sp68 = (s32)(((f64)spec_base->unk2 + D_802E0F68 * ((f64)(f32)sp48 / 32768.0)));

		sp48 = sins(spec_base->unkA);
		cos_val = (f32)coss(spec_base->unkA);
		sp64 = (s32)((f64)spec_base->unk4 + D_802E0F70 * (((f64)(f32)sp48 / 32768.0)));

		sp34 = sp64;

		/* Call animation update with computed parameters */
		func_80128428_1373D8(alien, spec_base->unkA, (s16)sp38, (s16)sp64, &sp60, &sp5C, &sp58);
		func_80128428_1373D8(alien, (s16)(sp6C * -1), (s16)sp38, (s16)sp64, &sp54, &sp50, &sp4C);
		func_800D16BC_E066C((s16)sp62, (s16)sp5E, (s16)sp5A, (s16)sp56, sp50, sp4C, 1);
	}

	/* Check state condition */
	if (D_8014DD50[(sp75 & 0xFF) * 0x10].unkE == 0) {
		if (sp40 == 3) {
			spec_base = &alienSpecs[alien->unk1A];
			spec_base->unk20 = 0;
			alien->unk1E = 0;
			spec_base->unk22 = (s16)sp68;
			spec_base->unk24 = (s16)sp64;
			func_80087188_96138(arg0, 0, 0x20);
		}

		if (sp40 < 5) {
			func_80081C84_90C34((u8)sp75, (void *)(&D_802E0890[sp77 * 0x10]));
		} else {
			alien->unk20 = alien->unk20 & 0xFFFF5FFF;
		}

		alien->unk36 = (u8)(alien->unk36 + 1);
	}

	func_80081E5C_90E0C((u8)sp75);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DC738_1F5448.s")
#endif

#ifdef NON_MATCHING
void func_802DCA54_1F5764(u8 arg0) {
	s8 sp7E;
	s32 sp6C;
	s16 sp6A;
	s16 sp66;
	f32 temp_f0;
	f32 temp_f20;
	f32 temp_f22;
	s16 temp_v0_5;
	s16 temp_v1_2;
	s16 var_s0;
	s16 var_s2;
	s16 var_v0;
	s32 temp_t1;
	s32 temp_v0;
	s32 temp_v0_2;
	s32 temp_v0_3;
	s32 temp_v1;
	s32 var_s7;
	u8 temp_v0_4;
	AlienInstance *temp_s1;

	temp_s1 = &alienInstances[arg0];
	sp6C = 0x1C2;
	sp66 = 0; /* TODO: initialize from stack */
	temp_v0 = temp_s1->x - temp_s1->unk14;
	temp_v1 = temp_s1->y - temp_s1->unk18;
	var_s7 = 0;
	sp7E = D_8014DD5C[temp_s1->unkC * 0x10];
	if (((temp_v0 * temp_v0) + (temp_v1 * temp_v1)) < 0x57E40) {
		temp_v0_2 = temp_s1->flags;
		temp_t1 = temp_v0_2 | 0x10;
		if (!(temp_v0_2 & 0x10)) {
			temp_s1->flags = temp_t1;
			temp_s1->flags = (s32) (temp_t1 | 0x2000);
			temp_s1->state = 0x96U;
			temp_s1->unk1E = 0;
		}
	}
	temp_v0_3 = temp_s1->flags;
	if (temp_v0_3 & 0x2000) {
		if (temp_v0_3 & 0x8000) {
			func_802DC738_1F5448(arg0);
		} else if (func_800850DC_9408C(arg0, 0x1000) != 0) {
			temp_s1->unk36 = 0;
			temp_s1->flags = (s32) (temp_s1->flags | 0x8000);
		}
		sp6C = 0x190;
	}
	temp_f20 = (f32) (((f64) (f32) sins((temp_s1->angle - 0x4000) & 0xFFFF) / 32768.0) * 256.0);
	var_s0 = 3;
	var_s2 = sp66;
	temp_f22 = (f32) (((f64) (f32) coss((temp_s1->angle - 0x4000) & 0xFFFF) / 32768.0) * -256.0);
	do {
		temp_f0 = (f32) var_s0;
		func_8011E6FC_12D6AC((s16) (s32) ((f32) temp_s1->x - (temp_f20 * temp_f0)), (s16) (s32) ((f32) temp_s1->y - (temp_f22 * temp_f0)), &sp6A);
		if (sp6A < D_80222A70) {
			sp6A = (s16) D_80222A70;
		}
		var_v0 = sp6A;
		temp_v1_2 = D_80052B34->unk2;
		var_s0 -= 1;
		if (sp6A < temp_v1_2) {
			var_v0 = temp_v1_2;
		}
		if (temp_s1->health < (alienSpecs[temp_s1->type].unk58 + var_v0)) {
			var_s7 = 1;
			if (var_s2 < var_v0) {
				var_s2 = var_v0;
			}
		}
	} while (var_s0 >= 0);
	if (var_s7 != 0) {
		func_800A5554_B4504(arg0, (var_s2 - sp6A) + sp6C, 0.05f, (u8) sp7E);
	} else {
		func_800A5554_B4504(arg0, (var_v0 - sp6A) + sp6C, 0.05f, (u8) sp7E);
	}
	temp_v0_4 = temp_s1->state;
	if (temp_v0_4 != 0) {
		temp_s1->state = (u8) (temp_v0_4 - 1);
	} else {
		temp_s1->flags = (s32) (temp_s1->flags & ~0x10);
	}
	temp_v0_5 = temp_s1->unk1E;
	if (temp_v0_5 != 0) {
		temp_s1->unk1E = (s16) (temp_v0_5 - 1);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DCA54_1F5764.s")
#endif

void func_802DCDD4_1F5AE4(u8 arg0) {
	AlienInstance *alien;

	func_80137468_146418(arg0, 0x1C);
	func_800873A8_96358(arg0);
	alien = &alienInstances[arg0];
	alien->unk20 = (s32) (alien->unk20 & ~0x10);
	alien->unk6 = (s16) alien->unkE;
}

#ifdef NON_MATCHING
void func_802DCE34_1F5B44(u8 arg0) {
	AlienInstance *alien;
	AlienSpec *spec;
	s16 sp46;
	s16 sp44;
	s16 sp3C;
	s16 sp42;
	s16 sp40;
	s16 sp3E;
	u16 sp34;
	u16 sp32;
	u16 sp30;
	s32 result;
	s16 divResult;
	s32 temp;

	alien = &alienInstances[arg0];

	if (alien->unk20 & 0x600) {
		sp3C = alien->specIndex;
		sp46 = alien->unk0;
		sp44 = alien->unk4;
		result = func_800B84D0_C7480(alien->unk0, alien->unk4);
		spec = &alienSpecs[sp3C];
		if ((spec->unk58 + (result >> 8)) < alien->unk2) {
			alien->unk10 = (s16) ((f64) alien->unk10 + 24.0);
			alien->unk8 = (s16) (alien->unk8 + (s32) (((f64) (f32) sins((D_80052A8C << 0xB) & 0xFFFF) / 32768.0) * 512.0));
			alien->unkA = (s16) (alien->unkA + (s32) (((f64) (f32) coss(((D_80052A8C + 0xC) << 0xB) & 0xFFFF) / 32768.0) * 512.0));
		} else {
			spec = &alienSpecs[sp3C];
			result = func_800B84D0_C7480(alien->unk0, alien->unk4);
			alien->unk2 = (s16) (spec->unk58 + (result >> 8));
		}

		if (!(D_80052A8C & 3)) {
			spec = &alienSpecs[sp3C];
			sp42 = spec->unk34;
			sp40 = spec->unk36;
			sp3E = spec->unk38;
			sp30 = func_800038E0_44E0();
			sp32 = func_800038E0_44E0();
			sp34 = func_800038E0_44E0();

			divResult = (s16) ((((s32) sp30 % sp42) + alien->unk0) - (sp42 >> 1));
			temp = (((s32) sp32 % (sp3E >> 1)) + alien->unk2) - (sp3E >> 1);
			func_800DF848_EE7F8(
				divResult,
				(s16) temp,
				(s16) ((((s32) sp34 % sp40) + alien->unk4) - (sp40 >> 1)),
				((func_800038E0_44E0() % 40) + 0x1E) & 0xFFFF,
				0
			);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DCE34_1F5B44.s")
#endif

#ifdef NON_MATCHING
void func_802DD140_1F5E50(u8 arg0, u8 arg1) {
	AlienInstance *alien;

	alien = &alienInstances[arg0];

	if (alien->unk20 & 0x600) {
		alien->unk20 |= 0x40000000;

		if (!(alien->unk20 & 0x100000)) {
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, alienSpecs[alien->specIndex].unkC, 4);
			alien->unk2C = 0x50;
		}

		func_802DCE34_1F5B44(arg0);

		if (alien->unk2C == 1) {
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, alienSpecs[alien->specIndex].unkC, 4);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DD140_1F5E50.s")
#endif

void func_802DD244_1F5F54(u8 arg0) {
    alienInstances[arg0].unk20 |= 0x08000000;
    func_800873A8_96358(arg0);
}

#ifdef NON_MATCHING
void func_802DD294_1F5FA4(u8 arg0) {
	AlienInstance *alien;
	AlienSpec *spec;
	s32 var_a2;
	s16 var_a0;
	s16 var_v0;
	s32 temp_f10;
	s16 temp_a0;
	s16 temp_a0_2;
	s16 temp_a0_3;
	s16 temp_v0_2;
	s16 temp_v0_3;
	s16 temp_v0_4;

	alien = &alienInstances[arg0];
	var_v0 = alien->unk12;
	var_a2 = var_v0 - alien->unk48;

	if (var_a2 > 0) {
		func_80137468_146418(arg0, 0xD0);
		var_v0 = alien->unk12;
	}

	if ((var_v0 == 0) && (var_a2 == 0)) {
		func_80137468_146418(arg0, 0xD1);
	}

	spec = &alienSpecs[alien->specIndex];
	temp_a0 = spec->unk40;
	temp_f10 = (s32)(((f32)var_a2 / (f32)temp_a0) * D_802E0F78 * 2.0f);

	if ((temp_f10 == 0) || (alien->unk12 >= (temp_a0 - (spec->unk3E * 2)))) {
		temp_v0_2 = alien->unkA;
		temp_a0_2 = temp_v0_2 - 0x80;
		if (temp_v0_2 > 0) {
			if (temp_a0_2 < 0) {
				alien->unkA = 0;
			} else {
				alien->unkA = temp_a0_2;
			}
		}
		temp_a0_3 = alien->unkA + 0x80;
		if (alien->unkA < 0) {
			if (temp_a0_3 > 0) {
				alien->unkA = 0;
			} else {
				alien->unkA = temp_a0_3;
			}
		}
	} else {
		alien->unkA = (s16)(alien->unkA - temp_f10);
	}

	if (alien->unkA >= -0x1387) {
		var_v0 = alien->unkA;
	} else {
		alien->unkA = -0x1388;
	}

	temp_v0_3 = alien->unkA;
	if (temp_v0_3 < 0x1388) {
		var_v0 = temp_v0_3;
	} else {
		alien->unkA = 0x1388;
	}

	alien->unk48 = alien->unk12;
	func_8008751C_964CC(arg0, 0x400, 0x320);

	if (func_80084FE8_93F98(arg0, 0x400) == 0) {
		alien->unk20 = (s32)(alien->unk20 & ~0x1000);
	}

	if (alien->unk20 & 0x1000) {
		alien->unk2A = alien->unk6;
		if (alien->unk1E == 0) {
			alien->unk2C = (s16)(alien->unk2C + 1);
			var_a0 = alien->unk2C;
			if ((var_a0 < 4) && !(alien->unk47 & 1)) {
				func_80087188_96138(arg0, 0, 0xF);
				var_a0 = alien->unk2C;
			}
			if (var_a0 >= 4) {
				func_80084904_938B4(arg0);
				alien->unk20 = (s32)(alien->unk20 & ~0x1000);
			}
		}
	} else {
		if ((func_80084FE8_93F98(arg0, 0x400) != 0) && !(alien->unk47 & 1) &&
			(D_80222A70 >= D_80052B34->unk2)) {
			alien->unk2C = 0;
			alien->unk20 = (s32)(alien->unk20 | 0x1000);
		}
	}

	temp_v0_4 = alien->unk1E;
	if (temp_v0_4 != 0) {
		alien->unk1E = (s16)(temp_v0_4 - 1);
	}

	func_800E24B8_F1468(arg0);
	func_800A53C0_B4370(arg0, -0xFA, 0xBB8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DD294_1F5FA4.s")
#endif

void func_802DD5A0_1F62B0(u8 arg0) {
    func_802DD140_1F5E50(arg0, 4);
}

#ifdef NON_MATCHING
void func_802DD5CC_1F62DC(u8 arg0) {
	AlienInstance *alien_instance;
	Unk8014DD50 *lookup_entry;
	s16 temp_t1;
	s16 temp_v1;
	s16 temp_a3;
	s16 sp5A;
	s16 sp58;
	s16 sp52;
	s16 sp5C;
	s16 sp5E;
	s16 sp48;
	s16 sp4A;
	s16 sp4C;
	s8 sp65;
	s8 sp67;
	s32 sp3C;
	s32 sp40;
	s32 sp44;
	u8 temp_t2;
	u8 temp_t6;
	s32 temp_a0;
	s32 temp_t9;
	s32 temp_v0;
	s32 var_a0;
	s8 temp_v0_2;
	s8 var_v1;

	/* Extract alien index and get alien instance pointer */
	temp_t6 = arg0 & 0xFF;
	alien_instance = &alienInstances[temp_t6];

	/* Load alien instance unkC field and use as lookup index */
	temp_t1 = alien_instance->unkC;
	lookup_entry = &D_8014DD50[temp_t1];
	temp_v1 = lookup_entry->unkC;

	/* Chain lookup in D_8014DD50 array */
	lookup_entry = &D_8014DD50[temp_v1];
	temp_a3 = lookup_entry->unkD;

	/* Store intermediate values to locals for later use */
	sp5A = temp_a3;
	sp58 = D_8014DD50[temp_a3].unkD;
	sp52 = alien_instance->unk1A;
	sp5C = temp_a3;
	sp5E = sp58;
	sp65 = arg0;
	sp67 = arg0;

	/* Call first state machine function */
	func_8008751C_964CC(temp_t6, 0x2BC, 0x384);

	/* Call second function and check return value */
	temp_v0 = func_80086230_951E0(arg0, (s16)temp_v1, 0xFFFF);

	/* Check if 0x2000 flag is set in alien state flags */
	var_a0 = alien_instance->unk20;
	if (var_a0 & 0x2000) {
		s16 a1_lookup;
		a1_lookup = sp5A;
		if (var_a0 & 0x04000000) {
			a1_lookup = sp58;
		}
		lookup_entry = &D_8014DD50[a1_lookup];
		temp_t9 = var_a0 & ~0x2000;
		lookup_entry->unk4 = (s16)(lookup_entry->unk4 + 0x19);
		alien_instance->unk20 = temp_t9;
		var_a0 = temp_t9;
	}

	/* Check if 0x1000 flag is set (animation playing) */
	if (var_a0 & 0x1000) {
		temp_v0_2 = func_80081F18_90EC8(arg0, 2, 7, &sp5C, &D_802E09C0);
		var_v1 = temp_v0_2;
		if (temp_v0_2 == 1) {
			sp65 = 1;
			func_80137468_146418(arg0, 0xCF);
			var_v1 = sp65;
		}
		if (var_v1 == 7) {
			alien_instance->unk20 = (s32)(alien_instance->unk20 & ~0x1000);
		}
	} else if (temp_v0 == 0) {
		/* Handle movement direction based on 0x04000000 bit */
		if (var_a0 & 0x04000000) {
			sp48 = 0x4A;
		} else {
			sp48 = -0x4A;
		}
		sp4A = -0x13;
		sp4C = 0xA5;

		/* Call movement calculation function twice with different values */
		func_800A931C_B82CC(sp65, &sp48, &sp3C);
		sp48 = (s16)sp3C;
		sp4A = (s16)sp40;
		sp4C = (s16)sp44;
		func_800A931C_B82CC(sp67, &sp48, &sp3C);

		/* Store movement values to alien spec structure */
		AlienSpec *spec = &alienSpecs[sp52];
		spec->unk20 = (s16)sp3C;
		spec->unk28 = (s16)sp40;
		spec->unk30 = (s16)sp44;

		/* Check if animation trigger was successful */
		if (func_800871CC_9617C(arg0, 0, 0x32) != 0) {
			s16 a1_lookup_2;
			temp_a0 = alien_instance->unk20;
			a1_lookup_2 = sp5A;
			if (temp_a0 & 0x04000000) {
				a1_lookup_2 = sp58;
			}
			lookup_entry = &D_8014DD50[a1_lookup_2];
			alien_instance->unk20 = (s32)(temp_a0 | 0x2000);
			lookup_entry->unk4 = (s16)(lookup_entry->unk4 - 0xF);
			alien_instance->unk2 = (s16)(D_80222A70 + 4);

			/* Check alignment and possibly trigger callback */
			if (((s32)alien_instance->unk26 % 4) == 0) {
				func_800DEF2C_EDEDC(alien_instance->unk0, (s16)D_80222A70, alien_instance->unk4, 0xB4, 1);
			}

			/* Increment animation counter */
			temp_t2 = alien_instance->unk26 + 1;
			alien_instance->unk1E = 5;
			alien_instance->unk26 = temp_t2;

			if ((temp_t2 & 0xFF) >= 0x11) {
				alien_instance->unk36 = 0;
				alien_instance->unk26 = 0;
				alien_instance->unk20 = (s32)(alien_instance->unk20 | 0x1000);
			}
			alien_instance->unk20 = (s32)(alien_instance->unk20 ^ 0x04000000);
		}
	}

	/* Final state machine callback */
	func_800E24B8_F1468(arg0);

	/* Decrement animation counter if nonzero */
	s16 anim_counter = alien_instance->unk1E;
	if (anim_counter != 0) {
		alien_instance->unk1E = (s16)(anim_counter - 1);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DD5CC_1F62DC.s")
#endif

#ifdef NON_MATCHING
void func_802DD8E8_1F65F8(u8 arg0) {
	s16 sp28;
	s32 temp_v0;
	u8 temp_a1;
	u8 temp_a2;
	AlienInstance *alien;

	alien = &alienInstances[arg0];
	temp_v0 = alien->unk20;
	if (temp_v0 & 0x600) {
		if (!(temp_v0 & 0x100000)) {
			sp28 = sins(alien->unk6);
			func_800DF848_EE7F8((s16) (s32) ((f64) alien->unk0 - (((f64) (f32) sp28 / 32768.0) * D_802E0F80)), alien->unk2, (s16) (s32) ((((f64) (f32) coss(alien->unk6) / 32768.0) * D_802E0F80) + (f64) alien->unk4), alienSpecs[alienInstances[arg0].unk1A].unkC, 2);
			temp_a1 = (&D_8014DD50[((&D_8014DD50[alienInstances[arg0].unkC])->unkC)])->unkC;
			temp_a2 = (&D_8014DD50[temp_a1])->unkD;
			func_80088E10_97DC0((s16) temp_a2);
		}
		func_802DD140_1F5E50(arg0, 4);
		alien->unk8 = (s16) (alien->unk8 - 0x12C);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DD8E8_1F65F8.s")
#endif

#ifdef NON_MATCHING
void func_802DDA64_1F6774(u8 arg0, u8 arg1, u8 arg2) {
	AlienInstance *alien_ptr;
	AlienInstance *alien1;
	AlienInstance *alien2;
	AlienInstance *alien3;
	Unk8014DD50 *node_ptr;
	Unk8014DD50 *node_ptr2;
	s16 sp5C;
	s16 sp5E;
	s16 sp60;
	s16 sp62;
	s32 sp68;
	s32 sp6C;
	s32 sp70;
	AlienInstance *sp74;
	AlienInstance *sp48;
	Unk8014DD50 *sp44;
	Unk8014DD50 *sp3C;
	s32 flags;
	s32 flags2;
	s16 counter;
	u16 value_u16;
	s8 node_id;
	s8 next_node;
	s8 spawn_id;

	alien_ptr = &alienInstances[arg0 & 0xFF];
	spawn_id = (&D_8014DD50[alien_ptr->unkC])->unkC;
	next_node = (&D_8014DD50[spawn_id])->unkD;
	alien1 = &alienInstances[arg2 & 0xFF];
	sp48 = &alienInstances[arg1 & 0xFF];
	node_ptr = &D_8014DD50[next_node];
	flags = alien1->unk20 & 0x1000;
	spawn_id = node_ptr->unkD;

	if ((flags == 0) && (alien1->unk2C < 0x960)) {
		if (func_80084FE8_93F98(arg0 & 0xFF, 0x400) != 0) {
			alien1->unk20 = alien1->unk20 | 0x1000;
		}
	} else {
		if (flags != 0) {
			node_ptr2 = &D_8014DD50[spawn_id];
			counter = ((D_80052A8C & 1) * 0x258) - 0x258;
			node_ptr->unkA = counter;
			node_ptr2->unkA = counter;
			node_ptr->unk6 = (u16)(node_ptr->unk6 - 0x78);
			node_ptr2->unk6 = (u16)(node_ptr2->unk6 + 0x78);
			sp5C = 0x6E;
			sp5E = -0xA;
			sp60 = 0x1B8;
			sp3C = node_ptr2;
			sp44 = node_ptr;
			sp62 = spawn_id;
			func_800A931C_B82CC(next_node, &sp5C, &sp68);
			func_80128428_1373D8(alien_ptr, sp5C, sp5E, sp60, &sp70, &sp6C, &sp68);
			func_800D16BC_E066C(sp70, sp6C, sp68, alien1->unk0, (s32)alien1->unk2, (s32)alien1->unk4, 1);
			sp5C = -0x50;
			sp5E = -0x19;
			sp60 = 0x1B8;
			func_800A931C_B82CC((sp62 >> 24) & 0xFF, &sp5C, &sp68);
			func_80128428_1373D8(alien_ptr, sp5C, sp5E, sp60, &sp70, &sp6C, &sp68);
			func_800D16BC_E066C(sp70, sp6C, sp68, alien1->unk0, (s32)alien1->unk2, (s32)alien1->unk4, 1);
			sp3C = node_ptr2;
			sp44 = node_ptr;
		} else {
			value_u16 = node_ptr->unk6;
			node_ptr2 = &D_8014DD50[spawn_id];
			value_u16 = value_u16 + 0x3E8;
			if (node_ptr->unk6 != 0) {
				node_ptr->unk6 = value_u16;
				if ((value_u16 & 0xFFFF) < 0x3E8) {
					node_ptr->unk6 = 0;
				}
			}
			flags2 = node_ptr2->unk6 - 0x3E8;
			if (flags2 < 0) {
				node_ptr2->unk6 = 0;
			} else {
				node_ptr2->unk6 = (u16)flags2;
			}
		}

		flags2 = sp48->unk20;
		if (flags2 & 0x1000) {
			counter = alien_ptr->unk2C;
			if (counter != 0) {
				alien_ptr->unk2C = counter - 1;
				if (alien_ptr->unk2C < 0xF) {
					sp74->unk20 = sp74->unk20 | 0x1000;
				}
			} else {
				sp48->unk20 = flags2 & ~0x1000;
				alien1->unk20 = alien1->unk20 & ~0x1000;
				sp74->unk20 = sp74->unk20 & ~0x1000;
				node_ptr->unkA = 0;
				alien1->unk20 = alien1->unk20 | 0x2000;
				node_ptr2->unkA = 0;
				alien1->unk26 = 4;
				alien1->unk36 = 4;
				func_800D05A8_DF558(alien1->unk0, alien1->unk2, alien1->unk4, 0x1F4, 0xFF, 0xFF, 0xFF);
			}
		} else if (alien1->unk2C >= 0x7D1) {
			sp48->unk20 = flags2 | 0x1000;
			alien_ptr->unk2C = 0x32;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DDA64_1F6774.s")
#endif

#ifdef NON_MATCHING
void func_802DDE04_1F6B14(u8 arg0) {
	AlienInstance *alien1;
	AlienInstance *alien2;
	Unk8014DD50 *lookup_table;
	Unk8014DD50 *weapon_struct;
	s16 temp_value;
	s32 weapon_dmg;
	s32 dmg_threshold;
	s8 spec_id1;
	s8 spec_id2;
	s8 spec_id3;
	s8 spec_id4;
	s8 spec_id5;
	s16 value40;
	s16 value42;
	s16 value44;
	s16 value46;
	s16 value48;

	alien1 = &alienInstances[arg0];
	alien2 = &alienInstances[alien1->unk25];

	if (!(alien2->unk20 & 0x6000) && ((alien1->unk20 & 0xF000) != 0xF000) && (alien1->unk1E == 0) && (alien1->unk2C != 0)) {
		if (func_80084FE8_93F98(arg0, 0x800) != 0) {
			alien2->unk20 = (s32) (alien2->unk20 | 0x2000);
			alien1->unk36 = 0;
			alien1->unk2C = (s16) (alien1->unk2C - 1);
		}
	} else {
		temp_value = alien1->unk2C;
		lookup_table = &D_8014DD50[alien1->unkC];
		spec_id1 = lookup_table->unkC;
		value40 = (s16) spec_id1;

		lookup_table = &D_8014DD50[spec_id1];
		spec_id2 = lookup_table->unkC;
		value42 = (s16) spec_id2;

		lookup_table = &D_8014DD50[spec_id2];
		spec_id3 = lookup_table->unkC;
		value44 = (s16) spec_id3;

		lookup_table = &D_8014DD50[spec_id3];
		spec_id4 = lookup_table->unkC;
		value46 = (s16) spec_id4;

		lookup_table = &D_8014DD50[spec_id4];
		spec_id5 = lookup_table->unkC;
		value48 = (s16) spec_id5;

		if (alien2->unk20 & 0x2000) {
			dmg_threshold = 0x2710;
		} else {
			dmg_threshold = 0;
			if ((alien1->unk20 & 0xF000) == 0xF000) {
				dmg_threshold = 0x1D4C;
			}
		}

		if (temp_value < dmg_threshold) {
			alien1->unk2C = (s16) (temp_value + 0x64);
		} else if (dmg_threshold < temp_value) {
			alien1->unk2C = (s16) (temp_value - 0x64);
		}

		weapon_struct = &D_8014DD50[spec_id5];
		weapon_struct->unk8 = (u16) (weapon_struct->unk8 + alien1->unk2C);

		func_80137468_146418(arg0, 0x261);

		if ((alien1->unk2C >= 0x26AD) && ((alien2->unk20 & 0x2000) != 0)) {
			alien2->unk20 = (s32) (alien2->unk20 | 0x1000);
			weapon_dmg = func_80081F18_90EC8(arg0, 5, 4, &value40, &D_802E0B08);

			if (weapon_dmg == 2) {
				func_80087188_96138(arg0, 0, 0);
				weapon_dmg = alien1->unk20;

				if ((weapon_dmg & 0xF000) != 0xF000) {
					if (weapon_dmg & 0x6000) {
						alien1->unk1E = (s16) ((func_800038E0_44E0() % 70) + 0x1E);
						return;
					}
					alien1->unk1E = (s16) ((func_800038E0_44E0() % 100) + 0x32);
				}
			} else if (weapon_dmg == 4) {
				alien2->unk20 = (s32) (alien2->unk20 & ~0x3000);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DDE04_1F6B14.s")
#endif

#ifdef NON_MATCHING
void func_802DE0C8_1F6DD8(u8 arg0) {
	AlienInstance *alienIdx;
	AlienInstance *otherIdx;
	VehicleInstance *vehicle;
	s16 sp88;
	s16 sp8A;
	s16 sp8C;
	s16 sp8E;
	s16 sp90;
	s16 sp92;
	s16 sp70;
	s16 sp72;
	s16 sp74;
	s16 sp76;
	s16 sp78;
	s16 sp7A;
	s32 sp68;
	s16 temp_v1;
	s16 deltaX;
	s16 var_a1;
	s16 temp_a2;
	s16 temp_a3;
	s8 lookupVal;
	s8 lookupVal2;
	s8 lookupVal3;
	s8 lookupVal4;
	s8 lookupVal5;
	s32 temp_a0_2;
	s32 temp_a1;
	s32 temp_t0_2;
	s32 temp_v1_2;
	u8 alienId;
	s8 funcResult;

	alienId = arg0 & 0xFF;
	alienIdx = &alienInstances[alienId];
	otherIdx = &alienInstances[alienIdx->unk25];
	vehicle = D_80052B34;

	if (!(otherIdx->unk20 & 0x6000) && ((alienIdx->unk20 & 0xF000) != 0xF000) && (alienIdx->unk1E == 0)) {
		temp_v1 = func_80003824_4424(
			(f32)(vehicle->unk0 - alienIdx->unk0),
			(f32)(vehicle->unk4 - alienIdx->unk4)
		) - alienIdx->unkE;

		var_a1 = -temp_v1;
		if (-temp_v1 < temp_v1) {
			var_a1 = temp_v1;
		}

		if (var_a1 >= 0x4001) {
			otherIdx->unk20 |= 0x4000;
			alienIdx->unk36 = 0;
		}
	} else {
		sp88 = alienIdx->unkC;
		lookupVal = D_8014DD50[sp88].unkC;
		sp8A = (s16)lookupVal;

		lookupVal2 = D_8014DD50[lookupVal].unkC;
		sp8C = (s16)lookupVal2;

		lookupVal3 = D_8014DD50[lookupVal2].unkC;
		sp8E = (s16)lookupVal3;

		lookupVal4 = D_8014DD50[lookupVal3].unkC;
		sp90 = (s16)lookupVal4;

		lookupVal5 = D_8014DD50[lookupVal4].unkC;
		sp92 = (s16)lookupVal5;

		if (otherIdx->unk20 & 0x4000) {
			funcResult = func_80081F18_90EC8(alienId, 6, 4, &sp88, &D_802E0C9C);

			if (funcResult == 2) {
				func_80137468_146418(alienId, 0x259);
				func_80128504_1374B4(alienIdx, 1, (s32*)&sp78, (s32*)&sp74, (s32*)&sp70);
				func_800D05A8_DF558(sp7A, sp76, sp72, 0x3E8, 0x8C, 0x8C, 0xC8);
				func_800DEE5C_EDE0C(sp7A, (s16)((s32)sp74 + 5), sp72, 0x50, 0xA);
				func_800DEA08_ED9B8(sp7A, sp76, sp72, 0x258, 8, 6, 0x28, 0xDC, 0xA6, 0x85, 0x2F);
				func_800C541C_D43CC(sp7A, sp76, sp72, 0, 0x7F, 0, 0x78, 0xFF, 0x3C, 0x14, 0x6A, 0x53, 0);
				alienIdx->unk20 |= 0x400000;
				func_80124B5C_133B0C(sp7A, sp76, sp72, 0x2710, 0x1F4);
				alienIdx->unk20 &= 0xFFBFFFFF;

				temp_a2 = vehicle->unk0;
				temp_a3 = vehicle->unk4;
				temp_a0_2 = temp_a2 - (s32)sp78;
				temp_a1 = temp_a3 - (s32)sp70;
				temp_v1_2 = (temp_a0_2 * temp_a0_2) + (temp_a1 * temp_a1);

				if ((temp_v1_2 < 0x225510) && !(vehicle->unk20 & 2)) {
					temp_t0_2 = 0x225510 - temp_v1_2;
					deltaX = alienIdx->unk0 - temp_a2;
					sp68 = temp_t0_2;

					func_80102DDC_111D8C(
						vehicle,
						func_80003824_4424(
							(f32)-(alienIdx->unk0 - temp_a2),
							(f32)-(alienIdx->unk4 - temp_a3)
						),
						(s16)(s32)(((f32)temp_t0_2 / D_802E0F88) + 8192.0f),
						(f32)(temp_t0_2 * 0x32) / D_802E0F8C
					);

					vehicle->unk22 = (s16)(0x3E8 - (func_800038E0_44E0() % 2000));
					vehicle->unk24 = (s16)(0x3E8 - (func_800038E0_44E0() % 2000));
					vehicle->unk26 = (s16)(0x3E8 - (func_800038E0_44E0() % 2000));
				}
			} else {
				if (funcResult == 3) {
					otherIdx->unk20 &= ~0x1000;
					return;
				}
				if (funcResult == 4) {
					otherIdx->unk20 &= ~0x4000;
				}
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DE0C8_1F6DD8.s")
#endif

#ifdef NON_MATCHING
void func_802DE594_1F72A4(u8 arg0) {
	AlienInstance *alien;
	AlienInstance *parentAlien;
	s16 sp6E;
	s16 sp6A;
	s16 sp66;
	s32 sp6C;
	s32 sp68;
	s32 sp64;
	f32 sp74;
	s32 distance;
	s32 sp50;
	s16 diff;
	s16 absDiff;
	s16 maxDiff;
	s32 flags;
	s32 temp;

	alien = &alienInstances[arg0 & 0xFF];
	parentAlien = &alienInstances[alien->unk25];

	if (!(parentAlien->unk20 & 0x10000)) {
		if (alien->unk12 != 0) {
			sp50 = arg0 & 0xFF;
			arg0 = (u8) (arg0 & 0xFF);
			func_80137468_146418(arg0 & 0xFF, 0x25E);
		} else {
			sp50 = arg0 & 0xFF;
			arg0 = (u8) (arg0 & 0xFF);
			func_80137468_146418(arg0 & 0xFF, 0x25D);
		}
		if (!(parentAlien->unk20 & 0x1000)) {
			distance = func_80084E54_93E04(D_80052B34, alien);
			temp = func_80003824_4424((f32) (D_80052B34->unk0 - alien->unk0), (f32) (D_80052B34->unk4 - alien->unk4));
			flags = alien->unk20;
			if (((flags & 0xF000) != 0xF000) && (flags & 0x8000) && (distance < 0x7D0)) {
				diff = (s16) (temp - alien->unkE);
				absDiff = (s16) -diff;
				maxDiff = absDiff;
				if (absDiff < diff) {
					maxDiff = diff;
				}
				if (maxDiff >= 0x4001) {
					func_8008751C_964CC(arg0, 0x1F4, 0x258);
					alien->unk20 = (s32) (alien->unk20 | 0x40);
				} else {
					func_8008751C_964CC(arg0, 0x44C, 0x514);
					alien->unk20 = (s32) (alien->unk20 & ~0x40);
				}
			} else {
				func_8008751C_964CC(arg0, 0x44C, 0x514);
				alien->unk20 = (s32) (alien->unk20 & ~0x40);
			}
		} else {
			alien->unk2A = alien->unk6;
			func_8008741C_963CC(arg0, 0);
		}
		if (!(alien->unk20 & 0x8000)) {
			func_802DDA64_1F6774(arg0, parentAlien->unk0, parentAlien->unk3);
		} else {
			func_802DE0C8_1F6DD8(arg0);
			func_802DDE04_1F6B14(arg0);
		}
		if ((alien->unk20 & 0xF000) == 0xF000) {
			if (D_80031420 & 3) {
				func_80128428_1373D8(alien, 0, 0, 0xC6, &sp6C, &sp68, &sp64);
				sp74 = (f32) ((f64) (f32) sins((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
				sp6E = (s16) sp6C;
				sp6A = (s16) sp68;
				sp66 = (s16) sp64;
				func_800CA5EC_D959C(sp6E, sp6A, sp66, (s8) (s32) (sp74 * 128.0f), 0, (s32) ((f32) -((f64) (f32) coss((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0) * 128.0f), 0x28, 0x14, 1, 0x96, (s32) D_8013E3C0.unk3, (s32) D_8013E3C0.unk4, (s32) D_8013E3C0.unk5, 0xFF);
			}
			temp = parentAlien->unk20;
			if (!(temp & 0x6000)) {
				parentAlien->unk20 = (s32) (temp | 0x5000);
				alien->unk36 = 0;
				alien->unk20 = (s32) (alien->unk20 & 0xF7FFFFFF);
				alien->unk14 = (s16) ((alien->unk0 - (func_800038E0_44E0() >> 3)) + 0x1000);
				alien->unk18 = (s16) ((alien->unk4 - (func_800038E0_44E0() >> 3)) + 0x1000);
			}
		}
		if (alien->unk1E != 0) {
			alien->unk1E = (s16) (alien->unk1E - 1);
		}
		func_800A92E0_B8290(arg0, 0xF000);
		if (alien->unk26 != 0) {
			alien->unk20 = (s32) (alien->unk20 | 0x400000);
		} else {
			alien->unk20 = (s32) (alien->unk20 & 0xFFBFFFFF);
		}
		flags = alien->unk20;
		if (!(flags & 0x1000)) {
			if (flags & 0x6000) {
				func_80137468_146418(sp50, 0xD4);
			} else {
				func_80137468_146418(sp50, 0xD3);
			}
		}
		func_800A7F34_B8EE4(arg0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DE594_1F72A4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DE9B8_1F76C8.s")

void func_802DEE18_1F7B28(u8 arg0) {
	func_800A93A4_B8354(arg0, 0, -1, 0xC6);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DEE4C_1F7B5C.s")

void func_802DEF70_1F7C80(u8 arg0) {
	alienInstances[arg0].unk3A = 0x7D0;
	func_800A93A4_B8354(arg0, 0, -0x45, 0x2B3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DEFC0_1F7CD0.s")

#ifdef NON_MATCHING
/* func_802DF1F8_1F7F08 - Process alien attack against vehicle */
void func_802DF1F8_1F7F08(u8 arg0) {
	AlienInstance *alien;
	Unk8014DD50 *spec_entry;
	s8 spec_idx;
	s8 spec_idx2;
	s16 local_sp_66;
	s16 local_sp_64;
	s32 sp50;
	s32 sp4C;
	s32 sp48;
	s16 local_sp_46;
	s32 sp54;
	s16 local_diff_y;
	s16 local_diff_x;
	s16 clamped_z_dist;

	alien = &alienInstances[arg0];
	spec_entry = &D_8014DD50[alien->unkC];
	spec_idx = spec_entry->unkC;
	spec_entry = &D_8014DD50[spec_idx];
	spec_idx2 = spec_entry->unkC;
	func_800A931C_B82CC(spec_idx, &D_8014DD50[spec_idx2], &sp54, &D_8014DD50);
	func_80128428_1373D8(alien, local_sp_56, local_sp_5A, local_sp_5E, &sp50, &sp4C, &sp48);
	local_diff_x = D_80052B34->unk0 - sp50;
	local_diff_y = D_80052B34->unk4 - sp48;
	local_sp_64 = local_diff_y;
	local_sp_66 = local_diff_x;
	local_sp_46 = func_80003824_4424((f32) local_diff_x, (f32) local_diff_y, local_diff_y) - alien->unk6;
	clamped_z_dist = (s16) ((s16) ((func_80003824_4424(sqrtf((f32) ((local_diff_x * local_diff_x) + (local_diff_y * local_diff_y)), local_diff_y), (f32) ((alien->unk2 + (s32) local_sp_58) - D_80052B34->unk2)) - D_80047710) - 0x2000) / 2);
	if (clamped_z_dist < -0x2000) {
		clamped_z_dist = -0x2000;
	} else if (clamped_z_dist >= 0x801) {
		clamped_z_dist = 0x800;
	}
	func_802DEFC0_1F7CD0(arg0, local_sp_46, clamped_z_dist, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF1F8_1F7F08.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF3C0_1F80D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF69C_1F83AC.s")

void func_802DF788_1F8498(u8 arg0) {
	func_800A93A4_B8354(arg0, -0xAE, 0x7E, 0x183);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF7BC_1F84CC.s")

void func_802DF8A8_1F85B8(u8 arg0) {
	func_800A93A4_B8354(arg0, 0xAE, 0x7E, 0x183);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF8DC_1F85EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DF99C_1F86AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFB94_1F88A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFC28_1F8938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFCA8_1F89B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFD80_1F8A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802DFF90_1F8CA0.s")

#ifdef NON_MATCHING
/* Randomized patrol behavior with angle/distance adjustments for alien instance */
void func_802E01A0_1F8EB0(u8 arg0) {
	s32 sp74;
	s32 sp70;
	s32 sp6C;
	s32 sp68;
	s32 sp64;
	s32 sp44;
	s32 sp40;
	f64 sp30;
	f64 temp_f0;
	f64 temp_f18;
	s16 temp_v0;
	s16 temp_v1_2;
	s32 temp_v1_3;
	AlienInstance *temp_a0;
	AlienInstance *temp_a1;
	AlienInstance *temp_a2;
	AlienInstance *temp_s0;
	AlienInstance *temp_v1;

	temp_s0 = &alienInstances[arg0 & 0xFF];
	if (!(temp_s0->unk20 & 0x100000)) {
		func_800D05A8_DF558(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 0x12C, 0x8C, 0x8C, 0xC8);
		temp_s0->unk2C = (s16)((func_800038E0_44E0() % 200) + 0x3C);
		temp_v1 = &alienInstances[temp_s0->unk25];
		temp_v1->unk20 = (s32)(temp_v1->unk20 & ~0x1000);
		temp_a0 = &alienInstances[temp_v1->unk25];
		temp_a1 = &alienInstances[temp_a0->unk1B];
		temp_a1->unk20 = (s32)(temp_a1->unk20 & 0xFFBFFFFF);
		temp_a2 = &alienInstances[temp_a0->unk26];
		temp_a2->unk20 = (s32)(temp_a2->unk20 & 0xFFBFFFFF);
		return;
	}
	temp_v0 = temp_s0->unk0;
	temp_v1_2 = temp_s0->unk4;
	sp44 = (s32)temp_v0;
	sp40 = (s32)temp_v1_2;
	sp74 = (s32)temp_v0;
	sp6C = (s32)temp_v1_2;
	sp70 = (s32)temp_s0->unk2;
	temp_v1_3 = func_800B84D0_C7480(temp_v0, temp_v1_2) >> 8;
	if (temp_v1_3 < sp70) {
		temp_s0->unk2 = (s16)(temp_s0->unk2 - 0x70);
		if (temp_v1_3 >= temp_s0->unk2) {
			temp_s0->unk2 = (s16)temp_v1_3;
			func_800CC7B0_DB760(0x32, 0x19, 0x5F, sp70, sp40);
		}
	} else if ((func_800038E0_44E0() % 3) == 0) {
		sp68 = (func_800038E0_44E0() % 150) + 0x32;
		temp_f18 = (f64)(f32)sins(func_800038E0_44E0() % 0xFFFF) / 32768.0;
		temp_f0 = (f64)sp68;
		sp30 = temp_f0;
		sp64 = (s32)(temp_f18 * temp_f0);
		func_800D16BC_E066C(sp74 + sp64, sp40 + (s32)(-((f64)(f32)coss(func_800038E0_44E0() % 0xFFFF) / 32768.0) * temp_f0), 2);
	}
	if (temp_s0->unk2C == 1) {
		func_800DF038_EDFE8(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 0x190, 0, 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/java/1ED9E0/func_802E01A0_1F8EB0.s")
#endif
