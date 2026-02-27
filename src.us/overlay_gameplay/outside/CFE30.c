#include <ultra64.h>
#include "common.h"


#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C0E80_CFE30.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C0FD4_CFF84.s")

#ifdef NON_MATCHING
void func_800C1024_CFFD4(Vec3f *arg0, Vec3f *arg1) {
	f32 temp_f0;

	temp_f0 = func_800C0FD4_CFF84(arg0);
	if ((f64) temp_f0 == 0.0) {
		*(s32 *)&arg1->x = *(s32 *)&arg0->x;
		*(s32 *)&arg1->y = *(s32 *)&arg0->y;
		*(s32 *)&arg1->z = *(s32 *)&arg0->z;
		return;
	}
	func_800C0F84_CFF34(temp_f0, arg0, arg1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1024_CFFD4.s")
#endif

#ifdef NON_MATCHING
f32 func_800C1090_D0040(Vec3f *arg0, Vec3f *arg1) {
	return (arg0->x * arg1->x) + (arg0->y * arg1->y) + (arg0->z * arg1->z);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1090_D0040.s")
#endif

#ifdef NON_MATCHING
void func_800C10C0_D0070(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2) {
	arg2->x = arg0->x - arg1->x;
	arg2->y = arg0->y - arg1->y;
	arg2->z = arg0->z - arg1->z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C10C0_D0070.s")
#endif

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1384_D0334.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1418_D03C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C14D4_D0484.s")

void func_800C1598_D0548(u8 arg0) {
	func_800C14D4_D0484(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C15C0_D0570.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C17B4_D0764.s")

void func_800C18D0_D0880(u8 arg0) {
	func_800C17B4_D0764(arg0, 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C18FC_D08AC.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1E24_D0DD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C1ECC_D0E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C21F0_D11A0.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C2554_D1504.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C25F8_D15A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C2B90_D1B40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C2D50_D1D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C2EE4_D1E94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C31AC_D215C.s")

void func_800C3288_D2238(u8 arg0) {
	if (arg0 >= 0x1E || D_80154088[arg0].unk0 != 1) {
		osSyncPrintf(&D_80143478);
		return;
	}
	func_800C1418_D03C8(arg0, 0);
	func_800C1384_D0334(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C3300_D22B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C3BD8_D2B88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C3D88_D2D38.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C80F0_D70A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C8184_D7134.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800C820C_D71BC.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CB19C_DA14C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CB23C_DA1EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CB394_DA344.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CB4F8_DA4A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CBD1C_DACCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CBDE0_DAD90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CBE98_DAE48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CC090_DB040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CC7B0_DB760.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CCAD4_DBA84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CCB60_DBB10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CCD54_DBD04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CD0B0_DC060.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CD1F8_DC1A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CD2E8_DC298.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CD390_DC340.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CD42C_DC3DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CD7FC_DC7AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CDA98_DCA48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CDB40_DCAF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CDBF4_DCBA4.s")

void func_800CDD7C_DCD2C(s16 arg0) {
	if (arg0 != -3) {
		func_800DDF18_ECEC8(*(&D_80154328 + (arg0 * 0x1C)));
		func_800C1A4C_D09FC(arg0, 9, 1);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CDDE4_DCD94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CE040_DCFF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CE100_DD0B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CE1C0_DD170.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CE6E8_DD698.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CEE00_DDDB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CF070_DE020.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CF174_DE124.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CF2E0_DE290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CF80C_DE7BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CF948_DE8F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800CFD84_DED34.s")

#ifdef NON_MATCHING
void func_800D05A8_DF558(s16 arg0, s16 arg1, s16 arg2, s32 arg3, u8 arg4, u8 arg5, u8 arg6) {
	func_800D0614_DF5C4(arg0, arg1, arg2, arg3 & 0xFFFF, (s32) arg4, (s32) arg5, (s32) arg6, 1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D05A8_DF558.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D0614_DF5C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D0C00_DFBB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D0DE4_DFD94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D0F5C_DFF0C.s")

void func_800D0FE0_DFF90(s16 arg0, u16 arg1) {
	if (arg0 != -3) {
		D_80154318[arg0].unk2 = arg1;
		func_800DDDE4_ECD94(*(u8 *)((u8 *)&D_80154318[arg0] + 0x13), (arg1 / 2) & 0xFF);
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
	osSyncPrintf(&D_801437C0);
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D3614_E25C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D36EC_E269C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D3C88_E2C38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D3D40_E2CF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D3E3C_E2DEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D45B4_E3564.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D49CC_E397C.s")

void func_800D4A78_E3A28(s16 arg0) {
	if (arg0 != -3) {
		func_800C1A4C_D09FC(arg0, 0xF, 1);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D4AB0_E3A60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D4B44_E3AF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D4C10_E3BC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D5424_E43D4.s")

void func_800D5588_E4538(s16 arg0) {
	if (arg0 != -3) {
		func_800C1E24_D0DD4(arg0, 0x10, 1);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D55C0_E4570.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D5684_E4634.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D5760_E4710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D5AF4_E4AA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D5FD4_E4F84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6084_E5034.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6140_E50F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6290_E5240.s")

#ifdef NON_MATCHING
void func_800D6A84_E5A34(s32 arg0) {
	s32 temp_t6;

	temp_t6 = arg0 & 0xFF;
	D_80153AE0[temp_t6].unk13 = 0;
	D_80153AE0[temp_t6].unk14 = 0;
	D_80153AE0[temp_t6].unk18 = ((s32 *) &D_8013E2F4)[temp_t6];
	D_80153AE0[temp_t6].unk12 = ((u8 *) &D_8013E2EC)[temp_t6];
	D_80153AE0[temp_t6].unk1C = ((s32 *) &D_8013E308)[temp_t6];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6A84_E5A34.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6ADC_E5A8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6C18_E5BC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D6EAC_E5E5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D702C_E5FDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D7284_E6234.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D7624_E65D4.s")

void func_800D76A8_E6658(s16 arg0) {
	if (arg0 == -3) {
		osSyncPrintf(&D_8014390C);
		return;
	}
	func_800C1A4C_D09FC(arg0, 0x11, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D76F4_E66A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D7790_E6740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D7870_E6820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D7EF8_E6EA8.s")

void func_800D7FB4_E6F64(s16 arg0) {
	if (arg0 == -3) {
		osSyncPrintf(&D_801439A4);
		return;
	}
	func_800C1A4C_D09FC(arg0, 0x12, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D8000_E6FB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D80B4_E7064.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D8190_E7140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D8FA0_E7F50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D90A4_E8054.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D9294_E8244.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D951C_E84CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D95D0_E8580.s")

#ifdef NON_MATCHING
void func_800D96B4_E8664(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	Unk80154318Entry *temp_v1;

	temp_v1 = &D_80154318[D_80154318[arg0].unk4];
	temp_v1->unk8 = arg1;
	temp_v1->unkA = arg2;
	temp_v1->unkC = arg3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D96B4_E8664.s")
#endif

#ifdef NON_MATCHING
void func_800D9704_E86B4(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	Unk80154318Entry *temp_v1;

	temp_v1 = &D_80154318[D_80154318[arg0].unk4];
	temp_v1->unkE = arg1;
	temp_v1->unk10 = arg2;
	temp_v1->unk12 = arg3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D9704_E86B4.s")
#endif

void func_800D9754_E8704(s16 arg0) {
	if (arg0 != -3) {
		func_800C1E24_D0DD4(arg0, 0x14, 1);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D978C_E873C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D99F4_E89A4.s")

#ifdef NON_MATCHING
void func_800D9A8C_E8A3C(s16 arg0, s32 arg1, s16 arg2) {
	*(s16 *)((u8 *)&D_80154318[D_80154318[arg0].unk4].unk8 + (arg1 * 2)) = arg2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D9A8C_E8A3C.s")
#endif

#ifdef NON_MATCHING
void func_800D9AD4_E8A84(s16 arg0, s8 arg1) {
	D_80154318[D_80154318[arg0].unk4].unk14 = arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D9AD4_E8A84.s")
#endif

void func_800D9B14_E8AC4(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	Unk80154318Entry *temp_v0;

	temp_v0 = &D_80154318[arg3];
	temp_v0->unkE = arg0;
	temp_v0->unk10 = arg1;
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D9F60_E8F10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800D9FF8_E8FA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA260_E9210.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA3A8_E9358.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA450_E9400.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA510_E94C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA6F0_E96A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA7CC_E977C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DA994_E9944.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DAA1C_E99CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DABBC_E9B6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DAF24_E9ED4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DAFCC_E9F7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DB350_EA300.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DB714_EA6C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DBA9C_EAA4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DBE20_EADD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DC18C_EB13C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DC5B8_EB568.s")

void func_800DD5E0_EC590(void) { D_80156EDA = 0; func_800C978C_D873C(); }

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DD604_EC5B4.s")

#ifdef NON_MATCHING
void func_800DDB18_ECAC8(void) {
	s32 var_v0;

	var_v0 = 0;
	do {
		D_80156EF0[var_v0].unkA = 0;
		var_v0 = (var_v0 + 1) & 0xFF;
	} while (var_v0 < 0x50);
	D_80157530 = 0;
	D_80157531 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DDB18_ECAC8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DDB60_ECB10.s")

#ifdef NON_MATCHING
void func_800DDD30_ECCE0(s32 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s32 temp_t6;

	temp_t6 = arg0 & 0xFF;
	if (temp_t6 != 0xFF) {
		D_80156EF0[temp_t6].unk0 = arg1;
		D_80156EF0[temp_t6].unk2 = arg2;
		D_80156EF0[temp_t6].unk4 = arg3;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DDD30_ECCE0.s")
#endif

#ifdef NON_MATCHING
void func_800DDD90_ECD40(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s32 temp_t6;

	temp_t6 = arg0 & 0xFF;
	if (temp_t6 != 0xFF) {
		D_80156EF0[temp_t6].unk6 = (s8) (arg1 & 0xFF);
		D_80156EF0[temp_t6].unk7 = (s8) (arg2 & 0xFF);
		D_80156EF0[temp_t6].unk8 = (s8) (arg3 & 0xFF);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DDD90_ECD40.s")
#endif

#ifdef NON_MATCHING
void func_800DDDE4_ECD94(s32 arg0, s32 arg1) {
	s32 temp_t6;

	temp_t6 = arg0 & 0xFF;
	if (temp_t6 != 0xFF) {
		D_80156EF0[temp_t6].unkA = arg1 & 0xFF;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DDDE4_ECD94.s")
#endif

#ifdef NON_MATCHING
void func_800DDE1C_ECDCC(s32 arg0, u8 arg1) {
	s32 temp_t6;

	temp_t6 = arg0 & 0xFF;
	if (temp_t6 != 0xFF) {
		D_80156EF0[temp_t6].unkD = arg1 & 0xFF;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DDE1C_ECDCC.s")
#endif

#ifdef NON_MATCHING
void func_800DDE54_ECE04(s32 arg0, s8 arg1) {
	s32 temp_t6;

	temp_t6 = arg0 & 0xFF;
	if (temp_t6 != 0xFF) {
		D_80156EF0[temp_t6].unk12 = arg1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DDE54_ECE04.s")
#endif

#ifdef NON_MATCHING
void func_800DDE90_ECE40(s32 arg0, s8 arg1, s8 arg2) {
	s32 temp_t6;

	temp_t6 = arg0 & 0xFF;
	if (temp_t6 != 0xFF) {
		D_80156EF0[temp_t6].unk10 = arg1;
		D_80156EF0[temp_t6].unk11 = arg2;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DDE90_ECE40.s")
#endif

#ifdef NON_MATCHING
void func_800DDEE0_ECE90(s32 arg0, s32 arg1) {
	s32 temp_t6;

	temp_t6 = arg0 & 0xFF;
	if (temp_t6 != 0xFF) {
		D_80156EF0[temp_t6].unkF = arg1 & 0xFF;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DDEE0_ECE90.s")
#endif

#ifdef NON_MATCHING
void func_800DDF18_ECEC8(s32 arg0) {
	s32 temp_t6;

	temp_t6 = arg0 & 0xFF;
	if (temp_t6 != 0xFF) {
		D_80156EF0[temp_t6].unkA = 0;
		if (temp_t6 < (s32) D_80157531) {
			D_80157531 = (u8) temp_t6;
		}
		D_80157530 -= 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DDF18_ECEC8.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DDF78_ECF28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DE150_ED100.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DE2E8_ED298.s")

#ifdef NON_MATCHING
void func_800DE9B8_ED968(s16 arg0, s16 arg1, s16 arg2, u8 arg3) {
	func_800DDB60_ECB10(arg0, arg1, arg2, 1, (s32) arg3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DE9B8_ED968.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DEA08_ED9B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DEADC_EDA8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DEB7C_EDB2C.s")

#ifdef NON_MATCHING
u8 func_800DEE5C_EDE0C(s16 arg0, s16 arg1, s16 arg2, s8 arg3, s8 arg4) {
	u8 sp27;
	u8 temp_v0;

	temp_v0 = func_800DDB60_ECB10(arg0, arg1, arg2, 6, 0xA);
	sp27 = temp_v0;
	func_800DDE54_ECE04(temp_v0 & 0xFF, arg4);
	func_800DDE90_ECE40(sp27, arg3, 0);
	return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DEE5C_EDE0C.s")
#endif

void func_800DEED0_EDE80(s16 arg0, s16 arg1, s16 arg2, u8 arg3, u8 arg4) {
	func_800DDE1C_ECDCC(func_800DDB60_ECB10(arg0, arg1, arg2, 5, (s32) arg3) & 0xFF, arg4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DEF2C_EDEDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DF038_EDFE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DF848_EE7F8.s")

#ifdef NON_MATCHING
void func_800DF9C8_EE978(s16 arg0, s16 arg1, s16 arg2, s32 arg3, u8 arg4, s32 arg5) {
	D_80153B87 = 1;
	func_800DF038_EDFE8(arg0, arg1, arg2, arg3 & 0xFFFF, (s32) arg4, arg5);
	D_80153B87 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DF9C8_EE978.s")
#endif

#ifdef NON_MATCHING
void func_800DFA34_EE9E4(s16 arg0, s16 arg1, s16 arg2, s32 arg3, u8 arg4) {
	D_80153B87 = 1;
	func_800DF848_EE7F8(arg0, arg1, arg2, arg3 & 0xFFFF, (s32) arg4);
	D_80153B87 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DFA34_EE9E4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DFA98_EEA48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DFBA8_EEB58.s")

void func_800DFE68_EEE18(s16 arg0, s16 arg1, s16 arg2) {
	func_800DEA08_ED9B8(arg0, arg1, arg2, 0xF, 2, 1, 0x14, 0xFF, 0xFF, 0xFA, 0xDC);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DFEE4_EEE94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800DFFC4_EEF74.s")

#ifdef NON_MATCHING
void func_800E00F4_EF0A4(s8 arg0, s32 arg1) {
	Unk801541F8Entry *temp_v0;

	temp_v0 = &D_801541F8[arg1 & 0xFF];
	temp_v0->unk0 = arg0;
	temp_v0->unk1 = 0;
	temp_v0->unk4 = 0;
	temp_v0->unk6 = -6;
	temp_v0->unk8 = -6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E00F4_EF0A4.s")
#endif

// guess_initSpecialEffects
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0134_EF0E4.s")

// debug_printSpecialEffectsInfo
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E03FC_EF3AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E049C_EF44C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E05B4_EF564.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0764_EF714.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E093C_EF8EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0AE0_EFA90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0C8C_EFC3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0D28_EFCD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0E9C_EFE4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E0F4C_EFEFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E1C10_F0BC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E1D48_F0CF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E1F70_F0F20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E24B8_F1468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E2668_F1618.s")

void func_800E26FC_F16AC(s8 arg0, s8 arg1, s8 arg2) {
	D_80154082.unk0 = arg0;
	D_80154082.unk1 = arg1;
	D_80154082.unk2 = arg2;
}

#ifdef NON_MATCHING
void func_800E2720_F16D0(s32 arg0) {
	s32 temp_lo;

	temp_lo = arg0 / 6;
	D_80154308 = temp_lo;
	if (temp_lo >= 0xC9) {
		D_80154308 = 0xC8;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E2720_F16D0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E2750_F1700.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E2830_F17E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E2DB4_F1D64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E2ED4_F1E84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E32C4_F2274.s")

#ifdef NON_MATCHING
void func_800E35E0_F2590(s32 arg0) {
	s32 temp_t6;

	temp_t6 = arg0 & 0xFF;
	if ((s32) D_8013E344 < temp_t6) {
		D_8013E344 = (u8) temp_t6;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E35E0_F2590.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E360C_F25BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E3738_F26E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E3928_F28D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E4CEC_F3C9C.s")

// displayLasers
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5044_F3FF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E520C_F41BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E52E8_F4298.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E5450_F4400.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E6028_F4FD8.s")

#ifdef NON_MATCHING
s32 func_800E60CC_F507C(s32 arg0, s32 arg1) {
	s16 var_v0;

	var_v0 = 0;
	if (D_80152C96 > 0) {
		do {
			if (((arg0 & 0xFF) == D_80152CA0[var_v0].unk1) && ((arg1 & 0xFF) == D_80152CA0[var_v0].unk0)) {
				return 1;
			}
			var_v0 += 1;
		} while (var_v0 < D_80152C96);
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E60CC_F507C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E614C_F50FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E64B4_F5464.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E6A38_F59E8.s")

// displayFXUnderWater
#ifdef NON_MATCHING
void func_800E71F8_F61A8(void) {
	Gfx *dl;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w1 = (u32) &D_80031160 & 0x1FFFFFFF;
	dl->words.w0 = 0x01020040;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E71F8_F61A8.s")
#endif

// displayFXOnWater - Ripples, splashes etc
#ifdef NON_MATCHING
void func_800E7234_F61E4(void) {
	Gfx *dl;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w1 = (u32) &D_80031160 & 0x1FFFFFFF;
	dl->words.w0 = 0x01020040;
	func_800DD604_EC5B4(&D_8005BB2C);
	func_800E6A38_F59E8();
	func_800CFD84_DED34();
	func_800E5538_F44E8();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E7234_F61E4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E72A0_F6250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E7338_F62E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E74DC_F648C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E75A0_F6550.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E7660_F6610.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E77B4_F6764.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/CFE30/func_800E7894_F6844.s")
