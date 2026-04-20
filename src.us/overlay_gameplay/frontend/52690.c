#include <ultra64.h>
#include "common.h"

typedef struct {
	u16 unk0;
	u16 unk2;
} Frontend52690Viewport;

void func_800821E0_52690(u8 arg0, u8 arg1, u8 arg2) {
	((Frontend52690Viewport *)D_8005BB24)->unk2 = 0x140;

	gSPViewport(D_8005BB2C++, D_8005BB24 + 0x80000000);
	gSPClearGeometryMode(D_8005BB2C++, 0xFFFFFFFF);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADE | G_SHADING_SMOOTH);
	gSPDisplayList(D_8005BB2C++, (Gfx *)((u32)D_800311A8 & 0x1FFFFFFF));

	func_80004F64_5B64();

	func_80004DDC_59DC(0, 0, 0, 0, ((D_80068088 - 0xA0) / 2) - 1);
	func_80004DDC_59DC(0, 0, 0, (D_80068088 + 0xA0) / 2, D_80068088 - 1);

	func_80004DDC_59DC(arg0, arg1, arg2, (D_80068088 - 0xA0) / 2, ((D_80068088 + 0xA0) / 2) - 1);

	gSPDisplayList(D_8005BB2C++, (Gfx *)((u32)D_800311D0 & 0x1FFFFFFF));
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
}

void func_800823C0_52870(void) {
}

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

