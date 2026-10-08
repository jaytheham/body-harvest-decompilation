#include <ultra64.h>
#include "common.h"

// AI - Lens flare glow texture pointers indexed by flare type (D_800FB6A2)
u32 D_800A2620_18A6E0[28] = {
	0x00000000, 0x0100F080, 0x800A1A20, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x01010480,
	0x800A1E20, 0x800A2220, 0x800A1220, 0x800A1620,
	0x0100EC80, 0x800A0A20, 0x800A0E20, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000,
};

// AI - Animated sprite type table (8 bytes per type)
s8 D_800A2690_18A750[8] = {
	0x01, 0x03, 0x02, 0x0A, 0x00, 0x00, 0x20, 0x20,
};

// AI - Animated sprite entry data table (4 bytes per type)
u8 D_800A2698_18A758[4] = {
	0xC8, 0x96, 0x64, 0xFF,
};

// AI - Animated sprite texture base pointers
s32 D_800A269C_18A75C[1] = {
	0x0100E080,
};

// AI - Lens flare active flag
u8 D_800A26A0_18A760 = 0;

// AI - Lens flare animation frame counter
u8 D_800A26A4_18A764 = 0;

// AI - Unnamed padding before the UI sound tables
u8 pad_18A768[8] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };

// ============================================================
// 16AF30 rodata
// ============================================================

const char D_800A4F70_18D030[] = "ieNormVecF3()  {0,0,0} -> {0,0,0}\n"; // "ieNormVecF3()  {0,0,0} -> {0,0,0}\n"
const char D_800A4F94_18D054[] = "WARNING : Out of space to create a new special effect of type %d.\n"; // "WARNING : Out of space to create a new special effect of type %d.\n"
const char D_800A4FD8_18D098[] = "EFFECTS WARNING : Call to free up an effect which does not exist\n"; // "EFFECTS WARNING : Call to free up an effect which does not exist\n"
const char D_800A501C_18D0DC[] = "WARNING - New special effect unit cannot be allocated - out of space.\n"; // "WARNING - New special effect unit cannot be allocated - out of space.\n"
const char D_800A5064_18D124[] = "UNIT POOL CRITICAL ERROR - Call to free unused unit %d from effect %d\n"; // "UNIT POOL CRITICAL ERROR - Call to free unused unit %d from effect %d\n"
const char D_800A50AC_18D16C[] = "ERROR : Tried to kill unit from effect which has no units.\n"; // "ERROR : Tried to kill unit from effect which has no units.\n"
const char D_800A50E8_18D1A8[] = "ERROR : Unit list inconsistency occurred with 2 units left.\n"; // "ERROR : Unit list inconsistency occurred with 2 units left.\n"
const char D_800A5128_18D1E8[] = "EFFECTS WARNING : Call to free up invalid triple effect unit.\n"; // "EFFECTS WARNING : Call to free up invalid triple effect unit.\n"
const char D_800A5168_18D228[] = "EFFECTS WARNING : Call to free up invalid double effect unit.\n"; // "EFFECTS WARNING : Call to free up invalid double effect unit.\n"
const char D_800A51A8_18D268[] = "EFFECTS WARNING : Failed to create sparks system - cannot allocate any units\n"; // "EFFECTS WARNING : Failed to create sparks system - cannot allocate any units\n"
const char D_800A51F8_18D2B8[] = "SPECIAL FX WARNING : Call to create particle system with no sparks : 1 created\n"; // "SPECIAL FX WARNING : Call to create particle system with no sparks : 1 created\n"
const char D_800A5248_18D308[] = "EFFECTS WARNING : Failed to create sparks system - cannot allocate any units\n"; // "EFFECTS WARNING : Failed to create sparks system - cannot allocate any units\n"
const char D_800A5298_18D358[] = "SPECIAL FX WARNING : Call to create particle system with no sparks : 1 created\n"; // "SPECIAL FX WARNING : Call to create particle system with no sparks : 1 created\n"
const char D_800A52E8_18D3A8[] = "EFFECTS WARNING : Cannot start fire effect - there are no units left\n"; // "EFFECTS WARNING : Cannot start fire effect - there are no units left\n"
const char D_800A5330_18D3F0[] = "INSIDE EFFECTS WARNING : Spurt effect not created - could not allocated any units\n"; // "INSIDE EFFECTS WARNING : Spurt effect not created - could not allocated any units\n"
const char D_800A5384_18D444[] = "EFFECTS WARNING: Failed to create a jet stream - could not allocate any units\n"; // "EFFECTS WARNING: Failed to create a jet stream - could not allocate any units\n"
const char D_800A53D4_18D494[] = "Call to draw generic flat effect with unknown render type.\n"; // "Call to draw generic flat effect with unknown render type.\n"
const char D_800A5410_18D4D0[] = "INSIDE FX WARNING : Call to draw an effect of unknown type %d.\n"; // "INSIDE FX WARNING : Call to draw an effect of unknown type %d.\n"

const f64 D_800A5450_18D510[1] = {255.0};

const f64 D_800A5458_18D518[1] = {255.0};

const f64 D_800A5460_18D520[1] = {255.0};

const f64 D_800A5468_18D528[1] = {0.9};

const f64 D_800A5470_18D530[1] = {255.0};

const f64 D_800A5478_18D538[1] = {255.0};

const f64 D_800A5480_18D540[1] = {255.0};

const u32 jtbl_800A5488_18D548[] = {
	0x80086DDC, 0x80086DEC, 0x80086DFC, 0x80086E0C, 0x80086E1C, 0x80086E2C, 0x80086E3C, 0x80086E4C, 
	0x80086E5C,
};

const u32 jtbl_800A54AC_18D56C[] = {
	0x8008B3B0, 0x8008B3C0, 0x8008B3D0, 0x8008B3E0, 0x8008B3F0, 0x8008B400, 0x8008B438, 0x8008B410, 
	0x8008B420,
};

const f64 D_800A54D0_18D590[1] = {1.2};

// AI - 3x3 matrix-by-vector multiplication
void func_80082E70_16AF30(f32 *arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg1->x * arg0[0] + arg1->y * arg0[3] + arg0[6] * arg1->z;
	arg2->y = arg1->x * arg0[1] + arg1->y * arg0[4] + arg0[7] * arg1->z;
	arg2->z = arg1->x * arg0[2] + arg1->y * arg0[5] + arg0[8] * arg1->z;
}

// AI - 3D vector cross product
void func_80082F04_16AFC4(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg0->y * arg1->z - arg0->z * arg1->y;
	arg2->y = arg0->z * arg1->x - arg0->x * arg1->z;
	arg2->z = arg0->x * arg1->y - arg0->y * arg1->x;
}

// AI - Divide vector by scalar
void func_80082F74_16B034(f32 arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg1->x / arg0;
	arg2->y = arg1->y / arg0;
	arg2->z = arg1->z / arg0;
}

// AI - Squared magnitude of a 3D vector
f32 func_80082F9C_16B05C(Vec3f *arg0) {
	return (arg0->x * arg0->x) + (arg0->y * arg0->y) + (arg0->z * arg0->z);
}

// AI - Magnitude (length) of a 3D vector
f32 func_80082FC4_16B084(Vec3f *arg0) {
	f32 var_f12;

	var_f12 = func_80082F9C_16B05C(arg0);
	if ((f64) var_f12 != 0.0) {
		var_f12 = sqrtf(var_f12);
	}
	return var_f12;
}

// CURRENT(380)
#ifdef NON_MATCHING
// AI - Normalize a 3D vector (divide by its magnitude)
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

// AI - Dot product of two 3D vectors
f32 func_80083090_16B150(Vec3f *arg0, Vec3f *arg1) {
	return (arg0->x * arg1->x) + (arg0->y * arg1->y) + (arg0->z * arg1->z);
}

// AI - Subtract two 3D vectors (arg0 - arg1)
void func_800830C0_16B180(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg0->x - arg1->x;
	arg2->y = arg0->y - arg1->y;
	arg2->z = arg0->z - arg1->z;
}

// AI - Multiply vector by scalar
void func_800830F4_16B1B4(f32 arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg1->x * arg0;
	arg2->y = arg1->y * arg0;
	arg2->z = arg1->z * arg0;
}

// AI - Initialize effect billboard orientation matrix
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
// AI - Allocate an effect slot from the pool of 15
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

// AI - Free/return an effect slot to the pool
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

// AI - Allocate a new visual effect instance (up to 200 max)
s16 func_80083390_16B450(u8 arg0) {
	s16 i;
	s16 effect;

	if (D_800FC8E0 >= 0xC8) {
		osSyncPrintf(&D_800A501C_18D0DC);
		effect = -3;
	} else {
		effect = D_800FC8E2;
		D_800FB7B0[effect].unk0 = 1;
		D_800FB7B0[effect].unk2 = 1;
		D_800FB7B0[effect].unk4 = -5;

		if (D_800FB6F8[arg0].unk4 == 0) {
			D_800FB6F8[arg0].unk6 = effect;
			D_800FB7B0[effect].unk6 = -4;
		} else {
			D_800FB7B0[effect].unk6 = D_800FB6F8[arg0].unk8;
			D_800FB7B0[D_800FB6F8[arg0].unk8].unk4 = effect;
		}

		D_800FB6F8[arg0].unk8 = effect;
		D_800FB6F8[arg0].unk4++;
		D_800FC8E0++;
		D_800FC8E2 = 0xC8;

		i = effect;
		if (effect < 0xC8) {
			do {
				if (D_800FB7B0[i].unk0 == 0) {
					D_800FC8E2 = i;
					i = 0xC8;
				}
				i++;
			} while (i < 0xC8);
			}
	}

	return effect;
}

// AI - Allocate two visual effects for a slot
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

