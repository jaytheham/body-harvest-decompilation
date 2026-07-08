#include <ultra64.h>
#include "common.h"

void func_802D64DC_2B890C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7);
void func_802D6A70_2B8EA0(void);

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D8930_2BAD60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D923C_2BB66C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D9B08_2BBF38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D9BFC_2BC02C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D9FB4_2BC3E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802D9FE4_2BC414.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DA4CC_2BC8FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DA7CC_2BCBFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DA854_2BCC84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DA910_2BCD40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DAA20_2BCE50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DACA0_2BD0D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DAD00_2BD130.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DAEBC_2BD2EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DB390_2BD7C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DB3F0_2BD820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DB620_2BDA50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DB8D8_2BDD08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DBE28_2BE258.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DBF54_2BE384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DC4A0_2BE8D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DC4D0_2BE900.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DCA14_2BEE44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DCC50_2BF080.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DD1D0_2BF600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DD240_2BF670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DD408_2BF838.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DD514_2BF944.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DD668_2BFA98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DDE3C_2C026C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DDFF0_2C0420.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DE584_2C09B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DEB5C_2C0F8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DEDE4_2C1214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DEFB4_2C13E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DF4C8_2C18F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802DF98C_2C1DBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E0298_2C26C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E02CC_2C26FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E07B4_2C2BE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E07EC_2C2C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E0820_2C2C50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E0858_2C2C88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E088C_2C2CBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E0958_2C2D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E0B08_2C2F38.s")

void func_802E0CF8_2C3128(u8 arg0) {
	func_802E0B08_2C2F38(arg0);
}

void func_802E0D20_2C3150(u8 arg0) {
	func_802E0B08_2C2F38(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_level/siberia/2B7100/func_802E0D48_2C3178.s")
