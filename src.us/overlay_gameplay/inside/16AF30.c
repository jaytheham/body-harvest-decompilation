#include <ultra64.h>
#include "common.h"

void func_80082E70_16AF30(f32 *arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg1->x * arg0[0] + arg1->y * arg0[3] + arg0[6] * arg1->z;
	arg2->y = arg1->x * arg0[1] + arg1->y * arg0[4] + arg0[7] * arg1->z;
	arg2->z = arg1->x * arg0[2] + arg1->y * arg0[5] + arg0[8] * arg1->z;
}

void func_80082F04_16AFC4(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg0->y * arg1->z - arg0->z * arg1->y;
	arg2->y = arg0->z * arg1->x - arg0->x * arg1->z;
	arg2->z = arg0->x * arg1->y - arg0->y * arg1->x;
}

void func_80082F74_16B034(f32 arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg1->x / arg0;
	arg2->y = arg1->y / arg0;
	arg2->z = arg1->z / arg0;
}

f32 func_80082F9C_16B05C(Vec3f *arg0) {
	return (arg0->x * arg0->x) + (arg0->y * arg0->y) + (arg0->z * arg0->z);
}

f32 func_80082FC4_16B084(Vec3f *arg0) {
	f32 var_f12;

	var_f12 = func_80082F9C_16B05C(arg0);
	if ((f64) var_f12 != 0.0) {
		var_f12 = sqrtf(var_f12);
	}
	return var_f12;
}

