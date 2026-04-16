#include <ultra64.h>
#include "common.h"

s32 D_802DD170[] = {
	0x00000000,
	0x00FA0C00,
	0x00040000,
	0x00120000,
};

u32 D_802DD180_195C90[] = {
	0x001B0000, 0x00210000, 0x00230000, 0x00060C00,
	0x00270000, 0x00060C00, 0x002B0000, 0x00010C00,
	0x002D0000, 0x002E0000, 0x00020C00, 0x00320000,
	0x00060C00, 0x00330000, 0x00340000, 0x00030C00,
	0x00350000, 0x00360000, 0x00370000, 0x00020C00,
	0x00380000, 0x00020C00, 0x00390000, 0x003A0000,
	0x00020C00, 0x003B0000, 0x00040C00, 0x033B0000,
	0x063B0000, 0x093B0000, 0x0E3B0000, 0x183B0000,
	0x1B3B0000, 0x00020C00, 0x1F3B0000, 0x223B0000,
	0x273B0000, 0x2B3B0000, 0x00010C00, 0x2C390000,
	0x2D390000, 0x00010C00, 0x2F390000, 0x001C0C00,
	0x2E390000, 0x293A0000, 0x243B0000, 0x1F3C0000,
	0x00030C00, 0x183E0000, 0x000B0C00, 0x173E0000,
	0x153E0000, 0x1F480000, 0x153E0000, 0x00020C00,
	0x143E0000, 0x053E0000, 0x003E0000, 0x00020C00,
	0xF83E0000, 0xEE3E0000, 0xDA480000, 0xDB3D0000,
	0xD93C0000, 0xD7380000, 0xD6380000, 0x00050C00,
	0xD7380000, 0xD7390000, 0xDE3B0000, 0xEF3B0000,
	0xFA3E0000, 0xFF3E0000, 0x003E0000, 0x00020C00,
	0x073E0000, 0x123E0000, 0x133E0000, 0x00030C00,
	0x123E0000, 0x0F3E0000, 0x134A0000, 0x06400000,
	0x02400000, 0x00410000, 0x00420000, 0x00070C00,
	0x003B0000, 0x00000010, 0xFF000010, 0x000C0C00,
	0xFF010010, 0xF9180010, 0xEB430010, 0xEB420010,
	0x00010C00, 0xF0230010, 0xFC0F0010, 0xFC0F2010,
	0xFB0F2010, 0xF80E2010, 0xF3052010, 0xED002010,
	0xE1F92010, 0xD9F32010, 0xD9EB2010, 0xE0DF2010,
	0xEAE32010, 0xF4E62010, 0xFEE62010, 0xFEE42010,
	0xFED92010, 0xFDD82010, 0xF8D82010, 0xF9DC2010,
	0x09DD2010, 0x16DD2010, 0x21DC2010, 0x22DC2010,
	0x23E32010, 0x1EFD2010, 0x11052010, 0x0B082010,
	0x0A0B2010, 0x0A102010, 0x0B192010, 0x1D1E2010,
	0x251F2010, 0x00030C00, 0x25232010, 0x23272010,
	0x1E2B2010, 0x022D2010, 0x002B2010, 0xFB1F2010,
	0xF4142010, 0xF40C2010, 0xF4042010, 0xF2012010,
	0xF1012010, 0xF0002010, 0x00010C00, 0xF0FF2010,
	0xF2FB2010, 0xF4F90010, 0xF9FA0010, 0xFDFE0010,
	0xFEFF0010, 0xFF000011, 0xFFFF0011, 0x00020C00,
	0xFFFF0010, 0x00190C00, 0xFFFF0000, 0x00000000,
	0x00020C00, 0x000F0000, 0x002F0000, 0x003C0000,
	0x00050C00, 0x063C0000, 0x00090C00, 0x173C0000,
	0x1F3C0000, 0x1E3C0000, 0x113C0000, 0x073E0000,
	0x053E0000, 0x00020C00, 0x003E0000, 0x003F0000,
	0x000A0C00, 0x003F0004, 0x000C0C00, 0x002E0004,
	0x00000004, 0x00000000, 0x000F0C00, 0x00008000,
	0x000B0C00, 0x01028000, 0x00008000, 0x00010C00,
	0xEC008000, 0xD9008000, 0x00010C00, 0xD3008000,
	0x00090C00, 0xD5008000, 0x00008000, 0x00010C00,
};

u32 D_802DD480_195F90[] = {
	0x22008000,
	0x3B008000,
	0x00040C00,
	0x1E008000,
};

u32 D_802DD490_195FA0[] = {
	0x00008000, 0xFE008000, 0xE5008000, 0xD4008000,
	0xCB008000, 0xCC008000, 0x00010C00, 0xDB028000,
	0x00008000, 0x1F008000, 0x38008000, 0x3A008000,
	0x00040C00, 0x3B008000, 0x3C008000, 0x3E008000,
	0x00020C00, 0x3E00C000, 0x4801C000, 0x3E00C000,
	0x00140C00, 0x3E008000, 0x000D0C00, 0x3E000000,
	0x48010000, 0x00010C00, 0x3E000000, 0x00070C00,
};

u32 D_802DD500_196010[] = {
	0x3E008000,
	0x00040C00,
	0x3E000000,
	0x00040C00,
};


