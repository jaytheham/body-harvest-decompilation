#include <ultra64.h>
#include "common.h"


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

void func_802D536C_18DE7C(void) {
	s16 temp_diff;
	s16 status;

	temp_diff = 0xBD - D_8004D1B9;
	status = temp_diff;
	if ((temp_diff < 0xB5) && (D_802DE464 >= 0xA)) {
		func_8009BF64_AAF14((u16) temp_diff);
		status = temp_diff;
	}
	if (D_802DE464 < 0xA) {
		D_802DE464 += 1;
	}
	if ((status == 0) || (((s8) buildingInstances[55].hitPoints <= 0) && ((s8) buildingInstances[63].hitPoints <= 0) && ((s8) buildingInstances[57].hitPoints <= 0) && ((s8) buildingInstances[62].hitPoints <= 0))) {
		func_800074BC_80BC(func_802D536C_18DE7C);
	}
}

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

#ifdef NON_MATCHING
void func_802D5578_18E088(void) {
	u16 temp_t3;
	if (!(vehicleInstances[84].unk20 & 0x8000)) {
		func_800074BC_80BC(func_802D5578_18E088);
	}
	if ((vehicleInstances[84].unk0 < 0x1000) && (vehicleInstances[84].unk4 < -0x6B00)) {
		vehicleInstances[84].unk20 = (u16)(vehicleInstances[84].unk20 & 0xFBFF);
		func_800074BC_80BC(func_802D5578_18E088);
	}
	temp_t3 = D_802DE466 + 1;
	D_802DE466 = temp_t3;
	if (((temp_t3 & 0xFFFF) == 0x9C4) && (D_80048030 == 0xF)) {
		func_80007690_8290();
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D5578_18E088.s")
#endif

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
	extern void func_802D64D0_18EFE0(void);
	D_80157F94 = 0xFF;
	func_800EFEB4_FEE64(func_802D64D0_18EFE0, 6, 1);
	func_80013468_14068(2);
}

void func_802D5760_18E270(void) {
	extern void func_802D6904_18F414(void);
	D_80157F94 = 0xFF;
	func_800EFEB4_FEE64(func_802D6904_18F414, 7, 1);
	func_80013468_14068(3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D57A0_18E2B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D64D0_18EFE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D6904_18F414.s")

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

void func_802D7EBC_1909CC(u8 arg0) {
	s32 sp24;
	AlienInstance *alien;
	alien = &alienInstances[arg0];
	if ((alien->unk20 & 0x2000) && (alien->unk2C >= 0xF)) {
		func_80088760_97710(alien);
	}
	if (alien->unk2C == 0xE) {
		sp24 = func_80084F00_93EB0(D_80052B34, alien) - vehicleSpecs[D_80052B34->unk1A].unkC - alienSpecs[alien->specIndex].unkC;
		if ((func_80084FE8_93F98(arg0, 0x800) != 0) && (sp24 < 0x8C)) {
			alien->unk20 = alien->unk20 | 0x2000;
		}
	}
}

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
			alien->unk1E = 0x1E;
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
		alien->unk1E = 0x1E;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D85F8_191108.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D8724_191234.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D8898_1913A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D8BAC_1916BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D8D84_191894.s")

#ifdef NON_MATCHING
void func_802D90C8_191BD8(s32 arg0) {
	s32 temp_t6;
	AlienInstance *temp_v0;

	temp_t6 = arg0 & 0xFF;
	temp_v0 = &alienInstances[temp_t6];
	temp_v0->unk20 = (s32) (temp_v0->unk20 & 0xBFFFEFFF);
	func_800873A8_96358(temp_t6);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D90C8_191BD8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D911C_191C2C.s")

#ifdef NON_MATCHING
void func_802D95A8_1920B8(s32 arg0, s16 arg1, s16 arg2) {
	AlienInstance *temp_v1;
	AlienInstance *sp1C;

	temp_v1 = &alienInstances[arg0 & 0xFF];
	temp_v1->unk20 |= 0x1000;
	sp1C = temp_v1;
	if ((func_800038E0_44E0() & 1) && arg2 != -1) {
		temp_v1->unk26 = arg2;
	} else {
		temp_v1->unk26 = arg1;
	}
	temp_v1->unk36 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D95A8_1920B8.s")
#endif

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

#ifdef NON_MATCHING
void func_802DC91C_19542C(s32 arg0) {
	u8 alienIdx;
	alienIdx = arg0 & 0xFF;
	alienInstances[alienIdx].unk14 = -0x8D;
	alienInstances[alienIdx].unk16 = -0x7;
	alienInstances[alienIdx].unk18 = 0x26;
	func_802DC500_195010(alienIdx);
	func_800A93A4_B8354(alienIdx, -0xBB, 0x22, 0x147);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DC91C_19542C.s")
#endif

#ifdef NON_MATCHING
void func_802DC98C_19549C(s32 arg0) {
	u8 alienIdx;
	alienIdx = arg0 & 0xFF;
	alienInstances[alienIdx].unk14 = -0xA8;
	alienInstances[alienIdx].unk16 = 0xB6;
	alienInstances[alienIdx].unk18 = 0x39;
	func_802DC500_195010(alienIdx);
	func_800A93A4_B8354(alienIdx, -0x88, 0x32, 0xD4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DC98C_19549C.s")
#endif

#ifdef NON_MATCHING
void func_802DC9FC_19550C(s32 arg0) {
	u8 alienIdx;
	alienIdx = arg0 & 0xFF;
	alienInstances[alienIdx].unk14 = 0x9B;
	alienInstances[alienIdx].unk16 = -0x11;
	alienInstances[alienIdx].unk18 = 0x25;
	func_802DC500_195010(alienIdx);
	func_800A93A4_B8354(alienIdx, 0xBB, 0x24, 0x145);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DC9FC_19550C.s")
#endif

#ifdef NON_MATCHING
void func_802DCA6C_19557C(s32 arg0) {
	u8 alienIdx;
	alienIdx = arg0 & 0xFF;
	alienInstances[alienIdx].unk14 = 0x9C;
	alienInstances[alienIdx].unk16 = 0xCA;
	alienInstances[alienIdx].unk18 = 0x58;
	func_802DC500_195010(alienIdx);
	func_800A93A4_B8354(alienIdx, 0x99, 0x32, 0xD4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DCA6C_19557C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DCADC_1955EC.s")
