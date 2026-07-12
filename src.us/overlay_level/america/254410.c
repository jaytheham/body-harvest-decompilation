#include <ultra64.h>
#include "common.h"

void func_802D62A0_2559E0(u8 arg0);
void func_802D65BC_255CFC(u8 arg0);
typedef struct { s16 lo; s16 hi; } UnkArg802D7840;
void func_802D7968_2570A8(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4);
s32 func_802D7840_256F80(s32 arg0, s32 arg1);
void func_802D7C00_257340(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7);
void func_802DA054_259794(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7);
void func_802DA120_259860(s16 arg0, s32 arg1);
void func_802D99E4_259124(u8 arg0);
void func_802DA520_259C60(u8 arg0);
void func_802DD104_25C844(u8 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4);
s32 func_802DCCD8_25C418(u8 arg0);
void func_802DDB68_25D2A8(u8 arg0);
void func_802DB7B8_25AEF8(u8 arg0, s32 arg1, u8 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7, f32 arg8);
void func_802DBD84_25B4C4(u8 arg0);
void func_802DC244_25B984(u8 arg0);

extern Unk8014DD50 D_802DFF78_25F6B8[];
extern Unk8014DD50 D_802DFFC4_25F704[];
extern Unk8014DD50 *D_802E0640_25FD80;
extern Unk8014DD50 D_802E0698_25FDD8[];
extern s32 D_802E099C_2600DC;
extern s32 D_802E09A0_2600E0;
extern u8 D_E021070[];
extern f64 D_802E0DC0_260500;
extern Unk8014DD50 D_802E0CDC_26041C;
extern f32 D_802E0E10_260550;
extern s16 D_802E0CE4_260424;
extern s16 D_802E0CE8_260428;
extern f32 D_802E0E14_260554;
extern f32 D_802E0E18_260558;
extern f32 D_802E0E1C_26055C;
extern f32 D_802E0E20_260560;
extern Gfx D_504FD38[];


void func_802D4CD0_254410(s32 arg0, s32 arg1) {
	if (arg0 < 0x14) {
		D_802DF350[arg0](arg0);
	} else {
		switch (arg0) {
		case 0x14:
			func_800EFEB4_FEE64(func_800F1134_1000E4, 0x13, 0);
			break;
		case 0x15:
			func_800EFEB4_FEE64(func_800F1DDC_100D8C, 0x10, 1);
			break;
		case 0x1A:
			D_801493E0 = 0;
			func_800EFEB4_FEE64(func_802D563C_254D7C, 0x12, 0);
			break;
		case 0x1C:
			func_802D5110_254850();
			break;
		case 0x45:
			func_802D4E70_2545B0();
			break;
		case 0x44:
			func_80007690_8290();
			break;
		}
	}
}

void func_802D4DD4_254514(void) {
	func_800FB468_10A418(&vehicleInstances[80], 1970.0f);
	func_800FB468_10A418(&vehicleInstances[81], 1970.0f);
	func_800FB468_10A418(&vehicleInstances[82], 1970.0f);
	vehicleInstances[80].unk20 = (u16)(vehicleInstances[80].unk20 | 3);
	vehicleInstances[81].unk20 = (u16)(vehicleInstances[81].unk20 | 3);
	vehicleInstances[82].unk20 = (u16)(vehicleInstances[82].unk20 | 3);
	if (func_8000726C_7E6C(0x26) != 0) {
		func_802D4CD0_254410(0x13, 0);
	}
}