// AI - Allocate a single visual effect for a slot
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
// AI - Remove/free a visual effect instance from the linked list
void func_800835F0_16B6B0(s16 arg0, u8 arg1) {
	Unk84EECEffect *effect;
	UnkFB6F8Entry *slot;
	s16 temp;
	Unk84EECEffect *baseEffect;

	effect = &D_800FB7B0[arg0];
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
				effect = &D_800FB7B0[slot->unk6];
				effect->unk6 = -4;
				effect->unk4 = -5;
			} else if (effect->unk4 == -5) {
				slot->unk8 = temp;
				effect = &D_800FB7B0[slot->unk6];
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
				effect = &D_800FB7B0[effect->unk4];
				effect->unk6 = -4;
			} else if (effect->unk4 == -5) {
				slot->unk8 = temp;
				effect = &D_800FB7B0[temp];
				effect->unk4 = -5;
			} else {
				effect = &D_800FB7B0[effect->unk4];
				effect->unk6 = temp;
				effect = &D_800FB7B0[slot->unk6];
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

// AI - Remove three specific effects from a slot
void func_80083814_16B8D4(s16 arg0, u8 arg1)
{
	s16 sp1E;
	UnkFB6F8Entry *new_var2;
	u8 new_var;
	new_var2 = D_800FB6F8;
	if ((arg0 < 0) ||
		(arg0 >= 0xC8) ||
		(arg1 >= 0xF) ||
		(((*(D_800FB6F8 + arg1)).unk0 != 0xB) && (new_var2[arg1].unk0 != 0xC)))
	{
	}
	else
	{
		sp1E = D_800FB7B0[arg0].unk4;
		func_800835F0_16B6B0((s32)arg0, arg1);
		new_var = arg1;
		arg0 = D_800FB7B0[sp1E].unk4;
		func_800835F0_16B6B0(sp1E, arg1);
		func_800835F0_16B6B0(arg0, new_var);
		return;
	}
	osSyncPrintf(&D_800A5128_18D1E8);
}

// AI - Remove two specific effects from a slot
void func_80083924_16B9E4(s16 arg0, u8 arg1) {
	s16 sp1E;

	if (arg0 >= 0 && arg0 < 0xC8 && arg1 < 0xF) {
		sp1E = D_800FB7B0[arg0].unk4;
		func_800835F0_16B6B0(arg0, arg1);
		func_800835F0_16B6B0(sp1E, arg1);
		return;
	}
	osSyncPrintf(&D_800A5168_18D228);
}

// AI - Remove all effects from a slot
void func_800839B8_16BA78(u8 arg0) {
	if (D_800FB6F8[arg0].unk4 > 0) {
		do {
			func_800835F0_16B6B0(D_800FB6F8[arg0].unk6, arg0);
		} while (D_800FB6F8[arg0].unk4 > 0);
	}
}

// CURRENT(2243)
#ifdef NON_MATCHING
// AI - Spawn a new visual particle effect (copy from template with randomization)
void func_80083A20_16BAE0(u8 arg0, Vec3f *arg1, u8 arg2, u8 arg3) {
	f32 sp3C;
	f32 sp38;
	f32 sp34;
	s16 temp;
	s16 radius;
	s16 sp30;
	s16 sp2E;
	s16 idx;
	Unk84EECEffect *effectUnit;
	Unk84EECEffect *newUnit;

	effectUnit = &D_800FB7B0[D_800FB6F8[arg0].unk6];
	idx = func_80083390_16B450(arg0);
	if (idx != -3) {
		if (effectUnit->unk12 == 1) {
			newUnit = &D_800FB7B0[idx];
			newUnit->unk8 = effectUnit->unk8;
			newUnit->unkA = effectUnit->unkA;
			newUnit->unkC = effectUnit->unkC;
			sp34 = (f32) ((f32) (func_800038E0_44E0() % arg3) / D_800A5450_18D510[0]);
			if ((func_800038E0_44E0() % 21) < 10) {
				sp34 = 0.0f - sp34;
			}
			sp34 += arg1->x;
			sp38 = (f32) ((f32) (func_800038E0_44E0() % arg3) / D_800A5458_18D518[0]);
			if ((func_800038E0_44E0() % 21) < 10) {
				sp38 = 0.0f - sp38;
			}
			sp38 += arg1->y;
			sp3C = (f32) ((f32) (func_800038E0_44E0() % arg3) / D_800A5460_18D520[0]);
			if ((func_800038E0_44E0() % 21) < 10) {
				sp3C = 0.0f - sp3C;
			}
			sp3C += arg1->z;
			func_80083014_16B0D4((Vec3f *)&sp34, (Vec3f *)&sp34);
			newUnit->unkE = ((f32) (arg2 / 4) * sp34);
			sp34 = sp3C;
			newUnit->unkF = ((f32) (arg2 / 4) * sp38);
			newUnit->unk11 = 0xFF;
			newUnit->unk12 = 0;
			newUnit->unk10 = ((f32) (arg2 / 4) * sp34);
			return;
		}
		radius = (((u16)effectUnit->unk14 << 8) | effectUnit->unk15);
		sp30 = (func_800038E0_44E0() % (radius * 2)) - radius;
		sp2E = (func_800038E0_44E0() % (radius * 2)) - radius;
		temp = (func_800038E0_44E0() % (radius * 2)) - radius;
		newUnit = &D_800FB7B0[idx];
		newUnit->unk8 = effectUnit->unk8 + sp30;
		newUnit->unkA = effectUnit->unkA + sp2E;
		newUnit->unkC = effectUnit->unkC + temp;
		newUnit->unkE = -(sp30 / (s32)effectUnit->unk11);
		newUnit->unkF = -(sp2E / (s32)effectUnit->unk11);
		newUnit->unk10 = -(temp / (s32)effectUnit->unk11);
		newUnit->unk11 = 0xC;
		newUnit->unk12 = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083A20_16BAE0.s")
#endif

// AI - Create a burst effect (explosion) with randomized particle positions
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
			*(s16 *)((u8 *)&D_800FB702 + slot * 12) = effect;
		entry->unk2 = arg9;
		entry->unk8 = arg0 << 2;
		entry->unkA = arg1 << 2;
		entry->unkC = arg2 << 2;
		entry->unkE = arg10;
		entry->unkF = arg11;
		entry->unk10 = arg12;
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

// AI - Create a particle burst with specified parameters
void func_800840F0_16C1B0(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4, u8 arg5, u8 arg6) {
	u8 slot;
	s32 effect;
	Unk84EECEffect *entry;
	s32 i;
	s32 count;

	slot = func_80083224_16B2E4(2);
	effect = slot;
	if (effect != 0xFB) {
		effect = func_80083390_16B450(slot);
		if (effect == -3) {
			osSyncPrintf(&D_800A5248_18D308);
			func_80083300_16B3C0(slot);
			return;
		}

		D_800FB6F8[slot].unkA = effect;
		entry = &D_800FB7B0[effect];
		count = arg5;
		arg5 += 0;

		entry->unk2 = arg6;
		entry->unk8 = arg0 * 4;
		entry->unkA = arg1 * 4;
		entry->unkC = arg2 * 4;
		entry->unkE = 0xFF;
		entry->unkF = 0xFF;
		entry->unk10 = 0xFF;
		*(s16 *)&entry->unk14 = arg3;
		entry->unk12 = 2;
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

// AI - Update effect state: movement, aging, and spawning sub-effects
void func_80084258_16C318(u8 arg0) {
	UnkFB6F8Entry *owner;
	s16 effect;
	Unk89408Pos *s2;
	Unk89408Pos *dstPos;

	for (owner = &D_800FB6F8[arg0],
		 effect = owner->unk6,
		 s2 = (Unk89408Pos *)&D_800FB7B0[effect].unk8,
		 effect = D_800FB7B0[effect].unk4,
		 dstPos = (Unk89408Pos *)&D_800FB7B0[effect].unk8;
		 effect != -5 && effect != -6;
		 dstPos = (Unk89408Pos *)&D_800FB7B0[effect].unk8) {

			if (s2->unkA == 2) {
				u8 life;

				life = s2->unk9;
				if (life == 0) {
					func_800839B8_16BA78(arg0);
					func_80083300_16B3C0(arg0);
					return;
				}

				dstPos->unk6 = (s8)((s2->unk0 - dstPos->unk0) / life);
				dstPos->unk7 = (s8)((s2->unk2 - dstPos->unk2) / s2->unk9);
				dstPos->unk8 = (s8)((s2->unk4 - dstPos->unk4) / s2->unk9);
				dstPos->unk0 += dstPos->unk6;
				dstPos->unk2 += dstPos->unk7;
				dstPos->unk4 += dstPos->unk8;
				if (dstPos->unk9 < 0xEB) {
					dstPos->unk9 += 0x14;
				}
				effect = D_800FB7B0[effect].unk4;
			} else {
				if (dstPos->unk9 < 0xF) {
					s16 nextEffect;

					if (owner->unk4 < 3) {
						func_800839B8_16BA78(arg0);
						func_80083300_16B3C0(arg0);
						return;
					}
					nextEffect = D_800FB7B0[effect].unk4;
					func_800835F0_16B6B0(effect, arg0);
					effect = nextEffect;
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
					if (!effect) {}
					effect = D_800FB7B0[effect].unk4;
				}
			}
	}

	if (s2->unkA == 2) {
		s2->unk9 -= 1;
		s2->unk6 = (s8)((func_800038E0_44E0() % 55) + 0xC8);
		s2->unk7 = (s8)((func_800038E0_44E0() % 55) + 0xC8);
		s2->unk8 = (s8)((func_800038E0_44E0() % 55) + 0xC8);
	}
}

// AI - Create a child particle effect with randomized spread and colors (debris/sparks)
void func_80084628_16C6E8(u8 arg0) {
	Unk84EECEffectPositionView *basePos;
	s32 unused;
	s16 spread;
	s16 effect;
	s16 positionIndex;
	u16 quarter;
	Unk89408Pos *effectPos;
	Unk84EECEffect *effectRecord;
	s32 half;
	s32 third;
	basePos = (Unk84EECEffectPositionView *)&D_800FB7B0[(s32)D_800FB6F8[arg0].unk6].unk8;
	spread = D_800FB7B0[(s32)D_800FB6F8[arg0].unk6].unk2;
	effect = func_80083390_16B450(arg0);
	if (effect == -3) {
		return;
	}

	quarter = spread / 4;
	effectRecord = &D_800FB7B0[effect];
	effectRecord->unk2 = (func_800038E0_44E0() % quarter) + quarter;
	positionIndex = effect;
	effectPos = (Unk89408Pos *)(u32)&D_800FB7B0[(s32)positionIndex].unk8;
	effectPos->unk6 = (basePos->unk9 + basePos->unk6.bytes.high) / 2;
	effectPos->unk7 = (basePos->unkA + basePos->unk6.bytes.low) / 2;
	effectPos->unk8 = (basePos->unkB + basePos->unk8) / 2;
	effectPos->unk9 = (func_800038E0_44E0() % 0x32) + 0x5A;

	half = quarter / 2;
	third = quarter / 3;
	effectPos->unkA = (func_800038E0_44E0() % half) + third;
	effectPos->unkC = (func_800038E0_44E0() % half) + third;
	effectPos->unkB = (func_800038E0_44E0() % half) + third;
	effectPos->unkD = (func_800038E0_44E0() % half) + third;

	effectPos->unk0 = ((func_800038E0_44E0() % spread) / 2) + basePos->unk0 - quarter;
	effectPos->unk2 = basePos->unk2;
	effectPos->unk4 = ((func_800038E0_44E0() % spread) / 2) + basePos->unk4 - quarter;
}

// AI - Create a child effect based on a parent effect's position
void func_80084980_16CA40(u8 arg0, u8 arg1)
{
  u16 quarter;
  s16 effect;
  Unk84EECEffectPositionView *basePos;
  s16 spread;
  Unk84EECEffectPositionView *effectPos;

  basePos = (Unk84EECEffectPositionView *)&D_800FB7B0[D_800FB6F8[arg0].unk6].unk8;
  spread = D_800FB7B0[D_800FB6F8[arg0].unk6].unk2;
  if (arg1 == 0xFB) {
    return;
  }
  effect = func_80083390_16B450(arg1);
  if (effect == -3) {
    return;
  }

  quarter = spread / 4;
  D_800FB7B0[effect].unk2 = (func_800038E0_44E0() % 5) + quarter;
  effectPos = (Unk84EECEffectPositionView *)&D_800FB7B0[effect].unk8;

  effectPos->unk0 = (basePos->unk0 + ((func_800038E0_44E0() % spread) / 2)) - quarter;

  effectPos->unk2 = ((func_800038E0_44E0() % 10) + basePos->unk2) + quarter;

  effectPos->unk4 = (basePos->unk4 + ((func_800038E0_44E0() % spread) / 2)) - quarter;
  effectPos->unk9 = 0x3C;
  effectPos->unkA = 0;

  effectPos->unk6.bytes.high = (func_800038E0_44E0() % 30) + 0xB4;

  effectPos->unk6.bytes.low = (func_800038E0_44E0() % 30) + 0xA0;

  effectPos->unk8 = (func_800038E0_44E0() % 30) + 0xA0;
}

// AI - Allocate an effect slot and store a value
s32 func_80084C18_16CCD8(u8 arg0)
{
	u8 result = func_80083224_16B2E4(1);

	if (result != 0xFB)
	{
		D_800FB6F8[result].unk2 = arg0;
	}
	return result;
}

// CURRENT(6485)
#ifdef NON_MATCHING
// Create a fire effect
u8 func_80084C68_16CD28(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u16 arg4, u8 arg5, u8 arg6, u8 arg7) {
	UnkFB6F8Entry *owner;
	Unk84EECEffect *entry;
	Unk84EECEffect *linked;
	u8 slot;
	s16 effect;

	if ((slot = func_80083224_16B2E4(0)) != 0xFB) {
		effect = func_80083584_16B644(slot);
		if (effect == -3) {
			osSyncPrintf(D_800A52E8_18D3A8);
			func_80083300_16B3C0(slot);
			return 0xFB;
		}

		entry = &D_800FB7B0[effect];
			owner = &D_800FB6F8[slot];

		entry->unk8 = arg0 * 4;
		owner->unkA = effect;
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
	}

	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084C68_16CD28.s")
#endif

// CURRENT(525)
// AI - Create a linked paired effect (two entries linked together)
#ifdef NON_MATCHING
s16 func_80084EEC_16CFAC(s16 arg0, s16 arg1, s16 arg2, volatile s16 arg3, u8 arg4, u8 arg5, u8 arg6, u8 arg7, u8 arg8, u8 arg9, u8 arg10, u8 arg11) {
	s16 effect;
	u16 temp;
	s16 linkedIndex;
	s16 x;
	s16 y;
	s16 z;
	s16 scale;
	Unk84EECEffect *entry;
	Unk84EECEffect *other;
	Unk84EECEffectTail *entryTail;

	effect = func_80083584_16B644(0xD);
	if (effect != -3) {
		temp = (s16)(s32)((f64)(f32)arg3 * D_800A5468_18D528[0]);
		entry = &D_800FB7B0[effect];
			entryTail = (Unk84EECEffectTail *)&entry->unk8;
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
			scale = (u8)(0xFF - arg10);
		}

		entryTail->unkB = scale;
		entryTail->unkA = 0;
		entryTail->unkC = 0;

		linkedIndex = D_800FB7B0[effect].unk4;
		other = &D_800FB7B0[linkedIndex];
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
// Create a candle flame effect
s16 func_8008506C_16D12C(s16 arg0, s16 arg1, s16 arg2, s16 arg3)
{
	Unk84EECEffectTail *temp_s0;
	s16 effect;
	effect = func_80083390_16B450(0xC);
	if (effect != -3)
	{
		temp_s0 = (Unk84EECEffectTail *)&D_800FB7B0[effect].unk8;
		D_800FB7B0[effect].unk2 = arg3;
		D_800FB7B0[effect].unk8 = arg0 * 4;
		D_800FB7B0[effect].unkA = arg1 * 4;
		D_800FB7B0[effect].unkC = arg2 * 4;

		temp_s0->unk9 = (func_800038E0_44E0() % (arg3 / 2)) + arg3 / 3;
		temp_s0->unkB = (func_800038E0_44E0() % (arg3 / 2)) + arg3 / 3;
		temp_s0->unkA = (func_800038E0_44E0() % (arg3 / 2)) + arg3 / 3;
		temp_s0->unkC = (func_800038E0_44E0() % (arg3 / 2)) + arg3 / 3;
		temp_s0->unk6 = func_80084EEC_16CFAC(arg0, arg1 + (arg3 / 8), arg2, arg3 * 2, 0xF0, 0xC8, 0x64, 0xFF, 0xB4, 0x46, 0x32, 1);
	}
	return effect;
}

// CURRENT(1082)
// AI - Spawn a child particle effect with randomized offset from parent
#ifdef NON_MATCHING
void func_800852B8_16D378(s32 arg0) {
	u8 slot;
	s16 stackPad0;
	s16 stackPad1;
	s16 templateIndex;
	s16 *templateIndexPointer;
	Unk84EECEffectTemplateData *templateData;
	Vec3f sourceVector;
	Vec3f destinationVector;
	Unk84EECEffect *baseEffect;
	s16 child;
	s16 sourceIndex;

	slot = arg0 & 0xFF;
	sourceIndex = D_800FB6F8[slot].unk6;
	baseEffect = &D_800FB7B0[sourceIndex];
	templateIndex = baseEffect->unk4;
	templateIndexPointer = &templateIndex;
	child = func_80083390_16B450(slot);
	if (child == -3) {
		return;
	}
	D_800FB7B0[child].unk8 = baseEffect->unk8;
	baseEffect = (Unk84EECEffect *)&baseEffect->unk8;
	D_800FB7B0[child].unkA = ((Unk84EECEffectTailView *)baseEffect)->unk2;
	D_800FB7B0[child].unkC = ((Unk84EECEffectTailView *)baseEffect)->unk4;
	templateData = (Unk84EECEffectTemplateData *)&D_800FB7B0[*templateIndexPointer].unk8;
	D_800FB7B0[child].unk11 = templateData->unk10;
	D_800FB7B0[child].unk2 = (func_800038E0_44E0() % (D_800FB7B0[sourceIndex].unk2 * 2)) + D_800FB7B0[sourceIndex].unk2;

	sourceVector.x = (f32)templateData->offsetX;
	sourceVector.y = (f32)templateData->offsetY;
	sourceVector.z = (f32)templateData->offsetZ;
	func_80083014_16B0D4(&sourceVector, &sourceVector);

	destinationVector.x = (f32)((f64)(f32)(func_800038E0_44E0() % templateData->radius) / D_800A5470_18D530[0]);
	if ((func_800038E0_44E0() % 21) < 10) {
		destinationVector.x = 0.0f - destinationVector.x;
	}
	destinationVector.x += sourceVector.x;

	destinationVector.y = (f32)((f64)(f32)(func_800038E0_44E0() % templateData->radius) / D_800A5478_18D538[0]);
	if ((func_800038E0_44E0() % 21) < 10) {
		destinationVector.y = 0.0f - destinationVector.y;
	}
	destinationVector.y += sourceVector.y;

	destinationVector.z = (f32)((f64)(f32)(func_800038E0_44E0() % templateData->radius) / D_800A5480_18D540[0]);
	if ((func_800038E0_44E0() % 21) < 10) {
		destinationVector.z = 0.0f - destinationVector.z;
	}
	destinationVector.z += sourceVector.z;

	baseEffect = &D_800FB7B0[child];
	func_80083014_16B0D4(&destinationVector, &destinationVector);

	baseEffect = (Unk84EECEffect *)&baseEffect->unk8;
	((Unk84EECEffectTailView *)baseEffect)->unkA = (s8)((s32)templateData->strength / 4 * destinationVector.x);
	((Unk84EECEffectTailView *)baseEffect)->unkB = (s8)((s32)templateData->strength / 4 * destinationVector.y);
	((Unk84EECEffectTailView *)baseEffect)->unkC = (s8)((s32)templateData->strength / 4 * destinationVector.z);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800852B8_16D378.s")
#endif

// AI - Create a simple effect instance with position and color data
void func_8008568C_16D74C(s16 arg0, s16 arg1, u16 arg2, u8 arg3, u8 arg4, u8 arg5, u8 arg6) {
	s16 temp_arg0;
	s16 effect;
	Unk84EECEffect *entry;

	temp_arg0 = arg0;
	effect = func_80083390_16B450(0xB);
	if (effect != -3) {
		entry = &D_800FB7B0[effect];
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
// AI - Create a multi-part debris/shatter effect with two linked entries
#ifdef NON_MATCHING
u8 func_8008574C_16D80C(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6, u16 arg7, u8 arg8, u8 arg9, u8 arg10, u8 arg11, u8 arg12, u8 arg13) {
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s16 effect;
	Unk84EECEffect *entry;
	Unk84EECEffectBytes *other;
	u8 ret;
	s16 temp;
	u8 life;
	Unk84EECEffectTailUpdate *tail;
	s16 clamp;

	pad0 = 0;
	pad1 = 0;
	pad2 = 0;

	if ((ret = func_80083224_16B2E4(7)) != 0xFB) {
		effect = func_80083584_16B644(ret);
		temp = arg10;
		if (effect == -3) {
			osSyncPrintf(D_800A5330_18D3F0);
			func_80083300_16B3C0(ret);
			return 0xFB;
		} else {
			entry = &D_800FB7B0[effect];
					other = (Unk84EECEffectBytes *)&D_800FB7B0[entry->unk4];
			entry->unk2 = arg7;
			entry->unk8 = arg0 << 2;
			entry->unkA = arg1 << 2;
			entry->unkC = arg2 << 2;

			other->unk8 = arg3;
			other->unk9 = arg4;
			other->unkA = arg5;
			other->unkB = arg6;
			other->unkC = arg9;

			entry->unkE = temp;
			entry->unkF = arg11;
			entry->unk10 = arg12;
			tail = (Unk84EECEffectTailUpdate *)&entry->unk8;

			clamp = temp - 0x78;
			if (clamp < 0) {
				clamp = 0;
			}
			tail->unk9 = clamp;

			clamp = arg11 - 0x78;
			if (clamp < 0) {
				clamp = 0;
			}
			tail->unkA = clamp;

			clamp = arg12 - 0x78;
			if (clamp < 0) {
				clamp = 0;
			}
			tail->unkB = clamp;

			tail = (Unk84EECEffectTailUpdate *)&other->unk8;
			tail->pad8 = arg13;
			life = arg8;
			if (life >= 0x4C) {
				life = 0x4B;
			} else if (life == 0) {
				life = 1;
			}
			tail->unk5 = life;
			tail->unk6.word = 0;
		}
	}

	return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008574C_16D80C.s")
#endif

// AI - Wrapper to create a debris effect with preset parameters
void func_800858F4_16D9B4(s16 arg0, s16 arg1, s16 arg2) {
	func_8008574C_16D80C(arg0, arg1, arg2, 0, 0x78, 0, 0x28, 8, 0x1E, 0x96, 0xAA, 0xB4, 0xFF, 0x78);
}

// CURRENT(168)
// AI - Create a random scatter effect with sub-particle burst
#ifdef NON_MATCHING
s32 func_80085984_16DA44(s16 arg0, u8 arg1, u8 arg2, s16 arg3, s16 arg4, s16 arg5) {
	UnkScatterEffectTail *entry;
	s32 half;
	s8 dirY;
	s16 ret;
	u16 randY;
	u16 randX;
	s8 dirX;

	ret = func_80083390_16B450(0xE);
	if (ret != -3) {
		D_800FB7B0[ret].unk2 = arg0;
		entry = (UnkScatterEffectTail *)&D_800FB7B0[ret].unk8;
		half = arg1 / 2;
		entry->unk0 = (func_800038E0_44E0() % arg1) + arg3 * 4 - half;
		entry->unk2 = (func_800038E0_44E0() % arg1) + arg4 * 4 - half;
		entry->unk4 = (func_800038E0_44E0() % arg1) + arg5 * 4 - half;
		entry->unk6 = -1;
		entry->unk7 = -1;
		entry->unk8 = -1;
		entry->unk9 = arg1;
		entry->unkA = func_800038E0_44E0() % 8;
		entry->unkB = arg2;
		entry->unkC = 0;

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
// AI - Create a scatter effect with a specific flag set
void func_80085CB4_16DD74(s16 arg0, s16 arg1, s16 arg2) {
	s32 temp_v0;

	temp_v0 = func_80085984_16DA44(0x28, 0x50, (func_800038E0_44E0() % 5) + 5, arg0, arg1, arg2);
	if (temp_v0 != -3) {
		D_800FB7B0[temp_v0].unk14 = 1;
	}
}

// AI - Update effect slot type 1: animation and aging
void func_80085D40_16DE00(u8 arg0) {
	UnkFB6F8Entry *temp_s4;
	s16 var_s3;
	Unk84EECEffectTailUpdate *temp_s0;
	s16 temp_s0_2;
	s32 rand2;

	temp_s4 = &D_800FB6F8[(u8)arg0];
	var_s3 = temp_s4->unk6;
	if ((var_s3 == -5) || (var_s3 == -6)) {
		return;
	}

	for (;;) {
		temp_s0 = (Unk84EECEffectTailUpdate *)&D_800FB7B0[var_s3].unk8;
		if (D_800FB7B0[var_s3].unk11 < 0x1E) {
			if ((temp_s4->unk2 == 0xF1) && (temp_s4->unk4 == 1)) {
				func_800839B8_16BA78(arg0);
				func_80083300_16B3C0(arg0);
				return;
			}

			temp_s0_2 = D_800FB7B0[var_s3].unk4;
			func_800835F0_16B6B0(var_s3, arg0);
			var_s3 = temp_s0_2;
		} else {
			if (temp_s0->unkA == 0) {
				if (temp_s0->unk9 >= 0xAB) {
					temp_s0->unkA = 1;
				} else {
					temp_s0->unk9 = temp_s0->unk9 + 0x13;
				}
			} else {
				temp_s0->unk9 -= 0x19;
			}

			rand2 = func_800038E0_44E0() % 2;
			temp_s0->pad2 = (temp_s0->pad2 + rand2) + 2;
			rand2 = func_800038E0_44E0() % 2;
			D_800FB7B0[var_s3].unk2 = (D_800FB7B0[var_s3].unk2 + rand2) + 2;
			temp_s0->unk6.bytes.high -= 3;
			temp_s0->unk6.bytes.low -= 3;
			temp_s0->pad8 -= 3;
			var_s3 = D_800FB7B0[var_s3].unk4;
		}

		if ((var_s3 == -5) || (var_s3 == -6)) {
			break;
		}
	}
}

// CURRENT(1342)
// AI - Update effect slot type 0: random jitter, color, and lifecycle
#ifdef NON_MATCHING
void func_80085F28_16DFE8(u8 arg0) {
	Unk84EECEffectTailUpdate *s1;
	Unk84EECEffect *s2;
	s16 s3;
	s16 s4;
	UnkFB6F8Entry *slot;
	Unk84EECEffectTailView *spread;
	Unk84EECEffectTailUpdate *spreadTail;
	s16 effect;
	void *saved[3];

	slot = &D_800FB6F8[arg0];
	s2 = &D_800FB7B0[slot->unk6];
	s1 = (Unk84EECEffectTailUpdate *)&D_800FB7B0[s2->unk4].unk8;
	spread = (Unk84EECEffectTailView *)&s2->unk2;
	spreadTail = (Unk84EECEffectTailUpdate *)&s2->unk8;
	{
		s32 counter;

		counter = s1->pad4 + 1;
		s1->pad4 = counter;
		if ((counter & 0xFF) == 0x10) {
			s1->pad4 = 0;
		}
	}
	saved[0] = s1;
	saved[2] = slot;
	s3 = 6;
	s4 = 1;
	if ((func_800038E0_44E0() % s3) == s4) {
		s1->unk5 = (func_800038E0_44E0() % (spread->unk0 / 4)) - (spread->unk0 / 8);
	}
	if ((func_800038E0_44E0() % s3) == s4) {
		s1->unk6.bytes.low = (func_800038E0_44E0() % (spread->unk0 / 4)) - (spread->unk0 / 8);
	}
	if ((func_800038E0_44E0() % s3) == s4) {
		s1->unk6.bytes.high = (func_800038E0_44E0() % (spread->unk0 / 4)) - (spread->unk0 / 8);
	}
	if ((func_800038E0_44E0() % s3) == s4) {
		s1->pad8 = (func_800038E0_44E0() % (spread->unk0 / 4)) - (spread->unk0 / 8);
	}

	if ((func_800038E0_44E0() % 4) == s4) {
		s16 slotIndex;

		slotIndex = ((UnkFB6F8Entry *)saved[2])->unk2;
		if (D_800FB6FC[slotIndex * 0xC] < 0x23) {
			func_80084980_16CA40(arg0, slotIndex);
		}
	}

	if (((func_800038E0_44E0() % 2) == s4) && (((UnkFB6F8Entry *)saved[2])->unk4 < 0x14)) {
		func_80084628_16C6E8(arg0);
	}

	if (s1->pad0 != 0xFFFF) {
		if (s1->pad0 > 0) {
			s1->pad0--;
			effect = spread->unk0;
			if (effect < s1->pad2) {
				spread->unk0 = effect + 2;
				spreadTail->pad2 = spreadTail->pad2 + 1;
			}
		} else {
			if (spread->unk0 >= 0x1F) {
				spread->unk0 = spread->unk0 - 2;
				spreadTail->pad2 = spreadTail->pad2 - 1;
			} else {
				s16 expirationIndex;

			expirationIndex = ((UnkFB6F8Entry *)saved[2])->unk2;
		if (expirationIndex != 0xFB) {
					D_800FB6F8[expirationIndex].unk2 = 0xF1;
				}
				func_800839B8_16BA78(arg0);
				func_80083300_16B3C0(arg0);
				return;
			}
		}
	}

	effect = *(s16 *)((u8 *)saved[0] - 4);
	for (; (effect != -5) && (effect != -6);) {
			Unk84EECEffectTailUpdate *entry8;

			entry8 = (Unk84EECEffectTailUpdate *)&D_800FB7B0[effect].unk8;
			if (D_800FB7B0[effect].unk11 < 0x1E) {
				s16 nextEffect;

				nextEffect = D_800FB7B0[effect].unk4;
					func_800835F0_16B6B0(effect, arg0);
					effect = nextEffect;
			} else {
				entry8->unkA = (func_800038E0_44E0() % 8) + 5;
				entry8->unkC = (func_800038E0_44E0() % 8) + 5;
				entry8->unkB = (func_800038E0_44E0() % 0xA) + 7;
				entry8->unkD = (func_800038E0_44E0() % 0xA) + 7;
				entry8->unk9 = (entry8->unk9 - (func_800038E0_44E0() % 4)) - 6;
				entry8->pad2 = entry8->pad2 + (func_800038E0_44E0() % 4) + 5;
				entry8->unk6.bytes.low = entry8->unk6.bytes.low - 2;
				entry8->pad8 = entry8->pad8 - 3;
				effect = D_800FB7B0[effect].unk4;
			}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80085F28_16DFE8.s")
#endif

// AI - Update effect slot type 3: movement, color cycling, and expiration
void func_80086550_16E610(void)
{
	s16 effect;
	s16 nextEffect;
	u8 alpha;

	alpha = 0xFF;
	for (effect = D_800FB7A6; (effect != -5) && (effect != -6);)
	{
		Unk84EECEffectTailView *tail;
		s8 *entry8;

		tail = (Unk84EECEffectTailView *)&D_800FB7B0[effect].unk8;
		entry8 = (s8 *)tail;
		D_800FB7B0[effect].unk13--;
		if (D_800FB7B0[effect].unk13 == 0)
		{
			nextEffect = D_800FB7B0[effect].unk4;
			func_800835F0_16B6B0(effect, 0xE);
			effect = nextEffect;
		}
		else
		{
			if (tail->unkC == 1)
			{
				tail->unk0 += D_800FB6F0.x * 4;
				tail->unk2 += D_800FB6F0.y * 4;
				tail->unk4 += D_800FB6F0.z * 4;
			}

			entry8[6] = (func_800038E0_44E0() % 0x55) + 0xAA;
			entry8[7] = (func_800038E0_44E0() % 0x55) + 0xAA;
			tail->unk8 = alpha;
			tail->unkA++;
			if (tail->unkA >= 8)
			{
				tail->unkA = 0;
			}
					effect = D_800FB7B0[effect].unk4;
		}
	}
}

// AI - Update effect slot type 4: oscillating ping-pong animation
void func_80086728_16E7E8(void) {
	s16 effect;

	for (effect = D_800FB79A; (effect != -5) && (effect != -6); effect = D_800FB7B0[effect].unk4) {
			s32 value;
			Unk84EECEffect *entry;
			s8 *entry8;

			entry = &D_800FB7B0[effect];
					entry8 = (s8 *) entry + 8;
			if ((u8)entry8[0xC] == 0) {
				value = (s16)((func_800038E0_44E0() % 2) + 2);
				value += entry8[0xA];
				if (entry8[0xB] < value) {
					entry8[0xC] = 1;
				} else {
					entry8[0xA] = value;
				}
			} else {
				value = (s16)(-5 - (func_800038E0_44E0() % 5));
				value += entry8[0xA];
				if (value < -entry8[0xB]) {
					entry8[0xC] = 0;
				} else {
					entry8[0xA] = value;
				}
			}
	}
}

// AI - Update effect slot type 5: randomize spread values
void func_8008688C_16E94C(void) {
	s16 effect;
	Unk84EECEffectTailView *tail;

	for (effect = D_800FB78E; (effect != -5) && (effect != -6); effect = D_800FB7B0[effect].unk4) {
		Unk84EECEffectTailView *tailCopy;
		s32 spread;

		tail = (Unk84EECEffectTailView *) &D_800FB7B0[effect].unk8;
		tailCopy = tail;
		spread = D_800FB7B0[effect].unk2 / 4;
		spread = (s16) spread;

		tail->unk9 = (func_800038E0_44E0() % spread) + spread;
		tail->unkB = (func_800038E0_44E0() % spread) + spread;
		tail->unkA = (func_800038E0_44E0() % spread) + spread;
		tailCopy->unkC = (func_800038E0_44E0() % spread) + spread;
	}
}

// AI - Update effect slot type 6: manage shrinking/lifetime
void func_80086A34_16EAF4(void) {
	s16 effect;
	s16 nextEffect;

	effect = D_800FB782;
	if ((effect != -5) && (effect != -6)) {
		do {
			Unk84EECEffectTailView *tail = (Unk84EECEffectTailView *) ((u8 *) &D_800FB7B0[effect] + 8);
			if (D_800FB7B0[effect].unk12 < 9) {
				nextEffect = D_800FB7B0[effect].unk4;
				func_800835F0_16B6B0(effect, 0xB);
					effect = nextEffect;
			} else {
				if (tail->unk9 < 4) {
					D_800FB7B0[effect].unk2 += tail->unkB;
				}
				tail->unk9++;
				tail->unkA -= 7;
						effect = D_800FB7B0[effect].unk4;
			}
		} while ((effect != -5) && (effect != -6));
	}
}

// AI - Update effect slot type 7: physics (gravity, movement) and spawn child effects
#ifdef NON_MATCHING
void func_80086B34_16EBF4(u8 arg0) {
	u8 slotIdx;
	UnkFB6F8Entry *slot;
	Unk84EECEffect *head;
	Unk84EECEffectTailView *entryTail;
	Unk84EECEffectTailView *headTail;
	Unk84EECEffect * volatile headEffect;
	Unk84EECEffect *entry;
	Unk84EECEffect *effects;
	s16 next;
	s16 effect;
	u16 timer;
	s8 clamp;
	s32 i;
	u8 count;

	slotIdx = arg0;
	effects = D_800FB7B0;
	slot = &D_800FB6F8[slotIdx];
		head = &effects[slot->unk6];
		headEffect = &effects[head->unk4];
		effect = headEffect->unk4;

	if ((effect != -5) && (effect != -6)) {
		clamp = -0x14;
		do {
			entry = &effects[effect];
			entryTail = (Unk84EECEffectTailView *) &entry->unk8;
			headTail = (Unk84EECEffectTailView *) &head->unk8;

			entryTail->unk0 += (s8) entry->unk12;
			entryTail->unk4 += (s8) entry->unk14;
			entry->unkA += (s8) entry->unk13;

			if ((s8) entryTail->unkB >= -0x13) {
				entryTail->unkB = (s8) entryTail->unkB - 1;
			} else {
				entryTail->unkB = clamp;
			}

			if (entryTail->unk2 < 2) {
				func_8008568C_16D74C(entryTail->unk0, entryTail->unk4, entry->unk2, ((u8 *)headTail)[6], ((u8 *)headTail)[7], ((u8 *)headTail)[8], *((u8 *)entry + 9));

				if ((slot->unk4 < 4) && (*((u8 *) headEffect + 0xD) == 0)) {
				func_800839B8_16BA78(slotIdx);
				func_80083300_16B3C0(slotIdx);
					return;
				}

				next = entry->unk4;
				func_800835F0_16B6B0(effect, slotIdx);
				effect = next;
			} else {
				effect = entry->unk4;
			}
		} while ((effect != -5) && (effect != -6));
	}

	timer = *(u16 *) &headEffect->unkE;
	if (timer > 0) {
		entryTail = (Unk84EECEffectTailView *) ((u8 *) headEffect + 8);
		entryTail->unk6 = timer - 1;
		return;
	}

	entryTail = (Unk84EECEffectTailView *) ((u8 *) headEffect + 8);
	count = (func_800038E0_44E0() % 3) + 2;
	for (i = 0; i < count; i = (i + 1) & 0xFF) {
		if (((u8 *) entryTail)[5] > 0) {
		func_800852B8_16D378(arg0);
			((u8 *) entryTail)[5]--;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086B34_16EBF4.s")
#endif
#ifdef NON_MATCHING
// CURRENT(5)
// AI - Main update dispatcher: iterate all 15 slots and call type-specific update
void func_80086D88_16EE48(void) {
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

// CURRENT(15)
// AI - Remove a slot and clean up all its associated effects
#ifdef NON_MATCHING
void func_80086E90_16EF50(u8 arg0) {
	UnkFB6F8Entry * volatile sp1C;
	s16 temp_v1;
	register UnkFB6F8Entry *temp_s0;

	if (arg0 < 0xF) {
		if (D_800FB6F8[arg0].unk0 == 0) {
			sp1C = &D_800FB6F8[arg0];
			func_800839B8_16BA78(arg0);
			temp_s0 = sp1C;
			temp_v1 = temp_s0->unk2;
			if (temp_v1 != 0xFB) {
				D_800FB6F8[temp_v1].unk2 = 0xF1;
			}
			func_80083300_16B3C0(arg0);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086E90_16EF50.s")
#endif

// AI - Remove effects linked to slot 0xD
void func_80086F24_16EFE4(s16 arg0) {
	if (arg0 != -3) {
		func_80083924_16B9E4(arg0, 0xD);
	}
}

// AI - Remove a specific effect and its linked sub-effect
void func_80086F58_16F018(s16 arg0) {
	if (arg0 != -3) {
		func_80086F24_16EFE4(*(s16 *)&D_800FB7B0[arg0].unkE);
		func_800835F0_16B6B0(arg0, 0xC);
	}
}

#ifdef NON_MATCHING
// AI - Render slot type 0 effects: textured billboard quads with color
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
	sp30 = &D_800FB7B0[sp9C];
	sp9A = sp30->unk4;
	sp28 = &D_800FB7B0[sp9A];

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_1007A70[sp28->unkC]));
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
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100DE00));
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
		temp_t5 = &D_800FB7B0[var_a2];
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
		gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
		gSP2Triangles(D_8005BB2C++, 0, 2, 3, 0, 3, 1, 2, 0);

		var_a2 = temp_t5->unk4;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086FC4_16F084.s")
#endif

// AI - Render slot type 1 effects: textured billboard quads
void func_80087A40_16FB00(u8 arg0) {
	s16 var_s1;

	var_s1 = D_800FB6F8[arg0].unk6;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100E080));
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

	while ((var_s1 != -5) && (var_s1 != -6)) {
		D_800FB6D0.x = (f32)D_800FB7B0[var_s1].unk8;
		D_800FB6D0.y = (f32)D_800FB7B0[var_s1].unkA;
		D_800FB6D0.z = (f32)D_800FB7B0[var_s1].unkC;
		D_800FB6DC = &D_800FB7B0[var_s1].unkE;
		D_800FB6E0 = (f32)D_800FB7B0[var_s1].unk2;
		D_800FB6E4 = D_800FB7B0[var_s1].unk11;
		func_8008A1D8_172298();
		var_s1 = D_800FB7B0[var_s1].unk4;
	}
}



#ifdef NON_MATCHING
// CURRENT(3405)
// AI - Render slot type 2 effects: simple shaded triangles
void func_80087CB8_16FD78(s32 arg0) {
	f32 sp58[3];
	UnkFB6F8Entry *entry;
	Unk84EECEffect *effectBase;
	Unk84EECEffect *effect;
	s8 *color;
	s16 next;

	entry = &D_800FB6F8[arg0 & 0xFF];
	effectBase = D_800FB7B0;
	next = effectBase[entry->unk6].unk4;
	color = &effectBase[entry->unk6].unkE;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPPipeSync(D_8005BB2C++);

	if ((next != -5) && (next != -6)) {
		do {
		effect = &D_800FB7B0[next];
		sp58[0] = effect->unk8;
		sp58[1] = effect->unkA;
		sp58[2] = effect->unkC;
		func_80089148_171208(sp58, (u8 *)color, effectBase[entry->unk6].unk2, effect->unk11);
		next = effect->unk4;
		} while ((next != -5) && (next != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80087CB8_16FD78.s")
#endif

// CURRENT(2501)
#ifdef NON_MATCHING
// AI - Render slot type 3 effects: camera-facing sprites with texture
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

			entry = &D_800FB7B0[effect];
		
			gDPPipeSync(D_8005BB2C++);
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1,
				K0_TO_PHYS(D_100E880 + (entry->unk12 << 7)));
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
// CURRENT(40) - permuter campaign 987 -> 452 -> 40: sp9C.x/sp9C.y field reads re-expressed as
// (&D_800FB7B0[var_t2])->unkN (matching sp9C.z, 987 -> 452), and the `var_t2 = D_800FB79A` load hoisted to
// the first statement (452 -> 40; the target schedules it into the `lw`-delay slot at instruction 5).
// Earlier in the campaign: 1724 -> 1456 -> 1236 -> 987 (see NOTES.md).
void func_800881C0_170280(void)
{
  Unk89834Pos *spAC;
  s32 var_s6;
  Vec3f sp9C;
  s16 var_t2;
  Unk89834Pos *s1;
  var_t2 = D_800FB79A;
  gDPPipeSync(D_8005BB2C++);
  gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
  D_800FB6E5 = 0x20;
  D_800FB6E6 = 0x20;
  var_s6 = 0;
  if ((var_t2 != (-5)) && (var_t2 != (-6)))
  {
    if (!s1->unk4)
    {
    }
    spAC = spAC;
    do
    {
      gDPPipeSync(D_8005BB2C++);
      if (var_s6 == 0)
      {
        gDPSetTextureImage(D_8005BB2C++, 4, G_IM_SIZ_16b, 1, ((u32) D_100DA00) & 0x1FFFFFFF);
        gDPSetTile(D_8005BB2C++, 4, G_IM_SIZ_16b, 0, 0x0000, 7, 0, 0 | 0x2, 0, 0, 0 | 0x2, 0, 0);
        gDPLoadSync(D_8005BB2C++);
        gDPLoadBlock(D_8005BB2C++, 7, 0, 0, 255, 1024);
        gDPPipeSync(D_8005BB2C++);
        gDPSetTile(D_8005BB2C++, 4, G_IM_SIZ_4b, 2, 0x0000, 0, 0, 0 | 0x2, 0, 0, 0 | 0x2, 0, 0);
        gDPSetTileSize(D_8005BB2C++, 0, 0, 0, 31 << 2, 31 << 2);
        var_s6 = 1;
        D_800FB6E4 = spAC->unk9 - 0x28;
      }
      else
      {
        gDPSetTextureImage(D_8005BB2C++, 4, G_IM_SIZ_16b, 1, ((u32) D_100DC00) & 0x1FFFFFFF);
        gDPSetTile(D_8005BB2C++, 4, G_IM_SIZ_16b, 0, 0x0000, 7, 0, 0 | 0x2, 0, 0, 0 | 0x2, 0, 0);
        gDPLoadSync(D_8005BB2C++);
        gDPLoadBlock(D_8005BB2C++, 7, 0, 0, 255, 1024);
        gDPPipeSync(D_8005BB2C++);
        gDPSetTile(D_8005BB2C++, 4, G_IM_SIZ_4b, 2, 0x0000, 0, 0, 0 | 0x2, 0, 0, 0 | 0x2, 0, 0);
        gDPSetTileSize(D_8005BB2C++, 0, 0, 0, 31 << 2, 31 << 2);
        var_s6 = 0;
        D_800FB6E4 = spAC->unk9 + spAC->unkA;
      }
      gDPPipeSync(D_8005BB2C++);
      s1 = &D_800FB7B0[var_t2];
      s1 = (Unk89834Pos *) (&s1->unk8);
      spAC = s1;
      sp9C.x = (D_800E7410.x * 4.0f) - ((f32) (&D_800FB7B0[var_t2])->unk8);
      sp9C.y = (D_800E7410.y * 4.0f) - ((f32) (&D_800FB7B0[var_t2])->unkA);
      s1 = &D_800FB7B0[var_t2];
      sp9C.z = (D_800E7410.z * 4.0f) - ((f32) (&D_800FB7B0[var_t2])->unkC);
      func_80083014_16B0D4(&sp9C, &sp9C);
      D_800FB6D0.x = ((f32) s1->unk0) + (sp9C.x * ((f32) s1->unkD));
      D_800FB6D0.y = ((f32) s1->unk2) + (sp9C.y * ((f32) s1->unkD));
      D_800FB6D0.z = ((f32) s1->unk4) + (sp9C.z * ((f32) s1->unkD));
      D_800FB6DC = &s1->unk6;
      D_800FB6E0 = (f32) s1->unk2;
      D_800FB6E4 = s1->unk9 + s1->unkA;
      func_8008A1D8_172298();
      var_t2 = s1->unk4;
    }
    while ((var_t2 != (-5)) && (var_t2 != (-6)));
    if (var_t2 == (-6))
    {
      spAC = spAC;
    }
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800881C0_170280.s")
#endif

#ifdef NON_MATCHING
// AI - Render slot type 5 effects: fire/magma-like particles
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
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(&D_100DE00));
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

// CURRENT(110)
// AI - Render slot type 6 effects: shrinking sprites
void func_80088B9C_170C5C(void) {
	s16 effect;

	D_800FB6E5 = 0x20;
	D_800FB6E6 = 0x20;
	effect = D_800FB782;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100E080));
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
			gDPPipeSync(D_8005BB2C++);
			D_800FB6D0.x = (f32)D_800FB7B0[effect].unk8;
			D_800FB6D0.y = (f32)D_800FB7B0[effect].unkA;
			D_800FB6D0.z = (f32)D_800FB7B0[effect].unkC;
			D_800FB6DC = &D_800FB7B0[effect].unkE;
			D_800FB6E0 = (f32)D_800FB7B0[effect].unk2;
			D_800FB6E4 = D_800FB7B0[effect].unk12;
			func_80089E54_171F14();
			effect = D_800FB7B0[effect].unk4;
		} while ((effect != -6) && (effect != -5));
	}
}

// CURRENT(4471)
// AI - Render slot type 6 effects with prim/env colors (glow effects)
#ifdef NON_MATCHING
void func_80088DFC_170EBC(s32 arg0) {
	s16 effect;
	Unk84EECEffectTail *base;
	Unk84EECEffect *baseStart;
	Unk84EECEffect *entry;
	s16 posX;
	s16 posY;
	s16 posZ;

	baseStart = &D_800FB7B0[D_800FB6F8[arg0 & 0xFF].unk6];
	entry = &D_800FB7B0[baseStart->unk4];
	effect = entry->unk4;

	D_800FB6E5 = 0x10;
	D_800FB6E6 = 0x10;

	if (*(u16 *)&entry->unkE > 0) {
		return;
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100D700));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 127, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 15 << G_TEXTURE_IMAGE_FRAC, 15 << G_TEXTURE_IMAGE_FRAC);
	gDPPipeSync(D_8005BB2C++);

	if ((effect != -6) && (effect != -5)) {
		base = (Unk84EECEffectTail *)&baseStart->unk8;
		do {
			entry = &D_800FB7B0[effect];
					gDPSetPrimColor(D_8005BB2C++, 0, 0, ((u8 *)&base->unk6)[0], ((u8 *)&base->unk6)[1], base->pad8, entry->unk11);
			gDPSetEnvColor(D_8005BB2C++, base->unk9, base->unkA, base->unkB, entry->unk11);
			gDPPipeSync(D_8005BB2C++);

			posX = entry->unk8;
			posY = entry->unkA;
			posZ = entry->unkC;
			D_800FB6D0.x = (f32)posX;
			D_800FB6D0.y = (f32)posY;
			D_800FB6D0.z = (f32)posZ;
			D_800FB6DC = (s8 *)&base->unk6;
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

// CURRENT(60)
#ifdef NON_MATCHING
// AI - Render a single textured triangle
void func_80089148_171208(f32 *arg0, u8 *arg1, u16 arg2, u8 arg3) {
	f32 sp4;
	f32 temp_f0;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;

	temp_f0 = D_800FB6A8[0] * (f32)arg2;
	temp_f12 = D_800FB6A8[1] * (f32)arg2;
	temp_f14 = D_800FB6A8[2] * (f32)arg2;
	temp_f16 = D_800FB6A8[3] * (f32)arg2;
	temp_f18 = D_800FB6A8[4] * (f32)arg2;
	sp4 = D_800FB6A8[5] * (f32)arg2;

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
	D_8005BB34->v.ob[2] = (s16)(s32)(arg0[2] + sp4);
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
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 3), 3, 0);
	gSP1Triangle(D_8005BB2C++, 0, 1, 2, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089148_171208.s")
#endif

// CURRENT(3705)
// AI - Spawn a child particle effect for rendering
#ifdef NON_MATCHING
void func_80089408_1714C8(u8 arg0) {
	s16 srcIndex;
	Unk89408Pos *srcPos;
	s16 dstIndex;
	Unk89408Pos *dstPos;
	s32 temp;

	srcIndex = D_800FB6F8[arg0].unk6;
	dstIndex = func_80083390_16B450(arg0);
	if (dstIndex != -3) {
		srcPos = (Unk89408Pos *)&D_800FB7B0[srcIndex].unk8;
		srcIndex = srcPos->unkA;

		if (srcIndex == 1) {
			D_800FB7B0[dstIndex].unk2 = (func_800038E0_44E0() % 0x23) + 0x23;
			D_800FB7B0[dstIndex].unk11 = 0x82;
			dstPos = (Unk89408Pos *)&D_800FB7B0[dstIndex].unk8;
			dstPos->unk6 = 0xAA;
			dstPos->unk7 = 0xAA;
			dstPos->unk8 = 0xAA;
		} else if (srcIndex == 0) {
			D_800FB7B0[dstIndex].unk2 = (func_800038E0_44E0() % 0xA) + 0xA;
			D_800FB7B0[dstIndex].unk11 = 0xFF;
			dstPos = (Unk89408Pos *)&D_800FB7B0[dstIndex].unk8;
			dstPos->unk6 = 0xFF;
			dstPos->unk7 = 0xFF;
			dstPos->unk8 = 0xFF;
		} else {
			D_800FB7B0[dstIndex].unk2 = (func_800038E0_44E0() % 0xA) + 0xA;
			D_800FB7B0[dstIndex].unk11 = 0xFF;
			dstPos = (Unk89408Pos *)&D_800FB7B0[dstIndex].unk8;
			dstPos->unk6 = 0x32;
			dstPos->unk7 = 0xFF;
			dstPos->unk8 = 0x82;
		}

		dstPos->unk0 = srcPos->unk0;
		dstPos->unk2 = srcPos->unk2;
		dstPos->unk4 = srcPos->unk4;
		dstPos->unkA = (func_800038E0_44E0() % 6) + srcPos->unk6 - 3;
		dstPos->unkB = (func_800038E0_44E0() % 6) + srcPos->unk7 - 3;
		temp = func_800038E0_44E0() % 6;
		dstPos->unkD = 0;
		dstPos->unkC = srcPos->unk8 + temp - 3;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089408_1714C8.s")
#endif

// Create a large candle(?) flame effect
u8 func_80089648_171708(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6)
{
	f32 dummy1;
	f32 dummy2;
	u8 slot = func_80083224_16B2E4(8);
	s32 effect;
	if (slot != 0xFB)
	{
		effect = func_80083390_16B450(slot);
		if (effect == (-3))
		{
			osSyncPrintf(D_800A5384_18D444, (unsigned long)slot);
			func_80083300_16B3C0(slot);
			return 0xFB;
		}
		D_800FB7B0[effect].unk8 = arg0 * 4;
		D_800FB7B0[effect].unkA = arg1 * 4;
		D_800FB7B0[effect].unkC = arg2 * 4;
		D_800FB7B0[effect].unkE = arg3;
		D_800FB7B0[effect].unkF = arg4;
		D_800FB7B0[effect].unk10 = arg5;
		D_800FB7B0[effect].unk11 = 1;
		D_800FB7B0[effect].unk12 = arg6;
	}
	return slot;
}

// AI - Update an effect's position data
void func_8008972C_1717EC(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	s16 temp_v0;
	s8 *temp_v1;

	temp_v0 = *(s16 *)(&D_800FB6FE + (arg3 * 0xC));
	temp_v1 = (s8 *)&D_800FB7B0[temp_v0];
	*(s16 *)(temp_v1 + 0x8) = arg0 * 4;
	*(s16 *)(temp_v1 + 0xA) = arg1 * 4;
	*(s16 *)(temp_v1 + 0xC) = arg2 * 4;
}

// AI - Handle cleanup for slot type 8 effects
void func_80089794_171854(u8 arg0) {
	if ((arg0 < 0xF) && (D_800FB6F8[arg0].unk0 == 8)) {
		if ((s32)D_800FB6F8[arg0].unk4 < 2) {
			func_800839B8_16BA78(arg0);
			func_80083300_16B3C0(arg0);
			return;
		}
		D_800FB7B0[D_800FB6F8[arg0].unk6].unk11 = 0;
	}
}

// AI - Update slot type 8 effects: gravity, bounce, and lifecycle
void func_80089834_1718F4(u8 arg0) {
	typedef struct {
		s16 unk0;
		s16 unk2;
		s16 unk4;
		u8 unk6;
		u8 unk7;
		u8 unk8;
		u8 unk9;
		s8 unkA;
		s8 unkB;
		s8 unkC;
		u8 unkD;
	} Unk89834Pos;
	s32 pad4C;
	s32 pad48;
	s32 pad44;
	Unk89408Pos *sp40;
	s16 var_s0;
	Unk89834Pos *temp_s0;
	UnkFB6F8Entry *temp_s3;

	temp_s3 = &D_800FB6F8[arg0];
	var_s0 = temp_s3->unk6;
	sp40 = (Unk89408Pos *)&D_800FB7B0[var_s0].unk8;
	for (var_s0 = D_800FB7B0[var_s0].unk4; (var_s0 != -5) && (var_s0 != -6);) {
			temp_s0 = (Unk89834Pos *)&D_800FB7B0[var_s0].unk8;
			if (D_800FB7B0[var_s0].unk11 < 0x34) {
				s16 temp_s2;
				if ((temp_s3->unk4 < 3) && (D_800FB7B0[temp_s3->unk6].unk11 == 0)) {
					func_800839B8_16BA78(arg0);
					func_80083300_16B3C0(arg0);
					return;
				}
				temp_s2 = D_800FB7B0[var_s0].unk4;
				func_800835F0_16B6B0(var_s0, arg0);
				var_s0 = temp_s2;
			} else {
				if (temp_s0->unkD == 0) {
					temp_s0->unk9 = (temp_s0->unk9 - (func_800038E0_44E0() % 6)) - 6;
					D_800FB7B0[var_s0].unk2 = (func_800038E0_44E0() % 3) + D_800FB7B0[var_s0].unk2 + 3;
				} else {
					temp_s0->unk9 = (temp_s0->unk9 - (func_800038E0_44E0() % 7)) - 7;
					D_800FB7B0[var_s0].unk2 = (func_800038E0_44E0() % 6) + D_800FB7B0[var_s0].unk2 + 6;
				}
				temp_s0->unk0 += temp_s0->unkA;
				temp_s0->unk2 += temp_s0->unkB;
				temp_s0->unk4 += temp_s0->unkC;
				if (sp40->unkA == 2) {
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
						temp_s0->unkA += (func_800038E0_44E0() % 20) - 0xA;
						temp_s0->unkC += (func_800038E0_44E0() % 20) - 0xA;
					}
				}
				var_s0 = D_800FB7B0[var_s0].unk4;
			}
	}

	if (D_800FB7B0[temp_s3->unk6].unk11 == 1) {
		func_80089408_1714C8(arg0);
	}
}

// AI - Render slot type 7 effects: smoke/cloud sprites
void func_80089BCC_171C8C(u8 arg0) {
	s16 var_s1;

	var_s1 = D_800FB6F8[arg0].unk6;
	var_s1 = D_800FB7B0[var_s1].unk4;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_100E080));
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

	while ((var_s1 != -5) && (var_s1 != -6)) {
		D_800FB6D0.x = (f32)D_800FB7B0[var_s1].unk8;
		D_800FB6D0.y = (f32)D_800FB7B0[var_s1].unkA;
		D_800FB6D0.z = (f32)D_800FB7B0[var_s1].unkC;
		D_800FB6DC = &D_800FB7B0[var_s1].unkE;
		D_800FB6E0 = (f32)D_800FB7B0[var_s1].unk2;
		D_800FB6E4 = D_800FB7B0[var_s1].unk11;
		func_8008A1D8_172298();
		var_s1 = D_800FB7B0[var_s1].unk4;
	}
}

// AI - Render an axis-aligned textured quad/billboard
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
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}

// AI - Render an oriented textured quad (camera-facing billboard with rotation)
void func_8008A1D8_172298(void) {
	f32 sp4;
	f32 temp_f0;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;

	temp_f0 = D_800FB6E0;
	temp_f0 *= D_800FB6A8[0];
	temp_f12 = D_800FB6E0;
	temp_f12 *= D_800FB6A8[1];
	temp_f14 = D_800FB6E0;
	temp_f14 *= D_800FB6A8[2];
	temp_f16 = D_800FB6E0;
	temp_f16 *= D_800FB6A8[3];
	temp_f18 = D_800FB6E0;
	temp_f18 *= D_800FB6A8[4];
	sp4 = D_800FB6E0;
	sp4 *= D_800FB6A8[5];

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
	gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}

// AI - Initialize/clear the UnkFC8E8Entry sprite table
void func_8008A59C_17265C(void) {
	u8 i;

	for (i = 0; i < 0x14; i++) {
		(&D_800FC8E8)[i].unkA = 0;
	}
	D_800FCA78 = 0;
	D_800FCA79 = 0;
}

// AI - Update UnkFC8E8Entry animated sprite entries (advance animation frames)
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
// AI - Render animated sprite entries from UnkFC8E8Entry table
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

			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_800A269C_18A75C[t5] + mult));

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

			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_800A269C_18A75C[t5] + mult));

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

// CURRENT(3275)
// AI - Allocate a new animated sprite slot in UnkFC8E8Entry table
#ifdef NON_MATCHING
s32 func_8008AD40_172E00(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u16 arg4) {
	UnkFC8E8Entry *entry;
	s8 *tableA;
	u8 *tableB;
	u8 slot;
	u8 search;
	u8 *arg3Ptr;
	s32 divisor;
	s32 result;

	if ((s32) D_800FCA78 >= 0x14) {
		return 0xFF;
	}

	slot = D_800FCA79;
	entry = &(&D_800FC8E8)[slot];
	entry->unk0 = arg0 * 4;
	entry->unk2 = arg1 * 4;
	entry->unk4 = arg2 * 4;
	entry->unkA = arg4;
	entry->unkC = arg3;
	entry->unkF = 0;
	tableA = &D_800A2690_18A750[arg3 * 8];
	entry->unk10 = tableA[1];
	entry->unk11 = tableA[2];
	entry->unk12 = tableA[3];

	result = func_800038E0_44E0(entry, arg1, arg2, &D_800FC8E8);
	slot = D_800FCA79;
	entry = &(&D_800FC8E8)[slot];
	divisor = tableA[0];
	arg3Ptr = &arg3;
	tableB = &D_800A2698_18A758[*arg3Ptr * 4];
	entry->unkE = result % divisor;
	entry->unkD = tableB[3];
	entry->unk6 = tableB[0];
	entry->unk7 = tableB[1];
	entry->unk8 = tableB[2];

	for (search = slot; search < 0x14; search++) {
		if ((&D_800FC8E8)[search].unkA == 0) {
			D_800FCA79 = search;
			search = 0x14;
		}
	}

	D_800FCA78++;
	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008AD40_172E00.s")
#endif

// AI - Set sprite entry color values
void func_8008AF08_172FC8(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
	if (arg0 != 0xFF) {
		(&D_800FC8E8)[arg0].unk6 = arg1;
		(&D_800FC8E8)[arg0].unk7 = arg2;
		(&D_800FC8E8)[arg0].unk8 = arg3;
	}
}

// AI - Set sprite entry unkF field
void func_8008AF5C_17301C(u8 arg0, u8 arg1) {
	if (arg0 != 0xFF) {
		(&D_800FC8E8)[arg0].unkD = arg1;
	}
}

// AI - Set sprite entry unk10 field
void func_8008AF94_173054(u8 arg0, s8 arg1) {
	if (arg0 != 0xFF) {
		(&D_800FC8E8)[arg0].unk12 = arg1;
	}
}

// AI - Set sprite entry velocity values
void func_8008AFD0_173090(u8 arg0, s8 arg1, s8 arg2) {
	if (arg0 != 0xFF) {
		(&D_800FC8E8)[arg0].unk10 = arg1;
		(&D_800FC8E8)[arg0].unk11 = arg2;
	}
}

// AI - Set sprite entry unkD field
void func_8008B020_1730E0(u8 arg0, u8 arg1) {
	if (arg0 != 0xFF) {
		(&D_800FC8E8)[arg0].unkF = arg1;
	}
}

// AI - Free a sprite entry in the UnkFC8E8Entry table
void func_8008B058_173118(u8 arg0) {
	(&D_800FC8E8)[arg0].unkA = 0;
	if (arg0 < D_800FCA79) {
		D_800FCA79 = arg0;
	}
	D_800FCA78--;
}

// AI - Initialize the entire effect system (clear all slots and effects)
void func_8008B0AC_17316C(void) {
	s32 i;
	s32 j;

	func_8008A59C_17265C();

	for (i = 0; i < 0xF; i = (i + 1) & 0xFF) {
		*(((u8 *) &D_800FB6F8) + (i * 0xC)) = 0xFA;
	}

	for (j = 0; j < 0xC8; j = (j + 1) & 0xFFFF) {
		D_800FB7B0[j].unk0 = 0;
	}

	D_800FC8E2 = 0;
	D_800FC8E0 = 0;

	D_800FB6F8[14].unk0 = 3;
	D_800FB6F8[14].unk4 = 0;
	D_800FB6F8[14].unk6 = -6;
	D_800FB6F8[14].unk8 = -6;

	D_800FB6F8[13].unk0 = 4;
	D_800FB6F8[13].unk4 = 0;
	D_800FB6F8[13].unk6 = -6;
	D_800FB6F8[13].unk8 = -6;

	D_800FB6F8[12].unk0 = 5;
	D_800FB6F8[12].unk4 = 0;
	D_800FB6F8[12].unk6 = -6;
	D_800FB6F8[12].unk8 = -6;

	D_800FB6F8[11].unk0 = 6;
	D_800FB6F8[11].unk4 = 0;
	D_800FB6F8[11].unk6 = -6;
	D_800FB6F8[11].unk8 = -6;

	D_800FB7AD = 0;
	D_800FB7AC = 4;
}
// Matched - Needs below funcs also matched so rodata builds properly.
// AI - Main render dispatcher: set up RDP state and render all active slots
#ifdef NON_MATCHING
void func_8008B1A8_173268(void) {
	s32 i;

	gSPMatrix(D_8005BB2C++, ((u32)&D_80031160 & 0x1FFFFFFF), G_MTX_MODELVIEW | G_MTX_LOAD | G_MTX_NOPUSH);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK | G_FOG | G_LIGHTING);
	gDPPipeSync(D_8005BB2C++);
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

	for (i = 0; i < 0xF; i = (i + 1) & 0xFF) {
		if (D_800FB6F8[i].unk0 != 0xFA) {
			switch (D_800FB6F8[i].unk0) {
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
					break;
				case 7:
					func_80088DFC_170EBC(i & 0xFF);
					break;
				case 8:
					func_80089BCC_171C8C(i & 0xFF);
					break;
				default:
					osSyncPrintf(D_800A5410_18D4D0, D_800FB6F8[i].unk0);
					break;
			}
		}
	}

	func_8008B594_173654();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008B1A8_173268.s")
#endif

// AI - Main update and render entry point: update effects, then render
void func_8008B474_173534(void) {
	func_8008311C_16B1DC();
	D_800FB6F0.x = (s16) D_800E6A78.unk4C - D_800FB6E8.x;
	D_800FB6F0.y = (s16) D_800E6A78.unk50 - D_800FB6E8.y;
	D_800FB6F0.z = (s16) D_800E6A78.unk54 - D_800FB6E8.z;
	func_80086D88_16EE48();
	func_8008A5E4_1726A4();
	D_800FB6E8.x = (s16) (s32) D_800E6A78.unk4C;
	D_800FB6E8.y = (s16) (s32) D_800E6A78.unk50;
	D_800FB6E8.z = (s16) (s32) D_800E6A78.unk54;
}

// AI - Set lens flare position and size parameters
void func_8008B53C_1735FC(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4) {
	D_800A26A0_18A760 = 1;
	D_800FCA7A = arg0 * 4;
	D_800FCA7C = arg1 * 4;
	D_800FCA7E = arg2 * 4;
	D_800FB6A0 = arg3;
	D_800FB6A2 = arg4;
}

// CURRENT(1245)
// AI - Render (animated billboard with texture)
#ifdef NON_MATCHING
void func_8008B594_173654(void) {
	s8 spA4[3];
	s32 temp_t5;

	if (D_800A26A0_18A760 != 0) {
		D_800A26A0_18A760 = 0;

		D_800FB6E5 = 0x20;
		D_800FB6E6 = 0x20;

		temp_t5 = D_800A26A4_18A764;

		gDPPipeSync(D_8005BB2C++);

		gDPSetCombineLERP(D_8005BB2C++, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, TEXEL0, 0, SHADE, 0);

		gDPPipeSync(D_8005BB2C++);

		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, K0_TO_PHYS((temp_t5 << 9) + (u32)&D_100BF00));

		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
			G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);

		gDPLoadSync(D_8005BB2C++);

		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 0xFF, 0x400);

		gDPPipeSync(D_8005BB2C++);

		gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP,
			G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);

		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);

		gDPPipeSync(D_8005BB2C++);

		temp_t5 = (temp_t5 + 1) & 0xFF;
		D_800A26A4_18A764 = temp_t5;
		if (temp_t5 == 4) {
			D_800A26A4_18A764 = 0;
		}

		D_800FB6D0.x = D_800FCA7A;
		D_800FB6D0.y = D_800FCA7C;
		D_800FB6D0.z = D_800FCA7E;

		spA4[0] = (func_800038E0_44E0() % 0x3C) + 0xC3;

		spA4[1] = (func_800038E0_44E0() % 0x3C) + 0xC3;

		spA4[2] = (func_800038E0_44E0() % 0x3C) + 0xC3;

		D_800FB6DC = &spA4[0];
		D_800FB6E0 = (f32)D_800FB6A0 * D_800A54D0_18D590[0];
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

		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, K0_TO_PHYS(D_800A2620_18A6E0[D_800FB6A2]));

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