#ifdef NON_MATCHING
// CURRENT(4374)
void func_800829E4_52E94(s32 arg0) {
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 pad4;
	s32 pad5;
	s32 digits[4];
	s32 *digitPtr;
	s32 *digitEnd;
	s32 divisor;
	s32 quotient;
	s32 divisorStep;
	u32 loadBlockW0;
	u32 loadBlockW1;
	Gfx *dl;

	divisor = 1000;
	divisorStep = 10;
	loadBlockW0 = 0xF3000000;
	loadBlockW1 = 0x073FF200;
	digitPtr = digits;
	digitEnd = digits + 4;
	quotient = 0;
	while (digitPtr < digitEnd) {
		quotient = arg0 / divisor;
		*digitPtr++ = quotient;
		arg0 -= quotient * divisor;
		divisor /= divisorStep;
	}

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xE8000000;
	dl->words.w1 = 0;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xFD68001F;
	dl->words.w1 = (u32)(D_4002BA0 + (digits[3] << 10));
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xF5680000;
	dl->words.w1 = 0x07000000;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xE6000000;
	dl->words.w1 = 0;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = loadBlockW0;
	dl->words.w1 = loadBlockW1;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xE8000000;
	dl->words.w1 = 0;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xFD68001F;
	dl->words.w1 = (u32)(D_4002BA0 + (digits[2] << 10));
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xF5680080;
	dl->words.w1 = 0x07000000;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xE6000000;
	dl->words.w1 = 0;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = loadBlockW0;
	dl->words.w1 = loadBlockW1;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xE8000000;
	dl->words.w1 = 0;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xFD68001F;
	dl->words.w1 = (u32)(D_4002BA0 + (digits[1] << 10));
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xF5680100;
	dl->words.w1 = 0x07000000;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xE6000000;
	dl->words.w1 = 0;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = loadBlockW0;
	dl->words.w1 = loadBlockW1;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xE8000000;
	dl->words.w1 = 0;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xFD68001F;
	dl->words.w1 = (u32)(D_4002BA0 + (digits[0] << 10));
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xF5680180;
	dl->words.w1 = 0x07000000;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xE6000000;
	dl->words.w1 = 0;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = loadBlockW0;
	dl->words.w1 = loadBlockW1;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0x06000000;
	dl->words.w1 = (u32)D_4000170;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800829E4_52E94.s")
#endif

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

#ifdef NON_MATCHING
// CURRENT(2490)
void func_80083DBC_5426C(s16 arg0, u8 arg1) {
	Unk800DE840 *temp_v0;
	Unk800DE130 *temp_a2;
	Unk800DE840 *temp_a1;
	u8 temp_a3;
	s16 temp_v1;
	s16 temp_idx;
	s16 temp_count;
	s16 temp_min;

	temp_v0 = &D_800DE840[arg0];
	temp_a2 = &D_800DE130[arg1];
	if (temp_v0->unk0 != 0) {
		temp_a3 = temp_a2->unk4;
		temp_v1 = -6;
		switch (temp_a3) {
		case 0:
			temp_a2->unk6 = temp_v1;
			temp_a2->unk8 = temp_v1;
			return;

		case 1:
			temp_a2->unk6 = temp_v1;
			temp_a2->unk8 = temp_v1;
			break;

		case 2:
			temp_v1 = temp_v0->unk6;
			if (temp_v1 == -4) {
				temp_a2->unk6 = temp_v0->unk4;
				temp_a1 = &D_800DE840[temp_a2->unk6];
				temp_a1->unk6 = -4;
				temp_a1->unk4 = -5;
			} else if (temp_v0->unk4 == -5) {
				temp_a2->unk8 = temp_v1;
				temp_a1 = &D_800DE840[temp_a2->unk6];
				temp_a1->unk6 = -4;
				temp_a1->unk4 = -5;
			}
			break;

		default:
			temp_v1 = temp_v0->unk6;
			if (temp_v1 == -4) {
				temp_idx = temp_v0->unk4;
				temp_a2->unk6 = temp_idx;
				D_800DE840[temp_idx].unk6 = -4;
			} else {
				temp_idx = temp_v0->unk4;
				if (temp_idx == -5) {
					temp_a2->unk8 = temp_v1;
					D_800DE840[temp_v1].unk4 = -5;
				} else {
					D_800DE840[temp_idx].unk6 = temp_v1;
					D_800DE840[temp_v0->unk6].unk4 = temp_v0->unk4;
				}
			}
			break;
		}

		temp_count = D_800E1978;
		temp_min = D_800E197A;
		temp_v0->unk0 = 0;
		temp_a2->unk4 = temp_a3 - 1;
		D_800E1978 = temp_count - 1;
		if (arg0 < temp_min) {
			D_800E197A = arg0;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80083DBC_5426C.s")
#endif

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

typedef struct {
	/* 0x00 */ s8 unk0;
	/* 0x01 */ s8 unk1;
	/* 0x02 */ s8 unk2;
	/* 0x03 */ s8 unk3;
	/* 0x04 */ s8 unk4;
	/* 0x05 */ u8 pad5;
	/* 0x06 */ s16 unk6;
	/* 0x08 */ s8 unk8;
} Frontend52690Unk8View;

#ifdef NON_MATCHING
// CURRENT(1458)
void func_8008412C_545DC(u8 arg0, u8 arg1) {
	s16 index;
	Frontend52690Unk8View *temp_s0;

	if ((arg0 != 0xFB) && ((index = func_80083B7C_5402C(arg0)) != -3)) {
		temp_s0 = (Frontend52690Unk8View *)((u8 *)&D_800DE840[index] + 8);
		temp_s0->unk1 = (s8)(func_800038E0_44E0() % 4);
		temp_s0->unk2 = (s8)((func_800038E0_44E0() % 10) + 1);
		temp_s0->unk3 = (s8)((func_800038E0_44E0() % 8) + 8);
		if ((func_800038E0_44E0() % 2) == 1) {
			temp_s0->unk3 = (s8)-temp_s0->unk3;
		}
		temp_s0->unk4 = (s8)((func_800038E0_44E0() % 15) + 10);
		if ((arg1 >= 0x1A) && ((func_800038E0_44E0() % 2) == 1)) {
			temp_s0->unk4 = (s8)-temp_s0->unk4;
		}
		temp_s0->unk0 = arg1;
		if ((D_800DE0B7 == 1) || (D_800DE0B9 == 1)) {
			temp_s0->unk6 = (s16)((func_800038E0_44E0() % 1000) + 0x19);
		} else {
			temp_s0->unk6 = (s16)((func_800038E0_44E0() % 200) + 0x19);
		}
		temp_s0->unk8 = (s8)((func_800038E0_44E0() % 20) - 10);
		if (temp_s0->unk8 < 0) {
			temp_s0->unk8 = (s8)(temp_s0->unk8 - 5);
			return;
		}
		temp_s0->unk8 = (s8)(temp_s0->unk8 + 5);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008412C_545DC.s")
#endif

#ifdef NON_MATCHING
// CURRENT(3017)
u8 func_80084324_547D4(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7) {
	s16 pad0;
	s16 pad1;
	s16 sp2A;
	s16 temp_v0_2;
	s32 temp_s2;
	s32 temp_v0;
	s32 temp_t1;
	s32 var_s0;
	s16 *temp_v1;

	temp_v0 = func_80083A58_53F08(0);
	temp_s2 = temp_v0 & 0xFF;
	if (temp_v0 != 0xFB) {
		temp_v0_2 = func_80083B7C_5402C(temp_s2 & 0xFF);
		sp2A = temp_v0_2;
		if (temp_v0_2 == -3) {
			func_80083B14_53FC4(temp_s2 & 0xFF);
		} else {
			temp_v1 = (s16 *) &D_800DE840[temp_v0_2].unk8;
			D_800DE130[temp_s2].unkA = temp_v0_2;
			temp_v1[0] = arg0;
			temp_v1[3] = (arg3 - arg0) / arg6;
			temp_v1[4] = (arg4 - arg1) / arg6;
			temp_v1[5] = (arg5 - arg2) / arg6;
			var_s0 = 0;
			temp_v1[6] = arg6;
			temp_v1[1] = arg1;
			temp_v1[2] = arg2;
			D_800DE840[temp_v0_2].unk2 = arg7;
			do {
				func_8008412C_545DC(temp_s2 & 0xFF, (func_800038E0_44E0() % 230) & 0xFF);
				temp_t1 = (var_s0 + 1) & 0xFF;
				var_s0 = temp_t1;
			} while (temp_t1 < 8);
		}
	}

	return ((u8 *) &sp2A)[1];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80084324_547D4.s")
#endif

#ifdef NON_MATCHING
// CURRENT(260)
void func_80084508_549B8(u8 arg0) {
	s16 cur;
	Unk800DE840 *entry;
	s8 *view;
	s8 delta;
	s8 vel;
	s32 v1;

	cur = D_800DE130[arg0].unkA;
	cur = D_800DE840[cur].unk4;
	if ((cur == -5) || (cur == -6)) {
		return;
	}

	do {
		entry = &D_800DE840[cur];
		view = (s8 *)entry + 8;

		if (view[4] < 0) {
			if (((u8 *)view)[0] < 0x19) {
				s16 next = entry->unk4;

				func_80083DBC_5426C(cur, arg0);
				func_8008412C_545DC(arg0, 0);
				cur = next;
				continue;
			}
		}

		delta = view[3];
		if (delta > 0) {
			v1 = ((u8 *)view)[2];
			if (v1 < 0xE5) {
				((u8 *)view)[2] = v1 + delta;
			} else {
				((u8 *)view)[2] = 1;
				view[1]++;
				if (view[1] >= 4) {
					view[1] = 0;
				}
			}
		} else {
			v1 = ((u8 *)view)[2];
			if (v1 >= 0x11) {
				((u8 *)view)[2] = v1 + delta;
			} else {
				((u8 *)view)[2] = 0xE5;
				view[1]--;
				if (view[1] < 0) {
					view[1] = 3;
				}
			}
		}

		delta = view[4];
		if ((delta > 0) && (((u8 *)view)[0] >= 0xE6)) {
			view[4] = -delta;
			delta = view[4];
		}

		((u8 *)view)[0] += delta;
		vel = view[8];
		*(s16 *)(view + 6) += vel;
		if (vel > 0) {
			if (*(s16 *)(view + 6) >= 0xF4) {
				view[8] = -vel;
			}
		} else if (*(s16 *)(view + 6) < 0xC) {
			view[8] = -vel;
		}

		cur = entry->unk4;
	} while ((cur != -5) && (cur != -6));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80084508_549B8.s")
#endif

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

#ifdef NON_MATCHING
// CURRENT(1125)
void func_80088BDC_5908C(void) {
	s16 temp_a1;
	s16 temp_s0;
	s16 temp_s1_unkA;
	s16 var_s3;
	Unk800DE840 *temp_s1;
	Unk800DE840 *temp_s2;
	u8 *temp_s0_2;
	u8 *var_v0;

	var_s3 = D_800DE826;
	if ((var_s3 != -5) && (var_s3 != -6)) {
		s16 three;
		s16 six;
		s8 neg14;

		neg14 = -0x14;
		six = 6;
		three = 3;
		while (1) {
			temp_s1 = &D_800DE840[var_s3];
			temp_s1_unkA = temp_s1->unkA;
			temp_s0_2 = (u8 *)temp_s1 + 8;
			temp_s2 = &D_800DE840[D_800DE840[temp_s1->unk4].unk4];
			var_v0 = (u8 *)temp_s2 + 8;

			temp_s1->unk8 += (s8)var_v0[0];
			temp_s1->unkC += (s8)var_v0[2];
			temp_s1->unkA = temp_s1_unkA + (s8)var_v0[1];

			if ((s8)var_v0[1] >= -0x13) {
				var_v0[1] = ((s8)var_v0[1]) - 1;
			} else {
				var_v0[1] = neg14;
			}

			var_v0[3] += (s8)var_v0[6];
			var_v0[4] += (s8)var_v0[7];
			var_v0[5] += (s8)var_v0[8];

			if ((temp_s0_2[11] & 4) && (temp_s0_2[10] == 0)) {
				func_80089388_59838(*(s16 *)(temp_s0_2 + 0), *(s16 *)(temp_s0_2 + 2), *(s16 *)(temp_s0_2 + 4), temp_s0_2[9]);
			}

			temp_s0_2[10]++;
			if ((u8)temp_s0_2[10] == three) {
				temp_s0_2[10] = 0;
			}

			temp_a1 = *(s16 *)(temp_s0_2 + 2);
			if (temp_a1 <= 0) {
				if (temp_s0_2[11] & 1) {
					func_8008EB20_5EFD0(*(s16 *)(temp_s0_2 + 0), temp_a1, *(s16 *)(temp_s0_2 + 4), ((u16)(temp_s1->unk2 / six)), 0, 0, 0);
				}

				temp_s0 = temp_s2->unk4;
				func_80083F8C_5443C(var_s3, 0x94);
				var_s3 = temp_s0;
			} else {
				var_s3 = temp_s2->unk4;
			}

			if (var_s3 == -5) {
				break;
			}
			if (var_s3 != -6) {
				continue;
			}
			break;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80088BDC_5908C.s")
#endif

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

#ifdef NON_MATCHING
// CURRENT(1825)
void func_800894A0_59950(u8 arg0) {
	Unk800DE130 *entry130;
	Unk800DE840 *src;
	Unk800DE840 *head;
	Unk800DE840 *cur;
	u8 *headBytes;
	u8 *curBytes;
	u8 *curBytes2;
	s16 idx;
	u8 slot;

	slot = arg0;
	entry130 = &D_800DE130[slot];
	src = &D_800DE840[*(s16 *)((u8 *)entry130 + 2)];
	head = &D_800DE840[entry130->unk6];

	head->unk8 = src->unk8;
	head->unkA = src->unkA;
	head->unkC = src->unkC;

	headBytes = (u8 *)&head->unk11;
	idx = head->unk4;
	if (idx == -5 || idx == -6) {
		return;
	}

	do {
		s8 steps;

		cur = &D_800DE840[idx];
		curBytes = (u8 *)&cur->unk8;
		curBytes2 = curBytes;

		if (curBytes[9] < 10) {
			s16 next = cur->unk4;

			func_80083DBC_5426C(idx, slot);
			if (entry130->unk4 == 1) {
				func_80083DBC_5426C(entry130->unk6, slot);
				func_80083B14_53FC4(slot);
				return;
			}
			idx = next;
			continue;
		}

		steps = (s8)(0x23 - curBytes[0xA]);
		if (steps > 0) {
			curBytes[6] = (u8)(curBytes[6] - ((curBytes[6] - headBytes[0]) / steps));
			curBytes[7] = (u8)(curBytes[7] - ((curBytes[7] - headBytes[1]) / steps));
			curBytes[8] = (u8)(curBytes[8] - ((curBytes[8] - headBytes[2]) / steps));
		}

		cur->unkA += (func_800038E0_44E0() % 2) + 1;
		cur->unk2 += (func_800038E0_44E0() % 3) + 2;
		curBytes2[0xA]++;
		curBytes2[9] -= 9;

		idx = cur->unk4;
	} while (idx != -5 && idx != -6);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_800894A0_59950.s")
#endif

#ifdef NON_MATCHING
// CURRENT(3538)
void func_80089764_59C14(s32 arg0) {
	s16 idx;
	s16 neg6;
	Unk800DE840* entry;

	idx = D_800DE130[arg0 & 0xFF].unk6;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (void *)((u32)D_100E080 & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << G_TEXTURE_IMAGE_FRAC), (31 << G_TEXTURE_IMAGE_FRAC));

	D_800DE12D = 0x20;
	D_800DE12E = 0x20;
	idx = D_800DE840[idx].unk4;
	neg6 = -6;

	if (idx == -5) {
		return;
	}
	if (idx == neg6) {
		return;
	}

	do {
		entry = &D_800DE840[idx];
		D_800DE118.x = entry->unk8;
		D_800DE124 = &entry->unkE;
		D_800DE12C = entry->unk11;
		D_800DE118.y = entry->unkA;
		D_800DE118.z = entry->unkC;
		D_800DE128 = entry->unk2;
		func_8008D14C_5D5FC();

		idx = entry->unk4;
		if (idx == -5) {
			return;
		}
	} while (idx != neg6);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80089764_59C14.s")
#endif

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

#ifdef NON_MATCHING
// CURRENT(5167)
void func_8008A5F8_5AAA8(u8 arg0) {
	Unk800DE130 *temp_s4;
	Unk800DE840 *sp40;
	Unk800DE840 *temp_s5;
	Unk800DE840 *temp_s0;
	s16 var_s2;
	s16 temp_s1;
	u8 *temp_v0;
	u8 *temp_v1;
	u8 *temp_s0_2;
	u16 temp_v0_2;
	s32 temp_v1_2;
	u8 var_s1;
	u8 temp_s3;

	temp_s3 = arg0;
	temp_s4 = &D_800DE130[temp_s3];
	sp40 = &D_800DE840[temp_s4->unk6];
	temp_s5 = &D_800DE840[sp40->unk4];
	var_s2 = temp_s5->unk4;

	if ((var_s2 != -5) && (var_s2 != -6)) {
		do {
			temp_s0 = &D_800DE840[var_s2];
			temp_s0->unk8 += ((s8 *)temp_s0)[0x12];
			temp_s0->unkC += ((s8 *)temp_s0)[0x14];
			temp_s0->unkA += ((s8 *)temp_s0)[0x13];
			temp_v0 = (u8 *)&temp_s0->unk8;

			if (D_800DE0B6 == 0) {
				temp_v1 = (u8 *)&sp40->unk8;
				if ((s8)temp_v0[3] >= -0x31) {
					temp_v0[3] = (u8)((s8)temp_v0[3] - 1);
				} else {
					temp_v0[3] = 0xCE;
				}

				if ((temp_v1[0xC] == 0) && (temp_s0->unkA <= 0)) {
					func_800899F0_59EA0(temp_s0->unk8, temp_s0->unkC, temp_s0->unk2, temp_v1[6], temp_v1[7], temp_v1[8], temp_v0[9]);
					if ((temp_s4->unk4 < 4) && (((u8 *)&temp_s5->unk8)[5] == 0)) {
						func_800840C4_54574(temp_s3 & 0xFF);
						func_80083B14_53FC4(temp_s3 & 0xFF);
						return;
					}
					temp_s1 = temp_s0->unk4;
					func_80083DBC_5426C(var_s2, temp_s3 & 0xFF);
					var_s2 = temp_s1;
				} else if ((temp_v1[0xC] == 1) && (temp_s0->unkA < -0x1F3)) {
					if ((temp_s4->unk4 < 4) && (((u8 *)&temp_s5->unk8)[5] == 0)) {
						func_800840C4_54574(temp_s3 & 0xFF);
						func_80083B14_53FC4(temp_s3 & 0xFF);
						return;
					}
					temp_s1 = temp_s0->unk4;
					func_80083DBC_5426C(var_s2, temp_s3 & 0xFF);
					var_s2 = temp_s1;
				} else {
					var_s2 = temp_s0->unk4;
				}
			} else {
				var_s2 = temp_s0->unk4;
			}
		} while ((var_s2 != -5) && (var_s2 != -6));
	}

	temp_s0_2 = (u8 *)&temp_s5->unk8;
	if (D_800DE0B6 == 1) {
		if ((func_800038E0_44E0() % 8) == 1) {
			func_8008A094_5A544(temp_s3 & 0xFF);
		}
	} else {
		temp_v0_2 = *(u16 *)&temp_s0_2[6];
		if ((s32)temp_v0_2 > 0) {
			*(u16 *)&temp_s0_2[6] = temp_v0_2 - 1;
			return;
		}

		temp_v1_2 = (func_800038E0_44E0() % 3) + 2;
		if ((temp_v1_2 & 0xFF) > 0) {
			for (var_s1 = 0; var_s1 < (temp_v1_2 & 0xFF); var_s1++) {
				if (temp_s0_2[5] > 0) {
					func_8008A094_5A544(temp_s3 & 0xFF);
					temp_s0_2[5]--;
				}
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008A5F8_5AAA8.s")
#endif

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

#ifdef NON_MATCHING
// CURRENT(2739)
void func_8008B264_5B714(u8 arg0) {
	s16 idx;
	s16 nextIdx;
	Unk800DE130 *entry;
	Unk800DE840 *node;
	Unk8008B264NodeSub *nodeSub;

	entry = &D_800DE130[arg0 & 0xFF];
	idx = D_800DE840[entry->unk6].unk4;

	while ((idx != -5) && (idx != -6)) {
		node = &D_800DE840[idx];
		nodeSub = (Unk8008B264NodeSub *) &node->unk8;

		if (node->unk11 < 0xB) {
			if ((entry->unk4 < 3) && (D_800DE840[entry->unk6].unk11 == 0)) {
				func_800840C4_54574(arg0 & 0xFF);
				func_80083B14_53FC4(arg0 & 0xFF);
				return;
			}

			nextIdx = node->unk4;
			func_80083DBC_5426C(idx, arg0 & 0xFF);
			idx = nextIdx;
		} else {
			if (nodeSub->unkD == 0) {
				nodeSub->unk9 = (nodeSub->unk9 - (func_800038E0_44E0() % 5)) - 5;
				node->unk2 = node->unk2 + (func_800038E0_44E0() % 3) + 3;
			} else {
				nodeSub->unk9 = (nodeSub->unk9 - (func_800038E0_44E0() % 5)) - 5;
				node->unk2 = node->unk2 + (func_800038E0_44E0() % 5) + 5;
			}

			nodeSub->unk0 += nodeSub->unkA;
			nodeSub->unk2 += nodeSub->unkB;
			nodeSub->unk4 += nodeSub->unkC;
			nodeSub->unk6--;
			nodeSub->unk7--;
			nodeSub->unk8--;
			idx = node->unk4;
		}
	}

	if (D_800DE840[entry->unk6].unk11 == 1) {
		func_8008AEC8_5B378(arg0 & 0xFF);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008B264_5B714.s")
#endif

#ifdef NON_MATCHING
// CURRENT(3981)
void func_8008B534_5B9E4(s32 arg0) {
	s16 idx;
	s16 neg6;
	Unk800DE840* entry;

	idx = D_800DE840[D_800DE130[arg0 & 0xFF].unk6].unk4;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineLERP(D_8005BB2C++, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, 1, 0, SHADE, 0, TEXEL0, 0, SHADE, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u8*)((s32)&D_100E080 & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);

	D_800DE12D = 0x20;
	D_800DE12E = 0x20;
	neg6 = -6;

	if (idx == -5) {
		return;
	}
	if (idx == neg6) {
		return;
	}

	do {
		entry = &D_800DE840[idx];
		D_800DE118.x = entry->unk8;
		D_800DE124 = &entry->unkE;
		D_800DE12C = entry->unk11;
		D_800DE118.y = entry->unkA;
		D_800DE118.z = entry->unkC;
		D_800DE128 = entry->unk2;
		func_8008D14C_5D5FC();

		idx = entry->unk4;
		if (idx == -5) {
			return;
		}
	} while (idx != neg6);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008B534_5B9E4.s")
#endif

#ifdef NON_MATCHING
// CURRENT(1910)
u8 func_8008B7BC_5BC6C(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6) {
	u8 effectId;
	u32 stepCountU32;
	s16 deltaX;
	s16 deltaY;
	s16 deltaZ;
	s16 stepX;
	s16 stepY;
	s16 stepZ;
	s16 idx;
	s32 stepCount;
	u8 i;
	Unk800DE840* entry;

	effectId = func_80083A58_53F08(9);
	if (effectId != 0xFB) {
		deltaX = arg3 - arg0;
		deltaY = arg4 - arg1;
		deltaZ = arg5 - arg2;

		stepCountU32 = sqrtf((deltaX * deltaX) + (deltaY * deltaY) + (deltaZ * deltaZ)) / 100.0f;
		stepCount = stepCountU32 & 0xFF;

		if (stepCount < 2) {
			stepCount = 2;
		}
		if (stepCount >= 0x10) {
			stepCount = 0xF;
		}
		if (D_800DE0B6 == 1) {
			stepCount = 1;
		}

		stepX = deltaX / stepCount;
		stepY = deltaY / stepCount;
		stepZ = deltaZ / stepCount;

		if (stepCount >= 0) {
			i = 0;
			while (i <= stepCount) {
				idx = func_80083B7C_5402C(effectId);
				if (idx == -3) {
					func_800840C4_54574(effectId);
					func_80083B14_53FC4(effectId);
					return 0xFB;
				}

				entry = &D_800DE840[idx];
				*(s16*)&entry->unkE = arg6;
				entry->unk8 = arg0 + (stepX * i);
				entry->unkA = arg1 + (stepY * i);
				entry->unkC = arg2 + (stepZ * i);
				i = (i + 1) & 0xFF;
			}
		}
	}

	return effectId;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008B7BC_5BC6C.s")
#endif

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

#ifdef NON_MATCHING
// CURRENT(6709)
void func_8008C8E0_5CD90(void) {
	s16 index;
	s16 x;
	s16 y;
	s16 z;
	s16 *entryData;
	u8 *entryBytes;
	Unk800DE840 *entry;

	index = D_800DE80E;
	gDPPipeSync(D_8005BB2C++);
	if ((index != -6) && (index != -5)) {
		while (1) {
			gDPPipeSync(D_8005BB2C++);

			entry = &D_800DE840[index];
			entryData = &entry->unk8;
			entryBytes = (u8 *)entryData;
			if (D_800DE0B6 == 1) {
				x = entryData[0] - (entryData[5] * 3);
				y = entryData[1] - (entryData[6] * 3);
				z = entryData[2] - (entryData[7] * 3);
			} else {
				x = entryData[0] - (entryData[5] * 2);
				y = entryData[1] - (entryData[6] * 2);
				z = entryData[2] - (entryData[7] * 2);
			}

			D_8005BB34->v.ob[0] = (s16)(s32)(f32)entryData[0];
			D_8005BB34->v.ob[1] = (s16)(s32)(f32)entryData[1];
			D_8005BB34->v.ob[2] = (s16)(s32)(f32)entryData[2];
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0;
			D_8005BB34->v.tc[1] = 0;
			D_8005BB34->v.cn[0] = entryBytes[6];
			D_8005BB34->v.cn[1] = entryBytes[7];
			D_8005BB34->v.cn[2] = entryBytes[8];
			D_8005BB34->v.cn[3] = 0xFF;

			D_8005BB34++;
			D_8005BB34->v.ob[0] = (s16)(s32)(f32)x;
			D_8005BB34->v.ob[1] = (s16)(s32)(f32)y;
			D_8005BB34->v.ob[2] = (s16)(s32)(f32)z;
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = 0x800;
			D_8005BB34->v.tc[1] = 0x800;
			D_8005BB34->v.cn[0] = entryBytes[6];
			D_8005BB34->v.cn[1] = entryBytes[7];
			D_8005BB34->v.cn[2] = entryBytes[8];
			D_8005BB34->v.cn[3] = 0x19;

			D_8005BB34++;
			gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 2) & 0x1FFFFFFF), 2, 0);
			if (D_800DE0B6 == 1) {
				gImmp1(D_8005BB2C++, G_LINE3D, 0x201);
			} else {
				gImmp1(D_8005BB2C++, G_LINE3D, 0x205);
			}

			index = entry->unk4;
			if ((index == -6) || (index == -5)) {
				break;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008C8E0_5CD90.s")
#endif

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

void func_8008CDC8_5D278(void) {
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x + D_800DE128);
	D_8005BB34->v.ob[1] = (s16)(s32)D_800DE118.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z + D_800DE128);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x - D_800DE128);
	D_8005BB34->v.ob[1] = (s16)(s32)D_800DE118.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z + D_800DE128);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = D_800DE12D << 6;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x - D_800DE128);
	D_8005BB34->v.ob[1] = (s16)(s32)D_800DE118.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z - D_800DE128);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = D_800DE12D << 6;
	D_8005BB34->v.tc[1] = D_800DE12E << 6;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x + D_800DE128);
	D_8005BB34->v.ob[1] = (s16)(s32)D_800DE118.y;
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z - D_800DE128);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = D_800DE12E << 6;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}

#ifdef NON_MATCHING
// CURRENT(82)
void func_8008D14C_5D5FC(void) {
	f32 temp_f0;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f16;
	f32 temp_f18;
	f32 temp_f8;

	temp_f0 = D_800DE128 * D_800DE0C0[0];
	temp_f12 = D_800DE128 * D_800DE0C0[1];
	temp_f14 = D_800DE128 * D_800DE0C0[2];
	temp_f16 = D_800DE128 * D_800DE0C0[3];
	temp_f18 = D_800DE128 * D_800DE0C0[4];
	temp_f8 = D_800DE128 * D_800DE0C0[5];

	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x + temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800DE118.y + temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z + temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x + temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800DE118.y + temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z + temp_f8);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = D_800DE12D << 6;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x - temp_f0);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800DE118.y - temp_f12);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z - temp_f14);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = D_800DE12D << 6;
	D_8005BB34->v.tc[1] = D_800DE12E << 6;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16)(s32)(D_800DE118.x - temp_f16);
	D_8005BB34->v.ob[1] = (s16)(s32)(D_800DE118.y - temp_f18);
	D_8005BB34->v.ob[2] = (s16)(s32)(D_800DE118.z - temp_f8);
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = D_800DE12E << 6;
	D_8005BB34->v.cn[0] = D_800DE124[0];
	D_8005BB34->v.cn[1] = D_800DE124[1];
	D_8005BB34->v.cn[2] = D_800DE124[2];
	D_8005BB34->v.cn[3] = D_800DE12C;

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 4) & 0x1FFFFFFF), 4, 0);
	gSP2Triangles(D_8005BB2C++, 0, 1, 3, 0, 3, 1, 2, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008D14C_5D5FC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008D510_5D9C0.s")

#ifdef NON_MATCHING
// CURRENT(2095)
s32 func_8008D98C_5DE3C(Gfx **arg0) {
	s32 i;

	func_80088E18_592C8();

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_TF_BILERP | G_TL_LOD | G_TD_SHARPEN | G_CYC_1CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK | G_FOG | G_LIGHTING);
	gDPPipeSync(D_8005BB2C++);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPPipeSync(D_8005BB2C++);

	func_8008E158_5E608();
	func_8008FA60_5FF10();

	for (i = 0; i < 0x96; i = (i + 1) & 0xFF) {
		u8 entryType = D_800DE130[i].unk0;

		if (entryType != 0xFA) {
			if (entryType < 0xB) {
				switch (entryType) {
			case 0:
				func_800847E4_54C94((u8)i);
				break;

			case 1:
				func_80089764_59C14((u8)i);
				break;

			case 2:
				func_80089B38_59FE8();
				break;

			case 3:
				func_8008A928_5ADD8((u8)i);
				break;

			case 4:
				func_8008B534_5B9E4((u8)i);
				break;

			case 5:
				func_8008BC00_5C0B0((u8)i);
				break;

			case 6:
			case 7:
			case 8:
			case 9:
			case 10:
				break;

			default:
				break;
				}
			}
		}
	}

	return func_800878A4_57D54();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008D98C_5DE3C.s")
#endif

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

#ifdef NON_MATCHING
// CURRENT(450)
void func_8008DFA0_5E450(void) {
	s16 life;
	s32 var_s0;
	u8 temp_a0;
	u8 temp_t9;
	u8 temp_v1;
	s32 var_s2;
	s32 var_v1;
	Unk800E1980 *entry;
	u8 *entryBytes;

	var_s2 = D_800E1D68;
	var_s0 = 0;
	var_v1 = var_s2;
	if (var_s2 > 0) {
		do {
			entry = &D_800E1980[var_s0];
			life = entry->unkA;
			if (life != 0) {
				entryBytes = (u8 *)entry;
				temp_v1 = entryBytes[0xF];
				if (temp_v1 == 0) {
					temp_a0 = entry->unkC;
					temp_v1 = temp_a0;
					if (((temp_a0 == 0xD) && (entryBytes[0xE] < 7)) ||
						((temp_v1 == 0xA) && (entryBytes[0xD] < (entry->unk12 * -4))) ||
						((temp_v1 != 0xA) && (temp_v1 != 0xD) && (entry->unk12 < entryBytes[0xD]))) {
						temp_t9 = entryBytes[0xE] + 1;
						entryBytes[0xD] = entryBytes[0xD] - entry->unk12;
						entryBytes[0xE] = temp_t9;
						if ((temp_t9 & 0xFF) >= D_800AA694[temp_a0 * 8]) {
							entryBytes[0xE] = 0;
						}
						entry->unkA += entry->unk10;
						entry->unk2 += entry->unk11;
					} else {
						if (temp_v1 == 0xA) {
							func_8008DC34_5E0E4(entry->unk0, entry->unk2, entry->unk4, 0xB, life);
						}
						func_8008DF40_5E3F0((u8)var_s0);
					}
				} else {
					entryBytes[0xF] = temp_v1 - 1;
				}

				var_v1 = (var_s2 - 1) & 0xFF;
				var_s2 = var_v1;
			}
			var_s0 = (var_s0 + 1) & 0xFF;
		} while (var_v1 > 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008DFA0_5E450.s")
#endif

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

#ifdef NON_MATCHING
// CURRENT(654)
s16 func_8008EB20_5EFD0(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, s32 arg5, u8 arg6) {
	s32 pad0;
	s32 pad1;
	s16 ret;
	u8 slot;
	u8 i;

	func_800038E0_44E0();

	if (arg3 < 0x1E) {
		arg3 = 0x1E;
	}
	if (arg3 >= 0x3E9) {
		arg3 = 0x3E8;
	}

	ret = func_80086C58_57108(arg0, arg1, arg2, arg3, arg5, (u8)arg6);
	if (ret != -3) {
		if (arg3 >= 0x51) {
			func_8008EAB0_5EF60(arg0, arg1, arg2, (s8)(((arg3 / 10) + 0x14) & 0xFF), 6);
		}

		func_8008DE44_5E2F4(func_8008DC34_5E0E4(arg0, arg1, arg2, 6, arg3 * 8), 0xB4);

		slot = func_8008DC34_5E0E4(arg0, arg1, arg2, 6, arg3 * 6);
		func_8008DE44_5E2F4(slot, 0x6E);
		func_8008DF08_5E3B8(slot, 1);

		i = 0;
		if (arg4 > 0) {
			while (1) {
				i++;
				if (i >= arg4) {
					break;
				}
			}
		}

		if (arg3 < 0x96) {
			func_8008E9DC_5EE8C(arg0, arg1, arg2, arg3, arg3 / 16, 1, 0x1E, 0x96, 0x32, 0x32, 0x32);
		} else {
			func_8008E9DC_5EE8C(arg0, arg1, arg2, arg3, arg3 / 16, 1, 0x3C, 0x96, 0x32, 0x32, 0x32);
		}
	}

	return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008EB20_5EFD0.s")
#endif

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

void func_8008EEC4_5F374(void) {
	s32 var_s1;
	f32 sp60[3];

	if (D_800DE0B6 == 1) {
		var_s1 = 0;
		do {
			sp60[0] = (f32) ((func_800038E0_44E0() % 1000) - 1000);
			sp60[1] = (f32) ((func_800038E0_44E0() % 1000) - 500);
			sp60[2] = (f32) ((func_800038E0_44E0() % 1000) - 1000);
			func_800837B4_53C64(sp60, sp60);
			func_800838B8_53D68(80.0f, sp60, sp60);
			func_80085CEC_5619C((s16) (s32) sp60[0], (s16) (s32) sp60[1], (s16) (s32) sp60[2], -1, 0, 0, 0x46, 0x19, 3,
							0x6E, 0xFF, 0xFF, 0xFF, 3);
			var_s1 = (var_s1 + 1) & 0xFF;
		} while (var_s1 < 3);

		sp60[0] = (f32) ((func_800038E0_44E0() % 1000) - 500);
		sp60[1] = (f32) ((func_800038E0_44E0() % 1000) - 500);
		sp60[2] = (f32) ((func_800038E0_44E0() % 1000) - 500);
		func_800837B4_53C64(sp60, sp60);
		func_800838B8_53D68(340.0f, sp60, sp60);
		func_8008DC34_5E0E4((s16) (s32) sp60[0], (s16) (s32) sp60[1], (s16) (s32) sp60[2], 0xD,
						  (func_800038E0_44E0() % 0xF) + 0xF);
	}
}

#ifdef NON_MATCHING
// CURRENT(905)
void func_8008F1E0_5F690(void) {
	f32 sp90[3];
	f32 temp_f20;
	f64 temp_f22;
	f64 temp_f24;
	s16 temp_a0;
	s16 temp_a1;
	s32 var_s2;
	s32 var_s3;
	s32 var_s4;
	s32 var_s5;
	s32 temp_hi;
	s32 var_s1;

	if (D_800DE0B7 == 1) {
		var_s1 = 0;
		if (D_800DE0BB > 0) {
			D_800DE0BB -= 2;
		}

		var_s5 = 0x10E;
		var_s4 = 0x5A;
		var_s3 = 0xB4;
		var_s2 = 0x168;
		temp_f24 = 180.0;
		temp_f22 = 3.14159265358979323846;

		do {
			sp90[2] = 0.0f;
			temp_hi = func_800038E0_44E0() % var_s2;
			temp_a1 = temp_hi;
			temp_a0 = temp_hi;

			if (temp_a0 == 0) {
				sp90[1] = 500.0f;
				sp90[0] = 0.0f;
			} else if (temp_a0 < var_s4) {
				temp_f20 = (f32)(((f64)(f32)temp_a1 * temp_f22) / temp_f24);
				sp90[1] = cosf(temp_f20) * 500.0f;
				sp90[0] = sinf(temp_f20) * 500.0f;
			} else if (temp_a0 == var_s4) {
				sp90[1] = 0.0f;
				sp90[0] = 500.0f;
			} else if (temp_a0 < var_s3) {
				temp_f20 = (f32)(((f64)(f32)(var_s3 - temp_a1) * temp_f22) / temp_f24);
				sp90[1] = cosf(temp_f20) * -500.0f;
				sp90[0] = sinf(temp_f20) * 500.0f;
			} else if (temp_a0 == var_s3) {
				sp90[1] = -500.0f;
				sp90[0] = 0.0f;
			} else if (temp_a0 < var_s5) {
				temp_f20 = (f32)(((f64)(f32)(temp_a1 - var_s3) * temp_f22) / temp_f24);
				sp90[1] = cosf(temp_f20) * -500.0f;
				sp90[0] = sinf(temp_f20) * -500.0f;
			} else if (temp_a0 == var_s5) {
				sp90[1] = 0.0f;
				sp90[0] = -500.0f;
			} else if (temp_a0 < var_s2) {
				temp_f20 = (f32)(((f64)(f32)(var_s2 - temp_a1) * temp_f22) / temp_f24);
				sp90[1] = cosf(temp_f20) * 500.0f;
				sp90[0] = sinf(temp_f20) * -500.0f;
			}

			func_800837B4_53C64(sp90, sp90);
			func_800838B8_53D68(250.0f, sp90, sp90);
			func_80085CEC_5619C((s16)(s32)sp90[0], (s16)(s32)sp90[1], (s16)(s32)sp90[2], 0, 0, -1, 0x46, 0x1E, 3,
							0x6E, 0xFF, 0xFF, 0xFF, 4);

			var_s1 = (var_s1 + 1) & 0xFF;
		} while (var_s1 < 3);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008F1E0_5F690.s")
#endif

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

void func_8008F704_5FBB4(u8 arg0) {
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPPipeSync(D_8005BB2C++);

	D_8005BB34->v.ob[0] = (s16) (s32) D_800AA848[arg0][0];
	D_8005BB34->v.ob[1] = (s16) (s32) D_800AA848[arg0][1];
	D_8005BB34->v.ob[2] = (s16) (s32) D_800AA848[arg0][2];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800AA7D8[arg0][0];
	D_8005BB34->v.cn[1] = D_800AA7D8[arg0][1];
	D_8005BB34->v.cn[2] = D_800AA7D8[arg0][2];
	D_8005BB34->v.cn[3] = D_800AA7D8[arg0][3];

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16) (s32) D_800AA848[arg0][3];
	D_8005BB34->v.ob[1] = (s16) (s32) D_800AA848[arg0][4];
	D_8005BB34->v.ob[2] = (s16) (s32) D_800AA848[arg0][5];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800AA7D8[arg0][4];
	D_8005BB34->v.cn[1] = D_800AA7D8[arg0][5];
	D_8005BB34->v.cn[2] = D_800AA7D8[arg0][6];
	D_8005BB34->v.cn[3] = D_800AA7D8[arg0][7];

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16) (s32) D_800AA848[arg0][6];
	D_8005BB34->v.ob[1] = (s16) (s32) D_800AA848[arg0][7];
	D_8005BB34->v.ob[2] = (s16) (s32) D_800AA848[arg0][8];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800AA7D8[arg0][8];
	D_8005BB34->v.cn[1] = D_800AA7D8[arg0][9];
	D_8005BB34->v.cn[2] = D_800AA7D8[arg0][10];
	D_8005BB34->v.cn[3] = D_800AA7D8[arg0][11];

	D_8005BB34++;
	D_8005BB34->v.ob[0] = (s16) (s32) D_800AA848[arg0][9];
	D_8005BB34->v.ob[1] = (s16) (s32) D_800AA848[arg0][10];
	D_8005BB34->v.ob[2] = (s16) (s32) D_800AA848[arg0][11];
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = D_800AA7D8[arg0][12];
	D_8005BB34->v.cn[1] = D_800AA7D8[arg0][13];
	D_8005BB34->v.cn[2] = D_800AA7D8[arg0][14];
	D_8005BB34->v.cn[3] = D_800AA7D8[arg0][15];

	D_8005BB34++;
	gSPVertex(D_8005BB2C++, (Vtx *)(((u32) (D_8005BB34 - 4)) & 0x1FFFFFFF), 4, 0);
	gSP1Quadrangle(D_8005BB2C++, 0, 1, 2, 3, 0);
	gDPPipeSync(D_8005BB2C++);
}

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

#ifdef NON_MATCHING
// CURRENT(1070)
void func_8008FBD4_60084(void) {
	u8 pad;
	u8 sp46;
	u8 sp45;
	u8 sp44;

	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u8 *)((s32)&D_100DC00 & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 255, 1024);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);
	gDPPipeSync(D_8005BB2C++);

	D_800DE12D = 0x20;
	D_800DE12E = 0x20;
	D_800DE118.x = D_800DE0B0.unk0;
	sp44 = 0x19;
	D_800DE118.y = D_800DE0B0.unk2;
	sp45 = 0xFF;
	sp46 = 0x28;
	pad = 0;
	D_800DE118.z = D_800DE0B0.unk4;
	D_800DE124 = &sp44;
	D_800DE12C = 0xF0;
	D_800DE128 = 450.0f;
	func_8008D14C_5D5FC();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_8008FBD4_60084.s")
#endif

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

#ifdef NON_MATCHING
// CURRENT(1273)
void func_80090648_60AF8(void) {
	s16 i;
	u16 perspNorm;
	FrontendCamState* cam;
	FrontendCamState** camPtr;
	Gfx* dl;

	gDPPipeSync(D_8005BB2C++);
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xB4000000;
	dl->words.w1 = (u32)&D_3F320;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0xAF0007FF;
	dl->words.w1 = (u32)&D_30130;

	func_80011E14_12A14(0);
	func_80004CC8_58C8();
	func_80004D38_5938();

	camPtr = (FrontendCamState**)&D_800D7A18;
	cam = *camPtr;
	guPerspective((Mtx*)D_8005BB38, &perspNorm, (f32)cam->unk3A, D_800D7974, D_800D8510, D_800AED68_7F218, 1.0f);
	gSPPerspNormalize(D_8005BB2C++, perspNorm);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

	D_8005BB38 += 0x40;
	cam = *camPtr;
	guLookAt((Mtx*)D_8005BB38,
			 cam->unk10.x,
			 cam->unk10.y,
			 cam->unk10.z,
			 cam->unk1C.x,
			 cam->unk1C.y,
			 cam->unk1C.z,
			 cam->unk28.x,
			 cam->unk28.y,
			 cam->unk28.z);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
	D_8005BB38 += 0x40;
	gSPMatrix(D_8005BB2C++, (u32)&D_800AA648_7AAF8, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, -1);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_SHADING_SMOOTH);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_LINE, G_RM_AA_ZB_XLU_LINE2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPPipeSync(D_8005BB2C++);

	for (i = 0; i < 0x96; i++) {
		if (D_800DE130[i].unk0 == 1) {
			func_80086528_569D8((u8)i);
		} else if (D_800DE130[i].unk0 == 0xA) {
			func_8008C8E0_5CD90();
		}
	}

	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/52690/func_80090648_60AF8.s")
#endif
