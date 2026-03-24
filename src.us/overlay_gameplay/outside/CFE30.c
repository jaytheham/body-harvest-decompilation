#include <ultra64.h>
#include "common.h"


void func_800C0E80_CFE30(f32 *mat, f32 *vec, f32 *out) {
	out[0] = vec[0] * mat[0] + vec[1] * mat[3] + vec[2] * mat[6];
	out[1] = vec[0] * mat[1] + vec[1] * mat[4] + vec[2] * mat[7];
	out[2] = vec[0] * mat[2] + vec[1] * mat[5] + vec[2] * mat[8];
}

void func_800C0F14_CFEC4(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = (arg0->y * arg1->z) - (arg0->z * arg1->y);
	arg2->y = (arg0->z * arg1->x) - (arg0->x * arg1->z);
	arg2->z = (arg0->x * arg1->y) - (arg0->y * arg1->x);
}

void func_800C0F84_CFF34(f32 arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg1->x / arg0;
	arg2->y = arg1->y / arg0;
	arg2->z = arg1->z / arg0;
}

f32 func_800C0FAC_CFF5C(Vec3f *arg0) {
	return (arg0->x * arg0->x) + (arg0->y * arg0->y) + (arg0->z * arg0->z);
}

f32 func_800C0FD4_CFF84(Vec3f *arg0) {
	f32 temp_f0;
	f32 var_f12;

	temp_f0 = func_800C0FAC_CFF5C(arg0);
	var_f12 = temp_f0;
	if ((f64) temp_f0 != 0.0) {
		var_f12 = sqrtf(var_f12);
	}
	return var_f12;
}

void func_800C1024_CFFD4(Vec3f *arg0, Vec3f *arg1) {
	f32 temp_f0;

	temp_f0 = func_800C0FD4_CFF84(arg0);
	if ((f64) temp_f0 == 0.0) {
		*arg1 = *arg0;
		return;
	}
	func_800C0F84_CFF34(temp_f0, arg0, arg1);
}

f32 func_800C1090_D0040(Vec3f *arg0, Vec3f *arg1) {
	return (arg0->x * arg1->x) + (arg0->y * arg1->y) + (arg0->z * arg1->z);
}

void func_800C10C0_D0070(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg0->x - arg1->x;
	arg2->y = arg0->y - arg1->y;
	arg2->z = arg0->z - arg1->z;
}

void func_800C10F4_D00A4(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg0->x + arg1->x;
	arg2->y = arg0->y + arg1->y;
	arg2->z = arg0->z + arg1->z;
}

