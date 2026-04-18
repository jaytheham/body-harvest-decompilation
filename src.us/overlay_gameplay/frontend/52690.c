#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800821E0_52690.s")

/* Empty stub - stores three arguments and returns */
void func_800823C8_52878(s32 arg0, s32 arg1, s32 arg2) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800823D8_52888.s")

void func_80082868_52D18(s32 arg0) {
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 255, 255, 255, 255);
	gDPTileSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 16, D_40053A0 + (arg0 << 8));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 0, 0x0000, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPTileSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 16, D_40053A0 + (arg0 << 8) + 0x1000);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 0, 0x0020, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 512);
	gSPDisplayList(D_8005BB2C++, D_4002250);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800829E4_52E94.s")

// transitionToNextLevel
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80082CBC_5316C.s")

/* 3x3 matrix-vector multiply: out = mat^T * vec */
void func_80083610_53AC0(f32 *mat, f32 *vec, f32 *out) {
	out[0] = vec[0] * mat[0] + vec[1] * mat[3] + vec[2] * mat[6];
	out[1] = vec[0] * mat[1] + vec[1] * mat[4] + vec[2] * mat[7];
	out[2] = vec[0] * mat[2] + vec[1] * mat[5] + vec[2] * mat[8];
}

/* 3D vector cross product: arg2 = arg0 x arg1 */
void func_800836A4_53B54(f32 *arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg0[1] * arg1[2] - arg1[1] * arg0[2];
	arg2[1] = arg0[2] * arg1[0] - arg1[2] * arg0[0];
	arg2[2] = arg0[0] * arg1[1] - arg1[0] * arg0[1];
}

/* Divides a 3D vector by a scalar: arg2 = arg1 / arg0 */
void func_80083714_53BC4(f32 arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg1[0] / arg0;
	arg2[1] = arg1[1] / arg0;
	arg2[2] = arg1[2] / arg0;
}

/* Returns the squared magnitude of a 3D vector */
f32 func_8008373C_53BEC(f32 *arg0) {
	f32 x = arg0[0];
	f32 y = arg0[1];
	f32 z = arg0[2];
	return (x * x) + (y * y) + (z * z);
}

/* Computes the magnitude (length) of a 3D vector */
f32 func_80083764_53C14(f32 *arg0) {
	f32 sqMag = func_8008373C_53BEC(arg0);
	if (sqMag != 0.0) {
		sqMag = sqrtf(sqMag);
	}
	return sqMag;
}

/* Normalizes vector arg0 into arg1; if magnitude is 0, copies arg0 to arg1 */
void func_800837B4_53C64(f32 *arg0, f32 *arg1) {
	f32 mag;

	mag = func_80083764_53C14(arg0);
	if (mag == 0.0) {
		*(Vec3f*)arg1 = *(Vec3f*)arg0;
	} else {
		func_80083714_53BC4(mag, arg0, arg1);
	}
}