#ifdef NON_MATCHING
void func_802D4E70_2545B0(void) {
	switch (D_80048030) {
	case 0:
		if (func_8000726C_7E6C(0x2D) != 0) {
			func_800076D4_82D4(2);
		}
		break;
	case 1:
		if (func_80004818_5418(-0x37, -0x33, 3) != 0) {
			func_800076D4_82D4(3);
		}
		break;
	case 2:
		if (func_80004818_5418(0x15, -0x3E, 3) != 0) {
			func_800076D4_82D4(4);
		}
		break;
	case 3:
		if (func_80004818_5418(0x54, -0x3E, 2) != 0) {
			func_800076D4_82D4(5);
		}
		break;
	case 4:
		if (func_80004818_5418(0x56, -0x2E, 3) != 0) {
			func_800076D4_82D4(6);
		}
		break;
	case 5:
		if (func_80004818_5418(0x60, 0x25, 2) != 0) {
			func_800076D4_82D4(7);
		}
		break;
	case 6:
		if (func_80004818_5418(0x41, 0x55, 2) != 0) {
			func_800076D4_82D4(8);
		}
		break;
	case 7:
	case 8:
		break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D4E70_2545B0.s")
#endif

void func_802D4FBC_2546FC(void) {
	D_802E0E34++;
	if (D_802E0E34 != 0x96) {
		return;
	}
	func_800076D4_82D4(1);
	func_80013468_14068(0x10);
	func_800EFEB4_FEE64(NULL, 0x14, 0);
	func_800072CC_7ECC(0x1E);
	D_801493E0 = 0;
	D_8004816C = 0;
	func_802D5190_2548D0();
	func_800074BC_80BC(func_802D4FBC_2546FC);
}

void func_802D5044_254784(void) {
	s32 val967;
	s32 val5D7;
	s32 temp;
	s32 pad0;

	val967 = ((u8*)buildingInstances)[0x967];
	val5D7 = ((u8*)buildingInstances)[0x5D7];
	temp = D_8004816C + val5D7;

	if (val967 >= 7) {
		func_800072CC_7ECC(0x2E);
		func_800072CC_7ECC(0x2D);
		func_800074BC_80BC(func_802D5044_254784);
		osSyncPrintf(D_802E0CF0_260430);
	}

	if (temp < 7) {
		func_800072CC_7ECC(0x2D);
		func_800074BC_80BC(func_802D5044_254784);
		osSyncPrintf(D_802E0D08_260448);
	}

	buildingInstances[0x3E].hitPoints = buildingSpecs[buildingInstances[0x3E].buildingType].unk19;
}

void func_802D5110_254850(void) {
	D_802E0E34 = 0;
	func_80007410_8010(func_802D4FBC_2546FC);
	func_80007410_8010(func_802D5044_254784);
}

void func_802D5148_254888(void) {
	func_800073B8_7FB8((u64)0x36);
}

void func_802D516C_2548AC(void) {
	func_800073B8_7FB8((u64)0x36);
}

void func_802D5190_2548D0(void) {
	u32 *ptr = (u32*)((u8*)buildingInstances + 0x5D8);
	u32 val = *ptr;
	*ptr = ((((val >> 12) | 0x20) ^ (val >> 12)) << 12) ^ val;
}

void func_802D51B8_2548F8(void) {
	if (D_80052B34->unk1A != 0xA) {
		return;
	}

	if (func_8000726C_7E6C(4) != 0) {
		if (D_802E0D78_2604B8 <= (f64)D_80052B34->unk58) {
			vehicleSpecs[0xA].unk3E = 0x42;
			vehicleSpecs[0xA].unk40 = 0x82;
			if ((u32)D_80052A8C % 12U == 0) {
				func_800DF038_EDFE8(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, 0x32, 0, 0);
			}
		} else {
			vehicleSpecs[0xA].unk3E = 0x21;
			vehicleSpecs[0xA].unk40 = 0x44;
		}
	}
}

void func_802D5288_2549C8(s32 arg0) {
	func_800072CC_7ECC((u64)0x2C);
}

#ifdef NON_MATCHING
void func_802D52B0_2549F0(void) {
	u8 id;
	Unk80222A78 sp24;
	s16 temp;

	id = func_8007956C_8851C(0x12);
	if (id == 0xFF) {
		return;
	}

	alienSpecs[0x11].unk54 = 0x5D;
	D_80157E7C = 2;

	func_8011E6FC_12D6AC(-0xF28, -0x6300, &temp);

	alienInstances[id].unk0 = -0xF28;
	alienInstances[id].unk4 = -0x6300;
	alienInstances[id].unk2 = temp + 10;
	alienInstances[id].unk24 = 4;

	sp24.unk0 = 3;
	sp24.unk8 = id;
	sp24.unkC = (void (*)(void *))func_802D5288_2549C8;

	func_800AE454_BD404(&sp24);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D52B0_2549F0.s")
#endif

void func_802D536C_254AAC(void) {
	s16 temp = 0x96 - D_8004D1B2;
	func_8009BF64_AAF14((u16)temp);
	if (temp == -1) {
		func_800074BC_80BC(func_802D536C_254AAC);
	}
}

#ifdef NON_MATCHING
void func_802D53BC_254AFC(void) {
	u8 id;

	id = (D_802E0E44 = func_8007956C_8851C(0x12));
	if (id == 0xFF) {
		return;
	}

	D_80157E7C = 5;
	alienSpecs[0x11].unk54 = 0x6F;
	alienInstances[id].unk0 = 0x555C;
	alienInstances[id].unk4 = 0x568A;
	alienInstances[id].unk2 = 0;
	alienInstances[id].unk24 = 4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D53BC_254AFC.s")
#endif

void func_802D5440_254B80(void) {
	func_802D53BC_254AFC();
	func_80007410_8010(func_802D536C_254AAC);
}

void func_802D546C_254BAC(void) {
	s16 i;
	u8 id;
	AlienInstance *temp;

	for (i = 0; i < 0xFF; i++) {
		temp = &alienInstances[i];
		if (temp->specIndex == 0x24) {
			temp->unk20 |= 0x401000;
			temp->unk2C = 200;
		}
	}

	func_800074BC_80BC(func_802D536C_254AAC);

	id = D_802E0E44;
	if (id != 0xFF) {
		if (alienInstances[id].specIndex == ALIEN_SPEC_BLACK_ADAM) {
			func_80087AAC_96A5C(id);
		}
	}
}

void func_802D5530_254C70(void) {
	u8 id;

	func_800076D4_82D4(9);
	func_800BDAF4_CCAA4();
	func_800074BC_80BC(func_802D536C_254AAC);

	id = D_802E0E44;
	if (id != 0xFF) {
		if (alienInstances[id].specIndex == ALIEN_SPEC_BLACK_ADAM) {
			func_80087AAC_96A5C(id);
		}
	}
}

void func_802D55A0_254CE0(void) {
	if (buildingInstances[191].door1InteriorId == 12) {
		buildingInstances[191].door1InteriorId = 50;
	} else {
		osSyncPrintf(D_802E0D28_260468);
	}
}

// CURRENT(115)
#ifdef NON_MATCHING
void func_802D55E4_254D24(void) {
	s32 temp_v0;

	temp_v0 = (s32)D_80052A94 - 0x10000;
	*(u8 *)(temp_v0 + 0x708D) = ((*(u16 *)(temp_v0 + 0x708C) - 0x11) & 0x3F) | (*(u8 *)(temp_v0 + 0x708D) & 0xFFC0);
	temp_v0 = (s32)D_80052A94 - 0x10000;
	*(u8 *)(temp_v0 + 0x6E8D) = ((*(u16 *)(temp_v0 + 0x6E8C) - 0x11) & 0x3F) | (*(u8 *)(temp_v0 + 0x6E8D) & 0xFFC0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D55E4_254D24.s")
#endif

// CURRENT(21261)
#ifdef NON_MATCHING
s32 func_802D563C_254D7C(void) {
	s16 tx;
	s16 ty;
	s16 tz;
	s32 sp24;

	switch (D_80157F8C) {
	case 0:
		if (D_80157F8E == 0) {
			func_80013468_14068(0xF);
		}
		func_800072CC_7ECC(0x26);
		if (D_80157F8E++ >= 0x29) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		return 0;
	case 1:
	case 3:
	case 7:
	case 9:
		if (D_80157F8E < 6) {
			D_8013E344_14D2F4 = D_80157F8E * 40;
		} else {
			D_8013E344_14D2F4 = 0xFF;
		}
		if (D_80157F8E++ >= 0xB) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		return 0;
	case 2:
		if (D_80157F8E == 0x14) {
			sp24 = func_800B84D0_C7480(0x4600, -0x4880);
			func_800DF038_EDFE8(0x4600, (sp24 >> 8) - 0xC8, -0x4880, 0x1F4, 0, 0);
		}
		if (D_80157F8E == 0x19) {
			sp24 = (s32)D_80052A94 - 0x10000;
			*(u8 *)(sp24 + 0x708D) = ((*(u16 *)(sp24 + 0x708C) - 9) & 0x3F) | (*(u8 *)(sp24 + 0x708D) & 0xFFC0);
			*(u8 *)(sp24 + 0x6E8D) = ((*(u16 *)(sp24 + 0x6E8C) - 8) & 0x3F) | (*(u8 *)(sp24 + 0x6E8D) & 0xFFC0);
		}
		if (D_80157F8E == 0x2D) {
			sp24 = func_800B84D0_C7480(0x4600, -0x4880);
			func_800DF038_EDFE8(0x4600, (sp24 >> 8) - 0xFA, -0x4880, 0x1F4, 0, 0);
		}
		if (D_80157F8E == 0x32) {
			sp24 = (s32)D_80052A94 - 0x10000;
			*(u8 *)(sp24 + 0x708D) = ((*(u16 *)(sp24 + 0x708C) - 8) & 0x3F) | (*(u8 *)(sp24 + 0x708D) & 0xFFC0);
			*(u8 *)(sp24 + 0x6E8D) = ((*(u16 *)(sp24 + 0x6E8C) - 9) & 0x3F) | (*(u8 *)(sp24 + 0x6E8D) & 0xFFC0);
		}
		if (D_80157F8E++ >= 0x58) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		return 0;
	case 4:
		if (D_80157F8E == 0) {
			sp24 = func_8007956C_8851C(0x12);
			D_802E0E48 = sp24;
			if (sp24 != 0xFF) {
				alienInstances[sp24].unk20 &= 0xF7FFFE5F;
				alienInstances[sp24].unk0 = 0x56D2;
				alienInstances[sp24].unk4 = -0x3180;
				alienInstances[sp24].unk14 = 0x56D2;
				alienInstances[sp24].unk18 = -0x2D80;
				alienInstances[sp24].unk20 |= 0x100;
				alienInstances[sp24].unk24 = 2;
				alienInstances[sp24].unkE = 0x4000;
				alienInstances[sp24].unk2A = 0x4000;
				func_8007A198_89148(sp24);
				D_80157F94 = sp24;
			}
		}
		if (D_80157F8E == 2) {
			((s8 *)D_8003E0FC)[0xB0]++;
			tx = *(s16 *)((s8 *)D_8003E0FC + currentLevel * 80 - 0x46);
			ty = *(s16 *)((s8 *)D_8003E0FC + currentLevel * 80 - 0x44);
			tz = *(s16 *)((s8 *)D_8003E0FC + currentLevel * 80 - 0x42);
			func_800DEE5C_EDE0C((tx << 24) >> 16, ty, (tz << 24) >> 16, 0x64, 3);
			func_800DEE5C_EDE0C((tx << 24) >> 16, ty, (tz << 24) >> 16, 0x32, 3);
			func_800D05A8_DF558((tx << 24) >> 16, ty, (tz << 24) >> 16, 0x1F4, 0xC8, 0xC8, 0xFA);
		}
		if (D_80157F8E++ >= 0x24) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		return 0;
	case 5:
		if (D_80157F8E >= 6) {
			D_8013E344_14D2F4 = 0xFF;
			func_80079910_888C0(D_802E0E48);
		} else {
			D_8013E344_14D2F4 = D_80157F8E * 40;
		}
		if (D_80157F8E++ >= 0xB) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		return 0;
	case 6:
		((s8 *)D_8003E0FC)[0xB0] = 0;
		if (D_80157F8E++ >= 0x29) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		return 0;
	case 8:
		if (D_80157F8E++ >= 0x3D) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		return 0;
	case 10:
		D_8013E344_14D2F4 = 0xFF;
		D_801493E0 = 1;
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D563C_254D7C.s")
#endif

void func_802D5CA8_2553E8(u8 arg0) {
	alienInstances[arg0].unk20 &= ~0x10;
	func_80137468_146418(arg0, 0x130);
	func_8008064C_8F5FC(arg0);
}

// CURRENT(1267)
#ifdef NON_MATCHING
void func_802D5D08_255448(u8 arg0) {
	s32 sp38;
	s32 temp;
	s16 sp32;
	AlienInstance *alien;

	sp38 = 0x2BC;
	func_80137468_146418(arg0, 0x130);

	alien = &alienInstances[arg0];

	if (alien->unk20 & 0x8000) {
		func_8008064C_8F5FC(arg0);
	} else {
		func_8008076C_8F71C(arg0);
		func_800A53C0_B4370(arg0, 0x200, 0x3000);
	}

	if (!(alien->unk20 & 0x10) && !(alien->unk20 & 0x8000)) {
		alien->unk20 |= 0x08000000;
		if (func_80084E54_93E04((VehicleInstance *)alien, (AlienInstance *)D_80052B34) < 0x640) {
			alien->unk3C = 0x50;
			alien->unk1E = 0;
			alien->unk20 |= 0x2010;
		}
	} else if (alien->unk20 & 0x2000) {
		if (func_80084FE8_93F98(arg0, 0x800) != 0) {
			sp38 = 0x12C;
			func_800868A4_95854(arg0, 0, 0, 0x2000);
		} else {
			alien->unk20 &= ~0x2000;
		}
	}

	func_8011E6FC_12D6AC(alien->unk0, alien->unk4, &sp32);

	if (sp32 >= (alien->unk2 - alienSpecs[alien->specIndex].unkC) ||
		((alien->unk47 & 1) && (alien->unk20 & 0x1000))) {
		func_80129354_138304(alien, 0, 0, 0, 0);
		alien->unk20 |= 0x1000;
		func_80088760_97710(alien);
	} else {
		if (alien->unk20 & 0x8000) {
			if (!(alien->unk20 & 0x1000)) {
				if (alien->unk20 & 0x800) {
					func_8008E978_9D928(arg0, 0x258);
				} else {
					func_8008EDFC_9DDAC(arg0);
				}
				func_80092C40_A1BF0(arg0);
			}
		} else {
			temp = func_8008E524_9D4D4(arg0, sp38, 0xA);
			if (sp38 < temp) {
				func_8008EB20_5EFD0(arg0, temp, 0x640);
			} else {
				func_8008EB20_5EFD0(arg0, temp, 0x320);
			}
		}
	}

	if (alien->unk3C != 0) {
		alien->unk3C--;
	} else {
		alien->unk20 &= ~0x10;
	}

	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D5D08_255448.s")
#endif

void func_802D5F88_2556C8(u8 arg0) {
	s32 pad_top1;
	s32 pad_top2;
	s32 pad_top3;
	s16 sp3A;
	s32 pad_mid1;
	s16 cosVal;
	s16 sinVal;
	AlienInstance *alien;

	alien = &alienInstances[arg0];
	alien->unk47 &= 0xFFFE;
	alien->unk20 |= 0x40000000;
	alien->unk2C = 0x7FFF;
	sp3A = D_8014DD50[alien->unkC].unkC;
	cosVal = (s16)(((f64)(f32)coss(alien->unk6) / 32768.0) * 6.0);
	sinVal = (s16)(((f64)(f32)sins(alien->unk6) / 32768.0) * 6.0);
	func_80088E40_97DF0(arg0, sp3A, D_8014DD50[sp3A].unk0, D_8014DD50[sp3A].unk2, D_8014DD50[sp3A].unk4, -sinVal, 8, cosVal);
	func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (u16)alienSpecs[alien->specIndex].unkC, 0);
	if (alien->unk25 != 0xFF) {
		alienInstances[alien->unk25].unk24--;
	}
}

// CURRENT(245)
#ifdef NON_MATCHING
void func_802D6138_255878(u8 arg0) {
	s16 sp2E;
	s32 temp_v0;
	s32 var_v1;
	AlienInstance *temp_s0;

	temp_s0 = &alienInstances[arg0];
	temp_v0 = temp_s0->unk20;
	temp_s0->unk12 = 0;
	sp2E = temp_s0->unk25;

	if (temp_v0 & 0x1000) {
		var_v1 = temp_v0 & 0x100000;
		if ((var_v1 == 0) && (temp_v0 & 0x600)) {
			func_800DF848_EE7F8(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4,
				(alienSpecs[temp_s0->specIndex].unkC * 2) & 0xFFFF, 0);
			temp_s0->unk12 = 0;
			func_80124B5C_133B0C(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, 0x12C, 0xC8);
			var_v1 = temp_s0->unk20 & 0x100000;
		}
	} else {
		if (!(temp_v0 & 0x100000)) {
			func_802D5F88_2556C8(arg0);
			var_v1 = temp_s0->unk20 & 0x100000;
		} else {
			func_8008AAFC_99AAC(arg0, 0x96, 4);
			var_v1 = temp_s0->unk20 & 0x100000;
		}
	}

	if ((var_v1 == 0) && (sp2E != 0xFF)) {
		if (alienInstances[sp2E].specIndex == 0x1A) {
			alienInstances[sp2E].unk24--;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D6138_255878.s")
#endif

// CURRENT(8649)
#ifdef NON_MATCHING
void func_802D62A0_2559E0(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];
	s32 sp40;
	s32 sp38;
	s32 sp6C;
	s32 sp68;
	s32 sp64;
	s32 sp60;
	s32 sp5C;
	s32 sp58;
	s32 sp54;
	s32 sp50;
	s32 sp4C;
	s16 cosVal;
	s16 sinVal;
	u8 sp77;
	s8 sp75;

	sp77 = alien->unk36;
	sp75 = D_8014DD50[(u8)D_8014DD50[alien->unkC].unkC].unkD;
	sp40 = sp77 & 0xFF;

	if ((sp77 & 0xFF) < 4) {
		sp6C = D_8014DD50[(u8)sp75].unk0 + 0x17;
		sp38 = D_8014DD50[(u8)sp75].unkA & 0xFFFF;

		cosVal = coss(sp38);
		sinVal = sins(sp38);
		sp68 = (s32)(((f64)D_8014DD50[(u8)sp75].unk2 + D_802E0DB0_2604F0 * ((f64)(f32)cosVal / 32768.0) - 0.0 * ((f64)(f32)sinVal / 32768.0)));

		cosVal = sins(D_8014DD50[(u8)sp75].unkA);
		sinVal = coss(D_8014DD50[(u8)sp75].unkA);
		sp64 = (s32)((f64)D_8014DD50[(u8)sp75].unk4 + 0.0 * ((f64)(f32)cosVal / 32768.0) + D_802E0DB8_2604F8 * (((f64)(f32)sinVal / 32768.0)));

		func_80128428_1373D8(alien, (s16)sp6C, (s16)sp38, (s16)sp64, &sp60, &sp5C, &sp58);
		func_80128428_1373D8(alien, (s16)(sp6C * -1), (s16)sp38, (s16)sp64, &sp54, &sp50, &sp4C);
		func_800D16BC_E066C((s16)sp60, (s16)sp5C, (s16)sp58, (s16)sp54, sp50, sp4C, 1);
	}

	if (D_8014DD50[(u8)sp75].unkE == 0) {
		if (sp40 == 3) {
			alien->unk1E = 0;
			alienSpecs[alien->specIndex].unk20 = 0;
			alienSpecs[alien->specIndex].unk22 = (s16)sp68;
			alienSpecs[alien->specIndex].unk24 = (s16)sp64;
			func_80087188_96138(arg0, 0, 0x20);
		}
		if (sp40 < 5) {
			func_80081C84_90C34((u8)sp75, &D_802DF3AC_25EAEC[sp77]);
		} else {
			alien->unk20 = alien->unk20 & 0xFFFF5FFF;
		}
		alien->unk36 = (u8)(alien->unk36 + 1);
	}
	func_80081E5C_90E0C((u8)sp75);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D62A0_2559E0.s")
#endif

// CURRENT(163)
#ifdef NON_MATCHING
void func_802D65BC_255CFC(u8 arg0) {
	s32 pad;
	s32 flags;
	AlienInstance *alien;

	func_80091470_A0420(arg0);
	alien = &alienInstances[arg0];

	flags = alien->unk20;
	if (!(flags & 0x4000)) {
		func_8009170C_A06BC(arg0);
	}

	if (alien->unk20 & 0x100) {
		if ((D_80052A8C & 0x3F) == (arg0 & 0x3F)) {
			if (!((buildingInstances[alien->unk38].unk8 >> 12) & 1) || ((buildingInstances[alien->unk38].unk8 >> 12) & 0x10)) {
				alien->unk20 &= ~0x100;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D65BC_255CFC.s")
#endif

void func_802D6684_255DC4(u8 arg0)
{
	u8 padByte;
	u8 sp36;
	s32 pad[3];
	s32 sp24;
	AlienInstance *alien;
	sp24 = 0x1C2;
	alien = &alienInstances[arg0];
	sp36 = D_8014DD50[alien->unkC].unkC;
	func_8008E478_9D428(arg0);
	if (alien->unk25 != 0xFF)
	{
		func_802D65BC_255CFC(arg0);
	}
	if (((s32)(((alien->unk0 - alien->unk14) * (alien->unk0 - alien->unk14)) + ((alien->unk4 - alien->unk18) * (alien->unk4 - alien->unk18)))) < 0x57E40)
	{
		if (!(alien->unk20 & 0x10))
		{
			alien->unk20 = alien->unk20 | 0x10;
			alien->unk20 = alien->unk20 | 0x2000;
			alien->unk26 = 0x96;
			alien->unk1E = 0;
		}
	}
	if (alien->unk20 & 0x2000)
	{
		if (alien->unk20 & 0x8000)
		{
			func_802D62A0_2559E0(arg0);
		}
		else if (func_800850DC_9408C(arg0, 0x1000) != 0)
		{
			alien->unk36 = 0;
			alien->unk20 |= 0x8000;
		}
		sp24 = 0x190;
	}
	func_800A5554_B4504(arg0, func_8008E524_9D4D4(arg0, sp24, 4), 0x3D4CCCCD, sp36);
	if (alien->unk26 != 0)
	{
		alien->unk26--;
	}
	else
	{
		alien->unk20 &= ~0x10;
	}
	if (alien->unk1E != 0)
	{
		alien->unk1E--;
	}
}

void func_802D6824_255F64(u8 arg0) {
	AlienInstance *alien;

	func_80137468_146418(arg0, 0x1C);
	alien = &alienInstances[arg0];
	alien->unk6 = alien->unkE;
	alien->unk20 &= ~0x10;
	func_8008076C_8F71C(arg0);
}

// CURRENT(24824)
#ifdef NON_MATCHING
void func_802D6890_255FD0(u8 arg0) {
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
	f32 sp7C;
	s16 sp72;
	u16 sp6A;
	AlienInstance *alien;
	Unk8014DD50 *var_t0;
	Unk8014DD50 *sp64;
	Unk8014DD50 *sp60;
	Unk8014DD50 *sp5C;
	Unk8014DD50 *sp58;
	AlienSpec *sp54;
	u8 temp_v1;
	s16 var_a3;

	alien = &alienInstances[arg0];
	spC4 = D_8014DD50[alien->unkC].unkC;
	var_t0 = &D_8014DD50[spC4];
	sp64 = &D_8014DD50[var_t0->unkD];
	sp60 = &D_8014DD50[sp64->unkD];
	sp5C = &D_8014DD50[sp60->unkD];
	spBE = sp60->unkD;
	spBC = sp5C->unkD;
	sp58 = &D_8014DD50[spBC];
	spBA = sp5C->unkC;
	spB8 = sp58->unkC;
	sp54 = &alienSpecs[alien->specIndex];

	if (alien->hitPoints < ((s32) sp54->unk3A / 4)) {
		func_80089200_981B0(arg0, 4, 0x5A);
	}

	func_80085780_94730(arg0);

	if ((alien->unk20 & 0x08000000) || (func_800859F4_949A4(arg0) != 0)) {
		func_80085E2C_94DDC(arg0, spC4, 0x2000);
		func_800808F0_8F8A0(arg0, &alien->unkE);
		func_8008554C_944FC(arg0);
		if ((func_80084FE8_93F98(arg0, 0x800) != 0) && (alien->unk4E != 0)) {
			alien->unk48 = 1;
		}
		if ((alien->unk48 == 1) && (alien->unk3C == 0)) {
			if (!(alien->unk20 & 0x1000) && (currentLevel == 3)) {
				alien->unk20 |= 0x1000;
				alien->unk3C = 0x3C;
			}
		}
		if ((currentLevel == 2) && (alien->unk48 != 0)) {
			alien->unk3C = 1;
		}
	}

	if (alien->unk20 & 0x1000) {
		if (alien->unk3C < 0x1E) {
			var_t0->unkA = (u16)(var_t0->unkA - 0xC8);
			sp64->unk4 = (s16)(((D_80052A8C & 1) * -16) - 0x18);
			sp60->unk4 = (s16)(((D_80052A8C & 1) * -16) - 0x1C);

			func_80128428_1373D8(alien, alienSpecs[alien->specIndex].unk20, alienSpecs[alien->specIndex].unk22, alienSpecs[alien->specIndex].unk24, &sp9C, &sp98, &sp94);
			func_800C56A4_D4654((s16)sp9C, (s16)sp98, (s16)sp94, 0xC8, 3, 0xF, 0xA);

			func_80128428_1373D8(alien, -alienSpecs[alien->specIndex].unk20, alienSpecs[alien->specIndex].unk22, alienSpecs[alien->specIndex].unk24, &sp9C, &sp98, &sp94);
			func_800C56A4_D4654((s16)sp9C, (s16)sp98, (s16)sp94, 0xC8, 3, 0xF, 0xA);
		}

		if (alien->unk3C == 0) {
			alien->unk20 &= ~0x1000;
			alien->unk3C = 0x50;
			alien->unk48 = 0;
		}
	} else {
		u16 temp_u16;

		temp_u16 = var_t0->unkA + 0x1F4;
		var_t0->unkA = temp_u16;
		if (((s32)(temp_u16 & 0xFFFF) > 0) && ((s32)(temp_u16 & 0xFFFF) < 0x1F5)) {
			var_t0->unkA = 0U;
		}
	}

	if (alien->unk26 != 0) {
		alien->unk26--;
	}
	if (alien->unk26 >= 0x21) {
		alien->unk26 = 0;
	}
	temp_v1 = alien->unk26;

	if (currentLevel == 2) {
		sp64->unk8 = (u16)(sp64->unk8 + (temp_v1 * 128));
		sp60->unk8 = (u16)(sp60->unk8 - (temp_v1 * 128));
	} else {
		s32 temp_v0_5;
		temp_v0_5 = temp_v1 * 230;
		sp64->unk8 = (u16)(sp64->unk8 + temp_v0_5);
		sp60->unk8 = (u16)(sp60->unk8 - temp_v0_5);
	}

	if (spBA == -1) {
		s32 temp_v0_6;
		temp_v0_6 = temp_v1 * 128;
		sp5C->unk8 = (u16)(sp5C->unk8 + temp_v0_6);
		sp58->unk8 = (u16)(sp58->unk8 - temp_v0_6);
	}

	if (!(alien->unk20 & 0x1000) && (alien->unk3C != 0) && !(alien->unk47 & 1)) {
		s16 tmp;

		tmp = func_800870D8_96088(0x200, 0x10);
		if ((func_80086D70_95D20(arg0, 0, tmp) != 0) && (currentLevel == 3)) {
			if (alien->unk3C >= 0x45) {
				alien->unk1E = 4;
			} else if (alien->unk3C >= 0x36) {
				alien->unk1E = 3;
			} else {
				alien->unk1E = 2;
			}
		}
		if (spBA == -1) {
			alien->unk1E = 0;
			func_80087188_96138(arg0, 1, 0x3F);
		}
		if (alien->unk26 < 0x20) {
			func_80137468_146418(arg0, 0xC9);
			alien->unk26 += 2;
		}
	}

	if (alien->unk1E != 0) {
		alien->unk1E--;
	}

	if (alien->unk3C != 0) {
		alien->unk3C--;
	}

	if ((spBA != -1) && (alien->unk20 & 0x08000000)) {
		s32 flags = alien->unk20;

		if (flags & 0x6000) {
			if (flags & 0x4000) {
				spB2 = spBA;
				spB0 = spBE;
				spAF = func_80081F18_90EC8(arg0, 2, 3, &spB0, &D_802DF4BC_25EBFC);
			} else {
				spB0 = spBC;
				spB2 = spB8;
				spAF = func_80081F18_90EC8(arg0, 2, 3, &spB0, &D_802DF4C4_25EC04);
			}
			if ((spAF == 2) || (alien->unk36 == 2)) {
				s16 tempV1;

				sp9C = (s32)(((f64)(f32)sins((u16)D_8014DD50[spB2].unk6) / 32768.0) * 120.0);
				tempV1 = D_8014DD50[spB0].unk6;
				sp92 = tempV1;
				sp94 = (s32)(((((f64)(f32)coss((u16)D_8014DD50[spB2].unk6) / 32768.0) * 120.0) + D_802E0DC0_260500));
				sp72 = coss((u16)tempV1);
				sp54->unk2C = (s16)(s32)((((f64)(f32)sins((u16)tempV1) / 32768.0) * (f64)sp94) + ((f64)D_8014DD50[spB0].unk0 + ((f64)sp9C * ((f64)(f32)sp72 / 32768.0))));
				sp72 = sins((u16)tempV1);
				sp54->unk30 = (s16)(s32)((((f64)(f32)coss((u16)tempV1) / 32768.0) * (f64)sp94) + ((f64)D_8014DD50[spB0].unk4 + ((f64)-sp9C * ((f64)(f32)sp72 / 32768.0))));
				sp54->unk2E = D_8014DD50[spB0].unk2;
				var_a3 = sp92 + D_8014DD50[spB2].unk6;
				if (alien->unk20 & 0x4000) {
					var_a3 = (alien->unk6 - var_a3) - 0x4000;
				} else {
					var_a3 = (alien->unk6 - var_a3) + 0x4000;
				}
				sp92 = var_a3;
				if (((s32 (*)(u8, s16, u8, s16))func_800879A4_96954)(arg0, 0x87, 1, var_a3) != 0) {
					func_80102DDC_111D8C(D_80052B34, sp92, 0, 30.0f);
					if (D_80052B34->unk1A != 0) {
						func_80137468_146418(arg0, 0x258);
						sp7C = (f32)((f64)(f32)sins((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
						func_800C541C_D43CC(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, (s8)(s32)(sp7C * 127.0f), -0x50, (s8)(s32)((f32)-((f64)(f32)coss((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0) * 127.0f), 0x5A, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0xC8);
					} else {
						func_80137468_146418(arg0, 0x134);
					}
					func_80122524_1314D4(D_80052B34, 0xC8, alien->unk0, alien->unk4);
				}
			}
			if (spAF == 3) {
				alien->unk20 &= ~0x6000;
			}
		} else {
			s32 dx = alien->unk0 - D_80052B34->unk0;
			s32 dz = alien->unk4 - D_80052B34->unk4;

			if ((dx * dx + dz * dz) < 0x1D4C0) {
				if (alien->unk2A < alien->unkE) {
					alien->unk20 |= 0x4000;
				} else {
					alien->unk20 |= 0x2000;
				}
				alien->unk36 = 0;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D6890_255FD0.s")
#endif

// CURRENT(12474)
#ifdef NON_MATCHING
void func_802D736C_256AAC(s32 arg0) {
	s16 sp9E;
	s16 sp9C;
	s16 sp9A;
	s16 sp98;
	s16 sp96;
	f32 fltVal;
	s32 alienIdx;
	AlienInstance *alien;
	Unk8014DD50 *ptr1;
	Unk8014DD50 *ptr2;
	Unk8014DD50 *ptr3;
	s16 val1;
	s16 val2;
	s16 val3;
	s16 val4;
	s16 val5;
	s16 angle;
	s32 sinVal;
	s32 cosVal;

	alienIdx = arg0 & 0xFF;

	func_80089EB4_98E64(alienIdx, 0x46, 3, 6, 5);

	alien = &alienInstances[alienIdx];

	val1 = D_8014DD50[alien->unkC].unkC;
	ptr1 = &D_8014DD50[val1];
	val2 = ptr1->unkD;
	ptr2 = &D_8014DD50[val2];
	val3 = ptr2->unkD;
	ptr3 = &D_8014DD50[val3];
	val4 = ptr3->unkD;
	val5 = D_8014DD50[val4].unkD;

	sp9E = val1;
	sp9C = val2;
	sp9A = val3;
	sp98 = val4;
	sp96 = val5;

	func_800893C8_98378(alienIdx, val1, 0xBB8, 0x3E8, 0, -0xFA0, 0x7D0, 0xA, 0xE);
	func_800893C8_98378(alienIdx, val2, 0xBB8, 0x1388, 0x7D0, -0xFA0, 0xFA0, 6, 0xC);
	func_800893C8_98378(alienIdx, val3, 0xBB8, 0x1388, -0x7D0, -0xFA0, 0xFA0, 6, 0xC);
	func_800893C8_98378(alienIdx, val4, 0, 0xBB8, 0x2710, -0x7D0, 0x7D0, 4, 8);
	func_800893C8_98378(alienIdx, val5, 0, 0xBB8, -0x2904, -0x7D0, 0x7D0, 4, 8);

	if ((alien->unk2C % 25 == 0) && (alien->unk2C >= 25)) {
		s16 posX = alien->unk0;
		s16 posZ = alien->unk4;

		fltVal = (f32)((f64)alienSpecs[alien->specIndex].unkC * 0.75);
		func_800DF848_EE7F8(posX, (s16)(func_800B84D0_C7480(posX, posZ) >> 8), posZ, (u16)(s32)fltVal, 2);
	}

	if (alien->unk2C == 1) {
		func_80088E40_97DF0(alienIdx, sp9E, ptr1->unk0, ptr1->unk2, ptr1->unk4, 0, 4, 0);

		angle = (alien->unk6 + 0x2000) & 0xFFFF;
		sinVal = sins(angle);
		fltVal = (f32)(((f64)(f32)sinVal / 32768.0) * 15.0);
		cosVal = coss(angle);
		func_80088E40_97DF0(alienIdx, sp9C, ptr2->unk0, ptr2->unk2, ptr2->unk4, (s32)fltVal, 0, (s32)(f32)(((f64)(f32)cosVal / 32768.0) * -15.0));

		angle = (alien->unk6 + 0x6000) & 0xFFFF;
		sinVal = sins(angle);
		fltVal = (f32)(((f64)(f32)sinVal / 32768.0) * 15.0);
		cosVal = coss(angle);
		func_80088E40_97DF0(alienIdx, sp9A, ptr3->unk0, ptr3->unk2, ptr3->unk4, (s32)fltVal, 0, (s32)(f32)(((f64)(f32)cosVal / 32768.0) * -15.0));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D736C_256AAC.s")
#endif

// CURRENT(2630)
#ifdef NON_MATCHING
s32 func_802D7840_256F80(s32 arg0, UnkArg802D7840 arg1) {
	s16 sp40[4];
	s32 temp_s0;
	AlienInstance *temp_s1;
	s32 temp_v0;

	temp_s0 = arg0 & 0xFF;
	temp_s1 = &alienInstances[temp_s0];

	if (temp_s1->unk20 & 0x2000) {
		sp40[0] = arg1.hi;
		sp40[1] = D_8014DD50[sp40[0]].unkC;
		sp40[3] = temp_s1->unkC;
		sp40[2] = D_8014DD50[sp40[1]].unkC;

		temp_v0 = func_80081F18_90EC8(temp_s0 & 0xFF, 4, 3, sp40, &D_802DFB28_25F268);
		if (temp_v0 == 2) {
			if (func_80084FE8_93F98(temp_s0 & 0xFF, 0x800) != 0) {
				func_800871CC_9617C(temp_s0 & 0xFF, 1, 0xF);
			} else {
				func_80087188_96138(temp_s0 & 0xFF, 1, 0xF);
			}
			func_80137468_146418(temp_s0, 0x25C);
			temp_s1->unk1E = 0xF;
			return 1;
		}

		if (temp_v0 == 3) {
			temp_s1->unk20 &= ~0x2000;
		}
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D7840_256F80.s")
#endif

// CURRENT(750)
#ifdef NON_MATCHING
void func_802D7968_2570A8(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	s16 sp60[4];
	u8 sp5F;
	f32 sp58;

	if (!(alienInstances[arg0].unk20 & 0xC000)) {
		return;
	}
	sp60[0] = arg1;
	sp60[1] = arg2;
	sp60[2] = arg3;
	sp60[3] = arg4;
	if (alienInstances[arg0].unk20 & 0x8000) {
		sp5F = func_80081F18_90EC8(arg0, 4, 4, sp60, &D_802DF69C_25EDDC);
	} else {
		sp5F = func_80081F18_90EC8(arg0, 4, 4, sp60, &D_802DF5CC_25ED0C);
	}
	if (sp5F == 2) {
		if (func_800879A4_96954(arg0, 0x64, 0) != 0) {
			if (D_80052B34->unk1A != 0) {
				func_80137468_146418(arg0, 0x258);
				sp58 = (f32)((f64)(f32)sins((alienInstances[arg0].unk6 + 0x4000) & 0xFFFF) / 32768.0);
				func_800C541C_D43CC(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, (s8)(s32)(sp58 * 127.0f), -0x50, (s8)(s32)((f32)-((f64)(f32)coss((alienInstances[arg0].unk6 + 0x4000) & 0xFFFF) / 32768.0) * 127.0f), 0xB4, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0xC8);
			}
			func_80122524_1314D4(D_80052B34, D_8014619A, alienInstances[arg0].unk0, alienInstances[arg0].unk4);
			func_80102DDC_111D8C(D_80052B34, alienInstances[arg0].unk6, 0, 100.0f);
		}
		func_80137468_146418(arg0, 0x134);
		func_80137468_146418(arg0, 0x131);
	}
	if (sp5F == 4) {
		alienInstances[arg0].unk20 &= ~0xC000;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D7968_2570A8.s")
#endif

void func_802D7C00_257340(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7) {
	s16 sp30[7];
	u8 sp2F;

	if (!(alienInstances[arg0].unk20 & 0x1000)) {
		return;
	}
	
	sp30[0] = arg1;
	sp30[1] = arg2;
	sp30[2] = arg3;
	sp30[3] = arg4;
	sp30[4] = arg5;
	sp30[5] = arg6;
	sp30[6] = arg7;
	
	sp2F = func_80081F18_90EC8(arg0, 7, 5, sp30, &D_802DF8DC_25F01C);
	
	if ((sp2F == 2) || (sp2F == 4)) {
		func_80137468_146418(arg0, 0x131);
	}
	
	if (sp2F == 5) {
		alienInstances[arg0].unk20 &= ~0x1000;
	}
}

s32 func_802D7D08_257448(u8 arg0, s32 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6) {
	s32 pad_top;
	s16 sp6C[4];
	u8 sp6B;
	u8 specIdx;
	s32 pad_mid;
	s32 sp60;
	s32 sp5C;
	s32 sp58;
	AlienInstance *alien;

	alien = &alienInstances[arg0];
	if (alien->unk20 & 0x1000) {
		sp6C[0] = arg3;
		sp6C[1] = arg4;
		sp6C[2] = arg5;
		sp6C[3] = arg6;

		sp6B = func_80081F18_90EC8(arg0, 4, 5, sp6C, &D_802DFA38_25F178);
		specIdx = alien->specIndex;
		if ((sp6B == 2) || (sp6B == 4)) {
			if (sp6B == 2) {
				func_80128428_1373D8(alien, -alienSpecs[specIdx].unk20, -alienSpecs[specIdx].unk58, alienSpecs[specIdx].unk24, &sp60, &sp5C, &sp58);
			} else {
				func_80128428_1373D8(alien, alienSpecs[specIdx].unk20, -alienSpecs[specIdx].unk58, alienSpecs[specIdx].unk24, &sp60, &sp5C, &sp58);
			}
			if (((func_800B84D0_C7480((s16)sp60, (s16)sp58) >> 8) + 5) >= sp5C) {
				func_800DEE5C_EDE0C((s16)sp60, (s16)(sp5C + 5), (s16)sp58, 0x50, 0xA);
				func_80135D44_144CF4(sp60, sp5C, sp58, 8.0f);
				func_801371B8_146168(0, 0xE8, (s16)sp60, (s16)sp5C, (s16)sp58, D_802E0DC8_260508);
				func_800DEA08_ED9B8((s16)sp60, (s16)sp5C, (s16)sp58, 0x96, 8, 6, 0x28, 0xC8, 0xA6, 0x85, 0x2F);
				func_800C541C_D43CC((s16)sp60, (s16)sp5C, (s16)sp58, 0, -1, 0, 0x64, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0x80);
				alien->unk20 |= 0x400000;
				func_80124B5C_133B0C((s16)sp60, (s16)sp5C, (s16)sp58, 0x3E8, 0x12C);
				alien->unk20 &= 0xFFBFFFFF;
				if (arg1 < 0x2EE) {
					func_80102DDC_111D8C(D_80052B34, alien->unk6, 0, 120.0f);
				}
			}
		}
		if (sp6B == 5) {
			alien->unk20 &= ~0x1000;
		}
		return sp6B;
	}
	return 0;
}

// CURRENT(10440)
#ifdef NON_MATCHING
void func_802D803C_25777C(u8 arg0) {
	AlienInstance *alien;
	s16 sp46;
	s16 sp44;
	s16 sp40;
	s16 sp3E;
	s16 sp3C;
	s16 sp3A;
	s16 sp38;
	s16 sp36;
	s16 sp42;

	alien = &alienInstances[arg0];

	sp46 = D_8014DD50[alien->unkC].unkC;
	sp40 = D_8014DD50[sp46].unkD;
	sp44 = D_8014DD50[sp46].unkC;
	sp3E = D_8014DD50[sp40].unkC;
	sp3A = D_8014DD50[sp40].unkD;
	sp3C = D_8014DD50[sp3E].unkC;
	sp38 = D_8014DD50[sp3A].unkC;
	sp42 = D_8014DD50[sp3A].unkD;
	sp36 = D_8014DD50[sp38].unkC;

	if (alien->unk3D == -1) {
		func_80137468_146418(arg0, 0x10);
		alien->unk3D = 0;
	}

	if (!(alien->unk20 & 0x5000)) {
		func_80090A6C_9FA1C(arg0, sp40, 0x7D0);
		func_80090A6C_9FA1C(arg0, sp3C, 0x7D0);
	}

	if (!(alien->unk20 & 0x9000)) {
		func_80090A6C_9FA1C(arg0, sp3A, 0x7D0);
		func_80090A6C_9FA1C(arg0, sp36, 0x7D0);
	}

	if (!(alien->unk20 & 0x2000)) {
		func_80090A6C_9FA1C(arg0, sp42, 0xFA0);
	}

	if (alien->unk12 > 0) {
		func_80090A6C_9FA1C(arg0, sp46, 0x7D0);
	} else {
		func_80086230_951E0(arg0, sp46, 0x2000);
	}

	func_800877E8_96798(arg0, 0xC8, 0xFA);

	if (!(alien->unk20 & 0xF000)) {
		if (!(D_80052B34->unk20 & 2) && (((D_80052B34->unk1A == 0) && ((D_80052B34->unk0 - alien->unk0) * (D_80052B34->unk0 - alien->unk0) + (D_80052B34->unk4 - alien->unk4) * (D_80052B34->unk4 - alien->unk4) < 0x186A0)) || ((D_80052B34->unk1A != 0) && ((D_80052B34->unk0 - alien->unk0) * (D_80052B34->unk0 - alien->unk0) + (D_80052B34->unk4 - alien->unk4) * (D_80052B34->unk4 - alien->unk4) < 0x493E0)))) {
			if (alien->unk2A < alien->unkE) {
				alien->unk20 |= 0x8000;
			} else {
				alien->unk20 |= 0x4000;
			}
			alien->unk36 = 0;
		} else if ((D_80052B34->unk0 - alien->unk0) * (D_80052B34->unk0 - alien->unk0) + (D_80052B34->unk4 - alien->unk4) * (D_80052B34->unk4 - alien->unk4) >= 0x30D40) {
			if ((func_800038E0_44E0() & 7) == 0) {
				alien->unk20 |= 0x1000;
				func_80137468_146418(arg0, 0x10);
				alien->unk36 = 0;
			} else if ((func_80084FE8_93F98(arg0, 0x800) != 0) && (alien->unk4E != 0) && (alien->unk1E == 0)) {
				alien->unk36 = 0;
				alien->unk20 |= 0x2000;
			}
		}
	}

	if (alien->unk20 & 0x8000) {
		func_802D7968_2570A8(arg0, sp3A, sp38, sp36, sp44);
	} else if (alien->unk20 & 0x4000) {
		func_802D7968_2570A8(arg0, sp40, sp3E, sp3C, sp44);
	}

	func_802D7840_256F80(arg0, sp42);
	func_802D7C00_257340(arg0, sp3A, sp38, sp36, sp40, sp3E, sp3C, sp44);

	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D803C_25777C.s")
#endif

// CURRENT(2395)
#ifdef NON_MATCHING
void func_802D83D0_257B10(u8 arg0) {
	AlienInstance *alien;
	s16 sp5E;
	s16 sp5C;
	s16 sp5A;
	s16 sp58;
	s16 sp56;
	s16 sp54;
	s32 pad;
	s32 sp4C;
	s32 sp48;
	s32 sp44;
	s32 sp40;

	alien = &alienInstances[arg0];
	
	sp5E = D_8014DD50[alien->unkC].unkC;
	sp5A = D_8014DD50[sp5E].unkD;
	sp4C = 0;
	sp56 = D_8014DD50[sp5A].unkD;
	sp58 = D_8014DD50[sp5E].unkC;
	sp54 = D_8014DD50[sp56].unkC;
	sp5C = D_8014DD50[sp56].unkD;
	
	func_800877E8_96798(arg0, 0x1F4, 0x320);
	
	if (!(alien->unk20 & 0x9000)) {
		func_80090A6C_9FA1C(arg0, sp5A, 0x7D0);
		func_80090A6C_9FA1C(arg0, sp56, 0x7D0);
	}
	
	if (!(alien->unk20 & 0x2000)) {
		func_80090A6C_9FA1C(arg0, sp5C, 0x7D0);
	}
	
	if (alien->unk12 > 0) {
		func_80090A6C_9FA1C(arg0, sp5E, 0x7D0);
	} else {
		func_80086230_951E0(arg0, sp5E, 0x2000);
	}
	
	if ((func_800038E0_44E0() % 120) == 0) {
		func_80137468_146418(arg0, 0x10);
	}
	
	if (!(alien->unk20 & 0xB000) && (alien->unk1E == 0)) {
		sp4C = func_80084E54_93E04(D_80052B34, alien);
		if (sp4C < 0x2EE) {
			alien->unk36 = 0;
			alien->unk20 |= 0x1000;
		} else if (func_80084FE8_93F98(arg0, 0x400) && (alien->unk4E != 0) && (func_800038E0_44E0() < 0x2EE0)) {
			alien->unk36 = 0;
			alien->unk20 |= 0x2000;
		} else if (func_80084FE8_93F98(arg0, 0x1000) && (alien->unk4E != 0) && func_80087188_96138(arg0, 0, 0x20)) {
			alien->unk1E = 0x14;
			alien->unk4B = 0;
			alien->unk20 |= 0x8000;
		}
	}
	
	func_802D7D08_257448(arg0, sp4C, sp5E, sp5A, sp58, sp56, sp54);
	
	if (func_802D7840_256F80(arg0, sp5C) != 0) {
		func_80128504_1374B4(alien, 1, &sp48, &sp44, &sp40);
		func_800D05A8_DF558((s16)sp48, (s16)sp44, (s16)sp40, 0x258, 0xFF, 0xFF, 0xFF);
		func_80137468_146418(arg0, 0x25C);
	}
	
	if (alien->unk20 & 0x04000000) {
		func_800A3D00_B2CB0(arg0, sp58, 2, (s32)&D_802DFB38_25F278);
	} else {
		func_800A3D00_B2CB0(arg0, sp54, 2, (s32)&D_802DFB38_25F278);
	}
	
	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D83D0_257B10.s")
#endif

// CURRENT(26632)
#ifdef NON_MATCHING
void func_802D86D8_257E18(u8 arg0) {
	AlienInstance *alien;
	s16 spA0[11];
	s32 sp84;
	s32 sp80;
	s32 sp7C;
	f32 sp78;
	f32 sp74;
	Unk8014DD50 *sp64;
	Unk8014DD50 *sp60;
	Unk8014DD50 *sp5C;
	Unk8014DD50 *sp58;
	Unk8014DD50 *sp54;
	s32 sp50;
	s32 caseVal;

	alien = &alienInstances[arg0];
	if (alien->unk20 & 0x600) {
		if (!(alien->unk20 & 0x100000)) {
			alien->unk36 = 0;
			alien->unk4B = 0;
			alien->unk2C = 0x7D00;
			func_80137468_146418(arg0, 0x10);
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (u16)alienSpecs[alien->specIndex].unkC, 0);
			return;
		}
		spA0[0] = D_8014DD50[alien->unkC].unkC;
		sp64 = &D_8014DD50[spA0[0]];
		spA0[2] = sp64->unkD;
		spA0[1] = sp64->unkC;
		sp60 = &D_8014DD50[spA0[2]];
		spA0[3] = sp60->unkC;
		spA0[5] = sp60->unkD;
		sp5C = &D_8014DD50[spA0[3]];
		sp58 = &D_8014DD50[spA0[5]];
		spA0[6] = sp58->unkC;
		spA0[4] = sp5C->unkC;
		spA0[8] = sp58->unkD;
		sp54 = &D_8014DD50[spA0[6]];
		spA0[7] = sp54->unkC;
		spA0[9] = D_8014DD50[spA0[8]].unkC;
		spA0[10] = D_8014DD50[spA0[9]].unkC;
		if (alien->unk2C >= 0x3D) {
			s16 spAC;
			s16 spBE;
			s16 spB2;
			spAC = spA0[6];
			spBE = spA0[0];
			spB2 = spA0[3];
			func_8008741C_963CC(arg0, -0xC8);
			caseVal = func_80081F18_90EC8(arg0, 0xB, 6, spA0, &D_802DFF78_25F6B8);
			if (caseVal == 2) {
				sp50 = (alien->unk6 + 0x6000) & 0xFFFF;
				sp78 = (f32)(((f64)(f32)sins(sp50) / 32768.0) * 15.0);
				func_80088E40_97DF0(arg0, spA0[7], (s16)(D_8014DD50[spA0[7]].unk0 + sp58->unk0 + sp54->unk0), (s16)(D_8014DD50[spA0[7]].unk2 + sp58->unk2 + sp54->unk2), D_8014DD50[spA0[7]].unk4 + sp58->unk4 + sp54->unk4, (s32)sp78, 0xF, (s32)(f32)(((f64)(f32)coss(sp50) / 32768.0) * -15.0));
				sp50 = (alien->unk6 + 0x8000) & 0xFFFF;
				sp78 = (f32)(((f64)(f32)sins(sp50) / 32768.0) * 15.0);
				func_80088E40_97DF0(arg0, spAC, (s16)(sp54->unk0 + sp58->unk0), (s16)(sp54->unk2 + sp58->unk2), sp54->unk4 + sp58->unk4, (s32)sp78, 0xF, (s32)(f32)(((f64)(f32)coss(sp50) / 32768.0) * -15.0));
				return;
			}
			if (caseVal == 3) {
				sp50 = (alien->unk6 + 0x2000) & 0xFFFF;
				sp78 = (f32)(((f64)(f32)sins(sp50) / 32768.0) * 15.0);
				func_80088E40_97DF0(arg0, spA0[4], (s16)(D_8014DD50[spA0[4]].unk0 + sp60->unk0 + sp5C->unk0), (s16)(D_8014DD50[spA0[4]].unk2 + sp60->unk2 + sp5C->unk2), D_8014DD50[spA0[4]].unk4 + sp60->unk4 + sp5C->unk4, (s32)sp78, 0xF, (s32)(f32)(((f64)(f32)coss(sp50) / 32768.0) * -15.0));
				sp50 = alien->unk6 & 0xFFFF;
				sp78 = (f32)(((f64)(f32)sins(sp50) / 32768.0) * 15.0);
				func_80088E40_97DF0(arg0, spB2, (s16)(sp5C->unk0 + sp60->unk0), (s16)(sp5C->unk2 + sp60->unk2), sp5C->unk4 + sp60->unk4, (s32)sp78, 0xF, (s32)(f32)(((f64)(f32)coss(sp50) / 32768.0) * -15.0));
				return;
			}
			if (caseVal == 5) {
				AlienSpec *spec;
				spec = &alienSpecs[alien->specIndex];
				spec->unk2E = 0x64;
				spec->unk30 = 0x8C;
				func_80128428_1373D8(alien, sp64->unk0, (s16)(sp64->unk2 - 0xA), (s16)(sp64->unk4 + 0x28), &sp84, &sp80, &sp7C);
				func_800865F4_955A4(arg0, 1, sp84, func_800B84D0_C7480((s16)sp84, (s16)sp7C) >> 8, sp7C);
				spec = &alienSpecs[alien->specIndex];
				spec->unk2E = 0x55;
				spec->unk30 = 0xD2;
				sp50 = (alien->unk6 + 0x4000) & 0xFFFF;
				sp78 = (f32)(((f64)(f32)sins(sp50) / 32768.0) * 5.0);
				func_80088E40_97DF0(arg0, spBE, sp64->unk0, sp64->unk2, sp64->unk4, (s32)sp78, 5, (s32)(f32)(((f64)(f32)coss(sp50) / 32768.0) * -5.0));
				return;
			}
			if (caseVal == 6) {
				alien->unk2C = 0x3C;
				return;
			}
		} else {
			D_8014DD50[spA0[10]].unkA = (u16)(D_8014DD50[spA0[10]].unkA + 0x78);
			alien->unkA += 0x4B;
			alien->unk12 = 0;
			func_80137468_146418(arg0, 0x12);
			if ((alien->unk2C >= 0xB) && ((alien->unk2C % 6) == 0) && (D_80031420_32020 & 3)) {
				s32 temp_r;
				func_80128428_1373D8(alien, sp64->unk0, (s16)(sp64->unk2 - 0x8000), sp64->unk4, &sp84, &sp80, &sp7C);
				sp78 = (f32)((f64)(f32)sins((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
				sp74 = (f32)-((f64)(f32)coss((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
				temp_r = 0xB4 - (func_800038E0_44E0() % 80);
				func_800CA5EC_D959C((s16)sp84, (s16)sp80, (s16)sp7C, (s8)(s32)(sp78 * 128.0f), 0, (s32)(sp74 * 128.0f), 0x28, 0xA, 0x14, 0x32, temp_r, 0, 0x32, 0xFF);
			}
			if (alien->unk2C == 1) {
				func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (u16)alienSpecs[alien->specIndex].unkC, 6);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D86D8_257E18.s")
#endif

// CURRENT(4592)
#ifdef NON_MATCHING
void func_802D9038_258778(u8 arg0) {
	AlienInstance *alien;
	u8 idx;
	s16 sp96;
	s32 pad[6];
	s16 sp92;
	s16 sp90;
	s16 sp8E;
	s16 sp8C;
	s32 sp68;
	s32 sp64;
	s32 sp60;
	f32 sp5C;
	Unk8014DD50 *sp44;
	Unk8014DD50 *sp40;
	s32 sp3C;

	idx = arg0;
	alien = &alienInstances[idx];
	if (alien->unk20 & 0x600) {
		if (!(alien->unk20 & 0x100000)) {
			alien->unk36 = 0;
			alien->unk4B = 0;
			alien->unk2C = 0x50;
			func_80087C50_96C00(idx);
			alien->unk36 = 0;
			alien->unk20 |= 0x1000;
			func_80137468_146418(idx, 0x10);
			return;
		}
		sp96 = D_8014DD50[alien->unkC].unkC;
		sp92 = D_8014DD50[sp96].unkD;
		sp44 = &D_8014DD50[sp92];
		sp90 = sp44->unkD;
		sp8E = sp44->unkC;
		sp40 = &D_8014DD50[sp90];
		sp8C = sp40->unkC;
		func_80087C74_96C24(idx);
		func_800893C8_98378(idx, sp96, 0xBB8, 0x3E8, 0, -0xFA0, 0x7D0, 4, 0xA);
		func_80137468_146418(idx, 0x137);
		if (func_802D7D08_257448(idx, func_80084E54_93E04(D_80052B34, alien), sp96, sp92, sp8E, sp90, sp8C) == 5) {
			alien->unk36 = 0;
			alien->unk20 |= 0x1000;
		}
		if (alien->unk2C == 0x28) {
			sp3C = (alien->unk6 + 0x8000) & 0xFFFF;
			sp5C = (f32)(((f64)(f32)sins(sp3C) / 32768.0) * 15.0);
			func_80088E40_97DF0(idx, sp8C, (s16)(D_8014DD50[sp8C].unk0 + sp40->unk0), (s16)(D_8014DD50[sp8C].unk2 + sp40->unk2), D_8014DD50[sp8C].unk4 + sp40->unk4, (s32)sp5C, 0xF, (s32)(f32)(((f64)(f32)coss(sp3C) / 32768.0) * -15.0));
		}
		if (alien->unk2C == 0x14) {
			sp3C = alien->unk6 & 0xFFFF;
			sp5C = (f32)(((f64)(f32)sins(sp3C) / 32768.0) * 15.0);
			func_80088E40_97DF0(idx, sp8E, (s16)(D_8014DD50[sp8E].unk0 + sp44->unk0), (s16)(D_8014DD50[sp8E].unk2 + sp44->unk2), D_8014DD50[sp8E].unk4 + sp44->unk4, (s32)sp5C, 0xF, (s32)(f32)(((f64)(f32)coss(sp3C) / 32768.0) * -15.0));
		}
		if ((alien->unk2C & 7) == 0) {
			func_80128504_1374B4(alien, 1, &sp68, &sp64, &sp60);
			func_800D05A8_DF558((s16)sp68, (s16)sp64, (s16)sp60, 0x3E8, 0xFF, 0xFF, 0xFF);
			sp68 = ((func_800038E0_44E0() % 200) + alien->unk0) - 0x64;
			sp64 = func_800B84D0_C7480((s16)sp68, (s16)sp60) >> 8;
			sp60 = ((func_800038E0_44E0() % 200) + alien->unk4) - 0x64;
			func_800865F4_955A4(idx, 0, sp68, sp64, sp60);
		}
		if (alien->unk2C == 1) {
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (u16)alienSpecs[alien->specIndex].unkC, 6);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D9038_258778.s")
#endif

// CURRENT(12411)
#ifdef NON_MATCHING
void func_802D9510_258C50(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];
	s16 specIndex;
	s8 ret;
	s32 flags;
	s32 dx;
	s32 dz;
	s32 distSq;
	s32 a3;

	specIndex = alien->specIndex;
	dx = alien->unk0 - alien->unk14;
	dz = alien->unk4 - alien->unk18;
	flags = alien->unk20;
	a3 = 0x226;
	if (!(flags & ALIEN_FLAG_UNKF)) {
		distSq = dx * dx + dz * dz;
		if (distSq >= 0xC5C11 && distSq < 0xCF850) {
			if (func_80084FE8_93F98(arg0, 0x400)) {
				if (alien->unk2 >= D_80052B34->unk2 &&
					(alienSpecs[specIndex].unk3A / 4) < alien->hitPoints) {
					if (func_800038E0_44E0() & 1) {
						alien->unk3C = 0x78;
						alien->unk36 = 0;
						alien->unk20 |= ALIEN_FLAG_UNKF | ALIEN_FLAG_UNKE;
						alien->unk1E = 0;
					}
				}
				flags = alien->unk20;
			}
		}
		if (distSq < 0x57E40) {
			flags = alien->unk20;
			if (!(flags & ALIEN_FLAG_UNK5) && alien->unk12 > 0) {
				flags |= ALIEN_FLAG_UNK5;
				alien->unk20 = flags;
				flags |= ALIEN_FLAG_UNKE;
				alien->unk20 = flags;
				alien->unk26 = 0x64;
				alien->unk1E = 0;
			}
		}
	}
	if (flags & ALIEN_FLAG_UNKE) {
		if (func_80084FE8_93F98(arg0, 0x800)) {
			if (flags & ALIEN_FLAG_UNKF) {
				if (alien->unk3C < 0x78) {
					s16 sp30;

					sp30 = (s16)(u8)D_8014DD50[(u8)D_8014DD50[(u8)alien->unkC].unkC].unkD;
					ret = func_80081F18_90EC8(arg0, 1, 2, &sp30, &D_802DFFC4_25F704);
					if (func_80087188_96138(arg0, 0, 0x10)) {
						alien->unk1E = 0x3E8;
					}
					if (ret == 2) {
						alien->unk36 = 0;
						alien->unk1E = 0;
					}
				}
			} else {
				if (D_80052B34->unk2 + 0x32 < alien->unk2) {
					func_80087188_96138(arg0, 1, 0x20);
				}
				alien->unk1E = 0x3E8;
				alien->unk20 &= ~ALIEN_FLAG_UNKE;
			}
		}
		a3 = 0x1C2;
		flags = alien->unk20;
	}
	if (flags & ALIEN_FLAG_UNKF) {
		func_80086164_95114(arg0, (u8)alien->unkC);
		alien->unkA = D_8014DD50[(u8)alien->unkC].unkA;
		alien->unk12 -= 0xA0;
		if (alien->unk12 < 0) {
			alien->unk12 = 0;
		}
		a3 = 0x12C;
		if (alien->unk3C == 0 || dx * dx + dz * dz < 0x57E40 ||
			alien->unk2 < D_80052B34->unk2 - 0x32 ||
			(alienSpecs[specIndex].unk3A / 4) >= alien->hitPoints) {
			alien->unk20 &= ~0x6000;
		}
	}
	func_800A5554_B4504(arg0, func_8008E524_9D4D4(arg0, a3, 4), 0x3D4CCCCD, (u8)D_8014DD50[(u8)alien->unkC].unkC);
	if (alien->unk3C != 0) {
		alien->unk3C--;
	}
	if (alien->unk26 != 0) {
		alien->unk26--;
	} else {
		alien->unk20 &= ~ALIEN_FLAG_UNK5;
	}
	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D9510_258C50.s")
#endif

void func_802D998C_2590CC(u8 arg0) {
	func_80137468_146418(arg0, 0x1C);
	func_8008735C_9630C(arg0);
	alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNK5;
}

// CURRENT(8270)
#ifdef NON_MATCHING
void func_802D99E4_259124(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];
	s32 sp6C;
	s32 sp50;

	sp6C = func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8;
	alien->unk2 = alien->unk48 + sp6C + 0x2D;
	alien->unkA = 0;

	{
		s32 angle = (s32)((f32)alien->unk48 / -500.0f * 32768.0f);
		s32 sinVal = sins((u16)angle);

		if (alien->unk26 == 0) {
			alien->unkA = (s16)(s32)(-(f32)((f64)(f32)sinVal / 32768.0) * D_802E0DCC_26050C);
		} else {
			alien->unkA = (s16)(s32)((f32)((f64)(f32)sinVal / 32768.0) * D_802E0DD0_260510);
		}
	}

	{
		s32 v0 = func_80084E54_93E04(alien, D_80052B34);
		s32 flags;

		if (v0 >= 0x709 || (alien->unk47 & 1)) {
			flags = alien->unk20;
			flags = flags | 0x100;
			alien->unk20 = flags;
			alien->unk20 = flags & ~0x840;
		} else if (v0 >= 0x5DD) {
			flags = alien->unk20;
			flags = flags | 0x800;
			alien->unk20 = flags;
			alien->unk20 = flags & ~0x140;
		} else {
			flags = alien->unk20;
			flags = flags | 0x140;
			alien->unk20 = flags;
			alien->unk20 = flags & ~0x800;
		}

		if (alien->unk3C == 0 && alien->unk2 < sp6C - 0xC8 && v0 < 0x708 && v0 >= 0x259) {
			alien->unk26 = 2U;
		}
	}

	if (alien->unk47 & 1) {
		alien->unk2C = 0x3C;
	}

	if (alien->unk48 == -0x1F4) {
		func_8008064C_8F5FC(arg0);
	} else {
		func_8008076C_8F71C(arg0);
	}

	sp50 = sp6C - 0x96;

	if ((sp50 >= alien->unk2 && D_80052A8C % 20U == 0) || (sp50 < alien->unk2 && (D_80052A8C & 3U) == 0)) {
		f32 sp64;
		f32 sp60;
		f32 sp4C;

		sp64 = (f64)(f32)sins((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0;
		sp60 = -((f64)(f32)coss((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
		sp4C = sp64 * 250.0f;

		func_800DEA08_ED9B8((s16)((f32)alien->unk0 + sp4C), (s16)sp6C, (s16)((f32)alien->unk4 + sp60 * 250.0f), 0x64, 0xF, 0, 0x32, 0xFF, 0xA6, 0x85, 0x2F);

		if (sp50 < alien->unk2) {
			func_80135D44_144CF4(alien->unk0, (s16)sp6C, alien->unk4, 3.0f);
			func_800C541C_D43CC((s16)((f32)alien->unk0 + sp4C), 0, (s16)((f32)alien->unk4 + sp60 * 250.0f), (s8)(s32)(-sp64 * 127.0f), 0x7F, (s8)(s32)(-sp60 * 127.0f), 0x64, 0xFF, 0x28, 0x14, 0x6A, 0x53, 0);
		}
	}

	if (sp50 < alien->unk2) {
		func_80137468_146418(arg0, 0x12D);
	}

	if (alien->unk2C != 0) {
		alien->unk2C--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802D99E4_259124.s")
#endif

void func_802D9F10_259650(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7) {
	s16 sp30[7];
	u8 sp2F;

	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKD)) {
		return;
	}

	sp30[0] = arg1;
	sp30[1] = arg2;
	sp30[2] = arg3;
	sp30[3] = arg4;
	sp30[4] = arg5;
	sp30[5] = arg6;
	sp30[6] = arg7;

	sp2F = (u8)func_80081F18_90EC8(arg0, 7, 7, sp30, &D_802E02D8_25FA18);

	if (sp2F == 4) {
		alienInstances[arg0].unk1E = 0;
		if (func_80084FE8_93F98(arg0, 0x800)) {
			func_800871CC_9617C(arg0, 0, 10);
		} else {
			func_80087188_96138(arg0, 0, 10);
		}
		func_80137468_146418(arg0, 0x12F);
	}

	if (sp2F == 7) {
		if (alienInstances[arg0].unk2C >= 0x29) {
			alienInstances[arg0].unk36 = 0;
		} else {
			alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKD;
		}
	}
}

void func_802DA054_259794(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7) {
	s16 sp28[7];
	s32 pad20;

	pad20 = 0;
	if (alienInstances[arg0].unk20 & 0x2000) {
		sp28[0] = arg1;
		sp28[1] = arg2;
		sp28[2] = arg3;
		sp28[3] = arg4;
		sp28[4] = arg5;
		sp28[5] = arg6;
		sp28[6] = arg7;
		if ((u8)func_80081F18_90EC8(arg0, 7, 3, sp28, &D_802E0444_25FB84) == 3) {
			alienInstances[arg0].unk20 &= ~0x2000;
		}
	}
}

// CURRENT(6500)
#ifdef NON_MATCHING
void func_802DA120_259860(s16 arg0, s32 arg1) {
	AlienInstance *alien;
	s32 sp78;
	s32 sp70;
	f32 vecX;
	f32 vecY;
	f32 vecZ;
	s16 x;
	s16 z;
	s16 heading;
	s16 randVal;
	s16 rand2;
	f32 sinVal;
	f32 cosVal;
	s16 angle;

	alien = &alienInstances[arg0];
	if (alien->unk2 < ((func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8) - 0xC8)) {
		return;
	}
	if (alien->unk48 == 0) {
		return;
	}
	func_80137468_146418(arg0, 0x12E);
	sp78 = alien->unk0;
	sp70 = alien->unk4;
	vecY = 0.0f;
	vecX = (f32)(sp78 / 4) - D_80047954;
	vecZ = (f32)(sp70 / 4) - D_8004795C;
	guNormalize(&vecX, &vecY, &vecZ);
	vecX *= 200.0f;
	vecZ *= 200.0f;
	x = (s16)((f32)sp78 - vecX);
	z = (s16)((f32)sp70 - vecZ);
	heading = (func_800B84D0_C7480(x, z) >> 8) + 0x32;
	if ((D_80052A8C % 6U) == 0) {
		randVal = func_800038E0_44E0() % 30;
		if (arg1 != 0) {
			rand2 = func_800038E0_44E0();
			func_800DEA08_ED9B8(x, heading, z, (s16)((rand2 % 100) + 0x12C), (rand2 % 20) + 0xA, 0, 0x32, 0xC8, randVal + 0x88, randVal + 0x67, randVal + 0x11);
			func_80135D44_144CF4(sp78, alien->unk2, sp70, 3.0f);
		} else {
			rand2 = func_800038E0_44E0();
			func_800DEA08_ED9B8(x, heading, z, (s16)((rand2 % 100) + 0x12C), (rand2 % 10) + 5, 0, 0x32, 0xB4, randVal + 0x88, randVal + 0x67, randVal + 0x11);
			func_80135D44_144CF4(sp78, alien->unk2, sp70, 2.0f);
		}
	}
	if (!(D_80052A8C & 1) && (arg1 != 0)) {
		angle = (alien->unk6 + 0x4000) & 0xFFFF;
		sinVal = (f32)((f64)(f32)sins(angle) / 32768.0);
		cosVal = (f32)((f64)(f32)coss(angle) / 32768.0);
		func_800C541C_D43CC(x, heading, z, (s8)(s32)(sinVal * 127.0f), 0x7F, (s8)(s32)(-cosVal * 127.0f), 0x64, 0xFF, 0x50, 0x14, 0x6A, 0x53, 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DA120_259860.s")
#endif

// CURRENT(2973)
#ifdef NON_MATCHING
void func_802DA520_259C60(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];
	s16 sp66;
	s16 sp64;
	s16 sp62;
	s16 sp60;
	s16 sp5E;
	s16 sp5C;
	s16 sp5A;
	s32 sp54;
	s32 sp50;
	s32 pad48;
	s32 pad44;
	s16 sp46;
	f32 sp38;
	f32 sp34;

	sp66 = D_8014DD50[alien->unkC].unkC;
	sp64 = D_8014DD50[sp66].unkC;
	sp62 = D_8014DD50[sp64].unkC;
	sp60 = D_8014DD50[sp62].unkC;
	sp5C = D_8014DD50[sp60].unkD;
	sp5E = D_8014DD50[sp60].unkC;
	sp5A = D_8014DD50[sp5C].unkC;

	sp54 = func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8;
	sp50 = func_80084E54_93E04(alien, D_80052B34);

	alien->unkA = -0x7D0;
	alien->unk2 = alien->unk48 + sp54 + 0x82;

	func_80080A54_8FA04(arg0, D_80052B34->unk0, D_80052B34->unk4);

	alien->unk2A = alien->unk6;
	alien->unkE = alien->unk6;

	func_802D9F10_259650(arg0, sp66, sp64, sp62, sp60, sp5E, sp5C, sp5A);
	func_802DA054_259794(arg0, sp66, sp64, sp62, sp60, sp5E, sp5C, sp5A);

	if (alien->unk47 & 8) {
		sp38 = (f32)(D_80052B34->unk0 - alien->unk0);
		sp34 = (f32)(D_80052B34->unk4 - alien->unk4);
		if (-func_80003824_4424(sp38, sp34) < func_80003824_4424(sp38, sp34)) {
			func_80102DDC_111D8C(D_80052B34, func_80003824_4424(sp38, sp34), 0, 50.0f);
		} else {
			func_80102DDC_111D8C(D_80052B34, -func_80003824_4424(sp38, sp34), 0, 50.0f);
		}
	}

	if (alien->unk26 == 2) {
		if (alien->unk48 == -0xC8) {
			alien->unk36 = 0;
			alien->unk20 |= 0x1000;
		}
		if (alien->unk48 == 0) {
			alien->unk12 = 0;
			alien->unk20 &= ~0x400000;
			if (alien->unk2C != 0) {
				alien->unk2C--;
			} else {
				alien->unk26 = 4;
				alien->unk20 |= 0x2000;
				alien->unk36 = 0;
			}
		} else {
			alien->unk20 |= 0x100;
			alien->unk20 &= ~0x840;
			if ((sp50 < 0x5DD) && (sp50 >= 0x12D)) {
				alien->unk48 += 0xF;
				if (alien->unk48 >= 0) {
					alien->unk48 = 0;
				}
			}
			alien->unk2C = 0x50;
		}
	}

	if (alien->unk26 == 4) {
		alien->unk20 |= 0x40;
		alien->unk20 &= ~0x900;
	}

	func_802DA120_259860(arg0, 1);

	if (sp50 < 0x12C) {
		alien->unk26 = 4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DA520_259C60.s")
#endif

void func_802DA878_259FB8(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];

	alien->unk20 |= 0x20000000;

	switch (alien->unk26) {
	case 0:
		alien->unk20 |= 0x400000;
		if (alien->specIndex == 9) {
			func_80079DC0_88D70(alien->unkC);
			alien->unkC = -1;
			alien->specIndex = 8;
		}
		alien->unk48 += 10;
		if (alien->unk48 >= 0) {
			s8 val = (s8)alien->unk3C;
			alien->unk48 = 0;
			alien->unk26 = 1;
			alien->unk2C = 0x3C;
			if (val != 0) {
				alien->unk3C = val - 1;
			}
		}
		break;
	case 1:
		alien->unk20 |= 0x400000;
		if (alien->specIndex == 9) {
			func_80079DC0_88D70(alien->unkC);
			alien->specIndex = 8;
			func_80079C8C_88C3C(arg0);
		}
		alien->unk48 -= 10;
		if (alien->unk48 < -0x1F3) {
			alien->unk48 = -0x1F4;
		}
		if (alien->unk2C == 0) {
			alien->unk26 = 0;
		}
		break;
	case 2:
		if (alien->specIndex == 8) {
			func_80079DC0_88D70(alien->unkC);
			alien->specIndex = 9;
			func_80079C8C_88C3C(arg0);
			alien->unk48 = -0x1F4;
		}
		break;
	case 4:
		alien->unk20 |= 0x400000;
		alien->unk48 -= 15;
		if (alien->unk48 < -0x1F3) {
			alien->unk48 = -0x1F4;
			alien->unk26 = 1;
			alien->unk2C = 0x3C;
		}
		alien->unk3C = D_8013BD00_14ACB0[0];
		break;
	}

	if (alien->unk26 < 2) {
		func_802D99E4_259124(arg0);
	} else {
		func_802DA520_259C60(arg0);
	}

	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}

void func_802DAA98_25A1D8(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];

	alien->unk12 = 0;
	alien->unk26 = 1;
	alien->unk48 = -500;
	alien->unk2C = 60;
	if (alien->specIndex == 9) {
		alien->specIndex = 8;
	}
}

// CURRENT(10882)
#ifdef NON_MATCHING
void func_802DAAF0_25A230(u8 arg0) {
	AlienInstance *alien;
	s32 sp58;
	s32 sp5C;
	s32 sp60;
	s16 sp64;
	s16 sp66;
	s16 sp68;
	f32 sp70;
	s32 sp74;
	s32 sp78;
	s32 sp7C;
	s16 sp88[6];
	s16 sp94;
	s16 sp96;
	s16 sp98;
	s16 sp9A;
	s16 sp9C;
	s16 sp9E;
	s32 temp_v1;

	alien = &alienInstances[arg0];
	sp88[0] = D_8014DD50[alien->unkC].unkC;
	sp88[1] = D_8014DD50[sp88[0]].unkC;
	sp88[2] = D_8014DD50[sp88[1]].unkC;
	sp88[3] = D_8014DD50[sp88[2]].unkC;
	sp88[4] = D_8014DD50[sp88[3]].unkD;
	sp96 = D_8014DD50[sp88[3]].unkC;

	if (!(alien->unk20 & 0x100000)) {
		alien->unk2C = 0x78;
		alien->unk36 = 0;
		alien->unk48 = 1;
		return;
	}

	sp88[5] = D_8014DD50[sp88[4]].unkC;
	sp98 = sp88[3];
	sp94 = sp88[4];
	sp9A = sp88[2];
	sp9E = sp88[0];
	sp9C = sp88[1];

	if (func_80081F18_90EC8(arg0, 5, 6, sp88, &D_802E0640_25FD80) == 6) {
		if (alien->unk2C >= 0x51) {
			alien->unk36 = 0;
		}
	}

	func_802DA054_259794(arg0, sp88[0], sp88[1], sp88[2], sp88[3], sp96, sp88[4], sp88[5]);

	temp_v1 = func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8;
	alien->unk2 = alien->unk48 + temp_v1 + 0x82;
	if (alien->unk2C < 0x50) {
		alien->unk48 -= 5;
		if (!(D_80052A8C & 7) && (D_80031420_32020 & 3)) {
			func_800CA5EC_D959C(alien->unk0, (s16)(temp_v1 - 0xA), alien->unk4, 0, 0, 0, 1, 0x1E, 8, 0xFF, 0xC8, 0x64, 0x1E, 0xFF);
		}
	}
	if (!(D_80052A8C & 7) && (D_80031420_32020 & 3)) {
		sp70 = (f32)((f64)(f32)sins((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
		coss((alien->unk6 + 0x4000) & 0xFFFF);
		sp64 = D_80047710;
		sp66 = D_80047712;
		sp68 = D_80047714;
		func_800A931C_B82CC((s8)(sp9A >> 8), &sp64, &sp58);
		sp64 = (s16)sp58;
		sp66 = (s16)sp5C;
		sp68 = (s16)sp60;
		func_800A931C_B82CC((s8)(sp9C >> 8), &sp64, &sp58);
		sp64 = (s16)sp58;
		sp66 = (s16)sp5C;
		sp68 = (s16)sp60;
		func_800A931C_B82CC((s8)(sp9E >> 8), &sp64, &sp58);
		func_80128428_1373D8(alien, (s16)sp58, (s16)sp5C, (s16)sp60, &sp74, &sp78, &sp7C);
		func_800CA5EC_D959C((s16)sp7C, (s16)sp78, (s16)sp74, (s8)(s32)(sp70 * 127.0f), 0, (s8)(s32)(sp70 * 127.0f), 0x50, 9, 6, 0x46, 0xC8, 0x64, 0x1E, 0xFF);
	}
	if (alien->unk2C >= 0x29 && ((u32)D_80052A8C % 12U) == 0) {
		func_802DA120_259860(arg0, 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DAAF0_25A230.s")
#endif

extern f64 D_802E0DD8_260518;
extern f64 D_802E0DE0_260520;
extern f64 D_802E0DE8_260528;
extern f64 D_802E0DF0_260530;

extern volatile u32 D_802E0654_25FD94;

// CURRENT(7472)
#ifdef NON_MATCHING
void func_802DAEDC_25A61C(u8 arg0) {
	AlienInstance *alien;
	s8 v1;
	s16 sp8E;
	s16 sp8C;
	s16 sp7E;
	s16 sp7C;
	u32 sp78;
	s32 sp74;
	s32 sp70;
	s32 sp6C;
	s16 sp66;
	Unk8014DD50 *data;

	alien = &alienInstances[arg0];
	v1 = D_8014DD50[alien->unkC].unkC;
	sp78 = D_802E0654_25FD94;
	sp8C = (s16)alien->specIndex;
	alien->unk20 &= 0xFFBFFFFF;

	if (alien->unk20 & 0x1000) {
		data = &D_8014DD50[v1];

		if (D_80052A8C & 1) {
			alien->unk20 |= 0x80000000;
		}

		func_80128428_1373D8(alien, data->unk0, data->unk2, data->unk4, &sp74, (s32*)&sp70, &sp6C);

		if ((func_800038E0_44E0() % 8) == 0) {
			s32 rnd;

			sp66 = (s16)func_800038E0_44E0();
			rnd = func_800038E0_44E0();
			func_800D16BC_E066C((s16)sp6C, (s16)sp70, (s16)sp74,
							   (s16)(((u16)sp66 % 2000) + sp6C - 1000),
							   0xBB8,
							   (s16)((rnd % 2000) + sp6C - 1000), 5);
		}

		if (alien->unk2C >= 0x65) {
			data->unk2 = (s16)(s32)((((f64)(f32)sins(((-alien->unk2C * 500) + 0x186A0) & 0xFFFF) / 32768.0) * D_802E0DD8_260518) + D_802E0DE0_260520);

			if (!(D_80052A8C & 3)) {
				func_800DEA08_ED9B8((s16)sp74, (s16)sp70, (s16)sp6C, 0x50, 0xA, 8, 0x28, 0xFF, 0xFF, 0, 0);
			}

			data->unk6 = (u16)(((u16)data->unk6 - (alien->unk2C * 2000)) + 0x61A80);
		}

		if (data->unk2 < 0x29) {
			func_80137468_146418(arg0, 0x12D);
			if (!(D_80052A8C & 3)) {
				func_800DEA08_ED9B8((s16)sp74, (s16)(func_800B84D0_C7480((s16)sp74, (s16)sp6C) >> 8), (s16)sp6C, 0x78, 0xA, 6, 0x28, 0xFF, 0xA6, 0x85, 0x2F);
				func_800C541C_D43CC((s16)sp74, (s16)(func_800B84D0_C7480((s16)sp74, (s16)sp6C) >> 8), (s16)sp6C, 0, 0x7F, 0, 0x64, 0xFF, 0x3C, 0xA, 0x6A, 0x53, 0);
				func_80135D44_144CF4(sp74, sp70, sp6C, 3.0f);
			}
		}

		if (alien->unk2C != 0) {
			alien->unk2C--;
		}
	} else {
		sp8E = (s16)v1;
		data = &D_8014DD50[(s16)sp8E];
		data->unk2 = (s16)(s32)((((f64)(f32)sins((D_80052A8C * 1000) & 0xFFFF) / 32768.0) * 10.0) + D_802E0DE8_260528);
		data = &D_8014DD50[(s16)sp8E];
		data->unk8 = (s16)(s32)((((f64)(f32)sins((D_80052A8C * 1600) & 0xFFFF) / 32768.0) * 1600.0));
		data->unkA = (s16)(s32)((((f64)(f32)coss((D_80052A8C * 1400) & 0xFFFF) / 32768.0) * D_802E0DF0_260530));

		func_800D16BC_E066C(alien->unk0, (s16)(alien->unk2 + 0x3C), alien->unk4,
						   alien->unk0, alien->unk2 - 0x14, alien->unk4, 1);

		if ((D_80052A8C % (((alien->hitPoints * 15) / alienSpecs[sp8C].unk3A) + 8)) == 0) {
			sp7C = alien->unk0;
			sp7E = alien->unk4;
			func_800B99A8_C8958((Unk80152B80 *)&sp7C, 0, 0xC8, 0xFF, (u8 *)&sp78, 0x96, 0xA, 0);
			alien->unk1E = 0;
			func_80137468_146418(arg0, 0x13F);
		} else {
			alien->unk1E = 0x3E8;
		}

		if (func_80084E54_93E04(D_80052B34, alien) < 0x7D0) {
			if (alien->unk1E == 0) {
				func_80086D70_95D20(arg0, 0, (s16)(func_800870D8_96088(0x200, 0x10) + 0x2000));
				alien->unk1E = 0;
				func_80086D70_95D20(arg0, 0, (s16)(func_800870D8_96088(0x200, 0x10) + 0x6000));
				alien->unk1E = 0;
				func_80086D70_95D20(arg0, 0, (s16)(func_800870D8_96088(0x200, 0x10) + 0xA000));
				alien->unk1E = 0;
				func_80086D70_95D20(arg0, 0, (s16)(func_800870D8_96088(0x200, 0x10) + 0xE000));
				alien->unk1E = D_80047710;
			}
		} else {
			alien->unk1E = 0x1E;
		}

		if (alien->unk1E != 0) {
			alien->unk1E--;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DAEDC_25A61C.s")
#endif

// CURRENT(508)
#ifdef NON_MATCHING
void func_802DB644_25AD84(u8 arg0) {
	AlienInstance *inst = &alienInstances[arg0];

	if (inst->unk20 & 0x1000) {
		if (inst->unk2C != 0) {
			inst->unk2C--;
		}
	} else {
		inst->unk20 |= 0x400000;
		func_800800DC_8F08C(arg0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DB644_25AD84.s")
#endif

void func_802DB6B0_25ADF0(u8 arg0) {
	u8 specIndex;
	s16 sp24;

	specIndex = alienInstances[arg0].specIndex;
	sp24 = D_8014DD50[alienInstances[arg0].unkC].unkC;

	if (!(alienInstances[arg0].unk20 & 0x100000)) {
		if (alienInstances[arg0].unk20 & 0x600) {
			func_800DF848_EE7F8(alienInstances[arg0].unk0, (s16)(alienInstances[arg0].unk2 + 0x66), alienInstances[arg0].unk4, 0x64, 0);
			func_80088E10_97DC0(sp24);
		}
		alienInstances[arg0].unk2C = 0x1E;
	} else if (alienInstances[arg0].unk2C == 2) {
		if (alienInstances[arg0].unk20 & 0x600) {
			func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4,
				(u16)(alienSpecs[specIndex].unkC * 20), 8);
		}
	}
}

// CURRENT(13656)
#ifdef NON_MATCHING
void func_802DB7B8_25AEF8(u8 arg0, s32 arg1, u8 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7, f32 arg8) {
	s32 sp64;
	u8 specIndex;
	s32 sp54;
	u16 sp4E;
	u16 sp4C;
	s32 sp48;
	s32 sp44;
	s16 cos1;
	s16 sin1;
	s32 tempV1;
	AlienInstance *alien;
	Unk8014DD50 *t0;

	alien = &alienInstances[arg0];
	t0 = &D_8014DD50[arg3];
	sp48 = 0;
	sp44 = 0;
	sp64 = alien->unk48;
	specIndex = alien->specIndex;
	sp4E = *(u16*)&t0->unkA;
	sp4C = *(u16*)&t0->unk8;

	func_80137468_146418(arg0, 0x1E);

	cos1 = coss(sp4C);
	sp54 = (s32)((f64)sp64 * ((f64)(f32)coss(sp4E) / 32768.0) * ((f64)(f32)cos1 / 32768.0));
	alien->unk10 = (s16)(s32)((f64)alien->unk10 + (f64)sp54);
	tempV1 = (s32)((f64)sp64 * ((f64)(f32)cos1 / 32768.0) * ((f64)(f32)sins(sp4E) / 32768.0));
	sp54 = (s32)((f64)sp64 * ((f64)(f32)sins(sp4C) / 32768.0) * ((f64)(f32)coss(sp4E) / 32768.0));

	if (tempV1 != 0) {
		func_801022F4_1112A4((VehicleInstance *)alien, alien->unk6, *(f32*)&tempV1);
	}

	if (sp54 != 0) {
		func_801022F4_1112A4((VehicleInstance *)alien, (s16)(alien->unk6 + 0x4000), *(f32*)&sp54);
	}

	alien->unk48 = (s16)(s32)((f64)alien->unk48 * D_802E0DF8_260538);
	alien->unk12 = (s16)(s32)((f32)alien->unk12 * (1.0f - arg8));

	sp54 = (s32)func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8;
	if (sp54 < D_80222A70) {
		sp54 = D_80222A70;
	}

	if ((alien->unk10 + alien->unk2) < (arg1 + sp54)) {
		alien->unk48 = (s16)(alien->unk48 + alienSpecs[specIndex].unk3E);
	} else {
		alien->unk48 = (s16)(alien->unk48 - alienSpecs[specIndex].unk3E);
	}

	switch (arg2) {
	case 0:
		sp44 = 1;
		sp48 = 1;
		break;
	case 1:
		sp48 = 1;
		if ((s16)D_8014DD50[arg4].unkA < arg5) {
			D_8014DD50[arg4].unkA = (u16)(D_8014DD50[arg4].unkA + 0x190);
		}
		if ((s16)t0->unkA < arg5) {
			t0->unkA = (u16)(t0->unkA + 0x190);
		}
		break;
	case 2:
		sp48 = 1;
		if (arg6 < (s16)D_8014DD50[arg4].unkA) {
			D_8014DD50[arg4].unkA = (u16)(D_8014DD50[arg4].unkA - 0x190);
		}
		if (arg6 < (s16)t0->unkA) {
			t0->unkA = (u16)(t0->unkA - 0x190);
		}
		break;
	case 3:
		sp44 = 1;
		if ((s16)D_8014DD50[arg4].unk8 < arg7) {
			D_8014DD50[arg4].unk8 = (u16)(D_8014DD50[arg4].unk8 + 0x190);
			t0->unk8 = (u16)(t0->unk8 + 0x190);
		}
		break;
	}

	if (sp44 != 0) {
		if ((s16)D_8014DD50[arg4].unkA < 0) {
			D_8014DD50[arg4].unkA = (u16)(D_8014DD50[arg4].unkA + 0x190);
		} else if ((s16)D_8014DD50[arg4].unkA > 0) {
			D_8014DD50[arg4].unkA = (u16)(D_8014DD50[arg4].unkA - 0x190);
		}
		if ((s16)t0->unkA < 0) {
			t0->unkA = (u16)(t0->unkA + 0x190);
		} else if ((s16)t0->unkA > 0) {
			t0->unkA = (u16)(t0->unkA - 0x190);
		}
	}

	if (sp48 != 0) {
		if ((s16)D_8014DD50[arg4].unk8 < 0) {
			D_8014DD50[arg4].unk8 = (u16)(D_8014DD50[arg4].unk8 + 0x190);
			t0->unk8 = (u16)(t0->unk8 + 0x190);
		} else if ((s16)D_8014DD50[arg4].unk8 > 0) {
			D_8014DD50[arg4].unk8 = (u16)(D_8014DD50[arg4].unk8 - 0x190);
			t0->unk8 = (u16)(t0->unk8 - 0x190);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DB7B8_25AEF8.s")
#endif

void func_802DBD08_25B448(u8 arg0, s32 arg1, s32 arg2) {
	f32 scale = D_802DF3A4_25EAE4;
	
	alienSpecs[alienInstances[arg0].specIndex].unk34 = (s16)(s32)((f32)arg1 * scale);
	alienSpecs[alienInstances[arg0].specIndex].unk36 = (s16)(s32)((f32)arg2 * scale);
}

// CURRENT(7220)
#ifdef NON_MATCHING
void func_802DBD84_25B4C4(u8 arg0) {
	u8 parentUnk0;
	u8 parentUnk1;
	s32 sp60;
	s16 sp5A;
	s16 sp58;
	s16 sp4E;
	s32 sp48;
	s32 sp44;
	s32 sp40;
	s32 sp2C;
	s32 temp;
	AlienInstance *alien;
	AlienInstance *parentAlien;

	alien = &alienInstances[arg0];
	parentAlien = &alienInstances[alien->unk25];
	parentUnk0 = ((u8 *)parentAlien)[0];
	parentUnk1 = ((u8 *)parentAlien)[1];

	if (alien->unk20 & 0x4000) {
		if (parentAlien->unk20 & 0x1000) {
			if (!(D_80052A8C & 1)) {
				func_80014A3C_1563C((s32)D_80052B34, 0xB3, 0, 0, -1.0f);
			}
			if (alien->unk4B < 0x40) {
				temp = D_80052A8C & 3;
				if (temp == 0) {
					alien->unk20 |= 0x80000000;
				} else if (temp == 1) {
					alienInstances[parentUnk0].unk20 |= 0x80000000;
				} else if (temp == 2) {
					alienInstances[parentUnk1].unk20 |= 0x80000000;
				}

				D_802E0E32 += 4;
				*(s16 *)D_802E0E30 = *(s16 *)D_802E0E30 + 4;

				sp4E = (s16)((s32)alien->unk4B << 12);
				sp2C = sp4E & 0xFFFF;

				D_802E0E32 = (s16)(D_802E0E32 + 20.0 * ((f64)(f32)sins(sp2C) / 32768.0));
				*(s16 *)D_802E0E30 = (s16)(*(s16 *)D_802E0E30 + 40.0 * ((f64)(f32)sins(sp2C) / 32768.0));

				alien->unk4B++;

				sp48 = alien->unk0;
				sp44 = alien->unk2;
				sp40 = alien->unk4;

				if (sp4E == -0x4000) {
					func_800DEE5C_EDE0C((s16)sp48, (s16)((s16)sp44 + 0xC8), (s16)sp40, 0x23, 6);
					func_800DEE5C_EDE0C((s16)sp48, (s16)sp44, (s16)sp40, 0x32, 6);
					func_800DEE5C_EDE0C((s16)sp48, (s16)((s16)sp44 - 0xC8), (s16)sp40, 0x3C, 6);
				}

				if (sp4E < 0) {
					func_800C56A4_D4654((s16)sp48, (s16)sp44, (s16)sp40, 0x320, 0xF, 0xA, 0x28);
				}
			} else {
				alienInstances[parentUnk0].unk20 &= 0xFFBFFFFF;
				alienInstances[parentUnk1].unk20 &= 0xFFBFFFFF;
				((s32 *)alienSpecs[alienInstances[parentUnk0].specIndex].pad1C)[0] = 0x63;
				((s32 *)alienSpecs[alienInstances[parentUnk1].specIndex].pad1C)[0] = 0x63;
				parentAlien->unk20 &= ~0x1000;
				func_80137468_146418(arg0, 0x13E);
			}

			D_802DF3A4_25EAE4 = (f32)((f64)*(s16 *)D_802E0E30 * (1.0 / 256.0));
			D_802DF3A8_25EAE8 = (f32)((f64)D_802E0E32 * (1.0 / 256.0));
		}
	} else {
		*(s16 *)D_802E0E30 = 0x100;
		D_802DF3A4_25EAE4 = 1.0f;
		D_802E0E32 = 0x100;
		D_802DF3A8_25EAE8 = 1.0f;
		alien->unk4B = 0;
	}

	func_80004214_4E14(*(s16 *)D_802E0E30, func_80011F90_12B90(&D_E020FB0));
	func_80004214_4E14(D_802E0E32, func_80011F90_12B90(&D_E021030));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DBD84_25B4C4.s")
#endif

// CURRENT(7800)
#ifdef NON_MATCHING
void func_802DC244_25B984(u8 arg0) {
	AlienInstance *alien;
	s32 sp80;
	AlienInstance *parent;
	s32 sp50;

	alien = &alienInstances[arg0];
	parent = &alienInstances[alien->unk25];
	sp80 = func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8;

	if ((alien->unk20 & 0x7000) == 0x7000) {
		if (parent->unk20 & 0x4000) {
			((s16 *)((u8 *)alienSpecs + 0xB38))[0] = 0x600;
			((s16 *)((u8 *)alienSpecs + 0xB38))[1] = 0x400;
			func_8008064C_8F5FC(arg0);
			if (((sp80 + 0x546) < alien->unk2) || (alien->unkA > 0)) {
				if (alien->unkA < 0x7830) {
					alien->unkA = (s16)(alien->unkA + 0x7D0);
				}
			}
			if (alien->unkA >= 0x7830) {
				parent->unk20 &= ~0x4000;
				parent->unk20 |= 0x8000;
				alien->unk20 |= 0x40000000;
			}
		} else if (parent->unk20 & 0x8000) {
			s32 sp54;
			s32 sp7C;

			func_80137468_146418(arg0, 0x13C);
			sp54 = arg0;
			if (!(alien->unk20 & 0x40000000) || (alien->unk47 & 1)) {
				func_80135D44_144CF4(alien->unk0, sp80, alien->unk4, 5.0f);
			}
			func_80137468_146418(sp54, 0x259);
			func_800DEA08_ED9B8(alien->unk0, (s16)sp80, alien->unk4, 0x5DC,
				0xC, 0x10, 0x28, 0xFF, 0xA6, 0x85, 0x2F);
			func_800C541C_D43CC(alien->unk0, (s16)(sp80 + 5), alien->unk4, 0,
				0x7F, 0, 0xC8, 0xFF, 0x3C, 0x14, 0x6A, 0x53, 0);
			func_800E35E0_F2590(0xFF);
			D_802E099C_2600DC = alien->unk0;
			D_802E09A0_2600E0 = alien->unk4;
			sp50 = func_80084E54_93E04(D_80052B34, alien);
			if (sp50 < (vehicleSpecs[D_80052B34->unk1A].unkC + 0x64)) {
				func_80123AC4_132A74(D_80052B34);
			} else if ((sp50 < 0x3D0900) && !(D_80052B34->unk20 & 2)) {
				sp7C = 0x3D0900 - sp50;
				func_80102DDC_111D8C(D_80052B34,
					func_80003824_4424((f32)-(alien->unk0 - D_80052B34->unk0), (f32)-(alien->unk4 - D_80052B34->unk4)),
					(s16)(((f32)sp7C / D_802E0E00_260540) + 8192.0f),
					(f32)(sp7C * 0x32) / D_802E0E04_260544);
				D_80052B34->unk22 = 0x3E8 - (func_800038E0_44E0() % 2000);
				D_80052B34->unk24 = 0x3E8 - (func_800038E0_44E0() % 2000);
				D_80052B34->unk26 = 0x3E8 - (func_800038E0_44E0() % 2000);
			}
			parent->unk20 &= ~0x8000;
			alien->unk1E = 0x32;
		} else {
			s32 sp64;
			s32 sp6C;
			s32 sp70;
			f64 sp48;

			if (alien->unkA > 0) {
				alien->unkA = (s16)(alien->unkA - 0x7D0);
			}
			if ((alien->unk1E < 0x28) && ((D_802E099C_2600DC != -1) || (D_802E09A0_2600E0 != -1))) {
				sp64 = (alien->unk1E * -0x32) + 0x7D0;
				sp50 = ((alien->unk1E % 5) * 0x3333) & 0xFFFF;
				sp48 = (f64)sp64;
				sp70 = (s32)(((f64)(f32)sins(sp50) / 32768.0) * sp48 + (f64)D_802E099C_2600DC);
				sp6C = (s32)((f64)D_802E09A0_2600E0 - (((f64)(f32)coss(sp50) / 32768.0) * sp48));
				func_800DFA34_EE9E4((s16)sp70, (s16)sp80, (s16)sp6C, 0x96, 0);
				alien->unk20 |= 0x400000;
				func_80124B5C_133B0C((s16)sp70, (s16)sp80, (s16)sp6C, 0xDAC, 0x190);
				alien->unk20 &= ~0x400000;
			}
			if (alien->unk1E == 0) {
				parent->unk20 |= 0x4000;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DC244_25B984.s")
#endif

void func_802DC7FC_25BF3C(u8 arg0) {
	Unk80052B40 sp20;

	sp20 = D_802E09A4_2600E4;
	sp20.unk2 = (alienInstances[arg0].unk2C * 3) + 0x80;

	func_800039D0_45D0(0, 0, &sp20, func_80011F90_12B90(&D_E020FF0));
}

// CURRENT(14015)
#ifdef NON_MATCHING
void func_802DC880_25BFC0(s32 arg0) {
	u8 alienIdx;
	s32 sp5C;
	s32 sp58;
	s32 sp54;
	s32 sp60;
	s32 sp88;
	s16 sp4C;
	s16 sp4E;
	u8 sp50;
	u8 sp51;
	u8 sp52;
	s16 spA6;
	s16 spA2;
	s16 spA0;
	AlienInstance *temp_s0;
	AlienInstance *temp_t0;
	s32 temp;
	f32 calc;

	alienIdx = arg0;
	sp5C = 0x190;
	sp58 = 0x2BC;
	sp54 = 0x384;
	temp_s0 = &alienInstances[alienIdx];
	temp_t0 = &alienInstances[temp_s0->unk25];
	sp60 = (s32)temp_t0;
	if (temp_t0->unk20 & 0x10000) {
		return;
	}
	if (temp_s0->unk12 != 0) {
		func_80137468_146418(alienIdx, 0x25E);
	} else {
		func_80137468_146418(alienIdx, 0x25D);
	}
	sp4C = temp_s0->unk0;
	sp4E = temp_s0->unk4;
	spA6 = D_8014DD50[temp_s0->unkC].unkC;
	spA2 = D_8014DD50[spA6].unkD;
	spA0 = D_8014DD50[spA2].unkD;
	sp50 = 0xFF;
	sp51 = 0xFF;
	sp52 = 0xFF;
	(void)&sp51;
	(void)&sp52;
	temp = (func_800B84D0_C7480(sp4C, sp4E) >> 8) - temp_s0->unk2 + 0x4B0;
	calc = (f32)temp / 600.0f;
	func_800B2354_C1304(&sp4C, &sp50, (s16)(s32)(calc * 256.0f), (s16)(s32)(calc * 800.0f));
	func_800A92E0_B8290(alienIdx, 0x7000);
	if (temp_s0->unk20 & 0x4000) {
		sp58 = 0x258;
		sp54 = 0x320;
		if (temp_t0->unk20 & 0x1000) {
			sp5C = 0x2BC;
		} else if (temp_t0->unk20 & 0x4000) {
			sp5C = 0x5DC;
			sp58 = 0;
			sp54 = 0;
		} else {
			sp5C = 0x258;
		}
	}
	func_800A99B8_B8968(alienIdx);
	func_80086230_951E0(alienIdx, spA6, 0x2000);
	temp = temp_s0->unk0 - D_80052B34->unk0;
	sp88 = temp_s0->unk4 - D_80052B34->unk4;
	temp = (s32)sqrtf((f32)(temp * temp + sp88 * sp88));
	if (*(u8 *)&temp_t0->unk18 & 1) {
		sp88 = temp;
		if (func_80084FE8_93F98(alienIdx, 0x1000) != 0) {
			if (temp >= 0x5DD) {
				calc = 1;
			} else {
				calc = 0;
				*(u8 *)&temp_t0->unk18 &= 0xFE;
			}
		} else {
			calc = 0;
			*(u8 *)&temp_t0->unk18 &= 0xFE;
		}
		func_802DB7B8_25AEF8(alienIdx, sp5C, (u8)calc, spA0, spA2, 0x36B0, -0x1388, 0x9C4, D_802E0E08_260548);
		if ((temp_s0->unk10 + temp_s0->unk2) < 0x1F4) {
			temp_s0->unk10 = 0x1F4 - temp_s0->unk2;
		}
	} else if (!(temp_t0->unk20 & 0x8000)) {
		sp88 = temp;
		if (func_80084FE8_93F98(alienIdx, 0x2000) != 0) {
			temp = temp_s0->unk12;
			if (sp88 < (sp58 - temp)) {
				calc = 2;
				temp_t0->unk20 |= 0x2000;
			} else if ((temp + sp54) < sp88) {
				temp_t0->unk20 &= ~0x2000;
				if (((sp54 + 0x190) < sp88) && (temp_s0->unk20 & 0x4000) && !(temp_t0->unk20 & 0x5000)) {
					*(u8 *)&temp_t0->unk18 = 1;
				}
				calc = 1;
			} else {
				calc = 3;
			}
		} else {
			calc = 0;
		}
		func_802DB7B8_25AEF8(alienIdx, sp5C, (u8)calc, spA0, spA2, 0x1F40, -0x1388, 0x9C4, D_802E0E0C_26054C);
	}
	func_802DBD84_25B4C4(alienIdx);
	func_802DC7FC_25BF3C(alienIdx);
	func_802DBD08_25B448(alienIdx, 0xC8, 0x96);
	func_802DC244_25B984(alienIdx);
	if (temp_s0->unk1E != 0) {
		temp_s0->unk1E--;
	}
	func_800A9F34_B8EE4(alienIdx);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DC880_25BFC0.s")
#endif

// CURRENT(6774)
#ifdef NON_MATCHING
s32 func_802DCCD8_25C418(u8 arg0)
{
  Unk80052B40 sp70;
  Unk80052B40 sp68;
  Unk80052B40 sp60;
  Unk80052B40 sp58;
  s32 sp4C[3];
  u8 sp41;
  s16 sp48;
  s32 sp38;
  s32 sp34;
  s32 sp30;
  sp70 = D_802E09AC_2600EC;
  sp68 = D_802E09B4_2600F4;
  sp60 = D_802E09BC_2600FC;
  sp48 = D_8014DD50[alienInstances[arg0].unkC].unkC;
  sp41 = alienInstances[arg0].specIndex;
  sp38 = (s8) D_8014DD50[D_8014DD50[D_8014DD50[D_8014DD50[sp48].unkC].unkD].unkC].unkD;
  func_800A931C_B82CC((s8) sp38, (s16 *) (&sp70), sp4C);
  sp58.unk0 = D_8014DD50[D_8014DD50[D_8014DD50[sp48].unkC].unkD].unk0 + sp4C[0];
  sp58.unk2 = D_8014DD50[D_8014DD50[D_8014DD50[sp48].unkC].unkD].unk2 + sp4C[1];
  sp58.unk4 = D_8014DD50[D_8014DD50[D_8014DD50[sp48].unkC].unkD].unk4 + sp4C[2];
  sp34 = (s8) sp48;
  func_800A931C_B82CC((s8) sp48, (s16 *) (&sp58), sp4C);
  sp58.unk0 = sp4C[0];
  sp58.unk2 = sp4C[1];
  sp58.unk4 = sp4C[2];
  sp30 = (s8) alienInstances[arg0].unkC;
  func_800A931C_B82CC((s8) alienInstances[arg0].unkC, (s16 *) (&sp58), sp4C);
  alienSpecs[sp41].unk2C = (s16) (((f32) sp4C[0]) * D_802DF3A8_25EAE8);
  alienSpecs[sp41].unk2E = ((s16) (((f32) sp4C[1]) * D_802DF3A8_25EAE8)) ^ 0;
  alienSpecs[sp41].unk30 = (s16) (((f32) sp4C[2]) * D_802DF3A8_25EAE8);
  if (func_800879A4_96954(arg0, 100, 1) != 0)
  {
	return 1;
  }
  func_800A931C_B82CC((s8) sp38, (s16 *) (&sp68), sp4C);
  sp58.unk0 = D_8014DD50[D_8014DD50[D_8014DD50[sp48].unkC].unkD].unk0 + sp4C[0];
  sp58.unk2 = D_8014DD50[D_8014DD50[D_8014DD50[sp48].unkC].unkD].unk2 + sp4C[1];
  sp58.unk4 = D_8014DD50[D_8014DD50[D_8014DD50[sp48].unkC].unkD].unk4 + sp4C[2];
  func_800A931C_B82CC((s8) sp34, (s16 *) (&sp58), sp4C);
  sp58.unk0 = sp4C[0];
  sp58.unk2 = sp4C[1];
  sp58.unk4 = sp4C[2];
  func_800A931C_B82CC((s8) sp30, (s16 *) (&sp58), sp4C);
  alienSpecs[sp41].unk2C = (s16) (((f32) sp4C[0]) * D_802DF3A8_25EAE8);
  alienSpecs[sp41].unk2E = (s16) (((f32) sp4C[1]) * D_802DF3A8_25EAE8);
  alienSpecs[sp41].unk30 = (s16) (((f32) sp4C[2]) * D_802DF3A8_25EAE8);
  if (func_800879A4_96954(arg0, 100, 1))
  {
	return 1;
  }
  func_800A931C_B82CC((s8) sp38, (s16 *) (&sp60), sp4C);
  sp58.unk0 = D_8014DD50[D_8014DD50[D_8014DD50[sp48].unkC].unkD].unk0 + sp4C[0];
  sp58.unk2 = D_8014DD50[D_8014DD50[D_8014DD50[sp48].unkC].unkD].unk2 + sp4C[1];
  sp58.unk4 = D_8014DD50[D_8014DD50[D_8014DD50[sp48].unkC].unkD].unk4 + sp4C[2];
  func_800A931C_B82CC((s8) sp34, (s16 *) (&sp58), sp4C);
  sp58.unk0 = sp4C[0];
  sp58.unk2 = sp4C[1];
  sp58.unk4 = sp4C[2];
  func_800A931C_B82CC((s8) sp30, (s16 *) (&sp58), sp4C);
  alienSpecs[sp41].unk2C = (s16) (((f32) sp4C[0]) * D_802DF3A8_25EAE8);
  alienSpecs[sp41].unk2E = (s16) (((f32) sp4C[1]) * D_802DF3A8_25EAE8);
  alienSpecs[sp41].unk30 = (s16) (((f32) sp4C[2]) * D_802DF3A8_25EAE8);
  if (func_800879A4_96954(arg0, 100, 1) != 0)
  {
	return 1;
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DCCD8_25C418.s")
#endif

// CURRENT(42330)
#ifdef NON_MATCHING
void func_802DD104_25C844(u8 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
	s32 sp3C;
	s32 sp7C[3];
	s16 sp90[3];
	s32 sp78, sp74, sp70;
	s32 sp6C, sp68, sp64;
	s16 sp98, sp9A, sp9C;
	AlienInstance *self = &alienInstances[arg0];
	u8 specIndex = self->specIndex;
	s16 spA0;
	s16 spA4;
	s8 tempVar;

	func_802DBD08_25B448(arg0, 0x190, 0x190);

	{
		s16 posVal = func_800860CC_9507C(self->unk0, self->unk2, self->unk4);
		s16 result = func_80085A9C_94A4C(D_8014DD50[self->unkC].unkA, posVal - 0x400, 0x1F40, -0x1770, alienSpecs[specIndex].unk42);

		sp3C = -arg4 * 0x400;
		D_8014DD50[self->unkC].unkA = result;
		D_8014DD50[self->unkC].unk6 = (s16)sp3C;
	}

	func_80085F68_94F18(arg0, (s16)D_8014DD50[self->unkC].unkC, 0xFA0);

	{
		AlienInstance *parent2 = &alienInstances[alienInstances[self->unk25].unk25];
		if (parent2->unk20 & 0x1000) {
			return;
		}
	}

	if (self->unk20 & 0x2000) {
		Unk8014DD50 *entry = &D_8014DD50[self->unkC];
		s8 idx2 = entry->unkC;
		Unk8014DD50 *entry2 = &D_8014DD50[idx2];
		s8 idx3 = entry2->unkC;
		Unk8014DD50 *entry3 = &D_8014DD50[idx3];
		
		spA0 = entry3->unkD;
		spA4 = idx2;
		
		entry3->unk4 += self->unk2C;
		entry3->unk4 += (s16)(arg4 * self->unk2C / 8);
		if (self->unk2C == -0x58) {
			self->unk20 &= ~0x2000;
		}
		self->unk2C -= 8;

		sp90[0] = (s16)arg1;
		sp90[1] = (s16)arg2;
		sp90[2] = (s16)arg3;
		func_800A931C_B82CC((s8)spA0, sp90, sp7C);

		sp90[0] = (s16)sp7C[0];
		sp90[1] = (s16)sp7C[1];
		sp90[2] = (s16)sp7C[2];
		func_800A931C_B82CC((s8)idx3, sp90, sp7C);

		sp7C[0] = (s32)((f32)sp7C[0] * D_802DF3A8_25EAE8);
		sp7C[1] = (s32)((f32)sp7C[1] * D_802DF3A8_25EAE8);
		sp7C[2] = (s32)((f32)sp7C[2] * D_802DF3A8_25EAE8);
		func_80128428_1373D8(self, (s16)sp7C[0], (s16)sp7C[1], (s16)sp7C[2], &sp78, &sp74, &sp70);

		sp90[0] = (s16)sp7C[0];
		sp90[1] = (s16)sp7C[1];
		sp90[2] = (s16)sp7C[2];
		func_800A931C_B82CC((s8)(idx3 + 4), (s16 *)entry2, sp7C);

		sp90[0] = (s16)sp7C[0];
		sp90[1] = (s16)sp7C[1];
		sp90[2] = (s16)sp7C[2];
		func_800A931C_B82CC((s8)(spA0 + 4), sp90, sp7C);

		sp7C[0] = (s32)((f32)sp7C[0] * D_802DF3A8_25EAE8);
		sp7C[1] = (s32)((f32)sp7C[1] * D_802DF3A8_25EAE8);
		sp7C[2] = (s32)((f32)sp7C[2] * D_802DF3A8_25EAE8);
		func_80128428_1373D8(self, (s16)sp7C[0], (s16)sp7C[1], (s16)sp7C[2], &sp6C, &sp68, &sp64);

		func_800D16BC_E066C((s16)sp78, (s16)sp74, (s16)sp70, (s16)sp6C, (s16)sp68, (s16)sp64, 1);

		if (self->unk20 & 0x4000) {
			s8 v = entry->unkC;
			s8 v2 = D_8014DD50[v].unkD;
			sp98 = v;
			sp9A = v2;
			sp9C = D_8014DD50[v2].unkD;

			if (sp3C < -0x3FF) {
				tempVar = func_80081F18_90EC8(arg0, 3, 7, &sp98, &D_802E07EC_25FF2C);
			} else {
				tempVar = func_80081F18_90EC8(arg0, 3, 7, &sp98, &D_802E0948_260088);
			}
			if (tempVar == 7) {
				self->unk20 &= ~0x4000;
			}
		}

		if ((self->unk2C < 0) && (self->unk2C >= -0x2B)) {
			if (func_802DCCD8_25C418(arg0)) {
				if (!(self->unk20 & 0x1000)) {
					func_80102DDC_111D8C(D_80052B34, self->unk6 + 0x8000, 0, 0x42700000);
					func_80137468_146418(arg0, 0x135);

					{
						u8 sp61 = *((u8 *)&alienInstances[alienInstances[self->unk25].unk25]);
						u8 sp60 = *(((u8 *)&alienInstances[alienInstances[self->unk25].unk25]) + 1);
						AlienInstance *inst1 = &alienInstances[sp61];
						AlienInstance *inst2 = &alienInstances[sp60];
						if (!(inst1->unk20 & 0x100000)) {
							inst1->unk26 = 4;
							inst1->unk1E = 0;
							inst1->unk20 |= 0x1000;
						}

						if (!(inst2->unk20 & 0x100000)) {
							inst2->unk26 = 4;
							inst2->unk1E = 0;
							inst2->unk20 |= 0x1000;
						}
					}
				}
			}
		}
	} else {
		if (!(self->unk20 & 0x1000)) {
			u8 sp61 = *((u8 *)&alienInstances[alienInstances[self->unk25].unk25]);
			u8 sp60 = *(((u8 *)&alienInstances[alienInstances[self->unk25].unk25]) + 1);
			AlienInstance *inst = &alienInstances[sp61];
			s32 f = inst->unk20;
			if (!(f & 0xA000) || (f & 0x100000)) {
				inst = &alienInstances[sp60];
				f = inst->unk20;
				if (!(f & 0xA000) || (f & 0x100000)) {
					goto skip_others;
				}
			}
		}

		{
			Unk8014DD50 *entry = &D_8014DD50[self->unkC];
			s8 idx2 = entry->unkC;
			Unk8014DD50 *entry2 = &D_8014DD50[idx2];
			s8 idx3 = entry2->unkC;
			Unk8014DD50 *entry3 = &D_8014DD50[idx3];
			s16 spA0 = entry3->unkD;

			if ((self->unk26 == 0) && (alienInstances[alienInstances[self->unk25].unk25].unk20 & 0x2000) && func_800851C8_94178(arg0, (s8)spA0, 0x800) && (D_802E0E30 >= 0x101) && (alienInstances[self->unk25].unk20 & 0x4000)) {
				self->unk36 = 0;
				self->unk2C = 0x58;
				self->unk20 |= 0x6000;
			} else if ((self->unk26 != 0) || func_800851C8_94178(arg0, (s8)spA0, 0x800)) {
				func_800A931C_B82CC((s8)spA0, (s16 *)entry3, sp7C);

				sp90[0] = (s16)sp7C[0];
				sp90[1] = (s16)sp7C[1];
				sp90[2] = (s16)sp7C[2];
				func_800A931C_B82CC((s8)idx3, sp90, sp7C);

				{
					AlienSpec *spec = &alienSpecs[specIndex];
					sp7C[0] = (s32)((f32)sp7C[0] * D_802DF3A8_25EAE8);
					sp7C[1] = (s32)((f32)sp7C[1] * D_802DF3A8_25EAE8);
					spec->unk20 = (s16)sp7C[0];
					spec->unk22 = (s16)sp7C[1];
					sp7C[2] = (s32)((f32)sp7C[2] * D_802DF3A8_25EAE8);
					spec->unk24 = (s16)sp7C[2];

					if (alienInstances[self->unk25].unk20 & 0x4000) {
						func_80128428_1373D8(self, spec->unk20, spec->unk22, spec->unk24, &sp78, &sp74, &sp70);
						func_80135D44_144CF4(sp78, sp74, sp70, 0x40000000);
						*(s32 *)((u8 *)spec + 0x1C) = 0x60;
					} else {
						*(s32 *)((u8 *)spec + 0x1C) = 0x22;
					}
				}

				if (func_800868A4_95854(arg0, 0, (s16)(-entry2->unk6), entry->unkA)) {
					u8 state = self->unk26;
					if (state != 1) {
						if (state == 0) {
							self->unk26 = 2;
						}
						self->unk1E = 0xA;
						self->unk26 -= 1;
					} else {
						self->unk20 &= ~0x1000;
						self->unk26 = 0;
						if (alienInstances[self->unk25].unk20 & 0x4000) {
							self->unk1E = (func_800038E0_44E0() % 100) + 0x28;
						} else {
							self->unk1E = (func_800038E0_44E0() % 140) + 0x3C;
						}
					}
				}
			}
		}
	}

skip_others:
	if (self->unk1E != 0) {
		self->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DD104_25C844.s")
#endif

void func_802DD9C8_25D108(u8 arg0) {
	f32 scale = D_802DF3A4_25EAE4;

	func_800A93A4_B8354(arg0, (s16)(s32)(-124.0f * scale), (s16)(s32)(18.0f * scale), (s16)(s32)(21.0f * scale));
	func_802DD104_25C844(arg0, -0x25, 9, 0x4C, 1);
}

void func_802DDA64_25D1A4(u8 arg0) {
	func_800A93A4_B8354(arg0, -0x7C, 0x12, 0x15);
}

void func_802DDA98_25D1D8(u8 arg0) {
	f32 scale = D_802DF3A4_25EAE4;

	func_800A93A4_B8354(arg0, (s16)(s32)(124.0f * scale), (s16)(s32)(18.0f * scale), (s16)(s32)(21.0f * scale));
	func_802DD104_25C844(arg0, 0x22, 7, 0x4D, -1);
}

void func_802DDB34_25D274(u8 arg0) {
	func_800A93A4_B8354(arg0, 0x7C, 0x12, 0x15);
}

// CURRENT(623)
#ifdef NON_MATCHING
void func_802DDB68_25D2A8(u8 arg0) {
	s32 sp44[3];
	s32 sp40;
	s32 sp3C;
	s32 sp38;
	u8 id;

	func_800A931C_B82CC((s8)alienInstances[arg0].unkC, (s16 *)&D_8014DD50[D_8014DD50[alienInstances[arg0].unkC].unkC], sp44);
	func_80128428_1373D8(&alienInstances[arg0], (s16)sp44[0], (s16)sp44[1], (s16)sp44[2], &sp40, &sp3C, &sp38);
	id = func_8007956C_8851C(0x1F);
	if (id == 0xFF) {
		return;
	}
	alienInstances[id].unk20 |= 0x40000000;
	alienInstances[id].unk0 = (s16)sp40;
	alienInstances[id].unk2 = (s16)sp3C;
	alienInstances[id].unk4 = (s16)sp38;
	alienInstances[id].unkE = alienInstances[arg0].unk6;
	alienInstances[id].unk12 = 0x600;
	alienInstances[id].unk2C = 0x14;
	alienInstances[id].unk6 = alienInstances[arg0].unk6;
	func_8007A2A0_89250(id);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DDB68_25D2A8.s")
#endif

// CURRENT(117)
#ifdef NON_MATCHING
void func_802DDC88_25D3C8(u8 arg0) {
	s32 pad34;
	s32 pad35;
	s32 pad36;
	s32 pad37;
	s32 pad38;
	s16 sp42;
	s16 sp40;
	u8 v0;
	s8 ret;
	AlienInstance *alien;

	func_800A93A4_B8354(arg0, -6, -0x73, 0x13);

	alien = &alienInstances[arg0];
	sp40 = alien->unkC;
	sp42 = D_8014DD50[alien->unkC].unkC;

	if (alien->unk20 & 0x2000) {
		if (alien->unk24 < 20) {
			alien->unk24++;
		}

		ret = func_80081F18_90EC8(arg0, 1, 4, &sp40, &D_802E0698_25FDD8);
		if (ret == 3) {
			func_802DDB68_25D2A8(arg0);
			alien->unk3C++;
			alien->unk2C = 0x100;
			alien->unk20 &= 0xFFBFFFFF;
		} else if (ret == 4) {
			alien->unk20 &= ~0x2000;
		}

		v0 = alien->unk24;
	} else {
		if (alien->unk24 == 0) {
			if (alien->unk2C == 0 && alien->unk3A == 0 && alien->unk3C < 12) {
				if (func_80084FE8_93F98(arg0, 0x2000)) {
					if (alien->unk26 == 0) {
						alien->unk26 = 4;
					} else {
						func_80137468_146418(arg0, 0x13A);
						alien->unk20 |= 0x2000;
						if (alien->unk26 == 1) {
							alien->unk3A = 100;
						}
						alien->unk26--;
					}
					alien->unk24 = 0;
					alien->unk36 = 0;
				}
			}
			v0 = alien->unk24;
		} else {
			alien->unk24--;
			v0 = alien->unk24;
		}
	}

	*(u16 *)&D_8014DD50[sp42].unkA += v0 * 200;

	func_80137468_146418(arg0, 0x261);

	if (alien->unk2C != 0) {
		alien->unk2C -= 16;
	}

	func_80004214_4E14((s16)(0x100 - alien->unk2C), func_80011F90_12B90(&D_E021070));

	if (alien->unk3A != 0) {
		alien->unk3A--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DDC88_25D3C8.s")
#endif

void func_802DDF04_25D644(u8 arg0) {
	func_800A93A4_B8354(arg0, -6, -115, 19);
	alienInstances[arg0].unk2C = 0x100;
}

// CURRENT(6105)
#ifdef NON_MATCHING
void func_802DDF50_25D690(u8 arg0) {
	AlienInstance *alien;
	s32 sp74;
	s32 tmp;
	f32 sp68;
	f32 sp64;
	s16 sp5E;
	s16 sp7E;

	alien = &alienInstances[arg0 & 0xFF];
	sp5E = alien->specIndex;

	if (alien->unk2C >= 2) {
		alien->unk12 = 0x600;
	}

	alien->unkA += 0xFA0;
	func_80137468_146418(arg0 & 0xFF, 0x265);

	if ((func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8) < (alien->unk2 - alienSpecs[sp5E].unk58)) {
		alien->unk20 |= 0x40000000;
	} else {
		alien->unk20 &= 0xBFFFFFFF;
		alien->unk10 = 0;
	}

	if (alien->unk2C != 0) {
		alien->unk2C--;
		alien->unk20 |= 0x400000;

		if (!(alien->unk20 & 0x40000000) && !(D_80052A8C & 3)) {
			sp68 = (f32)((f64)(f32)sins((alien->unk6 - 0x4000) & 0xFFFF) / 32768.0);
			sp64 = -(f32)((f64)(f32)coss((alien->unk6 - 0x4000) & 0xFFFF) / 32768.0);

			func_800C541C_D43CC(alien->unk0, alien->unk2, alien->unk4,
				(s8)(s32)(sp68 * 64.0f), 0x7F,
				(s32)(sp64 * 64.0f),
				0x32, 0xC8, 6, 2, 0xFF, 0xFF,
				(func_800038E0_44E0() % 155) + 100);
		}

		if (alien->unk2C == 0) {
			alien->unk20 = (alien->unk20 & 0xFFBFFFFF) | 0x08000000;
			alien->unk48 = (func_800038E0_44E0() % 800) + 0x258;
			alien->unk26 = (func_800038E0_44E0() % 100) + 0x32;
		}
	} else if (alien->unk26 == 0) {
		s32 dx;
		s32 dz;

		dx = alien->unk0 - alien->unk14;
		dz = alien->unk4 - alien->unk18;

		if ((s32)sqrtf((f32)(dx * dx + dz * dz)) < 0xC8) {
			alien->unk20 |= 0x10;
		}

		if (!(alien->unk20 & 0x10)) {
			func_8008076C_8F71C(arg0 & 0xFF);
		}

		if (alien->unk3C != 0) {
			alien->unk3C--;
		} else {
			alien->unk20 = (alien->unk20 | 0x08000000) & ~0x10;
			alien->unk48 = (func_800038E0_44E0() % 800) + 0x258;
			alien->unk26 = (func_800038E0_44E0() % 100) + 0x64;
		}
	} else {
		sp74 = func_80084E54_93E04((VehicleInstance *)alien, D_80052B34);
		func_8008076C_8F71C(arg0 & 0xFF);

		if ((alien->unk48 + 0x96) < sp74) {
			alien->unk20 = (alien->unk20 | 0x100) & ~0x840;
		} else if ((alien->unk48 - 0x96) < sp74) {
			alien->unk20 = (alien->unk20 | 0x800) & 0xFFFF7EBF;
		} else {
			alien->unk20 = (alien->unk20 | 0x140) & ~0x800;
		}

		if (alien->unk26 != 0) {
			alien->unk26--;
			if (alien->unk26 == 0) {
				alien->unk20 &= 0xF7FFFFFF;
				alien->unk20 |= 0x100;
				alien->unk20 &= ~0x840;
				alien->unk14 = D_80052B34->unk0;
				alien->unk3C = 0x3C;
				alien->unk18 = D_80052B34->unk4;
			}
		}
	}

	if (func_800879A4_96954(arg0 & 0xFF, 0x32, 0) != 0) {
		sp7E = (s16)(s32)(((f64)(f32)coss((u16)alien->unk6) / 32768.0) * 30.0);
		tmp = (s16)(s32)(((f64)(f32)sins((u16)alien->unk6) / 32768.0) * 30.0);

		func_800C541C_D43CC(alien->unk0, (s16)(alien->unk2 - 0x32), alien->unk4,
			(s8)(sp7E >> 8), 0x1E,
			(s32)(s16)tmp,
			0x46, 0x1E, 0x14, 0x32, 0xFF, 0xFF, 0);

		if (!(D_80052A8C & 1)) {
			func_800DFA34_EE9E4(alien->unk0, alien->unk2, alien->unk4, 0x4C, 0);
		}

		func_80122524_1314D4(D_80052B34, 0xFA,
			(s16)(s32)((f64)D_80052B34->unk0 - (((f64)(f32)coss(alien->unkE) / 32768.0) * 50.0)),
			(s16)(s32)((f64)D_80052B34->unk4 - (((f64)(f32)sins(alien->unkE) / 32768.0) * 50.0)));

		if ((D_80052B34->unk1A != 0) && (alien->unk24 == 0)) {
			func_80137468_146418(arg0 & 0xFF, 0x264);
			alien->unk24 = 1;
		}
	} else {
		alien->unk24 = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DDF50_25D690.s")
#endif

// CURRENT(8729)
#ifdef NON_MATCHING
void func_802DE5E8_25DD28(u8 arg0) {
	s32 sp64;
	s32 sp60;
	s32 sp5C;
	s32 sp54;
	s32 sp50;
	s32 sp4C;
	u32 sp70_word;
	u32 sp70_hword;
	AlienInstance *sp80;
	s16 sp88;
	s16 sp86;
	s16 temp_v0;
	Unk8014DD50 *var_t0;

	sp70_word = D_802E0CDC_26041C.unk0;
	sp70_hword = D_802E0CDC_26041C.unk4;
	sp50 = arg0;
	temp_v0 = arg0;
	sp80 = &alienInstances[alienInstances[arg0].unk25];
	sp88 = D_8014DD50[(u8)D_8014DD50[alienInstances[arg0].unkC].unkC].unkD;
	var_t0 = &D_8014DD50[sp88];
	sp86 = var_t0->unkD;

	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_UNKG)) {
		sp54 = (s32)var_t0;
		func_80088000_96FB0((s16)arg0);
		func_8012B21C_13A1CC();
		func_800A92B0_B8260();

		alienInstances[*(u8 *)sp80].unk2C += 0x14;
		alienInstances[*((u8 *)sp80 + 1)].unk2C += 0x14;
		alienInstances[arg0].unk2C = 0xD2;

		func_800DF848_EE7F8(*(s16 *)((u8 *)&sp64 + 2), *(s16 *)((u8 *)&sp60 + 2), *(s16 *)((u8 *)&sp5C + 2), 0x12C, 3);
		func_80137468_146418(arg0, 0x11);
	} else {
		if (alienInstances[arg0].unk2C >= 0x97) {
			func_802DB7B8_25AEF8(arg0, 0x258, 0, sp86, sp88, 0x1F40, -0x1388, 0x9C4, D_802E0E10_260550);
		}
	}

	if (alienInstances[arg0].unk2C == 0x96) {
		func_80128428_1373D8(&alienInstances[arg0], var_t0->unk0, var_t0->unk2, var_t0->unk4, &sp64, &sp60, &sp5C);
		func_800DF848_EE7F8(*(s16 *)((u8 *)&sp64 + 2), *(s16 *)((u8 *)&sp60 + 2), *(s16 *)((u8 *)&sp5C + 2), 0x12C, 3);
		func_80088E10_97DC0(sp88);

		var_t0 = &D_8014DD50[sp86];
		func_80128428_1373D8(&alienInstances[arg0], var_t0->unk0, var_t0->unk2, var_t0->unk4, &sp64, &sp60, &sp5C);
		func_800DF848_EE7F8(*(s16 *)((u8 *)&sp64 + 2), *(s16 *)((u8 *)&sp60 + 2), *(s16 *)((u8 *)&sp5C + 2), 0x12C, 3);
		func_80088E10_97DC0(sp86);

		alienInstances[arg0].unk20 |= ALIEN_FLAG_UNKF | ALIEN_FLAG_UNKD;
		alienInstances[arg0].unk12 = 0;
	}

	if (!(alienInstances[arg0].unk20 & ALIEN_FLAG_FALL) && (alienInstances[arg0].unk20 & ALIEN_FLAG_UNKD)) {
		alienInstances[arg0].unk20 &= ~ALIEN_FLAG_UNKD;
		sp4C = 0;

		func_80135D44_144CF4(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 5.0f);
		func_80137468_146418(arg0, 0x13D);
		func_800DEA08_ED9B8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0x320, 0xC, 0x10, 0x28, 0xFF, 0xA6, 0x85, 0x2F);
		func_800C541C_D43CC(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0, 0x7F, 0, 0x64, 0xFF, 0x3C, 0x14, 0x6A, 0x53, 0);
		func_800E35E0_F2590(0xFF);
		func_80088000_96FB0(0);
	}

	func_800AA340_B92F0(arg0);
	func_80137468_146418(arg0, 0x28);

	(void)sp70_word;
	(void)sp70_hword;
	(void)temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DE5E8_25DD28.s")
#endif

// CURRENT(6208)
#ifdef NON_MATCHING
void func_802DE990_25E0D0(u8 arg0, s16 arg1, s16 arg2, s16 arg3, Unk8014DD50 *arg4) {
	s32 sp38[3];
	s16 sp44[3];
	s16 sp54;
	s16 sp58;
	s16 sp5A;
	s32 sp5C;
	s32 sp60;
	s32 sp64;
	s32 temp_t6;
	AlienInstance *alien;

	alien = &alienInstances[arg0];
	sp58 = D_8014DD50[alien->unkC].unkC;
	sp5A = alien->unkC;
	sp54 = D_8014DD50[D_8014DD50[alien->unkC].unkC].unkD;

	if (!(alien->unk20 & 0x100000)) {
		func_80128428_1373D8(alien, arg1, arg2, arg3, &sp64, &sp60, &sp5C);
		func_800DF848_EE7F8((s16)sp64, (s16)sp60, (s16)sp5C, 0x96, 0);

		temp_t6 = alien->unk20 | ALIEN_FLAG_UNKD;
		alien->unk2C = 0x28;
		alien->unk36 = 0;
		alien->unk26 = 3;
		alien->unk20 = temp_t6;

		if (temp_t6 & ALIEN_FLAG_UNKF) {
			alien->unk26 = 2;
			func_800A931C_B82CC((s8)sp58, (s16 *)&D_8014DD50[sp54], sp38);

			sp44[0] = (s16)sp38[0];
			sp44[1] = (s16)sp38[1];
			sp44[2] = (s16)sp38[2];

			func_800A931C_B82CC((s8)sp5A, sp44, sp38);

			sp38[0] = (s32)((f32)sp38[0] * D_802DF3A8_25EAE8);
			sp38[1] = (s32)((f32)sp38[1] * D_802DF3A8_25EAE8);
			sp38[2] = (s32)((f32)sp38[2] * D_802DF3A8_25EAE8);

			func_80128428_1373D8(alien, (s16)sp38[0], (s16)sp38[1], (s16)sp38[2], &sp64, &sp60, &sp5C);
			func_800DF848_EE7F8((s16)sp64, (s16)sp60, (s16)sp5C, 0x1F4, 2);
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, 0x1F4, 6);
		}

		func_80137468_146418(arg0, 0x11);
	}

	if (alien->unk2C == 1) {
		func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, 0x1F4, 6);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DE990_25E0D0.s")
#endif

void func_802DEC0C_25E34C(u8 arg0) {
	func_800A93A4_B8354(arg0, (s16)(s32)(-124.0f * D_802DF3A4_25EAE4), (s16)(s32)(18.0f * D_802DF3A4_25EAE4), (s16)(s32)(21.0f * D_802DF3A4_25EAE4));
	func_802DE990_25E0D0(arg0, -0x80, 0, 0, &D_802E0B44_260284);
}

void func_802DECAC_25E3EC(u8 arg0) {
	func_800A93A4_B8354(arg0, (s16)(s32)(124.0f * D_802DF3A4_25EAE4), (s16)(s32)(18.0f * D_802DF3A4_25EAE4), (s16)(s32)(21.0f * D_802DF3A4_25EAE4));
	func_802DE990_25E0D0(arg0, 0x80, 0, 0, &D_802E0CD0_260410);
}

void func_802DED4C_25E48C(u8 arg0) {
	AlienInstance *v0;
	u8 v1;
	AlienInstance *a2;

	func_800A93A4_B8354(arg0, (s16)(s32)(-6.0f * D_802DF3A4_25EAE4), (s16)(s32)(-115.0f * D_802DF3A4_25EAE4), (s16)(s32)(19.0f * D_802DF3A4_25EAE4));
	v0 = &alienInstances[arg0];
	v1 = v0->unk25;
	a2 = &alienInstances[alienInstances[v1].unk25];
	if (!(v0->unk20 & 0x100000)) {
		a2->unk20 |= 0x1000;
	}
	func_80089EB4_98E64(arg0, 0x14, 0, 3, 5);
}

void func_802DEE40_25E580(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];

	if (!(alien->unk20 & 0x100000)) {
		func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (u16)(alienSpecs[alien->specIndex].unkC * 2), 2);
	}
	alien->unk2C = 0;
}

// CURRENT(9052)
#ifdef NON_MATCHING
void func_802DEED4_25E614(void) {
	s16 temp_t0;
	s16 var_v0;
	s32 temp_a0;
	s32 temp_a1;
	s32 temp_a2;
	s32 temp_v1;

	temp_t0 = D_802E0CE8_260428;

	if (temp_t0 >= 0xF0) {
		if (D_802E0CE4_260424 == 1) {
			D_802E0CE4_260424 = 0;
			D_802E0CE8_260428 = 0xF0;
			func_80135D44_144CF4(0x47FE, 0x320, 0x1644, 1.0f);
			func_801371B8_146168(0, 0xE9, 0x47FE, 0x320, 0x1644, D_802E0E14_260554);
			temp_t0 = D_802E0CE8_260428;
		}
	}

	var_v0 = D_802E0CE4_260424;

	if (temp_t0 <= 0 && var_v0 == 3) {
		D_802E0CE4_260424 = 2;
		D_802E0CE8_260428 = 0;
		func_80135D44_144CF4(0x47FE, 0x320, 0x1644, 3.0f);
		func_801371B8_146168(0, 0xE9, 0x47FE, 0x320, 0x1644, D_802E0E18_260558);
		var_v0 = D_802E0CE4_260424;
		temp_t0 = D_802E0CE8_260428;
	}

	temp_a0 = D_80052B34->unk0;
	temp_a1 = temp_a0 - 0x47FE;
	temp_a2 = 0x47FE - temp_a0;
	if (temp_a1 >= 0) {
		temp_a2 = temp_a1;
	}

	if (temp_a2 < 0x4B0) {
		temp_a0 = D_80052B34->unk4;
		temp_a1 = temp_a0 - 0x1644;
		temp_v1 = 0x1644 - temp_a0;
		if (temp_a1 >= 0) {
			temp_v1 = temp_a1;
		}

		if (temp_v1 < 0x4B0) {
			if (var_v0 != 2) {
				D_802E0CE4_260424 = 3;
			}
		} else {
			if (var_v0 != 0) {
				D_802E0CE4_260424 = 1;
			}
		}
	} else {
		if (var_v0 != 0) {
			D_802E0CE4_260424 = 1;
		}
	}

	var_v0 = D_802E0CE4_260424;

	if (var_v0 == 1) {
		D_802E0CE8_260428 = temp_t0 + 4;
		func_801371B8_146168(0x64, 0x138, 0x47FE, 0x320, 0x1644, D_802E0E1C_26055C);
		temp_t0 = D_802E0CE8_260428;
		var_v0 = D_802E0CE4_260424;
	}

	if (var_v0 == 3) {
		D_802E0CE8_260428 = temp_t0 - 0xC;
		func_801371B8_146168(0x64, 0x138, 0x47FE, 0x320, 0x1644, D_802E0E20_260560);
	}

	temp_a2 = 0x47FE - temp_t0;
	if (temp_a2 >= 0) {
		D_80052B40.unk0 = temp_a2 >> 2;
	} else {
		D_80052B40.unk0 = (temp_a2 + 3) >> 2;
	}
	D_80052B40.unk4 = 0x591;
	D_80052B40.unk2 = 0xC8;
	D_80052B50.unk0 = 0x200;
	D_80052B50.unk2 = 0x100;
	D_80052B50.unk4 = 0x100;
	func_800039D0_45D0(&D_80052B40, NULL, &D_80052B50, D_8005BB38);

	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gSPDisplayList(D_8005BB2C++, D_504FD38);

	D_80052B40.unk4 = 0x593;
	D_80052B40.unk2 = 0xC8;
	D_80052B48.unk0 = 0x8000;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;

	temp_a2 = D_802E0CE8_260428 + 0x47FE;
	if (temp_a2 >= 0) {
		D_80052B40.unk0 = temp_a2 >> 2;
	} else {
		D_80052B40.unk0 = (temp_a2 + 3) >> 2;
	}
	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);

	gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gSPDisplayList(D_8005BB2C++, D_504FD38);

	func_8012D700_13C6B0(1, 0x64, (s16)(0x4727 - D_802E0CE8_260428), 0x320, 0x1644, 0, 0, 0, 0xD8, 0x16, 0x16C, NULL, &func_8012E1F8_13D1A8);
	func_8012D700_13C6B0(1, 0x65, (s16)(D_802E0CE8_260428 + 0x48D5), 0x320, 0x1644, 0, 0, 0, 0xD8, 0x16, 0x16C, NULL, &func_8012E1F8_13D1A8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/america/254410/func_802DEED4_25E614.s")
#endif