// CURRENT(502)
#ifdef NON_MATCHING
void func_80083014_16B0D4(Vec3f *arg0, Vec3f *arg1) {
	f32 temp_f0;
	temp_f0 = func_80082FC4_16B084(arg0);
	if ((f64) temp_f0 == 0.0) {
		osSyncPrintf(D_800A4F70_18D030, arg0);
		*arg1 = *arg0;
		return;
	}
	func_80082F74_16B034(temp_f0, arg0, arg1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083014_16B0D4.s")
#endif

f32 func_80083090_16B150(Vec3f *arg0, Vec3f *arg1) {
	return (arg0->x * arg1->x) + (arg0->y * arg1->y) + (arg0->z * arg1->z);
}

void func_800830C0_16B180(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg0->x - arg1->x;
	arg2->y = arg0->y - arg1->y;
	arg2->z = arg0->z - arg1->z;
}

void func_800830F4_16B1B4(f32 arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg1->x * arg0;
	arg2->y = arg1->y * arg0;
	arg2->z = arg1->z * arg0;
}

void func_8008311C_16B1DC(void) {
	f32 sp34[3][3];
	s16 i;
	s16 j;
	Vec3f sp24;

	for (i = 0; i < 3; i++) {
		for (j = 0; j < 3; j++) {
			sp34[i][j] = D_800E7350[j][i];
		}
	}

	sp24.x = -0.5f;
	sp24.y = 0.5f;
	sp24.z = 0.0f;
	func_80082E70_16AF30(&sp34[0][0], &sp24, (Vec3f *)D_800FB6A8);
	sp24.x = -sp24.x;
	func_80082E70_16AF30(&sp34[0][0], &sp24, &D_800FB6B4);
	func_80082F04_16AFC4((Vec3f *)D_800FB6A8, &D_800FB6B4, &D_800FB6C0);
	func_80083014_16B0D4(&D_800FB6C0, &D_800FB6C0);
}

// https://decomp.me/scratch/qmTkk
u8 func_80083224_16B2E4(u8 arg0)
{
  u8 slot;
  u8 count;
  UnkFB6F8Entry *slotPtr;
  u8 i;
  count = D_800FB7AC;
  if (count >= 0xF)
  {
	osSyncPrintf(&D_800A4F94_18D054, arg0);
	slot = 0xFB;
  }
  else
  {
	slot = D_800FB7AD;
	slotPtr = &D_800FB6F8[slot];
	slotPtr->unk0 = arg0;
	slotPtr->unk4 = 0;
	slotPtr->unk6 = -6;
	slotPtr->unk8 = -6;
	D_800FB7AC = count + 1;
	D_800FB7AD = 0xF;
	i = slot;
	if (i < 0xF) {
	  do {
		if (D_800FB6F8[i].unk0 == 0xFA) {
		  D_800FB7AD = i;
		  i = 0xF;
		}
		i++;
	  } while (i < 0xF);
	}
  }
  return slot;
}

void func_80083300_16B3C0(u8 arg0) {

	if (D_800FB6F8[arg0].unk0 == 0xFA) {
		osSyncPrintf(&D_800A4FD8_18D098);
	} else {
		D_800FB6F8[arg0].unk0 = 0xFA;
		D_800FB7AC = D_800FB7AC - 1;
		if (arg0 < D_800FB7AD) {
			D_800FB7AD = arg0;
		}
	}
}

s16 func_80083390_16B450(u8 arg0) {
	s16 i;
	s16 effect;

	if (D_800FC8E0 >= 0xC8) {
		osSyncPrintf(&D_800A501C_18D0DC);
		effect = -3;
	} else {
		effect = D_800FC8E2;
		((Unk84EECEffect *)&D_800FB7B0)[effect].unk0 = 1;
		((Unk84EECEffect *)&D_800FB7B0)[effect].unk2 = 1;
		((Unk84EECEffect *)&D_800FB7B0)[effect].unk4 = -5;

		if (D_800FB6F8[arg0].unk4 == 0) {
			D_800FB6F8[arg0].unk6 = effect;
			((Unk84EECEffect *)&D_800FB7B0)[effect].unk6 = -4;
		} else {
			((Unk84EECEffect *)&D_800FB7B0)[effect].unk6 = D_800FB6F8[arg0].unk8;
			((Unk84EECEffect *)&D_800FB7B0)[D_800FB6F8[arg0].unk8].unk4 = effect;
		}

		D_800FB6F8[arg0].unk8 = effect;
		D_800FB6F8[arg0].unk4++;
		D_800FC8E0++;
		D_800FC8E2 = 0xC8;

		i = effect;
		if (effect < 0xC8) {
			do {
				if (((Unk84EECEffect *)&D_800FB7B0)[i].unk0 == 0) {
					D_800FC8E2 = i;
					i = 0xC8;
				}
				i++;
			} while (i < 0xC8);
			}
	}

	return effect;
}

s16 func_800834CC_16B58C(u8 arg0) {
	s16 var_a2;
	s16 sp24;

	var_a2 = func_80083390_16B450(arg0);
	if (var_a2 != -3) {
		sp24 = func_80083390_16B450(arg0);
		if (sp24 == -3) {
			func_800835F0_16B6B0(var_a2, arg0);
			var_a2 = -3;
		} else if (func_80083390_16B450(arg0) == -3) {
			func_800835F0_16B6B0(var_a2, arg0);
			func_800835F0_16B6B0(sp24, arg0);
			var_a2 = -3;
		}
	}
	return var_a2;
}

s16 func_80083584_16B644(u8 arg0) {
	s16 sp1E;

	sp1E = func_80083390_16B450(arg0);
	if (sp1E != -3) {
		if (func_80083390_16B450(arg0) == -3) {
			func_800835F0_16B6B0(sp1E, arg0);
			sp1E = -3;
		}
	}
	return sp1E;
}

// CURRENT(3281)
#ifdef NON_MATCHING
void func_800835F0_16B6B0(s16 arg0, u8 arg1) {
	Unk84EECEffect *effect;
	UnkFB6F8Entry *slot;
	s16 temp;
	Unk84EECEffect *baseEffect;

	effect = &((Unk84EECEffect *)D_800FB7B0)[arg0];
	baseEffect = effect;
	slot = &D_800FB6F8[arg1];

	if (effect->unk0 == 0) {
		osSyncPrintf(&D_800A5064_18D124, arg0, arg1);
		return;
	}

	switch (slot->unk4) {
		case 0:
			osSyncPrintf(&D_800A50AC_18D16C);
			slot->unk6 = -6;
			slot->unk8 = -6;
			return;

		case 1:
			slot->unk6 = -6;
			slot->unk8 = -6;
			break;

		case 2:
			temp = effect->unk6;
			if (temp == -4) {
				slot->unk6 = effect->unk4;
				effect = &((Unk84EECEffect *)D_800FB7B0)[slot->unk6];
				effect->unk6 = -4;
				effect->unk4 = -5;
			} else if (effect->unk4 == -5) {
				slot->unk8 = temp;
				effect = &((Unk84EECEffect *)D_800FB7B0)[slot->unk6];
				effect->unk6 = -4;
				effect->unk4 = -5;
			} else {
				osSyncPrintf(&D_800A50E8_18D1A8);
			}
			break;

		default:
			temp = effect->unk6;
			if (temp == -4) {
				slot->unk6 = effect->unk4;
				effect = &((Unk84EECEffect *)D_800FB7B0)[effect->unk4];
				effect->unk6 = -4;
			} else if (effect->unk4 == -5) {
				slot->unk8 = temp;
				effect = &((Unk84EECEffect *)D_800FB7B0)[temp];
				effect->unk4 = -5;
			} else {
				effect = &((Unk84EECEffect *)D_800FB7B0)[effect->unk4];
				effect->unk6 = temp;
				effect = &((Unk84EECEffect *)D_800FB7B0)[slot->unk6];
				effect->unk4 = slot->unk8;
			}
			break;
	}

	baseEffect->unk0 = 0;
	slot->unk4--;
	D_800FC8E0--;
	if (arg0 < D_800FC8E2) {
		D_800FC8E2 = arg0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800835F0_16B6B0.s")
#endif

// https://decomp.me/scratch/6yUii
// CURRENT(1286)
#ifdef NON_MATCHING
void func_80083814_16B8D4(s32 arg0, u8 arg1)
{
	s16 sp1E;
	s16 sp22;
	if (arg0 < 0)
	{
		goto fail;
	}
	if (arg0 >= 0xC8)
	{
		goto fail;
	}
	if (arg1 >= 0xF)
	{
		goto fail;
	}
	if ((D_800FB6F8[arg1].unk0 != 0xB) && (D_800FB6F8[arg1].unk0 != 0xC))
	{
		goto fail;
	}
	sp1E = ((Unk84EECEffect *)&D_800FB7B0)[arg0].unk4;
	func_800835F0_16B6B0(arg0, arg1);
	sp22 = ((Unk84EECEffect *)&D_800FB7B0)[sp1E].unk4;
	func_800835F0_16B6B0(sp1E, arg1);
	func_800835F0_16B6B0(sp22, arg1);
	return;
fail:
	osSyncPrintf(&D_800A5128_18D1E8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083814_16B8D4.s")
#endif

void func_80083924_16B9E4(s16 arg0, u8 arg1) {
	s16 sp1E;

	if (arg0 >= 0 && arg0 < 0xC8 && arg1 < 0xF) {
		sp1E = ((Unk84EECEffect *)D_800FB7B0)[arg0].unk4;
		func_800835F0_16B6B0(arg0, arg1);
		func_800835F0_16B6B0(sp1E, arg1);
		return;
	}
	osSyncPrintf(&D_800A5168_18D228);
}

void func_800839B8_16BA78(u8 arg0) {
	if (D_800FB6F8[arg0].unk4 > 0) {
		do {
			func_800835F0_16B6B0(D_800FB6F8[arg0].unk6, arg0);
		} while (D_800FB6F8[arg0].unk4 > 0);
	}
}

// CURRENT(5876)
#ifdef NON_MATCHING
void func_80083A20_16BAE0(u8 arg0, Vec3f *arg1, u8 arg2, u8 arg3) {
	f32 sp3C;
	volatile f32 sp38;
	f32 sp34;
	f32 temp_f0;
	s16 idx;
	s16 scale;
	s16 sp30;
	s16 sp2E;
	s16 temp;
	u8 *effectUnit;
	u8 *newUnit;

	// D_800FB7B0 references need to be converted to array & struct access
	// The struct itself might need updating to be correct
	// Then all this pointer arithmetic & casting can be replaced with struct access
	effectUnit = (u8 *)D_800FB7B0 + D_800FB6F8[arg0].unk6 * 22 + 8;
	idx = func_80083390_16B450(arg0);
	if (idx != -3) {
		if (effectUnit[0xA] == 1) {
			newUnit = (u8 *)D_800FB7B0 + idx * 22 + 8;
			*(s16 *)&newUnit[0] = *(s16 *)&effectUnit[0];
			*(s16 *)&newUnit[2] = *(s16 *)&effectUnit[2];
			*(s16 *)&newUnit[4] = *(s16 *)&effectUnit[4];
			sp34 = (f32) ((f64) (f32) (func_800038E0_44E0() % arg3) / D_800A5450_18D510);
			if ((func_800038E0_44E0() % 21) < 10) {
				temp_f0 = sp34;
				sp34 = 0.0f - temp_f0;
			}
			sp34 += arg1->x;
			sp38 = (f32) ((f64) (f32) (func_800038E0_44E0() % arg3) / D_800A5458_18D518);
			if ((func_800038E0_44E0() % 21) < 10) {
				temp_f0 = sp38;
				sp38 = 0.0f - temp_f0;
			}
			sp38 += arg1->y;
			sp3C = (f32) ((f64) (f32) (func_800038E0_44E0() % arg3) / D_800A5460_18D520);
			if ((func_800038E0_44E0() % 21) < 10) {
				temp_f0 = sp3C;
				sp3C = 0.0f - temp_f0;
			}
			sp3C += arg1->z;
			func_80083014_16B0D4((Vec3f *)&sp34, (Vec3f *)&sp34);
			scale = arg2;
			scale /= 4;
			((s8 *)newUnit)[6] = (s8) (s32) ((f32) scale * sp34);
			((s8 *)newUnit)[7] = (s8) (s32) ((f32) scale * sp38);
			newUnit[9] = 0xFF;
			newUnit[0xA] = 0;
			((s8 *)newUnit)[8] = (s8) (s32) ((f32) scale * sp3C);
			return;
		}
		sp30 = (func_800038E0_44E0() % (*(s16 *)&effectUnit[0xC] * 2)) - *(s16 *)&effectUnit[0xC];
		sp2E = (func_800038E0_44E0() % (*(s16 *)&effectUnit[0xC] * 2)) - *(s16 *)&effectUnit[0xC];
		temp = (func_800038E0_44E0() % (*(s16 *)&effectUnit[0xC] * 2)) - *(s16 *)&effectUnit[0xC];
		newUnit = (u8 *)&D_800FB7B0 + idx * 22 + 8;
		*(s16 *)&newUnit[0] = *(s16 *)&effectUnit[0] + sp30;
		*(s16 *)&newUnit[2] = *(s16 *)&effectUnit[2] + sp2E;
		*(s16 *)&newUnit[4] = *(s16 *)&effectUnit[4] + temp;
		((s8 *)newUnit)[6] = (s8) -(sp30 / (s32)effectUnit[9]);
		((s8 *)newUnit)[7] = (s8) -(sp2E / (s32)effectUnit[9]);
		((s8 *)newUnit)[8] = (s8) -(temp / (s32)effectUnit[9]);
		newUnit[9] = 0xC;
		newUnit[0xA] = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083A20_16BAE0.s")
#endif

// CURRENT(450)
#ifdef NON_MATCHING
void func_80083F08_16BFC8(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6, u8 arg7, u8 arg8, u8 arg9, u8 arg10, u8 arg11, u8 arg12) {
	s16 effect;
	u8 slot;
	Unk84EECEffect *entry;
	Vec3f dir;
	s32 i;
	s32 count;

	i = func_80083224_16B2E4(2);
	slot = i;
	if (i != 0xFB) {
		effect = func_80083390_16B450(slot);
		if (effect == -3) {
			osSyncPrintf(&D_800A51A8_18D268);
			func_80083300_16B3C0(slot);
			return;
		}

		entry = &D_800FB7B0[effect];
		// Surely this should actually reference some property of entry or D_800FB7B0
		*(&D_800FB702 + (slot * 6)) = effect;
		entry->unk2 = arg9;
		entry->unkE = arg10;
		entry->unkF = arg11;
		entry->unk10 = arg12;
		entry->unk8 = arg0 * 4;
		entry->unkA = arg1 * 4;
		entry->unkC = arg2 * 4;
		entry->unk12 = 1;
		dir.x = arg3;
		dir.y = arg4;
		dir.z = arg5;
		func_80083014_16B0D4(&dir, &dir);
		count = arg8;
		arg8 += 0;
		if (count >= 0x33) {
			count = 0x32;
		} else if (count == 0) {
			osSyncPrintf(&D_800A51F8_18D2B8);
			count = 1;
		}

		i = 0;
		if (count > 0) {
			do {
				func_80083A20_16BAE0(slot, &dir, arg6, arg7);
				i = (i + 1) & 0xFF;
			} while (i < count);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083F08_16BFC8.s")
#endif

// CURRENT(375)
#ifdef NON_MATCHING
void func_800840F0_16C1B0(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4, u8 arg5, u8 arg6) {
	u8 slot;
	s32 effect;
	Unk84EECEffect *entry;
	s32 count;
	s32 i;

	effect = func_80083224_16B2E4(2);
	if (effect != 0xFB) {
		slot = effect;
		effect = func_80083390_16B450(slot);
		if (effect == -3) {
			osSyncPrintf(&D_800A5248_18D308);
			func_80083300_16B3C0(slot);
			return;
		}

		// Surely this should actually reference some property of entry or D_800FB7B0
		// D_800FB702 is a fake symbol, it should be a property of D_800FB7B0 or entry
		*(&D_800FB702 + (slot * 6)) = effect;
		entry = &((Unk84EECEffect *)D_800FB7B0)[effect];
		count = arg5;

		entry->unk8 = arg0 * 4;
		entry->unkA = arg1 * 4;
		arg5 += 0;
		entry->unkC = arg2 * 4;
		entry->unkE = 0xFF;
		entry->unkF = 0xFF;
		entry->unk10 = 0xFF;
		entry->unk12 = 2;
		entry->unk2 = arg6;
		entry->unk14 = arg3;
		entry->unk11 = arg4;

		if (count >= 0x33) {
			count = 0x32;
		} else if (count == 0) {
			osSyncPrintf(&D_800A5298_18D358);
			count = 1;
		}

		i = 0;
		if (count > 0) {
			do {
				func_80083A20_16BAE0(slot, 0, 0, 0);
				i = (i + 1) & 0xFF;
			} while (i < count);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800840F0_16C1B0.s")
#endif

// CURRENT(2581)
#ifdef NON_MATCHING
void func_80084258_16C318(s32 arg0) {
	typedef struct {
		s16 unk0;
		s16 unk2;
		s16 unk4;
		s8 unk6;
		s8 unk7;
		s8 unk8;
		u8 unk9;
		u8 unkA;
	} Unk84258Pos;

	u8 slot;
	UnkFB6F8Entry *owner;
	s16 effect;
	Unk84EECEffect *a3;
	Unk84258Pos *s2;

	slot = arg0;
	owner = &D_800FB6F8[slot];
	effect = owner->unk6;
	a3 = &D_800FB7B0[effect];
	effect = a3->unk4;
	s2 = (Unk84258Pos *)&a3->unk8;

	if ((effect != -5) && (effect != -6)) {
		u8 life;
		Unk84258Pos *dstPos;
// need to replace this with a for/while/do loop
loop_5:
		if (s2->unkA == 2) {
			life = s2->unk9;
			if (life == 0) {
				func_800839B8_16BA78(slot);
				func_80083300_16B3C0(slot);
				return;
			}

			{
				Unk84EECEffect *entry;
				s16 pos0;
				s16 pos2;
				s16 pos4;

				entry = &D_800FB7B0[effect];
				dstPos = (Unk84258Pos *)&entry->unk8;
				pos0 = dstPos->unk0;
				pos2 = dstPos->unk2;
				pos4 = dstPos->unk4;
				dstPos->unk6 = (s8)((s2->unk0 - pos0) / life);
				dstPos->unk7 = (s8)((s2->unk2 - pos2) / s2->unk9);
				dstPos->unk8 = (s8)((s2->unk4 - pos4) / s2->unk9);
				dstPos->unk0 = pos0 + dstPos->unk6;
				dstPos->unk2 = pos2 + dstPos->unk7;
				dstPos->unk4 = pos4 + dstPos->unk8;
				if (dstPos->unk9 < 0xEB) {
					dstPos->unk9 += 0x14;
				}
				a3 = entry;
			}
		} else {
			Unk84EECEffect *entry;
			s16 nextEffect;

			entry = &D_800FB7B0[effect];
			dstPos = (Unk84258Pos *)&entry->unk8;

			if (dstPos->unk9 < 0xF) {
				if (owner->unk4 < 3) {
					func_800839B8_16BA78(slot);
					func_80083300_16B3C0(slot);
					return;
				}

				nextEffect = entry->unk4;
				func_800835F0_16B6B0(effect, slot);
				effect = nextEffect;
				goto block_26;
			} else {
				dstPos->unk0 += dstPos->unk6;
				dstPos->unk4 += dstPos->unk8;
				dstPos->unk2 += dstPos->unk7;
				dstPos->unkA += 1;
				if (dstPos->unkA >= 0xB) {
					dstPos->unk9 -= 0xA;
				}
				if (dstPos->unk2 < 2) {
					dstPos->unk2 = 2;
					dstPos->unk7 = 0;
				}
				if (dstPos->unk7 >= -0x13) {
					dstPos->unk7 -= 1;
				} else {
					dstPos->unk7 = -0x14;
				}
				a3 = entry;
			}
		}

		effect = a3->unk4;
block_26:
		if ((effect != -5) && (effect != -6)) {
			goto loop_5;
		}
	}

	if (s2->unkA == 2) {
		s2->unk9 -= 1;
		s2->unk6 = (s8)((func_800038E0_44E0() % 55) + 0xC8);
		s2->unk7 = (s8)((func_800038E0_44E0() % 55) + 0xC8);
		s2->unk8 = (s8)((func_800038E0_44E0() % 55) + 0xC8);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084258_16C318.s")
#endif

// CURRENT(1833)
#ifdef NON_MATCHING
void func_80084628_16C6E8(s32 arg0) {
	Unk84EECEffect *base;
	Unk84EECEffect *entry;
	s16 effect;
	s16 spread;
	u16 quarter;
	s32 half;
	s32 third;
	s32 rnd;
	u8 slot;
	s32 index;

	slot = arg0 & 0xFF;
	index = D_800FB6F8[slot].unk6;
	base = &D_800FB7B0[index];
	spread = base->unk2;
	effect = func_80083390_16B450(slot);
	if (effect == -3) {
		return;
	}

	rnd = func_800038E0_44E0();
	index = effect;
	entry = &D_800FB7B0[index];
	quarter = spread / 4;
	entry->unk2 = (rnd % quarter) + quarter;
	entry->unkE = (base->unk11 + base->unkE) / 2;
	entry->unkF = (base->unk12 + base->unkF) / 2;
	entry->unk10 = (base->unk13 + base->unk10) / 2;

	rnd = func_800038E0_44E0();
	entry->unk11 = (rnd % 0x32) + 0x5A;
	rnd = func_800038E0_44E0();
	half = quarter / 2;
	third = quarter / 3;

	entry->unk12 = (rnd % half) + third;
	rnd = func_800038E0_44E0();
	entry->unk14 = (rnd % half) + third;
	rnd = func_800038E0_44E0();
	entry->unk13 = (rnd % half) + third;
	rnd = func_800038E0_44E0();
	entry->unk15 = (rnd % half) + third;

	rnd = func_800038E0_44E0();
	entry->unk8 = ((rnd % spread) / 2) + base->unk8 - quarter;
	entry->unkA = base->unkA;

	rnd = func_800038E0_44E0();
	entry->unkC = ((rnd % spread) / 2) + base->unkC - quarter;

}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084628_16C6E8.s")
#endif

// CURRENT(2601)
#ifdef NON_MATCHING
void func_80084980_16CA40(s32 arg0, s32 arg1) {
	Unk84EECEffect *entry;
	s16 *baseFields;
	s16 baseIdx;
	s16 effect;
	s16 spread;
	u16 quarter;
	s32 rnd;

	// is arg0 actually u8? It is masked with 0xFF in the first line, so it might be
	baseIdx = D_800FB6F8[arg0 & 0xFF].unk6;
	baseFields = &D_800FB7B0[baseIdx].unk8;
	spread = baseFields[-3];

	// is arg1 actually u8 too?
	if ((arg1 & 0xFF) == 0xFB) {
		return;
	}

	effect = func_80083390_16B450(arg1 & 0xFF);
	if (effect == -3) {
		return;
	}

	rnd = func_800038E0_44E0();
	quarter = spread / 4;
	D_800FB7B0[effect].unk2 = (rnd % 5) + quarter;

	rnd = func_800038E0_44E0();
	entry = &D_800FB7B0[effect];
	entry->unk8 = baseFields[0] + ((rnd % spread) / 2) - quarter;

	rnd = func_800038E0_44E0();
	entry->unkA = (rnd % 0xA) + baseFields[1] + quarter;

	rnd = func_800038E0_44E0();
	entry->unkC = baseFields[2] + ((rnd % spread) / 2) - quarter;
	entry->unk11 = 0x3C;
	entry->unk12 = 0;

	rnd = func_800038E0_44E0();
	entry->unkE = (rnd % 0x1E) + 0xB4;

	rnd = func_800038E0_44E0();
	entry->unkF = (rnd % 0x1E) + 0xA0;

	rnd = func_800038E0_44E0();
	entry->unk10 = (rnd % 0x1E) + 0xA0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084980_16CA40.s")
#endif

#ifdef NON_MATCHING
s32 func_80084C18_16CCD8(u8 arg0)
{
	u8 result = func_80083224_16B2E4(1);

	if (result != 0xFB)
	{
		// Need to figure out which array/struct this is actually referencing, and then replace the pointer arithmetic with proper struct access
		*((s16 *)((&D_800FB6FA) + (result * 0xC))) = arg0;
	}
	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084C18_16CCD8.s")
#endif

// CURRENT(8388)
#ifdef NON_MATCHING
u8 func_80084C68_16CD28(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u16 arg4, u8 arg5, u8 arg6, u8 arg7) {
	UnkFB6F8Entry *owner;
	Unk84EECEffect *entry;
	Unk84EECEffect *linked;
	u8 slot;
	s16 effect;

	slot = func_80083224_16B2E4(0);
	if (slot == 0xFB) {
		return slot;
	}

	effect = func_80083584_16B644(slot);
	if (effect == -3) {
		osSyncPrintf(D_800A52E8_18D3A8);
		func_80083300_16B3C0(slot);
		return 0xFB;
	}

	owner = &D_800FB6F8[slot];
	entry = &D_800FB7B0[effect];

	entry->unk8 = arg0 * 4;
	// This should probably be a struct access instead of pointer arithmetic:
	*(s16 *)((u8 *)owner + 0xA) = effect;
	entry->unkC = arg2 * 4;
	linked = &D_800FB7B0[entry->unk4];
	entry->unkA = arg1 * 4;
	linked->unkC = 0;

	entry->unkE = arg5;
	entry->unkF = arg6;
	entry->unk10 = arg7;

	if (arg4 == 0xFFFF) {
		entry->unk2 = arg3;
	} else {
		entry->unk2 = arg3 / 16;
	}

	if (entry->unk2 < 0x10) {
		entry->unk2 = 0x10;
	}

	linked->unkA = arg3;
	if (linked->unkA < 0x18) {
		linked->unkA = 0x18;
	}

	linked->unk8 = arg4;

	if ((u16)(arg5 + ((arg5 / 3) & 0xFF)) >= 0x100) {
		entry->unk11 = 0xFF;
	} else {
		entry->unk11 = (u16)(arg5 + ((arg5 / 3) & 0xFF));
	}

	if ((u16)(arg6 + ((arg6 / 3) & 0xFF)) >= 0x100) {
		entry->unk12 = 0xFF;
	} else {
		entry->unk12 = (u16)(arg6 + ((arg6 / 3) & 0xFF));
	}

	if ((u16)(arg7 + ((arg7 / 3) & 0xFF)) >= 0x100) {
		entry->unk13 = 0xFF;
	} else {
		entry->unk13 = (u16)(arg7 + ((arg7 / 3) & 0xFF));
	}

	owner->unk2 = func_80084C18_16CCD8(slot);

	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084C68_16CD28.s")
#endif

// CURRENT(2085)
#ifdef NON_MATCHING
s16 func_80084EEC_16CFAC(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4, u8 arg5, u8 arg6, u8 arg7, u8 arg8, u8 arg9, u8 arg10, u8 arg11) {
	extern f64 D_800A5468_18D528;

	s16 effect;
	s16 temp;
	s16 x;
	s16 y;
	s16 z;
	u8 scale;
	Unk84EECEffect *entry;
	Unk84EECEffect *other;
	s32 ofs;

	effect = func_80083584_16B644(0xD);
	if (effect != -3) {
		temp = (s16)(s32)((f64)(f32)arg3 * D_800A5468_18D528);

		// This ptr arithmetic is probably wrong, it should be an array access instead:
		ofs = (effect << 2) - effect;
		ofs = (ofs << 2) - effect;
		ofs <<= 1;
		entry = (Unk84EECEffect *)((u8 *)D_800FB7B0 + ofs);
		x = arg0 * 4;
		y = arg1 * 4;
		z = arg2 * 4;
		entry->unk8 = x;
		entry->unkA = y;
		entry->unkC = z;
		entry->unk2 = temp;
		entry->unk11 = arg10;
		entry->unk15 = arg11;
		entry->unkE = arg4;
		entry->unkF = arg5;
		entry->unk10 = arg6;

		scale = 0xF;
		if ((arg10 + 0xF) >= 0x100) {
			scale = 0xFF - arg10;
		}

		// Does the entry struct need to be updated to include these fields so we don't have to do pointer arithmetic?
		((u8 *)entry + 8)[0xB] = scale;
		((u8 *)entry + 8)[0xA] = 0;
		((u8 *)entry + 8)[0xC] = 0;

		// Again shoud be an array access instead of pointer arithmetic:
		ofs = (entry->unk4 << 2) - entry->unk4;
		ofs = (ofs << 2) - entry->unk4;
		ofs <<= 1;
		other = (Unk84EECEffect *)((u8 *)D_800FB7B0 + ofs);
		other->unk8 = x;
		other->unkA = y;
		other->unkC = z;
		other->unk11 = arg10;
		other->unk13 = scale;
		other->unk12 = 0;
		other->unk14 = 0;
		other->unk15 = arg11;
		other->unk2 = arg3;
		other->unkE = arg7;
		other->unkF = arg8;
		other->unk10 = arg9;
	}

	return effect;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084EEC_16CFAC.s")
#endif

// https://decomp.me/scratch/8LzOB
// CURRENT(8)
#ifdef NON_MATCHING
s16 func_8008506C_16D12C(s16 arg0, s16 arg1, s16 arg2, s16 arg3)
{
  u8 *temp_s0;
 s16 effect;
 s32 half;  
  effect = func_80083390_16B450(0xC);
  if (effect != (-3))
  {
	// need to replace all this pointer arithmetic with proper array/struct access
		temp_s0 = (u8 *)D_800FB7B0 + effect * 0x16;
		*(s16 *)(temp_s0 + 2) = arg3;
		*(s16 *)(temp_s0 + 8) = arg0 * 4;
		*(s16 *)(temp_s0 + 0xA) = arg1 * 4;
		*(s16 *)(temp_s0 + 0xC) = arg2 * 4;
		temp_s0 += 8;
	
		half = arg3 / 2;
		// 0x11
		*(s8 *)(temp_s0 + 9) = (func_800038E0_44E0() % half) + arg3 / 3;
		// 0x13
		*(s8 *)(temp_s0 + 0xb) = (func_800038E0_44E0() % half) + arg3 / 3;
		// 0x12
		*(s8 *)(temp_s0 + 0xa) = (func_800038E0_44E0() % half) + arg3 / 3;
		// 0x14
		*(s8 *)(temp_s0 + 0xc) = (func_800038E0_44E0() % half) + arg3 / 3;
		// 0xE
	*(s16 *)(temp_s0 + 0x6) = func_80084EEC_16CFAC(arg0, arg1 + (arg3 / 8), arg2, arg3 * 2, 0xF0, 0xC8, 0x64, 0xFF, 0xB4, 0x46, 0x32, 1);
  }
  return effect;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008506C_16D12C.s")
#endif

// CURRENT(3129)
#ifdef NON_MATCHING
void func_800852B8_16D378(s32 arg0) {
	extern f64 D_800A5470_18D530;
	extern f64 D_800A5478_18D538;
	extern f64 D_800A5480_18D540;

	u8 slot;
	s16 child;
	Vec3f sp44;
	Vec3f sp38;
	s32 pad1;
	Unk84EECEffect *base;
	Unk84EECEffect *entry;
	u8 *baseBytes;

	// is arg0 actually u8?
	slot = arg0 & 0xFF;
	// Need to replace this pointer arithmetic with proper array/struct access:
	base = &D_800FB7B0[*(s16 *)(&D_800FB6FE + (slot * 0xC))];
	child = func_80083390_16B450(slot);
	if (child != -3) {
		entry = &D_800FB7B0[child];
		entry->unk8 = base->unk8;
		entry->unkA = base->unkA;
		entry->unkC = base->unkC;

		baseBytes = (u8 *)D_800FB7B0 + base->unk4 * 0x16;
		entry->unk11 = ((Unk84EECEffect *)baseBytes)->unk10;
		baseBytes += 8;

		entry->unk2 = (func_800038E0_44E0() % (base->unk2 * 2)) + base->unk2;

		sp44.x = (f32)(s8)baseBytes[0];
		sp44.y = (f32)(s8)baseBytes[1];
		sp44.z = (f32)(s8)baseBytes[2];
		func_80083014_16B0D4(&sp44, &sp44);

		sp38.x = (f32)((f64)(f32)(func_800038E0_44E0() % baseBytes[4]) / D_800A5470_18D530);
		if ((func_800038E0_44E0() % 21) < 10) {
			sp38.x = 0.0f - sp38.x;
		}
		sp38.x += sp44.x;

		sp38.y = (f32)((f64)(f32)(func_800038E0_44E0() % baseBytes[4]) / D_800A5478_18D538);
		if ((func_800038E0_44E0() % 21) < 10) {
			sp38.y = 0.0f - sp38.y;
		}
		sp38.y += sp44.y;

		sp38.z = (f32)((f64)(f32)(func_800038E0_44E0() % baseBytes[4]) / D_800A5480_18D540);
		if ((func_800038E0_44E0() % 21) < 10) {
			sp38.z = 0.0f - sp38.z;
		}
		sp38.z += sp44.z;

		func_80083014_16B0D4(&sp38, &sp38);

		entry->unk12 = (s8)((s32)(baseBytes[3] / 4) * sp38.x);
		entry->unk13 = (s8)((s32)(baseBytes[3] / 4) * sp38.y);
		entry->unk14 = (s8)((s32)(baseBytes[3] / 4) * sp38.z);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800852B8_16D378.s")
#endif

void func_8008568C_16D74C(s16 arg0, s16 arg1, u16 arg2, u8 arg3, u8 arg4, u8 arg5, u8 arg6) {
	s16 temp_arg0;
	s16 effect;
	Unk84EECEffect *entry;

	temp_arg0 = arg0;
	effect = func_80083390_16B450(0xB);
	if (effect != -3) {
		entry = &((Unk84EECEffect *)&D_800FB7B0)[effect];
		entry->unk8 = temp_arg0;
		entry->unkA = 1;
		entry->unk11 = 0;
		entry->unk2 = arg2;
		entry->unkC = arg1;
		entry->unk12 = arg6;
		entry->unkE = arg3;
		entry->unkF = arg4;
		entry->unk10 = arg5;
		entry->unk13 = arg2 / 2;
		if ((entry->unk13) == 0) {
			entry->unk13 = 1;
		}
	}
}

// CURRENT(4135)
#ifdef NON_MATCHING
u8 func_8008574C_16D80C(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6, u16 arg7, u8 arg8, u8 arg9, u8 arg10, u8 arg11, u8 arg12, u8 arg13) {
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 effect;
	u8 *entry;
	u8 *other;
	u8 ret;
	s16 temp;
	u8 life;

	pad0 = 0;
	pad1 = 0;
	pad2 = 0;

	if ((ret = func_80083224_16B2E4(7)) != 0xFB) {
		effect = func_80083584_16B644(ret);
		if (effect == -3) {
			osSyncPrintf(D_800A5330_18D3F0);
			func_80083300_16B3C0(ret);
			return 0xFB;
		}

		// This pointer arithmetic is probably wrong, it should be an array/struct access instead:
		entry = (u8 *)D_800FB7B0 + (effect * 0x16);
		*(u16 *)(entry + 2) = arg7;
		*(s16 *)(entry + 8) = arg0 << 2;
		*(s16 *)(entry + 0xA) = arg1 << 2;
		*(s16 *)(entry + 0xC) = arg2 << 2;

		other = (u8 *)D_800FB7B0 + (*(s16 *)(entry + 4) * 0x16);
		other[8] = arg3;
		other[9] = arg4;
		other[0xA] = arg5;
		other[0xB] = arg6;
		other[0xC] = arg9;

		entry[0xE] = arg10;
		entry[0xF] = arg11;
		entry[0x10] = arg12;
		entry = entry + 8;

		temp = arg10 - 0x78;
		if (temp < 0) {
			temp = 0;
		}
		entry[9] = temp;

		temp = arg11 - 0x78;
		if (temp < 0) {
			temp = 0;
		}
		entry[0xA] = temp;

		temp = arg12 - 0x78;
		if (temp < 0) {
			temp = 0;
		}
		entry[0xB] = temp;

		entry = other + 8;
		entry[8] = arg13;
		life = arg8;
		if (life >= 0x4C) {
			life = 0x4B;
		} else if (life == 0) {
			life = 1;
		}
		entry[5] = life;
		*(u16 *)(entry + 6) = 0;
	}

	return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008574C_16D80C.s")
#endif

void func_800858F4_16D9B4(s16 arg0, s16 arg1, s16 arg2) {
	func_8008574C_16D80C(arg0, arg1, arg2, 0, 0x78, 0, 0x28, 8, 0x1E, 0x96, 0xAA, 0xB4, 0xFF, 0x78);
}

// CURRENT(566)
#ifdef NON_MATCHING
s32 func_80085984_16DA44(s16 arg0, s32 arg1, s32 arg2, s16 arg3, s16 arg4, s16 arg5) {
	Unk84EECEffect *effect;
	u8 *entry;
	s32 half;
	u16 randX;
	u16 randY;
	s16 ret;
	s8 dirY;
	s8 dirX;

	ret = func_80083390_16B450(0xE);
	if (ret != -3) {
		effect = &D_800FB7B0[ret];
		effect->unk2 = arg0;
		entry = (u8 *)effect + 8;
		half = (u8)arg1 / 2;
		// This pointer casting is probably wrong, it should be struct access instead:
		*(s16 *)&entry[0] = (func_800038E0_44E0() % (u8)arg1) + arg3 * 4 - half;
		*(s16 *)&entry[2] = (func_800038E0_44E0() % (u8)arg1) + arg4 * 4 - half;
		*(s16 *)&entry[4] = (func_800038E0_44E0() % (u8)arg1) + arg5 * 4 - half;
		entry[6] = -1;
		entry[7] = -1;
		entry[8] = -1;
		entry[9] = arg1;
		entry[0xA] = func_800038E0_44E0() % 8;
		entry[0xB] = arg2;
		entry[0xC] = 0;

		dirX = (func_800038E0_44E0() % 70) + 0x37;
		dirY = (func_800038E0_44E0() % 70) + 0x37;
		if ((func_800038E0_44E0() % 20) < 0xA) {
			dirX = -dirX;
		}
		if ((func_800038E0_44E0() % 20) < 0xA) {
			dirY = -dirY;
		}

		randX = func_800038E0_44E0();
		randY = func_800038E0_44E0();
		func_80083F08_16BFC8(arg3, arg4, arg5, dirX, (randX % 60) + 0x41, dirY, 0x1E, (randY % 60) + 0x46, (func_800038E0_44E0() % 3) + 3, 0xA, 0xC8, 0xC8, 0xFF);
	}

	return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80085984_16DA44.s")
#endif

void func_80085CB4_16DD74(s16 arg0, s16 arg1, s16 arg2) {
	s32 temp_v0;

	temp_v0 = func_80085984_16DA44(0x28, 0x50, ((func_800038E0_44E0() % 5) + 5) & 0xFF, arg0, arg1, arg2);
	if (temp_v0 != -3) {
		((Unk84EECEffect *)D_800FB7B0)[temp_v0].unk14 = 1;
	}
}

#ifdef NON_MATCHING
// CURRENT(2960)
void func_80085D40_16DE00(u8 arg0) {
	UnkFB6F8Entry *temp_s4;
	Unk84EECEffect *temp_s2;
	u8 *temp_s0;
	s16 temp_s0_2;
	s16 var_s3;
	u8 temp_v0;

	temp_s4 = &D_800FB6F8[(u8)arg0];
	var_s3 = temp_s4->unk6;
	if ((var_s3 == -5) || (var_s3 == -6)) {
		return;
	}

	for (;;) {
		temp_s2 = &D_800FB7B0[var_s3];
		temp_s0 = (u8 *)temp_s2 + 8;
		if (temp_s2->unk11 < 0x1E) {
			if ((temp_s4->unk2 == 0xF1) && (temp_s4->unk4 == 1)) {
				func_800839B8_16BA78(arg0);
				func_80083300_16B3C0(arg0);
				return;
			}

			temp_s0_2 = temp_s2->unk4;
			func_800835F0_16B6B0(var_s3, arg0);
			var_s3 = temp_s0_2;
		} else {
			if (temp_s0[0xA] == 0) {
				temp_v0 = temp_s0[9];
				if (temp_v0 >= 0xAB) {
					temp_s0[0xA] = 1;
				} else {
					temp_s0[9] = temp_v0 + 0x13;
				}
			} else {
				temp_s0[9] -= 0x19;
			}

			*((s16 *)(temp_s0 + 2)) = (*((s16 *)(temp_s0 + 2)) + (func_800038E0_44E0() % 2)) + 2;
			temp_s2->unk2 = (temp_s2->unk2 + (func_800038E0_44E0() % 2)) + 2;
			temp_s0[6] -= 3;
			temp_s0[7] -= 3;
			temp_s0[8] -= 3;
			var_s3 = temp_s2->unk4;
		}

		if ((var_s3 == -5) || (var_s3 == -6)) {
			break;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80085D40_16DE00.s")
#endif

#ifdef NON_MATCHING
// CURRENT(6668)
void func_80085F28_16DFE8(u8 arg0) {
	Unk84EECEffect *s2;
	u8 *s1;
	UnkFB6F8Entry *sp38;
	Unk84EECEffect *sp30;
	s16 effect;
	s32 s3;
	s32 s4;

	// These pointer arithmetic operations are probably wrong, they should be struct/array accesses instead
	sp38 = (UnkFB6F8Entry *)((arg0 * 0xC) + (u8 *)D_800FB6F8);
	s2 = (Unk84EECEffect *)((sp38->unk6 * 0x16) + (u8 *)D_800FB7B0);
	sp30 = (Unk84EECEffect *)((s2->unk4 * 0x16) + (u8 *)D_800FB7B0);
	s1 = (u8 *)sp30 + 8;
	sp30->unk12++;
	if ((sp30->unk12 & 0xFF) == 0x10) {
		sp30->unk12 = 0;
	}

	s3 = 6;
	s4 = 1;
	if ((func_800038E0_44E0() % s3) == s4) {
		effect = s2->unk2;
		s1[5] = (func_800038E0_44E0() % (effect / 4)) - (effect / 8);
	}
	if ((func_800038E0_44E0() % s3) == s4) {
		effect = s2->unk2;
		s1[7] = (func_800038E0_44E0() % (effect / 4)) - (effect / 8);
	}
	if ((func_800038E0_44E0() % s3) == s4) {
		effect = s2->unk2;
		s1[6] = (func_800038E0_44E0() % (effect / 4)) - (effect / 8);
	}
	if ((func_800038E0_44E0() % s3) == s4) {
		effect = s2->unk2;
		s1[8] = (func_800038E0_44E0() % (effect / 4)) - (effect / 8);
	}

	if ((func_800038E0_44E0() % 4) == s4) {
		effect = sp38->unk2;
		if (*((u8 *)&D_800FB6FA + (effect * 0xC) + 2) < 0x23) {
			func_80084980_16CA40(arg0, effect & 0xFF);
		}
	}

	if (((func_800038E0_44E0() % 2) == s4) && (sp38->unk4 < 0x14)) {
		func_80084628_16C6E8(arg0);
	}

	// This ptr casting should probably be replaced with a struct access instead:
	if (*(u16 *)(s1 + 0) != 0xFFFF) {
		if (*(u16 *)(s1 + 0) > 0) {
			*(u16 *)(s1 + 0) = *(u16 *)(s1 + 0) - 1;
			effect = s2->unk2;
			if (effect < *(s16 *)(s1 + 2)) {
				s2->unk2 = effect + 2;
				s2->unkA = s2->unkA + 1;
			}
		} else if (s2->unk2 >= 0x1F) {
			s2->unk2 = s2->unk2 - 2;
			s2->unkA = s2->unkA - 1;
		} else {
			effect = sp38->unk2;
			if (effect != 0xFB) {
				*(s16 *)((effect * 0xC) + (u8 *)&D_800FB6FA) = 0xF1;
			}
			func_800839B8_16BA78(arg0);
			func_80083300_16B3C0(arg0);
			return;
		}
	}

	effect = sp30->unk4;
	if ((effect != -5) && (effect != -6)) {
		do {
			Unk84EECEffect *entry;
			u8 *entry8;

			entry = &((Unk84EECEffect *)&D_800FB7B0)[effect];
			entry8 = (u8 *)entry + 8;
			if (entry->unk11 < 0x1E) {
				s16 nextEffect;

				nextEffect = entry->unk4;
				func_800835F0_16B6B0(effect, arg0);
				effect = nextEffect;
			} else {
				entry8[0xA] = (func_800038E0_44E0() % 8) + 5;
				entry8[0xC] = (func_800038E0_44E0() % 8) + 5;
				entry8[0xB] = (func_800038E0_44E0() % 0xA) + 7;
				entry8[0xD] = (func_800038E0_44E0() % 0xA) + 7;
				entry8[9] = (entry8[9] - (func_800038E0_44E0() % 4)) - 6;
				*(s16 *)(entry8 + 2) = *(s16 *)(entry8 + 2) + (func_800038E0_44E0() % 4) + 5;
				entry8[7] = entry8[7] - 2;
				entry8[8] = entry8[8] - 3;
				effect = entry->unk4;
			}
		} while ((effect != -5) && (effect != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80085F28_16DFE8.s")
#endif

#ifdef NON_MATCHING
// CURRENT(378)
void func_80086550_16E610(void) {
	s16 effect;
	u8 alpha;
	Unk84EECEffect *entry;

	effect = D_800FB7A6;
	if ((effect != -5) && (effect != -6)) {
		alpha = 0xFF;
		do {
			entry = &((Unk84EECEffect *)&D_800FB7B0)[effect];
			entry->unk13--;
			if (entry->unk13 == 0) {
				s16 nextEffect;

				nextEffect = entry->unk4;
				func_800835F0_16B6B0(effect, 0xE);
				effect = nextEffect;
			} else {
				if (entry->unk14 == 1) {
					entry->unk8 += D_800FB6F0[0] * 4;
					entry->unkA += D_800FB6F0[1] * 4;
					entry->unkC += D_800FB6F0[2] * 4;
				}

				entry->unkE = (func_800038E0_44E0() % 0x55) + 0xAA;
				entry->unkF = (func_800038E0_44E0() % 0x55) + 0xAA;
				entry->unk10 = alpha;
				entry->unk12++;
				if (entry->unk12 >= 8) {
					entry->unk12 = 0;
				}

				effect = entry->unk4;
			}
		} while ((effect != -5) && (effect != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086550_16E610.s")
#endif

#ifdef NON_MATCHING
// CURRENT(2019)
void func_80086728_16E7E8(void) {
	s16 effect;

	effect = D_800FB79A;
	if ((effect != -5) && (effect != -6)) {
		do {
			s16 value;
			Unk84EECEffect *entry;
			s8 *entry8;

			entry = &((Unk84EECEffect *)&D_800FB7B0)[effect];
			entry8 = (s8 *) entry + 8;
			if ((u8)entry8[0xC] == 0) {
				value = (func_800038E0_44E0() % 2) + 2 + entry8[0xA];
				if (entry8[0xB] < value) {
					entry8[0xC] = 1;
				} else {
					entry8[0xA] = value;
				}
			} else {
				value = -5 - (func_800038E0_44E0() % 5) + entry8[0xA];
				if (value < -entry8[0xB]) {
					entry8[0xC] = 0;
				} else {
					entry8[0xA] = value;
				}
			}

			effect = entry->unk4;
		} while ((effect != -5) && (effect != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086728_16E7E8.s")
#endif

#ifdef NON_MATCHING
// CURRENT(1398)
void func_8008688C_16E94C(void) {
	s16 effect;

	effect = D_800FB78E;
	if ((effect != -5) && (effect != -6)) {
		do {
			s16 value;
			s16 spread;
			Unk84EECEffect *entry;

			entry = &((Unk84EECEffect *)&D_800FB7B0)[effect];
			value = entry->unk2;
			if (value < 0) {
				spread = (value + 3) >> 2;
			} else {
				spread = value >> 2;
			}

			entry->unk9 = (func_800038E0_44E0() % spread) + spread;
			entry->unkB = (func_800038E0_44E0() % spread) + spread;
			entry->unkA = (func_800038E0_44E0() % spread) + spread;
			entry->unkC = (func_800038E0_44E0() % spread) + spread;
			effect = entry->unk4;
		} while ((effect != -5) && (effect != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008688C_16E94C.s")
#endif

#ifdef NON_MATCHING
// CURRENT(535)
void func_80086A34_16EAF4(void) {
	s16 effect;
	s16 nextEffect;

	effect = D_800FB782;
	if ((effect != -5) && (effect != -6)) {
		do {
			Unk84EECEffect *entry = &((Unk84EECEffect *)&D_800FB7B0)[effect];
			u8 *entry8 = (u8 *) entry + 8;
			if (entry->unk12 < 9) {
				nextEffect = entry->unk4;
				func_800835F0_16B6B0(effect, 0xB);
				effect = nextEffect;
			} else {
				if (entry8[9] < 4) {
					entry->unk2 += entry8[0xB];
				}
				entry8[9]++;
				entry8[0xA] -= 7;
				effect = entry->unk4;
			}
		} while ((effect != -5) && (effect != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086A34_16EAF4.s")
#endif

#ifdef NON_MATCHING
void func_80086B34_16EBF4(s32 arg0) {
	UnkFB6F8Entry *slot;
	Unk84EECEffect *head;
	Unk84EECEffect *Unk84EECEffect;
	s16 effect;
	s16 next;
	u8 slotIdx;
	u16 timer;
	u8 count;
	u8 i;

	slotIdx = arg0 & 0xFF;
	slot = &D_800FB6F8[slotIdx];
	head = &((Unk84EECEffect *)&D_800FB7B0)[slot->unk6];
	effect = head->unk4;

	if ((effect != -5) && (effect != -6)) {
		do {
			Unk84EECEffect = &((Unk84EECEffect *)&D_800FB7B0)[effect];

			Unk84EECEffect->unk8 += Unk84EECEffect->unk12;
			Unk84EECEffect->unkC += Unk84EECEffect->unk14;
			Unk84EECEffect->unkA += Unk84EECEffect->unk13;

			if (Unk84EECEffect->unk13 >= -0x13) {
				Unk84EECEffect->unk11--;
			} else {
				Unk84EECEffect->unk11 = -0x14;
			}

			if (Unk84EECEffect->unk2 < 2) {
				func_8008568C_16D74C(Unk84EECEffect->unk8, Unk84EECEffect->unkC, Unk84EECEffect->unk2, head->unkE, head->unkF, head->unk10, Unk84EECEffect->unk9);

				if ((slot->unk4 < 4) && (head->unkD == 0)) {
					func_800839B8_16BA78(slotIdx);
					func_80083300_16B3C0(slotIdx);
					return;
				}

				next = Unk84EECEffect->unk4;
				func_800835F0_16B6B0(effect, slotIdx);
				effect = next;
			} else {
				effect = Unk84EECEffect->unk4;
			}
		} while ((effect != -5) && (effect != -6));
	}

	timer = head->unkE;
	if (timer > 0) {
		head->unkE = timer - 1;
		return;
	}

	count = (func_800038E0_44E0() % 3) + 2;
	for (i = 0; i < count; i = (i + 1) & 0xFF) {
		if (slot->unk5 > 0) {
			func_800852B8_16D378(slotIdx);
			slot->unk5--;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086B34_16EBF4.s")
#endif

#ifdef NON_MATCHING
// CURRENT(5)
void func_80086D88_16EE48() {
	s32 i;

	for (i = 0; i < 0xF; i = (i + 1) & 0xFF) {
		switch (D_800FB6F8[i].pad0[0]) {
			case 0:
				func_80085F28_16DFE8(i & 0xFF);
				break;
			case 1:
				func_80085D40_16DE00(i & 0xFF);
				break;
			case 2:
				func_80084258_16C318(i & 0xFF);
				break;
			case 3:
				func_80086550_16E610();
				break;
			case 4:
				func_80086728_16E7E8();
				break;
			case 5:
				func_8008688C_16E94C();
				break;
			case 6:
				func_80086A34_16EAF4();
				break;
			case 7:
				func_80086B34_16EBF4(i & 0xFF);
				break;
			case 8:
				func_80089834_1718F4(i & 0xFF);
				break;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086D88_16EE48.s")
#endif

#ifdef NON_MATCHING
void func_80086E90_16EF50(s32 arg0) {
	UnkFB6F8Entry *sp1C;
	s16 temp_v1;
	s32 temp_t6;
	u8 sp23;

	temp_t6 = arg0 & 0xFF;
	if (temp_t6 < 0xF) {
		sp1C = &D_800FB6F8[temp_t6];
		if (sp1C->pad0[0] == 0) {
			sp23 = temp_t6;
			func_800839B8_16BA78(temp_t6);
			temp_v1 = sp1C->unk2;
			if (temp_v1 != 0xFB) {
				D_800FB6F8[temp_v1].unk2 = 0xF1;
			}
			func_80083300_16B3C0(sp23);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086E90_16EF50.s")
#endif

void func_80086F24_16EFE4(s16 arg0) {
	if (arg0 != -3) {
		func_80083924_16B9E4(arg0, 0xD);
	}
}

void func_80086F58_16F018(s16 arg0) {
	if (arg0 != -3) {
		func_80086F24_16EFE4(*(s16 *)&((Unk84EECEffect *)D_800FB7B0)[arg0].unkE);
		func_800835F0_16B6B0(arg0, 0xC);
	}
}

#ifdef NON_MATCHING
void func_80086FC4_16F084(s32 arg0) {
	Unk84EECEffect *sp30;
	Unk84EECEffect *sp28;
	Unk84EECEffect *temp_t5;
	Unk89408Pos *temp_a3;
	s16 sp9C;
	s16 sp9A;
	s16 var_a2;
	f32 temp_f2;
	f32 temp_f0;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;
	f32 temp_f20;
	f32 var_f2;
	f32 var_f12;
	f32 var_f22;
	f32 var_f18;
	u8 temp_t6;
	u8 temp_t7;
	u8 temp_t8;
	u8 temp_t9;

	sp9C = *(s16 *)(&D_800FB6FE + ((arg0 & 0xFF) * 0xC));
	sp30 = &((Unk84EECEffect *)&D_800FB7B0)[sp9C];
	sp9A = sp30->unk4;
	sp28 = &((Unk84EECEffect *)&D_800FB7B0)[sp9A];

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)&D_1007A70[sp28->unkC << 9] & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 0xFF, 0x400);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);

	temp_f2 = sp30->unk2;
	temp_a3 = (Unk89408Pos *)&sp30->unk8;
	temp_f0 = temp_f2 * D_800FB6A8[0];
	temp_f12 = temp_f2 * D_800FB6A8[1];
	temp_f14 = temp_f2 * D_800FB6A8[2];
	temp_f16 = temp_f2 * D_800FB6A8[3];
	temp_f18 = temp_f2 * D_800FB6A8[4];
	temp_f20 = temp_f2 * D_800FB6A8[5];

	D_8005BB34->v.ob[0] = (s16)(s32)((temp_a3->unk0 + (s8)sp28->unk15) + temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)((temp_a3->unk2 + (s8)sp28->unkF) + temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(temp_a3->unk4 + temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = (u8)temp_a3->unk6;
	D_8005BB34->v.cn[1] = (u8)temp_a3->unk7;
	D_8005BB34->v.cn[2] = (u8)temp_a3->unk8;
	D_8005BB34->v.cn[3] = 0xFF;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)((temp_a3->unk0 + (s8)sp28->unkE) + temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)((temp_a3->unk2 + (s8)sp28->unk10) + temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(temp_a3->unk4 + temp_f20);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = (u8)temp_a3->unk6;
	D_8005BB34->v.cn[1] = (u8)temp_a3->unk7;
	D_8005BB34->v.cn[2] = (u8)temp_a3->unk8;
	D_8005BB34->v.cn[3] = 0xFF;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(temp_a3->unk0 - temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(temp_a3->unk2 - temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(temp_a3->unk4 - temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0x800;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = (u8)temp_a3->unk9;
	D_8005BB34->v.cn[1] = (u8)temp_a3->unkA;
	D_8005BB34->v.cn[2] = (u8)temp_a3->unkB;
	D_8005BB34->v.cn[3] = 0xFF;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(temp_a3->unk0 - temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(temp_a3->unk2 - temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(temp_a3->unk4 - temp_f20);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x800;
	D_8005BB34->v.cn[0] = (u8)temp_a3->unk9;
	D_8005BB34->v.cn[1] = (u8)temp_a3->unkA;
	D_8005BB34->v.cn[2] = (u8)temp_a3->unkB;
	D_8005BB34->v.cn[3] = 0xFF;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, (Vtx *)((s32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)D_100DE00 & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 0x800);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 15 << G_TEXTURE_IMAGE_FRAC, 15 << G_TEXTURE_IMAGE_FRAC);

	var_a2 = sp28->unk4;
	while ((var_a2 != -5) && (var_a2 != -6)) {
		temp_t5 = &((Unk84EECEffect *)&D_800FB7B0)[var_a2];
		temp_t6 = temp_t5->unk12;
		var_f2 = (f32)temp_t6;
		if ((s32)temp_t6 < 0) {
			var_f2 += 4294967296.0f;
		}
		temp_t7 = temp_t5->unk13;
		var_f12 = (f32)temp_t7;
		if ((s32)temp_t7 < 0) {
			var_f12 += 4294967296.0f;
		}
		temp_t8 = temp_t5->unk14;
		var_f22 = (f32)temp_t8;
		if ((s32)temp_t8 < 0) {
			var_f22 += 4294967296.0f;
		}
		temp_t9 = temp_t5->unk15;
		var_f18 = (f32)temp_t9;
		if ((s32)temp_t9 < 0) {
			var_f18 += 4294967296.0f;
		}

		D_8005BB34->v.ob[0] = temp_t5->unk8;
		D_8005BB34->v.ob[1] = temp_t5->unkA;
		D_8005BB34->v.ob[2] = temp_t5->unkC;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x400;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = (u8)temp_t5->unkE;
		D_8005BB34->v.cn[1] = (u8)temp_t5->unkF;
		D_8005BB34->v.cn[2] = (u8)temp_t5->unk10;
		D_8005BB34->v.cn[3] = (u8)temp_t5->unk11;

		D_8005BB34++;
		D_8005BB34->v.ob[0] = temp_t5->unk8;
		D_8005BB34->v.ob[1] = temp_t5->unk2 + temp_t5->unkA;
		D_8005BB34->v.ob[2] = temp_t5->unkC;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0x400;
		D_8005BB34->v.cn[0] = (u8)temp_t5->unkE;
		D_8005BB34->v.cn[1] = (u8)temp_t5->unkF;
		D_8005BB34->v.cn[2] = (u8)temp_t5->unk10;
		D_8005BB34->v.cn[3] = (u8)temp_t5->unk11;

		D_8005BB34++;
		D_8005BB34->v.ob[0] = (s16)(s32)((f32)temp_t5->unk8 + (var_f2 * D_800FB6A8[0]));
		D_8005BB34->v.ob[1] = (s16)(s32)((f32)temp_t5->unkA + var_f12);
		D_8005BB34->v.ob[2] = (s16)(s32)((f32)temp_t5->unkC + (var_f2 * D_800FB6A8[2]));
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = (u8)temp_t5->unkE;
		D_8005BB34->v.cn[1] = (u8)temp_t5->unkF;
		D_8005BB34->v.cn[2] = (u8)temp_t5->unk10;
		D_8005BB34->v.cn[3] = (u8)temp_t5->unk11;

		D_8005BB34++;
		D_8005BB34->v.ob[0] = (s16)(s32)((f32)temp_t5->unk8 + (var_f22 * D_800FB6A8[3]));
		D_8005BB34->v.ob[1] = (s16)(s32)((f32)temp_t5->unkA + var_f18);
		D_8005BB34->v.ob[2] = (s16)(s32)((f32)temp_t5->unkC + (var_f22 * D_800FB6A8[5]));
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0x400;
		D_8005BB34->v.tc[1] = 0x400;
		D_8005BB34->v.cn[0] = (u8)temp_t5->unkE;
		D_8005BB34->v.cn[1] = (u8)temp_t5->unkF;
		D_8005BB34->v.cn[2] = (u8)temp_t5->unk10;
		D_8005BB34->v.cn[3] = (u8)temp_t5->unk11;

		D_8005BB34++;
		gSPVertex(D_8005BB2C++, (Vtx *)((s32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
		gSP2Triangles(D_8005BB2C++, 0, 2, 3, 0, 3, 1, 2, 0);

		var_a2 = temp_t5->unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086FC4_16F084.s")
#endif

#ifdef NON_MATCHING
void func_80087A40_16FB00(s32 arg0) {
	u8 slot;
	Vec3f *pos;
	Unk84EECEffect *effectBase;
	s8 **color;
	f32 *scale;
	u8 *alpha;
	s16 effect;
	s16 end;
	s16 stride;

	slot = arg0 & 0xFF;
	effect = *(s16 *)(&D_800FB6FE + (slot * 0xC));

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)D_100E080 & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);

	D_800FB6E5 = 0x20;
	D_800FB6E6 = 0x20;

	if ((effect != -5) && (effect != -6)) {
		pos = &D_800FB6D0;
		effectBase = (Unk84EECEffect *)&D_800FB7B0;
		color = &D_800FB6DC;
		scale = &D_800FB6E0;
		alpha = &D_800FB6E4;
		end = -6;
		stride = 0x16;

		do {
			Unk84EECEffect *entry;

			entry = (Unk84EECEffect *)((u8 *)effectBase + (effect * stride));
			pos->x = entry->unk8;
			*color = &entry->unkE;
			*alpha = entry->unk11;
			pos->y = entry->unkA;
			pos->z = entry->unkC;
			*scale = entry->unk2;
			func_8008A1D8_172298();
			effect = entry->unk4;
		} while ((effect != -5) && (effect != end));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80087A40_16FB00.s")
#endif

#ifdef NON_MATCHING
// CURRENT(3405)
void func_80087CB8_16FD78(s32 arg0) {
	f32 sp58[3];
	UnkFB6F8Entry *entry;
	Unk84EECEffect *effectBase;
	Unk84EECEffect *effect;
	s8 *color;
	s16 next;

	entry = &D_800FB6F8[arg0 & 0xFF];
	effectBase = (Unk84EECEffect *) &D_800FB7B0;
	next = effectBase[entry->unk6].unk4;
	color = &effectBase[entry->unk6].unkE;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPPipeSync(D_8005BB2C++);

	if ((next != -5) && (next != -6)) {
		do {
		effect = &((Unk84EECEffect *) &D_800FB7B0)[next];
		sp58[0] = effect->unk8;
		sp58[1] = effect->unkA;
		sp58[2] = effect->unkC;
		func_80089148_171208(sp58, color, effectBase[entry->unk6].unk2, effect->unk11);
		next = effect->unk4;
		} while ((next != -5) && (next != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80087CB8_16FD78.s")
#endif

// CURRENT(2501)
#ifdef NON_MATCHING
void func_80087E3C_16FEFC(void) {
	s16 effect;
	s32 pad;
	Vec3f dir;
	Unk84EECEffect *entry;

	D_800FB6E5 = 0x10;
	D_800FB6E6 = 0x10;
	effect = D_800FB7A6;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);

	pad = 0;

	if ((effect != -5) && (effect != -6)) {
		do {
			s16 *pos;

			entry = &((Unk84EECEffect *)&D_800FB7B0)[effect];

			gDPPipeSync(D_8005BB2C++);
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
				(void *)((u32)(D_100E880 + (entry->unk12 << 7)) & 0x1FFFFFFF));
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
				G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 63, 2048);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0,
				G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 15 << G_TEXTURE_IMAGE_FRAC, 15 << G_TEXTURE_IMAGE_FRAC);
			gDPPipeSync(D_8005BB2C++);

			dir.x = (D_8008DDF4_175EB4 * 4.0f) - entry->unk8;
			dir.y = (D_8008DDF8_175EB8 * 4.0f) - entry->unkA;
			dir.z = (D_8008DDFC_175EBC * 4.0f) - entry->unkC;
			func_80083014_16B0D4(&dir, &dir);

			pos = &entry->unk8;
			D_800FB6D0.x = pos[0] + (dir.x * ((u8 *)pos)[1]);
			D_800FB6D0.y = pos[1] + (dir.y * ((u8 *)pos)[1]);
			D_800FB6D0.z = pos[2] + (dir.z * ((u8 *)pos)[1]);
			D_800FB6E4 = 0xFF;
			D_800FB6E0 = entry->unk2;
			D_800FB6DC = (s8 *)(pos + 3);
			func_8008A1D8_172298();

			effect = entry->unk4;
		} while ((effect != -5) && (effect != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80087E3C_16FEFC.s")
#endif

#ifdef NON_MATCHING
void func_800881C0_170280(void) {
	Unk89834Pos *spAC;
	Vec3f sp9C;
	s16 var_t2;
	s32 var_s6;
	Unk89834Pos *var_s3;
	Unk84EECEffect *s2;
	Unk89834Pos *s1;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);

	D_800FB6E5 = 0x20;
	D_800FB6E6 = 0x20;
	var_t2 = D_800FB79A;
	var_s6 = 0;

	if ((var_t2 != -5) && (var_t2 != -6)) {
		var_s3 = spAC;
		do {
			gDPPipeSync(D_8005BB2C++);
			if (var_s6 == 0) {
				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)D_100DA00 & 0x1FFFFFFF));
				gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
					G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPLoadSync(D_8005BB2C++);
				gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
				gDPPipeSync(D_8005BB2C++);
				gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0,
					G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);
				var_s6 = 1;
				D_800FB6E4 = var_s3->unk9 - 0x28;
			} else {
				gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)D_100DC00 & 0x1FFFFFFF));
				gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
					G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPLoadSync(D_8005BB2C++);
				gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
				gDPPipeSync(D_8005BB2C++);
				gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0,
					G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
					G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
				gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);
				var_s6 = 0;
				D_800FB6E4 = var_s3->unk9 + var_s3->unkA;
			}

			gDPPipeSync(D_8005BB2C++);

			s2 = &((Unk84EECEffect *)&D_800FB7B0)[var_t2];
			s1 = (Unk89834Pos *)&s2->unk8;
			var_s3 = s1;

			sp9C.x = D_800E7410.x * 4.0f - (f32)s2->unk8;
			sp9C.y = D_800E7410.y * 4.0f - (f32)s2->unkA;
			sp9C.z = D_800E7410.z * 4.0f - (f32)s2->unkC;
			func_80083014_16B0D4(&sp9C, &sp9C);

			D_800FB6D0.x = (f32)s1->unk0 + sp9C.x * (f32)s1->unkD;
			D_800FB6D0.y = (f32)s1->unk2 + sp9C.y * (f32)s1->unkD;
			D_800FB6D0.z = (f32)s1->unk4 + sp9C.z * (f32)s1->unkD;
			D_800FB6DC = &s1->unk6;
			D_800FB6E0 = (f32)s2->unk2;
			D_800FB6E4 = s1->unk9 + s1->unkA;
			func_8008A1D8_172298();

			var_t2 = s2->unk4;
		} while ((var_t2 != -5) && (var_t2 != -6));
		if (var_t2 == -6) {
			spAC = var_s3;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800881C0_170280.s")
#endif

#ifdef NON_MATCHING
void func_80088654_170714(void) {
	typedef struct {
		s16 unk0;
		s16 unk2;
		s16 unk4;
		s16 unk6;
		s16 unk8;
		s16 unkA;
		s16 unkC;
		s8 unkE;
		s8 unkF;
		s8 unk10;
		u8 unk11;
		u8 unk12;
		u8 unk13;
		u8 unk14;
	} Unk84EECEffect;

	Gfx *dl;
	Vtx *vtx;
	Unk84EECEffect *effect;
	f32 f2, f12, f18, f20;
	s16 effectIdx;

	effectIdx = D_800FB78E;
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)&D_100DE00 & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);

	if ((effectIdx != -5) && (effectIdx != -6)) {
		while ((effectIdx != -5) && (effectIdx != -6)) {
			effect = &((Unk84EECEffect *)&D_800FB7B0)[effectIdx];
			
			// Read color components
			f2 = (f32)(u8)effect->unk11;
			if ((s8)effect->unk11 < 0) {
				f2 += 4294967296.0f;
			}
			
			f12 = (f32)(u8)effect->unk12;
			if ((s8)effect->unk12 < 0) {
				f12 += 4294967296.0f;
			}
			
			f18 = (f32)(u8)effect->unk13;
			if ((s8)effect->unk13 < 0) {
				f18 += 4294967296.0f;
			}
			
			f20 = (f32)(u8)effect->unk14;
			if ((s8)effect->unk14 < 0) {
				f20 += 4294967296.0f;
			}
			
			vtx = D_8005BB34;
			
			// First vertex
			vtx->v.ob[0] = effect->unk8;
			vtx->v.ob[1] = effect->unkA;
			vtx->v.ob[2] = effect->unkC;
			vtx->v.flag = 0;
			vtx->v.tc[0] = 0x800;
			vtx->v.tc[1] = 0;
			vtx->v.cn[0] = 0xFF;
			vtx->v.cn[1] = 0xE6;
			vtx->v.cn[2] = 0x96;
			vtx->v.cn[3] = 0x64;
			vtx++;
			D_8005BB34 = vtx;
			
			// Second vertex
			vtx->v.ob[0] = effect->unk8;
			vtx->v.ob[1] = effect->unk2 + effect->unkA;
			vtx->v.ob[2] = effect->unkC;
			vtx->v.flag = 0;
			vtx->v.tc[0] = 0;
			vtx->v.tc[1] = 0x800;
			vtx->v.cn[0] = 0xFF;
			vtx->v.cn[1] = 0xDC;
			vtx->v.cn[2] = 0x78;
			vtx->v.cn[3] = 0xB4;
			vtx++;
			D_8005BB34 = vtx;
			
			// Third vertex
			vtx->v.ob[0] = (s16)(s32)((f32)effect->unk8 + (f2 * D_800FB6A8[0]));
			vtx->v.ob[1] = (s16)(s32)((f32)effect->unkA + f12);
			vtx->v.ob[2] = (s16)(s32)((f32)effect->unkC + (f2 * D_800FB6A8[2]));
			vtx->v.flag = 0;
			vtx->v.tc[0] = 0;
			vtx->v.tc[1] = 0;
			vtx->v.cn[0] = 0xFF;
			vtx->v.cn[1] = 0xDC;
			vtx->v.cn[2] = 0x78;
			vtx->v.cn[3] = 0xB4;
			vtx++;
			D_8005BB34 = vtx;
			
			// Fourth vertex
			vtx->v.ob[0] = (s16)(s32)((f32)effect->unk8 + (f18 * D_800FB6A8[3]));
			vtx->v.ob[1] = (s16)(s32)((f32)effect->unkA + f20);
			vtx->v.ob[2] = (s16)(s32)((f32)effect->unkC + (f18 * D_800FB6A8[5]));
			vtx->v.flag = 0;
			vtx->v.tc[0] = 0x800;
			vtx->v.tc[1] = 0x800;
			vtx->v.cn[0] = 0xFF;
			vtx->v.cn[1] = 0xC8;
			vtx->v.cn[2] = 0x64;
			vtx->v.cn[3] = 0xB4;
			vtx++;
			D_8005BB34 = vtx;
			
			// Add geometry to command list
			gSPVertex(D_8005BB2C++, vtx - 4, 4, 0);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadTile(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31, 31);
			gDPPipeSync(D_8005BB2C++);
			
			// Get next effect
			effectIdx = effect->unk4;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80088654_170714.s")
#endif

#ifdef NON_MATCHING
void func_80088B9C_170C5C(void) {
	typedef struct {
		s16 unk0;
		s16 unk2;
		s16 unk4;
		s16 unk6;
		s16 unk8;
		s16 unkA;
		s16 unkC;
		s8 unkE;
		s8 unkF;
		s8 unk10;
		u8 unk11;
		u8 unk12;
		u8 pad13[3];
	} Unk84EECEffect;

	s16 effect;
	Vec3f *pos;
	s8 **color;
	f32 *scale;
	Unk84EECEffect *effectBase;

	D_800FB6E5 = 0x20;
	D_800FB6E6 = 0x20;
	effect = D_800FB782;
	pos = &D_800FB6D0;
	color = &D_800FB6DC;
	scale = &D_800FB6E0;
	effectBase = (Unk84EECEffect *)&D_800FB7B0;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)D_100E080 & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);

	if ((effect != -6) && (effect != -5)) {
		do {
			Unk84EECEffect *entry;

			gDPPipeSync(D_8005BB2C++);
			entry = &effectBase[effect];
			pos->x = entry->unk8;
			pos->y = entry->unkA;
			pos->z = entry->unkC;
			*color = &entry->unkE;
			*scale = entry->unk2;
			D_800FB6E4 = entry->unk12;
			func_80089E54_171F14();
			effect = entry->unk4;
		} while ((effect != -6) && (effect != -5));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80088B9C_170C5C.s")
#endif

#ifdef NON_MATCHING
void func_80088DFC_170EBC(s32 arg0) {
	s16 effect;
	Unk84EECEffect *base;
	Unk84EECEffect *entry;

	base = &((Unk84EECEffect *)&D_800FB7B0)[D_800FB6F8[arg0 & 0xFF].unk6];
	entry = &((Unk84EECEffect *)&D_800FB7B0)[base->unk4];
	effect = entry->unk4;

	D_800FB6E5 = 0x10;
	D_800FB6E6 = 0x10;

	if (*(u16 *)&entry->unkE > 0) {
		return;
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, (void *)((u32)D_100D700 & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);
	gDPPipeSync(D_8005BB2C++);

	if ((effect != -6) && (effect != -5)) {
		do {
			entry = &((Unk84EECEffect *)&D_800FB7B0)[effect];

			gDPSetPrimColor(D_8005BB2C++, 0, 0, base->unkE, base->unkF, base->unk10, entry->unk11);
			gDPSetEnvColor(D_8005BB2C++, base->unk11, base->unk12, base->unk13, entry->unk11);
			gDPPipeSync(D_8005BB2C++);

			D_800FB6D0.x = (f32)entry->unk8;
			D_800FB6D0.y = (f32)entry->unkA;
			D_800FB6D0.z = (f32)entry->unkC;
			D_800FB6DC = (s8 *)&base->unkE;
			D_800FB6E0 = (f32)entry->unk2;
			D_800FB6E4 = entry->unk11;
			func_8008A1D8_172298();
			effect = entry->unk4;
		} while ((effect != -6) && (effect != -5));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80088DFC_170EBC.s")
#endif

#ifdef NON_MATCHING
void func_80089148_171208(f32 *arg0, s8 *arg1, u16 arg2, u8 arg3) {
	f32 temp_f0;
	f32 temp_f2;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;
	f32 temp_f4;

	temp_f2 = (f32)arg2;
	temp_f0 = D_800FB6A8.x * temp_f2;
	temp_f12 = D_800FB6A8.y * temp_f2;
	temp_f14 = D_800FB6A8.z * temp_f2;
	temp_f16 = D_800FB6B4.x * temp_f2;
	temp_f18 = D_800FB6B4.y * temp_f2;
	temp_f4 = D_800FB6B4.z * temp_f2;

	D_8005BB34->v.ob[0] = (s16)(s32)(arg0[0] + temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(arg0[1] + temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(arg0[2] + temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = arg1[0];
	D_8005BB34->v.cn[1] = arg1[1];
	D_8005BB34->v.cn[2] = arg1[2];
	D_8005BB34->v.cn[3] = arg3;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(arg0[0] + temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(arg0[1] + temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(arg0[2] + temp_f4);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = arg1[0];
	D_8005BB34->v.cn[1] = arg1[1];
	D_8005BB34->v.cn[2] = arg1[2];
	D_8005BB34->v.cn[3] = arg3;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(arg0[0] - temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(arg0[1] - temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(arg0[2] - temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = arg1[0];
	D_8005BB34->v.cn[1] = arg1[1];
	D_8005BB34->v.cn[2] = arg1[2];
	D_8005BB34->v.cn[3] = arg3;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 3) & 0x1FFFFFFF), 3, 0);
	gSP1Triangle(D_8005BB2C++, 0, 1, 2, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089148_171208.s")
#endif

// CURRENT(4710)
#ifdef NON_MATCHING
void func_80089408_1714C8(s32 arg0) {

	Unk84EECEffect *srcEffect;
	Unk89408Pos *srcPos;
	Unk89408Pos *dstPos;
	s16 srcIndex;
	s16 dstIndex;
	s32 temp;
	u8 index;
	u8 color;

	index = arg0 & 0xFF;
	srcIndex = D_800FB6F8[index].unk6;
	dstIndex = func_80083390_16B450(index);
	if (dstIndex != -3) {
		srcEffect = &((Unk84EECEffect *) &D_800FB7B0)[srcIndex];
		srcPos = &srcEffect->pos;

		if (srcPos->unkA == 1) {
			((Unk84EECEffect *) &D_800FB7B0)[dstIndex].unk2 = (func_800038E0_44E0() % 0x23) + 0x23;
			color = 0xAA;
			((Unk84EECEffect *) &D_800FB7B0)[dstIndex].pos.unk9 = 0x82;
			dstPos = &((Unk84EECEffect *) &D_800FB7B0)[dstIndex].pos;
			dstPos->unk6 = color;
			dstPos->unk7 = color;
			dstPos->unk8 = color;
		} else if (srcPos->unkA == 0) {
			((Unk84EECEffect *) &D_800FB7B0)[dstIndex].unk2 = (func_800038E0_44E0() % 0xA) + 0xA;
			color = 0xFF;
			((Unk84EECEffect *) &D_800FB7B0)[dstIndex].pos.unk9 = color;
			dstPos = &((Unk84EECEffect *) &D_800FB7B0)[dstIndex].pos;
			dstPos->unk6 = color;
			dstPos->unk7 = color;
			dstPos->unk8 = color;
		} else {
			((Unk84EECEffect *) &D_800FB7B0)[dstIndex].unk2 = (func_800038E0_44E0() % 0xA) + 0xA;
			color = 0xFF;
			((Unk84EECEffect *) &D_800FB7B0)[dstIndex].pos.unk9 = color;
			dstPos = &((Unk84EECEffect *) &D_800FB7B0)[dstIndex].pos;
			dstPos->unk6 = 0x32;
			dstPos->unk7 = color;
			dstPos->unk8 = 0x82;
		}

		dstPos->unk0 = srcPos->unk0;
		dstPos->unk2 = srcPos->unk2;
		dstPos->unk4 = srcPos->unk4;
		dstPos->unkA = (func_800038E0_44E0() % 6) + srcPos->unk6 - 3;
		dstPos->unkB = (func_800038E0_44E0() % 6) + srcPos->unk7 - 3;
		temp = func_800038E0_44E0() % 6;
		dstPos->unkD = 0;
		dstPos->unkC = temp + srcPos->unk8 - 3;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089408_1714C8.s")
#endif

#ifdef NON_MATCHING
// CURRENT(1192)
u8 func_80089648_171708(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6) {
	typedef struct {
		u8 pad0[0x08];
		s16 unk8;
		s16 unkA;
		s16 unkC;
		s8 unkE;
		s8 unkF;
		s8 unk10;
		u8 unk11;
		u8 unk12;
	} Unk84EECEffect;

	s32 temp_v0;
	u8 slot;
	s32 effect;
	Unk84EECEffect *entry;

	temp_v0 = func_80083224_16B2E4(8);
	slot = temp_v0;
	if (temp_v0 != 0xFB) {
		effect = func_80083390_16B450(slot);
		if (effect == -3) {
			osSyncPrintf(&D_800A5384_18D444, slot);
			func_80083300_16B3C0(slot);
			return 0xFB;
		}

		entry = &((Unk84EECEffect *)D_800FB7B0)[effect];
		entry->unk8 = arg0 * 4;
		entry->unkA = arg1 * 4;
		entry->unkC = arg2 * 4;
		entry->unk11 = 1;
		entry->unkE = arg3;
		entry->unkF = arg4;
		entry->unk10 = arg5;
		entry->unk12 = arg6;
	}

	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089648_171708.s")
#endif

void func_8008972C_1717EC(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	s16 temp_v0;
	s8 *temp_v1;

	temp_v0 = *(s16 *)(&D_800FB6FE + (arg3 * 0xC));
	temp_v1 = (s8 *)&D_800FB7B0 + temp_v0 * 0x16;
	*(s16 *)(temp_v1 + 0x8) = arg0 * 4;
	*(s16 *)(temp_v1 + 0xA) = arg1 * 4;
	*(s16 *)(temp_v1 + 0xC) = arg2 * 4;
}

#ifdef NON_MATCHING
void func_80089794_171854(s32 arg0) {
	u8 temp_t6;
	UnkFB6F8Entry *temp_v0;

	temp_t6 = arg0 & 0xFF;
	if ((temp_t6 < 0xF) && (temp_v0 = &D_800FB6F8[temp_t6], temp_v0->pad0[0] == 8)) {
		if ((s32)temp_v0->unk4 < 2) {
			func_800839B8_16BA78(temp_t6);
			func_80083300_16B3C0(temp_t6);
			return;
		}
		((Unk84EECEffect *)&D_800FB7B0)[temp_v0->unk6].unk11 = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089794_171854.s")
#endif

// CURRENT(5906)
#ifdef NON_MATCHING
void func_80089834_1718F4(s32 arg0) {
	u8 *sp40;
	u8 temp_fp;
	s16 temp_s2;
	s16 var_s0;
	Unk89834Pos *temp_s0;
	Unk84EECEffect *temp_s1_2;
	UnkFB6F8Entry *temp_s3;
	Unk84EECEffect *base;

	temp_fp = arg0;
	temp_s3 = &D_800FB6F8[temp_fp];
	base = (Unk84EECEffect *)&D_800FB7B0;
	var_s0 = base[temp_s3->unk6].unk4;
	sp40 = (u8 *)&base[temp_s3->unk6].unk8;
	if ((var_s0 != -5) && (var_s0 != -6)) {
		for (;;) {
			temp_s1_2 = &base[var_s0];
			if (temp_s1_2->unk11 < 0x34) {
				if ((temp_s3->unk4 < 3) && (base[temp_s3->unk6].unk11 == 0)) {
					func_800839B8_16BA78(temp_fp);
					func_80083300_16B3C0(temp_fp);
					return;
				}
				temp_s2 = temp_s1_2->unk4;
				func_800835F0_16B6B0(var_s0, temp_fp);
				var_s0 = temp_s2;
			} else {
				temp_s0 = (Unk89834Pos *)&temp_s1_2->unk8;
				if (temp_s0->unkD == 0) {
					temp_s0->unk9 = (temp_s0->unk9 - (func_800038E0_44E0() % 6)) - 6;
					temp_s1_2->unk2 = temp_s1_2->unk2 + (func_800038E0_44E0() % 3) + 3;
				} else {
					temp_s0->unk9 = (temp_s0->unk9 - (func_800038E0_44E0() % 7)) - 7;
					temp_s1_2->unk2 = temp_s1_2->unk2 + (func_800038E0_44E0() % 6) + 6;
				}
				temp_s0->unk0 += temp_s0->unkA;
				temp_s0->unk2 += temp_s0->unkB;
				temp_s0->unk4 += temp_s0->unkC;
				if (sp40[0xA] == 2) {
					temp_s0->unk6 -= 2;
					temp_s0->unk7 -= 3;
					temp_s0->unk8 -= 2;
				} else {
					temp_s0->unk6 -= 4;
					temp_s0->unk7 -= 4;
					temp_s0->unk8 -= 4;
				}
				if (temp_s0->unk2 < 0) {
					temp_s0->unk2 = 0;
					if (temp_s0->unkD == 0) {
						temp_s0->unkD = 1;
						temp_s0->unkA = (temp_s0->unkA + (func_800038E0_44E0() % 20)) - 0xA;
						temp_s0->unkC = (temp_s0->unkC + (func_800038E0_44E0() % 20)) - 0xA;
					}
				}
				var_s0 = temp_s1_2->unk4;
			}
			if ((var_s0 == -5) || (var_s0 == -6)) {
				break;
			}
		}
	}

	if (base[temp_s3->unk6].unk11 == 1) {
		func_80089408_1714C8(temp_fp);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089834_1718F4.s")
#endif

#ifdef NON_MATCHING
void func_80089BCC_171C8C(s32 arg0) {
	s16 effect;
	Unk84EECEffect *entry;
	Unk84EECEffect *base;

	effect = *(s16 *)(&D_800FB6FE + ((arg0 & 0xFF) * 0xC));
	base = (Unk84EECEffect *)&D_800FB7B0;
	effect = base[effect].unk4;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)D_100E080 & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);

	D_800FB6E5 = 0x20;
	D_800FB6E6 = 0x20;

	while ((effect != -5) && (effect != -6)) {
		entry = &base[effect];
		D_800FB6D0.x = entry->unk8;
		D_800FB6D0.y = entry->unkA;
		D_800FB6D0.z = entry->unkC;
		D_800FB6DC = &entry->unkE;
		D_800FB6E4 = entry->unk11;
		D_800FB6E0 = entry->unk2;
		func_8008A1D8_172298();
		effect = entry->unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089BCC_171C8C.s")
#endif

void func_80089E54_171F14(void) {
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800FB6D0.x + D_800FB6E0);
	D_8005BB34->v.ob[1] = (s16)(s32)D_800FB6D0.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800FB6D0.z + D_800FB6E0);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = ((u8 *)D_800FB6DC)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_800FB6DC)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_800FB6DC)[2];
	D_8005BB34->v.cn[3] = D_800FB6E4;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800FB6D0.x - D_800FB6E0);
	D_8005BB34->v.ob[1] = (s16)(s32)D_800FB6D0.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800FB6D0.z + D_800FB6E0);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = (u8)D_800FB6E5 << 6;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = ((u8 *)D_800FB6DC)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_800FB6DC)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_800FB6DC)[2];
	D_8005BB34->v.cn[3] = D_800FB6E4;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800FB6D0.x - D_800FB6E0);
	D_8005BB34->v.ob[1] = (s16)(s32)D_800FB6D0.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800FB6D0.z - D_800FB6E0);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = (u8)D_800FB6E5 << 6;
	D_8005BB34->v.tc[1] = (u8)D_800FB6E6 << 6;
	D_8005BB34->v.cn[0] = ((u8 *)D_800FB6DC)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_800FB6DC)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_800FB6DC)[2];
	D_8005BB34->v.cn[3] = D_800FB6E4;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800FB6D0.x + D_800FB6E0);
	D_8005BB34->v.ob[1] = (s16)(s32)D_800FB6D0.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800FB6D0.z - D_800FB6E0);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = (u8)D_800FB6E6 << 6;
	D_8005BB34->v.cn[0] = ((u8 *)D_800FB6DC)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_800FB6DC)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_800FB6DC)[2];
	D_8005BB34->v.cn[3] = D_800FB6E4;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, (Vtx *)((s32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}

#ifdef NON_MATCHING
void func_8008A1D8_172298(void) {
	f32 sp4;
	f32 temp_f0;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;

	temp_f0 = D_800FB6E0 * D_800FB6A8[0];
	temp_f12 = D_800FB6E0 * D_800FB6A8[1];
	temp_f14 = D_800FB6E0 * D_800FB6A8[2];
	temp_f16 = D_800FB6E0 * D_800FB6A8[3];
	temp_f18 = D_800FB6E0 * D_800FB6A8[4];
	sp4 = D_800FB6E0 * D_800FB6A8[5];

	D_8005BB34->v.ob[0] = (s16)(s32)(D_800FB6D0.x + temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800FB6D0.y + temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800FB6D0.z + temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = ((u8 *)D_800FB6DC)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_800FB6DC)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_800FB6DC)[2];
	D_8005BB34->v.cn[3] = D_800FB6E4;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800FB6D0.x + temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800FB6D0.y + temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800FB6D0.z + sp4);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = (u8)D_800FB6E5 << 6;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = ((u8 *)D_800FB6DC)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_800FB6DC)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_800FB6DC)[2];
	D_8005BB34->v.cn[3] = D_800FB6E4;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800FB6D0.x - temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800FB6D0.y - temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800FB6D0.z - temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = (u8)D_800FB6E5 << 6;
	D_8005BB34->v.tc[1] = (u8)D_800FB6E6 << 6;
	D_8005BB34->v.cn[0] = ((u8 *)D_800FB6DC)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_800FB6DC)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_800FB6DC)[2];
	D_8005BB34->v.cn[3] = D_800FB6E4;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800FB6D0.x - temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800FB6D0.y - temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800FB6D0.z - sp4);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = (u8)D_800FB6E6 << 6;
	D_8005BB34->v.cn[0] = ((u8 *)D_800FB6DC)[0];
	D_8005BB34->v.cn[1] = ((u8 *)D_800FB6DC)[1];
	D_8005BB34->v.cn[2] = ((u8 *)D_800FB6DC)[2];
	D_8005BB34->v.cn[3] = D_800FB6E4;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, (Vtx *)((s32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008A1D8_172298.s")
#endif

#ifdef NON_MATCHING
void func_8008A59C_17265C(void) {
	UnkFC8E8Entry *ptr = &D_800FC8E8;
	s32 var_v0 = 0;

	do {
		ptr[var_v0].unkA = 0;
		var_v0 = (var_v0 + 1) & 0xFF;
	} while (var_v0 < 0x14);
	D_800FCA78 = 0;
	D_800FCA79 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008A59C_17265C.s")
#endif

void func_8008A5E4_1726A4(void) {
	u8 activeCount;
	u8 i;
	UnkFC8E8Entry *entry;

	activeCount = D_800FCA78;
	i = 0;
	if ((s32)activeCount > 0) {
		do {
			entry = &(&D_800FC8E8)[i];
			if (entry->unkA != 0) {
				if (entry->unkF == 0) {
					if (entry->unk12 < entry->unkD) {
						entry->unkD = (u8)(entry->unkD - entry->unk12);
						entry->unkE++;
						if (entry->unkE >= D_800A2690_18A750[entry->unkC * 8]) {
							entry->unkE = 0;
						}
						entry->unkA += entry->unk10;
						if (!entry->unk12){}
						entry->unk2 += entry->unk11;
					} else {
						func_8008B058_173118(i);
					}
				} else {
					entry->unkF--;
				}

				activeCount--;
			}
			i++;
		} while ((s32)activeCount > 0);
	}
}

#ifdef NON_MATCHING
void func_8008A704_1727C4(void) {
	u8 count;
	u8 i;
	UnkFC8E8Entry *entry;
	s8 *tableA;
	u8 t5;
	s8 unk5;
	s8 t8;
	s8 t7;
	u8 t9;
	s32 mult;
	s32 t3;
	s32 t4;
	s32 v0;
	s32 t0;
	s32 v1;
	s8 field4;

	count = D_800FCA78;
	i = 0;

	if ((s32)count <= 0) {
		return;
	}

	do {
		entry = &(&D_800FC8E8)[i];
		
		if (entry->unkA == 0) {
			i++;
			continue;
		}
		
		if (entry->unkF != 0) {
			count--;
			continue;
		}
		
		t5 = entry->unkC;
		if ((t5 == 0xFF) || (entry->unkE == 0xFF)) {
			count--;
			continue;
		}

		gDPPipeSync(D_8005BB2C++);

		tableA = &D_800A2690_18A750[t5 * 8];
		unk5 = tableA[5];

		if (unk5 == 0) {
			t8 = tableA[7];
			t7 = tableA[6];
			t9 = entry->unkE;
			mult = t8 * t9 * t7 / 2;
			
			gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);

			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((D_800A269C_18A75C[t5] + mult) & 0x1FFFFFFF));

			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
				G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);

			gDPLoadSync(D_8005BB2C++);

			t3 = ((s32)((t8 * t7) + 3) >> 2) - 1;
			t4 = (t3 < 0x7FF) ? t3 : 0x7FF;
			
			v0 = t7 / 16;
			t0 = (v0 <= 0) ? 1 : v0;
			v1 = (v0 <= 0) ? 1 : v0;
			
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, t4, (s32)(t0 + 0x7FF) / v1);

			gDPPipeSync(D_8005BB2C++);

			gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, ((((s32)tableA[6] >> 1) + 7) >> 3), 0, G_TX_RENDERTILE, 0,
				G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);

			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (tableA[7] - 1) << G_TEXTURE_IMAGE_FRAC, (tableA[6] - 1) << G_TEXTURE_IMAGE_FRAC);
		} else if (unk5 == 1) {
			t8 = tableA[7];
			t7 = tableA[6];
			t9 = entry->unkE;
			mult = t8 * t9 * t7;
			
			gDPSetCombineLERP(D_8005BB2C++, SHADE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0);

			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, (void *)((D_800A269C_18A75C[t5] + mult) & 0x1FFFFFFF));

			gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
				G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);

			gDPLoadSync(D_8005BB2C++);

			t3 = ((s32)((t8 * t7) + 1) >> 1) - 1;
			t4 = (t3 < 0x7FF) ? t3 : 0x7FF;
			
			v0 = t7 / 8;
			t0 = (v0 <= 0) ? 1 : v0;
			v1 = (v0 <= 0) ? 1 : v0;
			
			gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, t4, (s32)(t0 + 0x7FF) / v1);

			gDPPipeSync(D_8005BB2C++);

			gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, ((tableA[6] + 7) >> 3), 0, G_TX_RENDERTILE, 0,
				G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
				G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);

			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (tableA[7] - 1) << G_TEXTURE_IMAGE_FRAC, (tableA[6] - 1) << G_TEXTURE_IMAGE_FRAC);
		}

		D_800FB6E5 = tableA[6];
		D_800FB6E6 = tableA[7];

		gDPPipeSync(D_8005BB2C++);

		D_800FB6D0.x = entry->unk0;
		D_800FB6D0.y = entry->unk2;
		D_800FB6D0.z = entry->unk4;
		D_800FB6DC = &entry->unk6;
		D_800FB6E0 = entry->unkA;
		D_800FB6E4 = entry->unkD;

		field4 = tableA[4];
		
		switch (field4) {
		case 0:
			func_8008A1D8_172298();
			break;
		case 2:
			func_80089E54_171F14();
			break;
		default:
			osSyncPrintf(D_800A53D4_18D494);
			break;
		}

		count--;
		i++;
	} while ((count & 0xFF) > 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008A704_1727C4.s")
#endif

#ifdef NON_MATCHING
s32 func_8008AD40_172E00(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u16 arg4) {
	UnkFC8E8Entry *entry;
	s8 *tableA;
	u8 slot;
	u8 search;
	u8 *tableB;

	if ((s32) D_800FCA78 >= 0x14) {
		return 0xFF;
	}

	entry = &(&D_800FC8E8)[D_800FCA79];
	entry->unk0 = arg0 * 4;
	entry->unk4 = arg2 * 4;
	entry->unk2 = arg1 * 4;

	tableA = &D_800A2690_18A750[arg3 * 8];
	entry->unkA = arg4;
	entry->unkC = arg3;
	entry->unkF = 0;
	entry->unk10 = tableA[1];
	entry->unk11 = tableA[2];
	entry->unk12 = tableA[3];

	slot = D_800FCA79;
	entry = &(&D_800FC8E8)[slot];
	tableB = &D_800A2698_18A758[arg3 * 4];
	entry->unkE = func_800038E0_44E0(entry, arg1, arg2, &D_800FC8E8) % tableA[0];
	entry->unkD = tableB[3];
	entry->unk6 = tableB[0];
	entry->unk7 = tableB[1];
	entry->unk8 = tableB[2];

	if (slot < 0x14) {
		search = slot;
		do {
			if ((&D_800FC8E8)[search].unkA == 0) {
				D_800FCA79 = search;
				search = 0x14;
			}
			search = (search + 1) & 0xFF;
		} while (search < 0x14);
	}

	D_800FCA78++;
	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008AD40_172E00.s")
#endif

void func_8008AF08_172FC8(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
	if (arg0 != 0xFF) {
		(&D_800FC8E8)[arg0].unk6 = arg1;
		(&D_800FC8E8)[arg0].unk7 = arg2;
		(&D_800FC8E8)[arg0].unk8 = arg3;
	}
}

#ifdef NON_MATCHING
void func_8008AF5C_17301C(s32 arg0, s32 arg1) {
	s32 temp_t6;
	s32 temp_t7;

	temp_t6 = arg0 & 0xFF;
	temp_t7 = arg1 & 0xFF;
	if (temp_t6 != 0xFF) {
		*(&D_800FC8F5 + (temp_t6 * 0x14)) = temp_t7;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008AF5C_17301C.s")
#endif

#ifdef NON_MATCHING
void func_8008AF94_173054(s32 arg0, s8 arg1) {
	s32 temp_t6 = arg0 & 0xFF;

	if (temp_t6 != 0xFF) {
		*(&D_800FC8FA + (temp_t6 * 0x14)) = arg1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008AF94_173054.s")
#endif

void func_8008AFD0_173090(u8 arg0, s8 arg1, s8 arg2) {
	if (arg0 != 0xFF) {
		(&D_800FC8E8)[arg0].unk10 = arg1;
		(&D_800FC8E8)[arg0].unk11 = arg2;
	}
}

#if NON_MATCHING
void func_8008B020_1730E0(s32 arg0, s32 arg1) {
	s32 temp_t6;
	s32 temp_t7;

	temp_t6 = arg0 & 0xFF;
	temp_t7 = arg1 & 0xFF;
	if (temp_t6 != 0xFF) {
		*(&D_800FC8F7 + (temp_t6 * 0x14)) = temp_t7;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008B020_1730E0.s")
#endif

void func_8008B058_173118(u8 arg0) {
	(&D_800FC8E8)[arg0].unkA = 0;
	if (arg0 < D_800FCA79) {
		D_800FCA79 = arg0;
	}
	D_800FCA78--;
}

#ifdef NON_MATCHING
// CURRENT(285)
void func_8008B0AC_17316C(void) {
	s32 i;
	s32 j;

	func_8008A59C_17265C();

	i = 0;
	do {
		*(((u8 *) &D_800FB6F8) + (i * 0xC)) = 0xFA;
	} while ((i = (i + 1) & 0xFF) < 0xF);

	j = 0;
	do {
		*(((u8 *) &D_800FB7B0) + (j * 0x16)) = 0;
	} while ((j = (j + 1) & 0xFFFF) < 0xC8);

	D_800FC8E2 = 0;
	D_800FC8E0 = 0;

	D_800FB6F8[14].pad0[0] = 3;
	D_800FB6F8[14].unk4 = 0;
	D_800FB6F8[14].unk6 = -6;
	*((s16 *) &D_800FB6F8[14].pad8[0]) = -6;

	D_800FB6F8[13].pad0[0] = 4;
	D_800FB6F8[13].unk4 = 0;
	D_800FB6F8[13].unk6 = -6;
	*((s16 *) &D_800FB6F8[13].pad8[0]) = -6;

	D_800FB6F8[12].pad0[0] = 5;
	D_800FB6F8[12].unk4 = 0;
	D_800FB6F8[12].unk6 = -6;
	*((s16 *) &D_800FB6F8[12].pad8[0]) = -6;

	D_800FB6F8[11].pad0[0] = 6;
	D_800FB6F8[11].unk4 = 0;
	D_800FB6F8[11].unk6 = -6;
	*((s16 *) &D_800FB6F8[11].pad8[0]) = -6;

	D_800FB7AD = 0;
	D_800FB7AC = 4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008B0AC_17316C.s")
#endif

#ifdef NON_MATCHING
void func_8008B1A8_173268(void) {
	s32 i;
	u8 mode;

	gSPSegment(D_8005BB2C++, 4, OS_K0_TO_PHYSICAL(&D_80031160));
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK | G_FOG | G_LIGHTING);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetRenderMode(D_8005BB2C++, G_RM_ZB_XLU_SURF, G_RM_ZB_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPPipeSync(D_8005BB2C++);

	func_80088B9C_170C5C();
	func_8008A704_1727C4();

	for (i = 0; (i & 0xFF) < 0xF; i = (i + 1) & 0xFF) {
		mode = D_800FB6F8[i].pad0[0];
		if (mode != 0xFA) {
			switch (mode) {
				case 0:
					func_80086FC4_16F084(i & 0xFF);
					break;
				case 1:
					func_80087A40_16FB00(i & 0xFF);
					break;
				case 2:
					func_80087CB8_16FD78(i & 0xFF);
					break;
				case 3:
					func_80087E3C_16FEFC();
					break;
				case 4:
					func_800881C0_170280();
					break;
				case 5:
					func_80088654_170714();
					break;
				case 6:
					func_80088DFC_170EBC(i & 0xFF);
					break;
				case 7:
					func_80089BCC_171C8C(i & 0xFF);
					break;
				case 8:
					break;
				default:
					osSyncPrintf(D_800A5410_18D4D0);
					break;
			}
		}
	}

	func_8008B594_173654();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008B1A8_173268.s")
#endif

#if NON_MATCHING
// CURRENT(1605)
void func_8008B474_173534(void) {
	func_8008311C_16B1DC();
	(&D_800FB6F0)[0] = (s16) ((s32) D_800E6A78.unk4C - (&D_800FB6E8)[0]);
	(&D_800FB6F0)[1] = (s16) ((s32) D_800E6A78.unk50 - (&D_800FB6E8)[1]);
	(&D_800FB6F0)[2] = (s16) ((s32) D_800E6A78.unk54 - (&D_800FB6E8)[2]);
	func_80086D88_16EE48(&D_800FB6F0);
	func_8008A5E4_1726A4();
	(&D_800FB6E8)[0] = (s16) (s32) D_800E6A78.unk4C;
	(&D_800FB6E8)[1] = (s16) (s32) D_800E6A78.unk50;
	(&D_800FB6E8)[2] = (s16) (s32) D_800E6A78.unk54;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008B474_173534.s")
#endif

void func_8008B53C_1735FC(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4) {
	D_800A26A0_18A760 = 1;
	D_800FCA7A = arg0 * 4;
	D_800FCA7C = arg1 * 4;
	D_800FCA7E = arg2 * 4;
	D_800FB6A0 = arg3;
	D_800FB6A2 = arg4;
}

#ifdef NON_MATCHING
void func_8008B594_173654(void) {
	s32 pad;
	s8 spA6;
	s8 spA5;
	s8 spA4;
	u32 temp_result;
	u8 temp_t5;

	if (D_800A26A0_18A760 != 0) {
		D_800A26A0_18A760 = 0;
		D_800FB6E5 = 0x20;
		D_800FB6E6 = 0x20;

		temp_t5 = D_800A26A4_18A764;

		gDPPipeSync(D_8005BB2C++);

		gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);

		gDPPipeSync(D_8005BB2C++);

		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)(((temp_t5 << 9) + (u32)&D_100BF00) & 0x1FFFFFFF));

		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
			G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);

		gDPLoadSync(D_8005BB2C++);

		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 0xFF, 0x400);

		gDPPipeSync(D_8005BB2C++);

		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
			G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);

		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);

		gDPPipeSync(D_8005BB2C++);

		temp_result = (temp_t5 + 1) & 0xFF;
		D_800A26A4_18A764 = (u8)temp_result;
		if (temp_result == 4) {
			D_800A26A4_18A764 = 0;
		}

		D_800FB6D0.x = D_800FCA7A;
		D_800FB6D0.y = D_800FCA7C;
		D_800FB6D0.z = D_800FCA7E;

		temp_result = func_800038E0_44E0();
		spA4 = (temp_result % 0x3C) + 0xC3;

		temp_result = func_800038E0_44E0();
		spA5 = (temp_result % 0x3C) + 0xC3;

		temp_result = func_800038E0_44E0();
		spA6 = (temp_result % 0x3C) + 0xC3;

		D_800FB6DC = &spA4;
		D_800FB6E0 = (f32)D_800FB6A0 * D_800A54D0_18D590;
		D_800FB6E4 = 0xFF;

		func_8008A1D8_172298();

		gDPPipeSync(D_8005BB2C++);

		gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);

		gDPPipeSync(D_8005BB2C++);

		gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);

		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, (u32)&D_1010880);

		gDPTileSync(D_8005BB2C++);

		gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 256, G_TX_LOADTILE, 0,
			G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);

		gDPLoadSync(D_8005BB2C++);

		gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 0xFF);

		gDPPipeSync(D_8005BB2C++);

		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, (void *)(D_800A2620_18A6E0[D_800FB6A2] & 0x1FFFFFFF));

		gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
			G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);

		gDPLoadSync(D_8005BB2C++);

		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 0x1FF, 0x200);

		gDPPipeSync(D_8005BB2C++);

		gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0, G_TX_RENDERTILE, 0,
			G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);

		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);

		gDPPipeSync(D_8005BB2C++);

		D_800FB6E0 = D_800FB6A0;

		func_8008A1D8_172298();

		gDPPipeSync(D_8005BB2C++);

		gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008B594_173654.s")
#endif