/* Computes the dot product of two 3D vectors */
#ifdef NON_MATCHING
f32 func_80083820_53CD0(f32 *arg0, f32 *arg1) {
	return (arg0[0] * arg1[0]) + (arg0[1] * arg1[1]) + (arg1[2] * arg0[2]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083820_53CD0.s")
#endif

/* Subtracts two 3D vectors: arg2 = arg0 - arg1 */
void func_80083850_53D00(f32 *arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg0[0] - arg1[0];
	arg2[1] = arg0[1] - arg1[1];
	arg2[2] = arg0[2] - arg1[2];
}

/* Adds two 3D vectors: arg2 = arg0 + arg1 */
void func_80083884_53D34(f32 *arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg1[0] + arg0[0];
	arg2[1] = arg1[1] + arg0[1];
	arg2[2] = arg1[2] + arg0[2];
}

/* Multiplies a 3D vector by a scalar: arg2 = arg1 * arg0 */
void func_800838B8_53D68(f32 arg0, f32 *arg1, f32 *arg2) {
	arg2[0] = arg1[0] * arg0;
	arg2[1] = arg1[1] * arg0;
	arg2[2] = arg1[2] * arg0;
}

void func_800838E0_53D90(Mtx *arg0) {
	f32 sp58[4][4];
	f32 sp34[3][3];
	s16 i;
	s16 j;
	f32 sp24[3];

	guMtxL2F(sp58, arg0);
	for (i = 0; i < 3; i++) {
		for (j = 0; j < 3; j++) {
			sp34[i][j] = sp58[j][i];
		}
	}

	sp24[0] = -0.5f;
	sp24[1] = 0.5f;
	sp24[2] = 0.0f;
	func_80083610_53AC0((f32 *)sp34, sp24, D_800DE0C0);
	sp24[0] = -sp24[0];
	func_80083610_53AC0((f32 *)sp34, sp24, D_800DE0CC);
	func_800836A4_53B54(D_800DE0C0, D_800DE0CC, D_800DE0D8);
	func_800837B4_53C64(D_800DE0D8, D_800DE0D8);
}

/* Copies a 3D float vector to D_800DE100 and truncates another to s16 shorts */
void func_800839F0_53EA0(f32 *arg0, f32 *arg1) {
	D_800DE100[0] = arg0[0];
	D_800DE100[1] = arg0[1];
	D_800DE100[2] = arg0[2];
	D_800DE10C = (s16)arg1[0];
	D_800DE10E = (s16)arg1[1];
	D_800DE110 = (s16)arg1[2];
}

#ifdef NON_MATCHING
u8 func_80083A58_53F08(u8 arg0) {
	u8 orig;
	u8 j;

	if (D_800DE838 >= 0x96) {
		return 0xFB;
	}
	orig = D_800DE839;
	D_800DE130[orig].unk0 = arg0;
	D_800DE130[orig].unk1 = 0;
	D_800DE130[orig].unk4 = 0;
	D_800DE130[orig].unk6 = -6;
	D_800DE130[orig].unk8 = -6;
	D_800DE838++;
	D_800DE839 = 0x96;
	j = orig;
	if (orig < 0x96) {
		do {
			if (D_800DE130[j].unk0 == 0xFA) {
				D_800DE839 = j;
				j = 0x96;
			}
			j++;
		} while (j < 0x96);
	}
	return orig;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083A58_53F08.s")
#endif

/* Marks a D_800DE130 entry as freed (0xFA), decrements count, updates min index */
void func_80083B14_53FC4(u8 arg0) {
	if (D_800DE130[arg0].unk0 != 0xFA) {
		D_800DE130[arg0].unk0 = 0xFA;
		D_800DE838--;
		if (arg0 < D_800DE839) {
			D_800DE839 = arg0;
		}
	}
}

#ifdef NON_MATCHING
// CURRENT(65)
s16 func_80083B7C_5402C(u8 arg0) {
	s16 idx;
	s16 i;

	if (D_800E1978 >= 0x1C2) {
		return -3;
	}

	idx = D_800E197A;
	D_800DE840[idx].unk0 = 1;
	D_800DE840[idx].unk2 = 1;
	D_800DE840[idx].unk4 = -5;

	if (D_800DE130[arg0].unk4 == 0) {
		D_800DE130[arg0].unk6 = idx;
		D_800DE840[idx].unk6 = -4;
	} else {
		D_800DE840[idx].unk6 = D_800DE130[arg0].unk8;
		D_800DE840[D_800DE130[arg0].unk8].unk4 = idx;
	}

	D_800DE130[arg0].unk8 = idx;
	D_800DE130[arg0].unk4++;
	D_800E1978++;
	D_800E197A = 0x1C2;

	i = idx;
	if (idx < 0x1C2) {
		do {
			if (D_800DE840[i].unk0 == 0) {
				D_800E197A = i;
				i = 0x1C2;
			}
			i++;
		} while (i < 0x1C2);
	}

	return idx;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083B7C_5402C.s")
#endif

/* Allocate 3 linked entries for arg0; free on failure, return first idx or -3 */
s16 func_80083C98_54148(u8 arg0) {
	s16 result, idx2;

	result = func_80083B7C_5402C(arg0);
	if (result != -3) {
		idx2 = func_80083B7C_5402C(arg0);
		if (idx2 == -3) {
			func_80083DBC_5426C(result, arg0);
			result = -3;
		} else if (func_80083B7C_5402C(arg0) == -3) {
			func_80083DBC_5426C(result, arg0);
			func_80083DBC_5426C(idx2, arg0);
			result = -3;
		}
	}
	return result;
}

/* Calls func_80083B7C twice; if second call returns -3, calls func_80083DBC */
s16 func_80083D50_54200(u8 arg0) {
	s16 result;

	result = func_80083B7C_5402C(arg0);
	if (result != -3) {
		if (func_80083B7C_5402C(arg0) == -3) {
			func_80083DBC_5426C(result, arg0);
			result = -3;
		}
	}
	return result;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083DBC_5426C.s")

#ifdef NON_MATCHING
/* Free 3 linked entries from D_800DE840 chain starting at arg0 */
void func_80083F8C_5443C(s16 arg0, u8 arg1) {
	s16 next1, next2;

	if (arg0 >= 0 && arg0 < 450 && arg1 < 150) {
		next1 = D_800DE840[arg0].unk4;
		func_80083DBC_5426C(arg0, arg1);
		next2 = D_800DE840[next1].unk4;
		func_80083DBC_5426C(next1, arg1);
		func_80083DBC_5426C(next2, arg1);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083F8C_5443C.s")
#endif

/* Calls func_80083DBC twice if arg0 and arg1 are in range */
void func_8008404C_544FC(s16 arg0, u8 arg1) {
	if (arg0 >= 0 && arg0 < 0x1C2 && arg1 < 0x96) {
		s16 val = D_800DE840[arg0].unk4;
		func_80083DBC_5426C(arg0, arg1);
		func_80083DBC_5426C(val, arg1);
	}
}

/* Calls func_80083DBC for each active unk4 iteration of a D_800DE130 entry */
void func_800840C4_54574(u8 arg0) {
	if (D_800DE130[arg0].unk4 > 0) {
		do {
			func_80083DBC_5426C(D_800DE130[arg0].unk6, arg0);
		} while (D_800DE130[arg0].unk4 > 0);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008412C_545DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80084324_547D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80084508_549B8.s")

/* Decrement timer and update positions or free entry */
void func_8008472C_54BDC(u8 arg0) {
	s16 *ptr;

	ptr = (s16 *)((u8 *)&D_800DE840[D_800DE130[arg0].unkA] + 8);
	ptr[6]--;
	if (ptr[6] == 0) {
		func_800840C4_54574(arg0);
		func_80083B14_53FC4(arg0);
	} else {
		ptr[0] += ptr[3];
		ptr[1] += ptr[4];
		ptr[2] += ptr[5];
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800847E4_54C94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800853A8_55858.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800857D4_55C84.s")

/* Clamps a value to the range [1, 80] */
#ifdef NON_MATCHING
s32 func_80085CB8_56168(s16 arg0) {
	if (arg0 >= 0x51) {
		return 0x50;
	}
	if (arg0 == 0) {
		arg0 = 1;
	}
	return arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80085CB8_56168.s")
#endif

#ifdef NON_MATCHING
void func_80085CEC_5619C(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6, u8 arg7, s16 arg8,
					 u8 arg9, u8 arg10, u8 arg11, u8 arg12, u8 arg13) {
	f32 sp34;
	f32 sp38;
	f32 sp3C;
	u8 temp_s5;
	s16 temp_v0;
	s16 temp_s1;
	u8 i;

	temp_s5 = func_80083A58_53F08(1);
	if (temp_s5 == 0xFB) {
		return;
	}

	temp_v0 = func_80083B7C_5402C(temp_s5);
	if (temp_v0 == -3) {
		func_80083B14_53FC4(temp_s5);
		return;
	}

	D_800DE130[temp_s5].unkA = temp_v0;
	D_800DE840[temp_v0].unk8 = arg0;
	D_800DE840[temp_v0].unkA = arg1;
	D_800DE840[temp_v0].unkC = arg2;

	sp34 = arg3;
	sp38 = arg4;
	sp3C = arg5;
	func_800837B4_53C64(&sp34, &sp34);

	D_800DE840[temp_v0].unk2 = arg9;
	D_800DE840[temp_v0].unkE = arg10;
	D_800DE840[temp_v0].unkF = arg11;
	D_800DE840[temp_v0].unk10 = arg12;
	D_800DE840[temp_v0].unk12 = arg13;

	temp_s1 = func_80085CB8_56168(arg8);
	i = 0;
	while (i < temp_s1) {
		func_800857D4_55C84(temp_s5, (s32)&sp34, arg6, arg7);
		i++;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80085CEC_5619C.s")
#endif

#ifdef NON_MATCHING
// CURRENT(260)
void func_80085EA8_56358(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4, u8 arg5, u8 arg6) {
	u8 temp_s2;
	s16 temp_v0;
	s32 temp_v0_2;
	u8 temp_a0;
	u8 temp_arg6;
	s16 temp_arg2;
	s16 temp_arg3;
	u8 temp_arg4;
	s32 var_s0;
	u8 temp_t8;

	temp_s2 = func_80083A58_53F08(1);
	if (temp_s2 == 0xFB) {
		return;
	}

	temp_v0 = func_80083B7C_5402C(temp_s2);
	if (temp_v0 == -3) {
		func_80083B14_53FC4(temp_s2);
		return;
	}

	D_800DE130[temp_s2].unkA = temp_v0;
	D_800DE840[temp_v0].unk8 = arg0;
	D_800DE840[temp_v0].unkA = arg1;
	D_800DE840[temp_v0].unkE = 0xFF;
	D_800DE840[temp_v0].unkF = 0xFF;
	D_800DE840[temp_v0].unk10 = 0xFF;
	*((u8*) &D_800DE840[temp_v0].unk12) = 2;
	temp_arg6 = arg6;
	temp_arg2 = arg2;
	temp_arg3 = arg3;
	temp_arg4 = arg4;
	D_800DE840[temp_v0].unk2 = temp_arg6;
	D_800DE840[temp_v0].unkC = temp_arg2;
	D_800DE840[temp_v0].unk14 = temp_arg3;
	D_800DE840[temp_v0].unk11 = temp_arg4;

	temp_v0_2 = func_80085CB8_56168(arg5);
	temp_a0 = temp_v0_2 & 0xFF;
	var_s0 = 0;
	if (temp_a0 > 0) {
		do {
			func_800857D4_55C84(temp_s2, 0, 0, 0);
			var_s0++;
			temp_t8 = var_s0 & 0xFF;
		} while ((var_s0 = temp_t8, temp_t8 < temp_a0));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80085EA8_56358.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80085FF0_564A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80086528_569D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80086C58_57108.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800870AC_5755C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800878A4_57D54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800885A0_58A50.s")

/* Stores high bytes of 3 u16 args at triple-indirect D_800DE840 chain offset +8 */
void func_80088A38_58EE8(u16 arg0, u16 arg1, u16 arg2, s16 arg3) {
	u8 *ptr;

	if (arg3 != -3) {
		ptr = (u8 *)&D_800DE840[D_800DE840[D_800DE840[arg3].unk4].unk4] + 8;
		ptr[3] = arg0 >> 8;
		ptr[4] = arg1 >> 8;
		ptr[5] = arg2 >> 8;
	}
}

/* Sets 3 bytes at struct offset 8 via triple-indirect D_800DE840 chain */
void func_80088ACC_58F7C(s8 arg0, s8 arg1, s8 arg2, s16 arg3) {
	s8 *dst;

	if (arg3 != -3) {
		dst = (s8*)&D_800DE840[D_800DE840[D_800DE840[arg3].unk4].unk4] + 8;
		dst[0] = arg0;
		dst[1] = arg1;
		dst[2] = arg2;
	}
}

/* Sets 3 bytes at struct offset 14 via triple-indirect D_800DE840 chain */
void func_80088B54_59004(s8 arg0, s8 arg1, s8 arg2, s16 arg3) {
	s8 *dst;

	if (arg3 != -3) {
		dst = (s8*)&D_800DE840[D_800DE840[D_800DE840[arg3].unk4].unk4] + 8;
		dst[6] = arg0;
		dst[7] = arg1;
		dst[8] = arg2;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80088BDC_5908C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80088E18_592C8.s")

#ifdef NON_MATCHING
// CURRENT(663)
u8 func_800891F8_596A8(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	s16 idx;
	Unk800DE840 *dst;
	Unk800DE840 *src;
	u8 *dstBytes;
	u8 *srcBytes;
	u8 allocId;

	if (arg4 == -3) {
		return 0xFB;
	}

	allocId = func_80083A58_53F08(4);
	if (allocId != 0xFB) {
		idx = func_80083B7C_5402C(allocId);
		if (idx == 0xFB) {
			func_80083B14_53FC4(allocId);
			allocId = 0xFB;
		} else {
			dst = &D_800DE840[idx];
			dstBytes = (u8 *)dst;
			if (arg4 == -8) {
				dstBytes[0xE] = 0xC8;
				dstBytes[0xF] = 0xC8;
				dstBytes[0x10] = 0xC8;
				dstBytes[0x11] = 0x64;
				dstBytes[0x12] = 0x64;
				dstBytes[0x13] = 0x64;
			} else {
				src = &D_800DE840[arg4];
				srcBytes = (u8 *)src;
				dstBytes[0xE] = srcBytes[0xE];
				dstBytes[0xF] = srcBytes[0xF];
				dstBytes[0x10] = srcBytes[0x10];
				dstBytes[0x11] = ((u8 *)&D_800DE840[src->unk4])[8];
				dstBytes[0x12] = ((u8 *)&D_800DE840[src->unk4])[9];
				dstBytes[0x13] = ((u8 *)&D_800DE840[src->unk4])[0xA];
			}

			dst->unk8 = arg0;
			dst->unkA = arg1;
			dst->unkC = arg2;
			((s16 *)&D_800DE130[allocId])[1] = arg3;
		}
	}

	return allocId;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800891F8_596A8.s")
#endif

void func_80089388_59838(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	s16 idx;

	if (arg3 >= 0x96) {
		return;
	}
    if (arg3 == 0xFB) {
		return;
	}
    if (D_800DE130[arg3].unk0 != 4) {
		return;
	}
	idx = func_80083B7C_5402C(arg3);
	if (idx == -3) {
		return;
	}

	D_800DE840[idx].unk8 = arg0;
	D_800DE840[idx].unkA = arg1;
	D_800DE840[idx].unkC = arg2;
	D_800DE840[idx].unk2 = (func_800038E0_44E0() % 0xF) + 0x1E;
	D_800DE840[idx].unk11 = 0xFA;
	D_800DE840[idx].unkE = D_800DE840[D_800DE130[arg3].unk6].unkE;
	D_800DE840[idx].unkF = D_800DE840[D_800DE130[arg3].unk6].unkF;
	D_800DE840[idx].unk10 = D_800DE840[D_800DE130[arg3].unk6].unk10;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800894A0_59950.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80089764_59C14.s")

void func_800899F0_59EA0(s16 arg0, s16 arg1, u16 arg2, u8 arg3, u8 arg4, u8 arg5, u8 arg6) {
	s16 idx;
	u8* ptr;

	if (D_800DE818 < 0x41) {
		idx = func_80083B7C_5402C(0x93);
		if (idx != -3) {
			D_800DE840[idx].unkA = 0;
			D_800DE840[idx].unk11 = 0;
			D_800DE840[idx].unk2 = arg2;
			D_800DE840[idx].unk8 = arg0;
			D_800DE840[idx].unkC = arg1;

			ptr = (u8*)&D_800DE840[idx];
			ptr[0x12] = arg6;
			ptr[0x0E] = arg3;
			ptr[0x0F] = arg4;
			ptr[0x10] = arg5;

			ptr[0x13] = arg2 / 2;
			if (!ptr[0x13]) {
				ptr[0x13] = 1;
			}
		}
	}
}

/* Traverses D_800DE840 linked list, incrementing unk11 and updating unk2 */
void func_80089AB4_59F64(void) {
	s16 idx;
	u8 *ptr;

	idx = D_800DE81A;
	while (idx != -5 && idx != -6) {
		ptr = (u8 *)&D_800DE840[idx] + 8;
		if (D_800DE840[idx].unk11 < 4) {
			D_800DE840[idx].unk2 += (u8)ptr[0xB];
		}
		ptr[9]++;
		idx = D_800DE840[idx].unk4;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80089B38_59FE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008A094_5A544.s")

#ifdef NON_MATCHING
// CURRENT(3439)
u8 func_8008A460_5A910(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6, u16 arg7, u8 arg8, u8 arg9, u8 arg10, u8 arg11, u8 arg12, u8 arg13, u8 arg14) {
	u8 slot;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s16 idx;
	Unk800DE840 *entry;
	Unk800DE840 *next;
	u8 *entryBytes;
	u8 *nextBytes;
	s16 temp;
	u8 value;

	pad0 = 0;
	pad1 = 0;
	pad2 = 0;
	pad3 = 0;
	pad4 = 0;
	pad5 = 0;

	slot = func_80083A58_53F08(6);
	if (slot != 0xFB) {
		idx = func_80083D50_54200(slot);
		if (idx == -3) {
			func_80083B14_53FC4(slot);
			return 0xFB;
		}

		entry = &D_800DE840[idx];
		entry->unk2 = arg7;
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;

		next = &D_800DE840[entry->unk4];
		nextBytes = (u8 *)&next->unk8;
		nextBytes[0] = arg3;
		nextBytes[1] = arg4;
		nextBytes[2] = arg5;
		nextBytes[3] = arg6;
		nextBytes[4] = arg9;

		entry->unkE = arg10;
		entry->unkF = arg11;
		entry->unk10 = arg12;
		*((u8 *)&entry->unk14) = arg14;

		entryBytes = (u8 *)&entry->unk8;
		temp = arg10 - 0x78;
		if (temp < 0) {
			temp = 0;
		}
		entryBytes[9] = temp;

		temp = arg11 - 0x78;
		if (temp < 0) {
			temp = 0;
		}
		entryBytes[0xA] = temp;

		temp = arg12 - 0x78;
		if (temp < 0) {
			temp = 0;
		}
		entryBytes[0xB] = temp;

		nextBytes[8] = arg13;

		value = arg8;
		if (value >= 0x97) {
			value = 0x96;
		} else if (value == 0) {
			value = 1;
		}
		nextBytes[5] = value;
		*(s16 *)&nextBytes[6] = 0;
	}

	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008A460_5A910.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008A5F8_5AAA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008A928_5ADD8.s")

#ifdef NON_MATCHING
// CURRENT(2027)
void func_8008AEC8_5B378(s32 arg0) {
	s16 srcIdx;
	s16 dstIdx;
	u8 id;
	u8 *s0;
	u8 *s1;
	s8 sx;
	s8 sy;
	s8 sz;

	id = arg0 & 0xFF;
	srcIdx = D_800DE130[id].unk6;
	dstIdx = func_80083B7C_5402C(id);
	if (dstIdx != -3) {
		s0 = (u8 *)&D_800DE840[dstIdx].unk8;
		*(s16 *)(s0 - 6) = (func_800038E0_44E0() % 0x1C) + 0x1C;

		s1 = (u8 *)&D_800DE840[srcIdx].unk8;
		s0[6] = D_800AA640[s1[0xA] * 3];
		s0[7] = D_800AA640[(s1[0xA] * 3) + 1];
		s0[8] = D_800AA640[(s1[0xA] * 3) + 2];
		s0[9] = 0x8C;

		*(s16 *)&s0[0] = *(s16 *)&s1[0];
		*(s16 *)&s0[2] = *(s16 *)&s1[2];
		*(s16 *)&s0[4] = *(s16 *)&s1[4];
		sx = (s8)s1[6];
		sy = (s8)s1[7];
		sz = (s8)s1[8];

		s0[0xA] = (func_800038E0_44E0() % 4) + sx - 2;
		s0[0xB] = (func_800038E0_44E0() % 4) + sy - 2;
		s0[0xC] = (func_800038E0_44E0() % 4) + sz - 2;
		s0[0xD] = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008AEC8_5B378.s")
#endif

/* Allocate entry with given params; returns allocId or 0xFB on failure */
u8 func_8008B08C_5B53C(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5, u8 arg6)
{
  s16 idx;s32 new_var;
  u8 allocId;
  allocId = func_80083A58_53F08(7);
  if (allocId != 0xFB)
  {
	idx = func_80083B7C_5402C(allocId);
	if (idx == (-3))
	{
	  func_80083B14_53FC4(allocId);
	  return 0xFB;
	}
	D_800DE840[idx].unk8 = arg0;
	D_800DE840[idx].unkA = arg1;
	D_800DE840[idx].unkC = arg2;
	D_800DE840[idx].unkE = arg3;
	D_800DE840[idx].unkF = arg4;
	D_800DE840[idx].unk10 = arg5;
	D_800DE840[idx].unk11 = 1;
	*((u8 *) (&D_800DE840[idx].unk12)) = arg6;
  }
  return allocId;
}

/* Sets 3D position (s16 x,y,z) in D_800DE840 entry indexed via D_800DE130 */
void func_8008B148_5B5F8(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	s16 idx = D_800DE130[arg3].unk6;
	D_800DE840[idx].unk8 = arg0;
	D_800DE840[idx].unkA = arg1;
	D_800DE840[idx].unkC = arg2;
}

void func_8008B19C_5B64C(u8 arg0, u8 arg1) {
	Unk800DE130 *entry;

	if (arg0 < 0x96) {
		entry = &D_800DE130[arg0];
		if (entry->unk0 == 7) {
			if (arg1 == 0) {
				if (entry->unk4 < 2) {
					func_800840C4_54574(arg0);
					func_80083B14_53FC4(arg0);
					return;
				}
				D_800DE840[entry->unk6].unk11 = 0;
			} else if (arg1 == 1) {
				func_800840C4_54574(arg0);
				func_80083B14_53FC4(arg0);
			}
		}
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008B264_5B714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008B534_5B9E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008B7BC_5BC6C.s")

/* Calls func_800840C4 and func_80083B14 if D_800DE130[arg0].unk0 == 9 */
void func_8008BAD8_5BF88(u8 arg0) {
	if (arg0 != 0xFB && D_800DE130[arg0].unk0 == 9) {
		func_800840C4_54574(arg0);
		func_80083B14_53FC4(arg0);
	}
}

// CURRENT(475)
#ifdef NON_MATCHING
void func_8008BB38_5BFE8(u8 arg0) {
	s16 idx;
	Unk800DE840 *entry;
	s16 *ptrA1;
	s16 *ptrA0;

	idx = D_800DE130[arg0].unk6;
	if ((idx != -5) && (idx != -6)) {
		while (1) {
			entry = &D_800DE840[idx];
			ptrA1 = (s16 *)((u8 *)entry + 8);
			ptrA0 = ptrA1;

			if (ptrA1[3] == -1) {
				idx = entry->unk4;
			} else {
				if (ptrA1[3] == 0) {
					func_800840C4_54574(arg0);
					func_80083B14_53FC4(arg0);
					return;
				}
				ptrA0[3]--;
				idx = entry->unk4;
			}
			if ((idx == -5) || (idx == -6)) {
				return;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008BB38_5BFE8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008BC00_5C0B0.s")

/* Allocate D_800DE840 entry and fill all fields from params */
void func_8008C73C_5CBEC(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4, u8 arg5, s16 arg6, s16 arg7, s16 arg8, u8 arg9) {
	s32 idx;

	idx = func_80083B7C_5402C(0x92);
	if (idx != -3) {
		D_800DE840[idx].unk8 = arg0;
		D_800DE840[idx].unkA = arg1;
		D_800DE840[idx].unkC = arg2;
		D_800DE840[idx].unk12 = arg6;
		D_800DE840[idx].unk14 = arg7;
		D_800DE840[idx].unk16 = arg8;
		D_800DE840[idx].unk2 = 0xF;
		D_800DE840[idx].unkE = arg3;
		D_800DE840[idx].unkF = arg4;
		D_800DE840[idx].unk10 = arg5;
		D_800DE840[idx].unk18 = arg9;
	}
}

// CURRENT(710)
#ifdef NON_MATCHING
void func_8008C7E4_5CC94(void) {
	s16 var_s0;
	Unk800DE840 *temp_v1;
	Unk8008C7E4Sub *temp_v0;

	var_s0 = D_800DE80E;
	if ((var_s0 != -5) && (var_s0 != -6)) {
		do {
			temp_v1 = &D_800DE840[var_s0];
			temp_v0 = (Unk8008C7E4Sub *) ((u8 *) temp_v1 + 8);

			if ((s32) temp_v1->unk18 > 0) {
				temp_v0->unk10--;
				temp_v0->unk0 = temp_v0->unk0 + temp_v0->unkA;
				temp_v0->unk2 = temp_v0->unk2 + temp_v0->unkC;
				temp_v0->unk4 = temp_v0->unk4 + temp_v0->unkE;
				var_s0 = temp_v1->unk4;
			} else {
				func_80083DBC_5426C(var_s0, 0x92);
				var_s0 = temp_v1->unk4;
			}
		} while ((var_s0 != -5) && (var_s0 != -6));
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008C7E4_5CC94.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008C8E0_5CD90.s")

#ifdef NON_MATCHING
// CURRENT(5)
void func_8008CC3C_5D0EC(void) {
	u8 i;

	for (i = 0; i < 0x96; i++) {
		switch (D_800DE130[i].unk0) {
			case 0:
				func_80084508_549B8(i);
				func_8008472C_54BDC(i);
				break;

			case 1:
				func_80085FF0_564A0(i);
				break;

			case 2:
				func_800870AC_5755C();
				break;

			case 3:
				func_80088BDC_5908C();
				break;

			case 4:
				func_800894A0_59950(i);
				break;

			case 5:
				func_80089AB4_59F64();
				break;

			case 6:
				func_8008A5F8_5AAA8(i);
				break;

			case 7:
				func_8008B264_5B714(i);
				break;

			case 8:
				func_8008BB38_5BFE8(i);
				break;

			case 9:
				func_8008C7E4_5CC94();
				break;

			case 10:
				break;

			default:
				break;
		}
	}

	if (D_800DE0B9 == 1) {
		if (D_800DE0BA == 0) {
			D_800DE0BB += 5;
			if (D_800DE0BB == 0xFF) {
				D_800DE0BA = 1;
			}
		} else if (D_800DE0BB >= 6) {
			D_800DE0BB -= 5;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008CC3C_5D0EC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008CDC8_5D278.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008D14C_5D5FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008D510_5D9C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008D98C_5DE3C.s")

/* Clears unkA field in all 50 D_800E1980 entries and resets globals */
void func_8008DBEC_5E09C(void) {
	u8 i;

	for (i = 0; i < 50; i++) {
		D_800E1980[i].unkA = 0;
	}
	D_800E1D68 = 0;
	D_800E1D69 = 0;
}

#ifdef NON_MATCHING
// CURRENT(7230)
u8 func_8008DC34_5E0E4(s16 arg0, s32 arg1, s32 arg2, s16 arg3, s16 arg4) {
	u8 var_v1;
	u8 temp_t3;
	Unk800E1980 *temp_a0;
	s8 *temp_t2;
	u8 *temp_a2;

	if (D_800E1D68 >= 0x32) {
		return 0xFF;
	}

	temp_a0 = &D_800E1980[D_800E1D69];
	temp_a0->unk0 = arg0;
	temp_t2 = &D_800AA694[(u8) arg3 * 8];
	temp_a0->unkC = (u8) arg3;
	temp_a0->unkA = (u16) arg4;
	temp_a0->unk2 = arg1;
	temp_a0->unk4 = arg2;
	temp_a0->unkF = 0;
	temp_a0->unk10 = temp_t2[1];
	temp_a0->unk11 = temp_t2[2];
	temp_a0->unk12 = temp_t2[3];

	var_v1 = D_800E1D69;
	temp_t3 = var_v1;
	temp_a0 = &D_800E1980[D_800E1D69];
	temp_a2 = &D_800AA724[(u8) arg3 * 4];
	temp_a0->unkE = func_800038E0_44E0() % temp_t2[0];
	temp_a0->unkD = temp_a2[3];
	temp_a0->unk6 = temp_a2[0];
	temp_a0->unk7 = temp_a2[1];
	temp_a0->unk8 = temp_a2[2];

	while (var_v1 < 0x32) {
		if (D_800E1980[var_v1].unkA == 0) {
			D_800E1D69 = var_v1;
			var_v1 = 0x32;
		}
		var_v1 = (var_v1 + 1) & 0xFF;
	}

	D_800E1D68++;
	return temp_t3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008DC34_5E0E4.s")
#endif

/* Sets three byte fields (offsets 6,7,8) in a D_800E1980 entry */
void func_8008DDF0_5E2A0(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
	if (arg0 != 0xFF) {
		D_800E1980[arg0].unk6 = arg1;
		D_800E1980[arg0].unk7 = arg2;
		D_800E1980[arg0].unk8 = arg3;
	}
}

/* Sets a byte field at offset 0xD in a 20-byte struct array entry */
void func_8008DE44_5E2F4(u8 arg0, u8 arg1) {
	if (arg0 != 0xFF) {
		(&D_800E198D)[(s32)arg0 * 20] = arg1;
	}
}

/* Sets a signed byte field at offset 0x12 in a 20-byte struct array entry */
void func_8008DE7C_5E32C(u8 arg0, s8 arg1) {
	if (arg0 != 0xFF) {
		(&D_800E1992)[(s32)arg0 * 20] = arg1;
	}
}

/* Sets two signed byte fields (unk10, unk11) in a D_800E1980 struct entry */
void func_8008DEB8_5E368(u8 arg0, s8 arg1, s8 arg2) {
	if (arg0 != 0xFF) {
		D_800E1980[arg0].unk10 = arg1;
		D_800E1980[arg0].unk11 = arg2;
	}
}

/* Sets a byte field at offset 0xF in a 20-byte struct array entry */
void func_8008DF08_5E3B8(u8 arg0, u8 arg1) {
	if (arg0 != 0xFF) {
		(&D_800E198F)[(s32)arg0 * 20] = arg1;
	}
}

/* Clears unkA for a slot, updates min index D_800E1D69, decrements D_800E1D68 */
void func_8008DF40_5E3F0(u8 arg0) {
	if (arg0 != 0xFF) {
		D_800E1980[arg0].unkA = 0;
		if (arg0 < D_800E1D69) {
			D_800E1D69 = arg0;
		}
		D_800E1D68--;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008DFA0_5E450.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008E158_5E608.s")

/* Allocates an entry and fills color/lifetime and velocity-related byte fields */
void func_8008E9DC_5EE8C(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s8 arg4, s8 arg5, u8 arg6, u8 arg7, u8 arg8, u8 arg9, u8 arg10) {
	u8 slot;

	slot = func_8008DC34_5E0E4(arg0, arg1, arg2, 2, arg3);
	if (slot != 0xFF) {
		D_800E1980[slot].unkD = arg7;
		D_800E1980[slot].unk12 = arg7 / arg6;
		D_800E1980[slot].unk6 = arg8;
		D_800E1980[slot].unk7 = arg9;
		D_800E1980[slot].unk8 = arg10;
		D_800E1980[slot].unk10 = arg4;
		D_800E1980[slot].unk11 = arg5;
	}
}

/* Allocates an entry and sets DE7C/DEB8 fields */
void func_8008EAB0_5EF60(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4) {
	u8 slot;

	slot = func_8008DC34_5E0E4(arg0, arg1, arg2, 5, 10);
	func_8008DE7C_5E32C(slot, arg4);
	func_8008DEB8_5E368(slot, arg3, 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008EB20_5EFD0.s")

/* Sets D_800DE0EB flag around a call to func_8008EB20 */
void func_8008ED44_5F1F4(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, s32 arg5) {
	D_800DE0EB = 1;
	func_8008EB20_5EFD0(arg0, arg1, arg2, arg3, arg4, arg5, 0);
	D_800DE0EB = 0;
}

#ifdef NON_MATCHING
// CURRENT(1385)
void func_8008EDB4_5F264(s32 arg0) {
	s16 temp;
	s32 value;
	s32 modulo;
	s32 var_s0;
	s32 var_s4;
	u8 *var_s1;
	s8 *var_s2;

	modulo = 120;
	var_s4 = 0;
	do {
		var_s1 = &D_800AA688[(var_s4 * 4) - var_s4];
		var_s2 = (s8 *)(arg0 + ((var_s4 * 4) - var_s4));
		var_s0 = 0;
		do {
			temp = (func_800038E0_44E0() % modulo) + var_s1[var_s0] - 60;
			value = temp;
			if (temp < 0) {
				value = 0;
			} else if (value >= 0x100) {
				value = 0xFF;
			}
			var_s2[var_s0] = value;
			var_s0 = (var_s0 + 1) & 0xFF;
		} while (var_s0 < 3);
		var_s4 = (var_s4 + 1) & 0xFF;
	} while (var_s4 < 4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008EDB4_5F264.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008EEC4_5F374.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008F1E0_5F690.s")

/* Initializes a 12-byte struct entry at D_800DE130[arg1] */
void func_8008F534_5F9E4(u8 arg0, u8 arg1) {
	D_800DE130[arg1].unk0 = arg0;
	D_800DE130[arg1].unk1 = 0;
	D_800DE130[arg1].unk4 = 0;
	D_800DE130[arg1].unk6 = -6;
	D_800DE130[arg1].unk8 = -6;
}

#ifdef NON_MATCHING
// CURRENT(801)
void func_8008F574_5FA24(void) {
	s32 i;
	s32 var_s0;
	u8* var_a0;
	s32 var_a1;

	D_800DE0EB = 0;
	D_800DE0B0.unk0 = 0x78;
	D_800DE0B0.unk2 = -0x26C;
	D_800DE0B0.unk4 = -0xDFC;

	var_s0 = 0xFF;
	var_a0 = D_800DE0E8;
	var_a1 = 0x28;
	D_800DE0E4[0] = var_s0;
	D_800DE0E4[1] = D_800DE0E4[0];
	D_800DE0E4[2] = D_800DE0E4[1];
	var_a0[0] = var_a1;
	var_a0[1] = var_a1;
	var_a0[2] = var_a1;
	func_8008DBEC_5E09C();

	for (i = 0; i < 0x96; i = (i + 1) & 0xFF) {
		D_800DE130[i].unk0 = 0xFA;
	}

	for (i = 0; i < 0x1C2; i = (i + 1) & 0xFFFF) {
		D_800DE840[i].unk0 = 0;
	}

	D_800E197A = 0;
	D_800E1978 = 0;
	func_8008F534_5F9E4(2, 0x95);
	func_8008F534_5F9E4(3, 0x94);
	func_8008F534_5F9E4(5, 0x93);
	func_8008F534_5F9E4(0xA, 0x92);

	D_800DE0BF = var_s0;
	D_800DE0BE = D_800DE0BF;
	D_800DE0B6 = 0;
	D_800DE0B7 = 0;
	D_800DE0B8 = 0;
	D_800DE0B9 = 0;
	D_800DE0BD = 0;
	D_800DE0BA = 0;
	D_800DE0BB = D_800DE0BF;
	D_800DE839 = 0;
	D_800DE838 = 4;
	D_800E1D6B = 0;
	D_800E1D6C = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008F574_5FA24.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008F704_5FBB4.s")

/* Calls func_8008F704 for each active slot in D_800DE0BE/BF */
void func_8008FA60_5FF10(void) {
	if (D_800DE0BE != 0xFF) {
		func_8008F704_5FBB4(D_800DE0BE);
	}
	if (D_800DE0BF != 0xFF) {
		func_8008F704_5FBB4(D_800DE0BF);
	}
}

void func_8008FAAC_5FF5C(void) {
	func_800033D4_3FD4(0x800, 0);
	if (currentControllerStates[0].button & 0x800) {
		D_800DE0B0.unk2 += 0x28;
	}

	func_800033D4_3FD4(0x400, 0);
	if (currentControllerStates[0].button & 0x400) {
		D_800DE0B0.unk2 -= 0x28;
	}

	func_800033D4_3FD4(0x200, 0);
	if (currentControllerStates[0].button & 0x200) {
		D_800DE0B0.unk0 -= 0x28;
	}

	func_800033D4_3FD4(0x100, 0);
	if (currentControllerStates[0].button & 0x100) {
		D_800DE0B0.unk0 += 0x28;
	}

	func_800033D4_3FD4(8, 0);
	if (currentControllerStates[0].button & 8) {
		D_800DE0B0.unk4 += 0x28;
	}

	func_800033D4_3FD4(4, 0);
	if (currentControllerStates[0].button & 4) {
		D_800DE0B0.unk4 -= 0x28;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008FBD4_60084.s")

/* Appends a display list command and calls func_8008D98C */
#ifdef NON_MATCHING
s32 func_8008FD9C_6024C(void) {
	Gfx *dl;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w1 = (s32)&D_80031160 & 0x1FFFFFFF;
	dl->words.w0 = 0x01020040;
	return func_8008D98C_5DE3C(&D_8005BB2C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008FD9C_6024C.s")
#endif

/* Compute delta positions and call update chain */
void func_8008FDF0_602A0(void) {
	D_800DE0F0[0] = (f32)D_800DE10C - D_800DE100[0];
	D_800DE0F0[1] = (f32)D_800DE10E - D_800DE100[1];
	D_800DE0F0[2] = (f32)D_800DE110 - D_800DE100[2];
	func_8008CC3C_5D0EC();
	func_8008DFA0_5E450();
	func_8008EEC4_5F374();
	func_8008F1E0_5F690();
	func_8008FAAC_5FF5C();
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008FE98_60348.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80090648_60AF8.s")
