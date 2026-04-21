#include <ultra64.h>
#include "common.h"

extern char D_800A5330_18D3F0[];


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

#ifdef NON_MATCHING
void func_80083014_16B0D4(Vec3f *arg0, Vec3f *arg1) {
	f32 temp_f0;

	temp_f0 = func_80082FC4_16B084(arg0);
	if ((f64) temp_f0 == 0.0) {
		osSyncPrintf(D_800A4F70, arg0);
		*arg1 = *arg0;
	} else {
		func_80082F74_16B034(temp_f0, arg0, arg1);
	}
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
	func_80082E70_16AF30(&sp34[0][0], &sp24, &D_800FB6A8);
	sp24.x = -sp24.x;
	func_80082E70_16AF30(&sp34[0][0], &sp24, &D_800FB6B4);
	func_80082F04_16AFC4(&D_800FB6A8, &D_800FB6B4, &D_800FB6C0);
	func_80083014_16B0D4(&D_800FB6C0, &D_800FB6C0);
}

#ifdef NON_MATCHING
s32 func_80083224_16B2E4(s32 arg0) {
	s32 slot;
	u8 i;

	if (D_800FB7AC >= 0xF) {
		osSyncPrintf(&D_800A4F94_18D054, (u8) arg0);
		slot = 0xFB;
	} else {
		slot = D_800FB7AD;
		D_800FB7AC++;
		D_800FB7AD = 0xF;
		D_800FB6F8[slot].unk4 = 0;
		D_800FB6F8[slot].unk6 = -6;
		D_800FB6F8[slot].pad0[0] = arg0;
		if (slot < 0xF) {
			for (i = slot; i < 0xF; i++) {
				if (D_800FB6F8[i].pad0[0] == 0xFA) {
					D_800FB7AD = i;
					i = 0xF;
				}
			}
		}
	}

	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083224_16B2E4.s")
#endif

#ifdef NON_MATCHING
void func_80083300_16B3C0(s32 arg0) {
	s32 temp_t6 = arg0 & 0xFF;
	u8 *temp_v0 = &D_800FB6F8[temp_t6].pad0[0];

	if (*temp_v0 == 0xFA) {
		osSyncPrintf(&D_800A4FD8);
		return;
	}
	*temp_v0 = 0xFA;
	D_800FB7AC -= 1;
	if (temp_t6 < (s32) D_800FB7AD) {
		D_800FB7AD = (u8) temp_t6;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083300_16B3C0.s")
#endif

#ifdef NON_MATCHING
s16 func_80083390_16B450(u8 arg0) {
	typedef struct {
		u8 unk0;
		u8 pad1;
		s16 unk2;
		s16 unk4;
		s16 unk6;
		u8 pad8[0xE];
	} Unk83390Effect;

	UnkFB6F8Entry *temp_s1;
	Unk83390Effect *temp_s0;
	s16 i;
	s32 effect;

	if (D_800FC8E0 >= 0xC8) {
		osSyncPrintf(&D_800A501C_18D0DC, arg0);
		return -3;
	}

	effect = D_800FC8E2;
	temp_s1 = &D_800FB6F8[arg0];
	temp_s0 = &((Unk83390Effect *)&D_800FB7B0)[effect];
	temp_s0->unk0 = 1;
	temp_s0->unk2 = 1;
	temp_s0->unk4 = -5;

	if (temp_s1->unk4 == 0) {
		temp_s1->unk6 = effect;
		temp_s0->unk6 = -4;
	} else {
		temp_s0->unk6 = *((s16 *)&temp_s1->pad8[0]);
		((Unk83390Effect *)&D_800FB7B0)[temp_s0->unk6].unk4 = effect;
	}

	*((s16 *)&temp_s1->pad8[0]) = effect;
	temp_s1->unk4++;
	D_800FC8E0++;
	D_800FC8E2 = 0xC8;

	if (effect < 0xC8) {
		for (i = effect; i < 0xC8; i++) {
			if (((Unk83390Effect *)&D_800FB7B0)[i].unk0 == 0) {
				D_800FC8E2 = i;
				break;
			}
		}
	}

	return effect;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083390_16B450.s")
#endif

#ifdef NON_MATCHING
// CURRENT(451)
s16 func_800834CC_16B58C(s32 arg0) {
	s16 sp26;
	s16 sp24;
	s16 var_a2;
	s32 temp_s0;

	temp_s0 = arg0 & 0xFF;
	var_a2 = func_80083390_16B450(temp_s0 & 0xFF);
	if (var_a2 != -3) {
		sp26 = var_a2;
		sp24 = func_80083390_16B450(temp_s0 & 0xFF);
		if (sp24 == -3) {
			func_800835F0_16B6B0(sp26, temp_s0 & 0xFF);
			var_a2 = -3;
		} else {
			if (func_80083390_16B450(temp_s0 & 0xFF) == -3) {
				func_800835F0_16B6B0(sp26, temp_s0 & 0xFF);
				func_800835F0_16B6B0(sp24, temp_s0 & 0xFF);
				var_a2 = -3;
			}
		}
	}
	return var_a2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800834CC_16B58C.s")
#endif

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

#ifdef NON_MATCHING
void func_800835F0_16B6B0(s16 arg0, u8 arg1) {
	Unk835F0Effect *effect;
	UnkFB6F8Entry *slot;
	s16 temp;

	effect = &((Unk835F0Effect *)&D_800FB7B0)[arg0];
	slot = &D_800FB6F8[arg1];

	if (effect->unk0 == 0) {
		osSyncPrintf(&D_800A5064_18D124, arg0, arg1);
		return;
	}

	switch (slot->unk4) {
		case 0:
			osSyncPrintf(&D_800A50AC_18D16C);
			slot->unk6 = -6;
			*((s16 *)&slot->pad8[0]) = -6;
			break;

		case 1:
			slot->unk6 = -6;
			*((s16 *)&slot->pad8[0]) = -6;
			break;

		case 2:
			temp = effect->unk6;
			if (temp == -4) {
				slot->unk6 = effect->unk4;
				effect = &((Unk835F0Effect *)&D_800FB7B0)[slot->unk6];
				effect->unk6 = -4;
				effect->unk4 = -5;
			} else if (effect->unk4 == -5) {
				*((s16 *)&slot->pad8[0]) = temp;
				effect = &((Unk835F0Effect *)&D_800FB7B0)[slot->unk6];
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
				effect = &((Unk835F0Effect *)&D_800FB7B0)[slot->unk6];
				effect->unk6 = -4;
			} else if (effect->unk4 == -5) {
				*((s16 *)&slot->pad8[0]) = temp;
				effect = &((Unk835F0Effect *)&D_800FB7B0)[temp];
				effect->unk4 = -5;
			} else {
				effect = &((Unk835F0Effect *)&D_800FB7B0)[effect->unk4];
				effect->unk6 = temp;
				effect = &((Unk835F0Effect *)&D_800FB7B0)[slot->unk6];
				effect->unk4 = *((s16 *)&slot->pad8[0]);
			}
			break;
	}

	effect->unk0 = 0;
	slot->unk4--;
	D_800FC8E0--;
	if (arg0 < D_800FC8E2) {
		D_800FC8E2 = arg0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800835F0_16B6B0.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(2244) */
void func_80083814_16B8D4(s32 arg0, s32 arg1) {
	s16 sp1E;
	s16 sp22;
	s16 temp_t6;
	u8 temp_t7;

	temp_t6 = arg0;
	arg1 &= 0xFF;
	temp_t7 = arg1;
	if (temp_t6 < 0) {
		goto fail;
	}
	if (temp_t6 >= 0xC8) {
		goto fail;
	}
	if (temp_t7 >= 0xF) {
		goto fail;
	}
	if (D_800FB6F8[temp_t7].pad0[0] != 0xB && D_800FB6F8[temp_t7].pad0[0] != 0xC) {
		goto fail;
	}
	sp1E = *(s16 *)(&D_800FB7B4 + (s32) temp_t6 * 0x16);
	func_800835F0_16B6B0(temp_t6, temp_t7);
	sp22 = *(s16 *)(&D_800FB7B4 + (s32) sp1E * 0x16);
	func_800835F0_16B6B0(sp1E, temp_t7);
	func_800835F0_16B6B0(sp22, temp_t7);
	return;

fail:
	osSyncPrintf(&D_800A5128_18D1E8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083814_16B8D4.s")
#endif

#ifdef NON_MATCHING
void func_80083924_16B9E4(s16 arg0, s32 arg1) {
	s16 sp1E;
	u8 temp_t8;

	temp_t8 = arg1 & 0xFF;
	if (arg0 >= 0 && arg0 < 0xC8 && temp_t8 < 0xF) {
		sp1E = *(s16 *)(&D_800FB7B4 + (s32) arg0 * 0x16);
		func_800835F0_16B6B0(arg0, temp_t8);
		func_800835F0_16B6B0(sp1E, temp_t8);
		return;
	}
	osSyncPrintf(&D_800A5168, temp_t8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083924_16B9E4.s")
#endif

#ifdef NON_MATCHING
void func_800839B8_16BA78(s32 arg0) {
	s32 temp_s1;
	UnkFB6F8Entry *temp_s0;

	temp_s1 = arg0 & 0xFF;
	temp_s0 = &D_800FB6F8 + temp_s1;
	if ((s32) temp_s0->unk4 > 0) {
		do {
			func_800835F0_16B6B0(temp_s0->unk6, temp_s1);
		} while ((s32) temp_s0->unk4 > 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800839B8_16BA78.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083A20_16BAE0.s")

#ifdef NON_MATCHING
void func_80083F08_16BFC8(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6, u8 arg7, u8 arg8, u8 arg9, u8 arg10, u8 arg11, u8 arg12) {
	s16 effect;
	s32 slot;
	Unk84EECEffect *entry;
	Vec3f dir;
	s32 i;
	u8 count;

	i = func_80083224_16B2E4(2);
	slot = i & 0xFF;
	if (i != 0xFB) {
		effect = func_80083390_16B450(slot & 0xFF);
		if (effect == -3) {
			osSyncPrintf(&D_800A51A8_18D268);
			func_80083300_16B3C0(slot & 0xFF);
			return;
		}

		entry = &((Unk84EECEffect *)&D_800FB7B0)[effect];
		*(&D_800FB702 + (slot * 6)) = effect;
		entry->unk8 = arg0 * 4;
		entry->unkA = arg1 * 4;
		entry->unkC = arg2 * 4;
		entry->unk12 = 1;
		dir.x = arg3;
		dir.y = arg4;
		dir.z = arg5;
		entry->unk2 = arg9;
		entry->unkE = arg10;
		entry->unkF = arg11;
		entry->unk10 = arg12;
		func_80083014_16B0D4(&dir, &dir);

		count = arg8;
		if (count >= 0x33) {
			count = 0x32;
		} else if (count == 0) {
			osSyncPrintf(&D_800A51F8_18D2B8);
			count = 1;
		}

		i = 0;
		if ((s32) count > 0) {
			s32 arg6Int = arg6;
			s32 arg7Int = arg7;

			do {
				func_80083A20_16BAE0(slot & 0xFF, &dir, arg6Int & 0xFF, arg7Int & 0xFF);
				i = (i + 1) & 0xFF;
			} while (i < (s32) count);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083F08_16BFC8.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(1523) */
void func_800840F0_16C1B0(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4, u8 arg5, u8 arg6) {
	s32 effect;
	u8 slot;
	Unk840F0Effect *entry;
	u8 count;

	effect = func_80083224_16B2E4(2);
	if (effect != 0xFB) {
		slot = effect;
		effect = func_80083390_16B450(slot);
		if (effect == -3) {
			osSyncPrintf(&D_800A5248_18D308);
			func_80083300_16B3C0(slot);
			return;
		}

		*(&D_800FB702 + (slot * 6)) = effect;
		entry = &((Unk840F0Effect *)&D_800FB7B0)[effect];
		count = arg5;

		entry->unk8 = arg0 * 4;
		entry->unkA = arg1 * 4;
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

		for (arg0 = 0; (arg0 & 0xFF) < count; arg0 = (arg0 + 1) & 0xFF) {
			func_80083A20_16BAE0(slot, 0, 0, 0);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800840F0_16C1B0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084258_16C318.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084628_16C6E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084980_16CA40.s")

s32 func_80084C18_16CCD8(u8 arg0) {
	s32 temp_v0;
	s32 result;

	temp_v0 = func_80083224_16B2E4(1);
	result = temp_v0 & 0xFF;
	if (temp_v0 != 0xFB) {
		*(s16 *)(&D_800FB6FA + (temp_v0 * 0xC)) = arg0;
	}
	return result;
}

#ifdef NON_MATCHING
u8 func_80084C68_16CD28(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u16 arg4, u8 arg5, u8 arg6, u8 arg7) {
	UnkFB6F8Entry *owner;
	Unk84EECEffect *entry;
	Unk84EECEffect *linked;
	u8 slot;
	s16 effect;
	u16 temp;
	u8 *entryColor;
	u8 *linkedColor;

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
	entry = &((Unk84EECEffect *)&D_800FB7B0)[effect];

	entry->unk8 = arg0 * 4;
	owner->unkA = effect;
	entry->unkC = arg2 * 4;
	linked = &((Unk84EECEffect *)&D_800FB7B0)[entry->unk4];
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

	linked->unk8 = arg4;
	linked->unkA = arg3;
	if (linked->unkA < 0x18) {
		linked->unkA = 0x18;
	}

	temp = (u16)(arg5 + ((arg5 / 3) & 0xFF));
	entryColor = (u8 *)entry + 8;
	if (temp >= 0x100) {
		entryColor[1] = 0xFF;
	} else {
		entryColor[1] = temp;
	}

	temp = (u16)(arg6 + ((arg6 / 3) & 0xFF));
	if (temp >= 0x100) {
		entryColor[2] = 0xFF;
	} else {
		entryColor[2] = temp;
	}

	temp = (u16)(arg7 + ((arg7 / 3) & 0xFF));
	if (temp >= 0x100) {
		entryColor[3] = 0xFF;
	} else {
		entryColor[3] = temp;
	}

	linkedColor = (u8 *)linked + 8;
	linkedColor[1] = entryColor[3];
	owner->unk2 = func_80084C18_16CCD8(slot);

	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084C68_16CD28.s")
#endif

#ifdef NON_MATCHING
s16 func_80084EEC_16CFAC(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4, u8 arg5, u8 arg6, u8 arg7, u8 arg8, u8 arg9, u8 arg10, u8 arg11) {
	extern f64 D_800A5468_18D528;

	s32 effect;
	s16 x;
	s16 y;
	s16 z;
	u8 scale;
	Unk84EECEffect *entry;
	Unk84EECEffect *other;

	effect = func_80083584_16B644(0xD);
	if (effect != -3) {
		entry = &((Unk84EECEffect *)&D_800FB7B0)[effect];
		x = arg0 * 4;
		y = arg1 * 4;
		z = arg2 * 4;
		entry->unk8 = x;
		entry->unkA = y;
		entry->unkC = z;
		entry->unk2 = (s16)(s32)((f64)(f32)arg3 * D_800A5468_18D528);
		entry->unk11 = arg10;
		entry->unk15 = arg11;
		entry->unkE = arg4;
		entry->unkF = arg5;
		entry->unk10 = arg6;

		scale = 0xF;
		if ((arg10 + 0xF) >= 0x100) {
			scale = 0xFF - arg10;
		}

		entry->unk13 = scale;
		entry->unk12 = 0;
		entry->unk14 = 0;

		other = &((Unk84EECEffect *)&D_800FB7B0)[entry->unk4];
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

// CURRENT(121)
#ifdef NON_MATCHING
s16 func_8008506C_16D12C(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s16 effect;
	u8 *temp_s0;
	s32 half;
	s32 third;

	effect = func_80083390_16B450(0xC);
	if (effect != -3) {
		temp_s0 = (u8 *)&D_800FB7B0 + effect * 0x16;
		*(s16 *)(temp_s0 + 2) = arg3;
		*(s16 *)(temp_s0 + 8) = arg0 * 4;
		*(s16 *)(temp_s0 + 0xA) = arg1 * 4;
		*(s16 *)(temp_s0 + 0xC) = arg2 * 4;
		temp_s0 += 8;

		half = arg3 / 2;
		third = arg3 / 3;
		*(s8 *)(temp_s0 + 1) = (func_800038E0_44E0() % half) + third;
		*(s8 *)(temp_s0 + 3) = (func_800038E0_44E0() % half) + third;
		*(s8 *)(temp_s0 + 2) = (func_800038E0_44E0() % half) + third;
		*(s8 *)(temp_s0 + 4) = (func_800038E0_44E0() % half) + third;

		*(s16 *)(temp_s0 + 6) = func_80084EEC_16CFAC(arg0, arg1 + (arg3 / 8), arg2, arg3 * 2, 0xF0, 0xC8, 0x64, 0xFF, 0xB4, 0x46, 0x32, 1);
	}

	return effect;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008506C_16D12C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800852B8_16D378.s")

#ifdef NON_MATCHING
// CURRENT(280)
void func_8008568C_16D74C(s16 arg0, s16 arg1, u16 arg2, u8 arg3, u8 arg4, u8 arg5, u8 arg6) {
	s16 temp_v0;
	u8 *temp_v1;
	s16 temp_t5;

	temp_v0 = func_80083390_16B450(0xB);
	if (temp_v0 != -3) {
		temp_v1 = (u8 *)&D_800FB7B0 + temp_v0 * 0x16;
		*(s16 *)(temp_v1 + 0xA) = 1;
		temp_v1[0x11] = 0;
		*(u16 *)(temp_v1 + 0x2) = arg2;
		*(s16 *)(temp_v1 + 0x8) = arg0;
		*(s16 *)(temp_v1 + 0xC) = arg1;
		temp_v1[0x12] = arg6;
		temp_v1[0xE] = arg3;
		temp_v1[0xF] = arg4;
		temp_v1[0x10] = arg5;
		temp_t5 = arg2 / 2;
		temp_v1[0x13] = temp_t5;
		if ((temp_t5 & 0xFF) == 0) {
			temp_v1[0x13] = 1;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008568C_16D74C.s")
#endif

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

		entry = (u8 *)&D_800FB7B0 + (effect * 0x16);
		*(u16 *)(entry + 2) = arg7;
		*(s16 *)(entry + 8) = arg0 << 2;
		*(s16 *)(entry + 0xA) = arg1 << 2;
		*(s16 *)(entry + 0xC) = arg2 << 2;

		other = (u8 *)&D_800FB7B0 + (*(s16 *)(entry + 4) * 0x16);
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80085984_16DA44.s")

void func_80085CB4_16DD74(s16 arg0, s16 arg1, s16 arg2) {
	s32 temp_v0;

	temp_v0 = func_80085984_16DA44(0x28, 0x50, ((func_800038E0_44E0() % 5) + 5) & 0xFF, arg0, arg1, arg2);
	if (temp_v0 != -3) {
		*((s8 *)&D_800FB7C4 + temp_v0 * 0x16) = 1;
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
		temp_s2 = &((Unk84EECEffect *)&D_800FB7B0)[var_s3];
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80085F28_16DFE8.s")

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
/* CURRENT(2019) */
void func_80086728_16E7E8(void) {
	s16 effect;

	effect = D_800FB79A;
	if ((effect != -5) && (effect != -6)) {
		do {
			s16 value;
			Unk86728Effect *entry;
			s8 *entry8;

			entry = &((Unk86728Effect *)&D_800FB7B0)[effect];
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
/* CURRENT(1398) */
void func_8008688C_16E94C(void) {
	s16 effect;

	effect = D_800FB78E;
	if ((effect != -5) && (effect != -6)) {
		do {
			s16 value;
			s16 spread;
			Unk8688CEffect *entry;

			entry = &((Unk8688CEffect *)&D_800FB7B0)[effect];
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
/* CURRENT(535) */
void func_80086A34_16EAF4(void) {
	s16 effect;
	s16 nextEffect;

	effect = D_800FB782;
	if ((effect != -5) && (effect != -6)) {
		do {
			Unk86A34Effect *entry = &((Unk86A34Effect *)&D_800FB7B0)[effect];
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
	Unk86B34Effect *head;
	Unk86B34Effect *effectEntry;
	s16 effect;
	s16 next;
	u8 slotIdx;
	u16 timer;
	u8 count;
	u8 i;

	slotIdx = arg0 & 0xFF;
	slot = &D_800FB6F8[slotIdx];
	head = &((Unk86B34Effect *)&D_800FB7B0)[slot->unk6];
	effect = head->unk4;

	if ((effect != -5) && (effect != -6)) {
		do {
			effectEntry = &((Unk86B34Effect *)&D_800FB7B0)[effect];

			effectEntry->unk8 += effectEntry->unk12;
			effectEntry->unkC += effectEntry->unk14;
			effectEntry->unkA += effectEntry->unk13;

			if (effectEntry->unk13 >= -0x13) {
				effectEntry->unk11--;
			} else {
				effectEntry->unk11 = -0x14;
			}

			if (effectEntry->unk2 < 2) {
				func_8008568C_16D74C(effectEntry->unk8, effectEntry->unkC, effectEntry->unk2, head->unkE, head->unkF, head->unk10, effectEntry->unk9);

				if ((slot->unk4 < 4) && (head->unkD == 0)) {
					func_800839B8_16BA78(slotIdx);
					func_80083300_16B3C0(slotIdx);
					return;
				}

				next = effectEntry->unk4;
				func_800835F0_16B6B0(effect, slotIdx);
				effect = next;
			} else {
				effect = effectEntry->unk4;
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
/* CURRENT(5) */
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
		func_80086F24_16EFE4(*(s16 *)(&D_800FB7BE + arg0 * 0x16));
		func_800835F0_16B6B0(arg0, 0xC);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086FC4_16F084.s")

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
/* CURRENT(3405) */
void func_80087CB8_16FD78(s32 arg0) {
	f32 sp58[3];
	UnkFB6F8Entry *entry;
	Unk87CB8Effect *effectBase;
	Unk87CB8Effect *effect;
	s8 *color;
	s16 next;

	entry = &D_800FB6F8[arg0 & 0xFF];
	effectBase = (Unk87CB8Effect *) &D_800FB7B0;
	next = effectBase[entry->unk6].unk4;
	color = &effectBase[entry->unk6].unkE;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPPipeSync(D_8005BB2C++);

	if ((next != -5) && (next != -6)) {
		do {
		effect = &((Unk87CB8Effect *) &D_800FB7B0)[next];
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80087E3C_16FEFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800881C0_170280.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80088654_170714.s")

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
	} Unk88B9CEffect;

	s16 effect;
	Vec3f *pos;
	s8 **color;
	f32 *scale;
	Unk88B9CEffect *effectBase;

	D_800FB6E5 = 0x20;
	D_800FB6E6 = 0x20;
	effect = D_800FB782;
	pos = &D_800FB6D0;
	color = &D_800FB6DC;
	scale = &D_800FB6E0;
	effectBase = (Unk88B9CEffect *)&D_800FB7B0;

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
			Unk88B9CEffect *entry;

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80088DFC_170EBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089148_171208.s")

// CURRENT(4710)
#ifdef NON_MATCHING
void func_80089408_1714C8(s32 arg0) {

	Unk89408Effect *srcEffect;
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
		srcEffect = &((Unk89408Effect *) &D_800FB7B0)[srcIndex];
		srcPos = &srcEffect->pos;

		if (srcPos->unkA == 1) {
			((Unk89408Effect *) &D_800FB7B0)[dstIndex].unk2 = (func_800038E0_44E0() % 0x23) + 0x23;
			color = 0xAA;
			((Unk89408Effect *) &D_800FB7B0)[dstIndex].pos.unk9 = 0x82;
			dstPos = &((Unk89408Effect *) &D_800FB7B0)[dstIndex].pos;
			dstPos->unk6 = color;
			dstPos->unk7 = color;
			dstPos->unk8 = color;
		} else if (srcPos->unkA == 0) {
			((Unk89408Effect *) &D_800FB7B0)[dstIndex].unk2 = (func_800038E0_44E0() % 0xA) + 0xA;
			color = 0xFF;
			((Unk89408Effect *) &D_800FB7B0)[dstIndex].pos.unk9 = color;
			dstPos = &((Unk89408Effect *) &D_800FB7B0)[dstIndex].pos;
			dstPos->unk6 = color;
			dstPos->unk7 = color;
			dstPos->unk8 = color;
		} else {
			((Unk89408Effect *) &D_800FB7B0)[dstIndex].unk2 = (func_800038E0_44E0() % 0xA) + 0xA;
			color = 0xFF;
			((Unk89408Effect *) &D_800FB7B0)[dstIndex].pos.unk9 = color;
			dstPos = &((Unk89408Effect *) &D_800FB7B0)[dstIndex].pos;
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
	} Unk89648Entry;

	s32 temp_v0;
	u8 slot;
	s32 effect;
	Unk89648Entry *entry;

	temp_v0 = func_80083224_16B2E4(8);
	slot = temp_v0;
	if (temp_v0 != 0xFB) {
		effect = func_80083390_16B450(slot);
		if (effect == -3) {
			osSyncPrintf(&D_800A5384_18D444, slot);
			func_80083300_16B3C0(slot);
			return 0xFB;
		}

		entry = &((Unk89648Entry *)&D_800FB7B0)[effect];
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
		*(&D_800FB7C1 + temp_v0->unk6 * 0x16) = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089794_171854.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089834_1718F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089BCC_171C8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089E54_171F14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008A1D8_172298.s")

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

#ifdef NON_MATCHING
/* CURRENT(30) */
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008A5E4_1726A4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008A704_1727C4.s")

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
/* CURRENT(285) */
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008B1A8_173268.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008B594_173654.s")
