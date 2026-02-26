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
	return D_8008DE58;
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80073058_15B118.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007343C_15B4FC.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800773F4_15F4B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800774E0_15F5A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_800775F0_15F6B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007774C_15F80C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_80077A5C_15FB1C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007B1E0_1632A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007B2F0_1633B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007B51C_1635DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007B65C_16371C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007BC18_163CD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007BEC8_163F88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007C1DC_16429C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/158330/func_8007C2D0_164390.s")

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
