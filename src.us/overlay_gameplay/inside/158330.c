#include <ultra64.h>
#include "common.h"


s32 func_80070270_158330(s32 arg0) {
	func_8007290C_15A9CC();
	return 0;
}

#ifdef NON_MATCHING
/* CURRENT(4058) */
void func_80070294_158354(Unk8007CAA8_6A40 *arg0) {
	s32 center;
	s32 halfWidth;

	if (D_800E65D0 == 0) {
		return;
	}

	if ((isButtonNewlyPressed(0, 0x8000) == 0) && (D_800E65C8->unk0 != 4)) {
		return;
	}

	center = D_800E65C8->unk28 + D_800E65CC;
	halfWidth = D_800E65C8->unk2A;
	if (halfWidth < 0) {
		halfWidth = (halfWidth + 1) >> 1;
	} else {
		halfWidth >>= 1;
	}

	if (func_8007C3C0_164480(D_800E6A78.unk4C - 96.0f,
							 D_800E6A78.unk54 - 96.0f,
							 (f32)(center - halfWidth),
							 (f32)(center + halfWidth),
							 0.0f,
							 30.0f) != 0) {
		if (func_8007A370_162430(0, (s32)(((f64)(f32)(D_800E6A86 & 0xFFFF) * D_800A4A00_18CAC0) / 32768.0)) != 0) {
			D_800E65A8 |= 0x800;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80070294_158354.s")
#endif

s32 func_800703D0_158490(void) {
	return D_800E65C8->unk28 + D_800E65CC;
}

u8 func_800703EC_1584AC(void) {
	return D_800E65C8->unk0;
}

void func_800703FC_1584BC(s32 *arg0, s32 *arg1) {
	*arg0 = D_800E65C8->unk4 + D_800E65CC;
	*arg1 = D_800E65C8->unk8;
}

f32 func_8007042C_1584EC(void) {
	return D_800E65E0 / D_800E65C8->unk10;
}

f32 func_80070448_158508(void) {
	return D_800E65E0 / D_800E65C8->unk14;
}

#ifdef NON_MATCHING
/* CURRENT(1715) */
void func_80070464_158524(s32 *arg0, s32 *arg1, s32 arg2) {
	s32 temp_v1;
	s32 temp_v1_3;
	s32 temp_v1_4;
	s32 temp_v1_5;
	u8 temp_a3;
	u8 temp_v0;
	Unk800E66A8 *temp_v1_2;
	Unk80070464Obj **temp_a2;

	temp_v1_2 = &D_800E66A8[arg2];
	temp_v0 = temp_v1_2->unk0;
	*arg0 = temp_v1_2->unk2;
	*arg1 = temp_v1_2->unk6;
	temp_a3 = temp_v1_2->unk8;
	temp_a2 = (Unk80070464Obj **) &D_800E65BC;
	temp_v1 = (temp_v0 << 3) + temp_v0;

	switch (temp_a3) {
		case 0:
			temp_v1 <<= 3;
			*arg0 += ((Unk80070464Obj *) ((u8 *) *temp_a2 + temp_v1))->unk8;
			*arg1 += ((Unk80070464Obj *) ((u8 *) *temp_a2 + temp_v1))->unkA;
			return;

		case 1:
			temp_a2 = (Unk80070464Obj **) &D_800E65BC;
			temp_v1_3 = temp_v0 * 0x48;
			*arg0 += ((Unk80070464Obj *) ((u8 *) *temp_a2 + temp_v1_3))->unkA;
			*arg1 -= ((Unk80070464Obj *) ((u8 *) *temp_a2 + temp_v1_3))->unk8;
			return;

		case 2:
			temp_a2 = (Unk80070464Obj **) &D_800E65BC;
			temp_v1_4 = temp_v0 * 0x48;
			*arg0 -= ((Unk80070464Obj *) ((u8 *) *temp_a2 + temp_v1_4))->unk8;
			*arg1 -= ((Unk80070464Obj *) ((u8 *) *temp_a2 + temp_v1_4))->unkA;
			return;

		case 3:
			temp_a2 = (Unk80070464Obj **) &D_800E65BC;
			temp_v1_5 = temp_v0 * 0x48;
			*arg0 -= ((Unk80070464Obj *) ((u8 *) *temp_a2 + temp_v1_5))->unkA;
			*arg1 += ((Unk80070464Obj *) ((u8 *) *temp_a2 + temp_v1_5))->unk8;
			return;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80070464_158524.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800705E0_1586A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80070F7C_15903C.s")

#ifdef NON_MATCHING
/* CURRENT(40) */
void func_80071304_1593C4(void) {
	s16 var_a0_2;
	s32 var_a0;
	s32 var_v0;
	u8 *ptr;

	var_v0 = D_800E6628;
	if (var_v0 & 8) {
		var_a0 = D_800E6618 + D_800E661C;
		D_800E6618 = var_a0;
		if (var_a0 >= 0xDD) {
			func_800153D8_15FD8(0x17D);
			D_800E6618 = 0xDC;
			var_a0 = D_800E6618;
			D_800E661C = -D_800E661C;
		}
		if (var_a0 < 0x28) {
			D_800E6618 = 0x28;
			var_a0 = D_800E6618;
			D_800E661C = -D_800E661C;
		}

		ptr = D_8008DE50_175F10;
		ptr[8] = (s8) var_a0;
		ptr[9] = 0;
		ptr[10] = 0;
		ptr[12] = (s8) var_a0;
		ptr[13] = 0;
		ptr[14] = 0;
		ptr[24] = (s8) var_a0;
		ptr[25] = 0;
		ptr[26] = 0;
		ptr[28] = (s8) var_a0;
		ptr[29] = 0;
		ptr[30] = 0;
		goto block_33;
	}

	if (var_v0 & 4) {
		var_a0_2 = 0x28;
	} else {
		if (D_800E6600 > 0) {
			s32 temp_t0;

			temp_t0 = (0xB4 - (D_800E6610 * 0x2D)) & 0xFF;
			var_v0 = temp_t0;
			var_a0_2 = ((temp_t0 / (s32) D_800E6600) * D_800E65FC) + (D_800E6614 * 0x2D) + D_800E6608 + 0x28;
		} else {
			var_a0_2 = (D_800E6614 * 0x2D) + D_800E6608 + 0x28;
		}

		if (var_a0_2 >= 0x100) {
			var_a0_2 = 0xFF;
		}
	}

	ptr = D_8008DE50_175F10;
	ptr[8] = (s8) var_a0_2;
	ptr[9] = (s8) var_a0_2;
	ptr[10] = (s8) var_a0_2;
	ptr[12] = (s8) var_a0_2;
	ptr[13] = (s8) var_a0_2;
	ptr[14] = (s8) var_a0_2;
	ptr[24] = (s8) var_a0_2;
	ptr[25] = (s8) var_a0_2;
	ptr[26] = (s8) var_a0_2;
	ptr[28] = (s8) var_a0_2;
	ptr[29] = (s8) var_a0_2;
	ptr[30] = (s8) var_a0_2;

block_33:
	return;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80071304_1593C4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80071510_1595D0.s")

u8 func_800717A8_159868(void) {
	return D_8008DE58_175F18;
}

#ifdef NON_MATCHING
void func_800717B4_159874(void) {
	s32 *a0;
	s32 a1;
	s32 v0;
	s32 *ptr;
	s32 *endptr;
	s32 val;

	v0 = 0;
	if (D_8009C4C8 != -1) {
		a0 = &D_8009C4C8;
		a1 = D_8009C4C8;
		do {
			*a0 = v0;
			v0 += a1;
			a1 = a0[1];
			a0++;
		} while (a1 != -1);
		v0 = 0;
	}
	if ((&D_8009C4C8)[currentLevel - 1] * 8 < (&D_8009C4C8)[currentLevel] * 8) {
		ptr = D_8009C4E4 + (&D_8009C4C8)[currentLevel - 1] * 8;
		endptr = D_8009C4E4 + (&D_8009C4C8)[currentLevel] * 8;
		do {
			val = *ptr;
			*ptr++ = v0;
			v0 += val;
		} while ((u32)ptr < (u32)endptr);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800717B4_159874.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80071854_159914.s")

void func_80071D94_159E54(int arg0, unsigned char arg1, unsigned char arg2, unsigned char arg3)
{
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, 3 << 20);
	gDPSetColorImage(D_8005BB2C++, 0, G_IM_SIZ_16b, 320, K0_TO_PHYS(arg0));
	gDPSetFillColor(D_8005BB2C++, (GPACK_RGBA5551(arg1, arg2, arg3, 1) << 16) | GPACK_RGBA5551(arg1, arg2, arg3, 1));
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, 0, D_80068084 - 1, D_80068088);
	gDPSetCycleType(D_8005BB2C++, 0 << 20);
	gDPPipeSync(D_8005BB2C++);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80071F08_159FC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80072300_15A3C0.s")

#ifdef NON_MATCHING
/* CURRENT(195) */
void func_8007279C_15A85C(void) {
	if (D_800E65A8 & 0x40) {
		if (D_800E65E0 == D_800E65C8->unk10) {
			D_800E65A8 = 1;
			if (*(s32 *)&D_800E65C8->unk30 != -1) {
				func_800153D8_15FD8(D_800E65C8->unk36);
			}
			D_800E65E0 = 0.0f;
			osSyncPrintf(&D_800A441C_18C4DC, &D_800E65E0);
			return;
		}
		D_800E65DC += D_800E65C8->unk20;
		D_800E65E0 += 1.0f;
		return;
	} else if (D_800E65A8 & 0x80) {
		if (D_800E65E0 == D_800E65C8->unk14) {
			D_800E65A8 = 0x100;
			osSyncPrintf(&D_800A442C_18C4EC, &D_800E65E0);
			D_80068080 = 7;
			return;
		}

		if (D_800E65E0 == 0.0f) {
			func_800153D8_15FD8(D_800E65C8->unk32);
		}

		D_800E65DC += D_800E65C8->unk24;
		D_800E65E0 += 1.0f;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007279C_15A85C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007290C_15A9CC.s")

#ifdef NON_MATCHING
/* CURRENT(130) */
s32 func_80072E88_15AF48(void) {
	u32 attrBits;

	switch (currentLevel) {
		case 1:
			if (D_800E66A4 != 1) {
				break;
			}

			attrBits = ((u32*) D_80050AE0)[D_80052540 * 6];
			attrBits = (attrBits << 0x1A) >> 0x1C;
			if (attrBits != 5) {
				break;
			}
			return 1;

		case 2:
		case 3:
		case 4:
			attrBits = D_800E66A4;
			if (attrBits == 1) {
				attrBits = ((u32*) D_80050AE0)[D_80052540 * 6];
				attrBits = (attrBits << 0x1A) >> 0x1C;
				if (attrBits == 8) {
					return 1;
				}
			}

			if (attrBits != 2) {
				break;
			}

			attrBits = ((u32*) D_80050AE0)[D_80052540 * 6];
			attrBits = (attrBits << 0x1A) >> 0x1C;
			if ((attrBits != 0xA) && (attrBits != 6)) {
				break;
			}
			return 1;

		case 5:
			return 1;
	}

	return 0;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80072E88_15AF48.s")
#endif

void func_80072FB4_15B074(void) {
	guess_checkMissions();
	func_8007279C_15A85C();
	func_8007C8FC_1649BC();
	if ((D_800E65A8 & 8) || (func_80072E88_15AF48() != 0)) {
		func_8007F778_167838();
	} else {
		func_8007F878_167938();
	}
	func_80078D68_160E28();
	func_80077B94_15FC54();
	func_800784B8_160578();
	func_80073200_15B2C0();
	func_80071510_1595D0();
	func_80079330_1613F0();
	func_8008B474_173534();
}

#ifdef NON_MATCHING
/* CURRENT(2568) */
void func_80073058_15B118(void) {
	s32 i;

	for (i = 0; i < D_800E668C; i++) {
		u8 entryIdx = D_800E66A8[i].unk0;
		u8 flags = D_800E66A8[i].unk2E;
		s32 objFlags = D_800E65BC[entryIdx].unk44;

		if (((flags & 1) || (objFlags & 0x40000000)) && (objFlags & 0x20000000)) {
			D_800E66A8[i].unk2E = flags & ~1;
			func_80077A5C_15FB1C(i, entryIdx);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80073058_15B118.s")
#endif

#ifdef NON_MATCHING
void func_8007313C_15B1FC(void) {
	Unk800E66A8 *entry;
	s32 count;
	s32 var_v0;

	count = D_800E668C;
	entry = D_800E66A8;
	if (count > 0) {
		s16 *temp_a3 = &D_80047D40[buildingInteriorToLoadId];
		var_v0 = 0;
		do {
			if (D_800E65BC[entry->unk0].unk44 & 2) {
				entry->unk2E &= ~1;
			}
			if (entry->unk2E & 1) {
				*temp_a3 |= 1 << var_v0;
			} else {
				*temp_a3 &= ~(1 << var_v0);
			}
			var_v0++;
			entry++;
		} while (var_v0 < count);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007313C_15B1FC.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80073200_15B2C0.s")

#ifdef NON_MATCHING
/* CURRENT(1240) */
void func_8007343C_15B4FC(void) {
	Unk158330SrcState *src;
	Unk158330SrcState *srcEnd;
	Unk158330DstState *dst;
	f32 tempF4;
	f32 tempF6;
	f32 tempF8;
	f32 tempF10;
	f32 tempF16;
	f32 tempF18;
	u8 tempT6;
	u8 tempT7;
	u8 tempT8;
	u8 tempT9;
	u8 *srcBase;

	dst = (Unk158330DstState *) D_800E66A8;
	src = (Unk158330SrcState *) &D_80047B70;
	srcEnd = (Unk158330SrcState *) &D_80047D30;
	do {
		tempF4 = src->unk04;
		tempF6 = src->unk08;
		tempF8 = src->unk0C;
		tempF10 = src->unk10;
		tempF16 = src->unk14;
		tempF18 = src->unk18;
		dst->unk14 = tempF4;
		dst->unk18 = tempF6;
		dst->unk1C = tempF8;
		dst->unk20 = tempF10;
		dst->unk24 = tempF16;
		dst->unk28 = tempF18;

		tempF18 = src->unk34;
		tempF16 = src->unk30;
		tempF10 = src->unk2C;
		tempF8 = src->unk28;
		tempF6 = src->unk24;
		tempF4 = src->unk20;
		dst->unk58 = tempF18;
		dst->unk54 = tempF16;
		dst->unk50 = tempF10;
		dst->unk4C = tempF8;
		dst->unk48 = tempF6;
		dst->unk44 = tempF4;

		tempF4 = src->unk3C;
		tempF6 = src->unk40;
		tempF8 = src->unk44;
		tempF10 = src->unk48;
		tempF16 = src->unk4C;
		tempF18 = src->unk50;
		dst->unk74 = tempF4;
		dst->unk78 = tempF6;
		dst->unk7C = tempF8;
		dst->unk80 = tempF10;
		dst->unk84 = tempF16;
		dst->unk88 = tempF18;

		tempF18 = src->unk6C;
		tempF16 = src->unk68;
		tempF10 = src->unk64;
		tempF8 = src->unk60;
		tempF6 = src->unk5C;
		tempF4 = src->unk58;
		tempT7 = src->unk38;
		tempT8 = src->unk54;
		tempT9 = src->unk70;
		tempT6 = src->pad1C[0];

		src = (Unk158330SrcState *) ((u8 *) src + 0x70);
		dst = (Unk158330DstState *) ((u8 *) dst + 0xC0);

		dst[-1].unkB8 = tempF18;
		dst[-1].unkB4 = tempF16;
		dst[-1].unkB0 = tempF10;
		dst[-1].unkAC = tempF8;
		dst[-1].unkA8 = tempF6;
		dst[-1].unkA4 = tempF4;
		dst[-1].unkA0 = tempT7;
		dst[-1].unkD0 = tempT8;
		dst[-1].unk102 = tempT9;
		dst[-1].unk132 = tempT6;
	} while (src != srcEnd);

	srcBase = (u8 *) &D_80047B70;
	D_800E6A78.unkE = *(s32 *) (srcBase + 0x1C4);
	D_800E6A78.unk4C = *(f32 *) (srcBase + 0x1C8);
	D_800E6A78.unk54 = *(f32 *) (srcBase + 0x1CC);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007343C_15B4FC.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(6460) */
void func_8007356C_15B62C(void) {
	u8 *a0;
	u8 *a1;
	u8 *v0;
	u8 *v1;
	f32 tempF4;
	f32 tempF6;
	f32 tempF8;
	f32 tempF10;
	f32 tempF16;
	f32 tempF18;
	u16 tempT1;
	u16 tempT3;
	u16 tempT7;
	u16 tempT9;
	u8 tempT0;
	u8 tempT2;
	u8 tempT4;
	u8 tempT8;

	D_80047B70 = 1;
	a1 = (u8 *) &D_80047B70;
	v1 = (u8 *) &D_80047B70;
	a0 = (u8 *) D_800E66A8;
	v0 = (u8 *) D_800E66A8 + 0x300;
	do {
		*(f32 *) (v1 + 0x04) = *(f32 *) (a0 + 0x14);
		*(f32 *) (v1 + 0x08) = *(f32 *) (a0 + 0x18);
		*(f32 *) (v1 + 0x0C) = *(f32 *) (a0 + 0x1C);
		*(f32 *) (v1 + 0x10) = *(f32 *) (a0 + 0x20);
		*(f32 *) (v1 + 0x14) = *(f32 *) (a0 + 0x24);
		*(f32 *) (v1 + 0x18) = *(f32 *) (a0 + 0x28);
		*(f32 *) (v1 + 0x34) = *(f32 *) (a0 + 0x58);
		*(f32 *) (v1 + 0x30) = *(f32 *) (a0 + 0x54);
		*(f32 *) (v1 + 0x2C) = *(f32 *) (a0 + 0x50);
		*(f32 *) (v1 + 0x28) = *(f32 *) (a0 + 0x4C);
		*(f32 *) (v1 + 0x24) = *(f32 *) (a0 + 0x48);
		*(f32 *) (v1 + 0x20) = *(f32 *) (a0 + 0x44);
		*(f32 *) (v1 + 0x3C) = *(f32 *) (a0 + 0x74);
		*(f32 *) (v1 + 0x40) = *(f32 *) (a0 + 0x78);
		*(f32 *) (v1 + 0x44) = *(f32 *) (a0 + 0x7C);
		*(f32 *) (v1 + 0x48) = *(f32 *) (a0 + 0x80);
		*(f32 *) (v1 + 0x4C) = *(f32 *) (a0 + 0x84);
		*(f32 *) (v1 + 0x50) = *(f32 *) (a0 + 0x88);

		tempF18 = *(f32 *) (a0 + 0xB8);
		tempF16 = *(f32 *) (a0 + 0xB4);
		tempF10 = *(f32 *) (a0 + 0xB0);
		tempF8 = *(f32 *) (a0 + 0xAC);
		tempF6 = *(f32 *) (a0 + 0xA8);
		tempF4 = *(f32 *) (a0 + 0xA4);
		tempT9 = *(u16 *) (a0 + 0x40);
		tempT0 = *(u8 *) (a0 + 0x5E);
		tempT1 = *(u16 *) (a0 + 0x70);
		tempT2 = *(u8 *) (a0 + 0x8E);
		tempT3 = *(u16 *) (a0 + 0xA0);
		tempT4 = *(u8 *) (a0 + 0xBE);
		tempT7 = *(u16 *) (a0 + 0x10);
		tempT8 = *(u8 *) (a0 + 0x2E);

		a0 += 0xC0;
		v1 += 0x70;

		*(f32 *) (v1 - 0x04) = tempF18;
		*(f32 *) (v1 - 0x08) = tempF16;
		*(f32 *) (v1 - 0x0C) = tempF10;
		*(f32 *) (v1 - 0x10) = tempF8;
		*(f32 *) (v1 - 0x14) = tempF6;
		*(f32 *) (v1 - 0x18) = tempF4;
		*(u8 *) (v1 - 0x38) = tempT9;
		*(u8 *) (v1 - 0x37) = tempT0;
		*(u8 *) (v1 - 0x1C) = tempT1;
		*(u8 *) (v1 - 0x1B) = tempT2;
		*(u8 *) (v1 + 0x00) = tempT3;
		*(u8 *) (v1 + 0x01) = tempT4;
		*(u8 *) (v1 - 0x54) = tempT7;
		*(u8 *) (v1 - 0x53) = tempT8;
	} while (a0 != v0);

	*(s32 *) (a1 + 0x1C4) = D_800E6A78.unkE;
	*(f32 *) (a1 + 0x1C8) = D_800E6A78.unk4C;
	*(f32 *) (a1 + 0x1CC) = D_800E6A78.unk54;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007356C_15B62C.s")
#endif

void func_800736C4_15B784(void) {
	s32 i;
	for (i = 0; i < D_800E668C; i++) {
		if (D_800E66A8[i].unkE != -1) {
			D_800E66A8[i].unkE = -1;
		}
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80073714_15B7D4.s")

void func_80073A48_15BB08(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80073A50_15BB10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007453C_15C5FC.s")

void func_80074998_15CA58(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = D_800E6460 - 1;
	if (var_s1 >= 0) {
		do {
			var_s0 = D_800E6464 - 1;
			if (var_s0 >= 0) {
				do {
					func_8007453C_15C5FC(var_s1, var_s0);
					var_s0 -= 1;
				} while (var_s0 >= 0);
			}
			var_s1 -= 1;
		} while (var_s1 >= 0);
	}
}

void func_80074A0C_15CACC(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = D_800E6460 - 1;
	if (var_s1 >= 0) {
		do {
			if (D_800E6464 > 0) {
				var_s0 = 0;
				do {
					func_8007453C_15C5FC(var_s1, var_s0);
					var_s0 += 1;
				} while (var_s0 < D_800E6464);
			}
			var_s1 -= 1;
		} while (var_s1 >= 0);
	}
}

void func_80074A8C_15CB4C(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = 0;
	if (var_s1 < D_800E6460) {
		do {
			var_s0 = D_800E6464 - 1;
			if (var_s0 >= 0) {
				do {
					func_8007453C_15C5FC(var_s1, var_s0);
					var_s0 -= 1;
				} while (var_s0 >= 0);
			}
			var_s1 += 1;
		} while (var_s1 < D_800E6460);
	}
}

void func_80074B0C_15CBCC(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = 0;
	if (var_s1 < D_800E6460) {
		do {
			if (D_800E6464 > 0) {
				var_s0 = 0;
				do {
					func_8007453C_15C5FC(var_s1, var_s0);
					var_s0 += 1;
				} while (var_s0 < D_800E6464);
			}
			var_s1 += 1;
		} while (var_s1 < D_800E6460);
	}
}

void func_80074B98_15CC58(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = D_800E6464 - 1;
	if (var_s1 >= 0) {
		do {
			if (D_800E6460 > 0) {
				var_s0 = 0;
				do {
					func_8007453C_15C5FC(var_s0, var_s1);
					var_s0 += 1;
				} while (var_s0 < D_800E6460);
			}
			var_s1 -= 1;
		} while (var_s1 >= 0);
	}
}

void func_80074C18_15CCD8(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = D_800E6464 - 1;
	if (var_s1 >= 0) {
		do {
			var_s0 = D_800E6460 - 1;
			if (var_s0 >= 0) {
				do {
					func_8007453C_15C5FC(var_s0, var_s1);
					var_s0 -= 1;
				} while (var_s0 >= 0);
			}
			var_s1 -= 1;
		} while (var_s1 >= 0);
	}
}

void func_80074C8C_15CD4C(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = 0;
	if (var_s1 < D_800E6464) {
		do {
			if (D_800E6460 > 0) {
				var_s0 = 0;
				do {
					func_8007453C_15C5FC(var_s0, var_s1);
					var_s0 += 1;
				} while (var_s0 < D_800E6460);
			}
			var_s1 += 1;
		} while (var_s1 < D_800E6464);
	}
}

void func_80074D18_15CDD8(void) {
	s32 var_s0;
	s32 var_s1;

	var_s1 = 0;
	if (var_s1 < D_800E6464) {
		do {
			var_s0 = D_800E6460 - 1;
			if (var_s0 >= 0) {
				do {
					func_8007453C_15C5FC(var_s0, var_s1);
					var_s0 -= 1;
				} while (var_s0 >= 0);
			}
			var_s1 += 1;
		} while (var_s1 < D_800E6464);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80074D98_15CE58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80074FF0_15D0B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007568C_15D74C.s")

typedef struct {
	/* 0x00 */ u8 pad0[0x8];
	/* 0x08 */ s16 unk8;
	/* 0x0A */ s16 unkA;
	/* 0x0C */ s16 unkC;
	/* 0x0E */ s16 unkE;
	/* 0x10 */ s16 unk10;
	/* 0x12 */ s16 unk12;
	/* 0x14 */ u8 pad14[0x34];
} Unk80076538Obj; /* size = 0x48 */

void func_80076538_15E5F8(s32 arg0) {
	Unk800E66A8 *temp_v0;
	Unk80076538Obj *temp_v0_2;
	Unk80076538Obj *temp_v0_3;
	Unk80076538Obj *temp_v0_4;
	Unk80076538Obj *temp_v0_5;
	s32 var_t0;
	s32 var_v1;
	u8 temp_a2;

	temp_v0 = &D_800E66A8[arg0];
	temp_a2 = temp_v0->unk0;
	var_v1 = temp_v0->unk2;
	var_t0 = temp_v0->unk6;

	switch (temp_v0->unk8) {
		case 0:
			temp_v0_2 = &((Unk80076538Obj *) D_800E65BC)[temp_a2];
			var_v1 += temp_v0_2->unk8;
			var_t0 += temp_v0_2->unkA;
			break;

		case 1:
			temp_v0_3 = &((Unk80076538Obj *) D_800E65BC)[temp_a2];
			var_v1 += temp_v0_3->unkA;
			var_t0 -= temp_v0_3->unk8;
			break;

		case 2:
			temp_v0_4 = &((Unk80076538Obj *) D_800E65BC)[temp_a2];
			var_v1 -= temp_v0_4->unk8;
			var_t0 -= temp_v0_4->unkA;
			break;

		case 3:
			temp_v0_5 = &((Unk80076538Obj *) D_800E65BC)[temp_a2];
			var_v1 -= temp_v0_5->unkA;
			var_t0 += temp_v0_5->unk8;
			break;
	}

	func_80073714_15B7D4(5, 5, var_v1 - 0x60, 2, var_t0 - 0x60, 0xFA, 0xFA, 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80076678_15E738.s")

#ifdef NON_MATCHING
/* CURRENT(2112) */
void func_800768B8_15E978(s32 arg0) {
	s32 sp34;
	s32 sp30;
	s32 sp2C;
	s32 sp28;
	s16 temp_t0;
	s16 temp_t1;
	u16 temp_a3;
	Unk800768B8Obj *temp_v0;
	Unk800E66A8 *temp_v1;

	temp_v1 = &D_800E66A8[arg0];
	temp_v0 = &((Unk800768B8Obj *) D_800E65BC)[temp_v1->unk0];
	temp_a3 = temp_v0->unk1A;
	temp_t0 = temp_v0->unk32;
	temp_t1 = temp_v0->unk34;

	switch (temp_v1->unk8) {
		case 0:
			sp2C = temp_t1;
			sp34 = temp_v1->unk2 + temp_t0;
			sp30 = temp_v1->unk6 + ((s32) temp_a3 / 2) + 0xF;
			sp28 = 0xF;
			break;

		case 1:
			sp2C = 0xF;
			sp28 = temp_t1;
			sp30 = temp_v1->unk6 - temp_t0;
			sp34 = temp_v1->unk2 + ((s32) temp_a3 / 2) + 0xF;
			break;

		case 2:
			sp2C = temp_t1;
			sp28 = 0xF;
			sp34 = temp_v1->unk2 - temp_t0;
			sp30 = (temp_v1->unk6 - ((s32) temp_a3 / 2)) - 0xF;
			break;

		case 3:
			sp2C = 0xF;
			sp28 = temp_t1;
			sp30 = temp_v1->unk6 + temp_t0;
			sp34 = (temp_v1->unk2 - ((s32) temp_a3 / 2)) - 0xF;
			break;
	}

	func_80073714_15B7D4(sp2C, sp28, sp34 - 0x60, 5, sp30 - 0x60, 0xFA, 0, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800768B8_15E978.s")
#endif

// CURRENT(1928)
#ifdef NON_MATCHING
void func_80076A58_15EB18(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
	s32 sp3C;
	s32 temp_s2;
	s32 temp_t9;
	s32 var_s0;
	s32 var_s1;
	s32 var_s2;
	s32 var_s3;
	u32 temp_v0_3;
	Gfx *temp_v0;
	Gfx *temp_v1;
	u8 *var_s4;

	temp_v0 = D_8005BB2C;
	temp_s2 = arg0 & 0xFF;
	D_8005BB2C = temp_v0 + 1;
	var_s4 = (u8 *)(temp_v0 + 2);
	temp_v0->words.w0 = 0xBC001C06;
	temp_v1 = temp_v0;
	temp_v0_3 = osVirtualToPhysical(var_s4);
	temp_v1->words.w1 = temp_v0_3;

	temp_t9 = ((temp_s2 << 6) + 5) & ~5;
	temp_v0 = D_8005BB2C;
	temp_v0->words.w0 = 0x06010000;
	temp_v0->words.w1 = temp_t9 + 0x07000000;
	D_8005BB2C = (Gfx *)(var_s4 + temp_t9);

	sp3C = temp_s2;
	func_80076C08_15ECC8((s32 *)arg2, (u16 *)arg1, (s16 *)arg3, D_8005BB38);
	temp_v0 = D_8005BB2C;
	D_8005BB2C = temp_v0 + 1;
	temp_v0->words.w0 = 0x01060040;
	temp_v0->words.w1 = D_8005BB38 & 0x1FFFFFFF;
	D_8005BB38 += 0x40;

	if (sp3C > 0) {
		var_s0 = arg2 + 0xC;
		var_s2 = arg1 + 6;
		var_s3 = arg3 + 6;
		var_s1 = 6;
		temp_t9 = (sp3C << 2) - sp3C;
		temp_t9 <<= 1;
		do {
			func_80077010_15F0D0(var_s0, var_s2, var_s3, var_s4);
			var_s1 += 6;
			var_s0 += 0xC;
			var_s2 += 6;
			var_s3 += 6;
			var_s4 += 0x40;
		} while (var_s1 <= temp_t9);
	}

	temp_v0 = D_8005BB2C;
	D_8005BB2C = temp_v0 + 1;
	temp_v0->words.w0 = 0x06000000;
	temp_v0->words.w1 = arg4;
	temp_v0 = D_8005BB2C;
	D_8005BB2C = temp_v0 + 1;
	temp_v0->words.w1 = 0;
	temp_v0->words.w0 = 0xBD000000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80076A58_15EB18.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80076C08_15ECC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80077010_15F0D0.s")

#ifdef NON_MATCHING
// CURRENT(30)
void func_800773F4_15F4B4(Gfx *arg0, s32 arg1, s32 arg2, s32 arg3, u16 arg4, u16 arg5, u16 arg6, s32 arg7, s32 arg8, s16 arg9) {
	u16 sp38[3];
	s16 sp30[3];
	s32 sp24[3];

	sp24[0] = arg1;
	sp24[1] = arg2;
	sp24[2] = arg3;
	sp38[0] = arg5;
	sp38[1] = arg6;
	sp38[2] = arg4;
	sp30[0] = arg9;
	sp30[1] = arg9;
	sp30[2] = arg9;
	func_80076C08_15ECC8(sp24, sp38, sp30, arg7);

	gSPMatrix(D_8005BB2C++, (Mtx *)(arg7 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	gSPDisplayList(D_8005BB2C++, arg0);
	if (arg8 != 0) {
		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800773F4_15F4B4.s")
#endif

void func_800774E0_15F5A0(s32 arg0, f32 *arg1, f32 *arg2) {
	s32 objIndex;

	objIndex = D_800E66A8[arg0].unk0;
	if ((D_800E66A8[arg0].unk8 == 0) || (D_800E66A8[arg0].unk8 == 2)) {
		*arg1 = D_800E65BC[objIndex].unk18;
		*arg2 = D_800E65BC[objIndex].unk1A;
		return;
	}

	*arg1 = D_800E65BC[objIndex].unk1A;
	*arg2 = D_800E65BC[objIndex].unk18;
}

#ifdef NON_MATCHING
/* CURRENT(649) */
void func_800775F0_15F6B0(s32 arg0, s32 arg1) {
	Unk800E66A8 *entry;
	Unk80076538Obj *obj;
	s32 objType;
	s32 var_t0;
	s32 var_t1;
	s32 var_t2;

	entry = &D_800E66A8[arg0];
	obj = &((Unk80076538Obj *) D_800E65BC)[arg1];
	objType = obj->unkC;
	var_t2 = obj->unk10 + entry->unk4;

	switch (entry->unk8) {
		case 0:
			var_t0 = obj->unkE + entry->unk2;
			var_t1 = obj->unk12 + entry->unk6;
			break;

		case 1:
			var_t0 = obj->unk12 + entry->unk2;
			var_t1 = entry->unk6 - obj->unkE;
			break;

		case 2:
			var_t0 = entry->unk2 - obj->unkE;
			var_t1 = entry->unk6 - obj->unk12;
			break;

		case 3:
			var_t0 = entry->unk2 - obj->unk12;
			var_t1 = obj->unkE + entry->unk6;
			break;
	}

	var_t0 -= 0x60;
	var_t1 -= 0x60;
	if (objType == 5) {
		func_800858F4_16D9B4(var_t0, var_t2, var_t1);
	} else if (objType == 4) {
		func_80085984_16DA44(0x28, 0x14, 0x14, var_t0, var_t2, var_t1);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800775F0_15F6B0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007774C_15F80C.s")

#ifdef NON_MATCHING
void func_80077A5C_15FB1C(s32 arg0, s32 arg1) {
	switch (*(s16 *) ((u8 *) &D_800E65BC[arg1] + 0xC)) {
		case 1:
			func_80086E90_16EF50(D_800E66B3[arg0 * 0x30]);
			break;
		case 2:
			func_80086F58_16F018(D_800E66B2[arg0 * 0x18]);
			break;
		case 3:
			func_80086F24_16EFE4(D_800E66B2[arg0 * 0x18]);
			break;
		case 4:
			func_80089794_171854(D_800E66B3[arg0 * 0x30]);
			break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80077A5C_15FB1C.s")
#endif

void func_80077B40_15FC00(s32 arg0, s32 arg1) {
	if (D_800E66A8[arg0].unk2E & 1) {
		func_8007774C_15F80C(arg0, arg1);
		return;
	}
	func_80077A5C_15FB1C(arg0, arg1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80077B94_15FC54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800784B8_160578.s")

// CURRENT(1663)
#ifdef NON_MATCHING
void func_800787E8_1608A8(s32 arg0, s32 arg1) {
	u8 playerIndex;
	s32 type;

	playerIndex = arg1;
	if (D_800E65A8 & 0x20) {
		if (D_800E662C == playerIndex) {
			osSyncPrintf(&D_800A445C_18C51C, playerIndex);
			if (D_800E65BC[(u8) arg0].unk40 & 0x10000) {
				D_800E65A8 &= ~0x20;
				D_800E65A8 |= 0x200;
				type = (D_800E66A8[playerIndex].unk2C & 0xFC) >> 2;
				if (type != 3) {
					D_800E65EC = D_800E65E8[(type * 2) + 0xEA];
					D_800E65ED = D_800E65E8[(type * 2) + 0xE9];
				}
			} else {
				D_800E65A8 &= ~0x20;
				if (D_800E65BC[(u8) arg0].unk40 & 0x02000000) {
					osSyncPrintf(&D_800A4470_18C530, D_800EAE90);
					func_80018D7C_1997C(((D_800E66A8[playerIndex].unk2C & 0xFC) >> 2) + D_800EAE90 - 2);
					D_800E65A8 |= 0x400;
				} else {
					func_8007A8AC_16296C(1);
				}
			}
		} else if (D_800E662C == 0) {
			D_800E65A8 &= ~0x20;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800787E8_1608A8.s")
#endif

#ifdef NON_MATCHING
/* CURRENT(145) */
u8 func_8007899C_160A5C(s32 arg0, s32 arg1) {
	u8 ret;

	switch (D_800E66B0[arg1 * 0x30]) {
	case 0:
		ret = arg0;
		ret &= 0xFF;
		break;
	case 1:
		if (arg0 & 4) {
			ret |= 2;
		}
		if (arg0 & 8) {
			ret = (ret | 1) & 0xFF;
		}
		if (arg0 & 1) {
			ret = (ret | 4) & 0xFF;
		}
		if (arg0 & 2) {
			ret = (ret | 8) & 0xFF;
		}
		break;
	case 2:
		if (arg0 & 4) {
			ret |= 8;
		}
		if (arg0 & 8) {
			ret = (ret | 4) & 0xFF;
		}
		if (arg0 & 1) {
			ret = (ret | 2) & 0xFF;
		}
		if (arg0 & 2) {
			ret = (ret | 1) & 0xFF;
		}
		break;
	case 3:
		if (arg0 & 4) {
			ret |= 1;
		}
		if (arg0 & 8) {
			ret = (ret | 2) & 0xFF;
		}
		if (arg0 & 1) {
			ret = (ret | 8) & 0xFF;
		}
		if (arg0 & 2) {
			ret = (ret | 4) & 0xFF;
		}
		break;
	}

	return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007899C_160A5C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80078AD4_160B94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80078D68_160E28.s")

s32 func_80079304_1613C4(void) {
	return D_800E65B4;
}

void func_80079310_1613D0(void) {
	D_800E65A8 &= ~0x8000;
}

#ifdef NON_MATCHING
/* CURRENT(5) */
void func_80079330_1613F0(void) {
	func_8000345C_405C(0x20);
	if (D_8004758E & 0x20) {
		D_800E65F8++;
		if (D_800E65F8 != D_800E668C) {
		} else {
			D_800E65F8 = 0;
		}
		osSyncPrintf(&D_800A4494_18C554, D_800E65F8);
	}

	func_8000345C_405C(0x10);
	if (D_8004758E & 0x10) {
		D_800E65F8--;
		if (D_800E65F8 < 0) {
			D_800E65F8 = D_800E668C - 1;
		}
		osSyncPrintf(&D_800A44AC_18C56C, D_800E65F8);
	}

	D_800E65F4 = 0;
	func_8000345C_405C(0x8000);
	if (D_8004758E & 0x8000) {
		D_800E65F0++;
		D_800E65F4 = 1;
	}

	switch (D_800E65F0 - 1) {
		case 0:
			func_80079C4C_161D0C();
			return;

		case 1:
			func_8007978C_16184C();
			return;

		case 2:
			func_80079954_161A14();
			return;

		case 3:
			func_80079E50_161F10();
			return;

		case 4:
			func_80079658_161718();
			return;

		case 5:
			func_800794BC_16157C();
			return;
	}

	D_800E65F0 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80079330_1613F0.s")
#endif

void func_800794BC_16157C(void) {
	s32 temp_v0;
	u8 temp_s1;
	s32 temp_v1;
	Unk80070464Obj *temp_v0_2;

	if (D_800E65F4 != 0) {
		osSyncPrintf(&D_800A44C4_18C584);
	}

	temp_v0 = D_8004758E;
	temp_s1 = D_800E66A8[D_800E65F8].unk0;

	if (temp_v0 & 0x200) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk8 += 1;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A44F4_18C5B4, temp_v0_2->unk8, temp_v0_2->unkA);
		temp_v0 = D_8004758E;
	}

	if (temp_v0 & 0x100) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk8 -= 1;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4514_18C5D4, temp_v0_2->unk8, temp_v0_2->unkA);
		temp_v0 = D_8004758E;
	}

	if (temp_v0 & 0x800) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unkA += 1;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4534_18C5F4, temp_v0_2->unk8, temp_v0_2->unkA);
		temp_v0 = D_8004758E;
	}

	if (temp_v0 & 0x400) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unkA -= 1;
		temp_v0_2 = (Unk80070464Obj *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4554_18C614, temp_v0_2->unk8, temp_v0_2->unkA);
	}
}

void func_80079658_161718(void) {
	s32 temp_v0;

	if (D_800E65F4 != 0) {
		osSyncPrintf(&D_800A4574_18C634);
	}

	temp_v0 = D_8004758E;
	if (temp_v0 & 0x200) {
		D_800E65C8->unk4 -= 1;
		osSyncPrintf(&D_800A45A4_18C664, D_800E65C8->unk4, D_800E65C8->unk8);
		temp_v0 = D_8004758E;
	}

	if (temp_v0 & 0x100) {
		D_800E65C8->unk4 += 1;
		osSyncPrintf(&D_800A45C4_18C684, D_800E65C8->unk4, D_800E65C8->unk8);
		temp_v0 = D_8004758E;
	}

	if (temp_v0 & 0x800) {
		D_800E65C8->unk8 -= 1;
		osSyncPrintf(&D_800A45E4_18C6A4, D_800E65C8->unk4, D_800E65C8->unk8);
		temp_v0 = D_8004758E;
	}

	if (temp_v0 & 0x400) {
		D_800E65C8->unk8 += 1;
		osSyncPrintf(&D_800A4604_18C6C4, D_800E65C8->unk4, D_800E65C8->unk8);
	}
}

void func_8007978C_16184C(void) {
	s32 temp_v0;
	u8 temp_s1;
	s32 temp_v1;
	Unk800E65BC *temp_v0_2;

	if (D_800E65F4 != 0) {
		osSyncPrintf(&D_800A4624_18C6E4);
	}

	temp_v0 = D_8004758E;
	temp_s1 = D_800E66A8[D_800E65F8].unk0;

	if (temp_v0 & 0x200) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk18 -= 1;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A464C_18C70C, D_800E65F8, temp_v0_2->unk18, temp_v0_2->unk1A);
		temp_v0 = D_8004758E;
	}

	if (temp_v0 & 0x100) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk18 += 1;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4668_18C728, D_800E65F8, temp_v0_2->unk18, temp_v0_2->unk1A);
		temp_v0 = D_8004758E;
	}

	if (temp_v0 & 0x800) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk1A += 1;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A4684_18C744, D_800E65F8, temp_v0_2->unk18, temp_v0_2->unk1A);
		temp_v0 = D_8004758E;
	}

	if (temp_v0 & 0x400) {
		temp_v1 = temp_s1 * 0x48;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		temp_v0_2->unk1A -= 1;
		temp_v0_2 = (Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1);
		osSyncPrintf(&D_800A46A0_18C760, D_800E65F8, temp_v0_2->unk18, temp_v0_2->unk1A);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80079954_161A14.s")

// CURRENT(230)
#ifdef NON_MATCHING
void func_80079C4C_161D0C(void) {
	u8 temp_s1;
	s32 temp_v1;

	if (D_800E65F4 != 0) {
		osSyncPrintf(&D_800A47E4_18C8A4);
	}

	temp_s1 = D_800E66A8[D_800E65F8].unk0;
	temp_v1 = temp_s1 * 0x48;

	if (((Unk800E65BC *) ((u8 *) D_800E65BC + temp_v1))->unk40 & 4) {
		s32 temp_v0;
		Unk800768B8Obj *temp_v0_2;
		Unk800768B8Obj *temp_v0_3;

		func_8000345C_405C(0x1000);
		temp_v0 = D_8004758E;

		if (temp_v0 & 0x1000) {
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			temp_v0_2->unk34 = ((Unk800E65BC *) temp_v0_2)->unk18;
			temp_v0_3 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			temp_v0_3->unk32 = 0;
			osSyncPrintf(&D_800A4800_18C8C0, D_800E65F8);
			temp_v0 = D_8004758E;
		}

		if (temp_v0 & 0x200) {
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			temp_v0_2->unk34 -= 1;
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			osSyncPrintf(&D_800A4814_18C8D4, D_800E65F8, temp_v0_2->unk32, temp_v0_2->unk34);
			temp_v0 = D_8004758E;
		}

		if (temp_v0 & 0x100) {
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			temp_v0_2->unk34 += 1;
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			osSyncPrintf(&D_800A4830_18C8F0, D_800E65F8, temp_v0_2->unk32, temp_v0_2->unk34);
			temp_v0 = D_8004758E;
		}

		if (temp_v0 & 0x800) {
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			temp_v0_2->unk32 += 1;
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			osSyncPrintf(&D_800A484C_18C90C, D_800E65F8, temp_v0_2->unk32, temp_v0_2->unk34);
			temp_v0 = D_8004758E;
		}

		if (temp_v0 & 0x400) {
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			temp_v0_2->unk32 -= 1;
			temp_v0_2 = (Unk800768B8Obj *) ((u8 *) D_800E65BC + temp_v1);
			osSyncPrintf(&D_800A4868_18C928, D_800E65F8, temp_v0_2->unk32, temp_v0_2->unk34);
		}
	}
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80079C4C_161D0C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80079E50_161F10.s")

// CURRENT(45040)
#ifdef NON_MATCHING
s32 func_8007A168_162228(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
	f32 sp3C;
	f32 sp38;
	s32 sp30;
	Unk800E66A8 *sp2C;
	s32 sp28;
	f32 temp_f0;
	f32 temp_f16;
	f32 temp_f18;
	f32 temp_f2;
	f32 temp_f6;
	s32 temp_t1;
	s32 var_v0;
	Unk800E66A8 *temp_t0;

	temp_t0 = &D_800E66A8[arg0];
	temp_t1 = ((temp_t0->unk0 << 3) + temp_t0->unk0) << 3;
	var_v0 = 0xF;
	if (((Unk800E65BC *) ((u8 *) D_800E65BC + temp_t1))->unk40 & 0x10) {
		var_v0 = 0x14;
	}
	sp30 = var_v0;
	sp2C = temp_t0;
	sp28 = temp_t1;

	func_800774E0_15F5A0(arg0, &sp3C, &sp38);

	temp_f16 = sp3C / 2.0f;
	temp_f0 = (f32) sp30;
	temp_f2 = (f32) arg1;
	temp_f18 = (f32) arg2;
	temp_f6 = sp38 / 2.0f;

	if ((func_8007C3C0_164480((f32) arg3,
							 (f32) arg4,
							 temp_f2 - (temp_f16 + temp_f0 + 1.0f + 5.0f),
							 temp_f2 + temp_f16 + temp_f0 + 1.0f + 5.0f,
							 temp_f18 - (temp_f6 + temp_f0 + 1.0f + 5.0f),
							 temp_f18 + temp_f6 + temp_f0 + 1.0f + 5.0f) != 0) &&
		(func_8007C2D0_164390((s16) arg4,
							  (s16) arg3,
							  (s16) arg2,
							  (s16) arg1,
							  sp2C->unk8 << 0xE,
							  (s32) (s16) (s32) ((f64) ((f32) ((Unk8007A168Obj *) ((u8 *) D_800E65BC + sp28))->unk24 *
															  32768.0f) /
										 D_800A4B90_18CC50) != 0))) {
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A168_162228.s")
#endif

#ifdef NON_MATCHING
s32 func_8007A370_162430(s32 arg0, s32 arg1) {
	if (arg0 == 0) {
		if (arg1 < 0xD3) { return 0; }
		return arg1 < 0x14A;
	}
	if (arg0 == 1) {
		if (arg1 < 0x79) { return 0; }
		return arg1 < 0xF0;
	}
	if (arg0 == 2) {
		if (arg1 < 0x1F) { return 0; }
		return arg1 < 0x96;
	}
	if (arg0 == 3) {
		if (arg1 >= 0x12D) { return 1; }
		return arg1 < 0x3C;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A370_162430.s")
#endif

#ifdef NON_MATCHING
s32 func_8007A414_1624D4(s32 arg0, s32 arg1, s32 arg2) {
	Unk800E66A8 *entry;
	Unk800768B8Obj *obj;
	s32 centerX;
	s32 centerY;
	s32 width;
	s32 height;
	s32 half;

	entry = &D_800E66A8[arg0];
	obj = &D_800E65BC[entry->unk0];

	switch (entry->unk8) {
		case 0:
			width = obj->unk34;
			height = 0xF;
			centerX = entry->unk2 + obj->unk32;
			half = obj->unk1A;
			if (half < 0) {
				half = (half + 1) >> 1;
			} else {
				half >>= 1;
			}
			centerY = entry->unk6 + half + 0xF;
			break;

		case 1:
			width = 0xF;
			height = obj->unk34;
			centerY = entry->unk6 - obj->unk32;
			half = obj->unk1A;
			if (half < 0) {
				half = (half + 1) >> 1;
			} else {
				half >>= 1;
			}
			centerX = entry->unk2 + half + 0xF;
			break;

		case 2:
			width = obj->unk34;
			height = 0xF;
			centerX = entry->unk2 - obj->unk32;
			half = obj->unk1A;
			if (half < 0) {
				half = (half + 1) >> 1;
			} else {
				half >>= 1;
			}
			centerY = entry->unk6 - half - 0xF;
			break;

		case 3:
			width = 0xF;
			height = obj->unk34;
			centerY = entry->unk6 + obj->unk32;
			half = obj->unk1A;
			if (half < 0) {
				half = (half + 1) >> 1;
			} else {
				half >>= 1;
			}
			centerX = entry->unk2 - half - 0xF;
			break;

		default:
			osSyncPrintf(&D_800A493C_18C9FC);
			break;
	}

	if (width < 0) {
		width = (width + 1) >> 1;
	} else {
		width >>= 1;
	}

	if (height < 0) {
		height = (height + 1) >> 1;
	} else {
		height >>= 1;
	}

	if (func_8007C3C0_164480((f32) arg1,
							 (f32) arg2,
							 (f32) (centerX - width),
							 (f32) (centerX + width),
							 (f32) (centerY - height),
							 (f32) (centerY + height)) != 0) {
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A414_1624D4.s")
#endif

void func_8007A618_1626D8(void) {
	D_800E65A8 &= ~4;
}

#ifdef NON_MATCHING
s32 func_8007A634_1626F4(s32 arg0) {
	s16 var_v0;
	s32 three;

	three = 3;
	if (arg0 == 0x14) {
		var_v0 = 0;
		do {
			if ((buildingInteriorToLoadId == D_8009CE14[currentLevel * 3 + var_v0 - 3]) &&
				(D_80048026 & (1 << (currentLevel * three + var_v0 + 0x1D)))) {
				return 1;
			}
			var_v0++;
		} while (var_v0 < 3);
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A634_1626F4.s")
#endif

#ifdef NON_MATCHING
s32 func_8007A6DC_16279C(s32 arg0) {
	s16 var_v0;
	s32 three;

	three = 3;
	if (arg0 == 0x13) {
		var_v0 = 0;
		do {
			if ((buildingInteriorToLoadId == D_8009CE34[currentLevel * 3 + var_v0 - 3]) &&
				(D_80048028 & (1 << (currentLevel * three + var_v0 + 0x1D)))) {
				return 1;
			}
			var_v0++;
		} while (var_v0 < 3);
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A6DC_16279C.s")
#endif

#ifdef NON_MATCHING
void func_8007A784_162844(s32 arg0) {
	s16 var_v0;

	if (arg0 == 0x14) {
		var_v0 = 0;
		do {
			if (buildingInteriorToLoadId == D_8009CE14[currentLevel * 3 + var_v0 - 3]) {
				D_80048026 |= 1 << (currentLevel + currentLevel + currentLevel + var_v0 + 0x1D);
				return;
			}
			var_v0++;
		} while (var_v0 < 3);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A784_162844.s")
#endif

#ifdef NON_MATCHING
void func_8007A818_1628D8(s32 arg0) {
	s16 var_v0;

	if (arg0 == 0x13) {
		var_v0 = 0;
		do {
			if (buildingInteriorToLoadId == D_8009CE34[currentLevel * 3 + var_v0 - 3]) {
				D_80048028 |= 1 << (currentLevel + currentLevel + currentLevel + var_v0 + 0x1D);
				return;
			}
			var_v0++;
		} while (var_v0 < 3);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A818_1628D8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A8AC_16296C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007AE40_162F00.s")

void func_8007B124_1631E4(s32 arg0) {
	if (D_800E66A8[D_800E662C].unk0 == 0x1F && !(D_800E65A8 & 0x10000)) {
		D_800E65A8 |= 8;
		D_800E65D8 = 1;
		func_80080168_168228(D_800E66A8[arg0].unk2, D_800E66A8[arg0].unk6, D_800E66A8[arg0].unk8);
		func_80082B04_16ABC4();
		func_80018D7C_1997C((u16)func_8000851C_911C(D_800E6632));
		return;
	}
	func_8007AE40_162F00();
}

#ifdef NON_MATCHING
/* CURRENT(3195) */
void func_8007B1E0_1632A0(s32 arg0) {
	Unk800E66A8* entry;
	s16 temp_a1;
	s16 temp_a2;
	s16 temp_v1;

	entry = &D_800E66A8[arg0];
	temp_a1 = entry->unk4;
	temp_v1 = entry->unk2;
	temp_a2 = entry->unk6;

	D_800E6650.y = (f32)temp_a1;
	D_800E6650.x = (f32)(temp_v1 - 0x60);
	D_800E6650.z = (f32)(temp_a2 - 0x60);

	D_800E6640.y = (f32)((s32)(0x4B - temp_a1) / 7);
	D_800E6640.x = (D_800E6A78.unk4C - (f32)temp_v1) / 7.0f;
	D_800E6640.z = (D_800E6A78.unk54 - (f32)temp_a2) / 7.0f;

	D_800E664C = 7;
	D_800E664E = entry->unk2C;
	D_800E6634 = 0;
	D_800E6638 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007B1E0_1632A0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007B2F0_1633B0.s")

s32 func_8007B51C_1635DC(s32 arg0) {
	s32 idx;

	if ((currentLevel == 4) && (buildingInteriorToLoadId == 0x20) && (arg0 >= 0x38) && (arg0 < 0x3C)) {
		if ((D_800E65B0 != 0) && (func_8000726C_7E6C(2) == 0)) {
			for (idx = arg0; idx >= 0x38; idx--) {
				if (func_8000726C_7E6C((u64)idx) == 0) {
					D_800E65B0 = 0;
					break;
				}
			}

			if ((D_800E65B0 != 0) && (arg0 == 0x3B)) {
				func_800072CC_7ECC(2);
				func_800073B8_7FB8(1);
				D_800E6628 &= ~8;
				func_80086F24_16EFE4(D_8008DE78_175F38.unk2);
				func_80086F24_16EFE4(D_8008DE78_175F38.unk6);
				func_80086F24_16EFE4(D_8008DE78_175F38.unkA);
				func_80086F24_16EFE4(D_8008DE78_175F38.unkE);
			}
		}
		return 0;
	}

	return 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007B65C_16371C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007BC18_163CD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007BEC8_163F88.s")

#ifdef NON_MATCHING
/* CURRENT(215) */
s32 func_8007C1DC_16429C(f32 arg0, f32 arg1, f32 arg2, f32 arg3, Unk8007C1DC *arg4) {
	f32 temp_f0;
	f32 temp_f14;
	f32 temp_f18;

	D_800E6670.z = arg2 - arg3;
	if (D_800E6680.z == 0.0f) {
		return 0;
	}

	temp_f0 = D_800E6670.z - D_800E6660.z;
	D_800E6670.x = (temp_f0 / D_800E6680.z) * D_800E6680.x + D_800E6660.x;

	if (D_800E6660.z <= D_800E6670.z) {
		if (D_800E6670.x < (arg1 + arg3)) {
			if ((arg0 - arg3) < D_800E6670.x) {
				temp_f14 = D_800E6670.x - D_800E6660.x;
				temp_f18 = (temp_f14 * temp_f14) + (temp_f0 * temp_f0);
				if (temp_f18 <= arg4->unk10) {
					arg4->unk10 = temp_f18;
					return 1;
				}
			}
		}
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007C1DC_16429C.s")
#endif

s32 func_8007C2D0_164390(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s32 arg4, s32 arg5) {
	s32 temp_v0_2;
	s32 temp_v1;
	s32 temp_a0;
	s32 temp_a1;
	s32 temp_v0;
	s32 temp_v1_2;

	temp_v0 = -arg5;
	if (temp_v0 >= arg5) {
		arg5 = temp_v0;
	}

	temp_v0_2 = func_80003824_4424((f32) (arg0 - arg2), (f32) (arg1 - arg3));
	temp_v1_2 = arg5 / 2;
	temp_a0 = (temp_v1_2 + arg4) & 0xFFFF;
	temp_a1 = (arg4 - temp_v1_2) & 0xFFFF;

	if (temp_a1 >= temp_a0) {
		temp_v1 = temp_v0_2 & 0xFFFF;
		if ((temp_v1 >= temp_a1) || (temp_a0 >= temp_v1)) {
			return 1;
		}
	} else {
		temp_v1 = temp_v0_2 & 0xFFFF;
		if ((temp_v1 >= temp_a1) && (temp_a0 >= temp_v1)) {
			return 1;
		}
	}

	return 0;
}

s32 func_8007C3C0_164480(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
	if ((arg0 <= arg3) && (arg2 <= arg0) && (arg1 <= arg5) && (arg4 <= arg1)) {
		return 1;
	}

	return 0;
}

void func_8007C420_1644E0(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007C428_1644E8.s")

#ifdef NON_MATCHING
/* CURRENT(755) */
s32 func_8007C698_164758(s32 arg0, s32 arg1) {
	Unk8007C698Npc *npc;
	u8 *cellObj;
	s32 cellX;
	s32 cellY;
	s32 width;
	s32 i;
	u8 cellType;

	cellY = arg1 / 96;
	cellX = arg0 / 96;
	width = D_800E6460;
	cellY -= 1;
	cellType = (&D_800E69A7)[width * cellY + cellX];

	if (D_800E668C > 0) {
		npc = (Unk8007C698Npc *) D_800E66A8;
		i = 0;
		do {
			if (npc->unk0 == 0x1E) {
			cellObj = (u8 *) D_800E65E8 + i;
			if ((cellObj[0x40] + 1 == cellX) && (cellObj[0x50] == cellY) && (npc->unk24 == 0.0f)) {
				cellType = 0xFF;
			}
			}
			i++;
			npc++;
		} while (i < D_800E668C);
	}

	if ((cellX - 1 < 0) || (cellY < 0) || (cellX - 1 >= width) || (cellY >= D_800E6464) || (cellType == 0xFF)) {
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007C698_164758.s")
#endif
