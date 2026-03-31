#include <ultra64.h>
#include "common.h"

s32 func_800B0A10_BF9C0(s32 arg0, s32 arg1, s16 arg2, s16 arg3) {
	return (s32)(((arg3 - arg2) * arg0) + (arg1 * arg2)) / arg3;
}

#ifdef NON_MATCHING
s32 func_800B0A88_BFA38(s32 arg0, s32 arg1) {
	s32 a0;
	s32 a1;
	s32 a2;
	s32 a3;
	s32 v0;
	s32 t0;
	u16 *v1;

	v1 = &D_80052A94[arg1].unk0[arg0];
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
		|| (a3 = arg1 + arg2, a1 = 0, D_8014FD30.unk6 < a3)) {
		return 1;
	}
	a2 = &D_8014FD30;
	do {
		if (a2->unk8 == a2->unkC) {
			return 0;
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

#ifdef NON_MATCHING
s32 func_800B0F20_BFED0(s32 arg0, s32 arg1) {
	s16 t2;
	s16 v0;
	s32 t0;
	s32 v1;
	s32 cl;
	Unk8014FD30Type *a2;
	Unk8014FD30Type *a3;
	Unk8014FD30Type *t1;
	s32 t8;

	cl = currentLevel - 1;
	a2 = (Unk8014FD30Type *)((u8 *)&D_80147C30_156BE0 + cl * 0x90);
	a3 = a2;
	v1 = 0;

	for (;;) {
		if (arg0 >= a3->unk0 && a3->unk4 >= arg0 && a3->unk2 < arg1) {
			t8 = (v1 << 2) - v1;
			if (arg1 < a3->unk6) {
				t0 = 0;
				t1 = (Unk8014FD30Type *)((u8 *)a2 + (t8 << 3));
				for (;;) {
					v0 = t1->unk8;
					t2 = t1->unkC;
					if (v0 == t2) {
						return v1 & 0xFF;
					}
					if ((arg0 < v0) || (t2 < arg0) || (t1->unkA >= arg1) || (arg1 >= t1->unkE)) {
						if (t0 == 8) {
							return v1 & 0xFF;
						}
						t0 += 8;
						t1 = (Unk8014FD30Type *)((u8 *)t1 + 8);
						if (t0 != 0x10) {
							continue;
						}
					}
					goto next;
				}
			}
		}
	next:
		v1++;
		a3 = (Unk8014FD30Type *)((u8 *)a3 + 0x18);
		if (v1 == 6) {
			return 0xFF;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B0F20_BFED0.s")
#endif

// ClipLineToShieldWalls
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B1028_BFFD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B165C_C060C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B1814_C07C4.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B1A68_C0A18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B2354_C1304.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B2854_C1804.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B2CF0_C1CA0.s")

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


#ifdef NON_MATCHING
void func_800B32AC_C225C(u8 *arg0) {
	s32 x;
	s32 y;
	s32 i;
	s32 level;
	u16 *cell;
	u16 val;

	x = 0;
	y = 0;
	level = D_80222A70 / 32;
	cell = (u16 *)arg0;
	i = 0;

	do {
		i += 2;
		if (currentLevel == 4) {
			level = 6;
			if ((x < 0x4C) && (y < 0x9C) && (y >= 0x59)) {
				level = 0x20;
			}
		}

		val = cell[0];
		if (((cell[0] & 0x3F) < level) || ((cell[1] & 0x3F) < level) || ((cell[0x100] & 0x3F) < level) ||
			((cell[0x101] & 0x3F) < level)) {
			cell[0] = val | 0x1000;
		} else {
			cell[0] = val & ~0x1000;
		}

		x = (x + 1) & 0xFF;
		if (x == 0) {
			y = (y + 1) & 0xFF;
		}
		cell++;
	} while (i != 0x1FE02);

	*((u16 *)arg0) = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B32AC_C225C.s")
#endif

void func_800B33BC_C236C(s32 arg0) {
	s16 coss_val;
	f32 sp20;
	f32 sp1C;

	sp1C = __cosf(D_80142E20_151DD0); sp20 = sinf(D_80142E24_151DD4);
	coss_val = coss(arg0);
	D_8014FD2A = func_80003740_4340((f32)((f64)(sp20 / sp1C) / ((f64)(f32)coss_val / 32768.0))) * 2;
	if ((s16)arg0 >= 0x2E39) {
		D_8014FD2A = 0x8000;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B345C_C240C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B42B0_C3260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B4660_C3610.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B49A4_C3954.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B4D4C_C3CFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B5090_C4040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B5EE4_C4E94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B604C_C4FFC.s")

// Draw rotated tiles e.g. roads
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B753C_C64EC.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B879C_C774C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B8C2C_C7BDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B8D80_C7D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B8F30_C7EE0.s")

void func_800B91C8_C8178(s16 arg0, s16 arg1, s32 arg2) {
	func_800B8C2C_C7BDC(arg0, arg1, 0x1F);
	D_8014F850 = 2.0f;
	D_8014F832 = 0x46;
	D_8014F838 = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B9228_C81D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B93AC_C835C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B960C_C85BC.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B9AC8_C8A78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800B9C28_C8BD8.s")

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
  func_800B753C_C64EC(spFC);
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

// DrawVtxBufferWater
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BA5B0_C9560.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BB3D0_CA380.s")

// DrawShieldWalls
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BB5E0_CA590.s")

// (short playerX, short playerZ)
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BC2F8_CB2A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BC5DC_CB58C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BC760_CB710.s")

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
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BD360_CC310.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BD688_CC638.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BD8B8_CC868.s")

// openCurrentStageGate
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BDAF4_CCAA4.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BDDCC_CCD7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800BE5C0_CD570.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800C0678_CF628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/BF9C0/func_800C0D1C_CFCCC.s")
