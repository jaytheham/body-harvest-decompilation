#include <ultra64.h>
#include "common.h"

s32 D_8013D940_14C8F0 = 0;
s32 D_8013D944_14C8F4 = 0;
s32 D_8013D948_14C8F8 = 0;
s32 D_8013D94C_14C8FC = 0xFF000000;
s32 D_8013D950_14C900 = 0xFF000000;
s32 D_8013D954_14C904 = 0xFF000000;
Ambient D_8013D958_14C908 = { { { 0x20, 0x20, 0x20 }, 0x00, { 0x20, 0x20, 0x20 }, 0x00 } };
Light D_8013D960_14C910 = { { { 0xFF, 0xFF, 0xFF }, 0x00, { 0xFF, 0xFF, 0xFF }, 0x00, { 0x32, 0x66, 0xE7 }, 0x00 } };
Ambient D_8013D970_14C920 = { { { 0x20, 0x20, 0x20 }, 0x00, { 0x20, 0x20, 0x20 }, 0x00 } };
Light D_8013D978_14C928 = { { { 0x80, 0x80, 0xC0 }, 0x00, { 0x80, 0x80, 0xC0 }, 0x00, { 0x32, 0x66, 0xE7 }, 0x00 } };
u8 D_8013D988_14C938[0x20] = {
	0x32, 0x64, 0xFF, 0x64, 0xFA, 0xFF, 0x63, 0x48,
	0x2F, 0x78, 0x6F, 0x7A, 0xA5, 0xA5, 0xC0, 0x58,
	0x2E, 0x65, 0x05, 0x50, 0xAC, 0x8E, 0xAD, 0xFC,
	0xAF, 0x4A, 0x76, 0xD8, 0xD3, 0x00, 0x00, 0x00,
};
s32 D_8013D9A8_14C958 = 0;
s8 D_8013D9AC_14C95C = 0;

s8 D_8013D9B0_14C960 = 0;
s32 D_8013D9B4_14C964 = 0;
s32 D_pad14C968 = 0;
s32 D_pad14C96C = 0;
s16 D_8013D9C0_14C970[2] = { 0, 0 };
s16 D_8013D9C4_14C974[2] = { 0, 0 };
s32 D_8013D9C8_14C978 = 0;
s32 D_8013D9CC_14C97C = 0;
f32 D_8013D9D0_14C980[15] = {
	0.35f, 0.35f, 0.35f, 0.25f, 0.25f, 0.25f,
	0.35f, 0.35f, 0.35f, 0.35f, 0.35f, 0.35f,
	0.35f, 0.35f, 0.35f,
};
f32 D_8013DA0C_14C9BC[15] = {
	1.0f, 1.0f, 1.0f, 0.8f, 0.8f, 0.8f,
	1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f,
	1.0f, 1.0f, 1.0f,
};
f32 D_8013DA48_14C9F8[15] = {
	0.13f, 0.13f, 0.13f, 0.1f, 0.1f, 0.1f,
	0.13f, 0.13f, 0.13f, 0.13f, 0.13f, 0.13f,
	0.13f, 0.13f, 0.13f,
};
f32 D_8013DA84_14CA34[15] = {
	0.5f, 0.5f, 0.75f,
	0.4f, 0.4f, 0.65f,
	0.5f, 0.5f, 0.75f,
	0.5f, 0.5f, 0.75f,
	0.5f, 0.5f, 0.75f,
};
f32 D_8013DAC0_14CA70[3] = { 0.39f, 0.89f, -0.3f };
s16 D_8013DACC_14CA7C[2] = { 248, 0 };
s16 D_8013DAD0_14CA80[2] = { 248, 0 };
s16 D_8013DAD4_14CA84[2] = { 8, 0 };
s16 D_8013DAD8_14CA88[2] = { 8, 0 };
s16 D_8013DADC_14CA8C[2] = { 2048, 0 };
u8 D_8013DAE0_14CA90 = 0;
u8 D_8013DAE4_14CA94 = 0;
s32 D_8013DAE8_14CA98 = (s32)0xFF5AFF00U;
s32 D_8013DAEC_14CA9C = (s32)0xFF5A5000U;
s32 D_8013DAF0_14CAA0 = (s32)0x50FF5000U;
s32 D_8013DAF4_14CAA4 = (s32)0xFF9BFF00U;
s32 D_8013DAF8_14CAA8 = (s32)0xFFE6C800U;
s16 D_8013DAFC_14CAAC[2] = { -1, 0 };
u8 D_8013DB00_14CAB0 = 0;
s32 D_8013DB04_14CAB4 = 0;
s32 D_8013DB08_14CAB8 = 0;

s32 func_800B0A10_BF9C0(s32 arg0, s32 arg1, s16 arg2, s16 arg3) {
	return (s32)(((arg3 - arg2) * arg0) + (arg1 * arg2)) / arg3;
}

