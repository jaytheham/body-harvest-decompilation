#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80000450_1050.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80000730_1330.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_8000091C_151C.s")

void func_80000AD4_16D4(s32 arg0)
{
	int new_var;
	u32 ret = func_8001BCE0_1C8E0();
	new_var = 0;
	if (((ret >> 2) == 0) && (D_80031304 == 0))
	{
		D_80031304 = new_var;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80000B14_1714.s")

void* (*func_80000CD4_18D4(Unk80042DA8** arg0))(void) {
	if (D_80042DA8.unk0 == 0) {
		D_80042DA8.unk4 = 0;
		D_80042DA8.unk8 = &D_80042DB8;
		D_80042DA8.unk0 = 1U;
	}
	*arg0 = &D_80042DA8;
	return &func_80000B14_1714;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80000D0C_190C.s")

void checkForRumblePak(void) {
	if (osMotorInit(&D_80043388, &D_80047610, 0) != 0) {
		return;
	}

	osSyncPrintf(D_80036840); // Rumble pak(tm)  detected!
	D_80047678 = 1;
	func_8000108C_1C8C(0);
	D_800313CC = 0;
	D_8004767C = 0;
	D_80047680 = 0;
	D_80047688 = 0;
	D_8004768C = 0;
	D_80047690 = 0;
	D_80047698 = gameplayMode;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80000ED4_1AD4.s")

void func_80001050_1C50(s32 arg0) {
	D_80047578.unk4 = arg0;
	D_80047578.unk0 = 1;
	osSendMesg(&D_800433A8, &D_80047578, 1);
}

void func_8000108C_1C8C(s32 arg0) {
	D_80047578.unk4 = arg0;
	D_80047578.unk0 = 0;
	osSendMesg(&D_800433A8, &D_80047578, 1);
}

void func_800010C4_1CC4(s32 arg0) {
	D_80047694 = 0;
	D_80047578.unk4 = arg0;
	D_80047578.unk0 = 2;
	osSendMesg(&D_800433A8, &D_80047578, 1);
}

void func_80001108_1D08(void) {
	osMotorInit(&D_80043388, &D_80047610, 0);
	osMotorStop(&D_80047610);
}

void func_80001144_1D44(u8 arg0, u8 arg1, u8 arg2) {
	if (showDemoText != 1) {
		D_80047680 = arg0 * 0x10;
		D_80047684 = arg2;
		D_80047688 = arg1;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80001190_1D90.s")

void osViExtendVStart(s32 arg0) {
	__additional_scanline = arg0;
}

void func_8000140C_200C(OSThread *arg0) {
	__osActiveQueue2 = arg0;
}

OSThread *__osGetActiveQueue(void) {
	return __osActiveQueue2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80001424_2024.s")

// https://decomp.me/scratch/zsK5T
#ifdef NON_MATCHING
void func_800015B4_21B4(s32 arg0, s32 arg1) {
	u8 *v0;
	s32 var_v1;
	s32 var_a2;
	s32 var_a3;
	u8 var_t9;

	v0 = &D_800431C0 + arg0;
	v0[0] = 0x1C;
	var_v1 = (arg0 + 4) & 0xFFFF;
	var_a2 = 0;
	var_a3 = 0;
	if (arg1 > 0) {
		do {
			var_t9 = *(&D_800431C0 + var_v1);
			var_a3 = (var_a3 + 1) & 0xFFFF;
			var_v1 = (var_v1 + 1) & 0xFFFF;
			var_a2 = (var_a2 + var_t9) & 0xFFFF;
		} while (var_a3 < arg1);
	}
	v0[2] = var_a2;
	v0[3] = var_a2 >> 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800015B4_21B4.s")
#endif

// https://decomp.me/scratch/Y6mYv
#ifdef NON_MATCHING
s32 validateSaveVersionAndChecksum(s32 arg0, s32 arg1)
{
  u8 *ptr;
  u8 version;
  s32 stored_checksum;
  s32 computed_checksum;
  s32 i;
  ptr = ((u8 *) (&D_800431C0)) + arg0;
  version = ptr[0];
  if (version != 0x1C)
  {
	osSyncPrintf(&D_8003685C_3745C, version);
	return 0;
  }
  stored_checksum = ((ptr[3] << 8) + ptr[2]) & 0xFFFF;
  ptr += 4;
  computed_checksum = 0;
 for (i = 0;i < arg1;i = (i + 1) & 0xFFFF){
	  computed_checksum = (computed_checksum + (*ptr)) & 0xFFFF;
	  ptr++;
  }
  if (computed_checksum != stored_checksum)
  {
	osSyncPrintf(&D_80036870_37470, arg1, stored_checksum);
	return 0;
  }
  return 1;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/validateSaveVersionAndChecksum.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800016D8_22D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80001830_2430.s")

#ifdef NON_MATCHING
void func_80001984_2584(void) {
check:
	if (validateSaveVersionAndChecksum(4, 0x47) != 0) {
		Unk80047FB8 *p3;
		Unk80047FB8 *p2;
		Unk80047FB8 *p1;
		u8 *src;
		Unk80047FB8 *p3end;

		D_800313D0 = (s16) D_800431C8;
		p3 = D_80047FB8; src = &D_800431C9;
		p3end = &D_8004801C;
		p2 = p3; p1 = p3;

		do {
			p3->unk0 = src[0];
			p3->unk1 = src[1];
			p2->unk2 = src[2];
			p2->unk3 = src[3];
			p2->unk4 = src[4];
			p2->unk5 = src[5];
			p1->unk6 = 0;
			p1->unk8  = src[6];
			p1->unk8 += src[7] << 8;
			p1->unk8 += src[8] << 16;
			p1->unk8 += src[9] << 24;
			p1->unkC  = src[10];
			p1->unk10  = src[11];
			p1->unk10 += src[12] << 8;
			p1->unk10 += src[13] << 16;
			p3++;
			p2++;
			p1++;
			src += 0xE;
		} while (p3 != p3end);
		return;
	}
	func_80001830_2430();
	goto check;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80001984_2584.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/guess_prepareToSaveGame.s")

#ifdef NON_MATCHING
void func_800020E0_2CE0(s32 arg0, s32 arg1) {
	s32 srcOff = arg0 * 0x7A + 0x53;
	s32 srcIdx = srcOff + 1;
	u8 *srcPtr1 = &D_800431C0 + srcIdx;
	u8 *sp = &D_800431C0 + srcIdx + 1;
	s32 dstBase = arg1 * 0x7A;
	s32 dstOff = dstBase + 0x53;
	s32 dstIdx = dstOff + 1;
	u8 *dstPtr1 = &D_800431C0 + dstIdx;
	u8 *dp = &D_800431C0 + dstIdx + 1;

	(&D_800431C0)[dstOff] = (&D_800431C0)[srcOff];
	*dstPtr1 = *srcPtr1;

	arg0 = 2;
	arg1 = 0x76;
	do {
		arg0 += 4;
		dp += 4;
		dp[-4] = sp[0];
		dp[-3] = sp[1];
		sp += 4;
		dp[-2] = sp[-2];
		dp[-1] = sp[-1];
		continue;
	} while (arg0 != arg1);

	func_800015B4_21B4(dstBase + 0x4F, 0x76);
	func_800015B4_21B4(0, 0x1B9);
	if (D_80047608 != 0) {
		osEepromLongWrite(&D_80043388, 0, &D_800431C0, 0x1BD);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800020E0_2CE0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800021CC_2DCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/guess_loadSavedGame.s")

s32 func_80002A88_3688(s32 arg0) {
	return *(&D_80043243 + (arg0 * 0x7A)) & 0xF;
}

void getSaveFileName(s32 arg0, u8 *arg1)
{
	u8* sd = (u8*)&D_800431C0;
	s32 index;
	s32 temp_v0 = (arg0 * 0x7A) + 0x89;
	for (index =  0; index < 6; index++){
	  arg1[index] = temp_v0[sd + index];
	}
	arg1[6] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80002B20_3720.s")

s32 func_80002C58_3858(s32 arg0)
{
  u8 *ptr = ((u8 *) (&D_800431C0)) + (arg0 * 0x7A);
  s32 v1 = ptr[0x9C];
  v1 += ptr[0x9D] << 8;
  ptr = ptr;  
  return (ptr[0x9F] << 24) + (v1 += ptr[0x9E] << 16);
}

void func_80002CA4_38A4(void) {
	func_800016D8_22D8();
	guess_prepareToSaveGame(currentSaveFileIndex);
	func_800015B4_21B4(0, 0x1B9);
	if (D_80047608 != 0) {
		osEepromLongWrite(&D_80043388, 0, &D_800431C0, 0x1BD);
	}
}

void guess_saveHighScores(void) {
	func_800016D8_22D8();
	func_800015B4_21B4(0, 0x1B9);
	if (D_80047608 != 0) {
		osEepromLongWrite(&D_80043388, 0, &D_800431C0, 0x1BD);
	}
}

void func_80002D58_3958(void) {
	func_800021CC_2DCC(currentSaveFileIndex);
	func_800015B4_21B4(0, 0x1B9);
	if (D_80047608 != 0) {
		osEepromLongWrite(&D_80043388, 0, &D_800431C0, 0x1BD);
	}
}

void guess_deleteSavedData(void)
{
	u8 *var_v0;
	short new_var;
	u8 *var_v1;
	do {
		osSyncPrintf(&D_80036C64);
		var_v0 = &D_800431C0; new_var = 0; var_v1 = &D_8004337D;
		do { var_v0++; *(var_v0 - 1) = new_var; } while (((u32) var_v0) < ((u32) var_v1));
		func_80001830_2430();
		func_800021CC_2DCC(new_var);
		func_800021CC_2DCC(1);
		func_800021CC_2DCC(2);
	} while (0);
	func_800015B4_21B4(new_var, 0x1B9);
	if (D_80047608 != new_var) {
		osEepromLongWrite(&D_80043388, new_var, &D_800431C0, 0x1BD);
	}
}

void guess_restoreSavedData(void) {
	if (D_80047608 != 0) {
		func_8001D5A0_1E1A0(&D_80043388, 0, &D_800431C0, 0x1BD);
	}
	osSyncPrintf(D_80036C74); // RESTORE GAMENOTE
	if (validateSaveVersionAndChecksum(0, 0x1B9) == 0) {
		guess_deleteSavedData();
	}
}

void func_80002EB0_3AB0(void) { osContStartReadData(&D_80043388); }

void func_80002ED4_3AD4(void) { osContGetReadData(&D_800475B8); }

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80002EF8_3AF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80003064_3C64.s")

// https://decomp.me/scratch/66U7q
#ifdef NON_MATCHING
void func_800033D4_3FD4(u32 arg0, s32 arg1) {
	s32 temp_v0;
	s32 temp_t6;
	s32 temp_a2;
	u16 *temp_a0;
	u16 *temp_v0_2;

	temp_v0 = arg1 * 2;
	temp_t6 = arg0 & 0xFFFF;
	if (D_800475D8[arg1] & temp_t6) {
		temp_a0 = (u16 *)(temp_v0 + (u8 *)previousControllerButtonStates);
		if (*temp_a0 & temp_t6) {
			temp_v0_2 = (u16 *)((arg1 * 6) + (u8 *)currentControllerStates);
			temp_a2 = ~temp_t6;
			*temp_v0_2 &= temp_a2;
			if (temp_a0 != previousControllerButtonStates) {
				return;
			}
			D_800475F8 &= temp_a2;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800033D4_3FD4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_8000345C_405C.s")

s32 isButtonNewlyPressed(Controller controllerNum, Button buttonMask)
{
	s32 result = (currentControllerStates[controllerNum].button & buttonMask) != 0;
	if (result)
	{
		return (previousControllerButtonStates[controllerNum] & buttonMask) == 0;
	}
}

// https://decomp.me/scratch/TZvk8
#ifdef NON_MATCHING
void func_800035D8_41D8(s16 arg0) {
	if (!(currentControllerStates[0].button & 0x10)) {
		s8 temp_v0 = D_800475B8.stick_x;
		Unk80047588 *var_v1 = (Unk80047588 *)&D_800475B8;
	loop:
		temp_v0 = var_v1->stick_x;
		if (arg0 < temp_v0) {
			var_v1->stick_x = (s8)(temp_v0 - arg0);
		} else if (temp_v0 < -arg0) {
			var_v1->stick_x = (s8)(temp_v0 + arg0);
		} else {
			var_v1->stick_x = 0;
		}
		temp_v0 = var_v1->stick_y;
		if (arg0 < temp_v0) {
			var_v1->stick_y = (s8)(temp_v0 - arg0);
		} else if (temp_v0 < -arg0) {
			var_v1->stick_y = (s8)(temp_v0 + arg0);
		} else {
			var_v1->stick_y = 0;
		}
		var_v1++;
		if (var_v1 != (Unk80047588 *)&D_800475D0) goto loop;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800035D8_41D8.s")
#endif

s16 func_80003680_4280(f32 arg0) {
	f32 absval;

	if (-arg0 < arg0) {
		absval = arg0;
	} else {
		absval = -arg0;
	}
	if ((f64)absval > 1.0) {
		return 0;
	}
	if (arg0 < 0.0f) {
		return (s16)(-D_8003D000_3DC00[(s32)(-arg0 * 1024.0f)]);
	}
	return D_8003D000_3DC00[(s32)(arg0 * 1024.0f)];
}

s16 func_80003740_4340(f32 arg0) {
	s32 var_v1;

	var_v1 = 1;
	if (arg0 < 0.0f) {
		arg0 = -arg0;
		var_v1 = -1;
	}
	if ((f64) arg0 > 1.0) {
		arg0 = (f32)(1.0 / (f64)arg0);
		return (s16) ((0x4000 - D_8003D800_3E400[(s32) (arg0 * 1024.0f)]) * var_v1);
	}
	if ((f64) arg0 == 1.0) {
		return (s16) (var_v1 << 0xD);
	}
	return (s16) (D_8003D800_3E400[(s32) (arg0 * 1024.0f)] * var_v1);
}

s16 func_80003824_4424(f32 arg0, f32 arg1) {
	s32 sign;

	if (arg0 == 0.0f) {
		sign = (arg1 < 0.0f) ? -1 : 1;
		return (s16) (sign << 0xE);
	}
	sign = (arg0 < 0.0f) ? -1 : 1;
	if (sign == 1) {
		return func_80003740_4340(arg1 / arg0);
	}
	return (s16) (func_80003740_4340(arg1 / arg0) + 0x8000);
}

void setRandomSeed(s32 arg0) {
	D_800476C0 = arg0;
}

// getRandomNumber
s32 func_800038E0_44E0(void)
{
	s64 new_var;
	D_800476C0 = (D_800476C0 * 0x41C64E6D) + 0x3039;
	new_var = 0xFFFF;
	return (((u32) D_800476C0) >> 16) & new_var;
}

#ifdef NON_MATCHING
/* possible: powf_i */
f32 func_80003910_4510(f32 arg0, s32 arg1) {
	f32 result;
	s32 i;

	result = 1.0f;
	if (arg1 != 0) {
		for (i = arg1; i > 0; i--) {
			result *= arg0;
		}
	}
	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80003910_4510.s")
#endif

#ifdef NON_MATCHING
s32 func_8000393C_453C(f32 arg0, s32 arg1) {
	f32 var_f20;
	f32 var_f22;
	s32 var_s2;
	s32 var_s1;
	s32 var_s0;
	s32 var_v0;

	var_s2 = arg1;
	var_f22 = arg0;
	var_s0 = 0x8000;
	var_f20 = func_80003910_4510(arg0, arg1 >> 16);
	var_v0 = 0x10;
	var_s1 = 0xF;
	if (var_v0 != 0) {
		do {
			var_f22 = sqrtf(var_f22);
			if (var_s2 & var_s0) {
				var_f20 *= var_f22;
			}
			var_v0 = var_s1;
			var_s0 >>= 1;
			var_s1--;
		} while (var_s1 != 0);
	}
	return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_8000393C_453C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800039D0_45D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80003DE8_49E8.s")

void func_80004214_4E14(s16 arg0, s32 arg1) {
	Unk80052B40 v;
	v.unk0 = arg0;
	v.unk2 = arg0;
	v.unk4 = arg0;
	func_800039D0_45D0(0, 0, &v, arg1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80004254_4E54.s")

#ifdef NON_MATCHING
s32 func_80004498_5098(f32 arg0) {
	if (((s32)((u32)(*(s32 *)&arg0 << 1) >> 0x18)) - 0x7F != 0x80) {
		return 1;
	}
	if (*(s32 *)&arg0 << 9) {
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80004498_5098.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800044D4_50D4.s")
