#include <ultra64.h>
#include "common.h"

void func_802D6D20_18F830(void);

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D4CD0_18D7E0.s")
void func_802D4E28_18D938(void) {
	if (func_8000726C_7E6C(0x17) != 0) {
		func_800073B8_7FB8(0x17);
	}
	if (func_8000726C_7E6C(0x19) != 0) {
		func_800073B8_7FB8(0x19);
	}
	if (func_8000726C_7E6C(0x1A) != 0) {
		func_800073B8_7FB8(0x1A);
	}
	if (func_8000726C_7E6C(0xF) != 0) {
		D_80050C0B = 0x77;
	}
	if (func_8000726C_7E6C(0xB) == 0) {
		func_80007410_8010(func_802D4ECC_18D9DC);
	}
}

void func_802D4ECC_18D9DC(void) {
	if (func_8000726C_7E6C(0xB) != 0) {
		func_800074BC_80BC(func_802D4ECC_18D9DC);
	}
	if (func_80004818_5418(-0x1A, -0x26, 2) != 0) {
		func_80018D7C_1997C(0x100);
		func_800074BC_80BC(func_802D4ECC_18D9DC);
	}
	if (D_80052B34->unk1A != 0) {
		func_800074BC_80BC(func_802D4ECC_18D9DC);
	}
}

