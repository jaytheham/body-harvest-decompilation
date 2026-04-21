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
	u8 slot;
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_800835F0_16B6B0.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80083F08_16BFC8.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80084C68_16CD28.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_8008506C_16D12C.s")

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

// CURRENT(4270)
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

		other = other + 8;
		other[8] = arg13;
		life = arg8;
		if (life >= 0x4C) {
			life = 0x4B;
		} else if (life == 0) {
			life = 1;
		}
		other[5] = life;
		*(u16 *)(other + 6) = 0;
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80085D40_16DE00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80085F28_16DFE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086550_16E610.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80086B34_16EBF4.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80087A40_16FB00.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80088B9C_170C5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80088DFC_170EBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089148_171208.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/16AF30/func_80089408_1714C8.s")

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

// CURRENT(4759)
#ifdef NON_MATCHING
s32 func_8008AD40_172E00(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u16 arg4) {
	s8 *tableA;
	u8 slot;
	u8 search;

	if ((s32)D_800FCA78 >= 0x14) {
		return 0xFF;
	}

	(&D_800FC8E8)[D_800FCA79].unk0 = arg0 * 4;
	(&D_800FC8E8)[D_800FCA79].unk4 = arg2 * 4;
	(&D_800FC8E8)[D_800FCA79].unk2 = arg1 * 4;
	(&D_800FC8E8)[D_800FCA79].unkA = arg4;
	(&D_800FC8E8)[D_800FCA79].unkC = arg3;
	(&D_800FC8E8)[D_800FCA79].unkF = 0;

	tableA = &D_800A2690_18A750[arg3 * 8];
	(&D_800FC8E8)[D_800FCA79].unk10 = tableA[1];
	(&D_800FC8E8)[D_800FCA79].unk11 = tableA[2];
	(&D_800FC8E8)[D_800FCA79].unk12 = tableA[3];

	slot = D_800FCA79;
	(&D_800FC8E8)[slot].unkE = func_800038E0_44E0() % tableA[0];
	(&D_800FC8E8)[slot].unkD = D_800A2698_18A758[arg3 * 4 + 3];
	(&D_800FC8E8)[slot].unk6 = D_800A2698_18A758[arg3 * 4 + 0];
	(&D_800FC8E8)[slot].unk7 = D_800A2698_18A758[arg3 * 4 + 1];
	(&D_800FC8E8)[slot].unk8 = D_800A2698_18A758[arg3 * 4 + 2];

	search = slot;
	if (search < 0x14) {
		while (search < 0x14) {
			if ((&D_800FC8E8)[search].unkA == 0) {
				D_800FCA79 = search;
				search = 0x14;
			}
			search = (search + 1) & 0xFF;
		}
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
