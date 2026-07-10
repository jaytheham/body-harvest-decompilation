#include <ultra64.h>
#include "common.h"

void func_802D64DC_2B890C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7);
void func_802D6A70_2B8EA0(void);
void func_802DB8D8_2BDD08(u8 arg0, s32 arg1, u8 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7, f32 arg8);
void func_802DD240_2BF670(s32 arg0);
s32 func_802DD408_2BF838(u8 arg0, u32 arg1);
void func_802DD514_2BF944(s32 arg0);
s32 func_802DCC50_2BF080(u8 arg0);
void func_802DCA14_2BEE44(u8 arg0);
extern s16 D_802E278C_2C4BBC;
void func_802E02CC_2C26FC(u8 arg0);

#ifdef NON_MATCHING
void func_802D4CD0_2B7100(s32 arg0, s32 arg1) {
	arg1 = arg0;
	if (arg0 < 0x14) {
		D_802E0DF0_2C3220[arg0]();
		return;
	}
	switch (arg1) {
	case 0x1E:
		func_800EFEB4_FEE64(func_802D7398_2B97C8, 0x1E, 0);
		break;
	case 0x14:
		func_800EFEB4_FEE64(func_800F1134_1000E4, 0x1A, 0);
		break;
	case 0x15:
		func_800EFEB4_FEE64(func_800F1DDC_100D8C, 0x15, 1);
		break;
	case 0x45:
		func_802D4DCC_2B71FC();
		break;
	case 0x44:
		func_80007690_8290();
		break;
	default:
		osSyncPrintf(D_802E2E90_2C52C0);
		break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D4CD0_2B7100.s")
#endif

#ifdef NON_MATCHING
void func_802D4DCC_2B71FC(void) {
	switch (D_80048030) {
	case 0:
		if (func_8000726C_7E6C(3)) {
			func_800076D4_82D4(1);
		}
		break;
	case 1:
	case 5:
	case 9:
	case 10:
		break;
	case 2:
		if (func_80004818_5418(0x1D, 0x29, 3)) {
			func_800076D4_82D4(3);
		}
		break;
	case 3:
		if (func_8000726C_7E6C(2) || func_8000726C_7E6C(0x25)) {
			func_800076D4_82D4(4);
		}
		break;
	case 4:
		if (func_80004818_5418(-0x59, 0x1A, 3)) {
			func_800076D4_82D4(5);
		}
		break;
	case 6:
		if (func_80004818_5418(-0x32, -0xF, 3)) {
			func_800076D4_82D4(7);
		}
		break;
	case 7:
		if (func_8000726C_7E6C(0x30)) {
			func_800076D4_82D4(8);
		}
		break;
	case 8:
		if (func_8000726C_7E6C(0x1C)) {
			func_800076D4_82D4(9);
		}
		break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D4DCC_2B71FC.s")
#endif

// CURRENT(3010)
#ifdef NON_MATCHING
void func_802D4F1C_2B734C(void) {
	u8 sp35;
	u8 sp34;
	u8 sp33;
	s16 i;
	s16 sp33_adj;

	D_800313F8 = 0x3B6;
	D_80047743 = 0x2F;
	D_800313E8 = 0x2F;
	D_80047744 = 0x7B;
	D_800313EC = 0x7B;
	D_80047745 = 0x2E;
	D_800313F0 = 0x2E;
	i = 0;
	do {
		func_80004A38_5638((u8)i, (s8 *)&sp35, (s8 *)&sp34, (s8 *)&sp33);
		*((u16 *)&D_802E30A0 + i) = *((u16 *)&D_802D48D0 + i);
		sp33_adj = sp33 - 12;
		*(volatile u16 *)((u16 *)&D_802D48D0 + i) = (sp35 - 12) << 11;
		*(volatile u16 *)((u16 *)&D_802D48D0 + i) = ((sp35 - 12) << 11) + ((sp34 - 3) << 6);
		*((u16 *)&D_802D48D0 + i) = ((sp35 - 12) << 11) + ((sp34 - 3) << 6) + sp33_adj * 2;
		i++;
	} while (i < 0x26);
	func_80004948_5548();
	leoInitUnit_atten();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D4F1C_2B734C.s")
#endif

// CURRENT(48775)
#ifdef NON_MATCHING
void func_802D5058_2B7488(void) {
	f32 sp1C;
	s32 sp18;
	f32 var_f12;
	s32 temp_f10;
	s32 i;
	s16 temp_v0;
	s16 temp_a1;
	s32 r, g, b;
	s32 new_r, new_g, new_b;
	f32 f0, f2;
	f32 temp_f4;
	s32 *e44;
	s16 *palSrc;
	s16 *palDst;
	s16 *palCopy;

	e44 = (s32 *)&D_802E0E44;
	var_f12 = -1.0f;
	if (D_80047F94 == 0) {
		sp1C = -1.0f;
		var_f12 = -1.0f;
		sp18 = 0;
		if (func_8000726C_7E6C(0xC)) {
			var_f12 = 1.0f;
			*e44 = 1;
		} else {
			var_f12 = sp1C;
			temp_v0 = D_80052B34->unk4;
			if (temp_v0 < 0x3C00 && temp_v0 >= 0x2879) {
				var_f12 = (f32)(1.0 - (f64)((f32)(0x3C00 - temp_v0) / D_802E2F84_2C53B4));
				*e44 = 1;
			} else if (temp_v0 >= 0x3C01) {
				if (*e44 == 0) {
					var_f12 = 1.0f;
					*e44 = 1;
				}
			}
		}
	} else if (*e44 != 0) {
		var_f12 = 0.0f;
		*e44 = 0;
	}

	palSrc = (s16 *)&D_802E30A0;
	palDst = (s16 *)&D_802D48D0;
	palCopy = (s16 *)&D_802D4AD0;
	i = 0;

	if ((f64)var_f12 != -1.0) {
		s16 temp_s16;
		u8 color0, color1, color2;
		u8 *levelColors;
		
		temp_f10 = (s32)((f64)(200 - D_80154300) * D_802E2F88_2C53B8 + D_802E2F90_2C53C0);
		temp_s16 = (s16)temp_f10;
		D_800313F8 = (s16)((f32)temp_s16 + ((f32)(0x3B6 - temp_s16)) * var_f12);

		levelColors = (u8 *)&D_80031620[0].unk0;
		levelColors += (currentLevel - 1) * 4;
		color0 = levelColors[0];
		color1 = levelColors[1];
		color2 = levelColors[2];

		D_80047743 = (s8)((f32)color0 + ((f32)(0x2F - color0)) * var_f12);
		D_800313E8 = D_80047743;
		D_80047744 = (s8)((f32)color1 + ((f32)(0x7B - color1)) * var_f12);
		D_800313EC = D_80047744;
		D_80047745 = (s8)((f32)color2 + ((f32)(0x2E - color2)) * var_f12);
		D_800313F0 = D_80047745;

		f0 = -12.0f * var_f12;
		f2 = -3.0f * var_f12;

		for (; i < 0x26; i++) {
			temp_a1 = palSrc[i];
			r = ((temp_a1 & 0xF800) >> 11) & 0xFF;
			g = ((temp_a1 & 0x7C0) >> 6) & 0xFF;
			b = ((temp_a1 & 0x3E) >> 1) & 0xFF;

			new_r = (s32)((f32)r + f0);
			new_g = (s32)((f32)g + f2);
			new_b = (s32)((f32)b + f0);

			palDst[i] = ((new_r & 0xFF) << 11);
			palDst[i] = ((new_r & 0xFF) << 11) | ((new_g & 0xFF) << 6);
			palDst[i] = ((new_r & 0xFF) << 11) | ((new_g & 0xFF) << 6) | ((new_b & 0xFF) << 1);
			palCopy[i] = ((new_r & 0xFF) << 11) | ((new_g & 0xFF) << 6) | ((new_b & 0xFF) << 1);
		}

		leoInitUnit_atten();
		func_80004C34_5834();
		func_80004948_5548();
	}

	if (gameplayMode == 6) {
		*e44 = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D5058_2B7488.s")
#endif

// CURRENT(830)
#ifdef NON_MATCHING
void func_802D5754_2B7B84(void) {
	s32 sp34;
	s32 temp;
	VehicleInstance *vehicle;

	vehicle = D_80052B34;
	sp34 = func_800B84D0_C7480(vehicle->unk0, vehicle->unk4);
	temp = ((sp34 >> 8) - D_80222A70) >> 2;
	if (temp < 11) {
		temp = 10;
	}
	func_800E2720_F16D0(temp);
	if (D_80047F94 != 0) {
		D_800313F8 = (s16)((s32)((f64)(200 - D_80154300) * D_802E2F98_2C53C8 + D_802E2FA0_2C53D0));
	}
	if (D_80047F94 == 2) {
		D_80222A70 = 0x400;
		func_800E2720_F16D0(0x4B0);
	} else {
		D_80222A70 = 0xC0;
	}
	if (func_8000726C_7E6C(0x20ULL) != 0) {
		func_800E2720_F16D0(0x4B0);
	}
	if (func_8000726C_7E6C(0x1AULL) != 0) {
		func_800E2720_F16D0(8);
	}
	if (func_8000726C_7E6C(0x1BULL) != 0) {
		func_800073B8_7FB8(0x1BULL);
		func_800073B8_7FB8(0x20ULL);
		func_800073B8_7FB8(0x1AULL);
	}
	if (D_80157FA8 == 1) {
		func_800074BC_80BC(func_802D5754_2B7B84);
		func_800E2720_F16D0(0);
	}
	if (D_802E3094 == 1) {
		D_802E3098 = func_8012D700_13C6B0(5, 0xFFF,
			(s16)(vehicleInstances[30].unk0 + 0xB4),
			(s16)(vehicleInstances[30].unk2 + 0x4C),
			vehicleInstances[30].unk4, 0, 0, 0, 0x1C2, 0x46, 0x55, 0, 0);
	}
	func_802D5058_2B7488();
	if ((func_8000726C_7E6C(2ULL) != 0) && (func_8000726C_7E6C(0x18ULL) != 0)) {
		func_800073B8_7FB8(0x18ULL);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D5754_2B7B84.s")
#endif

void func_802D5980_2B7DB0(void)
{
	u8 i;
	u8 j;
	u16 *src;
	u16 *dst;
	func_800072CC_7ECC(0x18);
	if (func_8000726C_7E6C(0x0B) == 0)
	{
		*((u16 *)(((u8 *)vehicleInstances) + 0xA8C)) |= 0x80;
	}
	else
	{
		func_8011C080_12B030(0x67);
	}
	*((u16 *)(((u8 *)vehicleInstances) + 0xAE8)) |= 0x80;
	D_80157FA8 = 0;
	D_801591C4 = 0;
	osSyncPrintf(D_802E2EB0_2C52E0);
	func_80007410_8010(&func_802D5754_2B7B84);
	if (D_80047F94 == 0)
	{
		func_802D4F1C_2B734C();
	}
	else
	{
		src = (u16 *)(&D_802D48D0);
		dst = (u16 *)(&D_802E30A0);
		for (i = 0; i < 0x26; i++)
		{
			dst[i] = src[i];
		}
	}
	D_802E3094 = 1;
	D_802E309C = -1;
	for (j = 0; j < 0xFF; j++)
	{
		if (((BuildingInstance *)(((u8 *)buildingInstances) + (((unsigned long)j) * 0x18)))->yCoord >= 0x2711)
		{
			func_8011C080_12B030(j);
		}
	}

	if (func_8000726C_7E6C(0x0D) != 0)
	{
		*((u8 *)(((u8 *)buildingInstances) + 0x67F)) = 0;
		*((u8 *)(((u8 *)buildingInstances) + 0x787)) = 0;
		*((u8 *)(((u8 *)buildingInstances) + 0x61F)) = 0;
		*((u8 *)(((u8 *)buildingInstances) + 0x817)) = 0;
		func_8011C080_12B030(0x45);
		func_8011C080_12B030(0x50);
		func_8011C080_12B030(0x41);
		func_8011C080_12B030(0x56);
	}
	if (func_8000726C_7E6C(0x14) != 0)
	{
		*((u8 *)(((u8 *)buildingInstances) + 0xE22)) = 0x6E;
	}
	if (func_8000726C_7E6C(0x1C) != 0)
	{
		*((u16 *)(((u8 *)vehicleInstances) + 0xD10)) |= 0x10;
	}
}

void func_802D5B58_2B7F88(void)
{
	u8 new_var;
	s32 i;
	vehicleInstances[29].unk20 &= 0xFF7F;
	osSyncPrintf(D_802E2EC8_2C52F8);
	for (i = 0; i < D_8014D507; i++)
	{
		AlienInstance *alien;
		new_var = D_8014D408[i];
		alien = &alienInstances[new_var];
		if ((alien->specIndex == 1) && (alien->unk24 == 1))
		{
			func_80088760_97710(alien);
		}
	}
}

// CURRENT(1108)
#ifdef NON_MATCHING
void func_802D5C24_2B8054(void) {
	s32 rand1;
	s16 temp;
	u16 rand2, rand3;
	s32 doFinal;

	if (vehicleInstances[30].unk1C <= 0) {
		func_80124118_1330C8((VehicleInstance *)&D_8004F038, (s16)(vehicleInstances[54].unk1C * 2));
		func_800074BC_80BC(func_802D5C24_2B8054);
		func_800076D4_82D4(2);
	}
	func_80014508_15108((VehicleInstance *)&D_8004E798, 1, 2);
	if (((u32)D_80052A8C % 12U) == 0 && D_8014D17C < 5) {
		D_8014D17C++;
	}
	func_80102A0C_1119BC(&D_8004E798, vehicleInstances[30].unk6, 0, 2.5f);
	rand1 = func_800038E0_44E0();
	if (((u32)D_80052A8C % ((rand1 & 7) + 4)) == 0 && vehicleInstances[54].unk1C > 0) {
		rand2 = func_800038E0_44E0();
		rand3 = func_800038E0_44E0();
		func_800DEA08_ED9B8(
			(s16)((rand2 % 25) + vehicleInstances[54].unk0 + 0x50),
			(s16)((rand3 % 25) + vehicleInstances[54].unk2 + 0x64),
			(s16)((func_800038E0_44E0() % 25) + vehicleInstances[54].unk4 + 0x14),
			0x50, 8, 0xE, 0x28, 0xF0, 0x2F, 0x7B, 0x2E
		);
	}
	temp = vehicleInstances[30].unk0;
	doFinal = temp < 0x1C60;
	if (temp < 0x1940) {
		func_80124118_1330C8((VehicleInstance *)&D_8004E798, (s16)(vehicleInstances[30].unk1C * 2));
		func_800072CC_7ECC(0xC);
		func_800AE1EC_BD19C();
		func_800DEA08_ED9B8(
			(s16)(vehicleInstances[54].unk0 + D_80047710),
			vehicleInstances[54].unk2,
			vehicleInstances[54].unk4,
			0x190, 8, 1, 0xC8, 0xFF, 0x2F, 0x7B, 0x2E
		);
		doFinal = D_8004E798 < 0x1C60;
	}
	if (doFinal) {
		if (D_802E30EC == 0) {
			func_800EFEB4_FEE64(0, 0x1B, 0);
			D_802E30EC = 1;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D5C24_2B8054.s")
#endif

// CURRENT(93)
#ifdef NON_MATCHING
void func_802D5F28_2B8358(void) {
	s32 alienId;

	if (D_80157F94 != 0xFF) {
		if (alienInstances[D_80157F94].specIndex == 0) {
			D_80157F94 = 0xFF;
			goto afterFirstBlock;
		}
		func_800800E4_8F094((u8)D_80157F94);
		func_80080510_8F4C0(D_80157F95);
		alienInstances[D_80157F94].unk6 = alienInstances[D_80157F94].unkE;
		alienSpecs[alienInstances[D_80157F94].specIndex].unk48((u8)D_80157F94);
	}
afterFirstBlock:

	osSyncPrintf(D_802E2EDC_2C530C, D_802E30EC, D_8014D17C);

	switch (D_802E30EC) {
	case 0:
		D_80157F8E = 0;
		D_80157F8C++;
		D_80157F84 = 200.0f;
		D_80157F88 = 0.0f;
		D_80157F78 = 400.0f;
		D_80157F7C = -2.0f;
		D_80157F80 = 100.0f;
		alienId = func_8007956C_8851C(0x12);
		D_802E30F0 = alienId;
		if (alienId != 0xFF) {
			alienInstances[alienId].unk20 &= 0xF7FFFE5F;
			alienInstances[alienId].unk0 = 0x6700;
			alienInstances[alienId].unk4 = -0x6680;
			alienInstances[alienId].unk14 = 0x6700;
			alienInstances[alienId].unk18 = -0x6280;
			alienInstances[alienId].unk20 |= 0x100;
			alienInstances[alienId].unk24 = 2;
			alienInstances[alienId].unkE = 0x4000;
			alienInstances[alienId].unk2A = 0x4000;
			func_8007A198_89148(alienId);
			D_80157F94 = (s16)D_802E30F0;
		}
		D_802E30EC++;
		break;

	case 1:
		D_8014D17C++;
		if (D_8014D17C < 0x28) {
			return;
		}
		D_8014D17C = 0;
		D_802E30EC++;
		break;

	case 2:
		D_8014D17C++;
		if (D_8014D17C <= 0) {
			return;
		}
		D_8014D17C = 0;
		D_802E30EC++;
		break;

	case 3:
		D_8014D17C++;
		if (D_8014D17C < 0x14) {
			return;
		}
		D_8014D17C = 0;
		D_802E30EC++;
		break;

	case 4:
		func_80079910_888C0(D_802E30F0);
		func_800074BC_80BC(func_802D5F28_2B8358);
		func_80007410_8010(func_802D5C24_2B8054);
		D_802E30EC = 0;
		D_8014D17C = 0;
		break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D5F28_2B8358.s")
#endif

void func_802D6220_2B8650(void) {
	D_802E30F4--;
	if (D_802E30F4 == 0) {
		vehicleInstances[30].unk20 &= ~0x80;
		D_801493E0 = 0;
		D_802E3094 = 0;
		func_8012D808_13C7B8(D_802E3098);
		D_802E30EC = 0;
		D_8014D17C = 0;
		func_800EFEB4_FEE64(0, 0x1C, 0);
		func_80007410_8010(&func_802D5F28_2B8358);
	}
}

void func_802D62B4_2B86E4(void) {
	D_802E30F4 = 0x4B;
	func_80007410_8010(&func_802D6220_2B8650);
}

void func_802D62E4_2B8714(void) {
	s16 temp = 0x28 - D_8004D1B1;

	func_8009BF64_AAF14(temp);

	if ((temp < 0) || func_8000726C_7E6C(0x28)) {
		func_800074BC_80BC(&func_802D62E4_2B8714);
	}
}

void func_802D6340_2B8770(void) {
	func_80007410_8010(&func_802D62E4_2B8714);
}

void func_802D6364_2B8794(void) {
	u8 temp;

	temp = func_8007956C_8851C(0x13);
	if (temp != 0xFF) {
		osSyncPrintf(&D_802E2EE8_2C5318);
		alienInstances[temp].unk0 = buildingInstances[0xA0].xCoord + 0x320;
		alienInstances[temp].unkE = 0;
		alienInstances[temp].unk4 = buildingInstances[0xA0].zCoord;
		func_80080510_8F4C0(temp);
	}
}

// CURRENT(4)
#ifdef NON_MATCHING
void func_802D63E8_2B8818(s32 arg0, s16 *arg1)
{
  s32 x;
  s32 y;
  s32 z;
  s16 sp2A;
  s16 sp28;
  u16 randVal;
  x = buildingInstances[arg0].xCoord;
  y = buildingInstances[arg0].yCoord;
  z = buildingInstances[arg0].zCoord;
  sp2A = arg1[0];
  sp28 = arg1[2];
  func_80116554_125504((s16) (buildingInstances[arg0].unk8 & 3), &sp2A, &sp28);
  randVal = func_800038E0_44E0();
  func_800DF038_EDFE8(sp2A + x, arg1[1] + ((unsigned int) y), sp28 + z, (randVal % 50) + 200, func_800038E0_44E0() & 1, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D63E8_2B8818.s")
#endif

void func_802D64DC_2B890C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7)
{
	s32 var_s0;
	int new_var;
	s32 var_s1;
	s32 *new_var2;
	if (arg1 >= arg2)
	{
		if (buildingInstances[arg0].hitPoints > 0)
		{
			func_8011C080_12B030(arg0);
			goto end;
		}
	}
	if (arg2 == ((*(new_var2 = &arg1)) + 24))
	{
		osSyncPrintf(D_802E2EF8_2C5328);
		var_s0 = 0;
		var_s1 = arg4;
		if (arg5 > 0)
		{
			;
			do
			{
				func_802D63E8_2B8818(arg0, (s16 *)var_s1);
				var_s0++;
				var_s1 += 6;
			} while (var_s0 != arg5);
		}
		goto end;
	}
	if ((arg1 % arg3) == 0)
	{
		osSyncPrintf(D_802E2F04_2C5334);
		var_s1 = (func_800038E0_44E0() % arg5) * 6;
		func_802D63E8_2B8818(arg0, (s16 *)(arg4 + var_s1));
	}
end:
	if (arg6 < arg1)
	{
		buildingInstances[arg0].yCoord -= arg7;
	}
}

void func_802D6674_2B8AA4(void) {
	if (D_8014D17C >= 0x15) {
		func_802D64DC_2B890C(0xA0, D_8014D17C - 0x14, 0xC8, 0x18, &D_802E0E48, 6, 0x28, 1);
		if (D_800519E7 <= 0) {
			func_800074BC_80BC(func_802D6674_2B8AA4);
			func_802D6364_2B8794();
		}
	}
	D_8014D17C += 1;
}

void func_802D670C_2B8B3C(void) {
	func_80013468_14068(0xA);
	func_80135D08_144CB8(1.0f, 0x28, 0x46, 0x32);
	D_8014D17C = 0;
	func_800EFEB4_FEE64(0, 0x17, 0);
	func_80007410_8010(&func_802D6674_2B8AA4);
}

#ifdef NON_MATCHING
s32 func_802D6768_2B8B98(void) {
	switch ((u32)D_80157F8C) {
	case 0:
		D_80157F8E++;
		if (D_80157F8E - 1 >= 2) {
			D_80157F8E = 0;
			D_80157F8C = 1;
		}
		return 0;
	case 1:
		if (D_80157F8E == 0x3C) {
			func_80124118_1330C8(&D_8004DDE4, D_8004DE00 * 2);
		}
		func_802D64DC_2B890C(0x71, D_8014D17C, 0xC8, 0x18, &D_802E0E6C_2C329C, 5, 0x28, 1);
		D_8014D17C++;
		if (D_80157F8E >= 0xC9) {
			D_80157F8E = 0;
			D_80157F8C++;
		} else {
			D_80157F8E++;
		}
		return 0;
	case 2:
		if (D_80157F8E == 5) {
			func_800D6ADC_E5A8C(buildingInstances[113].xCoord, (func_800B84D0_C7480(buildingInstances[113].xCoord, buildingInstances[113].zCoord) / 256) + 100, buildingInstances[113].zCoord, 7);
		}
		D_8013E344_14D2F4 = D_80157F8E * 12;
		if (D_80157F8E < 0x15) {
			D_80157F8E++;
		} else {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		return 0;
	case 3:
		D_8013E344_14D2F4 = 0xFF;
		if ((u32)D_80157F8E < 6U) {
			D_80157F8E++;
		} else {
			D_80157F8E = 0;
			D_80157F8C = 4;
		}
		return 0;
	case 4:
		D_8013E344_14D2F4 = 240 - D_80157F8E * 12;
		if (D_80157F8E < 0x15) {
			D_80157F8E++;
		} else {
			D_80157F8E = 0;
			D_80157F8C = 5;
		}
		return 0;
	case 5:
		return 1;
	default:
		return 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D6768_2B8B98.s")
#endif

void func_802D69EC_2B8E1C(void) {
	func_80013468_14068(0xE);
	func_80135D08_144CB8(1.0f, 0x28, 0x46, 0x32);
	D_8014D17C = 0;
	func_800EFEB4_FEE64(&func_802D6768_2B8B98, 0x18, 0);
	func_800073B8_7FB8(0x18ULL);
}

void func_802D6A4C_2B8E7C(void) {
	func_800AE190_BD140(D_801591C4);
}

// CURRENT(1610)
#ifdef NON_MATCHING
void func_802D6A70_2B8EA0(void) {
	u8 sp3F;
	s32 sp38;
	s16 sp26;
	void *sp20;
	s32 temp_s0;
	f64 temp_f6;

	if (!(D_80052A8C & 0x1F)) {
		temp_s0 = func_800AD3BC_BC36C(D_802E30FB);
		if (temp_s0 != 0xFF) {
			sp3F = temp_s0 & 0xFF;
			func_800AD814_BC7C4(sp3F, 0x1B, D_802E30FC, 0);
			temp_s0 = (buildingInstances[D_802E30F8].unk8 << 14) & 0xFFFF;
			sp26 = coss(temp_s0);
			sp38 = (s32)(((f64)(f32)sins(temp_s0) / 32768.0) * D_802E2FD8_2C5408 + ((f64)(f32)sp26 / 32768.0) * D_802E2FE0_2C5410);
			sp26 = sins(temp_s0);
			temp_f6 = (f64)(f32)coss(temp_s0) / 32768.0;
			sp20 = &alienInstances[sp3F];
			((AlienInstance *)sp20)->unk14 = buildingInstances[D_802E30F8].xCoord + sp38;
			((AlienInstance *)sp20)->unk18 = buildingInstances[D_802E30F8].zCoord + (s32)(temp_f6 * D_802E2FE8_2C5418 + D_802E2FF0_2C5420 * ((f64)(f32)sp26 / 32768.0));
			func_80080510_8F4C0(sp3F);
			osSyncPrintf(&D_802E2F14_2C5344, ((AlienInstance *)sp20)->unk0, ((AlienInstance *)sp20)->unk2, ((AlienInstance *)sp20)->unk4);
			if (buildingInstances[D_802E30F8].unk7 == 0) {
				func_800074BC_80BC(func_802D6A70_2B8EA0);
				D_8014D17E++;
				D_800476A2 = 1;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D6A70_2B8EA0.s")
#endif

#ifdef NON_MATCHING
void func_802D6CA0_2B90D0(void) {
	s16 temp;
	s32 buildingType;
	s32 dx, dz;
	s32 angle;
	s16 cosVal, sinVal;

	temp = 0x69 - D_8004D1B2;
	if (temp < 0xC8) {
		func_8009BF64_AAF14((u16)temp);
	}
	if ((D_80052B34->unk1A == 5) && (D_80052B34->unk20 & 0x800)) {
		if (D_802E309C == -1) {
			D_802E309C = func_800FAE60_109E10(D_80052B34);
		}
		{
			s32 t5 = D_80052B34->unk0 >> 8;
			s32 t7 = D_80052B34->unk4 >> 8;
			buildingType = func_8011D260_12C210((s8)t5, (s8)t7);
		}
		if (buildingType == 0x45 || buildingType == 0x50 || buildingType == 0x41 || buildingType == 0x56) {
			if (buildingInstances[buildingType].unk7 != 0) {
				dx = D_80052B34->unk0 - buildingInstances[buildingType].xCoord;
				dz = D_80052B34->unk4 - buildingInstances[buildingType].zCoord;
				angle = (buildingInstances[buildingType].unk8 << 14) & 0xFFFF;
				cosVal = coss(angle);
				sinVal = sins(angle);
				temp = (s32)((f64)dx * ((f64)(f32)cosVal / 32768.0) - ((f64)(f32)sinVal / 32768.0) * (f64)dz);
				sinVal = sins(angle);
				cosVal = coss(angle);
				if (temp < 0) {
					if ((s32)((f64)dz * ((f64)(f32)cosVal / 32768.0) + (f64)dx * ((f64)(f32)sinVal / 32768.0)) > 0) {
						D_802E30F8 = buildingType;
						D_802E30FC = D_80052B34 - vehicleInstances;
						func_80007410_8010(func_802D6A70_2B8EA0);
					}
				}
			}
		}
		if (D_801591C4 == 0x14) {
			func_800072CC_7ECC(0x21);
			func_800074BC_80BC(func_802D6CA0_2B90D0);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D6CA0_2B90D0.s")
#endif

// CURRENT(200)
#ifdef NON_MATCHING
void func_802D6F4C_2B937C(void) {
	u32 v1;
	u32 a2;
	u32 t0;
	u32 t2;
	u32 t6;
	u32 t8;
	u32 t9;

	v1 = buildingInstances[0x45].unk8;
	a2 = buildingInstances[0x50].unk8;
	t6 = (v1 >> 12) | 0x10000;
	t8 = t6 ^ (v1 >> 12);
	t0 = buildingInstances[0x41].unk8;
	t9 = (t8 << 12) ^ v1;
	t6 = (a2 >> 12) | 0x10000;
	t8 = t6 ^ (a2 >> 12);
	t2 = buildingInstances[0x56].unk8;
	buildingInstances[0x45].unk8 = t9;
	t6 = (t0 >> 12) | 0x10000;
	t9 = t6 ^ (t0 >> 12);
	t8 = (t8 << 12) ^ a2;
	buildingInstances[0x50].unk8 = t8;
	t8 = (t2 >> 12) | 0x10000;
	t6 = t8 ^ (t2 >> 12);
	t9 = (t9 << 12) ^ t0;
	t6 = (t6 << 12) ^ t2;
	buildingInstances[0x41].unk8 = t9;
	buildingInstances[0x56].unk8 = t6;
	D_8014D17E = 0;
	D_801591C4 = 0;
	func_80007410_8010(func_802D6CA0_2B90D0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D6F4C_2B937C.s")
#endif

void func_802D6FFC_2B942C(void) {
	s32 i;
	s32 acc;

	if (D_8014D17C >= 0x15) {
		for (i = 0, acc = 0; i < 4; i++, acc += 0xC) {
			if (acc < D_8014D17C) {
				func_802D64DC_2B890C(((s32 *)&D_802E0E8C_2C32BC)[i], D_8014D17C - acc - 0x14, 0x7D, 0xC, (s32)&D_802E0E9C_2C32CC, 5, 0x4B, 0x18);
			}
		}

		if ((s8)buildingInstances[0x45].hitPoints <= 0 &&
			(s8)buildingInstances[0x50].hitPoints <= 0 &&
			(s8)buildingInstances[0x41].hitPoints <= 0 &&
			(s8)buildingInstances[0x56].hitPoints <= 0) {
			func_800074BC_80BC(func_802D6FFC_2B942C);
		}
	}

	D_8014D17C += 1;
}

void func_802D7114_2B9544(void) {
	s32 i;
	u8 alienId;
	AlienInstance *alien;
	s16 v1;

	func_800074BC_80BC(func_802D6CA0_2B90D0);
	func_80013468_14068(0xB);
	D_8014D17C = 0;
	func_80007410_8010(func_802D6FFC_2B942C);
	func_800074BC_80BC(func_802D6A70_2B8EA0);
	func_800EFEB4_FEE64(0, 0x19, 0);

	for (i = 0; i < D_8014D507; i++) {
		alienId = D_8014D408[i];
		alien = (AlienInstance *)((u8 *)alienInstances + alienId * sizeof(AlienInstance));
		if (alien->unk24 == 0x1B) {
			func_80088760_97710(alien);
			alien->unk2C = 1;
		}
	}

	v1 = D_802E309C;
	if ((v1 != -1) && (D_80052B34->unk20 & 0x800) && (D_80052B34->unk1A == 0)) {
		func_80123AC4_132A74(&vehicleInstances[v1]);
	} else {
		D_80052B34->unk20 |= 2;
		D_80052B34->unk34 = 5.0f;
	}
}

void func_802D7298_2B96C8(void) {
}

void func_802D72A0_2B96D0(func_80070420_7F3D0_UnkArg0 *arg0) {
	func_800072CC_7ECC((u64)arg0->unk9);
}

void func_802D72C4_2B96F4(s32 arg0, s32 arg1, s32 arg2) {
	u8 alienId;
	Unk80222A78 sp1C;

	alienId = func_8007956C_8851C(0x24);
	if (alienId != 0xFF) {
		alienInstances[alienId].unk0 = arg0;
		alienInstances[alienId].unk4 = arg1;

		sp1C.unk0 = 3;
		sp1C.unk8 = alienId;
		sp1C.unk9 = arg2;
		sp1C.unkC = func_802D72A0_2B96D0;
		func_800AE454_BD404(&sp1C);
	}
}

void func_802D7350_2B9780(void) {
	func_802D72C4_2B96F4(buildingInstances[0x40].xCoord, buildingInstances[0x40].zCoord, 0xE);
	func_802D72C4_2B96F4(buildingInstances[0x3D].xCoord, buildingInstances[0x3D].zCoord, 0xF);
}

// CURRENT(955)
#ifdef NON_MATCHING
s32 func_802D7398_2B97C8(void) {
	s32 temp;

	func_80013468_14068(0xD);
	osSyncPrintf(D_802E2F34_2C5364, D_80157F8C, D_80157F8E);

	switch (D_80157F8C) {
	case 0:
		temp = D_80157F8E;
		D_80157F8E = temp + 1;
		if (temp >= 0x29) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		break;
	case 1:
		temp = D_80157F8E;
		if (temp == 5) {
			func_8011C080_12B030(0x96);
			temp = D_80157F8E;
		}
		D_80157F8E = temp + 1;
		if (temp >= 0x15) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		break;
	case 2:
		temp = D_80157F8E;
		D_8013E344_14D2F4 = temp * 12;
		D_80157F8E = temp + 1;
		if (temp >= 0x15) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		break;
	case 3:
		temp = D_80157F8E;
		D_8013E344_14D2F4 = 0xF0 - temp * 12;
		D_80157F8E = temp + 1;
		if (temp >= 0x15) {
			D_80157F8E = 0;
			D_80157F8C++;
		}
		break;
	case 4:
		return 1;
	default:
		break;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D7398_2B97C8.s")
#endif

void func_802D7508_2B9938(void) {
	func_800072CC_7ECC(0x33);
	func_800EFEB4_FEE64(func_802D7398_2B97C8, 0x1E, 0);
}

/* possible: updateStageTimer */
void func_802D7540_2B9970(void) {
	D_8014D17C += 1;
	if (D_8014D17C == 0x64) {
		func_800074BC_80BC(func_802D7540_2B9970);
		func_800A6FD4_B5F84();
		func_800076D4_82D4(0xB);
	}
}

void func_802D7598_2B99C8(void) {
	*(u16 *)&buildingInstances[150].state &= 0xF03F;
	osSyncPrintf(D_802E2F3C_2C536C);
	D_8014D17C = 0;
	func_80007410_8010(func_802D7540_2B9970);
}

void func_802D75E4_2B9A14(void) {
	if (D_802E3100 == 0) {
		func_800074BC_80BC(func_802D75E4_2B9A14);
		func_802D7598_2B99C8();
	} else {
		if (D_8014D17C >= 0xDAC) {
			func_800074BC_80BC(func_802D75E4_2B9A14);
			func_802D7508_2B9938();
		}
	}

	if (D_8014D17C == 3) {
		func_800EFEB4_FEE64(0, 0x1D, 0);
	}

	D_8014D17C++;
}

void func_802D7680_2B9AB0(s32 arg0) {
	D_802E3100 -= 1;
}

// CURRENT(3500)
#ifdef NON_MATCHING
void func_802D769C_2B9ACC(void) {
	s32 alienId;
	s32 i;
	Unk80222A78 sp48;

	D_802E3100 = 0;
	for (i = 0; i < 3; i++) {
		alienId = func_8007956C_8851C(9);
		if (alienId != 0xFF) {
			D_802E3100 = D_802E3100 + 1;
			alienInstances[alienId].unk0 = D_802E0EBC_2C32EC[i * 2];
			alienInstances[alienId].unk4 = D_802E0EBC_2C32EC[i * 2 + 1];
			alienInstances[alienId].unk14 = buildingInstances[0x96].xCoord;
			alienInstances[alienId].unk18 = buildingInstances[0x96].zCoord;
			alienInstances[alienId].unk20 &= 0xF7FFFFFF;
			sp48.unkC = func_802D7680_2B9AB0;
			sp48.unk0 = 3;
			sp48.unk8 = alienId;
			func_800AE454_BD404(&sp48);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D769C_2B9ACC.s")
#endif

#ifdef NON_MATCHING
void func_802D77BC_2B9BEC(void) {
	u16 temp;

	func_80013468_14068(0xC);
	buildingInstances[150].door1InteriorId = 0x6E;
	temp = buildingInstances[150].state;
	buildingInstances[150].state = (u16) ((temp & 0xF03F) | 0x400);
	D_8014D17C = 0;
	func_80007410_8010(&func_802D75E4_2B9A14);
	func_802D769C_2B9ACC();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D77BC_2B9BEC.s")
#endif

// CURRENT(40)
#ifdef NON_MATCHING
s32 func_802D7818_2B9C48(u8 arg0, s16 arg1) {
	s16 sp40[4];
	s32 pad1;
	s32 pad2;
	AlienInstance *alien;
	s32 temp_v0;

	alien = &alienInstances[arg0];
	if (alien->unk20 & 0x2000) {
		sp40[0] = arg1;
		temp_v0 = D_8014DD50[sp40[0]].unkC;
		sp40[1] = temp_v0;
		sp40[3] = alien->unkC;
		sp40[2] = D_8014DD50[temp_v0].unkC;
		temp_v0 = func_80081F18_90EC8(arg0, 4, 3, sp40, &D_802E13E0_2C3810);
		if (temp_v0 == 2) {
			if (func_80084FE8_93F98(arg0, 0x800)) {
				func_800871CC_9617C(arg0, 1, 0xF);
			} else {
				func_80087188_96138(arg0, 1, 0xF);
			}
			alien->unk1E = 0xF;
			return 1;
		}
		if (temp_v0 == 3) {
			alien->unk20 &= ~0x2000;
		}
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D7818_2B9C48.s")
#endif

// CURRENT(770)
#ifdef NON_MATCHING
void func_802D7934_2B9D64(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	s16 sp60[4];
	f32 sp58;
	u8 sp5F;
	s32 temp;

	temp = alienInstances[arg0].unk20;
	if (!(temp & 0xC000)) {
		return;
	}
	sp60[0] = arg1;
	sp60[1] = arg2;
	sp60[2] = arg3;
	sp60[3] = arg4;
	if (temp & 0x8000) {
		sp5F = func_80081F18_90EC8(arg0, 4, 4, sp60, &D_802E10A4_2C34D4);
	} else {
		sp5F = func_80081F18_90EC8(arg0, 4, 4, sp60, &D_802E0FD4_2C3404);
	}
	if (sp5F == 2) {
		if (func_800879A4_96954(arg0, 0x3C, 0)) {
			if (D_80052B34->unk1A != 0) {
				func_80137468_146418(arg0, 0x258);
				sp58 = (f32)((f64)(f32)sins((alienInstances[arg0].unk6 + 0x4000) & 0xFFFF) / 32768.0);
				func_800C541C_D43CC(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, (s8)(s32)(sp58 * 127.0f), -0x50, (s8)(s32)((f32)-((f64)(f32)coss((alienInstances[arg0].unk6 + 0x4000) & 0xFFFF) / 32768.0) * 127.0f), 0xB4, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0xC8);
			}
			func_80122524_1314D4(D_80052B34, D_8014619A, alienInstances[arg0].unk0, alienInstances[arg0].unk4);
			func_80102DDC_111D8C(D_80052B34, alienInstances[arg0].unk6, 0, 200.0f);
		}
		func_80137468_146418(arg0, 0x134);
		func_80137468_146418(arg0, 0x131);
	}
	if (sp5F == 4) {
		alienInstances[arg0].unk20 &= ~0xC000;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D7934_2B9D64.s")
#endif

void func_802D7BCC_2B9FFC(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7) {
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

	sp2F = func_80081F18_90EC8(arg0, 7, 5, sp30, &D_802E12E4_2C3714);

	if ((sp2F == 2) || (sp2F == 4)) {
		func_80137468_146418(arg0, 0x131);
	}

	if (sp2F == 5) {
		alienInstances[arg0].unk20 &= ~0x1000;
	}
}

// CURRENT(2290)
#ifdef NON_MATCHING
void func_802D7CD4_2BA104(u8 arg0) {
	s16 sp46;
	s16 sp44;
	s16 sp42;
	s16 sp40;
	s16 sp3E;
	s16 sp3C;
	s16 sp3A;
	s16 sp38;
	s16 sp36;

	sp46 = D_8014DD50[*(s16*)&alienInstances[arg0].unkC].unkC;
	sp40 = D_8014DD50[sp46].unkD;
	sp44 = D_8014DD50[sp46].unkC;
	sp3E = D_8014DD50[sp40].unkC;
	sp3C = D_8014DD50[sp3E].unkC;
	sp3A = D_8014DD50[sp40].unkD;
	sp38 = D_8014DD50[sp3A].unkC;
	sp36 = D_8014DD50[sp38].unkC;
	sp42 = D_8014DD50[sp3A].unkD;

	if (!(alienInstances[arg0].unk20 & 0x5000)) {
		func_80090A6C_9FA1C(arg0, sp40, 0x7D0);
		func_80090A6C_9FA1C(arg0, sp3C, 0x7D0);
	}
	if (!(alienInstances[arg0].unk20 & 0x9000)) {
		func_80090A6C_9FA1C(arg0, sp3A, 0x7D0);
		func_80090A6C_9FA1C(arg0, sp36, 0x7D0);
	}
	if (!(alienInstances[arg0].unk20 & 0x2000)) {
		func_80090A6C_9FA1C(arg0, sp42, 0xFA0);
	}
	if (alienInstances[arg0].unk12 > 0) {
		func_80090A6C_9FA1C(arg0, sp46, 0x7D0);
	} else {
		func_80086230_951E0(arg0, sp46, 0x2000);
	}
	func_800877E8_96798(arg0, 0xC8, 0xFA);
	if (!(alienInstances[arg0].unk20 & 0xF000)) {
		s32 temp_v1 = D_80052B34->unk0 - alienInstances[arg0].unk0;
		s32 temp_a0 = D_80052B34->unk4 - alienInstances[arg0].unk4;
		if ((temp_v1 * temp_v1 + temp_a0 * temp_a0 < 0x186A0 && !(D_80052B34->unk20 & 2) && D_80052B34->unk1A == 0) || (temp_v1 * temp_v1 + temp_a0 * temp_a0 < 0x493E0 && D_80052B34->unk1A != 0)) {
			if (alienInstances[arg0].unk2A < alienInstances[arg0].unkE) {
				alienInstances[arg0].unk20 |= 0x8000;
			} else {
				alienInstances[arg0].unk20 |= 0x4000;
			}
			alienInstances[arg0].unk36 = 0;
		} else if (temp_v1 * temp_v1 + temp_a0 * temp_a0 >= 0x30D40) {
			if ((func_800038E0_44E0() & 7) == 0) {
				alienInstances[arg0].unk20 |= 0x1000;
				func_80137468_146418(arg0, 0x10);
				alienInstances[arg0].unk36 = 0;
			} else if (func_80084FE8_93F98(arg0, 0x800) != 0 && alienInstances[arg0].unk4E != 0 && D_80052B34->unk2 >= D_80222A70 && alienInstances[arg0].unk1E == 0) {
				alienInstances[arg0].unk36 = 0;
				alienInstances[arg0].unk20 |= 0x2000;
			}
		}
	}
	if (alienInstances[arg0].unk20 & 0x8000) {
		func_802D7934_2B9D64(arg0, sp3A, sp38, sp36, sp44);
	} else if (alienInstances[arg0].unk20 & 0x4000) {
		func_802D7934_2B9D64(arg0, sp40, sp3E, sp3C, sp44);
	}
	func_802D7818_2B9C48(arg0, sp42);
	func_802D7BCC_2B9FFC(arg0, sp3A, sp38, sp36, sp40, sp3E, sp3C, sp44);
	if (alienInstances[arg0].unk1E != 0) {
		alienInstances[arg0].unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D7CD4_2BA104.s")
#endif

void func_802D806C_2BA49C(u8 arg0, s16 arg1, s16 arg2) {
	s16 sp2C[2];
	AlienInstance *alien;

	alien = &alienInstances[arg0];
	if ((alien->unk20 & 0x2000) && ((u16)D_8014DD50[arg1].unkA == 0)) {
		sp2C[0] = arg1;
		sp2C[1] = arg2;
		if ((u8)func_80081F18_90EC8(arg0, 2, 2, sp2C, &D_802E1430_2C3860) == 2) {
			alien->unk20 &= ~0x2000;
		}
	}
}

void func_802D8120_2BA550(u8 arg0, s16 arg1, s16 arg2) {
	s16 sp2C[2];
	AlienInstance *alien;

	alien = &alienInstances[arg0];
	if (alien->unk20 & 0x4000) {
		sp2C[0] = arg1;
		sp2C[1] = arg2;
		if ((u8)func_80081F18_90EC8(arg0, 2, 2, sp2C, &D_802E1478_2C38A8) == 2) {
			alien->unk20 &= ~0x4000;
		}
	}
}

// CURRENT(926)
#ifdef NON_MATCHING
void func_802D81C0_2BA5F0(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5) {
	s16 sp80[4];
	u8 sp7F;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	f32 sp5C;
	s32 temp_v0;
	s32 var_v1;
	AlienInstance *alien;

	alien = &alienInstances[arg0];
	if (alien->unk20 & 0x1000) {
		sp80[0] = arg2;
		sp80[1] = arg3;
		sp80[2] = arg4;
		sp80[3] = arg5;
		sp7F = func_80081F18_90EC8(arg0, 4, 3, sp80, &D_802E1540_2C3970);
		if (func_80084FE8_93F98(arg0, 0x800) != 0) {
			temp_v0 = -arg1;
			if (temp_v0 < arg1) {
				var_v1 = arg1;
			} else {
				var_v1 = temp_v0;
			}
			if (var_v1 < 0x15F90) {
				temp_v0 = -arg1;
				if (temp_v0 < arg1) {
					var_v1 = arg1;
				} else {
					var_v1 = temp_v0;
				}
				if (var_v1 >= 0x9C5 && alien->unk36 == 2 && D_8014DD50[arg5].unkE < 2) {
					if (D_80052B34->unk1A != 0) {
						func_80137468_146418(arg0, 0x258);
						sp5C = (f32)((f64)(f32)sins((alien->unk6 - 0x6000) & 0xFFFF) / 32768.0);
						func_800C541C_D43CC(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4,
							(s8)(s32)(sp5C * 127.0f), -0x50,
							(s32)((f32)-((f64)(f32)coss((alien->unk6 - 0x6000) & 0xFFFF) / 32768.0) * 127.0f),
							0xB4, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0xC8);
					}
					func_80122524_1314D4(D_80052B34, (s16)(D_8014619A * 2), alien->unk0, alien->unk4);
					func_80102DDC_111D8C(D_80052B34, (s16)(alien->unk6 - 0x6000), 0, 200.0f);
				}
			}
		}
		if (alien->unk36 == 2 && D_8014DD50[arg5].unkE == 1) {
			func_80137468_146418(arg0, 0x134);
		}
		if (sp7F == 3) {
			alien->unk20 &= ~0x1000;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D81C0_2BA5F0.s")
#endif

// CURRENT(8165)
#ifdef NON_MATCHING
void func_802D84B0_2BA8E0(s32 arg0) {
	s16 sp76;
	s16 sp74;
	s16 sp72;
	s16 sp70;
	s16 sp6E;
	s16 sp6C;
	s16 sp6A;
	s16 sp68;
	s16 sp66;
	s32 dx;
	s32 dz;
	s32 temp_t0;
	s32 v0;
	s32 distSq;
	AlienInstance *alien;
	Unk8014DD50 *sp30;
	Unk8014DD50 *node;
	s32 temp_s1 = arg0 & 0xFF;
	alien = &alienInstances[temp_s1];
	node = &D_8014DD50[alien->unkC];
	sp76 = node->unkC;
	node = &D_8014DD50[sp76];
	sp74 = node->unkC;
	sp72 = node->unkD;
	sp30 = node;
	node = &D_8014DD50[sp72];
	sp70 = node->unkC;
	sp6E = node->unkD;
	node = &D_8014DD50[sp6E];
	sp6C = node->unkC;
	sp68 = node->unkD;
	node = &D_8014DD50[sp6C];
	sp6A = node->unkC;
	node = &D_8014DD50[sp68];
	sp66 = node->unkC;

	if ((func_800038E0_44E0() % 120) == 0) {
		func_80137468_146418(temp_s1, 0x10);
	}

	v0 = alien->unk20;
	if (!(v0 & 0x4000)) {
		func_80090A6C_9FA1C(temp_s1, sp68, 0x7D0);
		v0 = alien->unk20;
	}

	if (!(v0 & 0x1000)) {
		func_80090A6C_9FA1C(temp_s1, sp6E, 0x7D0);
		func_80090A6C_9FA1C(temp_s1, sp6C, 0x7D0);
	}

	if (alien->unk12 > 0) {
		func_80090A6C_9FA1C(temp_s1, sp76, 0x3E8);
	} else {
		func_80086230_951E0(temp_s1, sp76, 0x2000);
	}

	if (D_80052B34->unk1A == 0) {
		func_800877E8_96798(temp_s1, 0xFA, 0x12C);
	} else {
		func_800877E8_96798(temp_s1, 0x1F4, 0x320);
	}

	v0 = alien->unk20;
	dx = alien->unk0 - alien->unk14;
	dz = alien->unk4 - alien->unk18;

	if (!(v0 & 0x7000)) {
		distSq = dx * dx + dz * dz;
		if ((distSq >= 0xF4241) || (D_80052B34->unk20 & 2)) {
			if (func_80084FE8_93F98(temp_s1, 0x800) != 0) {
				if (alien->unk1E == 0) {
					func_800871CC_9617C(temp_s1, 0, 0x3C);
					alien->unk1E = 0x1E;
					alien->unk20 |= 0x4000;
					alien->unk36 = 0;
				}
			}
			v0 = alien->unk20;
		} else if (distSq >= 0x27101) {
			if (func_80084FE8_93F98(temp_s1, 0x808) != 0) {
				if (alien->unk1E == 0) {
					alien->unk20 |= 0x2000;
					if (sp30->unkA == 0) {
						if (func_800871CC_9617C(temp_s1, 1, 0x50) != 0) {
							alien->unk1E = 3;
							alien->unk36 = 0;
						}
					}
				}
			}
			v0 = alien->unk20;
		} else {
			if (D_80052AD0 != 0) {
				v0 = alien->unk20 | 0x1000;
				alien->unk20 = v0;
				alien->unk36 = 0;
			}
		}
	}

	temp_t0 = dx * dx + dz * dz;

	if (v0 & 0x2000) {
		if (sp30->unkA != 0) {
			sp30->unkA += 0x808;
			if ((sp30->unkA & 0xFFFF) < (0xEC77 - (D_802E1550_2C3980 * 0x1388))) {
				sp30->unkA = 0;
				alien->unk20 = v0 & ~0x2000;
				D_802E1550_2C3980 = func_800038E0_44E0() % 3;
			}
		}
	} else {
		sp30->unkA -= 0x404;
		if ((sp30->unkA & 0xFFFF) < (0xEC77 - (D_802E1550_2C3980 * 0x1388))) {
			sp30->unkA = (0xEC77 - (D_802E1550_2C3980 * 0x1388));
		}
	}

	func_802D806C_2BA49C(temp_s1, sp72, sp70);
	func_802D8120_2BA550(temp_s1, sp68, sp66);
	func_802D81C0_2BA5F0(temp_s1, (s16)temp_t0, sp74, sp6E, sp6C, sp6A);

	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D84B0_2BA8E0.s")
#endif

// CURRENT(10000)
#ifdef NON_MATCHING
void func_802D8930_2BAD60(s32 arg0) {
	s16 spBE;
	s16 spB2;
	s16 spB0;
	s16 spAC;
	s16 spAA;
	s16 sp9C;
	s16 sp9A;
	s16 sp98;
	s16 sp94;
	s16 sp92;
	s16 sp90;
	s16 sp8E;
	s16 sp8C;
	s16 sp8A;
	s16 sp88;
	s32 sp84;
	s32 sp80;
	s32 sp7C;
	f32 sp78;
	f32 sp74;
	s32 sp50;
	AlienInstance *alien;
	Unk8014DD50 *sp68;
	Unk8014DD50 *sp64;
	Unk8014DD50 *sp60;
	Unk8014DD50 *sp5C;
	Unk8014DD50 *sp58;
	s32 temp_v0;
	s32 a2;

	a2 = arg0 & 0xFF;
	alien = &alienInstances[a2];
	temp_v0 = alien->unk20;
	if (!(temp_v0 & 0x600)) {
		return;
	}

	if (!(temp_v0 & 0x100000)) {
		alien->unk36 = 0;
		alien->unk4B = 0;
		alien->unk2C = 0x7D00;
		func_80137468_146418(a2, 0x10);
		func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4,
			*(u16 *)((u8 *)&D_8025668C + alien->specIndex * 0x68), 0);
		return;
	}

	sp88 = D_8014DD50[alien->unkC].unkC;
	sp68 = &D_8014DD50[sp88];
	sp8C = sp68->unkD;
	sp8A = sp68->unkC;
	sp64 = &D_8014DD50[sp8C];
	sp8E = sp64->unkC;
	sp92 = sp64->unkD;
	sp60 = &D_8014DD50[sp8E];
	spB0 = D_8014DD50[sp8E].unkC;
	sp90 = spB0;
	sp5C = &D_8014DD50[sp92];
	sp94 = D_8014DD50[sp92].unkC;
	spAC = sp94;
	sp98 = D_8014DD50[sp92].unkD;
	sp58 = &D_8014DD50[sp94];
	spAA = D_8014DD50[sp94].unkC;
	sp9A = D_8014DD50[sp98].unkC;
	sp9C = D_8014DD50[sp9A].unkC;

	if (alien->unk2C >= 0x3D) {
		spBE = sp88;
		spB2 = sp8E;

		func_8008741C_963CC(a2, -0xC8);

		temp_v0 = func_80081F18_90EC8(a2, 0xB, 6, &sp88, &D_802E1974_2C3DA4);
		if (temp_v0 == 2) {
			sp50 = (alien->unk6 + 0x6000) & 0xFFFF;
			sp78 = (f32)(((f64)(f32)sins(sp50) / 32768.0) * 15.0);
			func_80088E40_97DF0(a2, spAA,
				(s16)(D_8014DD50[spAA].unk0 + sp5C->unk0 + sp58->unk0),
				(s16)(D_8014DD50[spAA].unk2 + sp5C->unk2 + sp58->unk2),
				D_8014DD50[spAA].unk4 + sp5C->unk4 + sp58->unk4,
				(s32)sp78, 0xF,
				(s32)(f32)(((f64)(f32)coss(sp50) / 32768.0) * -15.0));

			sp50 = (alien->unk6 + 0x8000) & 0xFFFF;
			sp78 = (f32)(((f64)(f32)sins(sp50) / 32768.0) * 15.0);
			func_80088E40_97DF0(a2, spAC,
				(s16)(sp58->unk0 + sp5C->unk0),
				(s16)(sp58->unk2 + sp5C->unk2),
				sp58->unk4 + sp5C->unk4,
				(s32)sp78, 0xF,
				(s32)(f32)(((f64)(f32)coss(sp50) / 32768.0) * -15.0));
			return;
		}
		if (temp_v0 == 3) {
			sp50 = (alien->unk6 + 0x2000) & 0xFFFF;
			sp78 = (f32)(((f64)(f32)sins(sp50) / 32768.0) * 15.0);
			func_80088E40_97DF0(a2, spB0,
				(s16)(D_8014DD50[spB0].unk0 + sp64->unk0 + sp60->unk0),
				(s16)(D_8014DD50[spB0].unk2 + sp64->unk2 + sp60->unk2),
				D_8014DD50[spB0].unk4 + sp64->unk4 + sp60->unk4,
				(s32)sp78, 0xF,
				(s32)(f32)(((f64)(f32)coss(sp50) / 32768.0) * -15.0));

			sp50 = alien->unk6 & 0xFFFF;
			sp78 = (f32)(((f64)(f32)sins(sp50) / 32768.0) * 15.0);
			func_80088E40_97DF0(a2, sp90,
				(s16)(sp60->unk0 + sp64->unk0),
				(s16)(sp60->unk2 + sp64->unk2),
				sp60->unk4 + sp64->unk4,
				(s32)sp78, 0xF,
				(s32)(f32)(((f64)(f32)coss(sp50) / 32768.0) * -15.0));
			return;
		}
		if (temp_v0 == 5) {
			AlienSpec *spec = &alienSpecs[alien->specIndex];
			spec->unk2E = 0x64;
			spec->unk30 = 0x8C;
			func_80128428_1373D8(alien, sp68->unk0,
				(s16)(sp68->unk2 - 0xA), (s16)(sp68->unk4 + 0x28),
				&sp84, &sp80, &sp7C);
			func_800865F4_955A4(a2, 1, sp84,
				func_800B84D0_C7480((s16)sp84, (s16)sp7C) >> 8, sp7C);
			spec = &alienSpecs[alien->specIndex];
			spec->unk2E = 0x55;
			spec->unk30 = 0xD2;
			sp50 = (alien->unk6 + 0x4000) & 0xFFFF;
			sp78 = (f32)(((f64)(f32)sins(sp50) / 32768.0) * 5.0);
			func_80088E40_97DF0(a2, spBE,
				sp68->unk0, sp68->unk2, (s32)sp68->unk4,
				(s32)sp78, 5,
				(s32)(f32)(((f64)(f32)coss(sp50) / 32768.0) * -5.0));
			return;
		}
		if (temp_v0 == 6) {
			alien->unk2C = 0x3C;
			return;
		}
		return;
	}

	{
		D_8014DD50[sp9C].unkA += 0x78;
		alien->unkA += 0x4B;
		alien->unk12 = 0;

		if ((alien->unk2C >= 0xB) && ((alien->unk2C % 6) == 0) && (D_80031420_32020 & 3)) {
			s32 temp_r;
			func_80128428_1373D8(alien, sp68->unk0,
				(s16)(sp68->unk2 - 0x8000), sp68->unk4,
				&sp84, &sp80, &sp7C);
			sp78 = (f32)((f64)(f32)sins((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
			sp74 = (f32)-((f64)(f32)coss((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
			temp_r = 0xB4 - (func_800038E0_44E0() % 80);
			func_800CA5EC_D959C((s16)sp84, (s16)sp80, (s16)sp7C,
				(s8)(s32)(sp78 * 128.0f), 0, (s32)(sp74 * 128.0f),
				0x28, 0xA, 0x14, 0x32, temp_r, 0, 0x32, 0xFF);
		}

		if (alien->unk2C == 1) {
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4,
				*(u16 *)((u8 *)&D_8025668C + alien->specIndex * 0x68), 6);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D8930_2BAD60.s")
#endif

// CURRENT(23000)
#ifdef NON_MATCHING
void func_802D923C_2BB66C(u8 arg0) {
	s16 spB8;
	s16 spB2;
	s16 spAE;
	s16 spA0;
	s16 sp9E;
	s16 sp9C;
	s16 sp9A;
	s16 sp98;
	s16 sp96;
	s16 sp94;
	s16 sp92;
	s16 sp90;
	s32 sp88;
	s32 sp84;
	s32 sp80;
	f32 sp7C;
	f32 sp78;
	f32 sp74;
	f32 sp70;
	s32 sp50;
	AlienInstance *alien;
	Unk8014DD50 *sp60;
	Unk8014DD50 *sp5C;
	Unk8014DD50 *sp58;
	Unk8014DD50 *sp54;
	s32 var_v0;

	alien = &alienInstances[arg0];
	if (!(alien->unk20 & 0x600)) {
		return;
	}

	if (!(alien->unk20 & ALIEN_FLAG_UNKL)) {
		alien->unk36 = 0;
		alien->unk4B = 0;
		alien->unk2C = 0x64;
		func_80087C50_96C00(arg0);
		func_80137468_146418(arg0, 0x10);
		func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4,
			*((u16 *)((u8 *)&D_8025668C + alien->specIndex * 0x68)), 0);
		return;
	}

	sp90 = D_8014DD50[alien->unkC].unkC;
	sp98 = D_8014DD50[sp90].unkD;
	sp92 = D_8014DD50[sp90].unkC;
	sp60 = &D_8014DD50[sp98];
	sp9C = sp60->unkD;
	sp9A = sp60->unkC;
	sp5C = &D_8014DD50[sp9C];
	sp9E = sp5C->unkC;
	sp94 = sp5C->unkD;
	sp58 = &D_8014DD50[sp9E];
	spA0 = sp58->unkC;
	sp54 = &D_8014DD50[sp94];
	spAE = sp54->unkC;
	sp96 = spAE;
	spB2 = spA0;
	spB8 = sp9A;

	if (alien->unk36 < 4) {
		alien->unkA -= 0xFA;
	} else {
		s16 temp = alien->unkA + 0x96;
		if (temp > 0) {
			alien->unkA = 0;
		} else {
			alien->unkA = temp;
		}
	}

	sp70 = (f32)(((f64)(f32)coss(alien->unkA) / 32768.0) * (f64)sp60->unk4);
	sp74 = sqrtf((f32)(sp60->unk4 * sp60->unk4) - (sp70 * sp70));

	if (alien->unk4B == 0) {
		sp54 = &D_8014DD50[sp94];
		var_v0 = func_80081F18_90EC8(arg0, 9, 6, &sp90, &D_802E1D00_2C4130);
	} else {
		sp54 = &D_8014DD50[sp94];
		var_v0 = func_80081F18_90EC8(arg0, 4, 6, &sp90, &D_802E1D24_2C4154);
	}

	switch (var_v0) {
	default:
		var_v0 = alien->unk4B;
		break;
	case 0:
		var_v0 = alien->unk4B;
		if (var_v0 == 1) {
			func_80088E40_97DF0(arg0, spAE,
				(s16)(D_8014DD50[spAE].unk0 + sp54->unk0),
				(s16)(D_8014DD50[spAE].unk2 + sp54->unk2),
				D_8014DD50[spAE].unk4 + sp54->unk4,
				0, 0x14, 0);
		}
		break;
	case 3:
		var_v0 = alien->unk4B;
		if (var_v0 == 0) {
			sp50 = (alien->unk6 + 0x2000) & 0xFFFF;
			sp7C = (f32)(((f64)(f32)sins(sp50) / 32768.0) * 15.0);
			func_80088E40_97DF0(arg0, spB8,
				(s16)(D_8014DD50[spB8].unk0 + sp60->unk0),
				(s16)(s32)((f32)D_8014DD50[spB8].unk2 + sp74),
				(s32)((f32)D_8014DD50[spB8].unk4 + sp70),
				(s32)sp7C, 0xF,
				(s32)(f32)(((f64)(f32)coss(sp50) / 32768.0) * -15.0));

			sp50 = (alien->unk6 + 0x6000) & 0xFFFF;
			sp7C = (f32)(((f64)(f32)sins(sp50) / 32768.0) * 15.0);
			func_80088E40_97DF0(arg0, spB2,
				(s16)(D_8014DD50[spB2].unk0 + sp5C->unk0 + sp58->unk0),
				(s16)(s32)((f32)D_8014DD50[spB2].unk2 + (sp74 + (f32)sp58->unk2)),
				(s32)((f32)D_8014DD50[spB2].unk4 + (sp70 + (f32)sp58->unk4)),
				(s32)sp7C, 0xF,
				(s32)(f32)(((f64)(f32)coss(sp50) / 32768.0) * -15.0));
		}
		break;
	case 6:
		alien->unk36 = 0;
		alien->unk4B++;
		var_v0 = alien->unk4B;
		break;
	}

	if (((var_v0 != 0) || (alien->unk36 >= 5)) && !(D_80052A8C & 3)) {
		alien->unk6 = alien->unkE;
		func_80087C74_96C24(arg0);
		if (D_80031420_32020 & 3) {
			sp54 = &D_8014DD50[sp94];
			func_80128428_1373D8(alien,
				(s16)(D_8014DD50[spB8].unk0 + sp60->unk0),
				(s16)(s32)sp74,
				(s16)(s32)((f32)D_8014DD50[spB8].unk4 + sp70),
				&sp84, &sp88, &sp80);

			sp7C = (f32)((f64)(f32)sins(alien->unk6) / 32768.0);
			sp78 = (f32)-((f64)(f32)coss(alien->unk6) / 32768.0);
			func_800CA5EC_D959C((s16)sp84, (s16)(sp88 - 0x28), (s16)sp80,
				(s8)(s32)(sp7C * 128.0f), 0, (s32)(sp78 * 128.0f),
				0x28, 0xA, 3, 0x32,
				0xB4 - (func_800038E0_44E0() % 80), 0, 0x32, 0xFF);

			func_80128428_1373D8(alien,
				(s16)(sp58->unk0 + sp5C->unk0),
				(s16)sp88,
				(s16)(s32)((f32)sp58->unk4 + sp70),
				&sp84, &sp88, &sp80);

			sp7C = (f32)((f64)(f32)sins((alien->unk6 + 0x8000) & 0xFFFF) / 32768.0);
			sp78 = (f32)-((f64)(f32)coss((alien->unk6 + 0x8000) & 0xFFFF) / 32768.0);
			func_800CA5EC_D959C((s16)sp84, (s16)(sp88 - 0x28), (s16)sp80,
				(s8)(s32)(sp7C * 128.0f), 0, (s32)(sp78 * 128.0f),
				0x28, 0xA, 3, 0x32,
				0xB4 - (func_800038E0_44E0() % 80), 0, 0x32, 0xFF);
		}
	}

	if (alien->unk2C == 0) {
		func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4,
			*((u16 *)((u8 *)&D_8025668C + alien->specIndex * 0x68)), 6);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D923C_2BB66C.s")
#endif

// CURRENT(5)
#ifdef NON_MATCHING
void func_802D9B08_2BBF38(u8 arg0, s16 arg1, s16 arg2) {
	s16 sp2C[2];
	u8 temp;

	if (alienInstances[arg0].unk20 & 0x1000) {
		sp2C[0] = arg1;
		sp2C[1] = arg2;

		temp = func_80081F18_90EC8(arg0, 2, 0xD, sp2C, &D_802E1ED4_2C4304);
		switch (temp) {
		case 1:
			func_80137468_146418(arg0, 0x192);
			break;
		case 4:
		case 7:
		case 10:
			alienInstances[arg0].unk1E = 0;
			func_80087188_96138(arg0, 0, 0x10);
			break;
		case 13:
			alienInstances[arg0].unk20 &= ~0x1000;
			break;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D9B08_2BBF38.s")
#endif

// CURRENT(1957)
#ifdef NON_MATCHING
void func_802D9BFC_2BC02C(u8 arg0) {
	s16 sp44;
	s16 sp42;
	s32 sp3C;
	s32 sp24;
	s32 var_a2;
	s32 temp_v1;
	s32 var_a0;
	AlienInstance *alien;

	func_80137468_146418(arg0, 0x26A);
	alien = &alienInstances[arg0];
	sp44 = D_8014DD50[D_8014DD50[alien->unkC].unkC].unkD;
	sp42 = (s16)D_8014DD50[(s16)sp44].unkC;
	if (alien->unk20 & 0x08000000) {
		temp_v1 = alien->unk0 - D_80052B34->unk0;
		var_a0 = alien->unk4 - D_80052B34->unk4;
	} else {
		temp_v1 = alien->unk0 - alien->unk14;
		var_a0 = alien->unk4 - alien->unk18;
	}
	alien->unk6 = func_80003824_4424((f32)temp_v1, (f32)var_a0) + 0x8000;
	if (alien->unk47 & 1) {
		func_8008064C_8F5FC(arg0);
	} else {
		func_8008076C_8F71C(arg0);
	}
	var_a2 = func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8;
	if (var_a2 < D_80222A70) {
		sp24 = var_a2;
		func_800E24B8_F1468(arg0);
		var_a2 = sp24;
	}
	if (var_a2 <= D_80222A70) {
		var_a2 = D_80222A70;
	}
	sp24 = var_a2;
	alien->unk2 = (s16)(((f64)(f32)sins((D_80052A8C * 1500) & 0xFFFF) / 32768.0) * 20.0 + (f64)(var_a2 + alienSpecs[alien->specIndex].unk58));
	temp_v1 = func_80084E54_93E04(D_80052B34, alien);
	if (temp_v1 < 0x7D0) {
		sp3C = temp_v1;
		func_8008554C_944FC(arg0);
		var_a2 = sp3C;
	} else {
		alien->unk4E = 1;
		var_a2 = temp_v1;
	}
	if ((var_a2 >= 0x321) && (alien->unk4E != 0)) {
		alien->unk20 |= 0x100;
		alien->unk20 &= ~0x840;
		if (alien->unk20 & 0x08000000) {
			sp3C = var_a2;
			if ((func_80084FE8_93F98(arg0, 0x400) != 0) && (var_a2 < 0xBB8) && (func_800871CC_9617C(arg0, 1, 0x28) != 0)) {
				if (D_80052B34->unk1A == 0) {
					alien->unk1E = 0x14;
				} else {
					alien->unk1E = 0xA;
				}
			}
		} else {
			sp3C = var_a2;
			if ((func_800850DC_9408C(arg0, 0x400) != 0) && (var_a2 < 0xBB8)) {
				func_80087188_96138(arg0, 1, 0x14);
			}
		}
	} else if ((var_a2 >= 0x191) || (alien->unk4E == 0)) {
		alien->unk20 |= 0x800;
		alien->unk20 &= ~0x140;
		if (!(alien->unk20 & 0x1000) && (var_a2 < 0x3E8) && (alien->unk4E != 0)) {
			alien->unk20 |= 0x1000;
			alien->unk36 = 0;
		}
	} else {
		alien->unk20 |= 0x140;
		alien->unk20 &= ~0x800;
		if (!(alien->unk20 & 0x1000)) {
			alien->unk20 |= 0x1000;
			alien->unk36 = 0;
		}
	}
	func_802D9B08_2BBF38(arg0, sp44, sp42);
	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D9BFC_2BC02C.s")
#endif

void func_802D9FB4_2BC3E4(u8 arg0) {
	func_80137468_146418(arg0, 0x26A);
	func_8008735C_9630C(arg0);
}

#ifdef NON_MATCHING
void func_802D9FE4_2BC414(u8 arg0) {
	s16 sp6A;
	s32 sp5C;
	f32 sp4C;
	s32 sp44;
	s32 sp3C;
	Unk8014DD50 *sp38;
	AlienSpec *sp34;
	s32 temp_a2;
	AlienInstance *temp_s0;
	s32 var_a1;

	temp_a2 = arg0;
	temp_s0 = &alienInstances[temp_a2];
	if (temp_s0->unk20 & 0x600) {
		sp3C = temp_a2;
		func_80137468_146418(temp_a2, 0x193);
		sp5C = temp_s0->specIndex;
		sp38 = &D_8014DD50[D_8014DD50[D_8014DD50[temp_s0->unkC].unkC].unkD];
		sp6A = sp38->unkC;
		var_a1 = func_800B84D0_C7480(temp_s0->unk0, temp_s0->unk4) >> 8;
		if (D_80222A70 >= var_a1) {
			var_a1 = D_80222A70;
		}
		sp44 = var_a1;
		sp34 = &alienSpecs[sp5C];
		temp_s0->unk2 = (s32)(((f64)(f32)sins((D_80052A8C * 1500) & 0xFFFF) / 32768.0) * 20.0 + (f64)(var_a1 + sp34->unk58));
		if (!(temp_s0->unk20 & 0x100000)) {
			temp_s0->unk2C = 100;
			func_80087C50_96C00(temp_a2);
			func_800DF848_EE7F8(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, sp34->unkC, 6);
			func_80137468_146418(sp3C, 0x10);
			return;
		}
		func_80087C74_96C24(temp_a2);
		func_80089200_981B0(temp_a2, 4, 100);
		if (temp_s0->unk47 & 1) {
			func_8008064C_8F5FC(temp_a2);
		} else {
			func_8008076C_8F71C(temp_a2);
		}
		temp_s0->unk6 = temp_s0->unk6 - temp_s0->unk2C * 150 + 0x3A98;
		if (temp_s0->unk2C == 50) {
			sp3C = temp_s0->unk6 & 0xFFFF;
			sp4C = (f32)(((f64)(f32)sins(sp3C) / 32768.0) * 15.0);
			func_80088E40_97DF0(temp_a2, sp6A,
				(s16)(D_8014DD50[sp6A].unk0 + sp38->unk0),
				(s16)(D_8014DD50[sp6A].unk2 + sp38->unk2),
				D_8014DD50[sp6A].unk4 + sp38->unk4,
				(s32)sp4C, 0xF,
				(s32)((f32)(((f64)(f32)coss(sp3C) / 32768.0) * -15.0)));
			temp_s0->unk38 = func_800C3BD8_D2B88(temp_s0->unk0, (s16)(temp_s0->unk2 + 0x46), temp_s0->unk4, sp34->unkC, (u16)temp_s0->unk2C, (u8)0xF0, (u8)0x78, (u8)0);
		}
		if (temp_s0->unk2C < 50) {
			if (temp_s0->unk38 != -3) {
				func_800C3D88_D2D38(temp_s0->unk0, (s16)(sp34->unk38 / 2 + temp_s0->unk2), temp_s0->unk4, temp_s0->unk38);
			}
			if (func_800038E0_44E0() % 10 == 0) {
				func_800DF848_EE7F8(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, (u16)(sp34->unkC / 2), 6);
			}
		}
		if (temp_s0->unk2C == 1) {
			func_800DF848_EE7F8(temp_s0->unk0, temp_s0->unk2, temp_s0->unk4, (u16)((f64)(s16)sp34->unkC * 1.5), 6);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D9FE4_2BC414.s")
#endif

// CURRENT(385)
#ifdef NON_MATCHING
void func_802DA4CC_2BC8FC(u8 arg0) {
	AlienInstance *alien;
	s32 squaredDist;
	s32 dx, dz;
	s32 pad1;
	s32 pad2;
	s16 sp26;
	s16 temp_a1;
	s16 sp22;
	s8 index1;

	alien = &alienInstances[arg0];

	index1 = D_8014DD50[alien->unkC].unkC;
	sp26 = D_8014DD50[D_8014DD50[index1].unkD].unkC;
	sp22 = D_8014DD50[D_8014DD50[D_8014DD50[index1].unkD].unkD].unkC;

	func_8008064C_8F5FC(arg0);
	func_80080A54_8FA04(arg0, D_80052B34->unk0, D_80052B34->unk4);

	dx = alien->unk0 - alien->unk14;
	dz = alien->unk4 - alien->unk18;

	if (alien->unk20 & ALIEN_FLAG_UNKD) {
		alien->unk2C--;
		squaredDist = dx * dx + dz * dz;
		if (((f64)squaredDist > D_802E3040_2C5470) || !func_80084FE8_93F98(arg0, 0x1000)) {
			alien->unk20 &= ~ALIEN_FLAG_UNKD;
		} else if (alien->unk2C == 0) {
			alien->unk20 ^= ALIEN_FLAG_UNKH;
			alien->unk2C = 0x32;
		}
	} else {
		squaredDist = dx * dx + dz * dz;
		if ((squaredDist >= 0x57E41) || (alien->unk47 & 1)) {
			alien->unk20 |= ALIEN_FLAG_TARGET_PT;
			alien->unk20 &= ~0x1840;
		} else if ((squaredDist >= 0x31705) && func_80084FE8_93F98(arg0, 0x1000)) {
			alien->unk20 |= 0x41800;
			alien->unk20 &= ~0x140;
			alien->unk2C = 0x32;
		} else {
			alien->unk20 |= 0x140;
			alien->unk20 &= ~0x1800;
		}
	}

	if (!(alien->unk20 & ALIEN_FLAG_UNKG)) {
		if (func_80084FE8_93F98(arg0, 0x1000) && (squaredDist < 0xAFC80)) {
			if (func_800871CC_9617C(arg0, 0, 0x14)) {
				alien->unk4B = 0;
				alien->unk20 |= ALIEN_FLAG_UNKG;
				alien->unk1E = 0x14;
			}
		}
	}

	if (alien->unk20 & ALIEN_FLAG_UNKG) {
		if (alien->unk20 & 0x04000000) {
			temp_a1 = sp22;
		} else {
			temp_a1 = sp26;
		}
		func_800A3D00_B2CB0(arg0, temp_a1, 2, &D_802E1EE0_2C4310);
	}

	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DA4CC_2BC8FC.s")
#endif

void func_802DA7CC_2BCBFC(u8 arg0) {
	u8 specIndex = alienInstances[arg0].specIndex;

	if (alienInstances[arg0].unk20 & 0x100000) {
		return;
	}
	func_800DF848_EE7F8(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, *(u16 *)((u8 *)&D_8025668C + specIndex * 0x68), 0);
	alienInstances[arg0].unk2C = 0;
}

void func_802DA854_2BCC84(u8 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s16 sp28[3];
	s32 temp;

	sp28[0] = arg1;
	sp28[1] = arg2;
	sp28[2] = arg3;
	if (alienInstances[arg0].unk4B == 0) {
		temp = func_80081F18_90EC8(arg0, 3, 5, sp28, &D_802E2040_2C4470);
	} else {
		temp = func_80081F18_90EC8(arg0, 3, 5, sp28, &D_802E2190_2C45C0);
	}
	if ((u8)temp == 5) {
		alienInstances[arg0].unk36 = 0;
	}
}

void func_802DA910_2BCD40(u8 arg0) {
	u8 specIndex;
	s32 mult;
	s16 speedLimit;

	specIndex = alienInstances[arg0].specIndex;
	mult = 1;
	if (!(alienInstances[arg0].unk20 & 0x600)) {
		mult = 4;
	}
	func_800808F0_8F8A0(arg0, &alienInstances[arg0].unkE);
	if (alienInstances[arg0].unk4B == 0) {
		speedLimit = alienSpecs[specIndex].unk40 >> 1;
	} else {
		speedLimit = alienSpecs[specIndex].unk40;
	}
	if (alienInstances[arg0].unk12 < speedLimit) {
		alienInstances[arg0].unk12 += alienSpecs[specIndex].unk3E * mult;
	} else {
		alienInstances[arg0].unk12 -= alienSpecs[specIndex].unk3E * mult;
	}
}

// CURRENT(2907)
#ifdef NON_MATCHING
void func_802DAA20_2BCE50(u8 arg0) {
	AlienInstance *alien;
	s16 a1;
	s8 a2;
	s8 a3;
	s32 pad0;
	s32 pad1;
	s32 dx;
	s32 dz;
	s32 ret;

	alien = &alienInstances[arg0];
	a1 = alien->unkC;
	a2 = D_8014DD50[a1].unkC;
	a3 = D_8014DD50[a2].unkC;

	if (D_80222A70 - 0x28 < alien->unk2) {
		alien->unk2 = D_80222A70 - 0x28;
	}

	func_802DA854_2BCC84(arg0, a1, a2, a3);
	func_802DA910_2BCD40(arg0);

	if (D_80222A70 < D_80052B34->unk2) {
		alien->unk20 &= 0xF7FFFFFF;
	} else {
		alien->unk20 |= 0x08000100;
		dx = alien->unk0 - alien->unk14;
		dz = alien->unk4 - alien->unk18;

		if (!(alien->unk47 & 1)) {
			alien->unk20 &= ~0x2000;
			if (SQ(dx) + SQ(dz) < 0x57E40) {
				alien->unk20 |= 0x2000;
				alien->unk34 = 100;
				alien->unk47 |= 1;
				alien->unk1E = 0;
			}
		} else if (alien->unk20 & 0x2000) {
			if (func_80084FE8_93F98(arg0, 0x400)) {
				func_80087188_96138(arg0, 0, 0x20);
				func_80137468_146418(arg0, 0x25B);
			}
		}
	}

	if (alien->unk34 > 0 && alien->unk34 < 70) {
		if (alien->unk36 == 0 || alien->unk4B == 1) {
			alien->unk4B = 1;
		} else {
			alien->unk4B = 0;
		}
	} else if (alien->unk36 == 0) {
		alien->unk4B = 0;
	}

	ret = func_8008E524_9D4D4(arg0, 200, 4);
	if (ret >= 201) {
		func_8008EB20_5EFD0(arg0, ret, 0x640);
	} else {
		func_8008EB20_5EFD0(arg0, ret, 0x320);
	}

	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DAA20_2BCE50.s")
#endif

void func_802DACA0_2BD0D0(u8 arg0) {
	s32 limit;

	if (alienInstances[arg0].unk2 > (D_80222A70 - 0x28)) {
		alienInstances[arg0].unk2 = D_80222A70 - 0x28;
	}
	func_800873A8_96358(arg0);
}

// CURRENT(674)
#ifdef NON_MATCHING
void func_802DAD00_2BD130(u8 arg0) {
	AlienInstance *alien;
	s32 sp3C, sp40, sp44;
	s16 sp4A;
	s16 sp3A;

	alien = &alienInstances[arg0];
	sp3A = alien->unk25;
	sp4A = D_8014DD50[alien->unkC].unkC;

	if (!(alien->unk20 & 0x100000)) {
		alien->unk2C = 0x3C;

		func_80128428_1373D8(alien, D_8014DD50[sp4A].unk0, D_8014DD50[sp4A].unk2,
							 D_8014DD50[sp4A].unk4, &sp44, &sp40, &sp3C);

		func_800DF848_EE7F8(((s16 *)&sp44)[1], ((s16 *)&sp40)[1], ((s16 *)&sp3C)[1],
							*(u16 *)((u8 *)D_8025668C + alien->specIndex * 0x68), 0);
		func_80088E10_97DC0(sp4A);
		alien->unk12 >>= 3;
	} else {
		s16 sp4E;

		func_8011E6FC_12D6AC(alien->unk0, alien->unk4, &sp4E);
		alien->unk2 -= 2;
		alien->unkA += 0xDC;
		alien->unk8 += 0x8C;

		if (alien->unk2C == 1) {
			func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4,
								*(u16 *)((u8 *)D_8025668C + alien->specIndex * 0x68), 0);

			if (sp3A != 0xFF) {
				if (alienInstances[sp3A].specIndex == 0x1A) {
					alienInstances[sp3A].unk24 -= 1;
				}
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DAD00_2BD130.s")
#endif

// CURRENT(13157)
#ifdef NON_MATCHING
void func_802DAEBC_2BD2EC(u8 arg0) {
	AlienInstance *alien;
	s32 dx;
	s32 dz;
	s32 sp38;
	s32 distSq;
	s16 sp34;
	s16 sp36;
	s16 sp30;
	u8 sp4E;
	s8 sp4F;
	s8 sp4C;
	s8 sp49;

	u8 specIdx = alienInstances[arg0].specIndex;
	alien = &alienInstances[arg0];
	sp30 = specIdx;
	sp4E = (u8)alien->unkC;
	sp4F = D_8014DD50[alien->unkC & 0xFF].unkC;
	sp4C = D_8014DD50[D_8014DD50[D_8014DD50[alien->unkC & 0xFF].unkC & 0xFF].unkD].unkC;
	sp49 = D_8014DD50[D_8014DD50[D_8014DD50[D_8014DD50[alien->unkC & 0xFF].unkC & 0xFF].unkD].unkD].unkC;
	dx = alien->unk0 - alien->unk14;
	dz = alien->unk4 - alien->unk18;
	sp38 = 0x190;

	if (!(alien->unk20 & 0x4000)) {
		distSq = dx * dx + dz * dz;
		if (distSq >= 0x127691 && distSq < 0x1312D0) {
			if (func_80084FE8_93F98(arg0, 0x400)) {
				if (D_80052B34->unk2 >= (s32)D_80222A70) {
					if (*(s16 *)((u8 *)&D_802566BA + alien->specIndex * 0x68) / 4 < alien->hitPoints) {
						if (func_800038E0_44E0() & 1) {
							alien->unk3C = 0x78;
							alien->unk36 = 0;
							alien->unk20 |= 0x4000;
							alien->unk20 |= 0x2000;
							alien->unk1E = 0;
						}
					}
				}
			}
		}
		if (distSq < 0x57E40) {
			if (!(alien->unk20 & 0x10)) {
				if (alien->unk12 > 0) {
					alien->unk20 |= 0x10;
					alien->unk20 |= 0x2000;
					alien->unk26 = 0x64;
					alien->unk1E = 0;
				}
			}
		}
	}

	if (alien->unk20 & 0x2000) {
		if (func_80084FE8_93F98(arg0, 0x800)) {
			if (alien->unk20 & 0x4000) {
				if (alien->unk3C < 0x78) {
					sp34 = (u8)sp4C;
					sp36 = (u8)sp49;
					if (func_80081F18_90EC8(arg0, 2, 2, &sp34, &D_802E21E0_2C4610) == 2) {
						alien->unk36 = 0;
					}
					func_80087188_96138(arg0, 0, 0x20);
				}
			} else {
				if (!(alien->unk20 & 0x8000)) {
					if (D_80052B34->unk2 >= (s32)D_80222A70) {
						if (func_80087188_96138(arg0, 1, 0x20)) {
							alien->unk36 = 0;
							alien->unk20 |= 0x8000;
						}
					}
				}
				if (alien->unk20 & 0x8000) {
					sp34 = (u8)sp4C;
					sp36 = (u8)sp49;
					if (func_80081F18_90EC8(arg0, 2, 2, &sp34, &D_802E2228_2C4658) == 2) {
						alien->unk20 &= ~0xA000;
					}
					alien->unk1E = 0x14;
				}
			}
		}
		sp38 = 0x15E;
	}

	if (alien->unk20 & 0x4000) {
		func_80086164_95114(arg0, sp4E);
		alien->unkA = D_8014DD50[alien->unkC & 0xFF].unkA;
		alien->unk12 -= 0xA0;
		if (alien->unk12 < 0) {
			alien->unk12 = 0;
		}
		if (alien->unk3C == 0 || (u32)(dx * dx + dz * dz) < 0x57E40) {
			alien->unk20 &= ~0x6000;
		} else if (*(s16 *)((u8 *)&D_802566BA + alien->specIndex * 0x68) / 4 >= alien->hitPoints) {
			alien->unk20 &= ~0x6000;
		}
		sp38 = 0xC8;
	}

	func_800A5554_B4504(arg0, func_8008E524_9D4D4(arg0, sp38, 4), 0x3D4CCCCD, (u8)sp4F);

	if (alien->unk3C != 0) {
		alien->unk3C--;
	}
	if (alien->unk26 != 0) {
		alien->unk26--;
	} else {
		alien->unk20 &= ~0x10;
	}
	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DAEBC_2BD2EC.s")
#endif

void func_802DB390_2BD7C0(u8 arg0) {
	AlienInstance *alien;

	func_80137468_146418(arg0, 0x1C);
	func_8008735C_9630C(arg0);
	alien = &alienInstances[arg0];
	alien->unk20 = (s32)(alien->unk20 & ~0x10);
	alien->unk6 = (s16)alien->unkE;
}

void func_802DB3F0_2BD820(u8 arg0) {
	AlienInstance *alien;

	alien = &alienInstances[arg0];
	if (!(alien->unk20 & 0x2000)) {
		if (func_8011D2DC_12C28C(alien->unk0, alien->unk4) != -1) {
			alien->unk20 |= 0x1000;
		}
	}
	if (func_80084E54_93E04(D_80052B34, alien) < 0x5DC) {
		func_800871CC_9617C(arg0, 0, 0);
	}
	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
	if (alien->unk2C != 0) {
		alien->unk2C--;
	} else {
		s32 temp;

		alien->unk2C = func_800038E0_44E0() % 8;
		temp = func_800038E0_44E0();
		func_800CC7B0_DB760(0x50,
			*(s16 *)((u8 *)&D_8025668C + alien->specIndex * 0x68),
			(u8)((temp % 6) + 6),
			alien->unk0,
			alien->unk2 + 0x28,
			alien->unk4);
		if (func_800038E0_44E0() % 10 != 0) {
			func_801371B8_146168((s32)alien, 0x13F, alien->unk0, alien->unk2, alien->unk4, -1.0f);
		}
	}
	if (alien->unk20 & 0x80000000) {
		s32 colorIdx;
		u8 *colorTable;

		colorIdx = func_800038E0_44E0() % 4;
		colorTable = (u8 *)&D_802E2230_2C4660 + colorIdx * 3;
		func_800CA5EC_D959C(alien->unk0, (s16)(alien->unk2 + 0x80), alien->unk4,
			0, 0x7F, 0, 0x5A, 0xC, 0xA, 0xFF,
			colorTable[0], colorTable[1], colorTable[2], 0x96);
	}
}

// CURRENT(733)
#ifdef NON_MATCHING
void func_802DB620_2BDA50(u8 arg0) {
	s16 pad;
	s16 sp5C;
	s16 sp5A;
	s16 sp58;
	s16 sp56;

	if (!(alienInstances[arg0].unk20 & 0x100000) && (alienInstances[arg0].unk20 & 0x600)) {
		func_801371B8_146168((s32)&alienInstances[arg0], 0xEB, alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, -1.0f);
		alienInstances[arg0].unk2C = 0x50;
		func_800D05A8_DF558(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0x7D0,
						   D_802E2230_2C4660[0], D_802E2230_2C4660[1], D_802E2230_2C4660[2]);
		return;
	}

	if ((alienInstances[arg0].unk2C % ((func_800038E0_44E0() % 10) + 4)) == 0) {
		sp5C = func_800038E0_44E0() % 4;
		sp5A = ((func_800038E0_44E0() % 90) + alienInstances[arg0].unk0) - 0x2D;
		sp58 = (func_800038E0_44E0() % 160) + alienInstances[arg0].unk2;
		sp56 = ((func_800038E0_44E0() % 90) + alienInstances[arg0].unk4) - 0x2D;
		func_800D05A8_DF558(sp5A, sp58, sp56, ((func_800038E0_44E0() % 400) + 0x64) & 0xFFFF,
						   D_802E2230_2C4660[sp5C * 3], D_802E2230_2C4660[sp5C * 3 + 1], D_802E2230_2C4660[sp5C * 3 + 2]);
		func_800CA5EC_D959C(sp5A, sp58, sp56, 0, 0x7F, 0, 0x64, 0xC, 0x8, 0xFF,
						   D_802E2230_2C4660[sp5C * 3], D_802E2230_2C4660[sp5C * 3 + 1], D_802E2230_2C4660[sp5C * 3 + 2], 0x96);
	}
	if (alienInstances[arg0].unk2C == 1) {
		func_801371B8_146168((s32)&alienInstances[arg0], 0xEB, alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, -1.0f);
		func_800D05A8_DF558(alienInstances[arg0].unk0, alienInstances[arg0].unk2, alienInstances[arg0].unk4, 0x7D0,
						   D_802E2230_2C4660[0], D_802E2230_2C4660[1], D_802E2230_2C4660[2]);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DB620_2BDA50.s")
#endif

// CURRENT(9494)
#ifdef NON_MATCHING
void func_802DB8D8_2BDD08(u8 arg0, s32 arg1, u8 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7, f32 arg8) {
	s32 sp64;
	u8 sp63;
	s32 sp54;
	u16 sp4E;
	u16 sp4C;
	s32 sp48;
	s32 sp44;
	s16 sp40;
	s16 sp42;
	s32 tempV1;
	AlienInstance *alien;
	Unk8014DD50 *t0;

	alien = &alienInstances[arg0];
	t0 = &D_8014DD50[arg3];
	sp48 = 0;
	sp44 = 0;
	sp64 = alien->unk48;
	sp63 = alien->specIndex;
	sp4E = *(u16 *) &t0->unkA;
	sp4C = *(u16 *) &t0->unk8;

	func_80137468_146418(arg0, 0x1E);

	sp40 = coss(sp4C);
	tempV1 = coss(sp4E);

	alien->unk10 = (s16) (s32) ((f64) alien->unk10 + ((f64) sp64 * ((f64) (f32) tempV1 / 32768.0) * ((f64) (f32) sp40 / 32768.0)));

	sp42 = sins(sp4E);
	tempV1 = coss(sp4C);

	sp54 = (s32) (((f64) (f32) tempV1 / 32768.0) * ((f64) sp64 * ((f64) (f32) sp42 / 32768.0)));

	sp42 = sins(sp4C);
	tempV1 = coss(sp4E);

	tempV1 = (s32) (((f64) (f32) tempV1 / 32768.0) * ((f64) sp64 * ((f64) (f32) sp42 / 32768.0)));

	if (sp54 != 0) {
		func_801022F4_1112A4((VehicleInstance *) alien, alien->unk6, (s16) sp54);
	}
	if (tempV1 != 0) {
		func_801022F4_1112A4((VehicleInstance *) alien, (s16) (alien->unk6 + 0x4000), (s16) tempV1);
	}

	alien->unk48 = (s16) (s32) ((f64) alien->unk48 * D_802E3048_2C5478);
	alien->unk12 = (s16) (s32) ((f32) alien->unk12 * (1.0f - arg8));
	tempV1 = func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8;
	if (tempV1 < D_80222A70) {
		tempV1 = D_80222A70;
	}
	if ((alien->unk10 + alien->unk2) < (arg1 + tempV1)) {
		alien->unk48 = (s16) (alien->unk48 + alienSpecs[sp63].unk3E);
	} else {
		alien->unk48 = (s16) (alien->unk48 - alienSpecs[sp63].unk3E);
	}

	switch (arg2) {
	case 0:
		sp44 = 1;
		sp48 = 1;
		break;
	case 1:
		sp48 = 1;
		if ((s16) D_8014DD50[arg4].unkA < arg5) {
			D_8014DD50[arg4].unkA = (u16) (D_8014DD50[arg4].unkA + 0x190);
		}
		if ((s16) t0->unkA < arg5) {
			t0->unkA = (u16) (t0->unkA + 0x190);
		}
		break;
	case 2:
		sp48 = 1;
		if (arg6 < (s16) D_8014DD50[arg4].unkA) {
			D_8014DD50[arg4].unkA = (u16) (D_8014DD50[arg4].unkA - 0x190);
		}
		if (arg6 < (s16) t0->unkA) {
			t0->unkA = (u16) (t0->unkA - 0x190);
		}
		break;
	case 3:
		sp44 = 1;
		if ((s16) D_8014DD50[arg4].unk8 < arg7) {
			D_8014DD50[arg4].unk8 = (u16) (D_8014DD50[arg4].unk8 + 0x190);
			t0->unk8 = (u16) (t0->unk8 + 0x190);
		}
		break;
	}

	if (sp44 != 0) {
		if ((s16) D_8014DD50[arg4].unkA < 0) {
			D_8014DD50[arg4].unkA = (u16) (D_8014DD50[arg4].unkA + 0x190);
		} else if ((s16) D_8014DD50[arg4].unkA > 0) {
			D_8014DD50[arg4].unkA = (u16) (D_8014DD50[arg4].unkA - 0x190);
		}
		if ((s16) t0->unkA < 0) {
			t0->unkA = (u16) (t0->unkA + 0x190);
		} else if ((s16) t0->unkA > 0) {
			t0->unkA = (u16) (t0->unkA - 0x190);
		}
	}

	if (sp48 != 0) {
		if ((s16) D_8014DD50[arg4].unk8 < 0) {
			D_8014DD50[arg4].unk8 = (u16) (D_8014DD50[arg4].unk8 + 0x190);
			t0->unk8 = (u16) (t0->unk8 + 0x190);
		} else if ((s16) D_8014DD50[arg4].unk8 > 0) {
			D_8014DD50[arg4].unk8 = (u16) (D_8014DD50[arg4].unk8 - 0x190);
			t0->unk8 = (u16) (t0->unk8 - 0x190);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DB8D8_2BDD08.s")
#endif

void func_802DBE28_2BE258(u8 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s16 sp2C[1];

	if (alienInstances[arg0].unk20 & 0x1000) {
		s32 var_v0;

		if (alienInstances[arg0].unk20 & 0x04000000) {
			sp2C[0] = arg2;
			var_v0 = func_80081F18_90EC8(arg0, 1, 2, sp2C, &D_802E225C_2C468C);
		} else {
			sp2C[0] = arg3;
			var_v0 = func_80081F18_90EC8(arg0, 1, 2, sp2C, &D_802E2280_2C46B0);
		}
		if ((var_v0 & 0xFF) == 2) {
			alienInstances[arg0].unk20 &= ~0x1000;
		}
	} else if (alienInstances[arg0].unk20 & 0x2000) {
		sp2C[0] = arg1;
		if ((func_80081F18_90EC8(arg0, 1, 2, sp2C, &D_802E22A4_2C46D4) & 0xFF) == 2) {
			alienInstances[arg0].unk20 &= ~0x2000;
		}
	}
}

// CURRENT(9826)
#ifdef NON_MATCHING
void func_802DBF54_2BE384(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];
	s16 sp94;
	s16 sp8E;
	s16 sp92;
	s16 sp90;
	s16 sp8C;
	s16 sp88;
	s16 sp8A;
	s16 sp5E;
	s16 sp60;
	s32 sp4C, sp50, sp54;
	s16 sp58, sp5A, sp5C;
	s32 sp64, sp68, sp6C;
	s32 sp78;
	s32 pad[2];
	s32 var_t0;
	u8 var_a2;

	sp5E = alien->specIndex;
	sp94 = D_8014DD50[alien->unkC].unkC;
	sp8E = D_8014DD50[sp94].unkD;
	sp92 = D_8014DD50[sp8E].unkD;
	sp88 = D_8014DD50[sp92].unkD;
	sp8A = D_8014DD50[sp88].unkD;
	sp8C = D_8014DD50[sp8E].unkC;
	sp90 = D_8014DD50[sp92].unkC;

	sp60 = func_800860CC_9507C(alien->unk0, D_8014DD50[sp94].unk2 + alien->unk2, alien->unk4);
	D_8014DD50[sp8E].unkA = func_80085A9C_94A4C(D_8014DD50[sp8E].unkA, sp60, 0x2000, -0x2000, 0x400);
	D_8014DD50[sp92].unkA = func_80085A9C_94A4C(D_8014DD50[sp92].unkA, sp60, 0x2000, -0x2000, 0x400);

	func_800A99B8_B8968(arg0);
	func_80086164_95114(arg0, sp92);
	func_80086164_95114(arg0, sp8E);

	sp78 = sqrtf((alien->unk0 - (s16)D_80052B34->unk0) * (alien->unk0 - (s16)D_80052B34->unk0) + (alien->unk4 - (s16)D_80052B34->unk4) * (alien->unk4 - (s16)D_80052B34->unk4));

	if (func_80084FE8_93F98(arg0, 0x1000) && sp78 < 0x7D0 && !(alien->unk20 & 0x3000)) {
		if (sp78 < 0x258) {
			if (func_800871CC_9617C(arg0, 1, 0x32)) {
				alien->unk1E = 0xA;
				alien->unk36 = 0;
				alien->unk20 |= 0x2000;
			}
		} else {
			sp58 = 0x64;
			sp5A = -0x2B;
			sp5C = 0xB9;
			func_800A931C_B82CC((s8)sp92, &sp58, &sp4C);
			if (alien->unk20 & 0x04000000) {
				alienSpecs[alien->specIndex].unk20 = (s16)(sp4C + 0xD);
				alienSpecs[alien->specIndex].unk22 = (s16)(sp50 + 0x37);
				alienSpecs[alien->specIndex].unk24 = (s16)(sp54 + 1);
			} else {
				alienSpecs[alien->specIndex].unk20 = (s16)(sp4C - 0xD);
				alienSpecs[alien->specIndex].unk22 = (s16)(sp50 + 0x35);
				alienSpecs[alien->specIndex].unk24 = (s16)(sp54 + 1);
			}

			if (func_800871CC_9617C(arg0, 0, 0x64)) {
				alien->unk36 = 0;
				alien->unk20 |= 0x1000;
				if (D_80052B34->unk20 & 2) {
					alien->unk1E = 5;
				} else {
					alien->unk1E = 0xF;
				}
			}
		}
	}

	func_802DBE28_2BE258(arg0, sp94, sp8C, sp90);

	if (!(D_80052A8C & 3)) {
		if (alien->unk3C != -5) {
			func_80128428_1373D8(alien, D_8014DD50[sp8A].unk0, D_8014DD50[sp8A].unk2, D_8014DD50[sp8A].unk4, &sp6C, &sp68, &sp64);
			if ((func_800B84D0_C7480((s16)sp6C, (s16)sp64) >> 8) < D_80222A70) {
				var_t0 = D_80222A70;
			} else {
				var_t0 = func_800B84D0_C7480((s16)sp6C, (s16)sp64) >> 8;
			}
			sp68 = var_t0;
			func_800CD2E8_DC298((s16)sp6C, (s16)var_t0, (s16)sp64, (u8)alien->unk3C);
		}

		if (alien->unk3D != -5) {
			func_80128428_1373D8(alien, D_8014DD50[sp88].unk0, D_8014DD50[sp88].unk2, D_8014DD50[sp88].unk4, &sp6C, &sp68, &sp64);
			if ((func_800B84D0_C7480((s16)sp6C, (s16)sp64) >> 8) < D_80222A70) {
				var_t0 = D_80222A70;
			} else {
				var_t0 = func_800B84D0_C7480((s16)sp6C, (s16)sp64) >> 8;
			}
			sp68 = var_t0;
			func_800CD2E8_DC298((s16)sp6C, (s16)var_t0, (s16)sp64, (u8)alien->unk3D);
		}
	}

	func_8008554C_944FC(arg0);

	if (func_80084FE8_93F98(arg0, 0x2000)) {
		if (alien->unk4E == 0) {
			var_a2 = 3;
		} else if (sp78 < 0x320) {
			var_a2 = 2;
		} else if (sp78 >= 0x3E9) {
			var_a2 = 1;
		} else {
			var_a2 = 3;
		}
	} else {
		var_a2 = 0;
	}
	alien->unk26 = var_a2;

	func_802DB8D8_2BDD08(arg0, 0x12C, var_a2, sp88, sp8A, 0x1F40, -0x1388, 0x9C4, D_802E3050_2C5480);

	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DBF54_2BE384.s")
#endif

void func_802DC4A0_2BE8D0(u8 arg0) {
	func_80137468_146418(arg0, 0x1E);
	func_8008735C_9630C(arg0);
}

// CURRENT(4162)
#ifdef NON_MATCHING
void func_802DC4D0_2BE900(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];
	Unk8014DD50 *v1;
	Unk8014DD50 *t1;
	Unk8014DD50 *v0;
	s16 sp90;
	s16 sp8C;
	s16 sp88;
	s32 pad4;
	s32 pad5;
	s32 pad6;
	s32 pad7;
	s32 sp84;
	s32 sp80;
	s32 sp7C;
	f32 sp58;
	f32 sp54;
	s16 sp4E;
	s32 sp44;
	s8 a;
	s8 b;
	s8 t2;

	a = D_8014DD50[alien->unkC].unkC;
	b = D_8014DD50[a].unkD;
	v1 = &D_8014DD50[b];
	sp8C = (s16)v1->unkC;
	t1 = &D_8014DD50[v1->unkD];
	sp88 = t1->unkD;
	sp90 = t1->unkC;
	t2 = D_8014DD50[sp88].unkD;

	if (!(alien->unk20 & ALIEN_FLAG_UNKJ)) {
		s16 tempA0;

		v0 = &D_8014DD50[sp8C];

		func_80128428_1373D8(alien, (s16)(v0->unk0 + v1->unk0),
			(s16)(v0->unk2 + v1->unk2),
			(s16)(v0->unk4 + v1->unk4), &sp84, &sp80, &sp7C);
		func_800DF848_EE7F8((s16)sp84, (s16)sp80, (s16)sp7C, 0x50, 0);

		tempA0 = (alien->unk6 + 0x8000) & 0xFFFF;
		sp44 = tempA0;
		sp58 = (f32)(((f64)(f32)sins(tempA0) / 32768.0) * 15.0);
		sp54 = (f32)(((f64)(f32)coss(tempA0) / 32768.0) * -15.0);
		sp4E = func_800C7924_D68D4((s16)sp84, (s16)sp80, (s16)sp7C, 0x40, -8,
			(s32)*(u16 *)((u8 *)&D_8025668C + alien->specIndex * 0x68),
			func_8008916C_9811C(arg0, sp8C), 1);
		func_800C80F0_D70A0((0x4000 - alien->unk6) & 0xFFFF, 0, 0, sp4E);
		func_800C8184_D7134((s8)(s32)sp58, 0xF, (s8)(s32)sp54, sp4E);
		func_80088E10_97DC0(sp8C);

		v0 = &D_8014DD50[sp90];
		func_80128428_1373D8(alien, (s16)(v0->unk0 + t1->unk0),
			(s16)(v0->unk2 + t1->unk2),
			(s16)(v0->unk4 + t1->unk4), &sp84, &sp80, &sp7C);
		func_800DF848_EE7F8((s16)sp84, (s16)sp80, (s16)sp7C, 0x50, 0);

		tempA0 = alien->unk6 & 0xFFFF;
		sp44 = tempA0;
		sp58 = (f32)(((f64)(f32)sins(tempA0) / 32768.0) * 15.0);
		sp54 = (f32)(((f64)(f32)coss(tempA0) / 32768.0) * -15.0);
		sp4E = func_800C7924_D68D4((s16)sp84, (s16)sp80, (s16)sp7C, 0x40, -8,
			(s32)*(u16 *)((u8 *)&D_8025668C + alien->specIndex * 0x68),
			func_8008916C_9811C(arg0, sp90), 1);
		func_800C80F0_D70A0((0x4000 - alien->unk6) & 0xFFFF, 0, 0, sp4E);
		func_800C8184_D7134((s8)(s32)sp58, 0xF, (s8)(s32)sp54, sp4E);
		func_80088E10_97DC0(sp90);
		alien->unk2C = 0x28;
		return;
	}

	func_802DB8D8_2BDD08(arg0, 0x96, 0, sp88,
		t2, 0x1F40, -0x1388, 0x9C4, D_802E3054_2C5484);

	if (alien->unk2C == 1) {
		if (*(s32 *)((u8 *)&D_802566D4 + alien->specIndex * 0x68) & 0x02000000) {
			if (alien->unk3C != 0xFB) {
				func_800CD390_DC340(alien->unk3C);
			}
			if (alien->unk3D != 0xFB) {
				func_800CD390_DC340(alien->unk3D);
			}
		}
		func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4,
			*(u16 *)((u8 *)&D_8025668C + alien->specIndex * 0x68), 6);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DC4D0_2BE900.s")
#endif

// CURRENT(4753)
#ifdef NON_MATCHING
void func_802DCA14_2BEE44(u8 arg0) {
	s16 sp74;
	s16 arr[12];
	s32 sp58;
	s32 sp54;
	s32 sp50;
	u8 sp4F;
	AlienInstance *alien;
	Unk8014DD50 *nodeA;
	s8 v1, a1, a0, a3, t0, t2, t4, t5;

	if ((func_800038E0_44E0() % 50) == 0) {
		func_80137468_146418(arg0, 0x199);
	}

	alien = &alienInstances[arg0];
	if (alien->unk20 & ALIEN_FLAG_UNKD) {
		v1 = D_8014DD50[alien->unkC].unkC;
		nodeA = &D_8014DD50[v1];
		a1 = nodeA->unkD;
		a0 = nodeA->unkC;
		a3 = D_8014DD50[a1].unkD;
		t4 = D_8014DD50[a0].unkC;
		t0 = D_8014DD50[a3].unkC;
		t2 = D_8014DD50[a3].unkD;
		t5 = D_8014DD50[a1].unkC;

		arr[0] = v1;
		arr[3] = a1;
		arr[1] = a0;
		arr[2] = t4;
		arr[5] = a3;
		arr[6] = t0;
		arr[8] = t2;
		arr[4] = t5;
		arr[7] = D_8014DD50[t0].unkC;
		sp74 = D_8014DD50[t2].unkC;
		arr[9] = sp74;
		arr[10] = D_8014DD50[sp74].unkC;
		arr[11] = arr[10];

		sp4F = func_80081F18_90EC8(arg0, 11, 2, arr, &D_802E2408_2C4838);

		if (nodeA->unkE == 8) {
			if (alien->unk36 == 1) {
				func_80128428_1373D8(alien, -60, -50, 138, &sp58, &sp54, &sp50);
			} else if (alien->unk36 == 2) {
				func_80128428_1373D8(alien, 60, -50, 138, &sp58, &sp54, &sp50);
			}
			func_800DEA08_ED9B8(
				((s16 *)&sp58)[1],
				((s16 *)&sp54)[1],
				((s16 *)&sp50)[1],
				200, 5, 0, 40, 200, 225, 225, 225);
		}

		if (sp4F == 2) {
			alien->unk20 &= ~ALIEN_FLAG_UNKD;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DCA14_2BEE44.s")
#endif

// CURRENT(10095)
#ifdef NON_MATCHING
s32 func_802DCC50_2BF080(u8 arg0) {
	s16 sp96;
	s16 sp8E;
	s16 sp8C;
	s16 sp8A;
	s16 sp88;
	s16 sp86;
	s16 sp84;
	s16 sp82;
	s16 sp80;
	s16 sp7E;
	s16 sp7C;
	s16 sp7A;
	s16 sp78;
	u8 sp77;
	s32 sp70;
	s32 sp6C;
	s32 sp68;
	f32 sp64;
	f32 sp60;
	s32 sp5C;
	Unk8014DD50 *sp50;
	Unk8014DD50 *sp4C;
	AlienInstance *temp_s1;
	Unk8014DD50 *temp_s0;
	s16 temp_v0;
	s8 temp_v1;
	s8 temp_a0;
	s8 temp_a2;
	s8 temp_t0;
	s8 temp_t1;
	s8 temp_t4;
	s8 temp_t5;
	s8 temp_t2;
	s8 temp_t3;

	temp_s1 = &alienInstances[arg0];
	sp5C = 0;
	if (temp_s1->unk20 & 0x2000) {
		temp_v0 = temp_s1->unkC;
		temp_s0 = &D_8014DD50[temp_v0];
		temp_v1 = temp_s0->unkC;
		temp_a0 = D_8014DD50[temp_v1].unkC;
		temp_a2 = D_8014DD50[temp_v1].unkD;
		temp_t0 = D_8014DD50[temp_a2].unkD;
		temp_t2 = D_8014DD50[temp_a0].unkC;
		temp_t3 = D_8014DD50[temp_a2].unkC;
		sp50 = &D_8014DD50[temp_t0];
		temp_t1 = sp50->unkC;
		sp4C = &D_8014DD50[temp_t1];
		temp_t4 = sp50->unkD;
		temp_t5 = D_8014DD50[temp_t4].unkC;
		sp78 = temp_v0;
		sp7A = temp_v1;
		sp7C = temp_a0;
		sp7E = temp_t2;
		sp80 = temp_a2;
		sp82 = temp_t3;
		sp84 = temp_t0;
		sp86 = temp_t1;
		sp96 = D_8014DD50[temp_t1].unkC;
		sp88 = sp96;
		sp8A = temp_t4;
		sp8C = temp_t5;
		sp8E = D_8014DD50[temp_t5].unkC;
		sp77 = func_80081F18_90EC8(arg0, 12, 4, &sp78, &D_802E2734_2C4B64);
		if ((temp_s1->unk36 == 2) && (temp_s0->unkE == 2)) {
			D_8014ED42 = func_800879A4_96954(arg0, 100, 0);
			if (D_8014ED42 != 0) {
				func_80122524_1314D4(D_80052B34, (s16)(D_8014619A * 4), temp_s1->unk0, temp_s1->unk4);
				sp64 = (f32)((double)(f32)sins((temp_s1->unk6 + 0x4000) & 0xFFFF) / 32768.0);
				sp60 = (f32)(-((double)(f32)coss((temp_s1->unk6 + 0x4000) & 0xFFFF) / 32768.0));
				if (D_80052B34->unk1A == 0) {
					func_80102DDC_111D8C(D_80052B34, temp_s1->unk6, 0, 100.0f);
					func_80137468_146418(arg0, 0x134);
					func_80137468_146418(arg0, 2);
					if ((D_80031420_32020 & 3) == 3) {
						func_800CA5EC_D959C(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, (s8)(s32)(sp64 * 127.0f), -0x50, (s32)(sp60 * 127.0f), 0xB4, 5, 0x10, 0x80, 0xFF, 0, 0, 0xFF);
					}
				} else {
					func_80102DDC_111D8C(D_80052B34, temp_s1->unk6, 0, 60.0f);
					func_80137468_146418(arg0, 0x135);
					func_800C541C_D43CC(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, (s8)(s32)(sp64 * 127.0f), -0x50, (s32)(sp60 * 127.0f), 0xB4, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0xC8);
				}
				sp5C = 1;
			} else {
				func_80137468_146418(arg0, 0x134);
			}
		}
		if (sp77 == 1) {
			func_80128428_1373D8(temp_s1, 0x3C, -0x32, 0x8A, &sp70, &sp6C, &sp68);
			func_800DEA08_ED9B8((s16)(sp70 >> 16), (s16)sp6C, (s16)(sp68 >> 16), 0xC8, 5, 0, 0x28, 0xC8, 0xE1, 0xE1, 0xE1);
		}
		func_80128428_1373D8(temp_s1, (s16)(D_8014DD50[sp96].unk0 + sp50->unk0 + sp4C->unk0), (s16)(D_8014DD50[sp96].unk2 + sp50->unk2 + sp4C->unk2), (s16)(D_8014DD50[sp96].unk4 + sp50->unk4 + sp4C->unk4), &sp70, &sp6C, &sp68);
		if ((D_802E2764_2C4B94 == 0) && (sp6C < (func_800B84D0_C7480((s16)(sp70 >> 16), (s16)(sp68 >> 16)) >> 8))) {
			D_802E2764_2C4B94 = 1;
			func_800DEA08_ED9B8((s16)(sp70 >> 16), (s16)sp6C, (s16)(sp68 >> 16), 0xC8, 5, 0, 0x28, 0xC8, 0xE1, 0xE1, 0xE1);
		}
		if (sp77 == 4) {
			temp_s1->unk20 &= ~0x2000;
			D_802E2764_2C4B94 = 0;
		}
	}
	return sp5C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DCC50_2BF080.s")
#endif

void func_802DD1D0_2BF600(u8 arg0, s16 arg1) {
	s32 temp;

	*(s16 *)&temp = arg1;
	if ((u8)func_80081F18_90EC8(arg0, 1, 2, (s16 *)&temp, &D_802E2788_2C4BB8) == 1) {
		D_800481CE[arg0 * 0x50] = 0;
	}
}

// CURRENT(908)
#ifdef NON_MATCHING
void func_802DD240_2BF670(s32 arg0) {
	f32 vecX;
	f32 vecY;
	f32 vecZ;
	s32 x;
	s32 heading;
	s32 z;
	s16 diffX;
	s16 diffZ;
	u16 rand1;

	func_80137468_146418(((u8 *)&arg0)[3], 0x19B);

	x = alienInstances[((u8 *)&arg0)[3]].unk0;
	z = alienInstances[((u8 *)&arg0)[3]].unk4;

	vecX = (f32)(x / 4) - D_80047954;
	vecY = 0.0f;
	vecZ = (f32)(z / 4) - D_8004795C;

	guNormalize(&vecX, &vecY, &vecZ);

	vecX *= 250.0f;
	vecZ *= 250.0f;

	diffX = (s16)((f32)x - vecX);
	diffZ = (s16)((f32)z - vecZ);

	heading = (func_800B84D0_C7480(diffX, diffZ) >> 8) + 0x32;

	if (!(D_80052A8C & 7)) {
		rand1 = func_800038E0_44E0();
		func_800DEA08_ED9B8(
			diffX,
			(s16)heading,
			diffZ,
			(s16)((rand1 % 200) + 0x12C),
			(func_800038E0_44E0() % 20) + 0xA,
			0,
			0x32,
			0xDC, 0xE1, 0xE1, 0xE1
		);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DD240_2BF670.s")
#endif

// CURRENT(133)
#ifdef NON_MATCHING
s32 func_802DD408_2BF838(u8 arg0, u32 arg1) {
	s16 sp30;
	s32 diff_x;
	s32 diff_z;
	s32 result_heading;
	s32 sp30_heading;

	diff_x = D_80052B34->unk0 - alienInstances[arg0].unk0;
	diff_z = D_80052B34->unk4 - alienInstances[arg0].unk4;

	sp30 = func_80003824_4424((f32)diff_x, (f32)diff_z);
	result_heading = func_80003824_4424((f32)diff_x, (f32)diff_z);

	sp30_heading = sp30 - alienInstances[arg0].unk6;
	result_heading = result_heading - alienInstances[arg0].unk6;

	if ((-0x8000 - result_heading) < (sp30_heading + 0x8000)) {
		result_heading = func_80003824_4424((f32)diff_x, (f32)diff_z);
		result_heading = result_heading - alienInstances[arg0].unk6;
		result_heading = result_heading + 0x8000;
	} else {
		result_heading = func_80003824_4424((f32)diff_x, (f32)diff_z);
		result_heading = result_heading - alienInstances[arg0].unk6;
		result_heading = -0x8000 - result_heading;
	}

	if (result_heading < (s32)(u16)arg1) {
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DD408_2BF838.s")
#endif

// CURRENT(277)
#ifdef NON_MATCHING
void func_802DD514_2BF944(s32 arg0) {
	u8 newAlienIdx;
	s32 specIndex;
	AlienInstance *alien;

	alien = &alienInstances[*((u8 *)&arg0 + 3)];
	specIndex = alien->specIndex;
	newAlienIdx = func_8007956C_8851C(specIndex);

	alienInstances[newAlienIdx].unk2E = -0xC8;
	alienInstances[newAlienIdx].unk32 = 0x4A03;
	alienInstances[newAlienIdx].unk20 |= 0x8000;
	alienInstances[newAlienIdx].unk14 = -0xC8;
	alienInstances[newAlienIdx].unk18 = 0x4A03;
	alienInstances[newAlienIdx].unk0 = alienInstances[newAlienIdx].unk2E;
	alienInstances[newAlienIdx].unk4 = alienInstances[newAlienIdx].unk32;
	alienInstances[newAlienIdx].hitPoints = alien->hitPoints;
	alienInstances[newAlienIdx].unk48 = -0x20;

	alienInstances[newAlienIdx].unk2 = func_800B84D0_C7480(-0xC8, 0x4A03) >> (alienSpecs[specIndex].unk58 + 8);
	alienInstances[newAlienIdx].unk26 = 0;
	alienInstances[newAlienIdx].unk20 &= ~0x08000000;
	alienSpecs[specIndex].unk54 |= 0xC;

	func_80079910_888C0(*((u8 *)&arg0 + 3));
	func_8007A2A0_89250(newAlienIdx);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DD514_2BF944.s")
#endif

// CURRENT(high) - needs further work to match target assembly
#ifdef NON_MATCHING
void func_802DD668_2BFA98(s32 arg0) {
	s32 sp74;
	s32 sp50;
	s32 sp4C;
	s32 sp38;
	s16 sp7A;
	Unk8014DD50 *sp2C;
	AlienSpec *sp20;
	AlienInstance *alien;
	s32 v1;
	s32 temp1;
	s16 temp1_s;

	alien = &alienInstances[((u8 *)&arg0)[3]];
	sp2C = &D_8014DD50[alien->unkC];
	sp4C = alien->specIndex;
	sp7A = D_8014DD50[sp2C->unkC].unkD;
	sp74 = func_80084E54_93E04(D_80052B34, alien);
	sp50 = func_800B84D0_C7480(alien->unk0, alien->unk4) >> 8;
	sp38 = 0x190;
	if (alien->unk24 == 0) {
		v1 = alien->unk20;
		if (!(v1 & 0xC000)) {
			if (alien->hitPoints < (s16)(alienSpecs[sp4C].unk3A >> 2) ||
				(D_80052B34->unk0 >= (s16)-0x171C && D_80052B34->unk0 < (s16)-0x1333 &&
				 D_80052B34->unk4 >= 0x526C && D_80052B34->unk4 < 0x5655)) {
				alien->unk20 = v1 | 0x4000;
				alien->unk26 = 0;
			}
		}
	}
	sp20 = &alienSpecs[sp4C];
	if (D_80052B34->unk1A != 0 && alien->unk12 > 0) {
		if (alien->unk20 & 0x8000) {
			sp38 = 0x5DC;
		} else {
			sp38 = 0x3E8;
		}
	}
	if (alien->unk20 & 0x8000) {
		if (alien->unk48 < 0) {
			alien->unk48 += 0x10;
			func_802DD240_2BF670(arg0);
			if (sp74 < 0x7D0) {
				func_80135D08_144CB8((f32)((0x7D0 - sp74) / 1000), 1, 1, 1);
			}
			alien->unk2E = -0xC8;
			alien->unk32 = 0x4A03;
			alien->unk0 = (s16)alien->unk2E;
			alien->unk4 = (s16)alien->unk32;
			func_800F2D48_101CF8((u8)(alien->unk20 & 7), alien->unk0, alien->unk4);
		} else {
			alien->unk48 = 0;
			if (D_80052B34->unk1A == 0 && sp74 < 0x5DC) {
				sp20->unk40 = 0x200;
			} else {
				sp20->unk40 = 0x480;
			}
			if (D_80052B34->unk0 >= (s16)-0x2BC && D_80052B34->unk0 < 0x12D &&
				D_80052B34->unk4 >= 0x480F && D_80052B34->unk4 < 0x4BF8) {
				temp1 = alien->unk20 | 0x4000;
				alien->unk20 = temp1;
				alien->unk20 = temp1 & 0xFFFF7FFF;
				alien->unk26 = 0;
				alien->unk24 = 1;
			} else {
				if ((alien->unk47 & 1) && alien->unk34 > 0) {
					alien->unk34 = 1;
					alien->unk2A = (s16)alien->unkE;
				}
				if (alien->unk26 != 0) {
					if (func_80080840_8F7F0(((u8 *)&arg0)[3], 0xC8) != 0 ||
						(func_80080840_8F7F0(((u8 *)&arg0)[3], 0xC8) == 0 &&
						 func_802DD408_2BF838(((u8 *)&arg0)[3], 0x800) != 0)) {
						alien->unk26 = 0;
						alien->unk14 = -0xC8;
						alien->unk18 = 0x4A03;
						alien->unk2C = 0x50;
					} else {
						func_8008064C_8F5FC(((u8 *)&arg0)[3]);
					}
				} else {
					if (alien->unk2C == 0 &&
						((alien->unk20 & 0x80000000) || sp74 < 0x802)) {
						if (func_80080840_8F7F0(((u8 *)&arg0)[3], 0xC8) != 0 ||
							func_80084FE8_93F98(((u8 *)&arg0)[3], 0x800) == 0) {
							alien->unk26 = 1;
							alien->unk14 = -0x129C;
							alien->unk18 = 0x4A03;
							func_80137468_146418(((u8 *)&arg0)[3], 0x11);
						}
					} else if (func_80080840_8F7F0(((u8 *)&arg0)[3], 0xC8) != 0) {
						alien->unk12 = 0;
						func_80080A54_8FA04(((u8 *)&arg0)[3], -0x129C, 0x4A03);
						temp1_s = alien->unk6;
						alien->unk2A = temp1_s;
						alien->unkE = temp1_s;
					} else {
						func_8008064C_8F5FC(((u8 *)&arg0)[3]);
					}
					if (alien->unk2C != 0) {
						alien->unk2C--;
					}
				}
				v1 = alien->unk20;
				if (!(v1 & 0x3000)) {
					if (sp74 < sp38 && D_80052AD0 != 0) {
						alien->unk20 = v1 | 0x2000;
					} else {
						alien->unk20 = v1 | 0x1000;
					}
					alien->unk36 = 0;
				}
			}
		}
		alien->unk2 = (s16)(alien->unk48 + sp50 + sp20->unk58);
	} else if (alien->unk20 & 0x4000) {
		alien->unk20 |= 0x400000;
		sp20->unk54 &= ~0xC;
		if (alien->unk26 == 0) {
			alien->unk36 = 0;
			alien->unk20 |= 0x40000000;
			func_800F34AC_10245C(alien->unk20 & 7);
		}
		func_800F2D48_101CF8((u8)(alien->unk20 & 7), alien->unk0, alien->unk4);
		if (alien->unk26 < 0x10) {
			f32 f0;
			f0 = (f32)((f64)(f32)sins((alien->unk26 * 0x7D0) & 0xFFFF) / 32768.0);
			if (f0 > 0.0f) {
				alien->unk48 = (s16)(s32)(f0 * 400.0f);
			} else {
				alien->unk48 = (s16)(s32)(f0 * 600.0f);
			}
			sp2C->unkA = (u16)(sp2C->unkA + 0x352);
		} else {
			alien->unk20 &= 0xBFFFFFFF;
			alien->unk48 = (s16)(alien->unk48 - 0x10);
			func_802DD240_2BF670(arg0);
			if (sp74 < 0x7D0) {
				func_80135D08_144CB8((f32)((0x7D0 - sp74) / 1000), 1, 1, 1);
			}
			func_802DD1D0_2BF600(((u8 *)&arg0)[3], sp7A);
		}
		alien->unk26++;
		alien->unk2 = (s16)(alien->unk48 + sp50 + sp20->unk58);
		if ((alien->unk26 & 0xFF) >= 0x39) {
			if (alien->unk24 == 1) {
				func_80079910_888C0(((u8 *)&arg0)[3]);
			} else {
				func_802DD514_2BF944(arg0);
			}
		}
	} else {
		if (D_80052B34->unk1A == 0 && sp74 < 0x5DC) {
			sp20->unk40 = 0x200;
		} else {
			sp20->unk40 = 0x300;
		}
		if ((D_802E278C_2C4BBC == -1 && sp74 < 0x5DC) ||
			(func_800038E0_44E0() % 100 == 0 && sp74 >= 0x1F5 && D_802E278C_2C4BBC == 0)) {
			func_80137468_146418(((u8 *)&arg0)[3], 0x11);
			D_802E278C_2C4BBC = 0x32;
		}
		if (D_802E278C_2C4BBC > 0) {
			D_802E278C_2C4BBC--;
		}
		if (sp74 >= 0x2BC) {
			alien->unk3D = 0;
		}
		v1 = alien->unk20;
		if (!(v1 & 0x3000)) {
			if (sp74 < sp38 && alien->unk3D == 0 && D_80052AD0 != 0) {
				alien->unk20 = v1 | 0x2000;
			} else {
				alien->unk20 = v1 | 0x1000;
			}
			alien->unk36 = 0;
		}
		if (alien->unk3D != 0) {
			func_8008741C_963CC(((u8 *)&arg0)[3], -0x190);
		} else {
			func_8008751C_964CC(((u8 *)&arg0)[3], 0xC8, 0xC8);
		}
	}
	if (func_802DCC50_2BF080(((u8 *)&arg0)[3]) != 0) {
		alien->unk3D = 1;
	}
	func_802DCA14_2BEE44(((u8 *)&arg0)[3]);
	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DD668_2BFA98.s")
#endif

void func_802DDE3C_2C026C(s32 arg0) {
	s32 ret;
	s32 pad1;
	s32 pad2;
	AlienInstance *alien;

	alien = &alienInstances[((u8 *)&arg0)[3]];
	ret = func_80084E54_93E04(D_80052B34, alien);

	if (!(alien->unk20 & 0xC000) &&
		D_80052B34->unk0 >= -0x171C && D_80052B34->unk0 < -0x1333 &&
		D_80052B34->unk4 >= 0x526C && D_80052B34->unk4 < 0x5655) {
		alien->unk20 |= 0x4000;
		alien->unk26 = 0x38;
	} else {
		func_8008735C_9630C(((u8 *)&arg0)[3]);
	}

	if (alien->unk20 & 0x8000) {
		if (D_80052B34->unk0 >= -0x1C8 && D_80052B34->unk0 < 0x39 &&
			D_80052B34->unk4 >= 0x4903 && D_80052B34->unk4 < 0x4B04) {
			alien->unk20 |= 0x4000;
			alien->unk20 &= ~0x8000;
			alien->unk26 = 0;
			alien->unk24 = 1;
		} else if (alien->unk48 < 0) {
			alien->unk48 += 0x10;
			if (ret < 0x7D0) {
				func_80135D08_144CB8((f32)((0x7D0 - ret) / 0x3E8), 1, 1, 1);
				return;
			}
		} else {
			alien->unk48 = 0;
		}
	} else if (alien->unk20 & 0x4000) {
		if (alien->unk24 == 1) {
			func_80079910_888C0(((u8 *)&arg0)[3]);
			return;
		}
		func_802DD514_2BF944(((u8 *)&arg0)[3]);
	}
}

// CURRENT(1337)
#ifdef NON_MATCHING
void func_802DDFF0_2C0420(s32 arg0) {
	s32 sp4C;
	s32 sp50;
	Unk8014DD50 *sp54;
	Unk8014DD50 *sp58;
	Unk8014DD50 *sp5C;
	Unk8014DD50 *sp60;
	s16 sp6E;
	u8 sp77;
	s32 sp7C;
	s32 sp80;
	s32 sp84;
	f32 sp88;
	f32 sp8C;
	s16 sp90;
	s16 sp92;
	s16 sp94;
	s16 sp96;
	s16 sp98;
	s16 sp9A;
	s16 sp9C;
	s16 sp9E;
	s16 spA0;
	s16 spA2;
	s16 spA4;
	s16 spA6;
	s16 spA8;
	s16 spBC;
	AlienInstance *alien;
	Unk8014DD50 *s1;

	alien = &alienInstances[((u8 *)&arg0)[3]];
	if (!(alien->unk20 & 0x100000)) {
		alien->unk2C = 0xBB8;
		alien->unk36 = 0;
		return;
	}
	s1 = &D_8014DD50[D_8014DD50[alien->unkC].unkC];
	sp90 = alien->unkC;
	sp92 = D_8014DD50[alien->unkC].unkC;
	sp94 = s1->unkC;
	sp96 = D_8014DD50[s1->unkC].unkC;
	sp98 = s1->unkD;
	sp9A = D_8014DD50[s1->unkD].unkC;
	sp9C = D_8014DD50[s1->unkD].unkD;
	spBC = sp92;
	sp60 = &D_8014DD50[sp9C];
	sp9E = sp60->unkC;
	sp5C = &D_8014DD50[sp9E];
	spA0 = sp5C->unkC;
	spA2 = sp60->unkD;
	sp58 = &D_8014DD50[spA2];
	spA4 = sp58->unkC;
	sp54 = &D_8014DD50[spA4];
	spA6 = sp54->unkC;
	spA8 = spA6;
	sp4C = func_80081F18_90EC8(((u8 *)&arg0)[3], 0xC, 8, &sp90, &D_802E2DA0_2C51D0) & 0xFF;
	if (alien->unk36 < 3) {
		sp77 = sp4C;
		func_8008741C_963CC(((u8 *)&arg0)[3], -0xC8);
	} else {
		alien->unk12 = 0;
	}
	if (sp4C == 3) {
		func_80128428_1373D8(alien, s1->unk0, s1->unk2, s1->unk4, &sp84, &sp80, &sp7C);
		func_800DF848_EE7F8((s16)sp84, (s16)sp80, (s16)sp7C, 0x64, 0);
		sp50 = (alien->unk6 + 0x4000) & 0xFFFF;
		sp8C = (f32)(((f64)(f32)sins(sp50) / 32768.0) * 15.0);
		sp88 = (f32)(((f64)(f32)coss(sp50) / 32768.0) * -15.0);
		sp6E = func_800C7924_D68D4((s16)sp84, (s16)sp80, (s16)sp7C, 0x40, -8, D_8025668C[alien->specIndex * 0x34], func_8008916C_9811C(((u8 *)&arg0)[3], spBC), 1);
		func_800C80F0_D70A0((0x4000 - alien->unk6) & 0xFFFF, 0, 0, sp6E);
		func_800C820C_D71BC(0, 0, 0, sp6E);
		func_800C8184_D7134((s8)(s32)sp8C, 5, (s8)(s32)sp88, sp6E);
		func_80088E10_97DC0(spBC);
	}
	if (alien->unk36 >= 3) {
		if ((alien->unk2C % 6) == 0 && (D_80031420_32020 & 3)) {
			func_80128428_1373D8(alien, s1->unk0, (s16)(s1->unk2 - 0x8000), s1->unk4, &sp84, &sp80, &sp7C);
			sp8C = (f32)((f64)(f32)sins((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
			sp88 = (f32)(-((f64)(f32)coss((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0));
			func_800CA5EC_D959C((s16)sp84, (s16)sp80, (s16)sp7C, (s8)(s32)(sp8C * 128.0f), 0, (s8)(s32)(sp88 * 128.0f), 0x28, 0xA, 0x14, 0x32, 0, 0xB4 - (func_800038E0_44E0() % 80), 0x32, 0xFF);
		}
	}
	if (alien->unk36 >= 7) {
		sp60->unkA = (u16)((sp60->unkA + (300 * ((D_80052A8C & 1) * 2))) - 0x12C);
		sp5C->unkA = (u16)((sp5C->unkA + (504 * ((D_80052A8C & 1) * 2))) - 0x1F4);
		sp58->unkA = (u16)((sp58->unkA - (300 * ((D_80052A8C & 1) * 2))) + 0x12C);
		sp54->unkA = (u16)((sp54->unkA - (504 * ((D_80052A8C & 1) * 2))) + 0x1F4);
	}
	if (sp4C == 8) {
		alien->unk2C = 0;
		func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (u16)(((s16)D_8025668C[alien->specIndex * 0x34]) >> 1), 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DDFF0_2C0420.s")
#endif
// CURRENT(10600)
#ifdef NON_MATCHING
void func_802DE584_2C09B4(u8 arg0) {
	AlienInstance *alien = &alienInstances[arg0];
	AlienInstance *parentAlien = &alienInstances[alien->unk25];
	s16 sp82;
	s16 sp80;
	f32 sp64;
	AlienSpec *spec;
	Unk8014DD50 *entry3;

	spec = &alienSpecs[alien->specIndex];
	sp82 = D_8014DD50[D_8014DD50[alien->unkC].unkC].unkC;
	entry3 = &D_8014DD50[sp82];
	sp80 = entry3->unkD;

	alienSpecs[0x1B].unk3E = 0x400;
	alienSpecs[0x1B].unk42 = 0x400;

	if (spec->unk58 >= 0xC9) {
		spec->unk58 -= 10;
	} else {
		alienSpecs[0x1B].unk58 = (s16)(s32)(((f64)(f32)sins((D_80052A8C * 10000) & 0xFFFF) / 32768.0) * 6.0 + 200.0);
	}

	if (alien->unk2C-- == 0) {
		if (D_802E2E88_2C52B8 == 0) {
			D_802E2E88_2C52B8 = 1;
			alien->unk2C = 100;
		} else {
			D_802E2E88_2C52B8 = 0;
			alien->unk2C = (func_800038E0_44E0() % 200) + 100;
		}
	}

	if (D_802E2E88_2C52B8 == 0) {
		s32 temp1 = alien->unk0 - *(s16 *)&parentAlien->unk24;
		s32 temp2 = alien->unk4 - *(s16 *)&parentAlien->unk26;
		s32 temp3;

		alienSpecs[0x1B].unk40 = 0xA00;
		alien->unk14 = *(s16 *)&parentAlien->unk24;
		alien->unk20 &= ~0x08000000;
		alien->unk18 = *(s16 *)&parentAlien->unk26;

		temp3 = -temp1;
		if (temp3 < temp1) { temp3 = temp1; }
		temp1 = temp3 >> 1;

		temp3 = -temp2;
		if (temp3 < temp2) { temp3 = temp2; }
		temp3 >>= 1;

		temp2 = (s32)sqrtf((f32)(temp1 * temp1 + temp3 * temp3)) * 2;

		if (temp2 >= 0x7D1) {
			temp3 = alien->unk20 | 0x100;
			alien->unk20 = temp3;
			alien->unk20 = temp3 & ~0x840;
		} else if (temp2 >= 0x641) {
			temp3 = alien->unk20 | 0x800;
			alien->unk20 = temp3;
			alien->unk20 = temp3 & ~0x140;
		} else {
			temp3 = alien->unk20 | 0x140;
			alien->unk20 = temp3;
			alien->unk20 = temp3 & ~0x800;
		}
	} else if (D_802E2E88_2C52B8 == 1) {
		s32 temp1;
		s32 temp2;

		alienSpecs[0x1B].unk40 = 0x640;
		temp1 = alien->unk20 | 0x08000000;
		alien->unk20 = temp1;
		temp2 = temp1 | 0x100;
		alien->unk20 = temp2;
		alien->unk20 = temp2 & ~0x840;
	}

	func_8008076C_8F71C(arg0);

	if (spec->unk58 < 0xDC &&
		func_80084E54_93E04(D_80052B34, alien) < D_80257A0C[D_80052B34->unk1A * 56] + 500 &&
		func_80084FE8_93F98(arg0, 0x7D0) != 0) {
		if (D_80052B34->unk1A == 0x13) {
			func_80102DDC_111D8C(D_80052B34, alien->unk2A, 0, 7.0f);
		} else {
			func_80102DDC_111D8C(D_80052B34, alien->unk2A, 0, 60.0f);
		}
		func_80122524_1314D4(D_80052B34, 0xC8, alien->unk0, alien->unk4);
		func_800DF038_EDFE8(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, 0x64, 0, 0);
		sp64 = (f32)((f64)(f32)sins((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
		func_800C541C_D43CC(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4,
			(s8)(s32)(sp64 * 127.0f), 0x50,
			(s8)(s32)(-((f64)(f32)coss((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0) * 127.0f),
			0x64, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0xC8);
		func_80137468_146418(arg0, 0x258);
		if (!(parentAlien->unk20 & 0x1000)) {
			parentAlien->unk20 |= 0x1000;
			alien->unk26 = 0;
			func_80081C84_90C34((u8)(sp82 & 0xFF), &D_802E2E38_2C5268);
			func_80081C84_90C34((u8)(sp80 & 0xFF), &D_802E2E38_2C5268);
		}
	}

	if ((parentAlien->unk20 & 0x1000) && entry3->unkE == 0) {
		if (alien->unk26 == 0) {
			func_80081C84_90C34((u8)(sp82 & 0xFF), &D_802E2E48_2C5278);
			func_80081C84_90C34((u8)(sp80 & 0xFF), &D_802E2E68_2C5298);
			alien->unk26++;
		} else {
			parentAlien->unk20 &= ~0x1000;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DE584_2C09B4.s")
#endif

// CURRENT(4026)
#ifdef NON_MATCHING
void func_802DEB5C_2C0F8C(s32 arg0) {
	u8 sp4F;
	s16 sp48;
	s32 sp50;
	AlienInstance *alien;

	alien = &alienInstances[arg0 & 0xFF];
	sp4F = alien->specIndex;

	if (D_80052A8C & 1) {
		alien->unk20 |= 0x80000000;
	}

	if (alien->unk3A != 0) {
		if (alien->unk3A >= 0x29) {
			func_8008EB20_5EFD0(arg0 & 0xFF, 0x32, 0x3E8);
		} else {
			func_8008EB20_5EFD0(arg0 & 0xFF, 0x1F4, 0x3E8);
		}
	} else {
		func_8008064C_8F5FC(arg0 & 0xFF);
	}

	if (alien->unk20 & 0x1000) {
		s16 temp;
		u16 temp_a0;

		func_80137468_146418(arg0 & 0xFF, 0x25);

		alien->unk6 = alien->unkE;
		temp = D_8014DD50[alien->unkC].unkC;
		temp_a0 = (u16)D_8014DD50[temp].unk8;
		if ((s32)temp_a0 >= 0x7D1) {
			D_8014DD50[temp].unk8 = temp_a0 - 0x7D0;
			D_8014DD50[D_8014DD50[temp].unkD].unk8 += 0x7D0;
		}

		func_8011E6FC_12D6AC(alien->unk0, alien->unk4, &sp48);

		if ((alien->unk47 & 0xE) || ((alien->unk2 - (s16)D_8025668C[sp4F * 52]) < sp48)) {
			if (alien->unk3F != 0xFF) {
				func_800765C4_85574(alien->unk3F);
			}
			func_80088760_97710(alien);
			func_80124B5C_133B0C(alien->unk0, alien->unk2, alien->unk4, 0x3E8, 0x100);
		}
	} else {
		if (alien->unk20 & 0x800) {
			s16 v;

			v = func_8008E524_9D4D4(arg0 & 0xFF, 0x1F4, 0x4);
			sp48 = v;
			func_8008E978_9D928(arg0 & 0xFF, v);
		} else {
			func_8008EDFC_9DDAC(arg0 & 0xFF);
		}
		func_8008EF1C_9DECC(arg0 & 0xFF);
		func_80092C40_A1BF0(arg0 & 0xFF);

		if (alien->unk3A == 0 && alien->unk1E == 0) {
			if (func_80084F00_93EB0(D_80052B34, alien) < 0x3E8) {
				func_800871CC_9617C(arg0 & 0xFF, 0, 0x40);
				alien->unk1E = (func_800038E0_44E0() % 7) + 5;
			}
		}
	}

	if (alien->unk3A != 0) {
		alien->unk3A--;
	}
	if (alien->unk1E != 0) {
		alien->unk1E--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DEB5C_2C0F8C.s")
#endif

// CURRENT(590)
#ifdef NON_MATCHING
void func_802DEDE4_2C1214(u8 arg0) {
	u8 temp;
	s32 sp54;
	s32 sp50;
	s32 sp4C;

	temp = func_8007956C_8851C(0x26);
	if (temp != 0xFF) {
		AlienInstance *parent;
		AlienInstance *child;
		s16 orientation;

		parent = &alienInstances[arg0];
		func_80128428_1373D8(parent, -15, -110, -30, &sp54, &sp50, &sp4C);

		child = &alienInstances[temp];
		child->unk0 = (s16)sp54;
		child->unk2 = (s16)sp50;
		child->unk4 = (s16)sp4C;

		orientation = parent->unk6;
		child->unkA = 0xFA0;
		child->unkE = orientation;
		child->unk6 = orientation;
		child->unk12 = D_80256AD0 * 3;
		child->unk20 |= 0x01000000;
		child->unk25 = arg0;
		parent->unk3C++;
		child->unk3A = 0x32;

		child->unk14 = (s16)((f64)(float)coss(orientation & 0xFFFF) / 32768.0 * D_802E3058_2C5488 + (f64)parent->unk0);
		child->unk16 = D_80052B34->unk2;
		child->unk18 = (s16)((f64)(float)sins(orientation & 0xFFFF) / 32768.0 * D_802E3060_2C5490 + (f64)parent->unk4);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DEDE4_2C1214.s")
#endif

// CURRENT(8164)
#ifdef NON_MATCHING
void func_802DEFB4_2C13E4(u8 arg0) {
    AlienInstance *alien = &alienInstances[arg0];
    s16 sp7C;
    s16 sp7A;
    s32 sp70;
    s32 sp6C;
    s32 sp68;
    s32 sp64;
    f32 sinComponent;
    f32 cosComponent;
    Unk8014DD50 *a1;

    a1 = &D_8014DD50[D_8014DD50[alien->unkC].unkC];
    sp7C = (s16)a1->unkC;
    sp7A = D_8014DD50[a1->unkC].unkD;
    if (!(alienInstances[alien->unk25].unk20 & ALIEN_FLAG_UNKG)) {
        func_80081C84_90C34((u8)sp7C, &D_802E2E38_2C5268);
        func_80081C84_90C34((u8)sp7A, &D_802E2E38_2C5268);
    } else {
        if (alien->unk48 != 0) {
            if (alien->unk48 >= 0xA1) {
                alien->unk4C = (s16)((f64)(f32)sins((((0xC8 - alien->unk48) << 14) / 0x28) & 0xFFFF) / 32768.0 * 10.0);
                if ((u16)a1->unk6 != 0) {
                    if ((u16)a1->unk6 < 0x8000U) {
                        a1->unk6 -= 0x1F4;
                        if ((u16)a1->unk6 >= 0x8001U) { a1->unk6 = 0; }
                    } else {
                        a1->unk6 += 0x1F4;
                        if ((u16)a1->unk6 < 0x8000U) { a1->unk6 = 0; }
                    }
                }
                if (alien->unk48 == 0xC8) {
                    func_80081C84_90C34((u8)sp7C, &D_802E2E48_2C5278);
                    func_80081C84_90C34((u8)sp7A, &D_802E2E68_2C5298);
                }
            } else if (alien->unk48 < 0x29) {
                alien->unk4C = (s16)(-((f64)(f32)sins(((alien->unk48 << 14) / 0x28) & 0xFFFF) / 32768.0 * 10.0));
            } else {
                sp70 = (0xA0 - alien->unk48) % 20;
                func_80128428_1373D8(alien, -15, -110, -30, &sp6C, &sp68, &sp64);
                sinComponent = (f32)((f64)(f32)sins((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
                cosComponent = (f32)(-((f64)(f32)coss((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0));
                if ((sp70 & 7) == 0) {
                    func_800DEA08_ED9B8((s16)((f32)sp6C + sinComponent * 500.0f), (s16)sp68, (s16)((f32)sp64 + cosComponent * 500.0f), 0x50, 0xC, 0xC, 0x1E, 0x3C, 0xF0, 0xC8, 0x14);
                }
                if (sp70 == 0) {
                    func_80081C84_90C34((u8)sp7C, &D_802E2E38_2C5268);
                    func_80081C84_90C34((u8)sp7A, &D_802E2E38_2C5268);
                    func_802DEDE4_2C1214(arg0);
                    alien->unk4C -= 3;
                    func_800CA5EC_D959C((s16)((f32)sp6C + sinComponent * 400.0f), (s16)sp68, (s16)((f32)sp64 + cosComponent * 400.0f), (s8)(s32)(127.0f * sinComponent), -30, (s32)(127.0f * cosComponent), 0xFF, 6, 0x10, 0x28, 0xF0, 0xC8, 0x14, 0xFF);
                    func_80137468_146418(arg0, 1);
                }
                if (((sp70 + 4) % 20) == 0) {
                    func_80081C84_90C34((u8)sp7C, &D_802E2E48_2C5278);
                    func_80081C84_90C34((u8)sp7A, &D_802E2E68_2C5298);
                }
            }
            alien->unk48--;
        } else {
            alienInstances[alien->unk25].unk20 &= ~ALIEN_FLAG_UNKG;
            alien->unk4C = 0;
        }
    }
    if (alien->unk48 != 0) {
        alien->unk48--;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DEFB4_2C13E4.s")
#endif

void func_802DE584_2C09B4(u8 arg0);
void func_802DEFB4_2C13E4(u8 arg0);

// CURRENT(8000)
#ifdef NON_MATCHING
void func_802DF4C8_2C18F8(u8 arg0) {
    AlienInstance *alien = &alienInstances[arg0];
    AlienInstance *parent = &alienInstances[alien->unk25];
    s16 sp20;
    s16 sp22;
    s16 sp28;
    s16 sp2A;
    s32 temp_a3;

    if (parent->unk20 & 0x10000) {
        return;
    }

    if (alien->unk12 != 0) {
        func_80137468_146418(arg0, 0x25E);
    } else {
        func_80137468_146418(arg0, 0x25D);
    }

    func_800A92E0_B8290(arg0, 0x7000);

    if (*(s32 *)D_8013D8C0_14C870 != 5 && D_80140AC4_14FA74 == 0) {
        alien->unk12 = 0;
        alien->unk20 = (alien->unk20 & ~0x40000) | 0x800140;
        *(s32 *)D_8013D8C0_14C870 = 5;
        alien->unkE = alien->unk6;
    }

    temp_a3 = D_8014DD50[alien->unkC].unkC;
    sp2A = D_8014DD50[temp_a3].unkC;
    sp22 = D_8014DD50[D_8014DD50[temp_a3].unkD].unkD;
    sp28 = D_8014DD50[sp2A].unkD;
    sp20 = D_8014DD50[sp22].unkD;

    if (!(parent->unk20 & 0xA000)) {
        func_80086230_951E0(arg0, (s16)temp_a3, 0x2000);
    }

    if (*(s32 *)D_8013D8C0_14C870 == 5) {
        func_802DE584_2C09B4(arg0);
    } else {
        D_802571D0 = (s16)(sins((D_80052A8C * 10000) & 0xFFFF) / 32768.0 * 6.0 + D_802E3068_2C5498);

        if ((func_800038E0_44E0() % 100) == 0) {
            if (!(parent->unk20 & 0x8000) && alien->unk3C < 12) {
                parent->unk20 |= 0x8000;
                alien->unk48 = 200;
            }
        }

        if (parent->unk20 & 0x4000) {
            alienSpecs[27].unk40 = 0xA00;
            alienSpecs[27].unk3E = 0x400;
            alien->unk20 |= 0x10;
            func_8008064C_8F5FC(arg0);

            if (alien->unk2C != 0) {
                alien->unk2C--;
            } else if (func_80084FE8_93F98(arg0, 0x800) == 0) {
                parent->unk20 &= ~0x4000;
                D_802571B8 = 0x1C0;
                D_802571B6 = 0x10;
                alien->unk20 &= ~0x10;
                alien->unk2C = (func_800038E0_44E0() % 100) + 50;
            }
        } else if ((alien->unk20 & 0x6000) == 0x6000) {
            D_802571BA = 0xFA;
            func_8008751C_964CC(arg0, 0x12C, 0x1F4);
            if (func_80084FE8_93F98(arg0, 0x800) != 0 && (func_800038E0_44E0() % 200) == 0) {
                parent->unk20 |= 0x4000;
                alien->unk2C = 0x28;
            }

            if (alien->unk2C != 0) {
                alien->unk2C--;
            } else if (func_80084FE8_93F98(arg0, 0x800) != 0 && (func_800038E0_44E0() % 50) == 0) {
                parent->unk20 |= 0x4000;
                alien->unk2C = 0x28;
            }
        } else {
            func_8008751C_964CC(arg0, 0x4B0, 0x5DC);
            if (func_80084FE8_93F98(arg0, 0x800) != 0 && (func_800038E0_44E0() % 300) == 0 && !(alien->unk20 & 0x8000)) {
                parent->unk20 |= 0x4000;
                alien->unk2C = 0x28;
            }
        }

        func_802DEFB4_2C13E4(arg0);
    }

    func_8008EE5C_9DE0C(arg0, sp20, sp22);
    func_80081E5C_90E0C(sp2A);
    func_80081E5C_90E0C(sp28);

    if (func_800A9F34_B8EE4(arg0) != 0) {
        alien->unk20 &= ~0x10;
        parent->unk20 &= ~0x4000;
        alienSpecs[27].unk40 = 0x1C0;
        alienSpecs[27].unk3E = 0x10;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DF4C8_2C18F8.s")
#endif

// CURRENT(22088)
#ifdef NON_MATCHING
void func_802DF98C_2C1DBC(u8 arg0) {
    AlienInstance *alien = &alienInstances[arg0];
    AlienInstance *parent = &alienInstances[alien->unk25];
    AlienInstance *grandparent = &alienInstances[parent->unk25];
    s32 pad1;
    s32 pad2;
    s32 pad3;
    f32 sp6C;
    s16 spA0;
    s16 spA4;
    s8 ret;

    func_800A93A4_B8354(arg0, -11, 182, -299);

    if ((parent->unk20 & 0x6000) == 0x6000) {
        alienInstances[*(u8 *)grandparent].unk20 &= ~0x400000;
    }

    if (alien->unk20 & ALIEN_FLAG_UNKD) {
        if (alien->unk20 & ALIEN_FLAG_UNKE) {
            s16 angle = (alien->unk6 + 0x4000) & 0xFFFF;

            alien->unk20 &= ~ALIEN_FLAG_UNKE;
            func_80122524_1314D4(D_80052B34, 1000, alien->unk0, alien->unk4);
            if (D_80052B34->unk1A == 0x13) {
                func_80102DDC_111D8C(D_80052B34, alien->unk6, 0xFA0, 0x41A00000);
            } else {
                func_80102DDC_111D8C(D_80052B34, alien->unk6, 0xFA0, 0x41A00000);
            }
            func_800DF038_EDFE8(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, 100, 0, 0);

            sp6C = (f32)((f64)(f32)sins(angle) / 32768.0);
            func_800C541C_D43CC(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4,
                (s8)(s32)(sp6C * 127.0f), 0x50,
                (s8)(s32)(-((f32)((f64)(f32)coss(angle) / 32768.0)) * 127.0f),
                0x96, 0xFF, 0x28, 0x14, 0xFF, 0xFF, 0xC8);

            func_80137468_146418(arg0, 0x258);

            D_80052B34->unk22 = 1000 - (func_800038E0_44E0() % 2000);
            D_80052B34->unk24 = 1000 - (func_800038E0_44E0() % 2000);
            D_80052B34->unk26 = 1000 - (func_800038E0_44E0() % 2000);
        }

        spA4 = D_8014DD50[alien->unkC].unkC;
        spA0 = spA4;

        ret = func_80081F18_90EC8(arg0, 2, 3, &spA0, &D_802E2E30_2C5260);

        if (ret == 3) {
            alien->unk20 &= ~ALIEN_FLAG_UNKD;
        } else if (ret == 1) {
            func_80137468_146418(arg0, 0x19C);
        }

        if (func_80084FE8_93F98(arg0, 0x200)) {
            if (alien->unk36 == 2 || ret == 2 || (grandparent->unk20 & ALIEN_FLAG_UNKF)) {
                Unk8014DD50 *e1 = &D_8014DD50[alien->unkC];
                Unk8014DD50 *e2 = &D_8014DD50[spA4];
                AlienSpec *spec = &alienSpecs[alien->specIndex];
                s16 a1 = e1->unkA;
                spec->unk2C = e2->unk0;
                spec->unk2E = (s16)(s32)(((f64)e2->unk2 * ((f64)(f32)coss(a1) / 32768.0)) - (((f64)(f32)sins(a1) / 32768.0) * (f64)e2->unk4));
                spec->unk30 = (s16)(s32)((((f64)(f32)coss(a1) / 32768.0) * (f64)e2->unk4) + ((f64)e2->unk2 * ((f64)(f32)sins(a1) / 32768.0)));
                a1 = (a1 + e1->unkA) & 0xFFFF;
                spec->unk2E += (s16)(s32)(D_802E3070_2C54A0 * ((f64)(f32)coss(a1) / 32768.0) - D_802E3078_2C54A8 * ((f64)(f32)sins(a1) / 32768.0));
                spec->unk30 += (s16)(s32)(D_802E3080_2C54B0 * ((f64)(f32)sins(a1) / 32768.0) + D_802E3088_2C54B8 * ((f64)(f32)coss(a1) / 32768.0));
                if (func_800879A4_96954(arg0, 0x3C, 1)) {
                    alien->unk20 |= ALIEN_FLAG_UNKE;
                }
            }
        }
    } else {
        if (func_80084FE8_93F98(arg0, 0x200)) {
            s32 dx = alien->unk0 - D_80052B34->unk0;
            s32 dz = alien->unk4 - D_80052B34->unk4;
            s32 distSq = dx * dx + dz * dz;
            if (!(grandparent->unk20 & ALIEN_FLAG_UNKF)) {
                if (distSq >= 0x27101 && distSq < 0x15F900) {
                    goto distMet;
                }
            } else if (distSq >= 0x4E201 && distSq < 0x2BF200) {
                goto distMet;
            }
        } else if ((s32)alien->unk20 < 0 && !(parent->unk20 & ALIEN_FLAG_UNKG)) {
            if ((func_800038E0_44E0() % 10) == 0) {
                grandparent->unk20 |= ALIEN_FLAG_UNKF;
                parent->unk2C = 0x28;
            }
        }
    }
    return;

distMet:
    {
        AlienSpec *spec = &alienSpecs[alien->specIndex];
        Unk8014DD50 *e2 = &D_8014DD50[D_8014DD50[alien->unkC].unkC];
        alien->unk20 |= ALIEN_FLAG_UNKD;
        alien->unk36 = 0;
        spec->unk20 = e2->unk0;
        spec->unk22 = (s16)(s32)(((f64)e2->unk2 * ((f64)(f32)coss(0xD000) / 32768.0)) - (((f64)(f32)sins(0xD000) / 32768.0) * (f64)e2->unk4));
        spec->unk24 = (s16)(s32)((((f64)(f32)coss(0xD000) / 32768.0) * (f64)e2->unk4) + ((f64)e2->unk2 * ((f64)(f32)sins(0xD000) / 32768.0)));
        func_80128504_1374B4(alien, 0, &e2->unk0, &e2->unk2, &e2->unk4);
        D_802E2E1A_2C524A = 0x3000 - func_80003680_4280((f32)(D_80052B34->unk2 - e2->unk2 + 200) / 1000.0f);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DF98C_2C1DBC.s")
#endif

void func_802E0298_2C26C8(u8 arg0) {
    func_800A93A4_B8354(arg0, -11, 182, -299);
}

// CURRENT(13009)
#ifdef NON_MATCHING
void func_802E02CC_2C26FC(u8 arg0) {
    AlienInstance *alien = &alienInstances[arg0];
    s16 sp7A;
    s16 sp78;
    s32 sp74;
    s16 sp70;
    s32 sp6C;
    f32 sp68;
    f32 sp64;

    sp7A = alien->unkC;
    sp78 = (s16)alien->specIndex;

    D_8014DD50[sp7A].unkA = func_80085A9C_94A4C(D_8014DD50[sp7A].unkA, func_800860CC_9507C(alien->unk0, alien->unk2, alien->unk4), 0x1770, -0xFA0, alienSpecs[alien->specIndex].unk42);

    func_80085F68_94F18(arg0, sp7A, 0xFA0);

    if (alien->unk3C != 0 && alien->unk1E == 0) {
        alien->unkA = (alien->unk3C % 2) * 1000;

        func_80128428_1373D8(alien, alienSpecs[sp78].unk20, alienSpecs[sp78].unk22 + 0x14, alienSpecs[sp78].unk24 - 0x64, &sp74, &sp70, &sp6C);

        func_800D16BC_E066C((s16)sp74, sp70, (s16)sp6C, (s16)sp74, func_800B84D0_C7480((s16)sp74, (s16)sp6C) >> 8, (s16)sp6C, 1);

        func_80137468_146418(arg0, 0x261);

        if ((func_800038E0_44E0() % 10) == 0) {
            s16 rand1;
            s32 rand3;

            rand1 = (s16)func_800038E0_44E0();
            rand3 = func_800038E0_44E0();

            func_800D16BC_E066C((s16)sp74, sp70, (s16)sp6C, (s16)(((u16)rand1 % 2000) + (s16)sp74 - 1000), 0xBB8, (rand3 % 2000) + (s16)sp6C - 1000, 3);
        }

        alien->unk3C--;
        return;
    }

    if (alien->unk26 != 0) {
        alien->unkA = 0;

        if (alien->unk1E != 0) {
            alien->unk1E = alien->unk1E - 1;
            if (alien->unkA != 0) {
                alien->unkA = alien->unkA + 0xC8;
            }
        } else {
            func_800868A4_95854(arg0, 0, -(s16)D_8014DD50[sp7A].unk6, D_8014DD50[sp7A].unkA);
            func_80135D44_144CF4(alien->unk0, alien->unk2, alien->unk4, 0x40400000);

            sp68 = (f32)((f64)(f32)sins((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);
            sp64 = (f32)-((f64)(f32)coss((alien->unk6 + 0x4000) & 0xFFFF) / 32768.0);

            func_80128428_1373D8(alien, alienSpecs[alien->specIndex].unk20, alienSpecs[alien->specIndex].unk22, alienSpecs[alien->specIndex].unk24, &sp74, &sp70, &sp6C);

            func_800C541C_D43CC((s16)sp74, sp70, (s16)sp6C, (s8)(s32)(sp68 * 127.0f), 0x28, (s32)(sp64 * 127.0f), 0x64, 0x4B, 0xA, 6, 0xFF, 0xFF, 0xFF);

            func_80137468_146418(arg0, 0x25C);

            alien->unk26--;
            alien->unk1E = 0xA;
            alien->unkA = -0xFA0;
        }
    } else {
        alien->unk3C = 0x28;
        alien->unk26 = 4;
        alien->unk1E = 0x1E;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E02CC_2C26FC.s")
#endif

void func_802E07B4_2C2BE4(u8 arg0) {
    func_800A93A4_B8354(arg0, -289, -26, 324);
    func_802E02CC_2C26FC(arg0);
}

void func_802E07EC_2C2C1C(u8 arg0) {
    func_800A93A4_B8354(arg0, -289, -26, 324);
}

void func_802E0820_2C2C50(u8 arg0) {
    func_800A93A4_B8354(arg0, 282, -29, 334);
    func_802E02CC_2C26FC(arg0);
}

void func_802E0858_2C2C88(u8 arg0) {
    func_800A93A4_B8354(arg0, 0x11A, -0x1D, 0x14E);
}

void func_802E088C_2C2CBC(u8 arg0) {
    if (!(alienInstances[arg0].unk20 & 0x100000)) {
        alienInstances[arg0].unk20 |= 0x40100000;
        func_80088000_96FB0((s16)arg0);
        func_8012B21C_13A1CC();
        func_800A92B0_B8260();
        alienInstances[arg0].unk2C = 0xAA;
        func_80137468_146418(arg0, 0x11);
    } else if (!(alienInstances[arg0].unk20 & 0x40000000)) {
        alienInstances[arg0].unk2 = (func_800B84D0_C7480(alienInstances[arg0].unk0, alienInstances[arg0].unk4) + 0x32) >> 8;
        func_800AA340_B92F0(arg0);
    }
}

// CURRENT(16)
#ifdef NON_MATCHING
void func_802E0958_2C2D88(u8 arg0) {
    AlienInstance *alien;
    u8 specIndex;

    alien = &alienInstances[arg0];
    specIndex = alien->specIndex;

    if (!(alien->unk20 & 0x100000)) {
        alien->unk20 |= 0x40000000;
        alien->unk20 |= 0x4000;
        func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, *(u16 *)((u8 *)D_8025668C + specIndex * 0x68), 2);
        alien->unk2C = 0x64;
        func_80137468_146418(arg0, 0x11);
    }

    if (alien->unk2C < 0x10 && (alien->unk2C & 1)) {
        u8 newIdx;
        newIdx = func_8007956C_8851C(0x26);
        if (newIdx != 0xFF) {
            alienInstances[newIdx].unk0 = alien->unk0;
            alienInstances[newIdx].unk2 = alien->unk2;
            alienInstances[newIdx].unk4 = alien->unk4;
            alienInstances[newIdx].unkE = func_800038E0_44E0();
            alienInstances[newIdx].unk12 = D_80256AD0;
        }
    }

    if (alien->unk20 & 0x4000) {
        if (func_8008AAFC_99AAC(arg0, (s32)((f64)*(s16 *)((u8 *)D_8025668C + specIndex * 0x68) * 1.5), 5)) {
            alien->unk20 &= ~0x4000;
            alien->unk2C = 0x10;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E0958_2C2D88.s")
#endif

// CURRENT(406)
#ifdef NON_MATCHING
void func_802E0B08_2C2F38(u8 arg0) {
    AlienInstance *alien;
    AlienInstance *grandparent;
    AlienInstance *parent;
    s16 val;

    alien = &alienInstances[arg0];
    parent = &alienInstances[alien->unk25];
    grandparent = &alienInstances[parent->unk25];

    if (!(alien->unk20 & 0x100000)) {
        alien->unk20 |= 0x40000000;
        val = *(s16 *)((u8 *)D_8025668C + alien->specIndex * 0x68);
        func_800DF848_EE7F8(alien->unk0, alien->unk2, alien->unk4, (u16)((u32)((f64)val * 1.5)), 2);
        func_80137468_146418(arg0, 0x11);
    }

    val = *(s16 *)((u8 *)D_8025668C + alien->specIndex * 0x68);
    func_8008AAFC_99AAC(arg0, (s32)((f64)val * 1.5), 5);

    if (alien->unk2C == 1) {
        grandparent->unk20 |= 0x4000;
        parent->unk2C = 0x28;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E0B08_2C2F38.s")
#endif

void func_802E0CF8_2C3128(u8 arg0) {
	func_802E0B08_2C2F38(arg0);
}

void func_802E0D20_2C3150(u8 arg0) {
	func_802E0B08_2C2F38(arg0);
}

void func_802E0D48_2C3178(u8 arg0) {
    AlienInstance *alien;
    AlienInstance *parent;

    alien = &alienInstances[arg0];
    if (!(alien->unk20 & 0x100000)) {
        parent = &alienInstances[alien->unk25];
        if (parent->specIndex == 0x1B) {
            parent->unk3C--;
        }
        if (alien->unk20 & 0x40000000) {
            func_800797A4_88754(arg0, 2);
        }
    }
    func_8008B108_9A0B8(arg0);
}