void func_802D4F50_18DA60(void) {
	osViExtendVStart((s32) &D_802DD170);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D4F74_18DA84.s")

void func_802D5290_18DDA0(void) {
	D_8004DC58 = 0;
	D_802DE460 = 0;
	func_80007410_8010(func_802D4F74_18DA84);
}

s32 func_802D52C4_18DDD4(void) {
	D_80052554 -= 0x55;
	if (D_80052554 < 0x401) {
		D_80052554 = 0x400;
		func_800073B8_7FB8(0x2A);
		return 1;
	}
	return 0;
}

void func_802D531C_18DE2C(void) {
	func_800072CC_7ECC(0x2A);
	D_80052554 = 0x38A4;
	func_800EFEB4_FEE64(func_802D52C4_18DDD4, 1, 1);
	func_80013468_14068(1);
	D_801493E0 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D536C_18DE7C.s")


void func_802D5434_18DF44(void) {
	func_800074BC_80BC(func_802D536C_18DE7C);
	func_800076D4_82D4(5);
}

void func_802D5460_18DF70(void) {
	func_8011BF7C_12AF2C(0x37);
	func_8011BF7C_12AF2C(0x3F);
	func_8011BF7C_12AF2C(0x39);
	func_8011BF7C_12AF2C(0x3E);
	D_802DE464 = 0;
	func_80007410_8010(func_802D536C_18DE7C);
}

void func_802D54AC_18DFBC(void) {
	if ((D_80051008 >> 0xC) & 0x10) {
		func_8011C080_12B030(0x37);
		func_800AE190_BD140(3);
	}
	if ((D_800510C8 >> 0xC) & 0x10) {
		func_8011C080_12B030(0x3F);
		func_800AE190_BD140(3);
	}
	if ((D_80051038 >> 0xC) & 0x10) {
		func_8011C080_12B030(0x39);
		func_800AE190_BD140(3);
	}
	if ((D_800510B0 >> 0xC) & 0x10) {
		func_8011C080_12B030(0x3E);
		func_800AE190_BD140(3);
	}
	func_800074BC_80BC(func_802D536C_18DE7C);
	func_800076D4_82D4(5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D5578_18E088.s")


void func_802D562C_18E13C(void) {
	func_80092ADC_A1A8C();
	D_802DE466 = 0;
	func_80007410_8010(func_802D5578_18E088);
}

void func_802D5660_18E170(void) {
	D_8014D182 += 1;
	D_80052554 -= D_8014D182 * 8;
	if (D_8014D182 >= 0x32) {
		func_800072CC_7ECC(0x29);
		func_800073B8_7FB8(0x2A);
		func_800074BC_80BC(func_802D5660_18E170);
		func_800076D4_82D4(0x10);
		func_80123AC4_132A74(&D_8004FB00);
	}
}

void func_802D56E8_18E1F8(void) {
	D_8014D182 = 0;
	func_800072CC_7ECC(0x2A);
	func_80007410_8010(func_802D5660_18E170);
}

void func_802D5720_18E230(void) {
	extern s32 func_802D64D0_18EFE0(void);
	D_80157F94 = 0xFF;
	func_800EFEB4_FEE64(func_802D64D0_18EFE0, 6, 1);
	func_80013468_14068(2);
}

void func_802D5760_18E270(void) {
	extern s32 func_802D6904_18F414(void);
	D_80157F94 = 0xFF;
	func_800EFEB4_FEE64(func_802D6904_18F414, 7, 1);
	func_80013468_14068(3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D57A0_18E2B0.s")


#ifdef NON_MATCHING
s32 func_802D64D0_18EFE0(void) {
	s16 step;
	s16 substep;
	s16 alienIdx;
	s32 v0;
	AlienInstance *alien;
	BuildingInstance *building;

	step = D_80157F94;
	D_80157F96 = 0;

	if (step != (s16) 0xFF) {
		alienIdx = step * 5;
		func_800800E4_8F094(*(u8 *) ((u8 *) &D_800481B2 + alienIdx * 16));
		func_80080510_8F4C0(D_80157F95);
		step = D_80157F94;
		alien = &alienInstances[step];
		alien->unk6 = alien->unkE;
		((void (*)(u8)) *(s32 *) ((u8 *) &D_802566C8 + ((alienIdx * 4 - alienIdx) * 4 + alienIdx) * 8))((u8) step);
	}

	substep = D_80157F8E;
	switch (D_80157F8C) {
	case 0:
		func_8011D260_12C210(0x4A, -0x7);
		D_80159DDF = (u8) v0;
		D_80159DE0 = 0;
		D_80159DE2 = 0;
		D_80159DE4 = 0;
		D_80157F8E = 0;
		D_80052554 = 0x400;
		D_80157F98 = func_800CDB40_DCAF0(0x4AF0, 0x3B6, -0x664);
		D_80157F9A = func_800CDB40_DCAF0(0x4AFC, 0x3B6, -0x69C);
		func_800072CC_7ECC((u64)0x2A);
		D_80157F8C++;
		v0 = func_8007956C_8851C(0x12);
		alien = &alienInstances[v0];
		building = buildingInstances;
		alien->unkE = alien->unkE | 0x100;
		alien->unk0 = buildingInstances[97].xCoord + 0x80;
		alien->unk14 = buildingInstances[97].xCoord + 0x600;
		alien->unkE = alien->unkE & 0xF7FFFFFF;
		alien->unk24 = 2;
		alien->unk4 = buildingInstances[97].zCoord;
		alien->unk18 = buildingInstances[97].zCoord;
		func_8007A198_89148(v0);
		D_80157F94 = (s16) v0;
		break;
	case 1:
		if (substep >= 0xD8) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E = substep + 1;
		}
		break;
	case 2:
		func_800E35E0_F2590(0xA0);
		D_80157F8C++;
		break;
	case 3:
		func_800E35E0_F2590(0xFF);
		D_80157F8C++;
		break;
	case 4:
		func_800E35E0_F2590(0xA0);
		D_80157F8C++;
		break;
	case 5:
		func_800CDD7C_DCD2C(D_80157F98);
		func_800CDD7C_DCD2C(D_80157F9A);
		func_800DFBA8_EEB58(0x4AFC, 0x3A2, -0x680, 0xB4, 6);
		func_800C7E18_D6DC8();
		func_800CA5EC_D959C(0x4AFC, 0x3A2, -0x680, 0x28, 0x32, 0xFF, 0x28, 0x32, 0xA, 0x19, 0xB4, 0x5A, 0x50, 0x2D, 0xFF, 0x32);
		func_800CA5EC_D959C(0x4AFC, 0x3A2, -0x680, -0x28, 0x32, 0xFF, -0x28, 0x32, 0xA, 0x19, 0xB4, 0x5A, 0x50, 0x2D, 0xFF, 0x32);
		func_800E35E0_F2590(0x50);
		D_80157F8C++;
		break;
	case 6:
		if (substep >= 0x33) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E = substep + 1;
		}
		break;
	case 7:
		if (substep >= 0x2) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E = substep + 1;
		}
		break;
	case 8:
		func_800072CC_7ECC((u64)0x28);
		func_800073B8_7FB8((u64)0x2A);
		D_80159DDF = 0xFF;
		func_80079910_888C0(D_80157F94);
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D64D0_18EFE0.s")
#endif

#ifdef NON_MATCHING
s32 func_802D6904_18F414(void) {
	s16 step;
	s16 substep;
	s16 alienIdx;
	s32 v0;
	AlienInstance *alien;

	D_80157F96 = 0;
	D_80157F76 = 0x12C;
	D_80157FAC = 0xE;
	D_80157FAE = 0xB;
	D_80157FB0 = -0x9;

	osSyncPrintf(D_802DE30C, D_80157F8C, D_80157F8E);

	alienIdx = D_80157F94;
	if (alienIdx != (s16) 0xFF) {
		s32 idx5 = alienIdx * 5;
		if (*(u8 *) ((u8 *) &D_800481B2 + idx5 * 16) != 0) {
			func_800800E4_8F094((u8) alienIdx);
			func_80080510_8F4C0(D_80157F95);
			alienIdx = D_80157F94;
			alien = &alienInstances[alienIdx];
			alien->unk6 = alien->unkE;
			idx5 = alien->specIndex;
			((void (*)(u8)) *(s32 *) ((u8 *) &D_802566C8 + ((idx5 * 4 - idx5) * 4 + idx5) * 8))((u8) alienIdx);
		} else {
			D_80157F94 = 0xFF;
		}
	}

	substep = D_80157F8E;
	switch (D_80157F8C) {
	case 0:
		D_80157F8E = 0;
		D_80157F8C++;
		D_80157F84 = 200.0f;
		D_80157F88 = 0.0f;
		D_80157F78 = 400.0f;
		D_80157F7C = -2.0f;
		D_80157F80 = 100.0f;
		v0 = func_8007956C_8851C(0x12);
		if (v0 != (s16) 0xFF) {
			alien = &alienInstances[v0];
			alien->unkE = alien->unkE & 0xF7FFFE5F;
			alien->unk0 = 0x4C80;
			alien->unk4 = -0x6780;
			alien->unk14 = 0x4C80;
			alien->unk18 = -0x6380;
			alien->unkE = alien->unkE | 0x100;
			alien->unk24 = 2;
			alien->unkE = alien->unkE;
			alien->unk2A = 0x4000;
			func_8007A198_89148(v0);
			alien->unkE = alien->unkE;
			D_80157F94 = (s16) v0;
		}
		alienIdx = D_80157F94;
		alien = &alienInstances[alienIdx];
		D_80157F98 = func_800CDB40_DCAF0(alien->unk0, alien->unk2, alien->unk4);
		break;
	case 1:
		if (substep >= 0x38) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E = substep + 1;
		}
		break;
	case 2:
		func_800CDD7C_DCD2C(D_80157F98);
		func_800DFBA8_EEB58(0x4C7C, 0x350, -0x675C, 0xB4, 6);
		D_80157F8C++;
		break;
	case 3:
		if (substep >= 0x5) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E = substep + 1;
		}
		break;
	case 4:
		func_80124B5C_133B0C(0x4C7C, 0x350, -0x675C, 0x2711, 0x300);
		D_80157F8C++;
		break;
	case 5:
		if (substep >= 0x29) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E = substep + 1;
		}
		break;
	case 6:
		alienIdx = D_80157F94;
		alien = &alienInstances[alienIdx];
		osSyncPrintf(D_802DE318, alien->unk0 + 0x96, alien->unk2, alien->unk4);
		func_80087AAC_96A5C(D_80157F95);
		alienIdx = D_80157F94;
		((u8 *) &D_800481C4)[alienIdx * 5 * 16] = 0x14;
		D_80157F8C++;
		break;
	case 7:
		D_80157F94 = alienIdx;
		if (alienIdx != (s16) 0xFF) {
			func_80087AFC_96AAC((u8) alienIdx);
		}
		substep = D_80157F8E;
		if (substep >= 0x1F) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E = substep + 1;
		}
		break;
	case 8:
		D_80159DDF = 0xFF;
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D6904_18F414.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D6D20_18F830.s")
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D6F7C_18FA8C.s")


void func_802D7334_18FE44(void) {
	gSPDisplayList(D_8005BB2C++, D_9052C10);
}

void func_802D7360_18FE70(void) {
	gSPDisplayList(D_8005BB2C++, D_9052C70);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D738C_18FE9C.s")



#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D763C_19014C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D775C_19026C.s")


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D7D08_190818.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D7EBC_1909CC.s")


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D7FC0_190AD0.s")


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D8150_190C60.s")


void func_802D84A0_190FB0(u8 arg0) {
	s32 sp18;
	AlienInstance *alien;
	sp18 = 0;
	alien = &alienInstances[arg0];
	if (alien->unk20 & 0x600) {
		if ((func_80085448_943F8(arg0) != 0) && (func_80129354_138304((s32) alien, sp18, sp18, sp18, sp18) != 0)) {
			func_80137468_146418(arg0, 0x65);
			*(s16*)&alien->unk1E = 0x1E;
		}
	}
}

void func_802D852C_19103C(u8 arg0) {
	AlienInstance *alien;
	func_80091470_A0420(arg0);
	alien = &alienInstances[arg0];
	if (!(alien->unk20 & 0x4000)) {
		func_8009170C_A06BC(arg0);
	}
	if ((alien->unk20 & 0x100) && (func_800B325C_C220C((s8)((s16)alien->unk0 >> 8), (s8)((s16)alien->unk4 >> 8), 0x800) != 0) && (func_80129354_138304((s32)alien, 0, 0, 0, 0) != 0)) {
		func_80137468_146418(arg0, 0x65);
		*(s16*)&alien->unk1E = 0x1E;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D85F8_191108.s")



#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D8724_191234.s")



#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D8898_1913A8.s")


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D8BAC_1916BC.s")



#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D8D84_191894.s")



#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D90C8_191BD8.s")


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D911C_191C2C.s")


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D95A8_1920B8.s")



#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D962C_19213C.s")


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D9964_192474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D9C60_192770.s")


void func_802DA378_192E88(u8 arg0) {
	if (!(alienInstances[arg0].unk20 & 0x100000)) {
		func_80137468_146418(arg0, 0xF);
		func_802D9C60_192770(arg0);
	}
	func_80089EB4_98E64(arg0, 0x3C, 0, 6, 3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DA3EC_192EFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DB16C_193C7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DBA00_194510.s")


void func_802DBB88_194698(s32 arg0) {
	func_800A93A4_B8354(arg0 & 0xFF, -0xBB, 0x22, 0x147);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DBBBC_1946CC.s")


void func_802DBDA8_1948B8(s32 arg0) {
	func_800A93A4_B8354(arg0 & 0xFF, -0x88, 0x32, 0xD4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DBDDC_1948EC.s")


void func_802DBF64_194A74(s32 arg0) {
	func_800A93A4_B8354(arg0 & 0xFF, 0xBB, 0x24, 0x145);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DBF98_194AA8.s")


void func_802DC184_194C94(s32 arg0) {
	func_800A93A4_B8354(arg0 & 0xFF, 0x99, 0x32, 0xD4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DC1B8_194CC8.s")


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DC2E4_194DF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DC500_195010.s")


void func_802DC500_195010(u8 arg0);

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DC91C_19542C.s")
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DC98C_19549C.s")
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DC9FC_19550C.s")
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DCA6C_19557C.s")
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DCADC_1955EC.s")