#ifdef NON_MATCHING
/* CURRENT(5) */
void func_802D4CD0_18D7E0(s32 arg0, s32 arg1) {
	arg1 = arg0;

	if (arg0 < 0x14) {
		((void (*)(void))D_802DDBF4_196704[arg0])();
		return;
	}

	switch (arg1) {
	case 0x14:
		func_800EFEB4_FEE64(func_800F1134_1000E4, 4, 0);
		break;
	case 0x15:
		func_800EFEB4_FEE64(func_800F1DDC_100D8C, 0, 1);
		break;
	case 0x16:
		func_800EFEB4_FEE64(func_802D57A0_18E2B0, 5, 1);
		break;
	case 0x17:
		func_802D6F7C_18FA8C();
		break;
	case 0x18:
		func_802D7334_18FE44();
		break;
	case 0x19:
		func_802D7360_18FE70();
		break;
	case 0x45:
		func_802D6D20_18F830();
		break;
	case 0x44:
		func_80007690_8290();
		break;
	default:
		osSyncPrintf(&D_802DE2D0_196DE0, arg0);
		break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D4CD0_18D7E0.s")
#endif

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

#ifdef NON_MATCHING
/* CURRENT(5) */
void func_802D4F74_18DA84(void) {
	if (D_802DE460 < 0x3E8) {
		D_802DE460 += 1;
	}

	if ((D_8004DC58 != 7) && (D_8004DC58 != 6) && (D_8004DC58 != 5)) {
		if (D_80052B34->unk1A == 2) {
			D_8004DC58 = 7;
			D_802DE460 = 0;
		} else if ((D_80052B34->unk1A != 3) && (D_802DE460 >= 0x1F5)) {
			D_8004DC58 = 7;
			D_802DE460 = 0;
			D_80158BD0[D_802DE462] = 2;
		}
	}

	switch (D_8004DC58) {
	case 0:
		if (D_802DE460 == 1) {
			D_802DE462 = D_80052B34 - vehicleInstances;
		}
		if (D_802DE460 == 0x48) {
			func_80018D7C_1997C(0xE8);
			D_80050C0B = 0x77;
		}
		if (D_80052B34->unk20 & 2) {
			D_8004DC58 = 1;
			D_802DE460 = 0;
		}
		break;

	case 1:
		if (D_802DE460 == 0x14) {
			func_80018D7C_1997C(0xE9);
			D_8004DC58 = 2;
		}
		break;

	case 2:
		D_802DE460 = 0;
		if (!(D_80052B34->unk20 & 2)) {
			D_8004DC58 = 8;
		}
		break;

	case 3:
		if (D_80052B34->unk20 & 2) {
			D_8004DC58 = 2;
		}
		break;

	case 4:
		func_80018D7C_1997C(0xEA);
		D_8004DC58 = 2;
		break;

	case 5:
		if (D_802DE460 == 0x14) {
			D_8004DC58 = 7;
			D_802DE460 = 0;
		}
		break;

	case 6:
		if (D_802DE460 == 1) {
			D_80158BD0[D_802DE462] = 2;
		}
		if (D_802DE460 == 0x14) {
			func_80018D7C_1997C(0xEB);
		}
		if (!(D_80052B34->unk20 & 2)) {
			D_8004DC58 = 6;
			D_802DE460 = 0;
		}
		break;

	case 7:
		if (D_80052B34->unk1A != 3) {
			D_8004DC58 = 7;
			D_802DE460 = 0;
		}
		break;

	case 8:
		if (D_802DE460 == 0x14) {
			func_80018D7C_1997C(0xEC);
			func_800074BC_80BC(func_802D4F74_18DA84);
			func_800072CC_7ECC(0x1E);
			D_80159320 &= ~0x400000;
			D_802DE460 = 0;
		}
		break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D4F74_18DA84.s")
#endif


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

void func_802D5578_18E088(void) {
	if (!(vehicleInstances[84].unk20 & 0x8000)) {
		func_800074BC_80BC(func_802D5578_18E088);
	}
	if ((vehicleInstances[84].unk0 < 0x1000) && (vehicleInstances[84].unk4 < -0x6B00)) {
		vehicleInstances[84].unk20 = (u16)(vehicleInstances[84].unk20 & 0xFBFF);
		func_800074BC_80BC(func_802D5578_18E088);
	}
	D_802DE466 = D_802DE466 + 1;
	if (D_802DE466 == 0x9C4 && D_80048030 == 0xF) {
		func_80007690_8290();
	}
}

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

#ifdef NON_MATCHING
/* CURRENT(3545) */
s32 func_802D57A0_18E2B0(void) {
	s16 i;
	u16 x;
	u16 z;
	s32 v;
	u16 *tile;
	u8 *tileByte;

	D_80157F96 = 0;

	switch (D_80157F8C) {
	case 0:
		v = func_8011D260_12C210(0x46, -0x25);
		D_80159DDF = v;
		osSyncPrintf(&D_802DE2F0_196E00, v & 0xFF);
		D_80159DE0 = 0;
		D_80159DE2 = 0;
		D_80159DE4 = 0;
		D_80157F8E = 0;
		D_80157F8C += 1;
		D_80157F84 = 400.0f;
		D_80157F88 = -2.0f;
		D_80157F78 = 400.0f;
		D_80157F7C = -2.0f;
		D_80157F80 = 300.0f;
		D_802DE468 = 0x4600;
		D_802DE46A = -0x2500;
		func_80013468_14068(4);
		break;

	case 1:
		x = (u16)func_800038E0_44E0();
		z = (u16)func_800038E0_44E0();
		v = func_800038E0_44E0();
		func_800C9530_D84E0((s16)((x % 0x4B0) + D_802DE468 - 0x320), (s16)((z % 0x4B0) + D_802DE46A - 0x320), (u16)((v % 0x14) + 0xA), 0xE1, 0xFF, 0xFF, 0x96);
		x = (u16)func_800038E0_44E0();
		z = (u16)func_800038E0_44E0();
		v = func_800038E0_44E0();
		func_800C9530_D84E0((s16)((x % 0x4B0) + D_802DE468 - 0x320), (s16)((z % 0x4B0) + D_802DE46A - 0x320), (u16)((v % 0x14) + 0xA), 0xE1, 0xFF, 0xFF, 0x96);
		x = (u16)func_800038E0_44E0();
		z = (u16)func_800038E0_44E0();
		v = func_800038E0_44E0();
		func_800C9530_D84E0((s16)((x % 0x4B0) + D_802DE468 - 0x320), (s16)((z % 0x4B0) + D_802DE46A - 0x320), (u16)((v % 0x14) + 0xA), 0xE1, 0xFF, 0xFF, 0x96);
		if (D_80157F8E++ >= 0x1F) {
			D_80157F8E = 0;
			D_80157F8C += 1;
		}
		break;

	case 2:
		D_80159DE2 += 1;
		if (D_80157F8E < 0x4B) {
			x = (u16)func_800038E0_44E0();
			z = (u16)func_800038E0_44E0();
			v = func_800038E0_44E0();
			func_800C9530_D84E0((s16)((x % 0x640) + D_802DE468 - 0x3E8), (s16)((z % 0x640) + D_802DE46A - 0x3E8), (u16)((v % 0x1E) + 0x14), 0xE1, 0xFF, 0xFF, 0x96);
			x = (u16)func_800038E0_44E0();
			z = (u16)func_800038E0_44E0();
			v = func_800038E0_44E0();
			func_800C9530_D84E0((s16)((x % 0x640) + D_802DE468 - 0x3E8), (s16)((z % 0x640) + D_802DE46A - 0x3E8), (u16)((v % 0x1E) + 0x14), 0xE1, 0xFF, 0xFF, 0x96);
			x = (u16)func_800038E0_44E0();
			z = (u16)func_800038E0_44E0();
			v = func_800038E0_44E0();
			func_800C9530_D84E0((s16)((x % 0x640) + D_802DE468 - 0x3E8), (s16)((z % 0x640) + D_802DE46A - 0x3E8), (u16)((v % 0x1E) + 0x14), 0xE1, 0xFF, 0xFF, 0x96);
		} else if (D_80157F8E < 0x55) {
			x = (u16)func_800038E0_44E0();
			z = (u16)func_800038E0_44E0();
			v = func_800038E0_44E0();
			func_800C9530_D84E0((s16)((x % 0x3E8) + D_802DE468 - 0x2F3), (s16)((z % 0x3E8) + D_802DE46A - 0x2F3), (u16)((v % 0x1E) + 0xC8), 0x96, 0xC8, 0xFF, 0xC8);
			x = (u16)func_800038E0_44E0();
			z = (u16)func_800038E0_44E0();
			v = func_800038E0_44E0();
			func_800C9530_D84E0((s16)((x % 0x3E8) + D_802DE468 - 0x2F3), (s16)((z % 0x3E8) + D_802DE46A - 0x2F3), (u16)((v % 0x1E) + 0xC8), 0x96, 0xC8, 0xFF, 0xC8);
			x = (u16)func_800038E0_44E0();
			z = (u16)func_800038E0_44E0();
			v = func_800038E0_44E0();
			func_800C9530_D84E0((s16)((x % 0x3E8) + D_802DE468 - 0x2F3), (s16)((z % 0x3E8) + D_802DE46A - 0x2F3), (u16)((v % 0x1E) + 0xC8), 0x96, 0xC8, 0xFF, 0xC8);
			x = (u16)func_800038E0_44E0();
			z = (u16)func_800038E0_44E0();
			v = func_800038E0_44E0();
			func_800C9530_D84E0((s16)((x % 0x3E8) + D_802DE468 - 0x2F3), (s16)((z % 0x3E8) + D_802DE46A - 0x2F3), (u16)((v % 0x1E) + 0xC8), 0x96, 0xC8, 0xFF, 0xC8);
			x = (u16)func_800038E0_44E0();
			z = (u16)func_800038E0_44E0();
			v = func_800038E0_44E0();
			func_800C9530_D84E0((s16)((x % 0x3E8) + D_802DE468 - 0x2F3), (s16)((z % 0x3E8) + D_802DE46A - 0x2F3), (u16)((v % 0x1E) + 0xC8), 0x96, 0xC8, 0xFF, 0xC8);
			x = (u16)func_800038E0_44E0();
			z = (u16)func_800038E0_44E0();
			v = func_800038E0_44E0();
			func_800C9530_D84E0((s16)((x % 0x3E8) + D_802DE468 - 0x2F3), (s16)((z % 0x3E8) + D_802DE46A - 0x2F3), (u16)((v % 0x1E) + 0xC8), 0x96, 0xC8, 0xFF, 0xC8);
		}

		if (D_80157F8E == 0x46) {
			for (i = 0x8A; i != 0x90; i += 2) {
				tile = &D_80052A94[-40].unk0[i >> 1];
				tileByte = (u8 *)tile;
				tileByte[1] = (u8)((tileByte[1] & 0xC0) | (((*tile) + 4) & 0x3F));
			}
		}

		if ((D_80157F8E & 7) == 7) {
			for (i = 0x86; i != 0x94; i += 2) {
				tile = &D_80052A94[-40].unk0[i >> 1];
				tileByte = (u8 *)tile;
				tileByte[1] = (u8)((tileByte[1] & 0xC0) | (((*tile) + 1) & 0x3F));
				tile = &D_80052A94[-39].unk0[i >> 1];
				tileByte = (u8 *)tile;
				tileByte[1] = (u8)((tileByte[1] & 0xC0) | (((*tile) + 1) & 0x3F));
				tile = &D_80052A94[-38].unk0[i >> 1];
				tileByte = (u8 *)tile;
				tileByte[1] = (u8)((tileByte[1] & 0xC0) | (((*tile) + 1) & 0x3F));
				tile = &D_80052A94[-37].unk0[i >> 1];
				tileByte = (u8 *)tile;
				tileByte[1] = (u8)((tileByte[1] & 0xC0) | (((*tile) + 1) & 0x3F));
				tile = &D_80052A94[-36].unk0[i >> 1];
				tileByte = (u8 *)tile;
				tileByte[1] = (u8)((tileByte[1] & 0xC0) | (((*tile) + 1) & 0x3F));
				tile = &D_80052A94[-35].unk0[i >> 1];
				tileByte = (u8 *)tile;
				tileByte[1] = (u8)((tileByte[1] & 0xC0) | (((*tile) + 1) & 0x3F));
			}
		}

		D_8015273E = D_80157F8E & 7;
		if (D_80157F8E++ >= 0x65) {
			D_80157F8E = 0;
			D_80157F8C += 1;
		}
		break;

	case 3:
		buildingInstances[D_80159DDF].yCoord = (s16)(func_800B84D0_C7480(buildingInstances[D_80159DDF].xCoord, buildingInstances[D_80159DDF].zCoord) >> 8);
		D_80159DE2 = 0;
		D_8015273E = 0;
		D_80159DDF = 0xFF;
		return 1;

	default:
		break;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D57A0_18E2B0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D64D0_18EFE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D6904_18F414.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D6D20_18F830.s")

#ifdef NON_MATCHING
/* CURRENT(5142) */
void func_802D6F7C_18FA8C(void) {
	f32 sp5C;
	s32 pad0;
	s32 pad1;
	f32 sp58;
	f32 sp54;
	f32 sp50;
	f32 sp4C;
	f32 sp48;
	f64 temp_f20;
	s32 i;
	s32 temp_a1;
	Unk8013FDA8Entry *sp30;
	Unk8013FDA8Entry *sp2C;
	Unk8013FDA8Entry *entry;

	sp5C = (f32) (D_80257DB4 >> 1);
	sp30 = (Unk8013FDA8Entry *) func_80011F90_12B90(D_9052A00);
	sp2C = (Unk8013FDA8Entry *) func_80011F90_12B90(D_9052AC0);

	temp_f20 = (f64) sp5C;
	sp58 = (f32) ((((f64) (f32) sins(D_80052B34->unk6) / 32768.0) * temp_f20) + (f64) D_80052B34->unk4C);
	sp54 = (f32) ((f64) D_80052B34->unk54 - (((f64) (f32) coss(D_80052B34->unk6) / 32768.0) * temp_f20));
	sp48 = sqrtf(((D_8004DCAC - sp58) * (D_8004DCAC - sp58)) + ((sp54 - D_8004DCB0) * (sp54 - D_8004DCB0)));

	temp_a1 = (s32) ((f32) (((-(f64) (f32) coss((func_80003824_4424(sp58 - D_8004DCAC, sp54 - D_8004DCB0) - D_80052B34->unk6) & 0xFFFF) / 32768.0) * (f64) -sp48)) * 21.0f);
	D_8004DCAC = sp58;
	D_8004DCB0 = sp54;

	entry = (Unk8013FDA8Entry *) ((u8 *) sp30 + 0xB0);
	for (i = 0xB; i != 0; i--) {
		entry->unk8.unk0 = (s16) (entry->unk8.unk0 + temp_a1);
		entry = (Unk8013FDA8Entry *) ((u8 *) entry - 0x10);
	}

	temp_a1 = ((s16) sp30->unk8.unk0 >> 0xC) << 0xC;
	entry = (Unk8013FDA8Entry *) ((u8 *) sp30 + 0xB0);
	for (i = 0xB; i != 0; i--) {
		entry->unk8.unk0 = (s16) (entry->unk8.unk0 - temp_a1);
		entry = (Unk8013FDA8Entry *) ((u8 *) entry - 0x10);
	}

	sp50 = (f32) ((f64) D_80052B34->unk4C - (((f64) (f32) sins(D_80052B34->unk6) / 32768.0) * temp_f20));
	sp4C = (f32) ((((f64) (f32) coss(D_80052B34->unk6) / 32768.0) * temp_f20) + (f64) D_80052B34->unk54);
	sp48 = sqrtf(((D_8004DCB4 - sp50) * (D_8004DCB4 - sp50)) + ((sp4C - D_8004DCB8) * (sp4C - D_8004DCB8)));

	temp_a1 = (s32) ((f32) (((-(f64) (f32) coss((func_80003824_4424(sp50 - D_8004DCB4, sp4C - D_8004DCB8) - D_80052B34->unk6) & 0xFFFF) / 32768.0) * (f64) -sp48)) * 21.0f);
	D_8004DCB4 = sp50;
	D_8004DCB8 = sp4C;

	entry = (Unk8013FDA8Entry *) ((u8 *) sp2C + 0xB0);
	for (i = 0xB; i != 0; i--) {
		entry->unk8.unk0 = (s16) (entry->unk8.unk0 + temp_a1);
		entry = (Unk8013FDA8Entry *) ((u8 *) entry - 0x10);
	}

	temp_a1 = ((s16) sp2C->unk8.unk0 >> 0xC) << 0xC;
	entry = (Unk8013FDA8Entry *) ((u8 *) sp2C + 0xB0);
	for (i = 0xB; i != 0; i--) {
		entry->unk8.unk0 = (s16) (entry->unk8.unk0 - temp_a1);
		entry = (Unk8013FDA8Entry *) ((u8 *) entry - 0x10);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D6F7C_18FA8C.s")
#endif

void func_802D7334_18FE44(void) {
	gSPDisplayList(D_8005BB2C++, D_9052C10);
}

void func_802D7360_18FE70(void) {
	gSPDisplayList(D_8005BB2C++, D_9052C70);
}

#ifdef NON_MATCHING
/* CURRENT(3224) */
void func_802D738C_18FE9C(u8 arg0) {
	s16 sp5E;
	s16 sp5C;
	s16 sp5A;
	s16 sp58;
	s16 sp56;
	s16 sp54;
	s16 sp52;
	s16 sp50;
	s32 sp44;
	s32 sp40;
	s16 sp3E;
	s16 sp38[2];
	s16 sp34;
	Unk8014DD50 *sp2C;
	Unk8014DD50 *sp28;
	AlienInstance *s0;

	s0 = &alienInstances[arg0];
	sp5E = s0->unkC;
	sp2C = &D_8014DD50[sp5E];
	sp5C = (s8)sp2C->unkC;
	sp28 = &D_8014DD50[sp5C];
	sp58 = (s8)sp28->unkC;
	sp5A = (s8)D_8014DD50[sp58].unkD;
	sp56 = (s8)D_8014DD50[sp5A].unkD;
	sp3E = s0->specIndex;
	func_800808F0_8F8A0(arg0, &s0->unkE);
	sp2C->unk6 = s0->unk6;
	sp28->unk6 = -s0->unk6;
	func_80086164_95114(arg0, sp5C);
	sp50 = 0x3C;
	sp52 = -8;
	sp54 = 0x70;
	func_800A931C_B82CC((s8)sp5C, &sp50, &sp44);
	sp50 = (s16)sp44;
	sp52 = (s16)((&sp44)[1]);
	sp54 = (s16)((&sp44)[2]);
	func_800A931C_B82CC((s8)sp5E, &sp50, &sp44);
	alienSpecs[sp3E].unk20 = (s16)sp44;
	alienSpecs[sp3E].unk22 = (s16)((&sp44)[1]);
	alienSpecs[sp3E].unk24 = (s16)((&sp44)[2]);
	sp40 = func_80084E54_93E04(D_80052B34, s0);
	if (currentLevel == 1) {
		sp34 = 0x3C;
	} else {
		sp34 = 0x1E;
	}
	if (func_80084FE8_93F98(arg0, 0x1000) != 0 && sp40 < 0x7D0) {
		s0->unk26++;
		if ((sp34 + 0x28) < s0->unk26) {
			s0->unk1E = 0x28;
			s0->unk20 &= ~0x2000;
			s0->unk26 = 0;
		}
		if (func_80087188_96138(arg0, 0, 0x28) != 0) {
			s0->unk36 = 0;
			s0->unk1E = 6;
			s0->unk20 |= 0xA000;
			s0->unk20 |= 0x1000;
		}
	} else {
		s0->unk26 = 0;
		s0->unk1E = 0;
	}
	if (s0->unk20 & 0x9000) {
		if (s0->unk20 & 0x04000000) {
			sp38[0] = sp58;
		} else {
			sp38[0] = sp5A;
		}
		sp38[1] = sp56;
		if (func_80081F18_90EC8(arg0, 2, 2, sp38, &D_802DDC88_196798) == 2) {
			s0->unk20 &= ~0x8000;
		}
	}
	if (s0->unk1E != 0) {
		s0->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D738C_18FE9C.s")
#endif

void func_802D763C_19014C(u8 arg0) {
	if (alienInstances[arg0].unk20 & 0x600) {
		func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2 + 0x14, alienInstances[arg0].unk4, alienSpecs[alienInstances[arg0].specIndex].unkC, 0);
		alienInstances[arg0].unk24 = func_800C2274_D1224(alienInstances[arg0].unk0, alienInstances[arg0].unk2 + 0x64, alienInstances[arg0].unk4, 2);
		alienInstances[arg0].unk2C = 0x5A;
		alienInstances[arg0].unk3D = 0;
		func_800C3BD8_D2B88(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, alienSpecs[alienInstances[arg0].specIndex].unkC + 0x32, 0x5A, 0xF0, 0x78, 0);
	}
}

#ifdef NON_MATCHING
/* CURRENT(15993) */
void func_802D775C_19026C(s32 arg0) {
	u8 sp73;
	s32 sp68;
	s32 sp64;
	s32 sp60;
	s16 sp50;
	s16 sp4E;
	s16 sp4C;
	Unk8014DD50 *sp44;
	Unk8014DD50 *sp40;
	Unk8014DD50 *sp3C;
	Unk8014DD50 *sp34;
	AlienInstance *s0;
	AlienInstance *v1;
	s16 temp;

	arg0 &= 0xFF;
	s0 = &alienInstances[arg0];

	if ((s0->unk20 << 11) >= 0) {
		func_802D763C_19014C((u8)arg0);
		return;
	}

	sp44 = &D_8014DD50[(u8)D_8014DD50[(u8)s0->unkC].unkC];
	sp40 = &D_8014DD50[(u8)sp44->unkC];
	sp3C = &D_8014DD50[(u8)sp40->unkD];
	sp73 = (u8)sp3C->unkD;

	if (s0->unk2C < 0x51) {
		sp34 = &D_8014DD50[sp73];
		func_80128428_1373D8(s0, sp34->unk0 + sp44->unk0, sp34->unk2 + sp44->unk2, sp34->unk4 + sp44->unk4, &sp68, &sp64, &sp60);

		if (s0->unk2C >= 0x49) {
			sp34->unk2 += 0xA;
			if (s0->unk24 != 0xFC) {
				func_800C1ECC_D0E7C(sp68, sp64, sp60, s0->unk3C, 2);
			}
		} else if (s0->unk2C == 0x48) {
			sp34->unk2 += 0xA;
			arg0 = func_8007956C_8851C(0xD);
			v1 = &alienInstances[(s16)arg0];
			s0->unk3C = (s8)arg0;
			s0->unk26 = 0;
			v1->unk48 = sp64 + 0xA;
			v1->unk1B = s0->unk1B;
			v1->unk2E = sp68;
			v1->unk0 = sp68;
			v1->unk32 = sp60;
			v1->unk4 = sp60;
			v1->unk30 = v1->unk48;
			v1->unk2 = v1->unk48;
			temp = s0->unk6;
			v1->unk20 |= 0x40000000;
			v1->unk12 = 0x200;
			v1->unk6 = temp;
			v1->unkE = temp;
			func_8007A2A0_89250((s16)arg0);
		} else if (s0->unk26 == 0) {
			v1 = &alienInstances[(s8)s0->unk3C];
			if (v1->unk20 & 0x600) {
				func_80088E10_97DC0(sp73);
				s0->unk26 = 1;
			} else {
				v1->unk48 = sp64 + 0xA;
				sp34->unk2 += 0xA;
				if (s0->unk24 != 0xFC) {
					func_800C1ECC_D0E7C(sp68, sp64, sp60, s0->unk3C, 2);
				}
			}
		}
	}

	if ((u16)sp3C->unkA < 0x1000) {
		sp3C->unkA += 0x400;
		sp40->unkA += 0x400;
	}

	if (s0->unk2C < 0x48) {
		sp44->unk6 += 0x96;
		if (((s16)s0->unk2C % ((func_800038E0_44E0() % 7) + 1)) == 0) {
			sp4C = func_800038E0_44E0();
			sp4E = func_800038E0_44E0();
			sp50 = func_800038E0_44E0();
			func_800DFA34_EE9E4(
				(u16)sp4C % 100 + s0->unk0 - 0x32,
				(u16)sp4E % 100 + s0->unk2 - 0x32,
				(u16)sp50 % 100 + s0->unk4 - 0x32,
				((func_800038E0_44E0() % 20) + 0x14) & 0xFFFF,
				0);
		}
	}

	if (s0->unk2C == 1) {
		func_800DF848_EE7F8(s0->unk0, s0->unk2, s0->unk4, (u16)((f64)alienSpecs[s0->specIndex].unkC * 1.5), 6);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D775C_19026C.s")
#endif

s32 func_802D7D08_190818(u8 arg0, s32 arg1, s32 arg2) {
	s32 sp24;
	AlienInstance *alien;

	alien = &alienInstances[arg0];
	sp24 = 0;

	alien->unkA = func_8009395C_A290C(arg0, alien->unk6);
	alien->unk8 = func_8009395C_A290C(arg0, alien->unk6 + 0x4000);

	if (((func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8) + 0x12C) < alien->unk2) {
		func_80088760_97710(alien);
	}

	if (alien->unk20 & 0x40000000) {
		alien->unk6 = alien->unkE;
		if (D_80222A70 < alien->unk2) {
			alien->unk10 = alien->unk10 + 0x30;
		}
		if (alien->unk47 & 4) {
			alien->unk12 = 0;
		}
		if ((alien->unk47 & 2) && ((alien->unk3A == 0) || (alien->unk10 != 0))) {
			alien->unk20 = alien->unk20 | 0x40001000;
			alien->unk36 = 0;
			alien->unk10 = arg2;
			alien->unk2C = arg1;
			sp24 = 1;
		}
		alien->unk3A = alien->unk10;
	} else {
		alien->unk12 = 0;
		if (alien->unk2C != 0) {
			alien->unk2C = alien->unk2C - 1;
		} else {
			alien->unk20 = alien->unk20 | 0x40001000;
			alien->unk36 = 0;
			alien->unk10 = arg2;
			alien->unk2C = arg1;
			sp24 = 1;
		}
		if (alien->unk47 & 1) {
			alien->unk2C = 0;
		}
	}

	return sp24;
}

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

void func_802D7FC0_190AD0(u8 arg0) {
	s16 sp3C[2];
	AlienInstance *alien;
	s32 sp34;

	alien = &alienInstances[arg0];
	if (alien->unk48 != 0) {
		alien->unk2 = alien->unk48;
		alien->unk48 = 0;
	} else {
		sp34 = func_802D7D08_190818(arg0, 0x14, 0x180);
	}

	if (alien->unk47 & 8) {
		func_80088760_97710(alien);
	}

	if (alien->unk20 & 0x40000000) {
		if ((sp34 != 0) && !(alien->unk47 & 1)) {
			alien->unk12 = alienSpecs[alien->specIndex].unk40;
		}
		func_800808F0_8F8A0(arg0, &alien->unkE);

		if (alien->unk20 & 0x1000) {
			s16 tempc = D_8014DD50[alien->unkC].unkC;
			sp3C[0] = tempc;
			sp3C[1] = D_8014DD50[tempc].unkD;
			if (func_80081F18_90EC8(arg0, 2, 2, sp3C, &D_802DDCD0_1967E0) == 2) {
				alien->unk20 &= ~0x1000;
			}
		}
	} else {
		func_802D7EBC_1909CC(arg0);
	}

	if ((alien->unk20 & 0x2000) && (D_80052A8C & 1)) {
		alien->unk20 |= 0x80000000;
	}
}
#ifdef NON_MATCHING
/* CURRENT(2063) */
void func_802D8150_190C60(u8 arg0) {
	AlienInstance *alien;
	AlienInstance *temp_alien;
	s32 temp_v1;
	u8 temp_a1;
	u8 spec_index;

	spec_index = arg0 & 0xFF;
	alien = (AlienInstance *)((u8 *)alienInstances + (((spec_index << 2) + spec_index) << 4));
	temp_a1 = alien->unk25;
	spec_index = alien->specIndex;
	if (!(alien->unk20 & 0x100000)) {
		if (temp_a1 != 0xFF) {
			temp_alien = (AlienInstance *)((u8 *)alienInstances + ((((u8) temp_a1 << 2) + temp_a1) << 4));
			if (temp_alien->specIndex == 0x1A) {
				temp_alien->unk24 = (u8) (temp_alien->unk24 - 1);
			}
		}
		if (alien->unk20 & 0x600) {
			func_80137468_146418(arg0 & 0xFF, 0xD);
			if ((alien->unk47 & 8) || (alien->unk20 & 0x2000)) {
				alien->unk20 = (s32) (alien->unk20 | 0x100000);
				func_80124B5C_133B0C(alien->unk0, alien->unk2, alien->unk4, 0x12C, 0xC8);
				func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (alienSpecs[spec_index].unkC * 3) & 0xFFFF, 4);
				alien->unk2C = 1;
				return;
			}
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (alienSpecs[spec_index].unkC * 2) & 0xFFFF, 0);
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
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (alienSpecs[spec_index].unkC * 2) & 0xFFFF, 0);
		}
		alien->unk24 = func_800C2274_D1224(alien->unk0, alien->unk2, alien->unk4, 2);
	}
	temp_v1 = alien->unk20;
	if ((!(temp_v1 & 0x40000000) || (alien->unk47 & 1)) && (alien->unk2C > 0)) {
		if (temp_v1 & 0x600) {
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (alienSpecs[spec_index].unkC * 2) & 0xFFFF, 2);
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
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D8150_190C60.s")
#endif

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

#ifdef NON_MATCHING
void func_802D85F8_191108(u8 arg0) {
	if (!(alienInstances[arg0].unk20 & 0x4000) &&
		(func_8008E478_9D428(arg0) != 0 || func_8008E30C_9D2BC(arg0, 0x80000000) != 0)) {
		func_802D84A0_190FB0(arg0);
	} else {
		func_802D852C_19103C(arg0);
		if ((arg0 & 0x3C) == (D_80052A8C & 0x3C)) {
			if (alienInstances[arg0].unk20 & 0x100) {
				s32 temp_t5 = (u32)(*(u32 *)(D_80050AE0 + (u8)(alienInstances[arg0].unk38) * 0x18)) >> 0xC;
				if (((temp_t5 & 1) == 0) || (temp_t5 & 4)) {
					alienInstances[arg0].unk20 &= ~0x100;
				}
			}
		}
	}
	func_8008076C_8F71C(arg0);
	if (alienInstances[arg0].unk1E > 0) {
		alienInstances[arg0].unk1E -= 4;
	} else {
		alienInstances[arg0].unk1E = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D85F8_191108.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(483) */
void func_802D8724_191234(u8 arg0) {
	u8 pad;
	u32 temp_t5;

	if (!(alienInstances[arg0].unk20 & 0x4000) && (func_8008E478_9D428(arg0) != 0 || func_8008E30C_9D2BC(arg0, 0x80000000) != 0)) {
		func_80085900_948B0(arg0, 0x3E8);
		func_802D84A0_190FB0(arg0);
	} else {
		func_802D852C_19103C(arg0);
		if ((alienInstances[arg0].unk20 & 0x100) && ((D_80052A8C & 0x3F) == (arg0 & 0x3F))) {
			temp_t5 = (u32) *(u32 *)(D_80050AE0 + (u8)(alienInstances[arg0].unk38) * 0x18) >> 0xC;
			if (((temp_t5 & 1) == 0) || (temp_t5 & 0x10)) {
				alienInstances[arg0].unk20 &= ~0x100;
			}
		}
	}
	if (alienInstances[arg0].unk1E != 0) {
		alienInstances[arg0].unk1E--;
	}
	func_8008076C_8F71C(arg0);
	func_800A53C0_B4370(arg0, 0x100, 0x1000);
	func_8008E978_9D928(arg0, (s16)func_8008E524_9D4D4(arg0, 0x190, 2));
	func_8008EF1C_9DECC(arg0);
	func_80137468_146418(arg0, 7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D8724_191234.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(2933) */
void func_802D8898_1913A8(u8 arg0) {
	s16 temp_a0;
	s16 temp_v1_2;
	s16 temp_v1_3;
	s32 temp_a0_2;
	s32 temp_a1;
	s32 temp_t2;
	s32 temp_v1;
	AlienInstance *var_v0;

	var_v0 = &alienInstances[arg0];
	temp_v1 = var_v0->unk20;
	if (temp_v1 & 0x600) {
		if (!(temp_v1 & 0x100000)) {
			temp_t2 = temp_v1 | 0x40000000;
			var_v0->unk2C = 0x7FFF;
			var_v0->unk10 = 0;
			var_v0->unk20 = temp_t2;
			var_v0->unk38 = 0;
			var_v0->unk14 = (s16)(arg0 & 1);
			if (temp_t2 & 0x600) {
				func_800DF848_EE7F8(var_v0->unk0, var_v0->unk2, var_v0->unk4, (u16)((f64)alienSpecs[var_v0->specIndex].unkC * 0.75), 0);
				return;
			}
		} else {
			if (temp_v1 & 0x40000000) {
				temp_a1 = D_80222A70;
				if (temp_a1 < var_v0->unk2) {
					temp_a0 = var_v0->unk14;
					if ((temp_a0 != 0) && (temp_v1_2 = var_v0->unk38, ((temp_v1_2 < -9) == 0))) {
						var_v0->unk38 = (s16)(temp_v1_2 - 1);
					} else {
						temp_v1_3 = var_v0->unk38;
						if ((temp_a0 == 0) && (temp_v1_3 < 0xA)) {
							var_v0->unk38 = (s16)(temp_v1_3 + 1);
						}
					}
					temp_a0_2 = var_v0->unk38 * 0xC8;
					var_v0->unkE = (s16)(var_v0->unkE + temp_a0_2);
					var_v0->unk6 = (s16)(var_v0->unk6 + temp_a0_2);
					var_v0->unk10 = (s16)(var_v0->unk10 + 0x60);
					var_v0->unk12 = (s16)(var_v0->unk12 + 0x10);
				}
				var_v0->unk8 = (s16)(var_v0->unk38 << 8);
				var_v0->unkA = (s16)(var_v0->unk10 * -4);
				if (!(var_v0->unk2C & 3)) {
					func_800DEA08_ED9B8(var_v0->unk0, var_v0->unk2, var_v0->unk4, 0xFA, 2, 2, 0x1E, 0xC8, 0x82, 0x82, 0x82);
					temp_a1 = D_80222A70;
					var_v0 = &alienInstances[arg0];
				}
				if (temp_a1 < var_v0->unk30) {
					if (var_v0->unk2 < temp_a1) {
						var_v0->unk38 = 0;
						var_v0->unk12 = (s16)((s16)var_v0->unk12 >> 1);
						var_v0->unk10 = (s16)((s16)var_v0->unk10 >> 1);
					} else {
						func_80137468_146418(arg0, 0x66);
						var_v0 = &alienInstances[arg0];
					}
				}
			}
			func_8008AAFC_99AAC(arg0, alienSpecs[var_v0->specIndex].unkC, 3);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D8898_1913A8.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(995) */
void func_802D8BAC_1916BC(u8 arg0) {
	AlienInstance *alien;
	u8 sp43;
	s8 temp_a1;
	s16 sp3C;
	s16 sp36;
	s16 temp_v1;
	s16 temp_a0;
	s32 temp_a1_2;
	s32 temp_a2;
	s32 var_t1;
	s32 var_a3;
	s32 temp_v0;

	alien = &alienInstances[arg0];
	temp_a1 = D_8014DD50[alien->unkC].unkC;
	sp3C = D_8014DD50[temp_a1].unkD;
	sp43 = arg0;

	func_80086230_951E0(arg0, temp_a1, 0x4000);
	temp_v0 = func_800877E8_96798(sp43, 0x12C, 0x190);

	temp_v1 = alien->unk0 - alien->unk14;
	temp_a1_2 = -temp_v1;
	temp_a0 = alien->unk4 - alien->unk18;

	if (temp_a1_2 < temp_v1) {
		var_t1 = temp_v1;
	} else {
		var_t1 = temp_a1_2;
	}

	temp_a2 = -temp_a0;
	if (temp_a2 < temp_a0) {
		var_a3 = temp_a0;
	} else {
		var_a3 = temp_a2;
	}

	if (var_a3 < var_t1) {
		if (temp_a1_2 < temp_v1) {
			sp36 = temp_v1;
		} else {
			sp36 = temp_a1_2;
		}
	} else {
		if (temp_a2 < temp_a0) {
			sp36 = temp_a0;
		} else {
			sp36 = temp_a2;
		}
	}

	if (temp_v0 != 0) {
		if ((func_80084FE8_93F98(sp43, 0x800) != 0) && (sp36 < 0x3E8) && !(alien->unk20 & 0x8000)) {
			if (func_800871CC_9617C(sp43, 0, 0x28) != 0) {
				alien->unk4B = 0;
				alien->unk20 |= 0x8000;
				alien->unk1E = 0x14;
			}
		}
	}

	func_800A3D00_B2CB0(sp43, sp3C, 2, &D_802DDCD8_1967E8);

	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D8BAC_1916BC.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(13) */
void func_802D8D84_191894(u8 arg0) {
	AlienInstance *alien;
	s32 pad;
	s16 nodeId;
	s16 nextNode;
	s32 sp60;
	s32 sp5C;
	s32 sp58;

	alien = &alienInstances[arg0];
	nodeId = D_8014DD50[alien->unkC].unkC;
	nextNode = D_8014DD50[nodeId].unkD;

	if (!(alien->unk20 & 0x100000)) {
		func_80137468_146418(arg0, 0xF);
		if (alien->unk20 & 0x600) {
			alien->unk2C = 0x32;
			func_80088E40_97DF0(arg0, nodeId, D_8014DD50[nodeId].unk0, D_8014DD50[nodeId].unk2, D_8014DD50[nodeId].unk4, 0, 0xA, 0);
			func_80087C50_96C00(arg0);
		}
	} else {
		func_80087C74_96C24(arg0);

		if ((alien->unk2C % 6) == 0) {
			func_80128428_1373D8(alien, D_8014DD50[nodeId].unk0, D_8014DD50[nodeId].unk2 - 0x8000, D_8014DD50[nodeId].unk4, &sp60, &sp5C, &sp58);
			if (D_80031420 & 3) {
				func_800CA5EC_D959C((s16) sp60, (s16) sp5C, (s16) sp58, 0, 1, 0, 0x32, 5, 6, 0x80, 0, 0xB4 - (func_800038E0_44E0() % 0x50), 0, 0xFF);
			}
		}

		if ((func_80084FE8_93F98(arg0, 0x800) == 0) && !(alien->unk20 & 0x8000) && (func_80087188_96138(arg0, 0, 0x28) != 0)) {
			alien->unk4B = 0;
			alien->unk20 |= 0x8000;
			alien->unk1E = (func_800038E0_44E0() % 0xA) + 8;
		}

		func_800A3D00_B2CB0(arg0, nextNode, 2, &D_802DDCD8_1967E8);
		if (alien->unk2C == 1) {
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, ((u16) ((f64) alienSpecs[alien->specIndex].unkC * 1.5)), 4);
		}
	}

	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D8D84_191894.s")
#endif

void func_802D90C8_191BD8(u8 arg0) {
	alienInstances[arg0].unk20 &= 0xBFFFEFFF;
	func_800873A8_96358(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D911C_191C2C.s")

void func_802D95A8_1920B8(u8 arg0, s16 arg1, s16 arg2) {
	alienInstances[arg0].unk20 |= 0x1000;
	if ((func_800038E0_44E0() & 1) && arg2 != -1) {
		alienInstances[arg0].unk26 = arg2;
	} else {
		alienInstances[arg0].unk26 = arg1;
	}
	alienInstances[arg0].unk36 = 0;
}

#ifdef NON_MATCHING
/* CURRENT(2534) */
void func_802D962C_19213C(u8 arg0, s16 arg1, s16 arg2, AlienInstance *alien) {
	u8 currentNode;
	u8 specIndex;
	u8 state;
	s16 turnSpeed;
	s32 hit;
	s32 sp5C;
	s32 sp58;
	s32 sp54;
	AlienInstance *alienInst;
	AlienSpec *spec;

	alienInst = &alienInstances[arg0];

	currentNode = alienInst->unk26;
	specIndex = alienInst->specIndex;

	if (alienInst->unk20 & 0x1000) {
		if (arg1 == currentNode) {
			alienInst->unk2A += 0x1000;
		} else {
			alienInst->unk2A -= 0x1000;
		}

		func_80081E5C_90E0C((s16) currentNode);

		if (D_8014DD5E[currentNode][0] == 0) {
			state = alienInst->unk36;
			if (state == 3) {
				alienInst->unk20 &= ~0x1000;
				return;
			}

			func_80081C84_90C34(currentNode, &D_802DDCF8_196808[state]);
			alienInst->unk36++;
			state = alienInst->unk36;

			if (state == 3) {
				func_80137468_146418(arg0, 0x64);

				if (arg1 == alienInst->unk26) {
					hit = func_800879A4_96954(arg0, 0, 1);
				}

				if (arg2 == alienInst->unk26) {
					spec = &alienSpecs[specIndex];
					spec->unk2C = -spec->unk2C;
					hit = func_800879A4_96954(arg0, 0x96, 1);
					spec->unk2C = -spec->unk2C;
				}

				spec = &alienSpecs[specIndex];
				if (hit != 0) {
					func_80122524_1314D4(D_80052B34, 0x190, alienInst->unk0, alienInst->unk4);
				}

				if (arg2 == alienInst->unk26) {
					turnSpeed = -spec->unk2C;
				} else {
					turnSpeed = spec->unk2C;
				}

				func_80128428_1373D8(alienInst, turnSpeed, spec->unk2E, spec->unk30, &sp5C, &sp58, &sp54);
				func_800DEE5C_EDE0C((s16) sp5C, (s16) (sp58 + 5), (s16) sp54, 0x50, 0x14);
				func_800C541C_D43CC((s16) sp5C, (s16) sp58, (s16) sp54, 0, -1, 0, 0x64, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0x80);
				func_800DEA08_ED9B8((s16) sp5C, (s16) sp58, (s16) sp54, 0x96, 8, 6, 0x28, 0xC8, 0xA6, 0x85, 0x2F);
				func_80135D44_144CF4(sp5C, sp58, sp54, 3.0f);
				state = alienInst->unk36;
			}

			if (state == 4) {
				alienInst->unk20 &= ~0x1000;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D962C_19213C.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(5943) */
void func_802D9964_192474(u8 arg0) {
	AlienInstance *alien;
	s16 sp4E;
	s16 sp4C;
	s16 sp4A;
	s16 sp46;
	s16 sp44;
	s32 temp_a1;
	s32 temp_a0;
	s32 var_v1;
	s32 var_v0;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;

	alien = &alienInstances[arg0];
	sp4E = D_8014DD50[alien->unkC].unkC;
	sp4A = D_8014DD50[sp4E].unkD;
	sp4C = D_8014DD50[sp4A].unkD;
	func_802D962C_19213C(arg0, sp4A, sp4C, alien);

	if (D_80052B34->unk1A == 0) {
		func_800877E8_96798(arg0, 0x73, 0x78);
	} else {
		func_800877E8_96798(arg0, 0x2BC, 0x320);
	}

	if (!(alien->unk20 & 0x1000) && !(alien->unk47 & 1)) {
		sp46 = alien->unk0 - D_80052B34->unk0;
		sp44 = alien->unk4 - D_80052B34->unk4;

		if (((s32 (*)(u8, s16, s32))func_80086230_951E0)(arg0, sp4E, 0x2000) == 0) {
			temp_a1 = -sp46;
			temp_a0 = -sp44;
			var_v1 = temp_a1;
			if (temp_a1 < sp46) {
				var_v1 = sp46;
			}
			var_v0 = temp_a0;
			if (temp_a0 < sp44) {
				var_v0 = sp44;
			}
			if (var_v0 < var_v1) {
				var_v1 = temp_a1;
				if (temp_a1 < sp46) {
					var_v1 = sp46;
				}
			} else {
				var_v1 = temp_a0;
				if (temp_a0 < sp44) {
					var_v1 = sp44;
				}
			}

			if ((var_v1 >= 0x79) && (alien->unk4E != 0) && (func_80087188_96138(arg0, 0, 0x20) != 0)) {
				alien->unk1E = 8;
			}
		}

		temp_a1 = -sp46;
		temp_a0 = -sp44;
		var_v1 = temp_a1;
		if (temp_a1 < sp46) {
			var_v1 = sp46;
		}
		var_v0 = temp_a0;
		if (temp_a0 < sp44) {
			var_v0 = sp44;
		}
		if (var_v0 < var_v1) {
			var_v1 = temp_a1;
			if (temp_a1 < sp46) {
				var_v1 = sp46;
			}
		} else {
			var_v1 = temp_a0;
			if (temp_a0 < sp44) {
				var_v1 = sp44;
			}
		}

		if (var_v1 < 0x79) {
			var_v1 = temp_a1;
			if (temp_a1 < sp46) {
				var_v1 = sp46;
			}
			var_v0 = temp_a0;
			if (temp_a0 < sp44) {
				var_v0 = sp44;
			}
			if (var_v0 < var_v1) {
				var_v1 = temp_a1;
				if (temp_a1 < sp46) {
					var_v1 = sp46;
				}
			} else {
				var_v1 = temp_a0;
				if (temp_a0 < sp44) {
					var_v1 = sp44;
				}
			}

			if (var_v1 >= 0x73) {
				func_802D95A8_1920B8(arg0, sp4A, sp4C);
			}
		}

		func_80090A6C_9FA1C(arg0, sp4C, 0xBB8);
		func_80090A6C_9FA1C(arg0, sp4A, 0xBB8);
	}

	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D9964_192474.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(13576) */
void func_802D9C60_192770(u8 arg0) {
	u8 sp73;
	u8 temp_t6;
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
	Unk8014DD50 *sp40;
	Unk8014DD50 *sp3C;
	Unk8014DD50 *sp38;
	s32 sp34;
	AlienInstance *alien;
	s32 s0;

	temp_t6 = arg0 & 0xFF;
	sp73 = temp_t6;
	alien = &alienInstances[temp_t6];
	if (alien->unk20 & 0x600) {
		sp5A = D_8014DD50[alien->unkC].unkC;
		sp40 = &D_8014DD50[sp5A];
		sp58 = sp40->unkD;
		sp3C = &D_8014DD50[sp58];
		sp56 = sp3C->unkD;
		sp38 = &D_8014DD50[sp56];
		sp54 = sp3C->unkC;
		sp52 = sp38->unkC;
		s0 = func_8008916C_9811C(temp_t6, sp5A);
		func_80128428_1373D8(alien, sp40->unk0, sp40->unk2, sp40->unk4, (s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
		func_800C80F0_D70A0(((-(u16) sp40->unk6 - alien->unk6) + 0x4000) & 0xFFFF, 0, 0,
			func_800C7924_D68D4(sp6E, sp6A, sp66, 0x40, -8, alienSpecs[alien->specIndex].unkC, s0, 1));
		func_800E093C_EF8EC(sp6E, sp6A, sp66, 0);
		func_800E093C_EF8EC(sp6E, sp6A, sp66, 0x1E);
		s0 = alien->unk6 & 0xFFFF;
		alien->unk14 = sp6C;
		alien->unk16 = sp68;
		alien->unk18 = sp64;
		sp60 = (s32) (((f64) (f32) coss(s0 & 0xFFFF) / 32768.0) * 6.0);
		sp5C = (s32) (((f64) (f32) sins(s0 & 0xFFFF) / 32768.0) * 6.0);
		s0 = func_8008916C_9811C(sp73, sp58);
		func_80128428_1373D8(alien, sp3C->unk0, sp3C->unk2, sp3C->unk4, (s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
		s0 = func_800C7924_D68D4(sp6E, sp6A, sp66, 0x40, -8, alienSpecs[alien->specIndex].unkC, s0, 1);
		func_800C80F0_D70A0((0x4000 - alien->unk6) & 0xFFFF, 0, 0, s0);
		func_800C820C_D71BC(0, 0, 0, s0);
		sp34 = -sp60;
		sp5F = -sp60;
		func_800C8184_D7134(sp5F, 3, sp34, s0);
		if (sp54 != -1) {
			sp40 = &D_8014DD50[sp54];
			s0 = func_8008916C_9811C(sp73, sp54);
			func_80128428_1373D8(alien, (s16) (sp40->unk0 + sp3C->unk0), (s16) (sp40->unk2 + sp3C->unk2), (s16) (sp40->unk4 + sp3C->unk4),
				(s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
			s0 = func_800C7924_D68D4(sp6E, sp6A, sp66, 0x40, -8, alienSpecs[alien->specIndex].unkC, s0, 1);
			func_800C80F0_D70A0((0x4000 - alien->unk6) & 0xFFFF, 0, 0, s0);
			func_800C820C_D71BC(0, 0, 0, s0);
			sp43 = sp40->unkC;
			sp37 = sp3C->unkC;
			func_800C8184_D7134(sp43, 3, sp37, s0);
		}
		s0 = func_8008916C_9811C(sp73, sp56);
		func_80128428_1373D8(alien, sp38->unk0, sp38->unk2, sp38->unk4, (s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
		s0 = func_800C7924_D68D4(sp6E, sp6A, sp66, 0x40, -8, alienSpecs[alien->specIndex].unkC, s0, 1);
		func_800C80F0_D70A0((0x4000 - alien->unk6) & 0xFFFF, 0, 0, s0);
		func_800C820C_D71BC(0, 0, 0, s0);
		sp63 = -sp5C;
		func_800C8184_D7134(sp63, 3, sp63, s0);
		if (sp52 != -1) {
			sp40 = &D_8014DD50[sp52];
			s0 = func_8008916C_9811C(sp73, sp52);
			func_80128428_1373D8(alien, (s16) (sp40->unk0 + sp38->unk0), (s16) (sp40->unk2 + sp38->unk2), (s16) (sp40->unk4 + sp38->unk4),
				(s32 *) &sp6C, (s32 *) &sp68, (s32 *) &sp64);
			s0 = func_800C7924_D68D4(sp6E, sp6A, sp66, 0x40, -8, alienSpecs[alien->specIndex].unkC, s0, 1);
			func_800C80F0_D70A0((0x4000 - alien->unk6) & 0xFFFF, 0, 0, s0);
			func_800C820C_D71BC(0, 0, 0, s0);
			sp43 = sp40->unkC;
			sp3F = sp38->unkC;
			func_800C8184_D7134(sp43, 3, sp3F, s0);
		}
		func_80088E10_97DC0(sp5A);
		func_80088E10_97DC0(sp58);
		func_80088E10_97DC0(sp56);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802D9C60_192770.s")
#endif

void func_802DA378_192E88(u8 arg0) {
	if (!(alienInstances[arg0].unk20 & 0x100000)) {
		func_80137468_146418(arg0, 0xF);
		func_802D9C60_192770(arg0);
	}
	func_80089EB4_98E64(arg0, 0x3C, 0, 6, 3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DA3EC_192EFC.s")

#ifdef NON_MATCHING
/* CURRENT(18863) */
s32 func_802DB16C_193C7C(u8 arg0, Unk8014DD50 **arg1, Unk8014DD50 **arg2) {
	AlienInstance *alien;
	VehicleInstance *vehicle;
	u8 alienId;
	s16 node0;
	s16 node1;
	s32 posX;
	s32 posY;
	s32 posZ;
	u8 targetIdx;
	s32 distSq;
	s32 distRem;
	s32 dx;
	s32 dz;
	s8 result;
	s32 randVal;
	f32 tempF;

	alienId = arg0 & 0xFF;
	alien = &alienInstances[alienId];
	node0 = D_8014DD50[alien->unkC].unkC;
	node1 = D_8014DD50[node0].unkC;
	targetIdx = alien->specIndex;

	if (alien->unk20 & 0x4000) {
		result = func_80081F18_90EC8(alienId, 3, 4, &node0, arg1);
		if (result == 4) {
			alien->unk20 &= ~0x4000;
		}

		if ((alien->unk36 == 2) && (D_8014DD5E[node0][0] == 0)) {
			func_80128504_1374B4(alien, 1, &posX, &posY, &posZ);
			func_800DEE5C_EDE0C((s16)posX, (s16)(posY + 5), (s16)posZ, 0x50, 0xA);
			func_800DEA08_ED9B8((s16)posX, (s16)posY, (s16)posZ, 0x1C2, 8, 6, 0x28, 0xDC, 0xA6, 0x85, 0x2F);
			func_800C541C_D43CC((s16)posX, (s16)posY, (s16)posZ, 0, 0x7F, 0, 0x78, 0xFF, 0x3C, 0x14, 0x6A, 0x53, 0);

			func_80137468_146418(alienId, 0x259);
			func_80135D44_144CF4(posX, posY, posZ, 5.0f);

			if (func_800879A4_96954(alienId, 0x50, 1) != 0) {
				vehicle = D_80052B34;
				func_80122524_1314D4(vehicle, 0x7D0, alien->unk0, alien->unk4);

				if (vehicle->unk1A != 0) {
					func_80137468_146418(alienId, 0x258);
					tempF = (f32)((f64)(f32)sins((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
					func_800C541C_D43CC(vehicle->unk0, vehicle->unk2, vehicle->unk4, (s8)(s32)(tempF * 127.0f), -0x50,
						(s32)((f32)-((f64)(f32)coss((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0) * 127.0f),
						0xB4, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0xC8);
					return 1;
				}
			} else {
				vehicle = D_80052B34;
				dx = vehicle->unk0 - (s16)posX;
				dz = vehicle->unk4 - (s16)posZ;
				distSq = (dx * dx) + (dz * dz);
				if ((distSq < 0x127690) && !(vehicle->unk20 & 2)) {
					distRem = 0x127690 - distSq;
					func_80102DDC_111D8C(vehicle,
						func_80003824_4424(
							(f32)(vehicle->unk0 - alienInstances[alien->unk25].unk0),
							(f32)(vehicle->unk4 - alienInstances[alien->unk25].unk4)
						),
						(s16)(s32)(((f32)distRem / D_802DE438_196F48) + 8192.0f),
						(f32)(distRem * 0x32) / D_802DE43C_196F4C);

					vehicle->unk22 = (s16)(0x3E8 - (func_800038E0_44E0() % 2000));
					vehicle->unk24 = (s16)(0x3E8 - (func_800038E0_44E0() % 2000));
					vehicle->unk26 = (s16)(0x3E8 - (func_800038E0_44E0() % 2000));
				}
			}
		}
		return 1;
	}

	if (alien->unk20 & 0x1000) {
		result = func_80081F18_90EC8(alienId, 3, 3, &node0, arg1);
		if (result == 3) {
			alien->unk20 &= ~0x1000;
		}

		if (result == 2) {
			func_80137468_146418(alienId, 0x131);
			if (!(D_80052B34->unk20 & 2) && (func_800879A4_96954(alienId, 0x50, 0) != 0)) {
				vehicle = D_80052B34;
				dx = vehicle->unk0 - alien->unk0;
				dz = vehicle->unk4 - alien->unk4;

				if ((targetIdx == 0x1D) || (targetIdx == 0x1F)) {
					randVal = 0x3C;
				} else {
					randVal = 0x2A;
				}

				if (vehicle->unk1A == 0) {
					func_80123AC4_132A74(vehicle);
				} else {
					func_80122524_1314D4(vehicle, 0x3E8, alien->unk0, alien->unk4);
				}

				func_80137468_146418(alienId, 0x258);
				func_80102D00_111CB0(vehicle, (f32)dx / 20.0f, (f32)randVal, (f32)dz / 20.0f);

				tempF = (f32)((f64)(f32)sins((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
				func_800C541C_D43CC(vehicle->unk0, vehicle->unk2, vehicle->unk4, (s8)(s32)(tempF * 127.0f), -0x50,
					(s32)((f32)-((f64)(f32)coss((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0) * 127.0f),
					0xB4, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0xC8);

				randVal = func_800038E0_44E0() * 2000;
				if (randVal >= 0) {
					vehicle->unk22 = (s16)(0x3E8 - (randVal >> 0x10));
				} else {
					vehicle->unk22 = (s16)(0x3E8 - ((randVal + 0xFFFF) >> 0x10));
				}

				randVal = func_800038E0_44E0() * 2000;
				if (randVal >= 0) {
					vehicle->unk24 = (s16)(0x3E8 - (randVal >> 0x10));
				} else {
					vehicle->unk24 = (s16)(0x3E8 - ((randVal + 0xFFFF) >> 0x10));
				}

				randVal = func_800038E0_44E0() * 2000;
				if (randVal >= 0) {
					vehicle->unk26 = (s16)(0x3E8 - (randVal >> 0x10));
				} else {
					vehicle->unk26 = (s16)(0x3E8 - ((randVal + 0xFFFF) >> 0x10));
				}

				alien->unk20 &= ~0x1000;
				alien->unk36 = 0;
				alien->unk20 |= 0x2000;
				D_8014DD5E[node0][0] = 0;
			}
		}
		return 1;
	}

	if (alien->unk20 & 0x2000) {
		result = func_80081F18_90EC8(alienId, 3, 2, &node0, arg2);
		if (result == 2) {
			alien->unk20 &= ~0x2000;
		}
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DB16C_193C7C.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(2390) */
void func_802DBA00_194510(u8 arg0) {
	u8 sp43;
	s32 var_a0;
	s32 var_v0;
	s32 temp_a0;
	s32 var_a3;
	s32 temp_v1;
	s32 temp_a1;
	s32 var_a2;

	sp43 = alienInstances[arg0].unk25;
	func_800A93A4_B8354(arg0, -0xBB, 0x22, 0x147);
	D_8014DD50[alienInstances[arg0].unkC].unk4 = -0x96;
	if (func_802DB16C_193C7C(arg0, &D_802DDE18_196928, &D_802DDE24_196934) == 0) {
		if ((func_800038E0_44E0() % 100) == 0) {
			var_v0 = D_80052B34->unk0 - alienInstances[arg0].unk0;
			temp_a0 = -var_v0;
			var_a3 = temp_a0;
			if (temp_a0 < var_v0) {
				var_a3 = var_v0;
			}
			temp_v1 = D_80052B34->unk4 - alienInstances[arg0].unk4;
			temp_a1 = -temp_v1;
			var_a2 = temp_a1;
			if (temp_a1 < temp_v1) {
				var_a2 = temp_v1;
			}
			if (var_a2 < var_a3) {
				if (temp_a0 < var_v0) {
				} else {
					var_v0 = temp_a0;
				}
			} else {
				var_a0 = temp_a1;
				if (temp_a1 < temp_v1) {
					var_a0 = temp_v1;
				}
				var_v0 = var_a0;
			}
			if (var_v0 < 0x320 && !(*(s32 *)((volatile s16 *)D_800481DD + sp43 * 0x28) & 0x8000)) {
				alienInstances[arg0].unk36 = 0;
				alienInstances[arg0].unk20 |= 0x1000;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DBA00_194510.s")
#endif

void func_802DBB88_194698(u8 arg0) {
	func_800A93A4_B8354(arg0, -0xBB, 0x22, 0x147);
}

#ifdef NON_MATCHING
/* CURRENT(2438) */
void func_802DBBBC_1946CC(u8 arg0) {
	u8 otherIndex;
	s32 var_v0;
	s32 distanceThreshold;
	s32 flagValue;

	otherIndex = alienInstances[arg0].unk25;
	func_800A93A4_B8354(arg0, -0x88, 0x32, 0xD4);
	D_8014DD50[alienInstances[arg0].unkC].unk4 = -0x96;
	if ((alienInstances[otherIndex].unk20 & 0x1000) != 0x1000) {
		var_v0 = func_802DB16C_193C7C(arg0, &D_802DE0A8_196BB8, &D_802DE0B4_196BC4);
		flagValue = 0x1000;
		distanceThreshold = 0x320;
	} else {
		var_v0 = func_802DB16C_193C7C(arg0, &D_802DE0C0_196BD0, &D_802DE0B4_196BC4);
		flagValue = 0x4000;
		distanceThreshold = 0x7D0;
	}

	if (var_v0 != 0) {
		return;
	}

	if ((func_800038E0_44E0() % 100) == 0) {
		s32 dx, dy, adx, ady;

		dx = D_80052B34->unk0 - alienInstances[arg0].unk0;
		adx = -dx;
		if (adx < dx) {
			adx = dx;
		}
		dy = D_80052B34->unk4 - alienInstances[arg0].unk4;
		ady = -dy;
		if (ady < dy) {
			ady = dy;
		}
		if (ady < adx) {
			if (adx < dx) {
			} else {
				dx = adx;
			}
			var_v0 = dx;
		} else {
			if (ady < dy) {
				ady = dy;
			}
			var_v0 = ady;
		}
		if (var_v0 < distanceThreshold && !(*(s32 *) ((u8 *) &alienInstances[otherIndex] + 0x45) & 0x8000)) {
			alienInstances[arg0].unk36 = 0;
			alienInstances[arg0].unk20 |= flagValue;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DBBBC_1946CC.s")
#endif

void func_802DBDA8_1948B8(u8 arg0) {
	func_800A93A4_B8354(arg0, -0x88, 0x32, 0xD4);
}

#ifdef NON_MATCHING
/* CURRENT(2460) */
void func_802DBDDC_1948EC(u8 arg0) {
	u8 sp37;
	s32 var_v0;
	s32 temp_a0;
	s32 var_a3;
	s32 temp_v1;
	s32 temp_a1;
	s32 var_a2;
	s32 var_a0;

	sp37 = alienInstances[arg0].unk25;
	func_800A93A4_B8354(arg0, 0xBB, 0x24, 0x145);
	D_8014DD50[alienInstances[arg0].unkC].unk4 = -0x96;
	if (func_802DB16C_193C7C(arg0, &D_802DDF00_196A10, &D_802DDF0C_196A1C) == 0) {
		if ((func_800038E0_44E0() % 100) == 0) {
			var_v0 = D_80052B34->unk0 - alienInstances[arg0].unk0;
			temp_a0 = -var_v0;
			var_a3 = temp_a0;
			if (temp_a0 < var_v0) {
				var_a3 = var_v0;
			}
			temp_v1 = D_80052B34->unk4 - alienInstances[arg0].unk4;
			temp_a1 = -temp_v1;
			var_a2 = temp_a1;
			if (temp_a1 < temp_v1) {
				var_a2 = temp_v1;
			}
			if (var_a2 < var_a3) {
				if (temp_a0 < var_v0) {
				} else {
					var_v0 = temp_a0;
				}
			} else {
				var_a0 = temp_a1;
				if (temp_a1 < temp_v1) {
					var_a0 = temp_v1;
				}
				var_v0 = var_a0;
			}
			if (var_v0 < 0x320 && !(*(s32*)((volatile s16*)D_800481DD + sp37 * 0x28) & 0x8000)) {
				alienInstances[arg0].unk36 = 0;
				alienInstances[arg0].unk20 |= 0x1000;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DBDDC_1948EC.s")
#endif

void func_802DBF64_194A74(u8 arg0) {
	func_800A93A4_B8354(arg0, 0xBB, 0x24, 0x145);
}


#ifdef NON_MATCHING
/* CURRENT(2812) */
void func_802DBF98_194AA8(u8 arg0) {
	AlienInstance *alien;
	AlienInstance *otherAlien;
	u8 otherIndex;
	s32 var_v0;
	s32 temp_a0;
	s32 var_a3;
	s32 temp_v1;
	s32 temp_a1;
	s32 var_a2;
	s32 var_a0;
	s32 flagValue;
	s32 distanceThreshold;

	alien = &alienInstances[arg0];
	otherIndex = alien->unk25;
	func_800A93A4_B8354(arg0, 0x99, 0x32, 0xD4);
	D_8014DD50[alien->unkC].unk4 = -0x96;
	otherAlien = &alienInstances[otherIndex];
	if ((otherAlien->unk20 & 0x4000) != 0x4000) {
		var_v0 = func_802DB16C_193C7C(arg0, &D_802DE25C_196D6C, &D_802DE268_196D78);
		flagValue = 0x1000;
		distanceThreshold = 0x320;
	} else {
		var_v0 = func_802DB16C_193C7C(arg0, &D_802DE274_196D84, &D_802DE268_196D78);
		flagValue = 0x4000;
		distanceThreshold = 0x7D0;
	}

	if (var_v0 != 0) {
		return;
	}

	if ((func_800038E0_44E0() % 100) == 0) {
		var_v0 = D_80052B34->unk0 - alien->unk0;
		temp_a0 = -var_v0;
		var_a3 = temp_a0;
		if (temp_a0 < var_v0) {
			var_a3 = var_v0;
		}
		temp_v1 = D_80052B34->unk4 - alien->unk4;
		temp_a1 = -temp_v1;
		var_a2 = temp_a1;
		if (temp_a1 < temp_v1) {
			var_a2 = temp_v1;
		}
		if (var_a2 < var_a3) {
			if (temp_a0 < var_v0) {
			} else {
				var_v0 = temp_a0;
			}
		} else {
			var_a0 = temp_a1;
			if (temp_a1 < temp_v1) {
				var_a0 = temp_v1;
			}
			var_v0 = var_a0;
		}
		if (var_v0 < distanceThreshold && !(*(s32 *) ((u8 *) otherAlien + 0x45) & 0x8000)) {
			alien->unk36 = 0;
			alien->unk20 |= flagValue;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DBF98_194AA8.s")
#endif

void func_802DC184_194C94(u8 arg0) {
	func_800A93A4_B8354(arg0, 0x99, 0x32, 0xD4);
}

#ifdef NON_MATCHING
void func_802DC1B8_194CC8(u8 arg0, s32 arg1) {
	s32 sp40;
	s32 sp3C;
	s32 sp38;

	if (alienInstances[arg0].unk20 & 0x600) {
		func_80128428_1373D8(&alienInstances[arg0],
			D_8014DD50[D_8014DD50[alienInstances[arg0].unkC].unkC].unk0 / 2,
			D_8014DD50[D_8014DD50[alienInstances[arg0].unkC].unkC].unk2 / 2,
			D_8014DD50[D_8014DD50[alienInstances[arg0].unkC].unkC].unk4 / 2,
			&sp40, &sp3C, &sp38);
		func_800DF038_EDFE8((s16)sp40, (s16)sp3C, (s16)sp38,
			alienSpecs[alienInstances[arg0].specIndex].unkC, arg1, 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DC1B8_194CC8.s")
#endif

#ifdef NON_MATCHING
void func_802DC2E4_194DF4(u8 arg0) {
	AlienInstance *alien;
	Unk8014DD50 *temp_v1;
	s16 sp5C;
	s32 sp50[3];
	s16 sp48[3];
	s32 sp40;
	s32 temp;

	alien = &alienInstances[arg0];
	temp_v1 = &D_8014DD50[alien->unkC];
	sp5C = temp_v1->unkC;

	sp40 = func_8008916C_9811C(arg0, sp5C);

	sp48[0] = ((u16)temp_v1->unk6 - alien->unk6) + 0x4000;
	sp48[1] = 0;
	sp48[2] = (u16)temp_v1->unkA;

	func_800044D4_50D4((s16 *)&D_8014DD50[sp5C], sp50, sp48);

	sp50[0] += alien->unk0;
	sp50[1] += alien->unk2;
	sp50[2] += alien->unk4;

	temp = func_800DF038_EDFE8(sp50[0], sp50[1], sp50[2],
		alienSpecs[alien->specIndex].unkC, 0, 0);

	func_800C7924_D68D4(
		sp50[0], sp50[1], sp50[2], 0x40,
		temp, 0xC8, sp40, 1
	);

	func_80088E10_97DC0(sp5C);

	alienInstances[alienInstances[alien->unk25].unk25].unk20 |= 0x8000;
	alienInstances[alien->unk25].unk2C = 0x3C;
	alienInstances[alien->unk25].unk1E = 6;

	func_800A9738_B86E8(alien->unk25, 0x400000, 0x50);

	alien->unk2C = 0x32;
	func_80137468_146418(arg0, 0x11);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DC2E4_194DF4.s")
#endif

#ifdef NON_MATCHING
void func_802DC500_195010(u8 arg0) {
	s16 sp9E;
	s32 sp8C[3];
	s32 sp80[3];
	Unk800311A0 sp78;
	s16 sp70[3];
	s32 sp6C;
	s32 sp68;
	s32 sp64;
	u16 sp5C;
	u16 sp5A;
	u16 sp58;
	u16 sp56;
	u16 sp54;
	s32 sp4C;

	sp78 = D_802DE2C0_196DD0;
	sp9E = alienInstances[arg0].unkC;
	if (!(alienInstances[arg0].unk20 & 0x100000)) {
		func_802DC2E4_194DF4(arg0);
	}
	sp4C = (s32)arg0;
	if (((u32)(arg0 + D_80052A8C) % 12U) == 0) {
		sp70[1] = 0;
		sp70[0] = ((u16)D_8014DD50[sp9E].unk6 - alienInstances[arg0].unk6) + 0x4000;
		sp70[2] = (u16)D_8014DD50[sp9E].unkA;
		func_800044D4_50D4(&alienInstances[arg0].unk14, sp8C, sp70);
		func_800044D4_50D4((s16 *)&sp78, sp80, sp70);
		sp8C[0] += alienInstances[arg0].unk0;
		sp8C[1] += alienInstances[arg0].unk2;
		sp8C[2] += alienInstances[arg0].unk4;
		if (D_80031420 & 3) {
			sp54 = func_800038E0_44E0();
			sp56 = func_800038E0_44E0();
			sp58 = func_800038E0_44E0();
			sp5A = func_800038E0_44E0();
			sp5C = func_800038E0_44E0();
			func_800CA5EC_D959C(
				(s16)sp8C[0], (s16)sp8C[1], (s16)sp8C[2],
				(s8)(sp80[0] - (sp54 % 20) + 10),
				(sp80[1] - (sp56 % 20)) + 10,
				(sp80[2] - (sp58 % 20)) + 10,
				(sp5A % 30) + 0x50,
				8,
				(sp5C % 10) + 10,
				(func_800038E0_44E0() % 55) + 35,
				D_8013E3C0[currentLevel * 3 - 3],
				D_8013E3C0[currentLevel * 3 - 2],
				D_8013E3C0[currentLevel * 3 - 1],
				0xFF
			);
		}
	}
	func_800821F0_911A0(sp4C, sp9E, 4, D_802DE280_196D90);
	if (((D_8014F828 >= 3 && alienInstances[arg0].unk2C < 0xFA) || (alienInstances[alienInstances[arg0].unk25].unk20 & 0x100000)) && alienInstances[arg0].unk2C >= 3) {
		alienInstances[arg0].unk2C = 2;
	}
	if (alienInstances[arg0].unk2C == 2) {
		func_80128428_1373D8(&alienInstances[arg0], (s16)(alienInstances[arg0].unk14 / 2), (s16)(alienInstances[arg0].unk16 / 2), (s16)(alienInstances[arg0].unk18 / 2), &sp6C, &sp68, &sp64);
		func_800DF038_EDFE8((s16)sp6C, (s16)sp68, (s16)sp64, (u16)alienSpecs[alienInstances[arg0].specIndex].unkC, 6, 0);
		D_8014F828 -= 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DC500_195010.s")
#endif

void func_802DC500_195010(u8 arg0);

void func_802DC91C_19542C(u8 arg0) {
	alienInstances[arg0].unk14 = -0x8D;
	alienInstances[arg0].unk16 = -0x7;
	alienInstances[arg0].unk18 = 0x26;
	func_802DC500_195010(arg0);
	func_800A93A4_B8354(arg0, -0xBB, 0x22, 0x147);
}

void func_802DC98C_19549C(u8 arg0) {
	alienInstances[arg0].unk14 = -0xA8;
	alienInstances[arg0].unk16 = 0xB6;
	alienInstances[arg0].unk18 = 0x39;
	func_802DC500_195010(arg0);
	func_800A93A4_B8354(arg0, -0x88, 0x32, 0xD4);
}

void func_802DC9FC_19550C(u8 arg0) {
	alienInstances[arg0].unk14 = 0x9B;
	alienInstances[arg0].unk16 = -0x11;
	alienInstances[arg0].unk18 = 0x25;
	func_802DC500_195010(arg0);
	func_800A93A4_B8354(arg0, 0xBB, 0x24, 0x145);
}

void func_802DCA6C_19557C(u8 arg0) {
	alienInstances[arg0].unk14 = 0x9C;
	alienInstances[arg0].unk16 = 0xCA;
	alienInstances[arg0].unk18 = 0x58;
	func_802DC500_195010(arg0);
	func_800A93A4_B8354(arg0, 0x99, 0x32, 0xD4);
}

#ifdef NON_MATCHING
/* CURRENT(9737) */
void func_802DCADC_1955EC(u8 arg0) {
	AlienInstance *alien;
	Unk8014DD50 *obj0;
	Unk8014DD50 *obj1;
	Unk8014DD50 *obj2;
	Unk8014DD50 *obj3;
	Unk8014DD50 *obj4;
	s32 sp6C;
	s32 sp68;
	s32 sp64;
	s16 tmpA;
	s16 tmpB;
	s8 obj4Next;
	u16 angle;

	alien = &alienInstances[arg0];
	obj0 = &D_8014DD50[alien->unkC];
	obj1 = &D_8014DD50[obj0->unkC];
	obj2 = &D_8014DD50[obj1->unkD];
	obj3 = &D_8014DD50[obj2->unkD];
	obj4 = &D_8014DD50[obj3->unkD];
	obj4Next = obj4->unkD;
	tmpA = obj1->unkD;
	tmpB = obj0->unkC;

	if (alien->unk2C >= 0x51) {
		obj4->unk2 = 0;
		D_8014DD50[obj4Next].unk2 = 0;

		obj2->unk6 = (u16) (65535.0 - ((((f64) (f32) coss((D_80052A8C * 0x4E20) & 0xFFFF) / 32768.0) + 1.0) * 2000.0));
		obj3->unk6 = (u16) (((((f64) (f32) coss((D_80052A8C * 0x4E20) & 0xFFFF) / 32768.0) + 1.0) * 2000.0));

		func_80090948_9F8F8(tmpB, 0x7D0);
		func_80090948_9F8F8(tmpA, 0x7D0);
	} else {
		obj4->unk2 = 0x7D00;
		D_8014DD50[obj4Next].unk2 = 0x7D00;

		if ((u16) obj1->unkA < 0x2710) {
			obj1->unkA = (u16) ((u16) obj1->unkA + 0x3E8);
		}

		if ((u16) obj2->unkA < 0x2710) {
			obj2->unkA = (u16) ((u16) obj2->unkA + 0x3E8);
		}
	}

	if (!(alien->unk20 & 0x100000)) {
		func_8012B21C_13A1CC();
		func_800A92B0_B8260();
		alien->unk2C = 0x10E;
		func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, D_80257184, 8);
		func_80137468_146418(arg0, 0x11);
		return;
	}

	if (alien->unk2C < 0xAB) {
		func_800AA340_B92F0(arg0);

		if ((alien->unk2C < 0x51) && (alien->unk2C >= 0x29) && !(D_80052A8C & 7)) {
			func_80128504_1374B4(alien, 1, &sp6C, &sp68, &sp64);

			if (D_80031420 & 3) {
				angle = alien->unk6;
				func_800CA5EC_D959C(
					(s16) sp6C,
					(s16) sp68,
					(s16) sp64,
					(s8) (s32) ((((f64) (f32) coss(angle) / 32768.0) * 100.0)),
					-0x14,
					(s32) ((((f64) (f32) sins(angle) / 32768.0) * 100.0)),
					0x64,
					0xA,
					0x1E,
					0x64,
					D_8013E3C0[currentLevel * 3 - 3],
					D_8013E3C0[currentLevel * 3 - 2],
					D_8013E3C0[currentLevel * 3 - 1],
					0xFF
				);
			}
		}
	} else {
		D_80031414 = 1;

		if (alien->unk2C >= 0xFA) {
			alien->unkA -= 0xC8;
			return;
		}

		if (alien->unk2C < 0xBF) {
			alien->unkA += 0xC8;
			return;
		}

		if (((alien->unk2C + 1) % 10) == 0) {
			func_80128504_1374B4(alien, 1, &sp6C, &sp68, &sp64);
			angle = alien->unk6;

			func_800DEA08_ED9B8((s16) sp6C, (s16) (sp68 + 0x32), (s16) sp64, 0xB4, 0xA, 0, 0x1E, 0xB4, 0xA0, 0x96, 0);
			func_800CA5EC_D959C(
				(s16) sp6C,
				(s16) (sp68 + 0x32),
				(s16) sp64,
				(s8) (s32) ((((f64) (f32) coss(angle) / 32768.0) * 100.0)),
				0x50,
				(s32) ((((f64) (f32) sins(angle) / 32768.0) * 100.0)),
				0x64,
				0xA,
				0x1E,
				0x64,
				0xA0,
				0x96,
				0,
				0xC8
			);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/greece/18D7E0/func_802DCADC_1955EC.s")
#endif
