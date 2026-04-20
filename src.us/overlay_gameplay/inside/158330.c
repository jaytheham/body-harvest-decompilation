#include <ultra64.h>
#include "common.h"


s32 func_80070270_158330(s32 arg0) {
	func_8007290C_15A9CC();
	return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80070294_158354.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80070464_158524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800705E0_1586A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80070F7C_15903C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80071304_1593C4.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80071D94_159E54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80071F08_159FC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80072300_15A3C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007279C_15A85C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007290C_15A9CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80072E88_15AF48.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007356C_15B62C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80076538_15E5F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80076678_15E738.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800768B8_15E978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80076A58_15EB18.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800775F0_15F6B0.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800787E8_1608A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007899C_160A5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80078AD4_160B94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80078D68_160E28.s")

s32 func_80079304_1613C4(void) {
	return D_800E65B4;
}

void func_80079310_1613D0(void) {
	D_800E65A8 &= ~0x8000;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80079330_1613F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800794BC_16157C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80079658_161718.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007978C_16184C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80079954_161A14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80079C4C_161D0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80079E50_161F10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A168_162228.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007A414_1624D4.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007B51C_1635DC.s")

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

#ifdef NON_MATCHING
s32 func_8007C3C0_164480(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
	if (arg0 <= arg3 && arg2 <= arg0 && arg1 <= arg5) {
		if (arg4 <= arg1) {
			return 1;
		}
		return 0;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007C3C0_164480.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007C428_1644E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007C698_164758.s")