// CURRENT(180)
#ifdef NON_MATCHING
s32 func_800B0A88_BFA38(s32 arg0, s32 arg1) {
	u16 *v1;
	s32 a0;
	s32 a1;
	s32 a2;
	s32 a3;
	s32 v0;
	s32 t0;

	v1 = D_80052A94[arg1].unk0 + arg0;
	a2 = v1[0] & 0x3F;
	a3 = v1[1] & 0x3F;
	v0 = a2 - a3;
	t0 = -v0;
	if (t0 < v0) {
		a0 = v0;
	} else {
		a0 = t0;
	}
	if (a0 >= 0xA) {
		return 1;
	}

	a1 = v1[0x101] & 0x3F;
	v0 = a3 - a1;
	t0 = -v0;
	if (t0 < v0) {
		a0 = v0;
	} else {
		a0 = t0;
	}
	if (a0 >= 0xA) {
		return 1;
	}

	a3 = v1[0x100] & 0x3F;
	v0 = a1 - a3;
	t0 = -v0;
	if (t0 < v0) {
		a0 = v0;
	} else {
		a0 = t0;
	}
	if (a0 >= 0xA) {
		return 1;
	}

	v0 = a3 - a2;
	t0 = -v0;
	if (t0 < v0) {
		a0 = v0;
	} else {
		a0 = t0;
	}
	if (a0 >= 0xA) {
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B0A88_BFA38.s")
#endif

void func_800B0B94_BFB44(void) {
	u8 *s2;
	u8 *v0;
	s32 s0;
	s32 s1;
	s32 s3;
	s32 s4;

	s2 = D_8014FDD0;
	s3 = 0x100;
	s4 = 0;
	do {
		s0 = 0;
		v0 = s2;
		do {
			s0++;
			v0++;
			v0[-1] = 0;
		} while (s0 < 0x20);
		s0 = 0;
		s1 = s4 - 0x80;
		do {
			if (func_800B0A88_BFA38(s0 - 0x80, s1) != 0) {
				s2[s0 >> 3] |= 1 << (s0 & 7);
			}
			s0++;
		} while (s0 != s3);
		s4++;
		s2 += 0x20;
	} while (s4 != s3);
}

s32 func_800B0C4C_BFBFC(s32 arg0, s32 arg1) {
	arg0 += 0x80;
	arg1 += 0x80;
	return D_8014FDD0[(arg1 << 5) + (arg0 >> 3)] & (1 << (arg0 & 7));
}

void func_800B0C80_BFC30(void) {
	D_8014FD30 = *(Unk8014FD30Type *)(D_80147C30_156BE0 + currentLevel * 0x90 + D_80047F94 * 0x18 - 0x90);
}

// CURRENT(415)
#ifdef NON_MATCHING
s32 func_800B0D10_BFCC0(s32 arg0, s32 arg1, s32 arg2) {
	Unk8014FD30Type *a2;
	s32 v0, v1, a0, a3;
	s32 a1;

	if (D_80052ACA == 2) {
		return 0;
	}
	v0 = arg0 - arg2;
	if (v0 < D_8014FD30.unk0
		|| (v1 = arg0 + arg2, D_8014FD30.unk4 < v1)
		|| (a0 = arg1 - arg2, a0 < D_8014FD30.unk2)
		|| (a3 = arg1 + arg2, D_8014FD30.unk6 < a3)) {
		return 1;
	}
	a1 = 0;
	a2 = &D_8014FD30;
	do {
		if (a2->unkC == a2->unk8) {
			break;
		}
		if (a2->unk8 < v1 && v0 < a2->unkC && a2->unkA < a3 && a0 < a2->unkE) {
			return a1 + 2;
		}
		a1++;
		a2 = (Unk8014FD30Type *)((u8 *)a2 + 8);
	} while (a1 != 2);
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B0D10_BFCC0.s")
#endif

s32 func_800B0DF4_BFDA4(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s32 extW, extH;
	s32 dx, dz;
	s32 overlapX;

	if (arg3 == 1) {
		if (arg0 - arg2 < D_8014FD30.unk0) {
			return 0x4000;
		}
		if (D_8014FD30.unk4 < arg0 + arg2) {
			return -0x4000;
		}
		if (arg1 - arg2 < D_8014FD30.unk2) {
			return -0x8000;
		}
		if (D_8014FD30.unk6 < arg1 + arg2) {
			return 0;
		}
	}

	extW = *((s16 *)((u8 *)&D_8014FD30 + arg3 * 8) - 2) - *((s16 *)((u8 *)&D_8014FD30 + arg3 * 8) - 4);
	extH = *((s16 *)((u8 *)&D_8014FD30 + arg3 * 8) - 1) - *((s16 *)((u8 *)&D_8014FD30 + arg3 * 8) - 3);
	extW >>= 1;
	extH >>= 1;
	extW += arg2;
	extH += arg2;
	dx = (arg0 + arg2) - *((s16 *)((u8 *)&D_8014FD30 + arg3 * 8) - 4) - extW;
	dz = (arg1 + arg2) - *((s16 *)((u8 *)&D_8014FD30 + arg3 * 8) - 3) - extH;

	if (dx < 0) {
		overlapX = dx + extW;
	} else {
		overlapX = extW - dx;
	}

	if (dz < 0) {
		extW = dz + extH;
	} else {
		extW = extH - dz;
	}

	if (overlapX < extW) {
		if (dx < 0) {
			return -0x4000;
		}
		return 0x4000;
	}
	if (dz < 0) {
		return 0;
	}
	return -0x8000;
}

// CURRENT(605)
#ifdef NON_MATCHING
s16 func_800B0F20_BFED0(s32 arg0, s32 arg1) {
	Unk8014FD30Type *a2;
	Unk8014FD30Type *a3;
	Unk8014FD30Type *t1;
	s32 cl;
	s32 v1;
	s32 t8;
	s32 t0;
	s16 v0;
	s16 t2;

	cl = currentLevel - 1;
	a2 = (Unk8014FD30Type *)((u8 *)&D_80147C30_156BE0 + cl * 0x90);
	for (v1 = 0, a3 = a2; v1 != 6; v1++, a3 = (Unk8014FD30Type *)((u8 *)a3 + 0x18)) {
		if (arg0 < a3->unk0 || a3->unk4 < arg0 || a3->unk2 >= arg1) {
			continue;
		}

		t8 = (v1 << 2) - v1;
		if (arg1 >= a3->unk6) {
			continue;
		}

		t0 = 0;
		t1 = (Unk8014FD30Type *)((u8 *)a2 + (t8 << 3));
		for (;;) {
			v0 = t1->unk8;
			t2 = t1->unkC;
			if (v0 == t2) {
				return (u8)v1;
			}
			if ((arg0 < v0) || (t2 < arg0) || (t1->unkA >= arg1) || (arg1 >= t1->unkE)) {
				if (t0 == 8) {
					return (u8)v1;
				}
				t0 += 8;
				t1 = (Unk8014FD30Type *)((u8 *)t1 + 8);
				if (t0 != 0x10) {
					continue;
				}
			}
			break;
		}
	}
	return 0xFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B0F20_BFED0.s")
#endif

// ClipLineToShieldWalls
// CURRENT(4946)
#ifdef NON_MATCHING
s32 func_800B1028_BFFD8(s16 arg0, s16 arg1, s16 arg2, s32 *arg3, s32 *arg4, s32 *arg5, u8 *arg6) {
	Unk8014FD30Type *var_v1;
	f32 temp_f0;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f2;
	s16 temp_a0;
	s16 temp_a1;
	s16 temp_t7;
	s32 temp_v0;
	s32 temp_v0_2;
	s32 temp_v0_3;
	s32 temp_v0_4;
	s32 var_a2;
	s32 var_a3;
	s32 var_t0;
	s32 var_t1;
	s32 var_t2;
	s32 var_t3;

	var_t0 = *arg3 - arg0;
	temp_t7 = arg1;
	var_t2 = *arg4 - temp_t7;
	var_t1 = *arg5 - arg2;
	*arg6 = 0;
	temp_v0 = *arg3;
	var_t3 = 0;
	if (D_8014FD30.unk4 < temp_v0) {
		if (var_t0 == 0) {
			goto block_43;
		}
		temp_f14 = var_t0;
		*arg3 = D_8014FD30.unk4;
		var_t3 = 1;
		temp_f2 = (D_8014FD30.unk4 - arg0) / temp_f14;
		temp_f0 = var_t2 * temp_f2;
		temp_f12 = var_t1 * temp_f2;
		*arg4 = temp_t7 + temp_f0;
		var_t0 = temp_f14 * temp_f2;
		var_t2 = temp_f0;
		*arg5 = arg2 + temp_f12;
		*arg6 = 1;
		var_t1 = temp_f12;
		goto block_6;
	}
	if (temp_v0 < D_8014FD30.unk0) {
		if (var_t0 == 0) {
			goto block_43;
		}
		temp_f14 = var_t0;
		*arg3 = D_8014FD30.unk0;
		var_t3 = 1;
		temp_f2 = (D_8014FD30.unk0 - arg0) / temp_f14;
		temp_f0 = var_t2 * temp_f2;
		temp_f12 = var_t1 * temp_f2;
		*arg4 = temp_t7 + temp_f0;
		var_t0 = temp_f14 * temp_f2;
		*arg5 = arg2 + temp_f12;
		var_t2 = temp_f0;
		*arg6 = 1;
		var_t1 = temp_f12;
	}

block_6:
	temp_v0_2 = *arg5;
	if (D_8014FD30.unk6 < temp_v0_2) {
		if (var_t1 == 0) {
			goto block_43;
		}
		temp_f14 = var_t1;
		var_t3 = 1;
		temp_f2 = (D_8014FD30.unk6 - arg2) / temp_f14;
		temp_f12 = var_t0 * temp_f2;
		temp_f0 = var_t2 * temp_f2;
		*arg3 = arg0 + temp_f12;
		var_t0 = temp_f12;
		*arg4 = temp_t7 + temp_f0;
		var_t2 = temp_f0;
		var_t1 = temp_f14 * temp_f2;
		*arg5 = D_8014FD30.unk6;
		goto block_12;
	}
	if (temp_v0_2 < D_8014FD30.unk2) {
		if (var_t1 == 0) {
			goto block_43;
		}
		temp_f14 = var_t1;
		var_t3 = 1;
		temp_f2 = (D_8014FD30.unk2 - arg2) / temp_f14;
		temp_f12 = var_t0 * temp_f2;
		temp_f0 = var_t2 * temp_f2;
		*arg3 = arg0 + temp_f12;
		var_t0 = temp_f12;
		*arg4 = temp_t7 + temp_f0;
		var_t2 = temp_f0;
		*arg5 = D_8014FD30.unk2;
		var_t1 = temp_f14 * temp_f2;

block_12:
		*arg6 = 0;
	}

	var_v1 = &D_8014FD30;
	var_a3 = 0;
	var_a2 = 0;
loop_14:
	temp_a0 = var_v1->unk8;
	temp_a1 = var_v1->unkC;
	if (temp_a0 == temp_a1) {
		goto block_42;
	}
	if ((temp_a0 < arg0) && (arg0 < temp_a1) && (var_v1->unkA < arg2) && (arg2 < var_v1->unkE)) {
		*arg3 = arg0;
		*arg4 = temp_t7;
		*arg5 = arg2;
		*arg6 = 0xFF;
		return 1;
	}

	if (var_t0 != 0) {
		temp_v0_3 = *arg3;
		temp_f14 = var_t0;
		if (arg0 < temp_v0_3) {
			var_a2 = temp_a0;
		} else if (temp_v0_3 < arg0) {
			var_a2 = temp_a1;
		}
		temp_f0 = (var_a2 - arg0) / temp_f14;
		if ((temp_f0 > 0.0f) && (temp_f0 < 1.0f)) {
			temp_f2 = temp_f0;
			temp_f12 = var_t1 * temp_f0;
			temp_v0_4 = arg2 + temp_f12;
			var_a3 = temp_v0_4;
			if ((var_v1->unkA < temp_v0_4) && (temp_v0_4 < var_v1->unkE)) {
				*arg3 = var_a2;
				var_t3 = 1;
				temp_f0 = var_t2 * temp_f0;
				*arg4 = temp_t7 + temp_f0;
				*arg5 = temp_v0_4;
				var_t0 = temp_f14 * temp_f2;
				var_t2 = temp_f0;
				*arg6 = 1;
				var_t1 = temp_f12;
			}
		}
	}

	if (var_t1 != 0) {
		temp_v0_3 = *arg5;
		temp_f14 = var_t1;
		if (arg2 < temp_v0_3) {
			var_a3 = var_v1->unkA;
		} else if (temp_v0_3 < arg2) {
			var_a3 = var_v1->unkE;
		}
		temp_f0 = (var_a3 - arg2) / temp_f14;
		if ((temp_f0 > 0.0f) && (temp_f0 < 1.0f)) {
			temp_f2 = temp_f0;
			temp_f12 = var_t0 * temp_f0;
			temp_v0_4 = arg0 + temp_f12;
			var_a2 = temp_v0_4;
			if ((var_v1->unk8 < temp_v0_4) && (temp_v0_4 < var_v1->unkC)) {
				*arg3 = temp_v0_4;
				var_t3 = 1;
				temp_f0 = var_t2 * temp_f0;
				var_t0 = temp_f12;
				*arg4 = temp_t7 + temp_f0;
				var_t2 = temp_f0;
				*arg5 = var_a3;
				*arg6 = 0;
				var_t1 = temp_f14 * temp_f2;
			}
		}
	}

	var_v1 = (Unk8014FD30Type *) ((u8 *) var_v1 + 8);
	if ((u8 *) var_v1 != ((u8 *) &D_8014FD30 + 0x10)) {
		goto loop_14;
	}
block_42:
	return var_t3;

block_43:
	osSyncPrintf(&D_80142D10_151CC0);
	*arg3 = arg0;
	*arg4 = temp_t7;
	*arg5 = arg2;
	*arg6 = 0;
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B1028_BFFD8.s")
#endif

// CURRENT(3620)
#ifdef NON_MATCHING
void func_800B165C_C060C(s32 arg0) {
	Unk8014FD30Type *wall;
	s32 z;
	s32 maxZ;

	wall = (Unk8014FD30Type *)(D_80147C30_156BE0 + (currentLevel * 0x90) + (arg0 * 0x18) - 0x90);
	z = wall->unk2 >> 10;
	maxZ = wall->unk6 >> 10;

	if (z < maxZ) {
		do {
			s32 minX;
			s32 maxX;
			s32 x;
			s32 xEnd;
			s32 rem;
			s32 curX;
			u8 *row;

			minX = wall->unk0;
			maxX = wall->unk4;

			if (!(z < (wall->unkA >> 10))) {
				if (z < (wall->unkE >> 10)) {
					if (minX >= wall->unk8) {
						minX = wall->unkC;
					} else if (wall->unkC >= maxX) {
						maxX = wall->unk8;
					}
				}
			}

			if (!(z < (wall->unk12 >> 10))) {
				if (z < (wall->unk16 >> 10)) {
					if (minX >= wall->unk10) {
						minX = wall->unk14;
					} else if (wall->unk14 >= maxX) {
						maxX = wall->unk10;
					}
				}
			}

			x = minX >> 10;
			xEnd = maxX >> 10;

			if (x < xEnd) {
				row = D_8021EA30 + (z << 6);
				curX = x;
				rem = (xEnd - x) & 3;
				if (rem != 0) {
					s32 remEnd = rem + x;

					do {
						row[curX + 0x820] |= 0xF0;
						curX++;
					} while (remEnd != curX);

					if (curX == xEnd) {
						goto done_row;
					}
				}

				do {
					row[curX + 0x820] |= 0xF0;
					row[curX + 0x821] |= 0xF0;
					row[curX + 0x822] |= 0xF0;
					row[curX + 0x823] |= 0xF0;
					curX += 4;
				} while (curX != xEnd);
			done_row:
				;
			}
			maxZ = wall->unk6 >> 10;
			z++;
		} while (z < maxZ);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B165C_C060C.s")
#endif

// CURRENT(6223)
#ifdef NON_MATCHING
void func_800B1814_C07C4(s32 arg0, s32 arg1, u8* arg2, s16 *arg3) {
	s32 x = arg0 & 0xFF;
	s32 y = arg1 & 0xFF;
	s32 tileX = ((x >> 1) - 1) & 0xFF;
	s32 tileY = (y >> 1) & 0xFF;
	u16 top[3];
	u16 bot[3];
	s32 rowBase0 = tileX << 7;
	s32 rowBase1 = tileX << 7;
	u8 c00 = D_80260700[(tileX << 7) + tileY];
	u8 c10 = D_80260700[rowBase1 + tileY + 0x80];
	u8 c11 = D_80260700[rowBase1 + tileY + 0x81];
	u8 c01 = D_80260700[rowBase0 + tileY + 1];

	(void)arg3;

	if (!(x & 1)) {
		u8 *palette = (u8*) D_80264700;

		top[0] = palette[c00 * 4 + 0];
		top[1] = palette[c00 * 4 + 1];
		top[2] = palette[c00 * 4 + 2];

		bot[0] = palette[c01 * 4 + 0];
		bot[1] = palette[c01 * 4 + 1];
		bot[2] = palette[c01 * 4 + 2];
	} else {
		u8 *palette = (u8*) D_80264700;

		top[0] = (palette[c00 * 4 + 0] + palette[c10 * 4 + 0]) >> 1;
		top[1] = (palette[c00 * 4 + 1] + palette[c10 * 4 + 1]) >> 1;
		top[2] = (palette[c00 * 4 + 2] + palette[c10 * 4 + 2]) >> 1;

		bot[0] = (palette[c01 * 4 + 0] + palette[c11 * 4 + 0]) >> 1;
		bot[1] = (palette[c01 * 4 + 1] + palette[c11 * 4 + 1]) >> 1;
		bot[2] = (palette[c01 * 4 + 2] + palette[c11 * 4 + 2]) >> 1;
	}

	{
		u16 top0 = top[0];

		if (!(y & 1)) {
			arg2[0] = top0;
			arg2[1] = top[1];
			arg2[2] = top[2];
		} else {
			arg2[0] = (top0 + bot[0]) >> 1;
			arg2[1] = (top[1] + bot[1]) >> 1;
			arg2[2] = (top[2] + bot[2]) >> 1;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B1814_C07C4.s")
#endif

// ClearDynamicLightBuffer?
void func_800B19F8_C09A8(void) {
	s32 i = 0;
	s32 j;
	do {
		for (j = 0; j < 0x13; j = (j + 1) & 0xFF) {
			D_80152740[i * 0x39 + j * 3] = 0;
			D_80152740[i * 0x39 + j * 3 + 1] = 0;
			D_80152740[i * 0x39 + j * 3 + 2] = 0;
		}
		i = (i + 1) & 0xFF;
	} while (i < 0x13);
}

// CURRENT(25314)
#ifdef NON_MATCHING
void func_800B1A68_C0A18(s16 *arg0, s16 *arg1, u8 *arg2, Unk80152D00 *arg3) {
	u8 sp6E;
	u8 sp6D;
	u8 sp6C;
	s32 sp28;
	s16 temp_s0;
	s16 temp_s1;
	s16 temp_s2;
	s16 temp_s3;
	s16 temp_t3;
	s16 temp_t4;
	s16 temp_t5;
	s16 temp_v1;
	s32 temp_a3;
	s32 temp_a3_2;
	s32 temp_fp;
	s32 temp_s7;
	s32 temp_t6;
	s32 temp_v0;
	s8 temp_a0;
	s8 temp_v1_2;
	s8 var_a0;
	s8 var_a0_2;
	s8 var_a2;
	s8 var_a2_2;
	s8 var_a3;
	s8 var_s3;
	s8 var_s3_2;
	s8 var_s4;
	s8 var_s5;
	s8 var_s6;
	s8 var_t0;
	s8 var_t1;
	s8 var_t2;
	s8 var_v0;
	s8 var_v1;
	s8 var_v1_2;
	u8 *temp_v0_2;

	temp_t5 = D_8014F89C - 0x7F;
	temp_v1 = arg0[0];
	temp_s0 = D_8014F89D - 0x7F;
	temp_t3 = arg0[1];
	temp_t4 = arg1[0];
	temp_s3 = arg1[1];
	temp_s1 = D_8014F899 - temp_t5;
	temp_s2 = D_8014F898 - temp_s0;
	var_a3 = (temp_v1 >> 8) + 1;
	var_t0 = (temp_t3 >> 8) + 1;
	var_t1 = (temp_t4 >> 8) + 1;
	var_t2 = (temp_s3 >> 8) + 1;
	if ((u8)temp_v1 >= 0x81) {
		var_a3++;
	}
	if ((u8)temp_t3 >= 0x81) {
		var_t0++;
	}
	if ((u8)temp_t4 >= 0x81) {
		var_t1++;
	}
	var_s6 = -1;
	if ((u8)temp_s3 >= 0x81) {
		var_t2++;
	}
	temp_v1_2 = var_t1 - var_a3;
	temp_a0 = var_t2 - var_t0;
	sp6C = (u8)((s32)arg2[0] >> 2);
	sp6D = (u8)((s32)arg2[1] >> 2);
	sp6E = (u8)((s32)arg2[2] >> 2);
	var_v0 = 0;
	if (temp_v1_2 > 0) {
		var_v0 = 1;
	}
	if (temp_a0 < 0) {
		var_v0 = ~var_v0;
	}
	if (var_v0 != 0) {
		var_s6 = 1;
	}
	var_s5 = -temp_v1_2;
	if (temp_v1_2 >= 0) {
		var_s5 = temp_v1_2;
	}
	if (temp_a0 >= 0) {
		var_s4 = temp_a0;
	} else {
		var_s4 = -temp_a0;
	}

	if (var_s4 < var_s5) {
		if (temp_v1_2 > 0) {
			var_v1 = var_a3;
			var_a0 = var_t0;
			var_s3 = var_t1;
		} else {
			var_v1 = var_t1;
			var_a0 = var_t2;
			var_s3 = var_a3;
		}
		temp_t6 = var_s4 * 2;
		var_a2 = temp_t6 - var_s5;
		sp28 = temp_t6;
		if (var_s3 >= var_v1) {
			do {
				if (var_v1 >= temp_t5) {
					temp_v0 = var_a0 - 1;
					if ((s16)(temp_t5 + 0x13) >= var_v1) {
						temp_a3 = var_a0 + 1;
						if ((temp_v0 >= temp_s0) && ((s16)(temp_s0 + 0x13) >= temp_v0)) {
							temp_v0_2 = &D_80152740[((s8)((temp_s2 + var_a0 - 1) % 0x13) * 0x39) + ((s8)((temp_s1 + var_v1) % 0x13) * 3)];
							temp_v0_2[0] = sp6C + temp_v0_2[0];
							temp_v0_2[1] = (sp6D + temp_v0_2[1]) & 0xFF;
							temp_v0_2[2] = (sp6E + temp_v0_2[2]) & 0xFF;
						}
						if ((var_a0 >= temp_s0) && ((s16)(temp_s0 + 0x13) >= var_a0)) {
							temp_v0_2 = &D_80152740[((s8)((temp_s2 + var_a0) % 0x13) * 0x39) + ((s8)((temp_s1 + var_v1) % 0x13) * 3)];
							temp_v0_2[0] = sp6C + temp_v0_2[0];
							temp_v0_2[1] = arg2[1];
							temp_v0_2[2] = (sp6E + temp_v0_2[2]) & 0xFF;
						}
						if ((temp_a3 >= temp_s0) && ((s16)(temp_s0 + 0x13) >= temp_a3)) {
							temp_v0_2 = &D_80152740[((s8)((temp_s2 + var_a0 + 1) % 0x13) * 0x39) + ((s8)((temp_s1 + var_v1) % 0x13) * 3)];
							temp_v0_2[0] = sp6C + temp_v0_2[0];
							temp_v0_2[1] = (sp6D + temp_v0_2[1]) & 0xFF;
							temp_v0_2[2] = (sp6E + temp_v0_2[2]) & 0xFF;
						}
					}
				}
				var_v1++;
				if (var_a2 >= 0) {
					var_a0 += var_s6;
					var_a2 = (s8)(var_a2 + ((var_s4 - var_s5) * 2));
				} else {
					var_a2 = (s8)(var_a2 + (s8)sp28);
				}
			} while (var_s3 >= var_v1);
		}
	} else {
		if (temp_a0 > 0) {
			var_v1_2 = var_a3;
			var_a0_2 = var_t0;
			var_s3_2 = var_t2;
		} else {
			var_v1_2 = var_t1;
			var_a0_2 = var_t2;
			var_s3_2 = var_t0;
		}
		temp_a3_2 = var_s5 * 2;
		var_a2_2 = temp_a3_2 - var_s4;
		if (var_s3_2 >= var_a0_2) {
			do {
				if (var_a0_2 >= temp_s0) {
					temp_fp = var_v1_2 - 1;
					if ((s16)(temp_s0 + 0x13) >= var_a0_2) {
						temp_s7 = var_v1_2 + 1;
						if ((temp_fp >= temp_t5) && ((s16)(temp_t5 + 0x13) >= temp_s7)) {
							temp_v0_2 = &D_80152740[((s8)((temp_s2 + var_a0_2) % 0x13) * 0x39) + ((s8)((temp_s1 + var_v1_2 - 1) % 0x13) * 3)];
							temp_v0_2[0] = sp6C + temp_v0_2[0];
							temp_v0_2[1] = (sp6D + temp_v0_2[1]) & 0xFF;
							temp_v0_2[2] = (sp6E + temp_v0_2[2]) & 0xFF;
						}
						if ((var_v1_2 >= temp_t5) && ((s16)(temp_t5 + 0x13) >= var_v1_2)) {
							temp_v0_2 = &D_80152740[((s8)((temp_s2 + var_a0_2) % 0x13) * 0x39) + ((s8)((temp_s1 + var_v1_2) % 0x13) * 3)];
							temp_v0_2[0] = sp6C + temp_v0_2[0];
							temp_v0_2[1] = (sp6D + temp_v0_2[1]) & 0xFF;
							temp_v0_2[2] = (sp6E + temp_v0_2[2]) & 0xFF;
						}
						if ((temp_s7 >= temp_t5) && ((s16)(temp_t5 + 0x13) >= temp_fp)) {
							temp_v0_2 = &D_80152740[((s8)((temp_s2 + var_a0_2) % 0x13) * 0x39) + ((s8)((temp_s1 + var_v1_2 + 1) % 0x13) * 3)];
							temp_v0_2[0] = sp6C + temp_v0_2[0];
							temp_v0_2[1] = (sp6D + temp_v0_2[1]) & 0xFF;
							temp_v0_2[2] = (sp6E + temp_v0_2[2]) & 0xFF;
						}
					}
				}
				var_a0_2++;
				if (var_a2_2 >= 0) {
					var_v1_2 += var_s6;
					var_a2_2 = (s8)(var_a2_2 + ((var_s5 - var_s4) * 2));
				} else {
					var_a2_2 = (s8)(var_a2_2 + temp_a3_2);
				}
			} while (var_s3_2 >= var_a0_2);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B1A68_C0A18.s")
#endif

// CURRENT(11404)
#ifdef NON_MATCHING
void func_800B2354_C1304(s16 *arg0, s8 *arg1, s32 arg2, s16 arg3) {
	s16 baseX;
	s16 baseY;
	s16 centerX;
	s16 centerY;
	s16 mapOffX;
	s16 mapOffY;
	s16 fracX;
	s16 fracY;
	s16 radius;
	s16 start;
	s16 end;
	s16 x;
	s16 y;
	s16 xDist;
	s16 yDist;
	s16 mapX;
	s16 mapY;
	s16 dist;
	s16 falloff;
	s16 intensity;
	f32 temp_f10;
	u32 temp_f8;
	u8 *color;
	u8 *dst;

	color = (u8 *)arg1;
	baseX = (arg0[0] >> 8) + 1;
	baseY = (arg0[1] >> 8) + 1;
	fracX = arg0[0] & 0xFF;
	fracY = arg0[1] & 0xFF;
	centerX = D_8014F89C - 0x7F;
	centerY = D_8014F89D - 0x7F;
	mapOffX = (D_8014F899 + baseX) - centerX;
	mapOffY = (D_8014F898 + baseY) - centerY;
	temp_f10 = (f32)(arg2 + arg3);
	temp_f8 = 0x43800000;
	temp_f10 = temp_f10 / *(f32 *)&temp_f8;
	radius = (u8)((u32)temp_f10 + 1);
	start = 1 - radius;
	end = radius + 1;

	for (x = start; x < end; x++) {
		if (x <= 0) {
			xDist = fracX + (x * -0x100);
		} else {
			xDist = ((0x100 - fracX) + (x << 8)) - 0x100;
		}

		for (y = start; y < end; y++) {
			if (y <= 0) {
				yDist = fracY + (y * -0x100);
			} else {
				yDist = ((0x100 - fracY) + (y << 8)) - 0x100;
			}

			dist = (s16)((s32)sqrtf((f32)((xDist * xDist) + (yDist * yDist))) - arg2);
			if (dist > 0) {
				falloff = arg3 - dist;
				if (falloff > 0) {
					intensity = (s16)(((f32)falloff / (f32)arg3) * 255.0f);
					if (intensity >= 0x100) {
						intensity = 0xFF;
					}
				} else {
					continue;
				}
			} else {
				intensity = 0xFF;
			}

			if (intensity <= 0) {
				continue;
			}

			mapX = x + baseX;
			if ((mapX < centerX) || (mapX > (s16)(centerX + 0x13))) {
				continue;
			}

			mapY = y + baseY;
			if ((mapY < centerY) || (mapY > (s16)(centerY + 0x13))) {
				continue;
			}

			dst = &D_80152740[((u16)((s16)((y + mapOffY) % 0x13)) * 0x39) + ((u16)((s16)((x + mapOffX) % 0x13)) * 3)];

			dist = ((color[0] * intensity) >> 8) + dst[0];
			if (dist >= 0x100) {
				dist = 0xFF;
			}
			dst[0] = dist;

			dist = ((color[1] * intensity) >> 8) + dst[1];
			if (dist >= 0x100) {
				dist = 0xFF;
			}
			dst[1] = dist;

			dist = ((color[2] * intensity) >> 8) + dst[2];
			if (dist >= 0x100) {
				dist = 0xFF;
			}
			dst[2] = dist;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B2354_C1304.s")
#endif

// CURRENT(10974)
#ifdef NON_MATCHING
void func_800B2854_C1804(Unk80152B80 *arg0, u8 *arg1, s16 arg2, s16 arg3) {
	s32 sp70;
	s32 sp6C;
	s32 sp68;
	s16 sp62;
	s16 sp60;
	s32 sp58;
	s32 sp54;
	s32 sp50;
	s32 sp4C;
	f32 temp_f10;
	s16 temp_ra;
	s16 temp_s3;
	s16 temp_s4;
	s16 temp_v0;
	s16 temp_v0_3;
	s16 temp_v0_4;
	s16 temp_v1;
	s16 temp_v1_3;
	s16 var_s0;
	s16 var_s2;
	s16 var_t2;
	s16 var_t3;
	s16 var_v0;
	s16 var_v0_2;
	s16 var_v0_3;
	s16 var_v0_4;
	s16 var_v0_5;
	s16 var_v1_2;
	s32 temp_fp;
	s32 temp_s5;
	s32 temp_t5;
	s32 temp_t7;
	s32 temp_v0_2;
	s32 var_a3;
	s32 var_t0;
	s32 var_t1;
	s32 var_v1;
	u8 *var_a0;

	temp_v0 = arg0->unk0;
	temp_s4 = D_8014F89D - 0x7F;
	var_t0 = (temp_v0 >> 8) + 1;
	temp_v1 = arg0->unk2;
	temp_s3 = D_8014F89C - 0x7F;
	var_t1 = (temp_v1 >> 8) + 1;
	var_t2 = (D_8014F899 + var_t0) - temp_s3;
	var_t3 = (D_8014F898 + var_t1) - temp_s4;
	temp_f10 = (f32) (arg2 + arg3) / 256.0f;
	sp68 = temp_v0 & 0xFF;
	temp_s5 = temp_v1 & 0xFF;
	temp_t5 = (u8) (((u32) temp_f10) + 1);
	temp_ra = 1 - temp_t5;
	temp_fp = temp_t5 + 1;
	var_s2 = temp_ra;
	sp50 = temp_fp;
	sp54 = temp_ra;
	sp58 = temp_ra;
	if (temp_ra < temp_fp) {
		var_a3 = temp_fp;
		do {
			var_s0 = (s16) ((u32) sp58 >> 16);
			if (var_s2 <= 0) {
				var_v0 = 0 + (var_s2 * -0x100);
			} else {
				var_v0 = ((0x100 - sp68) + (var_s2 << 8)) - 0x100;
			}
			if (sp54 < sp50) {
				do {
					if (var_s0 <= 0) {
						var_v0_2 = temp_s5 + (var_s0 * -0x100);
					} else {
						var_v0_2 = ((0x100 - temp_s5) + (var_s0 << 8)) - 0x100;
					}
					sp4C = var_a3;
					sp70 = var_t0;
					sp6C = var_t1;
					sp62 = var_t2;
					sp60 = var_t3;
					temp_v0_2 = (s32) sqrtf((f32) ((var_v0_2 * var_v0_2) + (var_v0 * var_v0))) - arg2;
					temp_t7 = (s16) temp_v0_2;
					var_v1 = temp_t7;
					if ((s16) temp_t7 < 0) {
						var_v1 = (s16) (temp_t7 * -1);
					}
					temp_v1_3 = arg3 - var_v1;
					if (temp_v1_3 > 0) {
						temp_v0_3 = var_s2 + var_t0;
						var_v1_2 = (s16) (((f32) temp_v1_3 / (f32) (s16) arg3) * 255.0f);
						if (var_v1_2 >= 0x100) {
							var_v1_2 = 0xFF;
						}
						if (temp_v0_3 >= temp_s3) {
							temp_v0_4 = var_s0 + var_t1;
							if (((s16) (temp_s3 + 0x13) >= temp_v0_3) && (temp_v0_4 >= temp_s4) && ((s16) (temp_s4 + 0x13) >= temp_v0_4)) {
								var_v0_3 = (s16) (((s32) arg1[0] * var_v1_2) >> 8);
								if (var_v0_3 >= 0x100) {
									var_v0_3 = 0xFF;
								}
								var_a0 = &D_80152740[(((u16) ((s16) ((var_s0 + var_t3) % 0x13))) * 0x39) + (((u16) ((s16) ((var_s2 + var_t2) % 0x13))) * 3)];
								var_a0[0] = (s8) var_v0_3;
								var_v0_4 = (s16) (((s32) arg1[1] * var_v1_2) >> 8);
								if (var_v0_4 >= 0x100) {
									var_v0_4 = 0xFF;
								}
								var_a0[1] = (s8) var_v0_4;
								var_v0_5 = (s16) (((s32) arg1[2] * var_v1_2) >> 8);
								if (var_v0_5 >= 0x100) {
									var_v0_5 = 0xFF;
								}
								var_a0[2] = (s8) var_v0_5;
							}
						}
					}
					var_s0++;
				} while (var_s0 < var_a3);
			}
			var_s2++;
		} while (var_s2 < var_a3);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B2854_C1804.s")
#endif

#ifdef NON_MATCHING
// CURRENT(6329)
void func_800B2CF0_C1CA0(s8 *arg0, u8 *arg1, s8 *arg2) {
	f32 sp24;
	s32 pad0;
	s32 pad1;
	f32 sp20;
	f32 sp1C;
	f32 sp2C;
	f32 sp28;
	s8 sp1A;
	s8 sp19;
	s8 sp18;
	f32 temp_f2;
	f32 delta;
	s32 levelOffset;
	s32 temp_v0;
	f32 *temp_v0_2;
	f32 *temp_v1;

	pad0 = 0;
	pad1 = 0;

	sp2C = (f32)((((u8 *)arg0)[3] - ((u8 *)arg0)[1]) << 5);
	sp28 = (f32)((((u8 *)arg0)[4] - ((u8 *)arg0)[0]) << 5);
	temp_f2 = (f32)(D_80142E18_151DC8 / (f64)sqrtf((sp2C * sp2C) + 262144.0f + (sp28 * sp28)));
	sp18 = (s8)(s32)(temp_f2 * sp2C);
	sp19 = (s8)(s32)(temp_f2 * 512.0f);
	sp1A = (s8)(s32)(temp_f2 * sp28);

	temp_v0 = (s32)(((f32)sp18 * D_8013DAC0_14CA70[0]) + ((f32)sp19 * D_8013DAC0_14CA70[1]) + ((f32)sp1A * D_8013DAC0_14CA70[2]));
	if (temp_v0 <= 0) {
		temp_v0 = 1;
	} else if (temp_v0 >= 0x80) {
		temp_v0 = 0x7F;
	}

	temp_f2 = (f32)((f64)temp_v0 / D_80142E18_151DC8);
	if ((((u8 *)arg0)[2] << 5) < D_80222A70) {
		levelOffset = currentLevel * 0xC;
		temp_v1 = (f32 *)((u8 *)D_8013DA84_14CA34 + levelOffset);
		temp_v0_2 = (f32 *)((u8 *)D_8013DA48_14C9F8 + levelOffset);
		delta = temp_v1[-3] - temp_v0_2[-3];
		sp1C = temp_v0_2[-3] + (temp_f2 * delta);
		delta = temp_v1[-2] - temp_v0_2[-2];
		sp20 = temp_v0_2[-2] + (temp_f2 * delta);
		delta = temp_v1[-1] - temp_v0_2[-1];
		sp24 = temp_v0_2[-1] + (temp_f2 * delta);
	} else {
		levelOffset = currentLevel * 0xC;
		temp_v1 = (f32 *)((u8 *)D_8013DA0C_14C9BC + levelOffset);
		temp_v0_2 = (f32 *)((u8 *)D_8013D9D0_14C980 + levelOffset);
		delta = temp_v1[-3] - temp_v0_2[-3];
		sp1C = temp_v0_2[-3] + (temp_f2 * delta);
		delta = temp_v1[-2] - temp_v0_2[-2];
		sp20 = temp_v0_2[-2] + (temp_f2 * delta);
		delta = temp_v1[-1] - temp_v0_2[-1];
		sp24 = temp_v0_2[-1] + (temp_f2 * delta);
	}

	arg2[0] = (s8)(u32)((f32)arg1[0] * sp1C);
	arg2[1] = (s8)(u32)((f32)arg1[1] * sp20);
	arg2[2] = (s8)(u32)((f32)arg1[2] * sp24);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B2CF0_C1CA0.s")
#endif

void func_800B316C_C211C(s8 arg0, s8 arg1, u16 arg2, u8 arg3) {
	s32 x = arg0 + 0x80;
	s32 y = arg1 + 0x80;
	if (arg3) {
		D_8014F8A0[y][x] |= arg2;
	} else {
		D_8014F8A0[y][x] &= ~arg2;
	}
}

// https://decomp.me/scratch/oc09b
#ifdef NON_MATCHING
void func_800B31FC_C21AC(s8 arg0, s8 arg1)
{
  volatile u8 *v0;
  u8 temp;
  u8 temp2;
  u16 temp3;
  v0 = (volatile u8 *) ((((u8 *) D_80052A94) + (arg1 * 512)) + (arg0 * 2));
  temp = *v0;
  temp |= 0x80;
  *v0 = temp;
  temp &= 0xF7;
  *v0 = temp;
  temp |= 4;
  *v0 = temp;
  temp3 = *((volatile u16 *) v0);
  temp3 &= 0xFC3F;
  temp3 |= 0x300;
  *((volatile u16 *) v0) = temp3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B31FC_C21AC.s")
#endif

s32 func_800B325C_C220C(s8 arg0, s8 arg1, u16 arg2)
{
  return (D_8014F8A0[128 + arg1][128 + arg0] & arg2) & 0xFFFF;
}
// CURRENT(1800)
#ifdef NON_MATCHING
void func_800B32AC_C225C(u16 *arg0) {
	u8 x;
	u8 y;
	u32 end;
	u32 i;
	s32 level;
	u16 *start;

	x = 0;
	y = 0;
	level = D_80222A70 / 32;
	start = arg0;
	end = 0x1FE02;
	i = 0;

	do {
		i += 2;
		if (currentLevel == 4) {
			level = 6;
			if ((x < 0x4C) && (y < 0x9C) && (y >= 0x59)) {
				level = 0x20;
			}
		}
		if (((arg0[0] & 0x3F) < level) || ((arg0[1] & 0x3F) < level) || ((arg0[0x100] & 0x3F) < level) ||
			((arg0[0x101] & 0x3F) < level)) {
			arg0[0] |= 0x1000;
		} else {
			arg0[0] &= ~0x1000;
		}

		x = (x + 1) & 0xFF;
		if (x == 0) {
			y = (y + 1) & 0xFF;
		}
		arg0++;
	} while (i != end);

	*start = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B32AC_C225C.s")
#endif

void func_800B33BC_C236C(s32 arg0) {
	s16 coss_val;
	f32 sp20;
	f32 sp1C;

	sp1C = cosf(D_80142E20_151DD0); sp20 = sinf(D_80142E24_151DD4);
	coss_val = coss(arg0);
	D_8014FD2A = func_80003740_4340((f32)((f64)(sp20 / sp1C) / ((f64)(f32)coss_val / 32768.0))) * 2;
	if ((s16)arg0 >= 0x2E39) {
		D_8014FD2A = 0x8000;
	}
}

// CURRENT(92233)
#ifdef NON_MATCHING
void func_800B345C_C240C(u8 arg0, u8 arg1, u8 *arg2, u8 arg3) {
	u8 spA8;
	u8 spA9;
	u8 spAA;
	s8 spAC[5];
	s16 sp94;
	u32 baseXWord;
	s32 row;
	s32 col;
	s32 i;
	u8 mode;
	s32 mapIndex;
	s32 tmp;
	f32 f0;
	u8 colorR;
	u8 colorG;
	u8 colorB;
	u8 *entry;

	(void)arg3;

	D_8014F8A0 = (s16 (*)[256])arg2;
	sp94 = D_8014F89C;

	for (row = 0; row < 0x13; row = (row + 1) & 0xFF) {
		baseXWord = (D_8014F89D + row) & 0xFF;

		for (col = 0; col < 0x13; col = (col + 1) & 0xFF) {
			mapIndex = (u16)(sp94 + col + (baseXWord << 8));

			spAC[0] = ((u16 *)arg2)[mapIndex - 0x100] & 0x3F;
			spAC[1] = ((u16 *)arg2)[mapIndex - 1] & 0x3F;
			spAC[2] = ((u16 *)arg2)[mapIndex] & 0x3F;
			spAC[3] = ((u16 *)arg2)[mapIndex + 1] & 0x3F;
			spAC[4] = ((u16 *)arg2)[mapIndex + 0x100] & 0x3F;

			func_800B1814_C07C4(((u8 *)&baseXWord)[3], (sp94 + col) & 0xFF, &colorR, (s16 *)arg2);
			mode = D_80151DD0;

			if (mode == 2) {
				colorR = func_800B0A10_BF9C0((s32)(s8)colorR / 2, colorR, (u8)D_8013D9AC_14C95C, 0x40) & 0xFF;
				colorG = func_800B0A10_BF9C0((s32)(s8)colorG / 2, colorG, (u8)D_8013D9AC_14C95C, 0x40) & 0xFF;
				colorB = func_800B0A10_BF9C0((s32)(s8)colorB / 2, colorB, (u8)D_8013D9AC_14C95C, 0x40) & 0xFF;
				mode = D_80151DD0;
			}

			if (mode == 3) {
				colorR = func_800B0A10_BF9C0(0, (s32)(s8)colorR / 2, (u8)D_8013D9AC_14C95C, 0x96) & 0xFF;
				colorG = func_800B0A10_BF9C0(0, (s32)(s8)colorG / 2, (u8)D_8013D9AC_14C95C, 0x96) & 0xFF;
				colorB = func_800B0A10_BF9C0(0, (s32)(s8)colorB / 2, (u8)D_8013D9AC_14C95C, 0x96) & 0xFF;
				mode = D_80151DD0;
			}

			if (mode == 4) {
				colorR = 0;
				colorG = 0;
				colorB = 0;
			}

			if (D_8013D9B0_14C960 != 0) {
				if (D_8013D9B0_14C960 >= 0x3D) {
					f0 = (f32)((1.0 - ((f64)(f32)coss((u16)((s32)(((f32)(s16)(D_8013D9B0_14C960 - 0x3C) / 15.0f) * 32768.0f))) / 32768.0)) / 2.0);
				} else {
					f0 = (f32)((((f64)(f32)coss((u16)((s32)(((f32)(s16)D_8013D9B0_14C960 / 60.0f) * 32768.0f))) / 32768.0) + 1.0) / 2.0);
				}

				if (D_8013D9B4_14C964 != 0) {
					colorR = ((s32)((((f32)colorR * f0) / 2.0f) + ((s32)colorR >> 1))) & 0xFF;
					colorG = ((s32)((((f32)colorG * f0) / 2.0f) + ((s32)colorG >> 1))) & 0xFF;
					colorB = ((s32)((((f32)colorB * f0) / 2.0f) + ((s32)colorB >> 1))) & 0xFF;
				} else {
					colorR = ((s32)(((f64)((f32)colorR * f0) * 0.75) + ((s32)colorR >> 2))) & 0xFF;
					colorG = ((s32)(((f64)((f32)colorG * f0) * 0.75) + ((s32)colorG >> 2))) & 0xFF;
					colorB = ((s32)(((f64)((f32)colorB * f0) * 0.75) + ((s32)colorB >> 2))) & 0xFF;
				}
			}

			if (D_8013D9C8_14C978 != 0) {
				colorR = 0xFF;
				colorG = 0xFF;
				colorB = 0xFF;
			}

			func_800B2CF0_C1CA0(spAC, &colorR, (s8 *)&spA8);

			entry = &D_80151DD8[((((s32)((s8)D_80151DD8[0x960] + row) % 19) & 0xFFFF) * 0x78) +
				((((s32)((s8)D_80151DD8[0x961] + col) % 19) & 0xFFFF) * 6)];
			entry[2] = spA8;
			entry[4] = spAA;
			entry[3] = spA9;
		}
	}

	for (row = 0; row < 0x13; row = (row + 1) & 0xFF) {
		for (col = 0; col < 0x13; col = (col + 1) & 0xFF) {
			for (i = 0; i < 0x40; i = (i + 1) & 0xFF) {
				if (((sp94 + col) == D_8014FD48[i * 2]) && ((D_8014F89D + row) == D_8014FD48[(i * 2) + 1])) {
					entry = &D_80151DD8[(row * 0x78) + (col * 6)];
					tmp = ((D_8014FD48[(i * 2) + 1] * D_8014FD48[i * 2]) % 60) & 0xFF;

					if ((tmp + 0x14) < 0) {
						entry[2] = 0;
					} else {
						entry[2] = tmp + 0x14;
					}

					if ((tmp - 5) < 0) {
						entry[3] = 0;
					} else {
						entry[3] = tmp - 5;
					}

					if ((tmp - 0x19) < 0) {
						entry[4] = 0;
					} else {
						entry[4] = tmp - 0x19;
					}
				}
			}
		}
	}

	(void)arg0;
	(void)arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B345C_C240C.s")
#endif

// https://decomp.me/scratch/TODO
#ifdef NON_MATCHING
void func_800B4050_C3000(u8 arg0, u8 arg1, u8 *arg2, u8 arg3) {
	s32 row;
	s32 col;
	s32 nextCol;
	s32 nextRow;

	D_8014F8A0 = (s16(*)[256])arg2;
	D_80151DD8[0x964] = arg0;
	D_80151DD8[0x965] = arg1;
	D_8014F89C = arg0;
	D_8014F89D = arg1;
	row = 0;
	nextRow = 0;
	do {
		col = 0;
		nextCol = 0;
		do {
			*(u16 *)(D_80151DD8 + row * 0x78 + col * 6) =
				((u16 *)arg2)[(u16)(arg0 + nextCol + ((arg1 + nextRow) << 8))];
			nextCol = (col + 1) & 0xFF;
			col = nextCol;
		} while (nextCol < 0x13);
		nextRow = (row + 1) & 0xFF;
		row = nextRow;
	} while (nextRow < 0x13);
	D_80151DD8[0x960] = 0;
	D_80151DD8[0x961] = 0;
	func_800B345C_C240C(arg0, arg1, arg2, arg3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B4050_C3000.s")
#endif

void func_800B415C_C310C(s16 arg0, s16 arg1) {
	s32 idx;
	u8 *entry;

	idx = D_8014FDC8;
	entry = D_8014FD48 + idx * 2;
	entry[0] = arg0 + 0x80;
	entry[1] = arg1 + 0x80;
	D_8014FDC8 = (idx + 1) % 64;
}

void func_800B41C8_C3178(u8 arg0, u8 arg1, u8 *arg2, u8 arg3) {
	s16 i;

	func_800B0C80_BFC30();
	func_800B32AC_C225C(arg2);
	func_800B4050_C3000(arg0, arg1, arg2, arg3);
	func_800B0B94_BFB44();
	D_8014FDC8 = 0;
	for (i = 0; i < 0x40; i++) {
		D_8014FD48[i * 2] = 0;
	}
	D_8014F838 = 0;
	if (currentLevel != 5) {
		i = 0;
		if (D_80047F98 > 0) {
			do {
				func_800B165C_C060C(i);
				i++;
			} while (i < D_80047F98);
		}
	}
}

// CURRENT(15401)
#ifdef NON_MATCHING
void func_800B42B0_C3260(s32 arg0) {
	u8 sp6F;
	s8 sp6A;
	s8 sp69;
	s8 sp68;
	s8 sp64;
	s8 sp63;
	s8 sp62;
	s8 sp61;
	s8 sp60;
	u16 *sp5C;
	s8 sp59;
	u8 sp54[3];
	u16 *tempS6;
	u16 *tempS7;
	u8 temp;
	s32 tmp;
	s32 i;
	s32 lane;
	u8 *entry;
	u8 idx;
	s8 nextCol;

	(void)arg0;

	D_8014F89C = D_80151DD8[0x964]++;
	D_8014F89D = D_80151DD8[0x965];
	D_8014F899 = D_80151DD8[0x961];
	D_8014F898 = D_80151DD8[0x960];
	D_8014F89C++;

	sp5C = &D_8014F8A0[0][0];
	sp6F = 0;
	sp59 = D_8014F898;

	do {
		tmp = D_8014F89D + sp6F;
		temp = (D_8014F89C + (tmp << 8) + 0x12) & 0xFF;
		tempS6 = sp5C + (((D_8014F89C + (tmp << 8) + 0x12) & 0xFFFF));
		tempS7 = tempS6;

		sp60 = tempS6[-0x100] & 0x3F;
		sp61 = tempS6[-1] & 0x3F;
		sp62 = tempS7[0] & 0x3F;
		sp63 = tempS6[1] & 0x3F;
		sp64 = tempS6[0x100] & 0x3F;

		func_800B1814_C07C4(tmp & 0xFF, temp, sp54, sp5C);
		func_800B2CF0_C1CA0(&sp60, sp54, &sp68);

		for (i = 0; i < 0x40; i++) {
			entry = &D_8014FD48[i * 2];
			if (((D_8014F89C + 0x12) == entry[0]) && ((D_8014F89D + sp6F) == entry[1])) {
				idx = (func_800038E0_44E0() % 60) & 0xFF;
				nextCol = idx + 0x14;
				if (nextCol < 0) {
					sp68 = 0;
				} else {
					sp68 = nextCol;
				}

				nextCol = idx - 5;
				if (nextCol < 0) {
					sp69 = 0;
				} else {
					sp69 = nextCol;
				}

				nextCol = idx - 0x19;
				if (nextCol < 0) {
					sp6A = 0;
				} else {
					sp6A = nextCol;
				}
			}
		}

		entry = &D_80151DD8[(u8)sp59 * 0x78 + D_8014F899 * 6];
		*(u16 *)entry = *tempS7;

		if (tempS6[-1] & 0x800) {
			entry[2] = (((s32)(u8)sp68 >> 2) * 3);
			entry[4] = (((s32)(u8)sp6A >> 2) * 3);
			entry[3] = (((s32)(u8)sp69 >> 2) * 3);
		} else {
			entry[2] = (u8)sp68;
			entry[3] = (u8)sp69;
			entry[4] = (u8)sp6A;
		}

		lane = (sp59 + 1) % 19;
		sp59 = lane;
		sp6F = (sp6F + 1) & 0xFF;
	} while (sp6F < 0x13);

	D_8014F899 = (D_8014F899 + 1) % 19;
	D_80151DD8[0x961] = D_8014F899;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B42B0_C3260.s")
#endif

#ifdef NON_MATCHING
// CURRENT(13622)
void func_800B4660_C3610(s32 arg0) {
	u8 sp6F;
	s8 sp6A;
	s8 sp69;
	s8 sp68;
	s8 sp64;
	s8 sp63;
	s8 sp62;
	s8 sp61;
	s8 sp60;
	s16 *sp5C;
	s8 sp59;
	u8 sp54[3];
	s32 temp_t8;
	s32 temp_t9;
	s32 temp_t9_2;
	s32 temp_v1;
	s32 var_s0;
	s8 temp_v0_2;
	s8 temp_v0_3;
	s8 temp_v0_4;
	s8 temp_v1_2;
	s8 var_s1;
	s16 *temp_s6;
	s16 *temp_s7;
	u8 temp_t6;
	u8 *temp_v0;
	u8 *temp_v0_4;

	(void)arg0;

	D_8014F899 = D_80151DD8[0x961];
	D_8014F898 = D_80151DD8[0x960];
	sp5C = &D_8014F8A0[0][0];
	D_8014F89C = D_80151DD8[0x964];
	temp_t6 = D_80151DD8[0x964] - 1;
	D_80151DD8[0x964] = D_80151DD8[0x964] - 1;
	D_8014F899 = (D_8014F899 + 0x12) % 19;
	D_8014F89C = temp_t6;
	var_s1 = 0;
	sp6F = 0;
	D_8014F89D = D_80151DD8[0x965];
	sp59 = D_8014F898;
	do {
		temp_v1 = D_8014F89D + var_s1;
		temp_t9 = (D_8014F89C + (temp_v1 << 8)) & 0xFFFF;
		temp_s6 = sp5C + temp_t9;
		temp_s7 = sp5C + temp_t9;
		sp60 = temp_s6[-0x100] & 0x3F;
		sp61 = temp_s6[-1] & 0x3F;
		sp62 = temp_s7[0] & 0x3F;
		sp63 = temp_s6[1] & 0x3F;
		sp64 = temp_s6[0x100] & 0x3F;
		func_800B1814_C07C4(temp_v1 & 0xFF, D_8014F89C, sp54, sp5C);
		func_800B2CF0_C1CA0(&sp60, sp54, &sp68);
		var_s0 = 0;
	loop_2:
			temp_v0 = &D_8014FD48[var_s0 * 2];
			if ((D_8014F89C == temp_v0[0]) && ((D_8014F89D + var_s1) == temp_v0[1])) {
				temp_t8 = (func_800038E0_44E0() % 60) & 0xFF;
				temp_v1_2 = temp_t8 + 0x14;
				if (temp_v1_2 < 0) {
					sp68 = 0;
				} else {
					sp68 = temp_v1_2;
				}
				temp_v0_2 = temp_t8 - 5;
				if (temp_v0_2 < 0) {
					sp69 = 0;
				} else {
					sp69 = temp_v0_2;
				}
				temp_v0_3 = temp_t8 - 0x19;
				if (temp_v0_3 < 0) {
					sp6A = 0;
				} else {
					sp6A = temp_v0_3;
				}
			}
			temp_t9_2 = (var_s0 + 1) & 0xFF;
			var_s0 = temp_t9_2;
			if (temp_t9_2 < 0x40) {
				goto loop_2;
			}
		temp_v0_4 = &D_80151DD8[(u8)sp59 * 0x78 + D_8014F899 * 6];
		*(u16 *)temp_v0_4 = *temp_s7;
		if (temp_s6[-1] & 0x800) {
			temp_v0_4[2] = (((u8)sp68 / 4) * 3);
			temp_v0_4[4] = (((u8)sp6A / 4) * 3);
			temp_v0_4[3] = (((u8)sp69 / 4) * 3);
		} else {
			temp_v0_4[2] = (u8)sp68;
			temp_v0_4[3] = (u8)sp69;
			temp_v0_4[4] = (u8)sp6A;
		}
		sp59 = ((u8)sp59 + 1) % 19;
		var_s1 = (sp6F + 1) & 0xFF;
		sp6F = var_s1;
	} while (var_s1 < 0x13);
	D_80151DD8[0x961] = D_8014F899;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B4660_C3610.s")
#endif

#ifdef NON_MATCHING
// CURRENT(12681)
void func_800B49A4_C3954(s32 arg0) {
	u8 sp6F;
	u8 sp6A;
	u8 sp69;
	u8 sp68;
	u8 sp64;
	u8 sp63;
	u8 sp62;
	u8 sp61;
	u8 sp60;
	u16 *sp5C;
	s8 sp59;
	u8 sp54[3];
	s32 var_s0;
	s32 var_s1;
	u16 *temp_s6;
	u16 *temp_s7;
	u8 *temp_v0;
	u8 *temp_v0_5;
	u8 *temp_s4;
	u8 *temp_s5;
	s8 *temp_a0;
	u8 temp;

	(void)arg0;

	sp5C = (u16 *)&D_8014F8A0[0][0];
	temp_s4 = &D_8014F89D;
	temp_s5 = &D_8014F89C;
	temp_a0 = &D_8014F899;
	D_8014F89D = D_80151DD8[0x965];
	D_80151DD8[0x965] = D_8014F89D + 1;
	D_8014F89C = D_80151DD8[0x964];
	D_8014F899 = D_80151DD8[0x961];
	D_8014F898 = D_80151DD8[0x960];
	temp = D_8014F89D + 1;
	D_8014F89D = temp;
	var_s1 = 0;
	sp6F = 0;
	sp59 = D_8014F899;
	do {
		s32 temp_a3;
		s32 temp_v1;

		temp_a3 = *temp_s4 + 0x12;
		temp_v1 = *temp_s5 + var_s1;
		temp_s6 = sp5C + ((temp_v1 + (temp_a3 << 8)) & 0xFFFF);
		temp_s7 = sp5C + ((temp_v1 + (temp_a3 << 8)) & 0xFFFF);
		sp60 = temp_s6[-0x100] & 0x3F;
		sp61 = temp_s6[-1] & 0x3F;
		sp62 = temp_s7[0] & 0x3F;
		sp63 = temp_s6[1] & 0x3F;
		sp64 = temp_s6[0x100] & 0x3F;
		func_800B1814_C07C4(temp_a3 & 0xFF, temp_v1 & 0xFF, sp54, (s16 *)sp5C);
		func_800B2CF0_C1CA0((s8 *)&sp60, sp54, (s8 *)&sp68);
		var_s0 = 0;
	loop_2:
		temp_v0 = &D_8014FD48[var_s0 * 2];
		if (((*temp_s5 + var_s1) == temp_v0[0]) && ((*temp_s4 + 0x12) == temp_v0[1])) {
			s32 temp_v0_2;
			s32 temp_v0_3;
			s32 temp_v1_2;

			temp = (func_800038E0_44E0() % 60) & 0xFF;
			temp_v1_2 = temp + 0x14;
			if (temp_v1_2 < 0) {
				sp68 = 0;
			} else {
				sp68 = temp_v1_2;
			}
			temp_v0_2 = temp - 5;
			if (temp_v0_2 < 0) {
				sp69 = 0;
			} else {
				sp69 = temp_v0_2;
			}
			temp_v0_3 = temp - 0x19;
			if (temp_v0_3 < 0) {
				sp6A = 0;
			} else {
				sp6A = temp_v0_3;
			}
		}
		var_s0 = (var_s0 + 1) & 0xFF;
		if (var_s0 < 0x40) {
			goto loop_2;
		}
		temp_v0_5 = &D_80151DD8[(s32)D_8014F898 * 0x78 + ((u8)sp59 * 6)];
		*(u16 *)temp_v0_5 = (u16)*temp_s7;
		if (temp_s6[-1] & 0x800) {
			temp_v0_5[2] = (u8)(((s8)sp68 / 4) * 3);
			temp_v0_5[4] = (u8)(((s8)sp6A / 4) * 3);
			temp_v0_5[3] = (u8)(((s8)sp69 / 4) * 3);
		} else {
			temp_v0_5[2] = (u8)sp68;
			temp_v0_5[3] = (u8)sp69;
			temp_v0_5[4] = (u8)sp6A;
		}
		sp59 = ((u8)sp59 + 1) % 19;
		sp6F = (sp6F + 1) & 0xFF;
		var_s1 = sp6F;
	} while (sp6F < 0x13);
	D_8014F898 = (s8)((D_8014F898 + 1) % 19);
	D_80151DD8[0x960] = D_8014F898;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B49A4_C3954.s")
#endif

// CURRENT(13515)
#ifdef NON_MATCHING
void func_800B4D4C_C3CFC(s32 arg0) {
	u8 sp6F;
	s8 sp6A;
	s8 sp69;
	s8 sp68;
	s8 sp64;
	s8 sp60[5];
	s16 *sp5C;
	s8 sp59;
	u8 sp54[3];
	s32 temp_t8;
	s32 temp_t9;
	s32 temp_t9_2;
	s32 temp_v1;
	s32 var_s0;
	s8 temp_v0_2;
	s8 temp_v0_3;
	s8 temp_v1_2;
	s8 var_s1;
	s16 *temp_s6;
	s16 *temp_s7;
	u8 temp_t6;
	u8 *temp_v0;
	u8 *temp_v0_4;

	(void)arg0;

	sp5C = &D_8014F8A0[0][0];
	D_8014F898 = (s8)D_80151DD8[0x960];
	D_8014F898 = (s8)((D_8014F898 + 0x12) % 19);
	D_8014F899 = (s8)D_80151DD8[0x961];
	D_8014F89D = D_80151DD8[0x965];
	D_8014F89C = D_80151DD8[0x964];
	temp_t6 = D_8014F89D - 1;
	D_80151DD8[0x965] = temp_t6;
	D_8014F89D = temp_t6;
	sp59 = D_8014F899;
	var_s1 = 0;
	sp6F = 0;
	do {
		temp_v1 = D_8014F89C + var_s1;
		temp_t9 = (D_8014F89D << 8) + temp_v1;
		temp_s6 = sp5C + temp_t9;
		temp_s7 = sp5C + temp_t9;
		sp60[0] = temp_s6[-0x100] & 0x3F;
		sp60[1] = temp_s6[-1] & 0x3F;
		sp60[2] = temp_s7[0] & 0x3F;
		sp60[3] = temp_s6[1] & 0x3F;
		sp60[4] = temp_s6[0x100] & 0x3F;
		func_800B1814_C07C4(D_8014F89D, temp_v1 & 0xFF, sp54, sp5C);
		func_800B2CF0_C1CA0(sp60, sp54, (s8 *)&sp68);
		var_s0 = 0;
	loop_2:
			temp_v0 = &D_8014FD48[var_s0 * 2];
			if ((D_8014F89C + var_s1 == temp_v0[0]) && (D_8014F89D == temp_v0[1])) {
				temp_t8 = func_800038E0_44E0() % 60;
				temp_v1_2 = temp_t8 + 0x14;
				if (temp_v1_2 < 0) {
					sp68 = 0;
				} else {
					sp68 = temp_v1_2;
				}

				temp_v0_2 = temp_t8 - 5;
				if (temp_v0_2 < 0) {
					sp69 = 0;
				} else {
					sp69 = temp_v0_2;
				}

				temp_v0_3 = temp_t8 - 0x19;
				if (temp_v0_3 < 0) {
					sp6A = 0;
				} else {
					sp6A = temp_v0_3;
				}
			}

			temp_t9_2 = (var_s0 + 1) & 0xFF;
			var_s0 = temp_t9_2;
			if (temp_t9_2 < 0x40) {
				goto loop_2;
			}

		temp_v0_4 = &D_80151DD8[(s32)D_8014F898 * 0x78 + ((u8)sp59 * 6)];
		*(u16 *)temp_v0_4 = (u16)*temp_s7;
		if (temp_s6[-1] & 0x800) {
			temp_v0_4[2] = (u8)(((u8)sp68 / 4) * 3);
			temp_v0_4[4] = (u8)(((u8)sp6A / 4) * 3);
			temp_v0_4[3] = (u8)(((u8)sp69 / 4) * 3);
		} else {
			temp_v0_4[2] = (u8)sp68;
			temp_v0_4[3] = (u8)sp69;
			temp_v0_4[4] = (u8)sp6A;
		}

		sp59 = (u8)((sp59 + 1) % 19);
		var_s1 = (sp6F + 1) & 0xFF;
		sp6F = var_s1;
	} while (var_s1 < 0x13);

	D_80151DD8[0x960] = D_8014F898;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B4D4C_C3CFC.s")
#endif

// CURRENT(53460)
#ifdef NON_MATCHING
void func_800B5090_C4040(s32 *arg0, s32 arg1) {
	Vtx **vtxPtr;
	u8 *base;
	s16 tilesMinX;
	s16 tilesMinY;
	u8 ringX;
	u8 ringY;
	u8 mapX;
	u8 mapY;
	u8 row;
	s32 col;
	s32 colWrap;
	s32 rowWrap;
	s32 waveX;
	s32 waveY;
	s16 heightX;
	s16 heightY;
	s16 worldX;
	s16 worldY;
	s16 posX;
	s16 posY;
	s16 posZ;
	s16 hueX;
	s16 hueY;
	s16 cellH;
	s16 inA;
	s16 inB;
	s16 amp;
	s16 scrollX;
	s16 scrollY;
	s32 tileType;
	s32 i;
	s16 *tileCenter;
	u8 *ringRow;
	u8 *ringCell;
	u8 *shade;
	u8 *shadeMix;
	s8 edgeParityX;
	s8 edgeParityY;
	s8 color0;
	s8 color1;
	s8 color2;
	s8 blur0;
	s8 blur1;
	s8 blur2;
	s32 rand60;
	s32 frameAngle;
	f64 ratio;

	(void)arg1;

	D_8014F89A = 0;
	base = D_80151DD8;
	ringX = (u8)base[0x961];
	D_8014F899 = (s8)ringX;
	ringY = (u8)base[0x960];
	D_8014F898 = (s8)ringY;
	mapX = base[0x964];
	D_8014F89C = mapX;
	mapY = base[0x965];
	D_8014F89D = mapY;

	vtxPtr = (Vtx **)arg0;
	scrollX = D_80149434;
	scrollY = D_80149436;
	tilesMinX = scrollX + 0x701;
	tilesMinY = scrollY + 0x701;

	row = 0;
	rowWrap = 0;
	mapX = ringY;
	color0 = (s8)base[0x960];
	color1 = base[0x964];
	color2 = base[0x965];

	do {
		s32 rowOffset;
		u8 ringCol;

		rowOffset = (color0 * 0x78);
		ringRow = &D_80151DD8[rowOffset];
		shade = &D_80152740[(color0 * 0x39) + (ringX * 3)];
		worldY = ((s8)color2 - 0x80) << 8;
		edgeParityY = (s8)color2 % 2;
		mapY = color1;
		col = ringX;
		ringCol = 0;

		do {
			s16 *tileEast;
			s16 *tileWest;
			s16 *tileNorth;
			s16 *tileSouth;
			s32 c0;
			s32 c1;
			s32 c2;

			colWrap = (col * 6);
			tileCenter = (s16 *)(ringRow + colWrap);

			if (col != 0x12) {
				tileEast = (s16 *)(ringRow + colWrap + 6);
			} else {
				tileEast = (s16 *)ringRow;
			}

			if (col != 0) {
				tileWest = (s16 *)(ringRow + colWrap - 6);
			} else {
				tileWest = (s16 *)(ringRow + 0x6C);
			}

			if (color0 != 0x12) {
				tileSouth = (s16 *)(D_80151DD8 + rowOffset + colWrap + 0x78);
			} else {
				tileSouth = (s16 *)(D_80151DD8 + colWrap);
			}

			if (color0 != 0) {
				tileNorth = (s16 *)(D_80151DD8 + rowOffset + colWrap - 0x78);
			} else {
				tileNorth = (s16 *)(D_80151DD8 + colWrap + 0x870);
			}

			shadeMix = &shade[(col * 3) - (ringX * 3)];
			c0 = shadeMix[0];
			if (c0 != 0) {
				c0 += (u8)((u8 *)tileCenter)[2];
				if (c0 > 0xFF) {
					c0 = 0xFF;
				}

				c1 = shadeMix[1] + (u8)((u8 *)tileCenter)[3];
				if (c1 > 0xFF) {
					c1 = 0xFF;
				}

				c2 = shadeMix[2] + (u8)((u8 *)tileCenter)[4];
				if (c2 > 0xFF) {
					c2 = 0xFF;
				}
			} else {
				c0 = (u8)((u8 *)tileCenter)[2];
				c1 = (u8)((u8 *)tileCenter)[3];
				c2 = (u8)((u8 *)tileCenter)[4];
			}
			blur0 = (s8)c0;
			blur1 = (s8)c1;
			blur2 = (s8)c2;

			edgeParityX = (s8)color1 % 2;
			if (edgeParityX == 1) {
				hueX = D_8013DACC_14CA7C[currentLevel - 1];
			} else {
				hueX = D_8013DAD4_14CA84[currentLevel - 1];
			}

			if (edgeParityY == 1) {
				hueY = D_8013DAD0_14CA80[currentLevel - 1];
			} else {
				hueY = D_8013DAD8_14CA88[currentLevel - 1];
			}

			cellH = ((*tileCenter) & 0x3F) << 5;
			posZ = cellH;

			if (scrollX < 0) {
				inA = scrollX + 1;
				inB = -scrollX - 1;
				inA = (inB < inA) ? inB : inA;
				inA = (s8)inA;
				waveX = 0xFF - inA;
			} else {
				waveX = (s8)scrollX;
			}

			worldX = worldY;
			if (tilesMinX < worldX) {
				posX = worldX + waveX - 0x100;
				inA = ((*tileWest) & 0x3F) << 5;
				posZ = func_800B0A10_BF9C0(inA, cellH, waveX, 0x100);
				if (edgeParityX == 1) {
					hueX = waveX;
				} else {
					hueX = 0xFF - waveX;
				}
			} else if (worldX < (scrollX - 0x901)) {
				posX = worldX + waveX;
				inA = ((*tileEast) & 0x3F) << 5;
				posZ = func_800B0A10_BF9C0(cellH, inA, waveX, 0x100);
				if (edgeParityX == 1) {
					hueX = 0xFF - waveX;
				} else {
					hueX = waveX;
				}
			} else {
				posX = worldX;
			}

			if (scrollY < 0) {
				inA = scrollY + 1;
				inB = -scrollY - 1;
				inA = (inB < inA) ? inB : inA;
				inA = (s8)inA;
				waveY = 0xFF - inA;
			} else {
				waveY = (s8)scrollY;
			}

			if (tilesMinY < worldY) {
				posY = worldY + waveY - 0x100;
				inA = ((*tileNorth) & 0x3F) << 5;
				posZ = func_800B0A10_BF9C0(inA, posZ, waveY, 0x100);
				if (edgeParityY == 1) {
					hueY = waveY;
				} else {
					hueY = 0xFF - waveY;
				}
			} else if (worldY < (scrollY - 0x901)) {
				posY = worldY + waveY;
				inA = ((*tileSouth) & 0x3F) << 5;
				posZ = func_800B0A10_BF9C0(posZ, inA, waveY, 0x100);
				if (edgeParityY == 1) {
					hueY = 0xFF - waveY;
				} else {
					hueY = waveY;
				}
			} else {
				posY = worldY;
			}

			hueX = (hueX * 8) + D_8013DADC_14CA8C[currentLevel - 1];
			hueY = (hueY * 8) + D_8013DADC_14CA8C[currentLevel - 1];

			if ((posZ < (D_80222A70 - 0x46)) && (D_801493CC == 0)) {
				s16 dist;

				dist = ((D_80222A70 - posZ) - 0x46) / 10;
				frameAngle = (D_80052A8C * 0xE5EC + ((scrollX >> 8) + ringCol) * 0x58AC) & 0xFFFF;
				ratio = ((f64)(f32)coss(frameAngle) / 32768.0);
				posZ = (s16)(posZ - (s16)((f64)dist * ratio));
			}

			if ((D_80222A70 + 0x3C) < posZ && (D_801493CC != 0)) {
				s16 dist2;

				dist2 = ((D_80222A70 - posZ) - 0x3C) / 20;
				frameAngle = (D_80052A8C * 0xE5EC + ((scrollX >> 8) + ringCol) * 0x58AC) & 0xFFFF;
				ratio = ((f64)(f32)coss(frameAngle) / 32768.0);
				posZ = (s16)(posZ - (s16)((f64)dist2 * ratio));
			}

			tileType = func_800056D0_62D0(posX, posY) & 0xFF;
			switch (currentLevel) {
				case 1:
					if (tileType == 0x10) {
						amp = 0x1E;
						frameAngle = (D_80052A8C * 0xE5EC + ((scrollX >> 8) + ringCol) * 0x58AC) & 0xFFFF;
						ratio = ((f64)(f32)coss(frameAngle) / 32768.0);
						hueX = (s16)(hueX - (s16)((f64)amp * ratio));
						ratio = ((f64)(f32)sins(frameAngle) / 32768.0);
						hueY = (s16)(hueY - (s16)((f64)amp * ratio));
					}
					break;
				case 2:
					if (tileType == 0x10 || tileType == 0x15) {
						amp = (tileType == 0x10) ? 0x1E : 0x50;
						frameAngle = (D_80052A8C * 0xE5EC + ((scrollX >> 8) + ringCol) * 0x58AC) & 0xFFFF;
						ratio = ((f64)(f32)coss(frameAngle) / 32768.0);
						hueX = (s16)(hueX - (s16)((f64)amp * ratio));
						ratio = ((f64)(f32)sins(frameAngle) / 32768.0);
						hueY = (s16)(hueY - (s16)((f64)amp * ratio));
					}
					break;
				case 3:
					if (tileType == 0x10) {
						amp = 0x1E;
						frameAngle = (D_80052A8C * 0xE5EC + ((scrollX >> 8) + ringCol) * 0x58AC) & 0xFFFF;
						ratio = ((f64)(f32)coss(frameAngle) / 32768.0);
						hueX = (s16)(hueX - (s16)((f64)amp * ratio));
						ratio = ((f64)(f32)sins(frameAngle) / 32768.0);
						hueY = (s16)(hueY - (s16)((f64)amp * ratio));
					}
					break;
				case 4:
					if (tileType == 0x10) {
						amp = 0x1E;
						frameAngle = (D_80052A8C * 0xE5EC + ((scrollX >> 8) + ringCol) * 0x58AC) & 0xFFFF;
						ratio = ((f64)(f32)coss(frameAngle) / 32768.0);
						hueX = (s16)(hueX - (s16)((f64)amp * ratio));
						ratio = ((f64)(f32)sins(frameAngle) / 32768.0);
						hueY = (s16)(hueY - (s16)((f64)amp * ratio));
					}
					break;
				case 5:
					if (tileType == 0x10 || tileType == 0x14) {
						amp = 0x28;
						frameAngle = (D_80052A8C * 0xE5EC + ((scrollX >> 8) + ringCol) * 0x58AC) & 0xFFFF;
						ratio = ((f64)(f32)coss(frameAngle) / 32768.0);
						hueX = (s16)(hueX - (s16)((f64)amp * ratio));
						ratio = ((f64)(f32)sins(frameAngle) / 32768.0);
						hueY = (s16)(hueY - (s16)((f64)amp * ratio));
					}
					break;
			}

			if (D_8015273E != 0) {
				posZ += (D_8015273E * 4);
			}

			(*vtxPtr)->v.ob[0] = posX;
			(*vtxPtr)->v.ob[1] = posZ;
			(*vtxPtr)->v.ob[2] = posY;
			(*vtxPtr)->v.flag = 0;
			(*vtxPtr)->v.tc[0] = hueX;
			(*vtxPtr)->v.tc[1] = hueY;
			(*vtxPtr)->v.cn[0] = (u8)blur0;
			(*vtxPtr)->v.cn[1] = (u8)blur1;
			(*vtxPtr)->v.cn[2] = (u8)blur2;
			(*vtxPtr)->v.cn[3] = 0xFF;
			*vtxPtr = *vtxPtr + 1;

			mapY++;
			ringCol = (ringCol + 1) & 0xFF;
			col = (col + 1) % 0x13;
		} while (ringCol < 0x12);

		color0 = (color0 + 1) % 0x13;
		color1 = D_8014F89C;
		color2++;
		row = (row + 1) & 0xFF;
		rowWrap = row;
	} while (rowWrap < 0x12);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B5090_C4040.s")
#endif

#ifdef NON_MATCHING
s32 func_800B5EE4_C4E94(u16 arg0, s32 arg1, s32 arg2, s32 arg3, u8 arg4) {
	arg3 &= 0xFF;

	if (arg0 & 0x8000) {
		if (arg0 & 0x400) {
			D_8014F8A8[D_8014FD28].unk0 = arg1 + (arg4 * 0x120) + (arg3 * 0x10);
			D_8014F8A8[D_8014FD28].unk4 = (s8)((arg0 & 0x3C0) >> 6);
			D_8014F8A8[D_8014FD28].unk5 = (s8)((arg0 & 0x4000) >> 14);
			D_8014F8A8[D_8014FD28].unk6 = (s8)((arg0 & 0x2000) >> 13);
			D_8014FD28--;
			if (D_8014FD28 == D_8014F89A) {
				osSyncPrintf(&D_80142D30_151CE0, arg1, &D_8014FD28, arg3);
			}
			return 0;
		}

		D_8014F8A8[D_8014F89A].unk0 = arg1 + (arg4 * 0x120) + (arg3 * 0x10);
		D_8014F8A8[D_8014F89A].unk4 = (s8)((arg0 & 0x3C0) >> 6);
		D_8014F8A8[D_8014F89A].unk5 = (s8)((arg0 & 0x4000) >> 14);
		D_8014F8A8[D_8014F89A].unk6 = (s8)((arg0 & 0x2000) >> 13);
		D_8014F89A++;
		if (D_8014FD28 == D_8014F89A) {
			osSyncPrintf(&D_80142D58_151D08, arg1, &D_8014FD28, arg3);
		}
		return 0;
	}

	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B5EE4_C4E94.s")
#endif

// CURRENT(128303)
#ifdef NON_MATCHING
void func_800B604C_C4FFC(s32 arg0, s16 arg1, s16 arg2, s16 arg3, s32 arg4, s32 arg5, s32 arg6) {
	struct {
		s16 counts[8];
		s16 tiles[8][16];
		s16 order[8][16];
	} sp12C;
	Vtx *srcBase;
	Vtx *copiedBase;
	s16 width;
	s16 height;
	s16 x;
	s16 y;
	s32 bucket;
	s32 modeByte;

	for (bucket = 0; bucket < 8; bucket++) {
		sp12C.counts[bucket] = -1;
	}

	srcBase = (Vtx *)arg0;

	if ((arg1 == 0) && (arg2 == 0) && (arg3 == 4) && (arg4 == 4)) {
		for (y = 0; y < 5; y++) {
			for (x = 0; x < 5; x++) {
				D_8005BB34[0] = srcBase[(y * 0x12) + x];
				D_8005BB34++;
			}
		}

		D_8005BB2C->words.w0 = 0x0408658F;
		D_8005BB2C->words.w1 = (u32)(D_8005BB34 - 0x19);
		D_8005BB2C++;

		copiedBase = D_8005BB34 - 0x19;
		modeByte = D_8014F857;

		for (y = 0; y < 4; y++) {
			for (x = 0; x < 4; x++) {
				u16 tile = ((s16 *)D_8014F8A0)[(arg5 + (y << 8) + x) & 0xFFFF];
				Vtx *v = copiedBase + (y * 5) + x;

				if ((modeByte != 1) || func_800B960C_C85BC(v[0].v.ob[0], v[0].v.ob[2], 0x100, 0x100)) {
					if (func_800B5EE4_C4E94(tile, arg0, y & 0xFF, x & 0xFF, (u8)arg6)) {
						s16 b = ((u8)((tile & 0x3C0) >> 6)) / 2;
						s16 idx = ++sp12C.counts[b];

						sp12C.tiles[b][idx] = tile;
						sp12C.order[b][idx] = (y * 5) + x;
					}
				}
			}
		}

		for (bucket = 0; bucket < 8; bucket++) {
			s16 i;
			s16 count = sp12C.counts[bucket];

			if (count < 0) {
				continue;
			}

			D_8005BB2C->words.w0 = 0xFD500000;
			D_8005BB2C->words.w1 = (((u32)&D_80224E80[(((((u8)arg6) * 8) + bucket) << 11)]) & 0x1FFFFFFF);
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF5500000;
			D_8005BB2C->words.w1 = 0x07000000;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xE6000000;
			D_8005BB2C->words.w1 = 0;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF3000000;
			D_8005BB2C->words.w1 = 0x073FF200;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xE7000000;
			D_8005BB2C->words.w1 = 0;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF5480800;
			D_8005BB2C->words.w1 = 0;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF2000000;
			D_8005BB2C->words.w1 = 0x0007C0FC;
			D_8005BB2C++;

			for (i = 0; i <= count; i++) {
				u16 tile = (u16)sp12C.tiles[bucket][i];
				s16 base = (sp12C.order[bucket][i] + 4) * 2;
				u32 t = ((u8)((tile & 0x3C0) >> 6)) & 1;

				D_8005BB2C->words.w0 = 0xE8000000;
				D_8005BB2C->words.w1 = 0;
				D_8005BB2C++;
				D_8005BB2C->words.w0 = 0xF5480800 | ((t << 7) & 0x1FF);
				D_8005BB2C->words.w1 = 0x00014050 | ((((tile & 0x2000) >> 13) & 3) << 18) | ((((tile & 0x4000) >> 14) & 3) << 8);
				D_8005BB2C++;
				D_8005BB2C->words.w0 = 0xB1000000 | (((base + 2) & 0xFF) << 16) | ((base & 0xFF) << 8) | ((base + 0xA) & 0xFF);
				D_8005BB2C->words.w1 = (((base + 2) & 0xFF) << 16) | (((base + 0xA) & 0xFF) << 8) | ((base + 0xC) & 0xFF);
				D_8005BB2C++;
			}
		}
		return;
	}

	width = arg3 - arg1;
	height = arg4 - arg2;

	if ((width * height) < 0xC) {
		s16 cols = width + 1;
		s16 rows = height + 1;
		s32 total = rows * cols;

		for (y = 0; y < rows; y++) {
			for (x = 0; x < cols; x++) {
				D_8005BB34[0] = srcBase[(y * 0x12) + x];
				D_8005BB34++;
			}
		}

		D_8005BB2C->words.w0 = 0x04080000 | ((((total << 10) | ((total << 4) - 1)) & 0xFFFF));
		D_8005BB2C->words.w1 = (u32)(D_8005BB34 - total);
		D_8005BB2C++;
		copiedBase = D_8005BB34 - total;
		modeByte = (u8)D_8014F854;

		for (y = 0; y < height; y++) {
			for (x = 0; x < width; x++) {
				u16 tile = ((s16 *)D_8014F8A0)[(arg5 + (y << 8) + x) & 0xFFFF];
				Vtx *v = copiedBase + (y * cols) + x;

				if ((modeByte != 1) || func_800B960C_C85BC(v[0].v.ob[0], v[0].v.ob[2], 0x100, 0x100)) {
					if (func_800B5EE4_C4E94(tile, arg0, y & 0xFF, x & 0xFF, (u8)arg6)) {
						s16 b = ((u8)((tile & 0x3C0) >> 6)) / 2;
						s16 idx = ++sp12C.counts[b];

						sp12C.tiles[b][idx] = tile;
						sp12C.order[b][idx] = (y * cols) + x;
					}
				}
			}
		}

		for (bucket = 0; bucket < 8; bucket++) {
			s16 i;
			s16 count = sp12C.counts[bucket];

			if (count < 0) {
				continue;
			}

			D_8005BB2C->words.w0 = 0xFD500000;
			D_8005BB2C->words.w1 = (((u32)&D_80224E80[(((((u8)arg6) * 8) + bucket) << 11)]) & 0x1FFFFFFF);
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF5500000;
			D_8005BB2C->words.w1 = 0x07000000;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xE6000000;
			D_8005BB2C->words.w1 = 0;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF3000000;
			D_8005BB2C->words.w1 = 0x073FF200;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xE7000000;
			D_8005BB2C->words.w1 = 0;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF5480800;
			D_8005BB2C->words.w1 = 0;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF2000000;
			D_8005BB2C->words.w1 = 0x0007C0FC;
			D_8005BB2C++;

			for (i = 0; i <= count; i++) {
				u16 tile = (u16)sp12C.tiles[bucket][i];
				s16 base = (sp12C.order[bucket][i] + 4) * 2;
				s16 edge = (sp12C.order[bucket][i] + 4 + cols) * 2;
				u32 t = ((u8)((tile & 0x3C0) >> 6)) & 1;

				D_8005BB2C->words.w0 = 0xF5480800 | ((t << 7) & 0x1FF);
				D_8005BB2C->words.w1 = 0x00014050 | ((((tile & 0x2000) >> 13) & 3) << 18) | ((((tile & 0x4000) >> 14) & 3) << 8);
				D_8005BB2C++;
				D_8005BB2C->words.w0 = 0xB1000000 | (((base + 2) & 0xFF) << 16) | ((base & 0xFF) << 8) | (edge & 0xFF);
				D_8005BB2C->words.w1 = (((base + 2) & 0xFF) << 16) | ((edge & 0xFF) << 8) | ((edge + 2) & 0xFF);
				D_8005BB2C++;
			}
		}
		return;
	}

	if (height == 4) {
		s16 cols = 4;
		s16 rows = 5;
		s32 total = rows * cols;

		for (y = 0; y < rows; y++) {
			for (x = 0; x < cols; x++) {
				D_8005BB34[0] = srcBase[(y * 0x12) + x];
				D_8005BB34++;
			}
		}

		D_8005BB2C->words.w0 = 0x04080000 | ((((total << 10) | ((total << 4) - 1)) & 0xFFFF));
		D_8005BB2C->words.w1 = (u32)(D_8005BB34 - total);
		D_8005BB2C++;
		copiedBase = D_8005BB34 - total;
		modeByte = (u8)D_8014F854;

		for (y = 0; y < 4; y++) {
			for (x = 0; x < 3; x++) {
				u16 tile = ((s16 *)D_8014F8A0)[(arg5 + (y << 8) + x) & 0xFFFF];
				Vtx *v = copiedBase + (y * cols) + x;

				if ((modeByte != 1) || func_800B960C_C85BC(v[0].v.ob[0], v[0].v.ob[2], 0x100, 0x100)) {
					if (func_800B5EE4_C4E94(tile, arg0, y & 0xFF, x & 0xFF, (u8)arg6)) {
						s16 b = ((u8)((tile & 0x3C0) >> 6)) / 2;
						s16 idx = ++sp12C.counts[b];

						sp12C.tiles[b][idx] = tile;
						sp12C.order[b][idx] = (y * cols) + x;
					}
				}
			}
		}

		for (bucket = 0; bucket < 8; bucket++) {
			s16 i;
			s16 count = sp12C.counts[bucket];

			if (count < 0) {
				continue;
			}

			D_8005BB2C->words.w0 = 0xFD500000;
			D_8005BB2C->words.w1 = (((u32)&D_80224E80[(((((u8)arg6) * 8) + bucket) << 11)]) & 0x1FFFFFFF);
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF5500000;
			D_8005BB2C->words.w1 = 0x07000000;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xE6000000;
			D_8005BB2C->words.w1 = 0;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF3000000;
			D_8005BB2C->words.w1 = 0x073FF200;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xE7000000;
			D_8005BB2C->words.w1 = 0;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF5480800;
			D_8005BB2C->words.w1 = 0;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF2000000;
			D_8005BB2C->words.w1 = 0x0007C0FC;
			D_8005BB2C++;

			for (i = 0; i <= count; i++) {
				u16 tile = (u16)sp12C.tiles[bucket][i];
				s16 base = (sp12C.order[bucket][i] + 4) * 2;
				s16 edge = (sp12C.order[bucket][i] + 8) * 2;
				u32 t = ((u8)((tile & 0x3C0) >> 6)) & 1;

				D_8005BB2C->words.w0 = 0xF5480800 | ((t << 7) & 0x1FF);
				D_8005BB2C->words.w1 = 0x00014050 | ((((tile & 0x2000) >> 13) & 3) << 18) | ((((tile & 0x4000) >> 14) & 3) << 8);
				D_8005BB2C++;
				D_8005BB2C->words.w0 = 0xB1000000 | (((base + 2) & 0xFF) << 16) | ((base & 0xFF) << 8) | (edge & 0xFF);
				D_8005BB2C->words.w1 = (((base + 2) & 0xFF) << 16) | ((edge & 0xFF) << 8) | ((edge + 2) & 0xFF);
				D_8005BB2C++;
			}
		}
		return;
	}

	else {
		s16 cols = 5;
		s16 rows = 4;
		s32 total = rows * cols;

		for (y = 0; y < rows; y++) {
			for (x = 0; x < cols; x++) {
				D_8005BB34[0] = srcBase[(y * 0x12) + x];
				D_8005BB34++;
			}
		}

		D_8005BB2C->words.w0 = 0x04080000 | ((((total << 10) | ((total << 4) - 1)) & 0xFFFF));
		D_8005BB2C->words.w1 = (u32)(D_8005BB34 - total);
		D_8005BB2C++;
		copiedBase = D_8005BB34 - total;
		modeByte = (u8)D_8014F854;

		for (y = 0; y < 3; y++) {
			for (x = 0; x < 4; x++) {
				u16 tile = ((s16 *)D_8014F8A0)[(arg5 + (y << 8) + x) & 0xFFFF];
				Vtx *v = copiedBase + (y * cols) + x;

				if ((modeByte != 1) || func_800B960C_C85BC(v[0].v.ob[0], v[0].v.ob[2], 0x100, 0x100)) {
					if (func_800B5EE4_C4E94(tile, arg0, y & 0xFF, x & 0xFF, (u8)arg6)) {
						s16 b = ((u8)((tile & 0x3C0) >> 6)) / 2;
						s16 idx = ++sp12C.counts[b];

						sp12C.tiles[b][idx] = tile;
						sp12C.order[b][idx] = (y * cols) + x;
					}
				}
			}
		}

		for (bucket = 0; bucket < 8; bucket++) {
			s16 i;
			s16 count = sp12C.counts[bucket];

			if (count < 0) {
				continue;
			}

			D_8005BB2C->words.w0 = 0xFD500000;
			D_8005BB2C->words.w1 = (((u32)&D_80224E80[(((((u8)arg6) * 8) + bucket) << 11)]) & 0x1FFFFFFF);
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF5500000;
			D_8005BB2C->words.w1 = 0x07000000;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xE6000000;
			D_8005BB2C->words.w1 = 0;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF3000000;
			D_8005BB2C->words.w1 = 0x073FF200;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xE7000000;
			D_8005BB2C->words.w1 = 0;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF5480800;
			D_8005BB2C->words.w1 = 0;
			D_8005BB2C++;
			D_8005BB2C->words.w0 = 0xF2000000;
			D_8005BB2C->words.w1 = 0x0007C0FC;
			D_8005BB2C++;

			for (i = 0; i <= count; i++) {
				u16 tile = (u16)sp12C.tiles[bucket][i];
				s16 base = (sp12C.order[bucket][i] + 4) * 2;
				s16 edge = (sp12C.order[bucket][i] + 9) * 2;
				u32 t = ((u8)((tile & 0x3C0) >> 6)) & 1;

				D_8005BB2C->words.w0 = 0xF5480800 | ((t << 7) & 0x1FF);
				D_8005BB2C->words.w1 = 0x00014050 | ((((tile & 0x2000) >> 13) & 3) << 18) | ((((tile & 0x4000) >> 14) & 3) << 8);
				D_8005BB2C++;
				D_8005BB2C->words.w0 = 0xB1000000 | (((base + 2) & 0xFF) << 16) | ((base & 0xFF) << 8) | (edge & 0xFF);
				D_8005BB2C->words.w1 = (((base + 2) & 0xFF) << 16) | ((edge & 0xFF) << 8) | ((edge + 2) & 0xFF);
				D_8005BB2C++;
			}
		}
		return;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B604C_C4FFC.s")
#endif

// Draw rotated tiles e.g. roads
// CURRENT(94016)
#ifdef NON_MATCHING
void func_800B753C_C64EC(void) {
	struct {
		s16 counts[8];
		s16 indices[8][0x121];
	} sp11C;
	s32 group;

	for (group = 0; group < 8; group++) {
		sp11C.counts[group] = -1;
	}

	D_8005BB2C->words.w0 = 0xFD100000;
	D_8005BB2C->words.w1 = (u32)(D_80254E80 + 0x200) & 0x1FFFFFFF;
	D_8005BB2C++;
	D_8005BB2C->words.w0 = 0xE8000000;
	D_8005BB2C->words.w1 = 0;
	D_8005BB2C++;
	D_8005BB2C->words.w0 = 0xF5000100;
	D_8005BB2C->words.w1 = 0x07000000;
	D_8005BB2C++;
	D_8005BB2C->words.w0 = 0xE6000000;
	D_8005BB2C->words.w1 = 0;
	D_8005BB2C++;
	D_8005BB2C->words.w0 = 0xF0000000;
	D_8005BB2C->words.w1 = 0x073FC000;
	D_8005BB2C++;
	D_8005BB2C->words.w0 = 0xE7000000;
	D_8005BB2C->words.w1 = 0;
	D_8005BB2C++;
	D_8005BB2C->words.w0 = 0xE6000000;
	D_8005BB2C->words.w1 = 0;
	D_8005BB2C++;

	if ((D_8014FD28 + 1) < 0x90) {
		s32 i;

		for (i = D_8014FD28 + 1; i < 0x90; i++) {
			s32 bucket = ((u8)D_8014F8A8[i].unk4) / 2;

			sp11C.counts[bucket]++;
			sp11C.indices[bucket][sp11C.counts[bucket]] = i;
		}
	}

	D_8005BB2C->words.w0 = 0xE8000000;
	D_8005BB2C->words.w1 = 0;
	D_8005BB2C++;

	for (group = 0; group < 8; group++) {
		s16 lineCount = sp11C.counts[group] + 1;
		s16 rowOffset = 0;

		if (sp11C.counts[group] == -1) {
			continue;
		}

		D_8005BB2C->words.w0 = 0xFD500000;
		D_8005BB2C->words.w1 = ((u32)(D_80224E80 + (group << 11) + 0x4000)) & 0x1FFFFFFF;
		D_8005BB2C++;
		D_8005BB2C->words.w0 = 0xF5500000;
		D_8005BB2C->words.w1 = 0x07000000;
		D_8005BB2C++;
		D_8005BB2C->words.w0 = 0xE6000000;
		D_8005BB2C->words.w1 = 0;
		D_8005BB2C++;
		D_8005BB2C->words.w0 = 0xF3000000;
		D_8005BB2C->words.w1 = 0x073FF200;
		D_8005BB2C++;
		D_8005BB2C->words.w0 = 0xE7000000;
		D_8005BB2C->words.w1 = 0;
		D_8005BB2C++;
		D_8005BB2C->words.w0 = 0xF5480800;
		D_8005BB2C->words.w1 = 0;
		D_8005BB2C++;
		D_8005BB2C->words.w0 = 0xF2000000;
		D_8005BB2C->words.w1 = 0x0007C0FC;
		D_8005BB2C++;

		while (lineCount > 0) {
			s16 run = lineCount;
			s32 i;
			u8 v0 = 0;
			u8 v1 = 4;
			u8 v2 = 2;
			u8 v3 = 6;

			if (run >= 9) {
				run = 8;
			}

			for (i = 0; i < run; i++) {
				Vtx *src = D_8014F8A8[sp11C.indices[group][rowOffset + i]].unk0;

				D_8005BB34[0] = src[0];
				D_8005BB34[1] = src[1];
				D_8005BB34[2] = src[0x12];
				D_8005BB34[3] = src[0x13];
				D_8005BB34 += 5;
			}

			D_8005BB2C->words.w0 = 0x04000000 | ((((run * 4) << 10) | ((run * 0x40) - 1)) & 0xFFFF);
			D_8005BB2C->words.w1 = (u32)(D_8005BB34 - (run * 4));
			D_8005BB2C++;

			for (i = 0; i < run; i++) {
				Unk800B753CEntry *entry = &D_8014F8A8[sp11C.indices[group][rowOffset + i]];

				D_8005BB2C->words.w0 = 0xE8000000;
				D_8005BB2C->words.w1 = 0;
				D_8005BB2C++;
				D_8005BB2C->words.w0 = 0xF5480800 | ((((u8)entry->unk4 & 1) << 7) & 0x1FF);
				D_8005BB2C->words.w1 = 0x00014050 | ((((u8)entry->unk5) & 3) << 8) | ((((u8)entry->unk6) & 3) << 18);
				D_8005BB2C++;
				D_8005BB2C->words.w0 = 0xE7000000;
				D_8005BB2C->words.w1 = 0;
				D_8005BB2C++;
				D_8005BB2C->words.w0 = 0xB1000000 | (v0 << 16) | (v1 << 8) | v2;
				D_8005BB2C->words.w1 = (v2 << 16) | (v1 << 8) | v3;
				D_8005BB2C++;

				v0 += 8;
				v1 += 8;
				v2 += 8;
				v3 += 8;
			}

			if (lineCount >= 9) {
				lineCount -= 8;
			} else {
				lineCount = 0;
			}

			rowOffset += 8;
		}
	}

	D_8005BB2C->words.w0 = 0xE7000000;
	D_8005BB2C->words.w1 = 0;
	D_8005BB2C++;
	D_8005BB2C->words.w0 = 0xFD100000;
	D_8005BB2C->words.w1 = (u32)D_80254E80 & 0x1FFFFFFF;
	D_8005BB2C++;
	D_8005BB2C->words.w0 = 0xE8000000;
	D_8005BB2C->words.w1 = 0;
	D_8005BB2C++;
	D_8005BB2C->words.w0 = 0xF5000100;
	D_8005BB2C->words.w1 = 0x07000000;
	D_8005BB2C++;
	D_8005BB2C->words.w0 = 0xE6000000;
	D_8005BB2C->words.w1 = 0;
	D_8005BB2C++;
	D_8005BB2C->words.w0 = 0xF0000000;
	D_8005BB2C->words.w1 = 0x073FC000;
	D_8005BB2C++;
	D_8005BB2C->words.w0 = 0xE7000000;
	D_8005BB2C->words.w1 = 0;
	D_8005BB2C++;
	D_8005BB2C->words.w0 = 0xE6000000;
	D_8005BB2C->words.w1 = 0;
	D_8005BB2C++;

	for (group = 0; group < 8; group++) {
		sp11C.counts[group] = -1;
	}

	if ((s32)D_8014F89A > 0) {
		s32 i;

		for (i = 0; i < (s32)D_8014F89A; i++) {
			s32 bucket = ((u8)D_8014F8A8[i].unk4) / 2;

			sp11C.counts[bucket]++;
			sp11C.indices[bucket][sp11C.counts[bucket]] = i;
		}
	}

	for (group = 0; group < 8; group++) {
		s16 lineCount = sp11C.counts[group] + 1;
		s16 rowOffset = 0;

		if (sp11C.counts[group] == -1) {
			continue;
		}

		D_8005BB2C->words.w0 = 0xFD500000;
		D_8005BB2C->words.w1 = ((u32)(D_80224E80 + (group << 11))) & 0x1FFFFFFF;
		D_8005BB2C++;
		D_8005BB2C->words.w0 = 0xF5500000;
		D_8005BB2C->words.w1 = 0x07000000;
		D_8005BB2C++;
		D_8005BB2C->words.w0 = 0xE6000000;
		D_8005BB2C->words.w1 = 0;
		D_8005BB2C++;
		D_8005BB2C->words.w0 = 0xF3000000;
		D_8005BB2C->words.w1 = 0x073FF200;
		D_8005BB2C++;
		D_8005BB2C->words.w0 = 0xE7000000;
		D_8005BB2C->words.w1 = 0;
		D_8005BB2C++;
		D_8005BB2C->words.w0 = 0xF5480800;
		D_8005BB2C->words.w1 = 0;
		D_8005BB2C++;
		D_8005BB2C->words.w0 = 0xF2000000;
		D_8005BB2C->words.w1 = 0x0007C0FC;
		D_8005BB2C++;

		while (lineCount > 0) {
			s16 run = lineCount;
			s32 i;
			u8 v0 = 0;
			u8 v1 = 4;
			u8 v2 = 2;
			u8 v3 = 6;

			if (run >= 9) {
				run = 8;
			}

			for (i = 0; i < run; i++) {
				Vtx *src = D_8014F8A8[sp11C.indices[group][rowOffset + i]].unk0;

				D_8005BB34[0] = src[0];
				D_8005BB34[1] = src[1];
				D_8005BB34[2] = src[0x12];
				D_8005BB34[3] = src[0x13];
				D_8005BB34 += 5;
			}

			D_8005BB2C->words.w0 = 0x04000000 | ((((run * 4) << 10) | ((run * 0x40) - 1)) & 0xFFFF);
			D_8005BB2C->words.w1 = (u32)(D_8005BB34 - (run * 4));
			D_8005BB2C++;

			for (i = 0; i < run; i++) {
				Unk800B753CEntry *entry = &D_8014F8A8[sp11C.indices[group][rowOffset + i]];

				D_8005BB2C->words.w0 = 0xE8000000;
				D_8005BB2C->words.w1 = 0;
				D_8005BB2C++;
				D_8005BB2C->words.w0 = 0xF5480800 | ((((u8)entry->unk4 & 1) << 7) & 0x1FF);
				D_8005BB2C->words.w1 = 0x00014050 | ((((u8)entry->unk5) & 3) << 8) | ((((u8)entry->unk6) & 3) << 18);
				D_8005BB2C++;
				D_8005BB2C->words.w0 = 0xE7000000;
				D_8005BB2C->words.w1 = 0;
				D_8005BB2C++;
				D_8005BB2C->words.w0 = 0xB1000000 | (v0 << 16) | (v1 << 8) | v2;
				D_8005BB2C->words.w1 = (v2 << 16) | (v1 << 8) | v3;
				D_8005BB2C++;

				v0 += 8;
				v1 += 8;
				v2 += 8;
				v3 += 8;
			}

			if (lineCount >= 9) {
				lineCount -= 8;
			} else {
				lineCount = 0;
			}

			rowOffset += 8;
		}
	}

	D_8005BB2C->words.w0 = 0xE7000000;
	D_8005BB2C->words.w1 = 0;
	D_8005BB2C++;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B753C_C64EC.s")
#endif

#ifdef NON_MATCHING
s32 func_800B84D0_C7480(s16 arg0, s16 arg1) {
	u32 temp_v0;
	u32 temp_a3;
	u32 var_v1;
	u32 var_a2;
	s32 var_t0;
	s32 var_t1;
	s32 var_t2;

	temp_v0 = arg0 & 0xFF;
	temp_a3 = arg1 & 0xFF;
	var_v1 = temp_v0;
	var_a2 = temp_a3;
	if ((u32)(temp_v0 + temp_a3) < 0x100U) {
		var_t0 = D_80052A94[arg1 >> 8].unk0[arg0 >> 8] & 0x3F;
		var_t1 = (D_80052A94[arg1 >> 8].unk0[(arg0 >> 8) + 1] & 0x3F) - var_t0;
		var_t2 = (D_80052A94[(arg1 >> 8) + 1].unk0[arg0 >> 8] & 0x3F) - var_t0;
	} else {
		var_v1 = 0x100 - temp_v0;
		var_a2 = 0x100 - temp_a3;
		var_t0 = D_80052A94[(arg1 >> 8) + 1].unk0[(arg0 >> 8) + 1] & 0x3F;
		var_t1 = (D_80052A94[(arg1 >> 8) + 1].unk0[arg0 >> 8] & 0x3F) - var_t0;
		var_t2 = (D_80052A94[arg1 >> 8].unk0[(arg0 >> 8) + 1] & 0x3F) - var_t0;
	}
	return ((var_t0 << 8) + (var_t1 * var_v1) + (var_t2 * var_a2)) << 5;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B84D0_C7480.s")
#endif

s32 func_800B85CC_C757C(s16 arg0, s16 arg1) {
	Unk8003E290Entry *sp1C;

	sp1C = &D_8003E290[func_800056D0_62D0(arg0, arg1)];
	return func_800B84D0_C7480(arg0, arg1) +
		   (s32)((s32)((arg0 >> (((s32)(arg1 >> 4) << 16) + 4)) * 0x41C64E6D + 0x3039) >> 16) % sp1C->unk8 -
		   sp1C->unkA;
}

#ifdef NON_MATCHING
s16 func_800B8688_C7638(s8 arg0, s8 arg1) {
	s16 temp_a2;
	s16 temp_t0;
	s16 temp_t4;
	s16 temp_t5;
	s16 temp_t7;
	s16 var_v1;
	s16 var_a0;
	s16 var_t1;
	s16 *temp_a1;
	s16 *temp_t2;

	temp_a2 = arg0 + 0x80;
	var_v1 = temp_a2;
	temp_t0 = arg1 + 0x80;
	temp_t2 = &D_8014F8A0[temp_t0][temp_a2];
	temp_t7 = (u16)temp_t2[0] & 0x3F;
	temp_t5 = (u16)temp_t2[1] & 0x3F;
	if (temp_t7 < temp_t5) {
		var_a0 = temp_t7;
	} else {
		var_a0 = temp_t5;
	}
	temp_a1 = &D_8014F8A0[temp_t0][temp_a2];
	var_t1 = (u16)temp_a1[0x100] & 0x3F;
	temp_t4 = (u16)temp_a1[0x101] & 0x3F;
	if (var_t1 >= temp_t4) {
		var_t1 = temp_t4;
	}
	if (var_a0 < var_t1) {
		return var_a0;
	}
	var_v1 = var_t1;
	return var_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B8688_C7638.s")
#endif

// CURRENT(13990)
#ifdef NON_MATCHING
void func_800B879C_C774C(void) {
	typedef union {
		u16 h;
		struct {
			u8 hi;
			u8 lo;
		} b;
	} TileWord;

	s16 temp_s2;
	s32 temp_a0;
	s32 temp_t2;
	s32 temp_t0;
	s32 temp_t8;
	s32 temp_v0_2;
	s32 temp_v0_3;
	s32 temp_v1;
	s32 var_s1;
	s32 var_s1_2;
	s32 var_s3;
	s32 temp_a2;
	s32 temp_a3;
	u8* var_v1;
	u8 temp_t1;
	u8 var_t5;
	TileWord* var_s0;
	VehicleInstance* temp_v0;
	f32 two;

	extern f64 D_80142E40_151DF0;

	if (gameplayMode != 2) {
		if (D_8014F838 == 1) {
			D_80222A70 -= D_80222A70 >> 2;
		}

		if (D_80158FD8 != 0) {
			var_s1 = D_80158FD8 - 1;
			var_v1 = &D_80158E80[var_s1];
			do {
				temp_t1 = *var_v1;
				var_v1--;
				temp_v0 = &vehicleInstances[temp_t1];
				if ((((temp_v0->unk0 >> 8) - D_8014F83C) < 0x60) && (((temp_v0->unk4 >> 8) - D_8014F83E) < 0x60)) {
					temp_v0->unk20 |= 1;
				}
			} while (var_s1-- != 0);
		}

		var_s0 = (TileWord*)((u8*)D_80052A94 + (D_8014F83E << 9) + (D_8014F83C << 1));
		temp_s2 = (s16)(s32)D_8014F84C;
		two = 2.0f;

		if (D_8014F842 != 0) {
			var_s3 = D_8014F842 - 1;
			do {
				if (D_8014F840 != 0) {
					var_s1_2 = D_8014F840 - 1;
					do {
						temp_a2 = D_8014F846 + var_s1_2;
						temp_v0_2 = temp_a2 - 0x30;
						temp_a3 = var_s3 + D_8014F848;
						temp_v1 = temp_a3 - 0x30;
						temp_a0 = (temp_v0_2 * temp_v0_2) + (temp_v1 * temp_v1);
						if (temp_a0 < temp_s2) {
							if (((f32)temp_s2 - (D_8014F850 * two)) < (f32)temp_a0) {
								temp_t0 = (s32)(D_8014F834 + ((0x3F - D_8014F834) * ((f32)D_8014F830 / (f32)D_8014F832)));
								var_t5 = (temp_t0 & 0x3F) | (var_s0->b.lo & 0xC0);
							} else {
								temp_v0_3 = func_8011D260_12C210((s8)temp_a2, (s8)temp_a3);
								if (temp_v0_3 != -1) {
									func_8011C080_12B030(temp_v0_3 & 0xFF);
								}
								temp_t8 = var_s0->h & 0x3F;
								var_t5 = ((temp_t8 - (temp_t8 >> 2)) & 0x3F) | (var_s0->b.lo & 0xC0);
							}
							var_s0->b.lo = var_t5;
						}
						var_s0++;
					} while (var_s1_2-- != 0);
				}
				var_s0 += D_8014F844;
			} while (var_s3-- != 0);
		}

		D_8014F84C += D_8014F850;
		D_8014F850 = (f32)((f64)D_8014F850 * D_80142E40_151DF0);
		D_8014F830 += 1;

		func_800B4050_C3000(D_8014F89C, D_8014F89D, D_801FEA30, 0);
		func_80076FCC_85F7C(D_80149434, D_80149436);

		if (D_8014F830 >= D_8014F832) {
			func_800B32AC_C225C(D_801FEA30);
			temp_t2 = currentLevel - 1;
			D_800313F8 = D_80031634[temp_t2 * 2];
			D_800313E8 = D_80031620[temp_t2].unk0;
			D_8014F838 = 0;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B879C_C774C.s")
#endif

#ifdef NON_MATCHING
void func_800B8C2C_C7BDC(s16 arg0, s16 arg1, s32 arg2) {
	D_8014F830 = 0;
	D_8014F832 = 0x76;
	D_8014F84C = 0.0f;
	arg0++;
	D_8014F850 = D_80142E48_151DF8;
	D_8014F834 = arg2;
	D_8014F83C = arg0 - 0x30;
	arg1++;
	D_8014F840 = 0x60;
	D_8014F842 = 0x60;
	D_8014F846 = 0;
	D_8014F848 = 0;
	D_8014F83E = arg1 - 0x30;
	if (D_8014F83C < -0x80) {
		D_8014F83C = -0x80;
		D_8014F840 = arg0 + 0xB0;
	}
	if (D_8014F83C >= 0x20) {
		D_8014F840 = 0x80 - D_8014F83C;
		D_8014F846 = 0x60 - D_8014F840;
	}
	if (D_8014F83E < -0x80) {
		D_8014F83E = -0x80;
		D_8014F842 = arg1 + 0xB0;
	}
	if (D_8014F83E >= 0x20) {
		D_8014F842 = 0x80 - D_8014F83E;
		D_8014F848 = 0x60 - D_8014F842;
	}
	D_8014F844 = 0x100 - D_8014F840;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B8C2C_C7BDC.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(1525) */
void func_800B8D80_C7D30(s16 arg0, s16 arg1, s16 arg2, s32 arg3) {
	s32 temp_v1;
	s32 temp_v1_2;
	s32 temp_v1_3;
	s32 temp_v1_4;
	s16 var_a0;
	s16 var_s0;
	s16 var_s1;
	s16 var_s5;
	s16 var_s6;
	s16 var_s7;
	s32 temp_t2;
	s32 temp_t7;

	(void)arg3;
	temp_t2 = (arg0 + 0x80) >> 8;
	temp_v1 = (s16)temp_t2 - arg2;
	if (temp_v1 < -0x7F) {
		var_a0 = -0x7F;
	} else {
		var_a0 = temp_v1;
	}
	temp_v1_2 = (s16)temp_t2 + arg2;
	if (temp_v1_2 >= 0x81) {
		var_s7 = 0x80;
	} else {
		var_s7 = temp_v1_2;
	}
	temp_t7 = (arg1 + 0x80) >> 8;
	temp_v1_3 = (s16)temp_t7 - arg2;
	if (temp_v1_3 < -0x7F) {
		var_s6 = -0x7F;
	} else {
		var_s6 = temp_v1_3;
	}
	temp_v1_4 = (s16)temp_t7 + arg2;
	if (temp_v1_4 >= 0x81) {
		var_s5 = 0x80;
	} else {
		var_s5 = temp_v1_4;
	}
	var_s1 = var_a0;
	if (var_s7 >= var_a0) {
		do {
			var_s0 = var_s6;
			if (var_s5 >= var_s6) {
				do {
					func_800B415C_C310C(var_s1, var_s0);
					var_s0 += 1;
				} while (var_s5 >= var_s0);
			}
			var_s1 += 1;
		} while (var_s7 >= var_s1);
	}
	func_800B4050_C3000(D_8014F89C, D_8014F89D, &D_801FEA30, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B8D80_C7D30.s")
#endif

// CURRENT
#ifdef NON_MATCHING
void func_800B8F30_C7EE0(s16 arg0, s16 arg1, s32 arg2) {
	u8 mode;
	u16 *cell;
	u8 *cellBytes;
	s32 temp;

	if (D_8014F838 != 0) {
		return;
	}

	mode = arg2 & 0xFF;
	osSyncPrintf(&D_80142D80_151D30, mode);

	if (mode == 0) {
		func_800B8C2C_C7BDC(arg0, arg1, 0x1F);
		D_8014F832 = 0x12;
		D_8014F850 = D_80142E4C_151DFC;
		D_8014F838 = 3;
		return;
	}

	if (mode == 1) {
		if (currentLevel != LEVEL_GREECE) {
			return;
		}

		if (func_800056D0_62D0(arg0 << 8, arg1 << 8) != 0x12) {
			return;
		}

		cell = &D_80052A94[arg1].unk0[arg0];
		*cell = (*cell & 0xFC3F) | 0x2C0;

		cellBytes = (u8 *)cell;
		cellBytes[0] &= 0xBF;
		cellBytes[0] &= 0xDF;
		cellBytes[0] |= 0x80;
		cellBytes[0] &= 0xFB;
		cellBytes[1] = (cellBytes[1] & 0xC0) | 0x1B;
		cellBytes[3] = (cellBytes[3] & 0xC0) | 0x1B;
		cellBytes[0x201] = (cellBytes[0x201] & 0xC0) | 0x1B;
		cellBytes[0x203] = (cellBytes[0x203] & 0xC0) | 0x1B;

		func_800B4050_C3000(D_8014F89C, D_8014F89D, &D_801FEA30, 0);
		return;
	}

	if (mode == 2) {
		temp = func_800B84D0_C7480(D_80052B34->unk0, D_80052B34->unk4);
		func_800B8C2C_C7BDC(arg0, arg1, (s16)(temp >> 8));
		D_8014F832 = 2;
		D_8014F850 = 1.0f;
		D_8014F838 = 5;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B8F30_C7EE0.s")
#endif

void func_800B91C8_C8178(s16 arg0, s16 arg1, s32 arg2) {
	func_800B8C2C_C7BDC(arg0, arg1, 0x1F);
	D_8014F850 = 2.0f;
	D_8014F832 = 0x46;
	D_8014F838 = 1;
}

// CURRENT(3309)
#ifdef NON_MATCHING
s32 func_800B9228_C81D8(s32 arg0, s16 arg1, s32 arg2, s16 arg3, s16 arg4) {
	s16 tempT0;
	s16 tempV1;
	s16 tempA1;
	s32 tempA0;
	s32 tempA2;
	s32 tempV0;
	s32 tempV1_2;

	tempT0 = D_8014FD2A >> 1;
	if ((D_80157590 != 0) || (D_8014FD2A == -0x8000U)) {
		return 1;
	}

	tempA2 = arg1 - arg3;
	tempA0 = (s16)arg0 - (s16)arg2;
	tempV1 = func_80003824_4424((f32) tempA0, (f32) tempA2);
	tempA1 = arg4;

	if ((tempA1 < -0x4000) || (tempA1 >= 0x4001)) {
		tempV1 += 0x8000;
		tempA1 += 0x8000;
	}

	if ((tempA1 - tempT0) < tempV1) {
		tempV0 = -tempA0;
		if (tempV1 < (tempA1 + tempT0)) {
			tempV1_2 = -tempA2;
			if (tempV0 < tempA0) {
				tempV0 = tempA0;
			}
			if (tempV1_2 < tempA2) {
				tempV1_2 = tempA2;
			}
			tempA0 = 0;
			tempA2 = (tempV0 * tempV0) + (tempV1_2 * tempV1_2);
			if (tempA2 > 0) {
				tempA0 = sqrtf((f32) tempA2);
			}
			if (tempA0 < 0x1194) {
				return 1;
			}
		}
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B9228_C81D8.s")
#endif

// CURRENT(10987)
#ifdef NON_MATCHING
s32 func_800B93AC_C835C(s16 arg0, s16 arg1, s32 arg2, s16 arg3, s32 arg4, s32 arg5) {
	s32 diffX;
	s32 diffZ;
	s32 dist;
	s32 angle;
	s32 halfAngle;
	s32 edge;
	s32 absX;
	s32 absZ;

	if (D_80157590 != 0 || D_8014FD2A == (u16)-0x8000) {
		return 1;
	}

	diffX = arg0 - arg3;
	diffZ = arg1 - (s16)arg4;
	dist = sqrtf((f32)((diffX * diffX) + (diffZ * diffZ)));
	angle = func_80003824_4424((f32)diffX, (f32)diffZ) - arg5;
	halfAngle = D_8014FD2A >> 1;
	edge = angle + halfAngle;

	if ((s16)(((sins(edge & 0xFFFF) / 32768.0f) * dist)) < -(u16)arg2) {
		return 0;
	}

	if ((s16)(((sins((edge - D_8014FD2A) & 0xFFFF) / 32768.0f) * dist)) > (u16)arg2) {
		return 0;
	}

	absX = -diffX;
	if (absX < diffX) {
		absX = diffX;
	}

	absZ = -diffZ;
	if (absZ < diffZ) {
		absZ = diffZ;
	}

	dist = 0;
	edge = (absX * absX) + (absZ * absZ);
	if (edge > 0) {
		dist = sqrtf((f32)edge);
	}

	if (dist < 0xFA0) {
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B93AC_C835C.s")
#endif

// CURRENT(20615)
#ifdef NON_MATCHING
s32 func_800B960C_C85BC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s32 halfArg2;
	s32 halfArg3;
	s32 angleOffset;
	s32 objX;
	s32 objZ;
	s32 diffX;
	s32 diffZ;
	s32 i;
	s32 hit;
	s32 centerX;
	s32 centerZ;
	s32 rangeX;
	s32 rangeZ;

	if (D_80157590 != 0 || D_8014FD2A == (u16)-0x8000) {
		return 1;
	}

	D_8014F854 = 1;
	angleOffset = 0x4000 - D_80047950;
	centerX = (s16) arg0;
	centerZ = (s16) arg1;
	objX = (s16) D_80052B2C->unk0;
	objZ = (s16) D_80052B2C->unk8;
	rangeX = arg2 & 0xFFFF;
	rangeZ = arg3 & 0xFFFF;
	halfArg2 = (rangeX < 0) ? ((rangeX + 1) >> 1) : (rangeX >> 1);
	halfArg3 = (rangeZ < 0) ? ((rangeZ + 1) >> 1) : (rangeZ >> 1);
	diffX = objX - centerX;
	if (diffX < 0) {
		diffX = -diffX;
	}
	if (diffX < rangeX) {
		diffZ = objZ - centerZ;
		if (diffZ < 0) {
			diffZ = -diffZ;
		}
		if (diffZ < rangeZ) {
			return 1;
		}
	}

	D_8014F854 = 0;
	for (i = 0; i < 5; i++) {
		switch (i) {
			case 0:
				hit = func_800B9228_C81D8((s32)(centerX + halfArg2), centerZ + halfArg3, objX, objZ, angleOffset);
				break;
			case 1:
				hit = func_800B9228_C81D8(centerX, centerZ, objX, objZ, angleOffset);
				break;
			case 2:
				hit = func_800B9228_C81D8((s32)(centerX + rangeX), centerZ, objX, objZ, angleOffset);
				break;
			case 3:
				hit = func_800B9228_C81D8(centerX, (s32)(centerZ + rangeZ), objX, objZ, angleOffset);
				break;
			default:
				hit = func_800B9228_C81D8((s32)(centerX + rangeX), (s32)(centerZ + rangeZ), objX, objZ, angleOffset);
				break;
		}

		if (hit != 0) {
			D_8014F854 = 1;
			return D_8014F854;
		}
	}

	return D_8014F854;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B960C_C85BC.s")
#endif

void func_800B9954_C8904(u8 arg0) {
	D_80152B80[arg0].unk8 = 0;
	if (arg0 < D_8013DAE4_14CA94) {
		D_8013DAE4_14CA94 = arg0;
	}
	D_8013DAE0_14CA90--;
}

#ifdef NON_MATCHING
void func_800B99A8_C8958(Unk80152B80 *arg0, s16 arg1, s16 arg2, s32 arg3, u8 *arg4, s16 arg5, s16 arg6, u16 arg7) {
	u8 i;
	Unk80152B80 *entry;

	if (D_8013DAE0_14CA90 == 0xF) {
		osSyncPrintf(&D_80142D94); // WARNING : Cannot create new land ring effect - out of storage space - blame it on Westy
		return;
	}
	entry = &D_80152B80[D_8013DAE4_14CA94];
	entry->unk0 = arg0->unk0;
	entry->unk4 = arg1;
	entry->unk6 = arg2;
	entry->unk2 = arg0->unk2;
	entry->unk8 = arg3;
	entry->unk9 = arg4[0];
	entry->unkA = arg4[1];
	D_8013DAE0_14CA90++;
	entry->unkC = arg5;
	entry->unkE = arg6;
	entry->unk10 = arg7;
	entry->unkB = arg4[2];
	if (D_8013DAE4_14CA94 < 0xF) {
		i = D_8013DAE4_14CA94;
		for (;;) {
			if (D_80152B80[i].unk8 == 0) {
				D_8013DAE4_14CA94 = i;
				break;
			}
			i = (i + 1) & 0xFF;
			if (i >= 0xF) {
				break;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B99A8_C8958.s")
#endif

#ifdef NON_MATCHING
void func_800B9AC8_C8A78(void) {
	s32 brightness;
	s8 color[3];
	s32 i;

	if ((s32) D_8013DAE0_14CA90 > 0) {
		for (i = 0; i < 0xF; i = (i + 1) & 0xFF) {
			brightness = D_80152B80[i].unk8;
			if (brightness > 0) {
				if (D_80152B80[i].unk10 > 0) {
					D_80152B80[i].unk10 = D_80152B80[i].unk10 - 1;
				} else {
					color[0] = (s8) ((s32) (brightness * D_80152B80[i].unk9) >> 8);
					color[1] = (s8) ((s32) (brightness * D_80152B80[i].unkA) >> 8);
					color[2] = (s8) ((s32) (brightness * D_80152B80[i].unkB) >> 8);
					func_800B2854_C1804(&D_80152B80[i], color, D_80152B80[i].unk4, D_80152B80[i].unk6);
					if ((s16) (D_80152B80[i].unk8 - D_80152B80[i].unkE) <= 0) {
						func_800B9954_C8904((u8) i);
					} else if ((s16) (D_80152B80[i].unk8 - D_80152B80[i].unkE) >= 0x100) {
						func_800B9954_C8904((u8) i);
					} else {
						D_80152B80[i].unk8 = (u8) (s16) (D_80152B80[i].unk8 - D_80152B80[i].unkE);
					}
					D_80152B80[i].unk4 += D_80152B80[i].unkC;
					if (D_80152B80[i].unk4 <= 0) {
						D_80152B80[i].unk4 = 1;
					}
				}
			}
		}
	}
}
	#else
	#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B9AC8_C8A78.s")
	#endif

#ifdef NON_MATCHING
void func_800B9C28_C8BD8(void) {
	s16 pos[2];
	u8 color0[3];
	u8 color1[3];
	u8 color2[3];
	u8 color3[3];
	u8 color4[3];
	u8 *src;

	src = (u8 *) &D_8013DAE8_14CA98;
	color0[0] = src[0];
	color0[1] = src[1];
	color0[2] = src[2];

	src = (u8 *) &D_8013DAEC_14CA9C;
	color1[0] = src[0];
	color1[1] = src[1];
	color1[2] = src[2];

	src = (u8 *) &D_8013DAF0_14CAA0;
	color2[0] = src[0];
	color2[1] = src[1];
	color2[2] = src[2];

	src = (u8 *) &D_8013DAF4_14CAA4;
	color3[0] = src[0];
	color3[1] = src[1];
	color3[2] = src[2];

	src = (u8 *) &D_8013DAF8_14CAA8;
	color4[0] = src[0];
	color4[1] = src[1];
	color4[2] = src[2];

	pos[0] = D_80052B34->unk0;
	pos[1] = D_80052B34->unk4;

	func_800B99A8_C8958((Unk80152B80 *) pos, 200, 500, 255, color0, 65, 7, 0);
	func_800B99A8_C8958((Unk80152B80 *) pos, 200, 500, 255, color1, 65, 7, 15);
	func_800B99A8_C8958((Unk80152B80 *) pos, 200, 500, 255, color2, 65, 7, 30);
	func_800B99A8_C8958((Unk80152B80 *) pos, 200, 500, 255, color3, 65, 7, 45);
	func_800B99A8_C8958((Unk80152B80 *) pos, 200, 500, 255, color4, 65, 7, 60);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B9C28_C8BD8.s")
#endif

// https://decomp.me/scratch/Ln5ro
// drawTileBuffer i.e. the ground
#ifdef NON_MATCHING
void func_800B9DB8_C8D68(u8 arg0)
{
  s16 sp10C;
  s16 sp10A;
  s32 spFC;
  s32 spF8;
  s16 spF4;
  s16 spF2;
  s16 sp50;
  s32 sp54;
  s32 sp68;
  s32 sp6C;
  u8 *sp60;
  u8 sp117;
  s16 var_s3;
  s16 var_s4;
  s16 var_s5;
  s16 var_s6;
  s32 ra;
  s32 s7;
  s32 var_t5;
  s32 col_idx;
  s32 s2;
  s32 s1;
  s32 temp_s1;
  u8 *t2;
  u8 t4;
  spF4 = 0;
  spF2 = 0;
  func_800B9AC8_C8A78();
  if (D_8014F838 != 0)
  {
	func_800B879C_C774C();
  }
  temp_s1 = D_8005BB34;
  func_800B5090_C4040(&D_8005BB34, arg0);
  gDPSetTextureFilter(D_8005BB2C++, 2 << 12);
  
  D_8014F89A = 0;
  D_8014FD28 = 0x8F;
  sp10C = (s16) D_80151DD8[0x964];
  sp10A = (s16) D_80151DD8[0x965];
  spF8 = temp_s1;
  spFC = temp_s1;
  gDPSetRenderMode(D_8005BB2C++, (((3 << 30) | (2 << 26)) | (0 << 22)) | (0 << 18), (((((((0x10 | 0x20) | 0x200) | 0x2000) | 0) | (0 << 28)) | (0 << 24)) | (1 << 20)) | (1 << 16));
  gDPSetTexturePersp(D_8005BB2C++, 1 << 19);
  gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, 0, 1);
  gDPSetTextureLUT(D_8005BB2C++, 2 << 14);
  gSPSetGeometryMode(D_8005BB2C++, (0x00002000 | 0x00020000) | 0x00000200);
  gDPSetTextureImage(D_8005BB2C++, 0, G_IM_SIZ_16b, 1, (u8 *) (((u32) (&D_80254E80)) & 0x1FFFFFFF));
  gDPTileSync(D_8005BB2C++);
  gDPSetTile(D_8005BB2C++, 0, G_IM_SIZ_4b, 0, 0x0100, 7, 0, 0 | 0, 0, 0, 0 | 0, 0, 0);
  gDPLoadSync(D_8005BB2C++);
  gDPLoadTLUTCmd(D_8005BB2C++, 7, 255);
  gDPPipeSync(D_8005BB2C++);
  gDPLoadSync(D_8005BB2C++);
  
  if (D_801493CC != 0)
  {
	gSPNumLights(D_8005BB2C++, 1);
	gSPLight(D_8005BB2C++, &D_8013D978_14C928, 1);
	gSPLight(D_8005BB2C++, &D_8013D970_14C920, 2);
  }
  else
  {
	gSPNumLights(D_8005BB2C++, 1);
	gSPLight(D_8005BB2C++, &D_8013D960_14C910, 1);
	gSPLight(D_8005BB2C++, &D_8013D958_14C908, 2);
  }
  ra = 0;
  sp117 = 0;
  sp6C = sp10A / 4;
  sp68 = sp10C / 4;
  do
  {
	col_idx = (sp6C + ra) & 0xFF;
	sp60 = &D_8021EA30[col_idx << 6];
	sp54 = col_idx;
	sp50 = (s16) ((col_idx << 10) + 0x8000);
	s7 = 0;
	var_t5 = 0;
	do
	{
	  var_s4 = (var_t5 == 0) ? (sp10C % 4) : 0;
	  var_s6 = (var_t5 == 4) ? (sp10C % 4) + 1 : 4;
	  var_s5 = (ra == 0) ? (sp10A % 4) : 0;
	  var_s3 = (ra == 4) ? (sp10A % 4) + 1 : 4;
	  
	  s2 = (sp68 + var_t5) & 0xFF;
	  t2 = sp60 + s2;
	  s1 = (*t2);
	  gDPSetTextureImage(D_8005BB2C++, 0, G_IM_SIZ_16b, 1, ((u32) (&D_80254E80[(s1 & 0xF) * 512])) & 0x1FFFFFFF);
	  gDPTileSync(D_8005BB2C++);
	  gDPSetTile(D_8005BB2C++, 0, G_IM_SIZ_4b, 0, 0x0100, 7, 0, 0 | 0, 0, 0, 0 | 0, 0, 0);
	  gDPLoadSync(D_8005BB2C++);
	  gDPLoadTLUTCmd(D_8005BB2C++, 7, 255);
	  gDPPipeSync(D_8005BB2C++);
	  gDPLoadSync(D_8005BB2C++);
		ra = 4;
	  t4 = *t2;
	  if ((t4 & 0xF0) != 0xF0)
	  {
		*t2 = t4 + 0x10;
	  }
	  gSPClearGeometryMode(D_8005BB2C++, 0x00020000);
	  if (func_800B960C_C85BC((s16) ((s2 << 10) + 0x8000), sp50, 0x400, 0x400) != 0)
	  {
		spF4 += 1;
		func_800B604C_C4FFC(spF8, var_s4, var_s5, var_s6, var_s3, ((((s2 * 4) + (sp54 * 0x400)) + (var_s5 * 0x100)) & 0xFFFF) + var_s4, s1);
	  }
	  else
	  {
		spF2 += 1;
	  }
	  var_t5 = (s7 + 1) & 0xFF;
	  s7 = var_t5;
	  spF8 += (ra - var_s4) * 0x10;
	}
	while (var_t5 < 5);
	ra = (sp117 + 1) & 0xFF;
	spFC += (4 - var_s5) * 0x120;
	sp117 = (u8) ra;
	spF8 = spFC;
  }
  while (ra < 5);
  gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEI, G_CC_PASS2);
  gDPSetTextureLUT(D_8005BB2C++, 2 << 14);
	func_800B753C_C64EC();
  gDPSetTextureLUT(D_8005BB2C++, 0 << 14);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B9DB8_C8D68.s")
#endif

/* Clamps arg0 to the range [arg1, arg2] */
s16 func_800BA4DC_C948C(s16 arg0, s16 arg1, s16 arg2) {
	if (arg0 < arg1) {
		return arg1;
	}
	if (arg2 < arg0) {
		return arg2;
	}
	return arg0;
}

s32 func_800BA52C_C94DC(s16 arg0, s16 arg1, u8 arg2, u8 arg3)
{
	s32 var_v1;
	var_v1 = 0xC8 - (((s32) ((arg0 * arg0) + (arg1 * arg1))) / 75000);
	if (arg3 < var_v1)
	{
		var_v1 = arg3;
	}
	if (var_v1 < arg2)
	{
		var_v1 = arg2;
	}
	return var_v1;
}

// CURRENT(33929)
#ifdef NON_MATCHING
// DrawVtxBufferWater
void func_800BA5B0_C9560(s32 arg0, s32 unused) {
	extern u8 D_5041A80[];

	Unk80052B2C *water;
	s32 padStack[26];
	Unk80052B2C *viewOrigin;
	Gfx *gfx;
	u8 *palette;
	u8 flags[9][9];
	u8 *flag;
	s16 waterX;
	s16 waterZ;
	s16 snappedX;
	s16 snappedZ;
	s16 texXBase;
	s16 texZBase;
	s16 worldX;
	s16 worldZ;
	s16 terrainY;
	s16 waveY;
	s16 rowZ;
	s16 rowTexZ;
	s16 rowBase;
	s16 colBase;
	s16 maxAlpha;
	s16 batch;
	s16 row;
	s16 col;
	s16 colIndex;
	s16 tileBase;
	s32 hiddenCount;
	s32 phase;
	s32 phaseAbs;
	s32 rowPhase;
	s32 texAnim;
	s32 color;
	s32 alpha;
	s32 heightDiff;
	s32 batchBase;
	f32 worldXf;
	f32 worldZf;
	f32 delta;

	(void)unused;

	water = &((Unk80052B2C *)&D_80052AE8)[arg0 & 0xFF];
	waterX = water->unk3C;
	waterZ = water->unk3E;
	hiddenCount = 0;
	if ((gameplayMode == GAMEPLAY_MODE_UNKB) || (gameplayMode == GAMEPLAY_MODE_UNK3)) {
		waterX = D_80157F44;
		waterZ = D_80157F46;
	}

	if (waterX < 0) {
		waterX = waterX - 0x100;
	}
	if (waterX > 0) {
		waterX = waterX + 0x100;
	}
	if (waterZ < 0) {
		waterZ = waterZ - 0x100;
	}
	if (waterZ > 0) {
		waterZ = waterZ + 0x100;
	}

	palette = &D_8013D988_14C938[(currentLevel * 6) - 6];
	*(u8 *)&D_8013D940_14C8F0 = palette[0];
	*(u8 *)&D_8013D944_14C8F4 = palette[1];
	*(u8 *)&D_8013D948_14C8F8 = palette[2];
	*(u8 *)&D_8013D94C_14C8FC = palette[3];
	*(u8 *)&D_8013D950_14C900 = palette[4];
	*(u8 *)&D_8013D954_14C904 = palette[5];

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xBA001001;
	gfx->words.w1 = 0;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xFB000000;
	gfx->words.w1 = (D_8013D940_14C8F0 << 0x18) | (D_8013D944_14C8F4 << 0x10) | (D_8013D948_14C8F8 << 8) | 0xFF;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xFA00FFFF;
	gfx->words.w1 = (D_8013D94C_14C8FC << 0x18) | (D_8013D950_14C900 << 0x10) | (D_8013D954_14C904 << 8) | 0xFF;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xBA001301;
	gfx->words.w1 = 0x00080000;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xB6000000;
	gfx->words.w1 = 0x00013000;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xBB000801;
	gfx->words.w1 = 0x80008000;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xE7000000;
	gfx->words.w1 = 0;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xBA001402;
	gfx->words.w1 = 0x00100000;

	phase = 0x40 - ((D_80052A8C * 2) & 0x7F);
	phaseAbs = -phase;
	if ((u32)phaseAbs >= (u32)phase) {
		phaseAbs = phase;
	}
	color = (0x78 - phaseAbs) & 0xFF;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xEB000000;
	gfx->words.w1 = color | 0x8000;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xEA000000;
	gfx->words.w1 = ((u32)color << 0x10) | 0x80008000 | color;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xFC1314A0;
	gfx->words.w1 = 0x23FD7EFC;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xB900031D;
	gfx->words.w1 = 0x0C1845D8;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xBA000C02;
	gfx->words.w1 = 0x2000;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xFD900000;
	gfx->words.w1 = (u32)D_5041A80 & 0x1FFFFFFF;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xF5900000;
	gfx->words.w1 = 0x07000000;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xE6000000;
	gfx->words.w1 = 0;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xF3000000;
	gfx->words.w1 = 0x077FF100;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xE7000000;
	gfx->words.w1 = 0;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xF5881000;
	gfx->words.w1 = 0x01018060;

	phase = (u32)D_80052A8C >> 1;
	gfx = D_8005BB2C++;
	gfx->words.w0 = (((-phase) & 0xFFF) << 0xC) | 0xF200003C;
	gfx->words.w1 = ((((0xFC - phase) & 0xFFF) << 0xC) | 0x01000138);

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xF5881000;
	gfx->words.w1 = 0x02018060;

	phase = D_80052A8C & 0xFFF;
	texAnim = (D_80052A8C + 0xFC) & 0xFFF;
	gfx = D_8005BB2C++;
	gfx->words.w0 = (phase << 0xC) | 0xF2000000 | phase;
	gfx->words.w1 = (texAnim << 0xC) | 0x02000000 | texAnim;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xBB000101;
	gfx->words.w1 = 0x80008000;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xE7000000;
	gfx->words.w1 = 0;

	phase = waterX & 0x1FF;
	if ((waterX < 0) && (phase != 0)) {
		phase = phase - 0x200;
	}
	snappedX = waterX - phase;

	phase = waterZ & 0x1FF;
	if ((waterZ < 0) && (phase != 0)) {
		phase = phase - 0x200;
	}
	snappedZ = waterZ - phase;

	gfx = D_8005BB2C++;
	gfx->words.w0 = 0xB6000000;
	gfx->words.w1 = 0x3000;

	phase = snappedX & 0xFFF;
	if ((snappedX < 0) && (phase != 0)) {
		phase = phase - 0x1000;
	}
	texXBase = phase * 4;

	phase = snappedZ & 0xFFF;
	if ((snappedZ < 0) && (phase != 0)) {
		phase = phase - 0x1000;
	}
	texZBase = phase * 4;

	for (row = 0; row < 9; row++) {
		rowZ = snappedZ - (row << 9) + 0x700;
		rowTexZ = texZBase - (row << 0xB);
		worldZf = (f32)rowZ;
		for (col = 0; col < 9; col++) {
			flag = &flags[row][col];
			worldX = snappedX + (col << 9) - 0x900;
			*flag = 4;
			heightDiff = D_80222A70 - (func_800B84D0_C7480(worldX, rowZ) >> 8);
			waveY = 0;
			if (heightDiff > 0) {
				waveY = (s16)((coss((u16)(D_80052A8C * 0x2BC + ((((snappedX / 0x200) + col) & 1) * 0x58AC) + ((((snappedZ / 0x200) + row + 1) & 1) * 0x9B14))) / 32768.0f) * (heightDiff / 10));
			}

			maxAlpha = 0x64;
			if (currentLevel == LEVEL_GREECE) {
				maxAlpha = 0xC8;
			}

			worldXf = (f32)worldX;
			if ((gameplayMode == GAMEPLAY_MODE_UNKB) || (gameplayMode == GAMEPLAY_MODE_UNK3)) {
				viewOrigin = &D_80157F08;
			} else {
				viewOrigin = D_80052B2C;
			}
			alpha = func_800BA52C_C94DC((s16)(s32)(worldXf - viewOrigin->unk0), (s16)(s32)(worldZf - viewOrigin->unk8), 0, maxAlpha);

			D_8005BB34->v.ob[0] = worldX;
			D_8005BB34->v.ob[1] = waveY + D_80222A70;
			D_8005BB34->v.ob[2] = rowZ;
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = texXBase - (col << 0xB);
			D_8005BB34->v.tc[1] = rowTexZ;
			D_8005BB34->v.cn[0] = 0;
			D_8005BB34->v.cn[1] = 0;
			D_8005BB34->v.cn[2] = 0;
			D_8005BB34->v.cn[3] = alpha;
			D_8005BB34++;

			delta = D_80052B2C->unk0 - worldXf;
			if (delta < 0.0f) {
				delta = -delta;
			}
			if (delta < 128.0f) {
				delta = D_80052B2C->unk8 - worldZf;
				if (delta < 0.0f) {
					delta = -delta;
				}
				if (delta < 128.0f) {
					*flag = 1;
					continue;
				}
			}

			heightDiff = D_80052B34->unk0 - worldX;
			if (heightDiff < 0) {
				heightDiff = -heightDiff;
			}
			if (heightDiff < 0x100) {
				terrainY = D_80052B34->unk4 - rowZ;
				if (terrainY < 0) {
					terrainY = -terrainY;
				}
				if ((terrainY < 0x100) && (D_80052B34->unk2 < (D_80222A70 + 0x10))) {
					*flag = 1;
					continue;
				}
			}

			if ((D_80222A70 + 0x20) < (func_800B84D0_C7480(worldX, rowZ) >> 8)) {
				*flag |= 2;
			}
			if (func_800B9228_C81D8(worldX, rowZ, (s16)(s32)D_80052B2C->unk0, (s16)(s32)D_80052B2C->unk8, 0x4000 - D_80047950) != 0) {
				hiddenCount++;
				*flag &= 0xFB;
				*flag |= 1;
			}
		}
	}

	n_alSynFreeFX(hiddenCount);

	for (batch = 3; batch >= 0; batch--) {
		gfx = D_8005BB2C++;
		gfx->words.w0 = 0x04006DAF;
		gfx->words.w1 = (u32)(D_8005BB34 - (batch * 0x12)) - 0x1B0;

		for (row = 0; row < 2; row++) {
			for (col = 0; col < 8; col++) {
				flag = &flags[((6 - (batch * 2)) + row)][col];
				if ((flag[0] & 2) && (flag[1] & 2) && (flag[9] & 2) && (flag[10] & 2)) {
					continue;
				}
				if ((flag[0] & 4) && (flag[1] & 4) && (flag[9] & 4) && (flag[10] & 4)) {
					continue;
				}

				tileBase = (row * 9) + col;
				if ((((snappedX / 0x200) + col) & 1) != 0) {
					gfx = D_8005BB2C++;
					gfx->words.w0 = 0xBF000000;
					gfx->words.w1 = (((tileBase * 2) & 0xFF) << 0x10) | ((((tileBase * 2) + 2) & 0xFF) << 8) | (((tileBase * 2) + 0x12) & 0xFF);

					gfx = D_8005BB2C++;
					gfx->words.w0 = 0xBF000000;
					gfx->words.w1 = ((((tileBase * 2) + 2) & 0xFF) << 0x10) | ((((tileBase * 2) + 0x14) & 0xFF) << 8) | (((tileBase * 2) + 0x12) & 0xFF);
				} else {
					gfx = D_8005BB2C++;
					gfx->words.w0 = 0xBF000000;
					gfx->words.w1 = (((tileBase * 2) & 0xFF) << 0x10) | ((((tileBase * 2) + 2) & 0xFF) << 8) | (((tileBase * 2) + 0x14) & 0xFF);

					gfx = D_8005BB2C++;
					gfx->words.w0 = 0xBF000000;
					gfx->words.w1 = (((tileBase * 2) & 0xFF) << 0x10) | ((((tileBase * 2) + 0x14) & 0xFF) << 8) | (((tileBase * 2) + 0x12) & 0xFF);
				}
			}

			rowPhase = 0x40 - ((((batch * 2) + row + D_80052A8C) * 3) & 0x7F);
			phaseAbs = -rowPhase;
			if ((u32)phaseAbs >= (u32)rowPhase) {
				phaseAbs = rowPhase;
			}
			color = (0x78 - phaseAbs) & 0xFF;

			gfx = D_8005BB2C++;
			gfx->words.w0 = 0xEB000000;
			gfx->words.w1 = color | 0x8000;

			gfx = D_8005BB2C++;
			gfx->words.w0 = 0xEA000000;
			gfx->words.w1 = ((u32)color << 0x10) | 0x80008000 | color;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BA5B0_C9560.s")
#endif

s32 func_800BB3D0_CA380(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 *arg4, s16 *arg5, s16 *arg6, s16 *arg7) {
	s16 temp;

	if (arg2 < arg0) {
		temp = arg0;
		arg0 = arg2;
		arg2 = temp;
	}

	if (arg3 < arg1) {
		temp = arg1;
		arg1 = arg3;
		arg3 = temp;
	}

	if (*arg6 < *arg4) {
		temp = *arg4;
		*arg4 = *arg6;
		*arg6 = temp;
	}

	if (*arg7 < *arg5) {
		temp = *arg5;
		*arg5 = *arg7;
		*arg7 = temp;
	}

	if (*arg4 == *arg6) {
		if ((arg0 < *arg4) && (*arg4 < arg2)) {
			if (arg3 < *arg5) {
				return 0;
			}

			if (*arg7 < arg1) {
				return 0;
			}

			if (*arg5 < arg1) {
				*arg5 = arg1;
			}

			if (arg3 < *arg5) {
				*arg5 = arg3;
			}

			if (*arg7 < arg1) {
				*arg7 = arg1;
			}

			if (arg3 < *arg7) {
				*arg7 = arg3;
			}

			goto success;
		}

		return 0;
	}

	if ((arg1 < *arg5) && (*arg5 < arg3)) {
		if (arg2 < *arg4) {
			return 0;
		}

		if (*arg6 < arg0) {
			return 0;
		}

		if (*arg4 < arg0) {
			*arg4 = arg0;
		}

		if (arg2 < *arg4) {
			*arg4 = arg2;
		}

		if (*arg6 < arg0) {
			*arg6 = arg0;
		}

		if (arg2 < *arg6) {
			*arg6 = arg2;
		}

		goto success;
	}

	return 0;

success:
	return 1;
}

// DrawShieldWalls
// CURRENT(37669)
#ifdef NON_MATCHING
void func_800BB5E0_CA590(void) {
	Gfx *gfx;
	s32 padStack[18];
	ShieldWallPoint *pointTable;
	ShieldWallLink *linkTable;
	s16 linkIndex;
	s16 linkCount;
	s16 level;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0x06000000;
	gfx->words.w1 = (u32)D_80031230;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xBA001301;
	gfx->words.w1 = 0x00080000;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xBB000001;
	gfx->words.w1 = 0x80008000;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xBA000C02;
	gfx->words.w1 = 0x00002000;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xBA000E02;
	gfx->words.w1 = 0;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xB900031D;
	gfx->words.w1 = 0x004049D8;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xB7000000;
	gfx->words.w1 = 0x00020200;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xFB000000;
	gfx->words.w1 = 0x470AD464;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xFA00FFFF;
	gfx->words.w1 = 0x62EFFFC8;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xBA000C02;
	gfx->words.w1 = 0x00002000;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xBB000001;
	gfx->words.w1 = 0x80008000;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xFD700000;
	gfx->words.w1 = (u32)D_1003990 & 0x1FFFFFFF;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xF5700000;
	gfx->words.w1 = 0x07010040;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xE6000000;
	gfx->words.w1 = 0;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xF3000000;
	gfx->words.w1 = 0x0707F400;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xE7000000;
	gfx->words.w1 = 0;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xF5680400;
	gfx->words.w1 = 0x00010040;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xF2000000;
	gfx->words.w1 = 0x0003C03C;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xE7000000;
	gfx->words.w1 = 0;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xFC309861;
	gfx->words.w1 = 0x5532FF7F;

	level = currentLevel;
	linkCount = D_8003E0EE[level] * 8;
	if (linkCount > 0) {
		s16 i;
		f64 texScale;

		pointTable = (ShieldWallPoint *)(D_801475F0_1565A0 - 0xC0);
		linkTable = (ShieldWallLink *)(D_801479B0_156960 - 0x80);
		texScale = D_80142E68_151E18;

		for (i = 0; i < linkCount; i++) {
			ShieldWallLink *link;
			s8 p0Index;

			link = &linkTable[level * 64 + i];
			p0Index = link->startIdx;
			if (p0Index != -1) {
				ShieldWallPoint *p0;
				ShieldWallPoint *p1;
				s16 startX;
				s16 startZ;
				s16 endX;
				s16 endZ;

				p0 = &pointTable[level * 48 + p0Index];
				p1 = &pointTable[level * 48 + link->endIdx];
				startX = p0->x << 8;
				startZ = p0->z << 8;
				endX = p1->x << 8;
				endZ = p1->z << 8;

				if (func_800BB3D0_CA380((s16)(D_80149434 - 0x800), (s16)(D_80149436 - 0x900), (s16)(D_80149434 + 0x700),
										 (s16)(D_80149436 + 0x700), &startX, &startZ, &endX, &endZ) != 0) {
					s16 minY;
					s16 segment;
					s32 dx;
					s32 dz;
					f32 segmentDx;
					f32 segmentDz;

					minY = 0x7D00;
					dx = endX - startX;
					dz = endZ - startZ;
					if (dx < 0) {
						dx += 3;
					}
					if (dz < 0) {
						dz += 3;
					}
					segmentDx = (f32)(dx / 4);
					segmentDz = (f32)(dz / 4);

					for (segment = 0; segment < 4; segment++) {
						s16 segStartX;
						s16 segStartZ;
						s16 segEndX;
						s16 segEndZ;
						s16 colorStart;
						s16 colorEnd;
						s16 texStartS;
						s16 texStartT;
						s16 texEndS;
						s16 texEndT;
						u32 scrollS;
						u32 scrollT;
						s8 alphaStart;
						s8 alphaEnd;
						u8 color[3];
						s16 t;

						segStartX = (s16)(s32)((f32)startX + (segmentDx * segment));
						segStartZ = (s16)(s32)((f32)startZ + (segmentDz * segment));

						for (t = 0; t < 9; t++) {
							s16 sampleY;
							s32 sampled;

							sampleY = func_800B84D0_C7480((s16)(s32)((f32)segStartX + ((segmentDx / 8.0f) * t)),
													 (s16)(s32)((f32)segStartZ + ((segmentDz / 8.0f) * t)))
										  >> 8;
							sampled = sampleY;
							if ((s16)sampled < minY) {
								minY = (s16)sampled;
							}
						}

						if (segment != 3) {
							s16 nextSegment;

							nextSegment = segment + 1;
							segEndX = (s16)(s32)((f32)startX + (segmentDx * nextSegment));
							segEndZ = (s16)(s32)((f32)startZ + (segmentDz * nextSegment));
						} else {
							segEndX = endX;
							segEndZ = endZ;
						}

						colorStart = 0x20 - (D_80052A8C & 0x3F);
						if (colorStart < 0) {
							colorStart = -colorStart;
						}
						color[0] = 0x62 - colorStart;

						colorEnd = 0x80 - ((D_80052A8C * 8) & 0xFF);
						if (colorEnd < 0) {
							colorEnd = -colorEnd;
						}
						color[1] = 0xEF - colorEnd;
						color[2] = 0xFF - colorEnd;

						func_800B1A68_C0A18(&segStartX, &segEndX, color, D_80152D00);

						if (segStartX == segEndX) {
							scrollT = 0;
							scrollS = (u32)(D_80052A8C * 10) % 32000U;
						} else {
							scrollS = 0;
							scrollT = (u32)(D_80052A8C * 10) % 32000U;
						}

						if ((gameplayMode != 3) && (gameplayMode != 0xB)) {
							alphaStart = (s8)func_800BA52C_C94DC((s16)(s32)((f32)segStartZ - D_80052B2C->unk8),
													 (s16)(s32)((f32)segStartX - D_80052B2C->unk0), 0, 0x64);
							alphaEnd = func_800BA52C_C94DC((s16)(s32)((f32)segEndZ - D_80052B2C->unk8),
												   (s16)(s32)((f32)segEndX - D_80052B2C->unk0), 0, 0x64);
						} else {
							alphaStart = (s8)func_800BA52C_C94DC((s16)(s32)((f32)segStartZ - D_80157F08.unk8),
													 (s16)(s32)((f32)segStartX - D_80157F08.unk0), 0, 0x64);
							alphaEnd = func_800BA52C_C94DC((s16)(s32)((f32)segEndZ - D_80157F08.unk8),
												   (s16)(s32)((f32)segEndX - D_80157F08.unk0), 0, 0x64);
						}

						texStartS = (s16)((f64)(startX - segStartX) * texScale + (f64)scrollS);
						texStartT = (s16)((f64)(startZ - segStartZ) * texScale + (f64)scrollT);
						texEndS = (s16)((f64)(startX - segEndX) * texScale + (f64)scrollS);
						texEndT = (s16)((f64)(startZ - segEndZ) * texScale + (f64)scrollT);

						D_8005BB34[0].v.ob[0] = segStartX;
						D_8005BB34[0].v.ob[1] = minY;
						D_8005BB34[0].v.ob[2] = segStartZ;
						D_8005BB34[0].v.flag = 0;
						D_8005BB34[0].v.tc[0] = texStartS;
						D_8005BB34[0].v.tc[1] = texStartT;
						D_8005BB34[0].v.cn[0] = 0x46;
						D_8005BB34[0].v.cn[1] = 0x46;
						D_8005BB34[0].v.cn[2] = 0x96;
						D_8005BB34[0].v.cn[3] = alphaStart;

						D_8005BB34[1].v.ob[0] = segStartX;
						D_8005BB34[1].v.ob[1] = 0xBB8;
						D_8005BB34[1].v.ob[2] = segStartZ;
						D_8005BB34[1].v.flag = 0;
						D_8005BB34[1].v.tc[0] = texStartS;
						D_8005BB34[1].v.tc[1] = texStartT;
						D_8005BB34[1].v.cn[0] = 0x46;
						D_8005BB34[1].v.cn[1] = 0x46;
						D_8005BB34[1].v.cn[2] = 0x96;
						D_8005BB34[1].v.cn[3] = alphaStart;

						D_8005BB34[2].v.ob[0] = segEndX;
						D_8005BB34[2].v.ob[1] = minY;
						D_8005BB34[2].v.ob[2] = segEndZ;
						D_8005BB34[2].v.flag = 0;
						D_8005BB34[2].v.tc[0] = texEndS;
						D_8005BB34[2].v.tc[1] = texEndT;
						D_8005BB34[2].v.cn[0] = 0x46;
						D_8005BB34[2].v.cn[1] = 0x46;
						D_8005BB34[2].v.cn[2] = 0x96;
						D_8005BB34[2].v.cn[3] = alphaEnd;

						D_8005BB34[3].v.ob[0] = segEndX;
						D_8005BB34[3].v.ob[1] = 0xBB8;
						D_8005BB34[3].v.ob[2] = segEndZ;
						D_8005BB34[3].v.flag = 0;
						D_8005BB34[3].v.tc[0] = texEndS;
						D_8005BB34[3].v.tc[1] = texEndT;
						D_8005BB34[3].v.cn[0] = 0x46;
						D_8005BB34[3].v.cn[1] = 0x46;
						D_8005BB34[3].v.cn[2] = 0x96;
						D_8005BB34[3].v.cn[3] = alphaEnd;

						D_8005BB34[4].v.ob[0] = segStartX;
						D_8005BB34[4].v.ob[1] = 0xFA0;
						D_8005BB34[4].v.ob[2] = segStartZ;
						D_8005BB34[4].v.flag = 0;
						D_8005BB34[4].v.tc[0] = texStartS;
						D_8005BB34[4].v.tc[1] = texStartT;
						D_8005BB34[4].v.cn[0] = 0x46;
						D_8005BB34[4].v.cn[1] = 0x46;
						D_8005BB34[4].v.cn[2] = 0x96;
						D_8005BB34[4].v.cn[3] = 0;

						D_8005BB34[5].v.ob[0] = segEndX;
						D_8005BB34[5].v.ob[1] = 0xBB8;
						D_8005BB34[5].v.ob[2] = segEndZ;
						D_8005BB34[5].v.flag = 0;
						D_8005BB34[5].v.tc[0] = texEndS;
						D_8005BB34[5].v.tc[1] = texEndT;
						D_8005BB34[5].v.cn[0] = 0x46;
						D_8005BB34[5].v.cn[1] = 0x46;
						D_8005BB34[5].v.cn[2] = 0x96;
						D_8005BB34[5].v.cn[3] = alphaEnd;

						D_8005BB34[6].v.ob[0] = segEndX;
						D_8005BB34[6].v.ob[1] = 0xFA0;
						D_8005BB34[6].v.ob[2] = segEndZ;
						D_8005BB34[6].v.flag = 0;
						D_8005BB34[6].v.tc[0] = texEndS;
						D_8005BB34[6].v.tc[1] = texEndT;
						D_8005BB34[6].v.cn[0] = 0x46;
						D_8005BB34[6].v.cn[1] = 0x46;
						D_8005BB34[6].v.cn[2] = 0x96;
						D_8005BB34[6].v.cn[3] = 0;

						D_8005BB34[7].v.ob[0] = segEndX;
						D_8005BB34[7].v.ob[1] = 0xFA0;
						D_8005BB34[7].v.ob[2] = segEndZ;
						D_8005BB34[7].v.flag = 0;
						D_8005BB34[7].v.tc[0] = texEndS;
						D_8005BB34[7].v.tc[1] = texEndT;
						D_8005BB34[7].v.cn[0] = 0x46;
						D_8005BB34[7].v.cn[1] = 0x46;
						D_8005BB34[7].v.cn[2] = 0x96;
						D_8005BB34[7].v.cn[3] = 0;

						gfx = D_8005BB2C;
						D_8005BB2C = gfx + 1;
						gfx->words.w0 = 0x0400207F;
						gfx->words.w1 = (u32)D_8005BB34 | 0x80000000;

						D_8005BB34 += 8;

						gfx = D_8005BB2C;
						D_8005BB2C = gfx + 1;
						gfx->words.w0 = 0xBF000000;
						gfx->words.w1 = 0x00000204;

						gfx = D_8005BB2C;
						D_8005BB2C = gfx + 1;
						gfx->words.w0 = 0xBF000000;
						gfx->words.w1 = 0x00020406;

						gfx = D_8005BB2C;
						D_8005BB2C = gfx + 1;
						gfx->words.w0 = 0xBF000000;
						gfx->words.w1 = 0x00080A0C;

						gfx = D_8005BB2C;
						D_8005BB2C = gfx + 1;
						gfx->words.w0 = 0xBF000000;
						gfx->words.w1 = 0x000A0C0E;
					}
				}
			}
		}
	}

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xE7000000;
	gfx->words.w1 = 0;

	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0x06000000;
	gfx->words.w1 = (u32)D_80031200;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BB5E0_CA590.s")
#endif

// (short playerX, short playerZ)
#ifdef NON_MATCHING
// CURRENT(1464)
void func_800BC2F8_CB2A8(s16 playerX, s16 playerZ) {
	s16 tileZ;
	s16 tileX;
	s16 playerZCopy;
	u16 tile;
	u16 *tilePtr;
	s32 stickX;
	s32 stickY;
	u16 randVal;
	u32 tileBits;
	s32 tileType;
	s16 (*tiles)[256];

	tiles = D_8014F8A0;
	tileZ = (playerZ >> 8) + 0x80;
	tileX = (playerX >> 8) + 0x80;
	tilePtr = &tiles[tileZ][tileX];
	tile = *tilePtr;
	tileBits = (u32)tile << 0x16;
	tileType = (s32)(tileBits >> 0x1C);

	if ((tileType < 8) || (tileType >= 0xD)) {
		return;
	}

	if ((D_8021EA30[(tileZ / 4) * 0x40 + (tileX / 4)] & 0xF) != 7) {
		return;
	}

	if (((u32)tile >> 0xF) == 1) {
		return;
	}

	stickX = currentControllerStates[0].stick_x;
	if (stickX < 0) {
		stickX = -stickX;
	}

	stickY = currentControllerStates[0].stick_y;
	if (stickY < 0) {
		stickY = -stickY;
	}

	if ((stickY + stickX) < 0x11) {
		return;
	}

	if (D_80052B34->unk20 & 2) {
		return;
	}

	if (currentLevel != 2) {
		return;
	}

	*tilePtr = (tile & 0xFC3F) | 0x380;
	playerZCopy = playerZ;
	func_800DF9C8_EE978(playerX, (func_800B84D0_C7480(playerX, playerZCopy) >> 8) + 0xA, playerZCopy, 0x78, 0, 0);

	if ((D_80052B34->unk1A != 7) || !(D_80052B34->unk58 < 0.0f)) {
		randVal = func_800038E0_44E0();
		func_80102D00_111CB0(D_80052B34,
			(f32)(0x10 - (s32)((randVal & 0xFF) / 8)),
			40.0f,
			(f32)(0x10 - (s32)((func_800038E0_44E0() & 0xFF) / 8)));
	}

	D_80159320 |= 0x800;
	D_80052B34->unk26 = 0x7FF - (func_800038E0_44E0() & 0xFFF);
	D_80052B34->unk22 = 0x7FF - (func_800038E0_44E0() & 0xFFF);
	D_80052B34->unk24 = 0x7FF - (func_800038E0_44E0() & 0xFFF);

	if (D_80052B34->unk1A == 0) {
		func_80124170_133120(playerX, (func_800B84D0_C7480(playerX, playerZCopy) >> 8) + 0xA, playerZCopy, 0x64, 0x64, 0);
		func_80124118_1330C8(D_80052B34, 0x96);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BC2F8_CB2A8.s")
#endif

// CURRENT(506)
#ifdef NON_MATCHING
s32 func_800BC5DC_CB58C(s16 arg0) {
	AlienInstance *temp_v1;
	s16 sp34;
	s16 sp36;
	u16 *temp_t0;
	u16 temp_a2;
	s32 temp_t4;
	s16 a1;
	s16 a3;

	temp_v1 = &alienInstances[arg0];
	sp34 = temp_v1->unk4;
	sp36 = temp_v1->unk0;
	a1 = (sp34 >> 8) + 0x80;
	a3 = (sp36 >> 8) + 0x80;
	temp_t0 = &D_8014F8A0[a1][a3];
	temp_a2 = *temp_t0;
	temp_t4 = ((u32)temp_a2 << 0x16) >> 0x1C;

	if ((temp_t4 >= 8) && (temp_t4 < 0xD) &&
		((D_8021EA30[(a1 / 4) * 0x40 + (a3 / 4)] & 0xF) == 7) && (((u32)temp_a2 >> 0xF) != 1)) {
		*temp_t0 = (temp_a2 & 0xFC3F) | 0x380;
		func_800DF038_EDFE8(sp36, (func_800B84D0_C7480(sp36, sp34) >> 8) + 0xA, sp34, 0x78, 0, 0);
		func_800DF848_EE7F8(temp_v1->unk0, temp_v1->unk2, temp_v1->unk4, (u16)alienSpecs[temp_v1->specIndex].unkC, 0);
		func_80079910_888C0(arg0);
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BC5DC_CB58C.s")
#endif

// CURRENT(21044)
#ifdef NON_MATCHING
void func_800BC760_CB710(s16 arg0, s16 arg1, s16 arg2, u8 arg3, s16 arg4) {
	s16 spE4;
	s16 spE2;
	s16 spE0;
	s16 spDC;
	s16 spDA;
	s16 spD8;
	s16 i;
	s16 temp_s2;
	s16 temp_s5;
	s32 spCC;
	s32 var_s2;
	s32 var_s3;
	s32 temp_fp;
	s32 temp_fp_2;
	s32 temp_lo;
	s32 temp_lo_2;
	s32 var_a0;
	u8 var_v0;
	u8 spE9;
	f64 temp_f22;

	D_80052B58 = 0x80;
	var_a0 = func_800B84D0_C7480(arg0, arg2) >> 8;
	if (var_a0 < D_80222A70) {
		var_a0 = D_80222A70;
	}

	if ((var_a0 + 0xC8) < arg1) {
		var_s2 = (arg3 * 4) - ((s32)spE9 / 4);
		spCC = var_s2 + 0x3C;
	} else {
		var_s2 = (arg3 * 2) - ((s32)spE9 / 4);
		spCC = var_s2 + 0x1E;
	}

	var_s3 = D_80052A8C & 0x1F;
	if ((u32)var_s3 >= 0x11) {
		var_s3 = (0x20 - var_s3) & 0xFF;
	}

	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);

	spE0 = arg0;
	spE2 = arg1;
	spE4 = arg2;
	spD8 = arg4;
	spDA = 0;
	spDC = 0;
	func_800039D0_45D0((Unk80052B40 *)&spE0, (Unk80052B40 *)&spD8, NULL, D_8005BB38);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	D_8005BB34->v.ob[0] = 0;
	D_8005BB34->v.ob[1] = 0;
	D_8005BB34->v.ob[2] = 0x1C;
	D_8005BB34->v.flag = 0;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[0] = 0xFF - (var_s3 * 7);
	D_8005BB34->v.cn[1] = 0xFF - (var_s3 * 5);
	D_8005BB34->v.cn[2] = 0xFF;
	D_8005BB34->v.cn[3] = 0;
	D_8005BB34++;

	temp_f22 = (f64)var_s2;
	temp_fp = (var_s3 * 4) + 0x64;
	for (i = 0; i < 10; i++) {
		temp_lo = (i << 0x10) / 10;
		temp_lo_2 = (i << 0x10) / 3;

		temp_s5 = (s16)(s32)((((f64)(f32)coss(((D_80052A8C * 0x64) + temp_lo) & 0xFFFF) / 32768.0) * temp_f22) + 0.0);
		temp_s5 = (s16)(s32)((((f64)(f32)coss((temp_lo_2 + (D_80052A8C * 0x708)) & 0xFFFF) / 32768.0) * 14.0) + (f64)temp_s5);
		temp_s2 = (s16)(s32)((((f64)(f32)sins(((D_80052A8C * 0x64) + temp_lo) & 0xFFFF) / 32768.0) * temp_f22) + 0.0);
		temp_s2 = (s16)(s32)((((f64)(f32)sins((temp_lo_2 + (D_80052A8C * 0x708)) & 0xFFFF) / 32768.0) * 14.0) + (f64)temp_s2);

		var_v0 = temp_fp & 0xFF;
		if (D_80052B58 < temp_fp) {
			var_v0 = D_80052B58 & 0xFF;
		}

		D_8005BB34->v.ob[0] = temp_s5;
		D_8005BB34->v.ob[1] = temp_s2;
		D_8005BB34->v.ob[2] = 0x1C;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = 0xDC;
		D_8005BB34->v.cn[1] = 0xE6;
		D_8005BB34->v.cn[2] = 0xFF;
		D_8005BB34->v.cn[3] = var_v0;
		D_8005BB34++;
	}

	temp_f22 = (f64)spCC;
	temp_fp_2 = 0xB4 - (var_s3 * 6);
	for (i = 0; i < 10; i++) {
		temp_lo = (i << 0x10) / 10;
		temp_lo_2 = (i << 0x10) / 3;

		temp_s5 = (s16)(s32)((((f64)(f32)coss(((D_80052A8C * 0x64) + temp_lo) & 0xFFFF) / 32768.0) * temp_f22) + 0.0);
		temp_s5 = (s16)(s32)((((f64)(f32)coss((temp_lo_2 + (D_80052A8C * 0x708)) & 0xFFFF) / 32768.0) * 7.0) + (f64)temp_s5);
		temp_s2 = (s16)(s32)((((f64)(f32)sins(((D_80052A8C * 0x64) + temp_lo) & 0xFFFF) / 32768.0) * temp_f22) + 0.0);
		temp_s2 = (s16)(s32)((((f64)(f32)sins((temp_lo_2 + (D_80052A8C * 0x708)) & 0xFFFF) / 32768.0) * 7.0) + (f64)temp_s2);

		var_v0 = temp_fp_2 & 0xFF;
		if (D_80052B58 < temp_fp_2) {
			var_v0 = D_80052B58 & 0xFF;
		}

		D_8005BB34->v.ob[0] = temp_s5;
		D_8005BB34->v.ob[1] = temp_s2;
		D_8005BB34->v.ob[2] = 3;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0;
		if (!(i & 1)) {
			D_8005BB34->v.cn[0] = 0x47;
			D_8005BB34->v.cn[1] = 0x0A;
			D_8005BB34->v.cn[2] = 0xD4;
		} else {
			D_8005BB34->v.cn[0] = 0x62;
			D_8005BB34->v.cn[1] = 0xEF;
			D_8005BB34->v.cn[2] = 0xFF;
		}
		D_8005BB34->v.cn[3] = var_v0;
		D_8005BB34++;
	}

	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 0x15) & 0x1FFFFFFF), 21, 0);
	for (i = 1; i < 10; i++) {
		gSP1Triangle(D_8005BB2C++, i, i + 1, 0, 0);
	}
	gSP1Triangle(D_8005BB2C++, 10, 1, 0, 0);

	for (i = 1; i < 10; i++) {
		gSP2Triangles(D_8005BB2C++, i + 1, i, i + 10, 0, i + 10, i + 11, i + 1, 0);
	}
	gSP2Triangles(D_8005BB2C++, 1, 10, 20, 0, 20, 11, 1, 0);

	spD8 = 0x8000;
	spDA = 0;
	spDC = 0;
	func_800039D0_45D0(NULL, (Unk80052B40 *)&spD8, NULL, D_8005BB38);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	gSPVertex(D_8005BB2C++, (Vtx *)((u32)(D_8005BB34 - 0x15) & 0x1FFFFFFF), 21, 0);
	for (i = 1; i < 10; i++) {
		gSP1Triangle(D_8005BB2C++, i, i + 1, 0, 0);
	}
	gSP1Triangle(D_8005BB2C++, 10, 1, 0, 0);

	for (i = 1; i < 10; i++) {
		gSP2Triangles(D_8005BB2C++, i + 1, i, i + 10, 0, i + 10, i + 11, i + 1, 0);
	}
	gSP2Triangles(D_8005BB2C++, 1, 10, 20, 0, 20, 11, 1, 0);

	gDPPipeSync(D_8005BB2C++);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BC760_CB710.s")
#endif

// https://decomp.me/scratch/2g8BD
#ifdef NON_MATCHING
void func_800BD20C_CC1BC(void)
{
	u8 var_v0;
	u8 var_a0;

	for (var_v0 = 0;var_v0 < D_80047F98; var_v0++)
	{
		for (var_a0 = 0;var_a0 < 0x10;var_a0++)
		{
			if ((D_80147F00_156EB0[currentLevel][var_v0 - 6] & (1 << var_a0)) &&
				D_8003E0FC[currentLevel - 1][var_a0].unk6 != 0x50)
			{
				D_8003E0FC[currentLevel - 1][var_a0].unk6 =
					((-D_8003E0FC[currentLevel - 1][var_a0].unk6 < D_8003E0FC[currentLevel - 1][var_a0].unk6
					  ? D_8003E0FC[currentLevel - 1][var_a0].unk6
					  : -D_8003E0FC[currentLevel - 1][var_a0].unk6) + 1);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BD20C_CC1BC.s")
#endif

// Reset gates for current level to closed
void func_800BD2F4_CC2A4(void)
{
  u8 i;
  for (i = 0;i < 8;i++)
  {
	D_8003E0FC[currentLevel - 1][i].unk6 = 0;
  }
  func_800BD20C_CC1BC();
}

// DisplayGates - A gate is a portal through the shield wall
void func_800BD360_CC310(void)
{
	u8 i;
	s16 sp88[2];

	if (currentLevel == 5)
	{
		return;
	}

	gDPSetRenderMode(D_8005BB2C++,
		Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL | G_RM_PASS,
		Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA));
	gSPClearGeometryMode(D_8005BB2C++, G_FOG | G_LIGHTING);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_PASS2);
	gDPPipeSync(D_8005BB2C++);

	for (i = 0; i < 8; i++)
	{
		if (D_8003E0FC[currentLevel - 1][i].unk9 == 2)
		{
			if (D_8003E0FC[currentLevel - 1][i].unk6 == 0)
			{
				return;
			}
			return;
		}

		sp88[1] = D_8003E0FC[currentLevel - 1][i].unk0 << 8;
		sp88[0] = D_8003E0FC[currentLevel - 1][i].unk4 << 8;
		if (func_800BB3D0_CA380(
			D_80149434 - 0x800,
			D_80149436 - 0x900,
			D_80149434 + 0x700,
			D_80149436 + 0x700,
			&sp88[1],
			&sp88[0],
			&sp88[1],
			&sp88[0]) != 0)
		{
			if (func_800B93AC_C835C(
				D_8003E0FC[currentLevel - 1][i].unk0 << 8,
				D_8003E0FC[currentLevel - 1][i].unk4 << 8,
				0xA0,
				(s16)(s32)D_80052B2C->unk0,
				(s32)D_80052B2C->unk8,
				0x4000 - D_80047950) != 0)
			{
				s8 v1;
				s32 a0;
				s32 absAnim;
				s16 gateY;

				func_800B84D0_C7480(
					D_8003E0FC[currentLevel - 1][i].unk0 << 8,
					D_8003E0FC[currentLevel - 1][i].unk4 << 8);

				gateY = D_8003E0FC[currentLevel - 1][i].unk2;
				v1 = D_8003E0FC[currentLevel - 1][i].unk6;
				a0 = -v1;
				if (a0 < v1)
				{
					absAnim = v1;
				}
				else
				{
					absAnim = a0;
				}

				func_800BC760_CB710(
					D_8003E0FC[currentLevel - 1][i].unk0 << 8,
					gateY,
					D_8003E0FC[currentLevel - 1][i].unk4 << 8,
					(u8)absAnim,
					(D_8003E0FC[currentLevel - 1][i].unk9 << 14) + 0x4000);
			}
		}
	}

	gSPSetGeometryMode(D_8005BB2C++, G_FOG | G_LIGHTING);
	gDPPipeSync(D_8005BB2C);
}

// Is player in a gate?
// CURRENT(1785)
#ifdef NON_MATCHING
s32 func_800BD688_CC638(s16 arg0, s16 arg1, s16 arg2, VehicleInstance *arg3) {
	s16 i;
	s16 dist;
	s16 tempDist;
	s32 x;
	s32 y;
	s32 z;
	s32 absX;
	s32 absY;
	s32 absZ;
	s32 height;
	u32 distSq;

	height = func_800B84D0_C7480(arg0, arg2) >> 8;
	if (height < D_80222A70) {
		height = D_80222A70;
	}

	if (arg3 != D_80052B34) {
		return 1;
	}

	for (i = 0; i < 8; i++) {
		if (D_8003E0FC[currentLevel - 1][i].unk6 != 0x50) {
			continue;
		}

		x = (D_8003E0FC[currentLevel - 1][i].unk0 << 8) - arg0;
		absX = -x;
		if (x >= 0) {
			absX = x;
		}

		z = (D_8003E0FC[currentLevel - 1][i].unk4 << 8) - arg2;
		absZ = -z;
		if (z >= 0) {
			absZ = z;
		}

		y = D_8003E0FC[currentLevel - 1][i].unk2 - arg1;
		absY = -y;
		if (y >= 0) {
			absY = y;
		}

		distSq = (absX * absX) + (absZ * absZ) + (absY * absY);
		dist = sqrtf((f32)distSq);
		tempDist = dist;
		if ((u16)tempDist < 0xFA) {
			return 0;
		}

		if ((u16)tempDist >= 0x1F4) {
			continue;
		}

		if ((height + 0xC8) < D_8003E0FC[currentLevel - 1][i].unk2) {
			return 0;
		}
	}

	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BD688_CC638.s")
#endif

// CURRENT(45)
#ifdef NON_MATCHING
void func_800BD8B8_CC868(void) {
	u8* gate;
	u8 i;
	s8 state;
	s32 absX;
	s32 absZ;
	s32 diff;
	s32 gateX;
	s32 gateZ;

	if (currentLevel == 5) {
		return;
	}

	if (D_801591AC == 5) {
		D_80047F94 = func_800B0F20_BFED0(D_80052B34->unk0, D_80052B34->unk4);
		func_800B0C80_BFC30();
		func_800FAC90_109C40();
	}

	for (i = 0; i < 8; i++) {
		gate = (u8*)&D_8003E0FC[currentLevel][i];
		if (*(u8*)(gate - 0x47) == 2) {
			return;
		}

		state = *(s8*)(gate - 0x4A);
		if ((state != 0) && (state < 0x50)) {
			*(s8*)(gate - 0x4A) = state + 4;
			state = *(s8*)(gate - 0x4A);
			*(s8*)(gate - 0x4A) = state - (state % 2);
			state = *(s8*)(gate - 0x4A);
		}

		if (state >= 0x50) {
			gateX = (*(s16*)(gate - 0x50)) << 8;
			diff = D_80052B34->unk0 - gateX;
			if (diff >= 0) {
				absX = diff;
			} else {
				absX = -diff;
			}
			if (absX < 0xFA) {
				gateZ = (*(s16*)(gate - 0x4C)) << 8;
				diff = D_80052B34->unk4 - gateZ;
				if (diff >= 0) {
					absZ = diff;
				} else {
					absZ = -diff;
				}
				if (absZ < 0xFA) {
					if (*(u8*)(gate - 0x47) == 1) {
						if (gateZ < D_80052B34->unk4) {
							D_80047F94 = *(u8*)(gate - 0x48);
						} else {
							D_80047F94 = *(u8*)(gate - 0x49);
						}
					} else if (gateX < D_80052B34->unk0) {
						D_80047F94 = *(u8*)(gate - 0x48);
					} else {
						D_80047F94 = *(u8*)(gate - 0x49);
					}
					func_800B0C80_BFC30();
					func_800FAC90_109C40();
					*(s16*)&D_8013D9A8_14C958 = 30;
				}
			}
		}
	}

	if (*(s16*)&D_8013D9A8_14C958 > 0) {
		*(s16*)&D_8013D9A8_14C958 -= 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BD8B8_CC868.s")
#endif

// openCurrentStageGate
#ifdef NON_MATCHING
// CURRENT(1115)
void func_800BDAF4_CCAA4(void) {
	u8 stage;
	u8 *gate;
	s32 gateState;
	s32 absGateState;
	s16 x;
	s16 y;
	s16 z;

	for (stage = 0; stage < 0x10; stage++) {
		osSyncPrintf(&D_80142DF0_151DA0, currentLevel, D_80047F94, D_80147F00_156EB0[currentLevel][D_80047F94 - 6]);
		if (!(D_80147F00_156EB0[currentLevel][D_80047F94 - 6] & (1 << stage))) {
			continue;
		}

		osSyncPrintf(&D_80142DFC_151DAC, stage);
		gate = (u8 *) &D_8003E0FC[currentLevel][stage];
		gateState = *(s8 *) (gate - 0x4A);
		if (gateState == 0x50) {
			continue;
		}

		absGateState = -gateState;
		if (absGateState < gateState) {
			absGateState = gateState;
		}

		x = *(s16 *) (gate - 0x50) << 8;
		z = *(s16 *) (gate - 0x4C) << 8;
		y = *(s16 *) (gate - 0x4E);
		*(s8 *) (gate - 0x4A) = absGateState + 1;
		func_800DEE5C_EDE0C(x, y, z, 0x64, 3);
		func_800DEE5C_EDE0C(x, y, z, 0x32, 3);
		func_800D05A8_DF558(x, y, z, 0x1F4, 0xC8, 0xC8, 0xFA);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BDAF4_CCAA4.s")
#endif

void func_800BDD24_CCCD4(u8 arg0)
{
  if ((D_8003E0FC[currentLevel - 1][arg0].unk6 > 0) && (D_80048188 == 0))
  {
	D_8003E0FC[currentLevel - 1][arg0].unk6 = (s8) -(
		-D_8003E0FC[currentLevel - 1][arg0].unk6 < D_8003E0FC[currentLevel - 1][arg0].unk6
		? D_8003E0FC[currentLevel - 1][arg0].unk6
		: -D_8003E0FC[currentLevel - 1][arg0].unk6);
  }
}

void func_800BDDA0_CCD50(void) {
	D_80151DD0 = 0;
	D_8013D9AC_14C95C = 0;
}

void func_800BDDB4_CCD64(void) {
	D_80151DD0 = 3;
	D_8013D9AC_14C95C = 0;
}

// CURRENT(8803)
#ifdef NON_MATCHING
void func_800BDDCC_CCD7C(void) {
	s16 sp5E;
	s16 sp5C;
	s16 sp5A;
	s8 sp56;
	s8 sp55;
	s8 sp54;
	s16 sp52;
	s16 sp50;
	s32 sp4C;
	s16 temp;
	u32 ticks;
	u8 state;
	u8 timer;

	state = D_80151DD0;
	if ((state == 0) && ((u8)D_8013D9AC_14C95C == 0)) {
		if ((D_8004816A >= ((u8)D_800314C4 - 2)) || (func_8000726C_7E6C(0x33) != 0)) {
			D_80151DD0 = 1;
			D_8013D9AC_14C95C = 0x40;
		}
		state = D_80151DD0;
		timer = (u8)D_8013D9AC_14C95C;
	} else {
		timer = (u8)D_8013D9AC_14C95C;
		if ((state == 1) && (timer == 0)) {
			if ((D_8004816A >= ((u8)D_800314C4 - 1)) || (func_8000726C_7E6C(0x33) != 0)) {
				D_80151DD0 = 2;
				D_8013D9AC_14C95C = 0x40;
			}
			state = D_80151DD0;
			timer = (u8)D_8013D9AC_14C95C;
		} else if ((state == 2) && (timer == 0)) {
			if ((D_8004816A >= (u8)D_800314C4) || (func_8000726C_7E6C(0x33) != 0)) {
				D_80151DD0 = 3;
				D_8013D9AC_14C95C = 0x96;
				func_800755E0_84590();
				sp5E = 0xFE;
				do {
					D_80050AE0[sp5E].pad4[3] = 0;
					func_8011BB94_12AB44(sp5E, 1);
				} while (sp5E-- != 0);
				func_80087F08_96EB8();
			}
			state = D_80151DD0;
			timer = (u8)D_8013D9AC_14C95C;
		} else if ((state == 3) && (timer == 0) && (currentLevel != 5)) {
			func_80006DAC_79AC(0x64, 0);
			func_80123AC4_132A74(D_80052B34);
			func_80123AC4_132A74(D_80052B34);
			func_800DFBA8_EEB58(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, 0xFA, 6);
			D_80151DD0 = 4;
			state = 4;
		}
	}

	if ((state == 3) && (timer == 0x28) && (currentLevel != 5)) {
		func_80018D7C_1997C(0xE5);
		state = D_80151DD0;
		timer = (u8)D_8013D9AC_14C95C;
	}

	if (timer != 0) {
		D_8013D9AC_14C95C = timer - 1;
	}

	if ((state == 1) && ((D_80052A8C % 5U) == 0)) {
		sp5C = ((func_800038E0_44E0() / 32) + D_80052B34->unk0) - 0x404;
		sp5A = ((func_800038E0_44E0() / 32) + D_80052B34->unk4) - 0x404;
		sp4C = func_800B84D0_C7480(sp5C, sp5A);
		func_800C541C_D43CC(sp5C, (s16)(sp4C >> 8), sp5A, 0, 0x7F, 0, 0x32, 0xA0, (func_800038E0_44E0() % 5) + 5,
						  0xA, 0xFF, 0xFF, 0xFF);
		state = D_80151DD0;
	}

	if (state == 2) {
		ticks = D_80052A8C;
		if ((ticks % 3U) == 0) {
			sp5C = ((func_800038E0_44E0() / 32) + D_80052B34->unk0) - 0x404;
			sp5A = ((func_800038E0_44E0() / 32) + D_80052B34->unk4) - 0x404;
			sp4C = func_800B84D0_C7480(sp5C, sp5A);
			func_800C541C_D43CC(sp5C, (s16)(sp4C >> 8), sp5A, 0, 0x7F, 0, 0x50, 0xA0, (func_800038E0_44E0() % 10) + 5,
							  0xA, 0xFF, 0xFF, 0xFF);
			ticks = D_80052A8C;
		}

		if ((ticks % 9U) == 0) {
			sp5C = ((func_800038E0_44E0() / 32) + D_80052B34->unk0) - 0x404;
			sp5A = ((func_800038E0_44E0() / 32) + D_80052B34->unk4) - 0x404;
			sp4C = func_800B84D0_C7480(sp5C, sp5A);
			func_800DF9C8_EE978(sp5C, (s16)(sp4C >> 8), sp5A, 0x32, 0, 0);
		}
	}

	state = D_80151DD0;
	if ((state == 3) || (state == 4)) {
		ticks = D_80052A8C;
		if ((ticks & 7) == 0) {
			sp50 = ((func_800038E0_44E0() / 32) + D_80052B34->unk0) - 0x404;
			sp52 = ((func_800038E0_44E0() / 32) + D_80052B34->unk4) - 0x404;
			sp54 = (func_800038E0_44E0() / 512) + 0x7F;
			sp55 = (func_800038E0_44E0() / 512) + 0x7F;
			sp56 = (func_800038E0_44E0() / 512) + 0x7F;
			func_800B99A8_C8958((Unk80152B80 *)&sp50, 0x1E, 0x1F4, 0xFF, (u8 *)&sp54, 0x50, 0xA, 0);
			ticks = D_80052A8C;
		}

		if ((ticks % 5U) == 0) {
			sp5C = ((func_800038E0_44E0() / 32) + D_80052B34->unk0) - 0x404;
			sp5A = ((func_800038E0_44E0() / 32) + D_80052B34->unk4) - 0x404;
			sp4C = func_800B84D0_C7480(sp5C, sp5A);
			func_800DF9C8_EE978(sp5C, (s16)(sp4C >> 8), sp5A, (func_800038E0_44E0() % 0x32) + 0x3C, 0, 0);
			ticks = D_80052A8C;
		}

		if ((ticks % 10U) == 3) {
			sp5C = ((func_800038E0_44E0() / 32) + D_80052B34->unk0) - 0x404;
			sp5A = ((func_800038E0_44E0() / 32) + D_80052B34->unk4) - 0x404;
			sp4C = func_800B84D0_C7480(sp5C, sp5A);
			temp = (s16)(sp4C >> 8);
			func_800D16BC_E066C(sp5C, temp, sp5A, sp5C, temp + 0xBB8, sp5A, 0xD);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BDDCC_CCD7C.s")
#endif

#ifdef NON_MATCHING
// CURRENT(24105)
void func_800BE5C0_CD570(void) {
	s16 i;
	u8 sp57;
	u8 sp56;
	u8 sp55;
	u8 intensity;
	u16 colorA;
	u16 colorB;
	u16 *colors;

	if (D_80151DD0 == 0) {
		return;
	}

	if (D_80151DD0 == 2) {
		func_800B4050_C3000(D_8014F89C, D_8014F89D, D_801FEA30, 0);
		intensity = (u8)D_8013D9AC_14C95C;
		if (intensity != 0) {
			colors = (u16 *)&D_802D4AD0;
			for (i = 0; i < 0x100; i++) {
				func_80004A38_5638(i & 0xFF, &sp57, &sp56, &sp55);
				colors[i] = (func_800B0A10_BF9C0((s32)sp57 / 2, sp57, intensity, 0x40) << 11)
							+ (func_800B0A10_BF9C0((s32)sp56 / 2, sp56, intensity, 0x40) << 6)
							+ (func_800B0A10_BF9C0((s32)sp55 / 2, sp55, intensity, 0x40) * 2);
			}

			func_80004A38_5638(D_802CA8D0, &sp57, &sp56, &sp55);
			colorA = (func_800B0A10_BF9C0((s32)sp57 / 2, sp57, intensity - 1, 0x40) << 11)
					+ (func_800B0A10_BF9C0((s32)sp56 / 2, sp56, intensity - 1, 0x40) << 6)
					+ (func_800B0A10_BF9C0((s32)sp55 / 2, sp55, intensity - 1, 0x40) * 2);

			func_80004A38_5638(D_802D48CF, &sp57, &sp56, &sp55);
			colorB = (func_800B0A10_BF9C0((s32)sp57 / 2, sp57, intensity - 1, 0x40) << 11)
					+ (func_800B0A10_BF9C0((s32)sp56 / 2, sp56, intensity - 1, 0x40) << 6)
					+ (func_800B0A10_BF9C0((s32)sp55 / 2, sp55, intensity - 1, 0x40) * 2);

			func_800049D4_55D4(colorA, colorB);
			leoInitUnit_atten();

			D_80047743 = func_800B0A10_BF9C0((s32)D_800313E8 / 2, D_800313E8, intensity, 0x40);
			D_80047744 = func_800B0A10_BF9C0((s32)D_800313EC / 2, D_800313EC, intensity, 0x40);
			D_80047745 = func_800B0A10_BF9C0((s32)D_800313F0 / 2, D_800313F0, intensity, 0x40);
		}
	}

	if ((D_80151DD0 == 3) || (D_80151DD0 == 4)) {
		func_800B4050_C3000(D_8014F89C, D_8014F89D, D_801FEA30, 0);
		intensity = (u8)D_8013D9AC_14C95C;
		if (intensity != 0) {
			colors = (u16 *)&D_802D4AD0;
			for (i = 0; i < 0x100; i++) {
				func_80004A38_5638(i & 0xFF, &sp57, &sp56, &sp55);
				colors[i] = (func_800B0A10_BF9C0(0, (s32)sp57 / 2, intensity, 0x96) << 11)
							+ (func_800B0A10_BF9C0(0, (s32)sp56 / 2, intensity, 0x96) << 6)
							+ (func_800B0A10_BF9C0(0, (s32)sp55 / 2, intensity, 0x96) * 2);
			}

			func_80004A38_5638(D_802CA8D0, &sp57, &sp56, &sp55);
			colorA = (func_800B0A10_BF9C0(0, (s32)sp57 / 2, intensity - 1, 0x96) << 11)
					+ (func_800B0A10_BF9C0(0, (s32)sp56 / 2, intensity - 1, 0x96) << 6)
					+ (func_800B0A10_BF9C0(0, (s32)sp55 / 2, intensity - 1, 0x96) * 2);

			func_80004A38_5638(D_802D48CF, &sp57, &sp56, &sp55);
			colorB = (func_800B0A10_BF9C0(0, (s32)sp57 / 2, intensity - 1, 0x96) << 11)
					+ (func_800B0A10_BF9C0(0, (s32)sp56 / 2, intensity - 1, 0x96) << 6)
					+ (func_800B0A10_BF9C0(0, (s32)sp55 / 2, intensity - 1, 0x96) * 2);

			func_800049D4_55D4(colorA, colorB);
			leoInitUnit_atten();

			D_80047743 = func_800B0A10_BF9C0(0, (s32)D_800313E8 / 2, intensity, 0x96);
			D_80047744 = func_800B0A10_BF9C0(0, (s32)D_800313EC / 2, intensity, 0x96);
			D_80047745 = func_800B0A10_BF9C0(0, (s32)D_800313F0 / 2, intensity, 0x96);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BE5C0_CD570.s")
#endif

void func_800BECE0_CDC90(void) {
	D_8013D9B0_14C960 = 0x4B;
}

void func_800BECF0_CDCA0(void) {
	D_8013D9B0_14C960 = 0x4B;
	D_8013D9B4_14C964 = 1;
}

void func_800BED0C_CDCBC(void) {
	D_8013D9B0_14C960 = 1;
	D_8013D9B4_14C964 = 0;
}

void func_800BED24_CDCD4(void) {
	D_8013D9B4_14C964 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BED30_CDCE0.s")

#ifdef NON_MATCHING
// CURRENT(8393)
void func_800C0678_CF628(void) {
	s16 sp3C;
	f32 sp30;
	s32 sp24;
	f32 temp_f2;
	f32 var_f2;
	f64 temp_f0;
	s16 *var_t1;
	s16 temp_t0;
	s16 var_a1;
	s16 var_v0_4;
	s32 temp_a3;
	s32 temp_t2;
	s32 temp_t7;
	s32 temp_v0;
	s32 temp_v1_2;
	s32 var_v0;
	s32 var_v0_2;
	s32 var_v0_3;
	s8 temp_v1;

	var_a1 = D_8013DAFC_14CAAC[0];
	if (var_a1 == -1) {
		if (D_8013D9CC_14C97C != 0) {
			D_8013DB00_14CAB0 = 2;
		} else {
			D_8013DB00_14CAB0 = (func_800038E0_44E0(var_a1) % 2) + 2;
		}
		D_8013D9C0_14C970[0] += 8;
		var_a1 = D_8013D9C0_14C970[0];
		D_80152B7C = D_800313F8;
		D_8013DB08_14CAB8 = 1;
	}
	var_t1 = D_8013D9C0_14C970;
	D_8013DAFC_14CAAC[0] = var_a1;
	if ((var_a1 - 8) < D_8013D9C0_14C970[0]) {
		temp_t0 = var_a1 - D_8013D9C0_14C970[0];
		D_8013DAFC_14CAAC[0] = var_a1;
		temp_f2 = (f32)((f64)(f32)D_8013D9C4_14C974[0] * 0.001953125);
		temp_v1 = (s16)(s32)(200.0f - (100.0f * temp_f2)) - (temp_t0 * 0xF);
		if (temp_v1 < 0) {
			D_80047743 = 0;
		} else {
			D_80047743 = temp_v1;
		}
		if (temp_v1 < 0) {
			D_80047744 = 0;
		} else {
			D_80047744 = temp_v1;
		}
		if (temp_v1 < 0) {
			D_80047745 = 0;
		} else {
			D_80047745 = temp_v1;
		}
		temp_v1_2 = (s16)(s32)(28.0f - (10.0f * temp_f2)) - temp_t0;
		var_v0 = temp_v1_2;
		if (temp_v1_2 < 0) {
			var_v0 = 0;
		}
		if (temp_v1_2 < 0) {
			var_v0_2 = 0;
		} else {
			var_v0_2 = temp_v1_2;
		}
		if (temp_v1_2 < 0) {
			var_v0_3 = 0;
		} else {
			var_v0_3 = temp_v1_2;
		}
		temp_t7 = (((((var_v0 << 0xB) & 0xFFFF) + (var_v0_2 << 6)) & 0xFFFF) + (var_v0_3 * 2)) & 0xFFFF;
		sp3C = temp_t0;
		sp30 = temp_f2;
		func_800049D4_55D4(temp_t7, temp_t7 & 0xFFFF);
		temp_v0 = 7 - temp_t0;
		sp24 = temp_v0;
		D_800313F8 = D_80152B7C - ((s32)((f64)(f32)temp_v0 * (1.0 - (f64)temp_f2)) * 0x32);
		D_8013D9C8_14C978 = 1;
		func_800B345C_C240C(D_8014F89C, D_8014F89D, D_801FEA30, 0);
		var_t1 = D_8013D9C0_14C970;
		if ((temp_v0 == 7) && (D_8013DB00_14CAB0 != 0)) {
			D_8013DB00_14CAB0 -= 1;
		}
		if (D_8013DAFC_14CAAC[0] == (D_8013D9C0_14C970[0] + 7)) {
			D_8013DB04_14CAB4 = 1;
			if (D_8013DB00_14CAB0 != 0) {
				D_8013D9C0_14C970[0] += 8;
				D_8013DAFC_14CAAC[0] = D_8013D9C0_14C970[0] - 1;
			}
		} else if (D_8013DB00_14CAB0 != 0) {
			var_t1 = D_8013D9C0_14C970;
			if ((func_800038E0_44E0() % 8) == 0) {
				D_8013D9C0_14C970[0] += 8;
				D_8013DAFC_14CAAC[0] = D_8013D9C0_14C970[0] - 1;
			}
		}
	}
	if (((D_8013D9CC_14C97C != 0) && (D_8013DB08_14CAB8 != 0)) || ((D_8013D9CC_14C97C == 0) && (D_8013D9C0_14C970[0] <= 0))) {
		temp_f0 = (f64)(f32)D_8013D9C4_14C974[0] * 0.00390625;
		if (temp_f0 > 1.0) {
			var_f2 = 1.0f;
		} else {
			var_f2 = (f32)temp_f0;
		}
		sp30 = var_f2;
		temp_a3 = func_80136ECC_145E7C(-0x4000, 0, -0x8000) << 0x10;
		D_8013DB08_14CAB8 = 0;
		temp_t2 = temp_a3 >> 0x10;
		if (D_80047F94 == 3) {
			if (D_8013D9CC_14C97C != 0) {
				func_80014A3C_1563C(0, 0xE8, 0.0f, temp_t2,
					(f32)((D_80142E70_151E20 - ((f64)var_f2 * D_80142E70_151E20)) + D_80142E78_151E28));
			} else {
				func_80014A3C_1563C(0, 0xE8, (f32)(D_8013D9C4_14C974[0] * 5), temp_t2,
					(f32)((D_80142E80_151E30 - ((f64)var_f2 * D_80142E80_151E30)) + D_80142E88_151E38));
			}
		} else {
			func_80014A3C_1563C(0, 0xE8, (f32)(D_8013D9C4_14C974[0] * 5), temp_t2, D_80142E90_151E40);
		}
		var_t1 = D_8013D9C0_14C970;
	}
	if ((D_8013DB04_14CAB4 != 0) || (var_v0_4 = *var_t1, (var_v0_4 <= 0))) {
		if (D_80151DD0 == 2) {
			D_80047743 = (s8)((s32)D_800313E8 / 2);
			D_80047744 = (s8)((s32)D_800313EC / 2);
			D_80047745 = (s8)((s32)D_800313F0 / 2);
		} else if (D_80151DD0 == 3) {
			D_80047743 = 0;
			D_80047744 = 0;
			D_80047745 = 0;
		} else {
			D_80047743 = (s8)D_800313E8;
			D_80047744 = (s8)D_800313EC;
			D_80047745 = (s8)D_800313F0;
		}
		D_800313F8 = D_80152B7C;
		func_80004948_5548();
		D_8013DB04_14CAB4 = 0;
		D_8013D9C8_14C978 = 0;
		func_800B345C_C240C(D_8014F89C, D_8014F89D, D_801FEA30, 0);
		var_t1 = D_8013D9C0_14C970;
		var_v0_4 = D_8013D9C0_14C970[0];
	}
	if (var_v0_4 <= 0) {
		D_8013DAFC_14CAAC[0] = -1;
		func_800074BC_80BC(func_800C0678_CF628);
		var_t1 = D_8013D9C0_14C970;
		var_v0_4 = D_8013D9C0_14C970[0];
	}
	if (var_v0_4 != 0) {
		*var_t1 = var_v0_4 - 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800C0678_CF628.s")
#endif

#ifdef NON_MATCHING
s32 func_800C0D1C_CFCCC(s32 arg0, s32 arg1, s32 arg2) {
	VehicleInstance *vehicle;
	s32 temp_a0;
	s32 temp_v0;
	s32 var_a1;
	s32 var_v1;
	Level level;

	if (D_8013D9C0_14C970[0] != 0) {
		return 0;
	}
	if ((u8) D_8013D9B0_14C960 != 0) {
		return 0;
	}
	if ((u8) D_8013D9AC_14C95C != 0) {
		return 0;
	}

	vehicle = D_80052B34;
	D_8013D9CC_14C97C = arg2;
	temp_v0 = (vehicle->unk0 >> 7) - (s16) arg0;
	temp_a0 = -temp_v0;
	if (temp_a0 < temp_v0) {
		var_a1 = temp_v0;
	} else {
		var_a1 = temp_a0;
	}
	temp_v0 = (vehicle->unk4 >> 7) - (s16) arg1;
	temp_a0 = -temp_v0;
	if (temp_a0 < temp_v0) {
		var_v1 = temp_v0;
	} else {
		var_v1 = temp_a0;
	}
	D_8013D9C4_14C974[0] = (s16) (s32) sqrtf((f32) ((var_a1 * var_a1) + (var_v1 * var_v1)));
	if (arg2 != 0) {
		D_8013D9C0_14C970[0] = 0;
	} else {
		D_8013D9C0_14C970[0] = (s16) (D_8013D9C4_14C974[0] / 2);
	}
	level = currentLevel - 1;
	D_800313F8 = D_80031634[level * 2];
	func_80007410_8010(func_800C0678_CF628);
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800C0D1C_CFCCC.s")
#endif