void func_800C1128_D00D8(f32 arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg1->x * arg0;
	arg2->y = arg1->y * arg0;
	arg2->z = arg1->z * arg0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1150_D0100.s")

void func_800C1268_D0218(f32 arg0, f32 arg1, f32 arg2) { D_80153BA0.x = arg0; D_80153BA0.y = arg1; D_80153BA0.z = arg2; }

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1288_D0238.s")

void func_800C1384_D0334(u8 arg0) {
	if (D_80154088[arg0].unk0 == 0xFA) {
		osSyncPrintf(&D_80142ECC); // EFFECTS WARNING : Call to free up an effect which does not exist
		return;
	}
	D_80154088[arg0].unk0 = 0xFA;
	D_80154088[arg0].unk1 = 0;
	D_80154304--;
	if (arg0 < D_8015430C) {
		D_8015430C = arg0;
	}
}

#ifdef NON_MATCHING
void func_800C1418_D03C8(u8 arg0, s32 arg1) {
	Unk801541F8Entry *entry;

	if (arg1 != 0) {
		entry = &D_801541F8[arg0];
	} else {
		entry = &D_80154088[arg0];
	}
	if (entry->unk0 == 0xFA) {
		osSyncPrintf(&D_80142F10); // ERROR : freeing all effect units for unused effect
		return;
	}
	while (entry->unk4 > 0) {
		func_800C1A4C_D09FC(entry->unk6, arg0, arg1);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1418_D03C8.s")
#endif

u8 func_800C14D4_D0484(u8 arg0) {
	u8 temp_slot;
	u8 result_slot;
	s32 temp;

	if ((gameplayMode == 2) || (gameplayMode == 9)) {
		osSyncPrintf(&D_80142F44); // Do not allocate because in pause
	}
	
	if (arg0 >= 0xA) {
		temp = 1;
	} else {
		temp = 0;
	}
	
	if (temp != 0) {
		osSyncPrintf(&D_80142F68, arg0); // ERROR: tried to allocate a permanent effect
		return 0xFB;
	}
	
	if (D_80154304 >= 0x1E) {
		osSyncPrintf(&D_80142F98, arg0); // WARNING : Out of space to create a new dynamic effect of type %d
		temp_slot = 0xFB;
	} else {
		temp_slot = D_8015430C;
		func_800C1288_D0238(temp_slot, arg0, 0);
	}
	result_slot = temp_slot;
	return result_slot;
}

void func_800C1598_D0548(u8 arg0) {
	func_800C14D4_D0484(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C15C0_D0570.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C17B4_D0764.s")

void func_800C18D0_D0880(u8 arg0) {
	func_800C17B4_D0764(arg0, 0);
}

#ifdef NON_MATCHING
s16 func_800C18FC_D08AC(u8 arg0, s32 arg1) {
	s16 temp_v0;
	s16 temp_v0_2;

	temp_v0 = func_800C17B4_D0764(arg0, 0);
	if (temp_v0 == -3) {
		return temp_v0;
	}
	temp_v0_2 = func_800C17B4_D0764(arg0, arg1);
	if (temp_v0_2 == -3) {
		func_800C1A4C_D09FC(temp_v0, arg0, arg1);
		return -3;
	}
	if (func_800C17B4_D0764(arg0, arg1) == -3) {
		func_800C1A4C_D09FC(temp_v0, arg0, arg1);
		func_800C1A4C_D09FC(temp_v0_2, arg0, arg1);
		return -3;
	}
	return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C18FC_D08AC.s")
#endif

s16 func_800C19D4_D0984(u8 arg0, s32 arg1) {
	s16 var_a3;

	var_a3 = func_800C17B4_D0764(arg0, arg1);
	if (var_a3 != -3) {
		if (func_800C17B4_D0764(arg0, arg1) == -3) {
			func_800C1A4C_D09FC(var_a3, arg0, arg1);
			var_a3 = -3;
		}
	}
	return var_a3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1A4C_D09FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1D40_D0CF0.s")

#ifdef NON_MATCHING
void func_800C1E24_D0DD4(s16 arg0, u8 arg1, s32 arg2) {
	u8 sp27;
	s16 sp1E;

	if ((arg0 >= 0) && (arg0 < 0x190) && (arg1 < 0x1E) && (D_80154318[arg0].unk0 & 1)) {
		sp1E = D_80154318[arg0].unk4;
		sp27 = arg1;
		func_800C1A4C_D09FC(arg0, arg1, arg2);
		func_800C1A4C_D09FC(sp1E, sp27, arg2);
		return;
	}
	osSyncPrintf(&D_80143304); // EFFECTS WARNING : Call to free up invalid double effect unit
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1E24_D0DD4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1ECC_D0E7C.s")

#ifdef NON_MATCHING
s32 func_800C21F0_D11A0(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	u8 sp27;

	sp27 = ((u8 (*)(u8))func_800C1598_D0548)(0);
	if (sp27 != 0xFB) {
		D_80154088[sp27].unk1 |= 1;
		func_800C1ECC_D0E7C(arg0, arg1, arg2, sp27, arg3);
	}
	return sp27;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C21F0_D11A0.s")
#endif

s32 func_800C2274_D1224(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	s32 temp_v0;
	s32 temp_v1;

	temp_v0 = func_800C21F0_D11A0(arg0, arg1, arg2, arg3);
	temp_v1 = temp_v0 & 0xFF;
	if (temp_v0 != 0xFB) {
		D_80154088[temp_v0].unk1 = 1;
	}
	return temp_v1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C22EC_D129C.s")

#ifdef NON_MATCHING
void func_800C2554_D1504(s16 arg0, u8 arg1) {
	Unk801541F8Entry *entry;
	s16 temp;
	extern char D_80143390;

	if (arg1 < 0x1E) {
		entry = &D_80154088[arg1];
		if (entry->unk0 == 0) {
			temp = *(s16 *) ((u8 *) entry + 0xA);
			if (arg0 == temp) {
				func_800C1418_D03C8(arg1, 0);
				func_800C1384_D0334(arg1);
				return;
			}
			func_800C1A4C_D09FC(arg0, arg1, 0);
			return;
		}
	}
	osSyncPrintf(&D_80143390); // DYNAMIC EFFECTS : Tried to kill smoke puff unit which does not exist!
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C2554_D1504.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C25F8_D15A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C2B90_D1B40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C2D50_D1D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C2EE4_D1E94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C31AC_D215C.s")

void func_800C3288_D2238(u8 arg0) {
	if (arg0 >= 0x1E || D_80154088[arg0].unk0 != 1) {
		osSyncPrintf(&D_80143478); // DYNAMIC EFFECTS : Tried to kill photon effect which does not exist!
		return;
	}
	func_800C1418_D03C8(arg0, 0);
	func_800C1384_D0334(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C3300_D22B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C3BD8_D2B88.s")

#ifdef NON_MATCHING
void func_800C3D88_D2D38(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	Unk80154318Entry *entry;
	extern char D_801434C0;

	if (arg3 != -3) {
		entry = &D_80154318[arg3];
		if ((entry->unk0 & 1) && (entry->unk1 == 0xC)) {
			entry->unk8 = arg0;
			entry->unkA = arg1;
			entry->unkC = arg2;
			return;
		}
	}
	osSyncPrintf(&D_801434C0); // EFFECTS WARNING : Call to move a fire effect which doesn't exist
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C3D88_D2D38.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C3E2C_D2DDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C4274_D3224.s")

void func_800C4900_D38B0(s16 arg0) {
	if (arg0 != -3) {
		func_800C1E24_D0DD4(arg0, 0xC, 1);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C4938_D38E8.s")

s32 func_800C4A64_D3A14(u8 arg0, u8 arg1) {
	if (arg1 < arg0) {
		return -0xA;
	}
	if (arg0 < arg1) {
		return 0xA;
	}
	return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C4AA0_D3A50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C4CB8_D3C68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C4F48_D3EF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C541C_D43CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C56A4_D4654.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C5894_D4844.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C5D14_D4CC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C613C_D50EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C6558_D5508.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C6D80_D5D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C7924_D68D4.s")
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C7E18_D6DC8.s")

void func_800C80F0_D70A0(u16 arg0, u16 arg1, u16 arg2, s16 arg3) {
	s8 *p;

	if (arg3 != -3) {
		p = (s8 *)&D_80154318[D_80154318[D_80154318[arg3].unk4].unk4].unk8;
		p[3] = (s8)(arg0 >> 8);
		p[4] = (s8)(arg1 >> 8);
		p[5] = (s8)(arg2 >> 8);
	}
}

void func_800C8184_D7134(s8 arg0, s8 arg1, s8 arg2, s16 arg3) {
	s8 *p;

	if (arg3 != -3) {
		p = (s8 *)&D_80154318[D_80154318[D_80154318[arg3].unk4].unk4].unk8;
		p[0] = arg0;
		p[1] = arg1;
		p[2] = arg2;
	}
}

void func_800C820C_D71BC(s8 arg0, s8 arg1, s8 arg2, s16 arg3) {
	s8 *p;

	if (arg3 != -3) {
		p = (s8 *)&D_80154318[D_80154318[D_80154318[arg3].unk4].unk4].unk8;
		p[6] = arg0;
		p[7] = arg1;
		p[8] = arg2;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C8294_D7244.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C8814_D77C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C8C7C_D7C2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C8E10_D7DC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C8F5C_D7F0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C927C_D822C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C9530_D84E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C9668_D8618.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C978C_D873C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CA1B0_D9160.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CA5EC_D959C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CA848_D97F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CABC8_D9B78.s")

s16 func_800CB19C_DA14C(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	s16 temp_v0;
	Unk80154318Entry *entry;

	temp_v0 = func_800C17B4_D0764(4, 1);
	if (temp_v0 != -3) {
		entry = &D_80154318[temp_v0];
		*(u8 *)&entry->unkE = 0xFF;
		*((u8 *)&entry->unkE + 1) = 0xFF;
		*(u8 *)&entry->unk10 = 0xFF;
		*((u8 *)&entry->unk10 + 1) = 0xFF;
		*(u8 *)&entry->unk12 = 0;
		entry->unk14 = 0;
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
		*((u8 *)&entry->unk12 + 1) = arg3;
	}
	return temp_v0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CB23C_DA1EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CB394_DA344.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CB4F8_DA4A8.s")

void func_800CBD1C_DACCC(s16 arg0) {
	Unk80154318Entry *entry;

	if (arg0 < 0x190 && arg0 != -3) {
		entry = &D_80154318[arg0];
		func_800C541C_D43CC(
			(s16)(entry->unk8 * 4),
			(s16)((entry->unkA * 4) + 0xF),
			(s16)(entry->unkC * 4),
			0, 0x7F, 0, 0x41, 0xFE, 0x19, 0xF, 0, 0, 0
		);
		func_800C1A4C_D09FC(arg0, 4, 1);
	}
}

void func_800CBDE0_DAD90(s16 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4, u8 arg5, u8 arg6, u8 arg7) {
	s16 temp_v0;
	Unk80154318Entry *entry;

	temp_v0 = func_800C17B4_D0764(5, 1);
	if (temp_v0 != -3) {
		entry = &D_80154318[temp_v0];
		*((u8 *)&entry->unk10 + 1) = 0;
		*(u8 *)&entry->unk12 = 0;
		entry->unk14 = arg7;
		entry->unk2 = arg0;
		entry->unk8 = arg1;
		entry->unkA = arg2;
		entry->unkC = arg3;
		*(u8 *)&entry->unkE = D_8013DF80.unk0;
		*((u8 *)&entry->unkE + 1) = D_8013DF80.unk1;
		*(u8 *)&entry->unk10 = D_8013DF80.unk2;
		if (arg7 == 0) {
			*((u8 *)&entry->unk12 + 1) = 0;
			return;
		}
		*((u8 *)&entry->unk12 + 1) = 0x18;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CBE98_DAE48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CC090_DB040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CC7B0_DB760.s")

void func_800CCAD4_DBA84(s16 arg0, s16 arg1, s16 arg2) {
	s32 temp_v0;

	temp_v0 = func_800CC7B0_DB760(0xF, 0x14, (func_800038E0_44E0() % 5 + 5) & 0xFF, arg0, (s32)arg1, (s32)arg2);
	if (temp_v0 != -3) {
		D_80154318[temp_v0].unk12 |= 0x80;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CCB60_DBB10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CCD54_DBD04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CD0B0_DC060.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CD1F8_DC1A8.s")

void func_800CD2E8_DC298(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	Unk80154318Entry *temp_v0;
	s16 temp_v1;

	if (arg3 != 0xFB) {
		if (D_80154088[arg3].unk0 != 0xFA) {
			temp_v1 = D_80154088[arg3].unk6;
			temp_v0 = &D_80154318[temp_v1];
			temp_v0->unkA = arg1;
			temp_v0->unkC = arg2;
			temp_v0->unk8 = arg0;
			return;
		}
	}
	osSyncPrintf(&D_801436D8); // ** WARNING: tried to update a jet stream effect that doesn't exist! **
}

void func_800CD390_DC340(u8 arg0) {
	if (arg0 < 0x1E) {
		if (D_80154088[arg0].unk0 == 5) {
			if (D_80154088[arg0].unk4 < 2) {
				func_800C1418_D03C8(arg0, 0);
				func_800C1384_D0334(arg0);
				return;
			}
			D_80154329[D_80154088[arg0].unk6].unk0 = 0;
		}
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CD42C_DC3DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CD7FC_DC7AC.s")

void func_800CDA98_DCA48(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s16 temp_v0;
	Unk80154318Entry *entry;

	temp_v0 = func_800C17B4_D0764(9, 1);
	if (temp_v0 != -3) {
		entry = &D_80154318[temp_v0];
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
		*((u8 *)&entry->unk10 + 1) = 0;
		*(s16*)&entry->unkE = arg3;
		*(u8 *)&entry->unk10 = func_800DDB60_ECB10(arg0, (s16)(arg1 + 0x12), arg2, 8, 0x19);
	}
}

s16 func_800CDB40_DCAF0(s16 arg0, s16 arg1, s16 arg2) {
	Unk80154318Entry *entry;
	s16 index;

	index = func_800C17B4_D0764(9, 1);
	if (index != -3) {
		entry = &D_80154318[index];
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
		*(s16*)&entry->unkE = 0;
		*((u8 *)&entry->unk10 + 1) = 1;
		*(u8 *)&entry->unk10 = func_800DDB60_ECB10(arg0, (s16)(arg1 - 0x1E), arg2, 8, 0x19);
	}

	return index;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CDBF4_DCBA4.s")

void func_800CDD7C_DCD2C(s16 arg0) {
	if (arg0 != -3) {
		func_800DDF18_ECEC8(*(&D_80154328 + (arg0 * 0x1C)));
		func_800C1A4C_D09FC(arg0, 9, 1);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CDDE4_DCD94.s")

#ifdef NON_MATCHING
u8 func_800CE040_DCFF0(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5) {
	f32 dummy1;
	f32 dummy2;
	u8 sp1F;
	s32 temp_v0;

	sp1F = func_800C1598_D0548(9);
	if (sp1F != 0xFB) {
		temp_v0 = func_800C18D0_D0880(sp1F);
		if (temp_v0 == -3) {
			osSyncPrintf(&D_80143720, sp1F); // EFFECTS WARNING: Failed to create a water jet - could not allocate any units
			func_800C1384_D0334(sp1F);
			return 0xFBU;
		}
		D_80154318[temp_v0].unk8 = arg0;
		D_80154318[temp_v0].unkA = arg1;
		D_80154318[temp_v0].unkC = arg2;
		*(s16*)&D_80154318[temp_v0].unkE = arg3;
		*(s16*)&D_80154318[temp_v0].unk10 = arg4;
		D_80154318[temp_v0].unk12 = arg5;
	}
	return sp1F;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CE040_DCFF0.s")
#endif

s32 func_800CE100_DD0B0(u8 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6) {
	s32 temp_v0;
	Unk80154318Entry *temp_v1;

	if (arg0 < 0x1E && D_80154088[arg0].unk0 == 9) {
		temp_v0 = func_800C17B4_D0764(arg0, 0);
		if (temp_v0 != -3) {
			temp_v1 = &D_80154318[temp_v0];
			temp_v1->unk8 = arg1;
			temp_v1->unkA = arg2;
			temp_v1->unkC = arg3;
			*(s16*)&temp_v1->unkE = arg4;
			*(s16*)&temp_v1->unk10 = arg5;
			temp_v1->unk12 = arg6;
		}
		return 0;
	}
	return -0xD;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CE1C0_DD170.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CE6E8_DD698.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CEE00_DDDB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CF070_DE020.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CF174_DE124.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CF2E0_DE290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CF80C_DE7BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CF948_DE8F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CFD84_DED34.s")

void func_800D05A8_DF558(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, u8 arg5, u8 arg6) {
	func_800D0614_DF5C4(arg0, arg1, arg2, arg3, arg4, arg5, arg6, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D0614_DF5C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D0C00_DFBB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D0DE4_DFD94.s")

void func_800D0F5C_DFF0C(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	if (arg0 != -3) {
		Unk80154318Entry *entry = &D_80154318[arg0];
		entry->unk8 = arg1;
		entry->unkA = arg2;
		entry->unkC = arg3;
		func_800DDD30_ECCE0(*(u8 *)((u8 *)entry + 0x13), arg1, arg2, arg3);
	}
}

void func_800D0FE0_DFF90(s16 arg0, u16 arg1) {
	if (arg0 != -3) {
		D_80154318[arg0].unk2 = arg1;
		func_800DDDE4_ECD94(*(u8 *)((u8 *)&D_80154318[arg0] + 0x13), (arg1 / 2));
	}
}

void func_800D1054_E0004(s16 arg0) {
	Unk80154318Entry *entry;
	if (arg0 != -3) {
		entry = &D_80154318[arg0];
		func_800DDE90_ECE40(*(u8 *)((u8 *)entry + 0x13), -0x1E, 0);
		func_800DDE54_ECE04(*(u8 *)((u8 *)entry + 0x13), 0x28);
		func_800C1A4C_D09FC(arg0, 7, 1);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D10D0_E0080.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D16BC_E066C.s")

void func_800D19DC_E098C(u8 arg0, u8 arg1) {
	s16 temp_v0 = D_80154088[arg0].unk6;
	*(&D_80154327 + (temp_v0 * 0x1C)) = arg1;
}

void func_800D1A1C_E09CC(u8 arg0) {
	if (arg0 != 0xFB) {
		if (D_80154088[arg0].unk0 == 8) {
			func_800C1418_D03C8(arg0, 0);
			func_800C1384_D0334(arg0);
			return;
		}
	}
	osSyncPrintf(&D_801437C0); // EFFECTS WARNING : You have tried to kill a lightning effect which doesn't exist
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D1A94_E0A44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D1C24_E0BD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D249C_E144C.s")

void func_800D25A4_E1554(s16 arg0) {
	*(&D_80154327 + (arg0 * 0x1C)) = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D25D0_E1580.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D2AB0_E1A60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D2ECC_E1E7C.s")

void func_800D3614_E25C4(u8 arg0) {
	s16 index = D_80154282;

	if (index == -5 || index == -6) {
		return;
	}

	while (1) {
		if (*(s16*)&D_80154318[index].unk10 == arg0) {
			BuildingInstance *inst = &buildingInstances[arg0];
			u32 shifted;
			u32 value;

			func_800C1E24_D0DD4(index, 0xB, 1);
			value = inst->unk8;
			shifted = value >> 0xC;
			inst->unk8 = (((shifted & ~0x10) ^ shifted) << 0xC) ^ value;
			return;
		}

		index = D_80154318[index].unk4;
		index = D_80154318[index].unk4;
		if (index == -5 || index == -6) {
			return;
		}
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D36EC_E269C.s")

s16 func_800D3C88_E2C38(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5) {
	s32 dummy;
	s16 slot;

	slot = func_800C17B4_D0764(0xE, 1);
	if (slot != -3) {
		D_80154318[slot].unk2 = 6;
		D_80154318[slot].unk8 = arg0;
		D_80154318[slot].unkA = arg1;
		D_80154318[slot].unkC = arg2;
		D_80154318[slot].unk14 = 0;
		*(s16*)&D_80154318[slot].unkE = arg3;
		*(s16*)&D_80154318[slot].unk10 = arg4;
		D_80154318[slot].unk12 = arg5;
		func_800DDB60_ECB10(arg0, arg1, arg2, 0xD, 0x19);
	}
	return slot;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D3D40_E2CF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D3E3C_E2DEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D45B4_E3564.s")

#ifdef NON_MATCHING
s16 func_800D49CC_E397C(s16 arg0, s16 arg1, s16 arg2) {
	s16 slot;
	Unk80154318Entry *entry;

	slot = func_800C17B4_D0764(0xF, 1);
	if (slot != -3) {
		entry = &D_80154318[slot];
		entry->unk2 = 6;
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
		entry->unkE = arg0;
		entry->unk10 = arg1;
		entry->unk12 = arg2;
		entry->unk14 = 0;
		func_800DDB60_ECB10(arg0, arg1, arg2, 0xD, 0x1E);
	}
	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D49CC_E397C.s")
#endif

void func_800D4A78_E3A28(s16 arg0) {
	if (arg0 != -3) {
		func_800C1A4C_D09FC(arg0, 0xF, 1);
	}
}

void func_800D4AB0_E3A60(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	if (arg0 != -3) {
		Unk80154318Entry *entry = &D_80154318[arg0];
		if (entry->unk0 & 1) {
			*(s16*)&entry->unkE = arg1;
			*(s16*)&entry->unk10 = arg2;
			entry->unk12 = arg3;
			return;
		}
	}
	osSyncPrintf(&D_80143814); // ** WARNING: tried to update a ring weapon bullet that doesn't exist! **
}

void func_800D4B44_E3AF4(void) {
	s16 index;

	index = D_801542B2;
	if (index == -5 || index == -6) {
		func_800C1418_D03C8(0xF, 1);
		return;
	}
	
	while (index != -5 && index != -6) {
		D_80154318[index].unk14++;
		func_80137368_146318(D_80154318[index].unk8, D_80154318[index].unkA, D_80154318[index].unkC, 0xC, index);
		index = D_80154318[index].unk4;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D4C10_E3BC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D5424_E43D4.s")

void func_800D5588_E4538(s16 arg0) {
	if (arg0 != -3) {
		func_800C1E24_D0DD4(arg0, 0x10, 1);
	}
}

void func_800D55C0_E4570(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	Unk80154318Entry *entry;

	if (arg0 != -3) {
		entry = &D_80154318[arg0];
		if (entry->unk0 & 1) {
			entry->unkE = (u8)(arg1 - entry->unk8);
			entry->unkF = (u8)(arg2 - entry->unkA);
			entry->unk10 = (u8)(arg3 - entry->unkC);
			entry->unk8 = arg1;
			entry->unkA = arg2;
			entry->unkC = arg3;
			return;
		}
	}
	osSyncPrintf(&D_80143860, arg1, arg2, arg3); // ** WARNING: tried to update a triple spinner that doesn't exist! **
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D5684_E4634.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D5760_E4710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D5AF4_E4AA4.s")

#ifdef NON_MATCHING
u8 func_800D5FD4_E4F84(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4, u8 arg5) {
	u8 slot;

	slot = ((u8 (*)(u8))func_800C14D4_D0484)(6);
	if (slot != 0xFB) {
		func_800D6084_E5034(slot, arg0, arg1, arg2, arg3, arg4, arg5);
		arg0 += 2;
		arg2 += 2;
		func_800D6084_E5034(slot, arg0, arg1, arg2, arg3, arg4, arg5);
	}
	return slot;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D5FD4_E4F84.s")
#endif

void func_800D6084_E5034(u8 arg0, s16 arg1, s16 arg2, s16 arg3, u8 arg4, u8 arg5, u8 arg6) {
	s16 temp_v0;
	Unk80154318Entry *temp_v1;

	if (arg0 < 0x1E && D_80154088[arg0].unk0 == 6) {
		temp_v0 = func_800C17B4_D0764(arg0, 0);
		if (temp_v0 != -3) {
			temp_v1 = &D_80154318[temp_v0];
			temp_v1->unk8 = arg1;
			temp_v1->unkA = arg2;
			temp_v1->unkC = arg3;
			temp_v1->unkE = arg4;
			temp_v1->unkF = arg5;
			temp_v1->unk10 = arg6;
			temp_v1->unk11 = 0xC8;
		}
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6140_E50F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6290_E5240.s")

void func_800D6A84_E5A34(u8 arg0)
{
  D_80153AE0[arg0].unk13 = 0;
  D_80153AE0[arg0].unk14 = 0;
  D_80153AE0[arg0].unk18 = ((s32 *) (&D_8013E2F4))[arg0];
  D_80153AE0[arg0].unk12 = ((u8 *) (&D_8013E2EC))[arg0];
  D_80153AE0[arg0].unk1C = ((s32 *) (&D_8013E308))[arg0];
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6ADC_E5A8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6C18_E5BC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6EAC_E5E5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D702C_E5FDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D7284_E6234.s")

s16 func_800D7624_E65D4(s16 arg0, s16 arg1, s16 arg2) {
	s16 temp_v0;
	Unk80154318Entry *entry;

	temp_v0 = func_800C17B4_D0764(0x11, 1);
	if (temp_v0 != -3) {
		entry = &D_80154318[temp_v0];
		entry->unk2 = 0x14;
		((u8 *)entry)[0x0E] = 0;
		entry->unk8 = arg0;
		entry->unkA = arg1;
		entry->unkC = arg2;
	}
	return temp_v0;
}

void func_800D76A8_E6658(s16 arg0) {
	if (arg0 == -3) {
		osSyncPrintf(&D_8014390C); // DYNAMIC EFFECTS : Tried to kill minin photon effect which does not exist!
		return;
	}
	func_800C1A4C_D09FC(arg0, 0x11, 1);
}

void func_800D76F4_E66A4(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	u8 *temp_v1;
	s16 *temp_v0;

	if ((arg3 == -3) || (temp_v1 = (u8 *)&D_80154318[arg3], temp_v0 = (s16 *)(temp_v1 + 8), ((*temp_v1 & 1) == 0))) {
		osSyncPrintf(&D_80143958, arg1, arg2); // DYNAMIC EFFECTS : Tried to update mini photon effect which does not exist!
		return;
	}
	temp_v0[0] = arg0;
	temp_v0[1] = arg1;
	temp_v0[2] = arg2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D7790_E6740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D7870_E6820.s")

#ifdef NON_MATCHING
s16 func_800D7EF8_E6EA8(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s32 dummy;
	s16 temp_v0;

	temp_v0 = func_800C17B4_D0764(0x12, 1);
	if (temp_v0 != -3) {
		D_80154318[temp_v0].unk8 = arg0;
		D_80154318[temp_v0].unkA = arg1;
		D_80154318[temp_v0].unkC = arg2;
		D_80154318[temp_v0].unkE = arg0 + 5;
		D_80154318[temp_v0].unk10 = arg1 + 1;
		D_80154318[temp_v0].unk12 = arg2 + 5;
		D_80154318[temp_v0].unk2 = arg3;
		D_80154318[temp_v0].unk14 = func_800C2274_D1224(arg0, arg1, arg2, 0);
	}
	return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D7EF8_E6EA8.s")
#endif

void func_800D7FB4_E6F64(s16 arg0) {
	if (arg0 == -3) {
		osSyncPrintf(&D_801439A4); // DYNAMIC EFFECTS : Tried to kill fire ball effect which does not exist!
		return;
	}
	func_800C1A4C_D09FC(arg0, 0x12, 1);
}

#ifdef NON_MATCHING
void func_800D8000_E6FB0(s32 arg0, s16 arg1, s16 arg2, s16 arg3) {
	u8 *temp_a0;
	s16 *temp_v0;
	s16 *temp_v1;

	if ((arg3 == -3) || (temp_a0 = (u8 *)&D_80154318[arg3], temp_v0 = (s16 *)(temp_a0 + 8), ((*temp_a0 & 1) == 0))) {
		osSyncPrintf(&D_801439EC); // DYNAMIC EFFECTS : Tried to update fire ball effect which does not exist!
		return;
	}

	temp_v1 = (s16 *)(temp_a0 + 0xE);
	temp_v1[0] = temp_v0[0];
	temp_v1[1] = temp_v0[1];
	temp_v1[2] = temp_v0[2];
	temp_v0[1] = arg1;
	temp_v0[2] = arg2;
	temp_v0[0] = (s16) arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D8000_E6FB0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D80B4_E7064.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D8190_E7140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D8FA0_E7F50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D90A4_E8054.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D9294_E8244.s")

s16 func_800D951C_E84CC(void *arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7) {
	s16 temp_v0;
	s16 temp_a1;
	s16 temp_arg1;
	s16 temp_arg2;
	s16 temp_arg3;
	s16 temp_arg4;
	s16 temp_arg5;
	s16 temp_arg6;
	s16 temp_arg7;
	Unk80154318Entry *entry;
	Unk80154318Entry *linkedEntry;

	temp_v0 = func_800C19D4_D0984(0x14, 1);
	if (temp_v0 != -3) {
		temp_arg7 = arg7;
		temp_arg1 = arg1;
		temp_arg2 = arg2;
		temp_arg3 = arg3;
		temp_arg4 = arg4;
		temp_arg5 = arg5;
		entry = &D_80154318[temp_v0];
		temp_a1 = entry->unk4;
		*(void **)&entry->unk8 = arg0;
		*(s32 *)&entry->unkC = temp_arg7;
		linkedEntry = &D_80154318[temp_a1];
		temp_arg6 = arg6;
		linkedEntry->unk8 = temp_arg1;
		linkedEntry->unkA = temp_arg2;
		linkedEntry->unkC = temp_arg3;
		*(s16*)&linkedEntry->unkE = temp_arg4;
		*(s16*)&linkedEntry->unk10 = temp_arg5;
		linkedEntry->unk12 = temp_arg6;
	}
	return temp_v0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D95D0_E8580.s")

void func_800D96B4_E8664(s16 arg0, s16 arg1, s16 arg2, s16 arg3)
{
  s16 new_var;
  Unk80154318Entry *temp_v1;
  new_var = D_80154318[arg0].unk4;
  temp_v1 = &D_80154318[new_var];
  temp_v1->unk8 = arg1;
  temp_v1->unkA = arg2;
  temp_v1->unkC = arg3;
}

void func_800D9704_E86B4(s16 arg0, s16 arg1, s16 arg2, s16 arg3)
{
  s16 new_var;
  s16 new_var2;
  Unk80154318Entry *temp_v1;
 temp_v1 = &D_80154318[new_var2 = D_80154318[arg0].unk4]; new_var = arg2; new_var2 = new_var;
  *(s16*)&temp_v1->unkE = arg1;
  *(s16*)&temp_v1->unk10 = new_var2;
  (*temp_v1).unk12 = arg3;
}

void func_800D9754_E8704(s16 arg0) {
	if (arg0 != -3) {
		func_800C1E24_D0DD4(arg0, 0x14, 1);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D978C_E873C.s")

s32 func_800D99F4_E89A4(void *arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
	s16 temp_v0;
	Unk80154318Entry *temp_v1;

	osSyncPrintf(&D_80143A38); // Create group effect
	temp_v0 = func_800C19D4_D0984(0x15, 1);
	if (temp_v0 != -3) {
		temp_v1 = &D_80154318[temp_v0];
		*(void **)&temp_v1->unk8 = arg0;
		temp_v1->unkC = arg1;
		*(s16*)&temp_v1->unkE = arg2;
		*(s16*)&temp_v1->unk10 = arg3;
		temp_v1->unk12 = arg4;
	}
	return temp_v0;
}

void func_800D9A8C_E8A3C(s16 arg0, s32 arg1, s16 arg2) {
	s16 new_var;
	new_var = D_80154318[arg0].unk4;
	*(s16 *)((u8 *)&D_80154318[new_var].unk8 + (arg1 * 2)) = arg2;
}

void func_800D9AD4_E8A84(s16 arg0, u8 arg1)
{
	s16 new_var;
	new_var = D_80154318[arg0].unk4;
	D_80154318[new_var].unk14 = arg1;
}

void func_800D9B14_E8AC4(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	Unk80154318Entry *temp_v0;

	temp_v0 = &D_80154318[arg3];
	*(s16*)&temp_v0->unkE = arg0;
	*(s16*)&temp_v0->unk10 = arg1;
	temp_v0->unk12 = arg2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D9B54_E8B04.s")

void func_800D9C60_E8C10(s16 arg0) {
	if (arg0 != -3) {
		func_800C1E24_D0DD4(arg0, 0x15, 1);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D9C98_E8C48.s")

void func_800D9DD8_E8D88(s16 arg0, s16 arg1, s16 arg2) {
	if (func_800D99F4_E89A4(&func_800D9C98_E8C48, 0x10, arg0, arg1, (s32) arg2) != -3) {
		func_800153D8_15FD8(0x183);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D9E38_E8DE8.s")

void func_800D9F60_E8F10(s32 arg0) {
	struct {
		s32 temp_v0;
		s16 pad;
		s16 sp26;
	} vars;
	VehicleInstance *vehicle;

	vehicle = &vehicleInstances[arg0];
	vars.temp_v0 = func_800D99F4_E89A4(&func_800D9E38_E8DE8, 0x10, vehicle->unk0, vehicle->unk2, (s32)vehicle->unk4);
	vars.sp26 = (s16)vars.temp_v0;
	if (vars.temp_v0 != -3) {
		func_800153D8_15FD8(0x183);
		func_800D9A8C_E8A3C(vars.sp26, 0, (s16)arg0);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D9FF8_E8FA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA260_E9210.s")

#ifdef NON_MATCHING
void func_800DA3A8_E9358(s16 arg0, s16 arg1) {
	Unk80154318Entry *sp2C;
	Unk80154318Entry *sp28;

	sp2C = &D_80154318[arg0];
	sp28 = &D_80154318[arg1];
	func_800E52E8_F4298(sp2C->unkE, sp2C->unk10, sp2C->unk12, sp28->unk8, (s32) sp28->unkA, (s32) sp28->unkC, (s32) sp28->unk14);
	(&sp28->unk8)[0] = (&sp2C->unk8)[3];
	(&sp28->unk8)[1] = (&sp2C->unk8)[4];
	(&sp28->unk8)[2] = (&sp2C->unk8)[5];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA3A8_E9358.s")
#endif

s16 func_800DA450_E9400(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	s32 retval;
	s16 temp_v0;

	retval = func_800D99F4_E89A4(&func_800DA3A8_E9358, 0x7FFF, arg0, arg1, (s32) arg2);
	temp_v0 = (s16)retval;
	if (retval != -3) {
		func_800D9A8C_E8A3C(temp_v0, 0, arg0);
		func_800D9A8C_E8A3C(temp_v0, 1, arg1);
		func_800D9A8C_E8A3C(temp_v0, 2, arg2);
		func_800D9AD4_E8A84(temp_v0, arg3);
	}
	return temp_v0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA510_E94C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA6F0_E96A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA7CC_E977C.s")

void func_800DA994_E9944(void) {
	struct {
		s32 temp_v0;
		s16 pad;
		s16 sp26;
	} vars;

	vars.temp_v0 = func_800D99F4_E89A4(&func_800DA7CC_E977C, 0x28, 0, 0, 0);
	vars.sp26 = (s16) vars.temp_v0;
	if (vars.temp_v0 != -3) {
		func_800D9A8C_E8A3C(vars.sp26, 0,
			func_800DDB60_ECB10(D_80052B34->unk0,
				(s16)(D_80052B34->unk2 + 0x50),
				D_80052B34->unk4,
				9,
				0x78));
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DAA1C_E99CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DABBC_E9B6C.s")

#ifdef NON_MATCHING
void func_800DAF24_E9ED4(u8 arg0) {
	u8 i;
	u8 count;
	Unk801541F8Entry *entry;

	count = (func_800038E0_44E0() % 3) + 1;
	entry = &D_80154088[arg0];
	for (i = 0; i < count; i++) {
		if (entry->unk4 < 0x96) {
			func_800CA1B0_D9160(arg0);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DAF24_E9ED4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DAFCC_E9F7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DB350_EA300.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DB714_EA6C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DBA9C_EAA4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DBE20_EADD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DC18C_EB13C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DC5B8_EB568.s")

void func_800DD5E0_EC590(void) { D_80156EDA = 0; func_800C978C_D873C(); }

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DD604_EC5B4.s")

void func_800DDB18_ECAC8(void) {
	u8 i;

	for (i = 0; i < 0x50; i++) {
		D_80156EF0[i].unkA = 0;
	}
	D_80157530 = 0;
	D_80157531 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DDB60_ECB10.s")

void func_800DDD30_ECCE0(u8 arg0, s16 arg1, s16 arg2, s16 arg3) {
	if (arg0 != 0xFF) {
		UnkFC8E8Entry *entry = &D_80156EF0[arg0];
		entry->unk0 = arg1;
		entry->unk2 = arg2;
		entry->unk4 = arg3;
	}
}

void func_800DDD90_ECD40(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
	if (arg0 != 0xFF) {
		UnkFC8E8Entry *entry = &D_80156EF0[arg0];
		entry->unk6 = arg1;
		entry->unk7 = arg2;
		entry->unk8 = arg3;
	}
}

void func_800DDDE4_ECD94(u8 arg0, u8 arg1) {
	if (arg0 != 0xFF) {
		UnkFC8E8Entry *entry = &D_80156EF0[arg0];
		entry->unkA = arg1;
	}
}

void func_800DDE1C_ECDCC(u8 arg0, u8 arg1)
{
  if (arg0 != 0xFF)
  {
	D_80156EF0[arg0].unkD = arg1;
  }
}

void func_800DDE54_ECE04(u8 arg0, s8 arg1) {
	if (arg0 != 0xFF) {
		D_80156EF0[arg0].unk12 = arg1;
	}
}

void func_800DDE90_ECE40(u8 arg0, s8 arg1, s8 arg2) {
	if (arg0 != 0xFF) {
		D_80156EF0[arg0].unk10 = arg1;
		D_80156EF0[arg0].unk11 = arg2;
	}
}

void func_800DDEE0_ECE90(u8 arg0, u8 arg1) {
	if (arg0 != 0xFF) {
		D_80156EF0[arg0].unkF = arg1;
	}
}

void func_800DDF18_ECEC8(u8 arg0) {
	if (arg0 != 0xFF) {
		D_80156EF0[arg0].unkA = 0;

		if (arg0 < D_80157531) {
			D_80157531 = arg0;
		}

		D_80157530 -= 1;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DDF78_ECF28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DE150_ED100.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DE2E8_ED298.s")

void func_800DE9B8_ED968(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	func_800DDB60_ECB10(arg0, arg1, arg2, 1, (s32) arg3);
}

void func_800DEA08_ED9B8(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s8 arg4, s8 arg5, u8 arg6, u8 arg7, u8 arg8, u8 arg9, u8 arg10) {
	u8 slot;
	UnkFC8E8Entry *entry;

	slot = func_800DDB60_ECB10(arg0, arg1, arg2, 3, (s32) arg3);
	if (slot != 0xFF) {
		entry = &D_80156EF0[slot];
		entry->unkD = arg7;
		entry->unk12 = (s8) ((s32) arg7 / (s32) arg6);
		entry->unk6 = arg8;
		entry->unk7 = arg9;
		entry->unk8 = arg10;
		entry->unk10 = arg4;
		entry->unk11 = arg5;
	}
}

#ifdef NON_MATCHING
void func_800DEADC_EDA8C(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s32 slot;
	s16 val;

	slot = func_800DDB60_ECB10(arg0, arg1, arg2, 2, (func_800038E0_44E0() % 15) + 0x19);
	if (slot != 0xFF) {
		val = arg3 + 0x78;
		if (val >= 0x100) {
			val = 0xFF;
		}
		D_80156EF0[slot & 0xFF].unkD = val;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DEADC_EDA8C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DEB7C_EDB2C.s")

u8 func_800DEE5C_EDE0C(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4) {
	u8 slot;

	slot = func_800DDB60_ECB10(arg0, arg1, arg2, 6, 0xA);
	func_800DDE54_ECE04(slot, arg4);
	func_800DDE90_ECE40(slot, arg3, 0);
	return slot;
}

void func_800DEED0_EDE80(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4) {
	func_800DDE1C_ECDCC(func_800DDB60_ECB10(arg0, arg1, arg2, 5, (s32) arg3), arg4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DEF2C_EDEDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DF038_EDFE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DF848_EE7F8.s")

void func_800DF9C8_EE978(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, s32 arg5) {
	D_80153B87 = 1;
	func_800DF038_EDFE8(arg0, arg1, arg2, arg3, (s32) arg4, arg5);
	D_80153B87 = 0;
}

void func_800DFA34_EE9E4(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4) {
	D_80153B87 = 1;
	func_800DF848_EE7F8(arg0, arg1, arg2, arg3, (s32) arg4);
	D_80153B87 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DFA98_EEA48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DFBA8_EEB58.s")

void func_800DFE68_EEE18(s16 arg0, s16 arg1, s16 arg2) {
	func_800DEA08_ED9B8(arg0, arg1, arg2, 0xF, 2, 1, 0x14, 0xFF, 0xFF, 0xFA, 0xDC);
}

void func_800DFEE4_EEE94(s16 arg0, s16 arg1, s16 arg2) {
	func_800DEA08_ED9B8(arg0, arg1, arg2, 0xF, 2, 1, 0x14, 0xFF, 0xFF, 0xFA, 0xDC);
	func_800C541C_D43CC(arg0, arg1, arg2, 0, 0x7F, 0, 0x32, 0xFA, func_800038E0_44E0() % 4, 3, 0xFF, 0xFF, 0xDC);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DFFC4_EEF74.s")

void func_800E00F4_EF0A4(u8 arg0, u8 arg1) {
	Unk801541F8Entry *entry = &D_801541F8[arg1];

	entry->unk0 = arg0;
	entry->unk1 = 0;
	entry->unk4 = 0;
	entry->unk6 = -6;
	entry->unk8 = -6;
}

// guess_initSpecialEffects
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0134_EF0E4.s")

// debug_printSpecialEffectsInfo
void func_800E03FC_EF3AC(void) {
	u8 i;

	osSyncPrintf(&D_80143ED0); // DUMP SPECIAL EFFECTS INFO
	for (i = 0; i < 0x1E; i++) {
		if (D_80154088[i].unk0 != 0xFA) {
			// Effect %d :  Type %d  numUints %d
			osSyncPrintf(&D_80143EF0, i, D_80154088[i].unk0, D_80154088[i].unk4);
		}
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E049C_EF44C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E05B4_EF564.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0764_EF714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E093C_EF8EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0AE0_EFA90.s")

void func_800E0C8C_EFC3C(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4, s8 arg5) {
	func_800CA5EC_D959C(arg0, arg1, arg2, arg3, arg4, arg5, 0x37, 7, (func_800038E0_44E0() % 9) + 0xA, 0x64, 0xDC, 0xBE, 0x2D, 0xFF);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0D28_EFCD8.s")

#ifdef NON_MATCHING
void func_800E0E9C_EFE4C(s16 arg0, s16 arg1, u16 arg2) {
	func_800DDB60_ECB10(arg0, (s16) (((s32) arg2 / 2) + D_80222A70), arg1, 0, (s32) arg2);
	func_800DEF2C_EDEDC(arg0, (s16) (D_80222A70 + 4), arg1, 0x64, 2);
	func_801372B4_146264(arg0, (s16) (D_80222A70 + 4), arg1, 1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0E9C_EFE4C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0F4C_EFEFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E1C10_F0BC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E1D48_F0CF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E1F70_F0F20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E24B8_F1468.s")

void func_800E2668_F1618(void) {
	if (currentLevel == 2) {
		D_801541F0.unk0 = 0x96;
		D_801541F0.unk1 = 0xDC;
		D_801541F0.unk2 = 0xF0;
		D_80154082.unk0 = 0x96;
		D_80154082.unk1 = 0xDC;
		D_80154082.unk2 = 0xF0;
	} else if (currentLevel == 4) {
		D_801541F0.unk0 = 0xF0;
		D_801541F0.unk1 = 0xF0;
		D_801541F0.unk2 = 0xF0;
		D_80154082.unk0 = 0xF0;
		D_80154082.unk1 = 0xF0;
		D_80154082.unk2 = 0xF0;
	}
	D_80154300 = 0;
	D_80154308 = 0x34;
}

void func_800E26FC_F16AC(s8 arg0, s8 arg1, s8 arg2) {
	D_80154082.unk0 = arg0;
	D_80154082.unk1 = arg1;
	D_80154082.unk2 = arg2;
}

void func_800E2720_F16D0(s32 arg0) {
	D_80154308 = arg0 / 6;
	if (D_80154308 >= 0xC9) {
		D_80154308 = 0xC8;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E2750_F1700.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E2830_F17E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E2DB4_F1D64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E2ED4_F1E84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E32C4_F2274.s")

void func_800E35E0_F2590(u8 arg0)
{
  if (D_8013E344 < arg0)
  {
	D_8013E344 = arg0;
  }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E360C_F25BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E3738_F26E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E3928_F28D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E4CEC_F3C9C.s")

// displayLasers
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5044_F3FF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E520C_F41BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E52E8_F4298.s")

#ifdef NON_MATCHING
void func_800E5450_F4400(s32 arg0, s32 arg1) {
	u8 i;
	u8 slot;
	u8 minValue;
	u8 minSlot;
	s16 temp;
	Unk80152B80 *entry;
	
	slot = 0x40;
	for (i = 0; i < 0x40; i++) {
		if (D_80152D00[i].unk0 == 0) {
			slot = i;
			break;
		}
	}
	
	if (slot == 0x40) {
		minValue = D_8013DD1A;
		for (i = 0; i < 0x40; i++) {
			temp = D_80152D00[i].unk2;
			if (minValue >= temp) {
				minSlot = i;
				minValue = temp;
			}
		}
		slot = minSlot;
	}
	
	entry = &D_80152D00[slot];
	entry->unk2 = 10;
	*(s32 *)&entry->unk8 = arg0;
	entry->unk0 = 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5450_F4400.s")
#endif

void func_800E5520_F44D0(s32 arg0, s32 arg1) {
}

void func_800E552C_F44DC(void) {
	D_80152C96 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5538_F44E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5B78_F4B28.s")

// Allocate shield (wtf is a shield?)
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5CF4_F4CA4.s")

// Remove shield (wtf is a shield?)
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5E3C_F4DEC.s")

void func_800E6028_F4FD8(u8 arg0, u8 arg1) {
	s16 i;

	osSyncPrintf(&D_80143FA4, (s32) arg1); // removing shield : %d
	for (i = 0; i < D_80152C96; i++) {
		if ((arg0 == D_80152CA0[i].unk1) && (arg1 == D_80152CA0[i].unk0)) {
			D_80152CA0[i].unk2 = 0x64;
			break;
		}
	}
}

s32 func_800E60CC_F507C(u8 arg0, u8 arg1) {
	s16 i;

	for (i = 0; i < D_80152C96; i++) {
		if (arg0 == D_80152CA0[i].unk1 && arg1 == D_80152CA0[i].unk0) {
			return 1;
		}
	}
	return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E614C_F50FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E64B4_F5464.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E6A38_F59E8.s")

// displayFXUnderWater
void func_800E71F8_F61A8(void) {
	gSPMatrix(D_8005BB2C++, (Mtx *)((u32) &D_80031160 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
}

// displayFXOnWater - Ripples, splashes etc
void func_800E7234_F61E4(void) {
	gSPMatrix(D_8005BB2C++, (Mtx *)((u32) &D_80031160 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	func_800DD604_EC5B4(&D_8005BB2C);
	func_800E6A38_F59E8();
	func_800CFD84_DED34();
	func_800E5538_F44E8();
}

#ifdef NON_MATCHING
void func_800E72A0_F6250(void) {
	if (currentLevel == 2) {
		if (func_8000726C_7E6C(0x1E) == 0) {
			func_800E2830_F17E0();
		}
	} else if (currentLevel == 4) {
		func_800E2830_F17E0();
	}

	func_800E1C10_F0BC0();
	if (D_80052ACB == 0) {
		func_800E64B4_F5464();
	}
	func_800E5B78_F4B28();
	func_800E520C_F41BC();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E72A0_F6250.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E7338_F62E8.s")

#ifdef NON_MATCHING
void func_800E74DC_F648C(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4, u8 arg5) {
	u8 temp_t2;
	u8 var_v1;
	s32 temp_lo;

	temp_t2 = arg3;
	D_80157532 = temp_t2;
	var_v1 = temp_t2;
	if ((s32)arg4 < (s32)temp_t2) {
		var_v1 = arg4;
	}
	temp_lo = (s32)arg4 / (s32)var_v1;
	D_80157533 = temp_lo;
	D_80157534 = temp_lo;
	D_80157536 = arg0;
	D_80157538 = arg1;
	D_8015753A = arg2;
	D_8015753C = arg5;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E74DC_F648C.s")
#endif

void func_800E75A0_F6550(s16 arg0, s16 arg1, s16 arg2) {
	if (currentLevel == LEVEL_GREECE || currentLevel == LEVEL_AMERICA) {
		func_800DEADC_EDA8C(arg0, (s16)(func_800B84D0_C7480(arg0, arg1) >> 8), arg1, arg2);
		return;
	}
	if (currentLevel == LEVEL_JAVA) {
		func_800C9530_D84E0(arg0, arg1, 0xF, 0x96, 0x96, 0xC8, (arg2 / 4) + 0x3C);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E7660_F6610.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E77B4_F6764.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E7894_F6844.s")
