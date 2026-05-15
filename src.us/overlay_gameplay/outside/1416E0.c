#include <ultra64.h>
#include "common.h"

s16 D_8013E410_14D3C0[] = {
	0x001E, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0000, 0x012C, 0x0000,
	0x0064, 0x0000, 0x0400, 0x0000,
	0x0190, 0x0000, 0x0DAC, 0x0000,
};


s16 func_80132730_1416E0(s32 arg0, s32 arg1) { return (s16)(arg1 - arg0); }

// https://decomp.me/scratch/5qXxW
#ifdef NON_MATCHING
void func_80132740_1416F0(Unk80160080 *arg0) {
	VehicleInstance *sp1C;

	sp1C = D_80052B34;
	osSyncPrintf(&D_80145650, arg0);
	arg0->unkC = 0.0f;
	*(s32*)&arg0->unk24 = *(s32*)&arg0->unkC;
	arg0->unk10 = 0.0f;
	arg0->unk14 = 0.0f;
	arg0->unk48 = 0;
	arg0->unk50 = 0;
	arg0->unk4A = 0x71C;
	arg0->unk52 = 0x71C;
	arg0->unk4C = 0;
	arg0->unk54 = 0;
	arg0->unk4E = 0x12C;
	arg0->unk56 = 0x12C;
	arg0->unk0 = 0.0f;
	arg0->unk4 = 0.0f;
	arg0->unk8 = 0.0f;
	arg0->unk18 = 0.0f;
	arg0->unk20 = 0.0f;
	arg0->unk1C = 1.0f;
	*(s32*)&arg0->unk2C = *(s32*)&arg0->unk14;
	*(s32*)&arg0->unk28 = *(s32*)&arg0->unk10;
	arg0->unk5E = (s16) D_80052B34->unkE;
	{
		f32 lodColor = D_8014567C;
		arg0->unk64 = 0x64;
		arg0->unk68 = 0;
		D_8016011C = 1.0f;
		D_80160120 = 1.0f;
		D_80160124 = 1.0f;
		D_80160128 = 1.0f;
		D_8016012C = lodColor;
		D_80160130 = lodColor;
		D_80160134 = lodColor;
		D_80160138 = lodColor;
	}
	arg0->unk6C = 1;
	arg0->unk30 = (f32) sp1C->unk0;
	{
		s16 temp_v0 = vehicleSpecs[D_80052B34->unk1A].unk38;
		arg0->unk34 = (f32) (temp_v0 - (temp_v0 >> 2)) + (f32) sp1C->unk2;
	}
	arg0->unk38 = (f32) sp1C->unk4;
	*(s32*)&D_801600F8.x = *(s32*)&arg0->unk30;
	*(s32*)&D_801600F8.y = *(s32*)&arg0->unk34;
	*(s32*)&D_801600F8.z = *(s32*)&arg0->unk38;
	D_80160104 = 0;
	D_8016014C = 0;
	D_80160154 = 0;
	D_80160144 = 0;
	arg0->unk3C = 0.0f;
	arg0->unk40 = 0.0f;
	arg0->unk44 = 0.0f;
	D_80160146 = D_80052B34->unkE;
	D_8016014A = 0;
	D_80160158 = 0;
	D_8016015E = 0;
	D_8016013C = 0;
	D_80160140 = 0;
	func_80135CB8_144C68();
	D_8016017C = 0;
	func_800B33BC_C236C(0x38);
	D_8016015F = 0;
	D_8016018C = 0;
	D_80160190 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80132740_1416F0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80132980_141930.s")

void func_801330E4_142094(Unk80160080 *arg0) {
	u16 sp46;

	if (D_80157590 != 0) {
		return;
	}
	{
		s16 near = 0xF;
		s16 far = 0x500;
		guPerspective((Mtx *)(D_8005BB20 + 0x180), &sp46, (f32)D_80149404, 1.3333334f, (f32)near, (f32)far, 1.0f);
	}
	gSPPerspNormalize(D_8005BB2C++, sp46);
	guLookAt((Mtx *)(D_8005BB20 + 0x200),
			 D_80160194, D_80160198, D_8016019C,
			 D_801601A0, D_801601A4, D_801601A8,
			 arg0->unk18, arg0->unk1C, arg0->unk20);
	gSPMatrix(D_8005BB2C++, (Mtx *)((u32)(D_8005BB20 + 0x180) & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	gSPMatrix(D_8005BB2C++, (Mtx *)((u32)(D_8005BB20 + 0x200) & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
}

void func_80133260_142210(Unk80160080 *arg0) {
	D_801493D0 = 0;
	D_801600F0 = 0;
	arg0->unk6C = 0;
	arg0->unk52 = 0x71C;
	arg0->unk56 = 0x96;
}

void func_80133288_142238(Unk80160080 *arg0) {
	if ((D_801493D0 != 0) && (D_8016017C == 0)) {
		func_801333D0_142380(arg0);
		return;
	}
	if (D_801600F0 != 0) {
		arg0->unk5E = (s16) D_80052B34->unkE;
		D_80160146 = D_80052B34->unkE;
		if (arg0->unk6C == 1) {
			arg0->unk52 = 0x71C;
			arg0->unk56 = 0x12C;
		} else if (arg0->unk6C == 2) {
			arg0->unk52 = 0x1555;
			arg0->unk56 = 0x4E2;
		}
		D_8016011C = 0.0f;
		D_80160120 = 0.0f;
		D_80160124 = 0.0f;
		D_80160128 = 0.0f;
		arg0->unk3C = 0.0f;
		arg0->unk40 = 0.0f;
		arg0->unk44 = 0.0f;
	}
	func_801351DC_14418C(arg0);
	func_80133EBC_142E6C(arg0);
	func_80135380_144330(arg0);
	arg0->unk24 = arg0->unk24 + arg0->unk3C;
	arg0->unk28 = arg0->unk28 + arg0->unk40;
	arg0->unk2C = arg0->unk2C + arg0->unk44;
	func_80133F28_142ED8(arg0);
	func_801343D8_143388(arg0);
}

#ifdef NON_MATCHING
// CURRENT(6064)
void func_801333D0_142380(Unk80160080 *arg0) {
	Vec3f sp3C;
	s32 temp_v0;
	VehicleInstance *vehicle;
	f64 temp_f20;

	vehicle = D_80052B34;
	if (D_801600F0 == 0) {
		D_8016011C = 0.0f;
		D_80160120 = 0.0f;
		D_80160124 = 0.0f;
		D_80160128 = 0.0f;
		D_8016012C = D_80145698_154648;
		D_80160130 = D_80145698_154648;
		D_80160134 = D_80145698_154648;
		D_80160138 = D_80145698_154648;
		arg0->unk58 = vehicle->unkE;
	}

	if (currentControllerStates[0].button & 4) {
		D_80160190 = 1;
		D_80140CF8_14FCA8 = 0;
	}

	if (D_80160190 == 1) {
		vehicle = D_80052B34;
		temp_v0 = func_80132730_1416E0(vehicle->unkE, arg0->unk58);
		if (temp_v0 < 0) {
			arg0->unk58 = (s16)(arg0->unk58 - (temp_v0 / 8));
		} else {
			arg0->unk58 = (s16)(arg0->unk58 + (temp_v0 / 8));
		}

		if (ABS(temp_v0) >= 1001) {
			D_80140CF8_14FCA8 = 1;
		}

		if ((ABS(temp_v0) < 200) && (D_80140CF8_14FCA8 == 1)) {
			arg0->unk58 = D_80052B34->unkE;
			D_80160190 = 0;
			D_80140CF8_14FCA8 = 0;
		}
	}

	if (D_80157570 != 0) {
		if (D_801575CC == 0) {
			vehicle = D_80052B34;
			temp_v0 = func_80132730_1416E0(vehicle->unkE, arg0->unk58);
			if (temp_v0 < 0) {
				arg0->unk58 = (s16)(arg0->unk58 + 0x16C);
			} else {
				arg0->unk58 = (s16)(arg0->unk58 - 0x16C);
			}
		} else {
			arg0->unk58 = (s16)(arg0->unk58 + D_801575CC);
		}
	}

	D_80157578 = arg0->unk58;
	arg0->unk56 = 0xB9;
	temp_f20 = (f64)30.0f;
	vehicle = D_80052B34;
	sp3C.x = (f32)((f64)vehicle->unk0 - (((f64)(f32)coss((u16)arg0->unk58) / 32768.0) * temp_f20));
	sp3C.y = (f32)(vehicle->unk2 + 0x4B);
	sp3C.z = (f32)((f64)vehicle->unk4 - (((f64)(f32)sins((u16)arg0->unk58) / 32768.0) * temp_f20));
	func_801336CC_14267C(arg0, &sp3C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_801333D0_142380.s")
#endif

// CURRENT(6064)
#ifdef NON_MATCHING
void func_801336CC_14267C(Unk80160080 *arg0, Vec3f *arg1) {
	f32 sp44;
	f64 sp20;
	f32 temp_f0;
	f32 temp_f12;
	f32 temp_f2;
	f32 temp_f14;
	f32 temp_f16;
	s16 temp_s0;
	s32 temp_a0;
	s32 temp_v0;
	s32 var_v1;
	VehicleInstance *temp_v1;

	temp_v1 = D_80159020;
	temp_f16 = (f32) temp_v1->unk2;
	temp_f14 = (f32) temp_v1->unk0;
	sp44 = temp_f16 - arg1->y;
	temp_f0 = temp_f14 - arg1->x;
	temp_f2 = (f32) temp_v1->unk4 - arg1->z;
	temp_f12 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
	if ((D_801600F0 == 0) || (D_80140CFC_14FCAC != 0)) {
		s16 temp_v1_2;

		temp_v1_2 = D_80140CFC_14FCAC;
		arg0->unk5C = (s16) -func_80003824_4424(temp_f12, sp44);
		arg0->unk5A = (s16) D_80159318;
		if (temp_v1_2 != 0) {
			D_80140CFC_14FCAC = temp_v1_2 - 1;
		} else {
			D_80140CFC_14FCAC = 1;
		}
	}
	temp_v0 = func_80132730_1416E0(D_80159318, arg0->unk5A);
	if (temp_v0 < -0xE38) {
		temp_a0 = -0xE38 - temp_v0;
		if (temp_a0 < 0x16D) {
			var_v1 = temp_a0;
		} else {
			var_v1 = 0x16C;
		}
		arg0->unk5A = (s16) (arg0->unk5A + var_v1);
		arg0->unk5C = (s16) (arg0->unk5C - var_v1);
	}
	if (temp_v0 >= 0xE39) {
		temp_a0 = temp_v0 - 0xE38;
		if (temp_a0 < 0x16D) {
			var_v1 = temp_a0;
		} else {
			var_v1 = 0x16C;
		}
		arg0->unk5A = (s16) (arg0->unk5A - var_v1);
		arg0->unk5C = (s16) (arg0->unk5C + var_v1);
	}
	temp_s0 = arg0->unk58;
	arg0->unk54 = 0;
	arg0->unk50 = (s16) (0x4000 - temp_s0);
	arg0->unk52 = (s16) arg0->unk5C;
	sp20 = (f64) 100.0f;
	arg0->unk24 = (f32) ((((f64) (f32) coss(temp_s0 & 0xFFFF) / 32768.0) * sp20) + (f64) arg1->x);
	arg0->unk28 = (f32) ((((f64) (f32) sins(-arg0->unk5C & 0xFFFF) / 32768.0) * sp20) + (f64) arg1->y);
	arg0->unk2C = (f32) ((((f64) (f32) sins((u16) arg0->unk58) / 32768.0) * sp20) + (f64) arg1->z);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_801336CC_14267C.s")
#endif

void func_80133934_1428E4(Unk80160080 *arg0) {
	if (D_801493D0 != 0) {
		func_80133A54_142A04(arg0);
		return;
	}
	if (D_801600F0 != 0) {
		if (arg0->unk6C == 1) {
			arg0->unk52 = 0x71C;
			arg0->unk56 = (s16)(vehicleSpecs[D_80052B34->unk1A].unk5C * 0x10);
		} else {
			arg0->unk52 = 0x1555;
			arg0->unk56 = (s16)(vehicleSpecs[D_80052B34->unk1A].unk5D * 0x10);
		}
		D_8016011C = 0.0f;
		D_80160120 = 0.0f;
		D_80160124 = 0.0f;
		D_80160128 = 0.0f;
		arg0->unk3C = 0.0f;
		arg0->unk40 = 0.0f;
		arg0->unk44 = 0.0f;
	}
	func_801356F4_1446A4(arg0);
	func_801354C0_144470(arg0);
	func_80135630_1445E0(arg0);
	func_801357EC_14479C(arg0);
	func_801343D8_143388(arg0);
}

// CURRENT(0)
#ifdef NON_MATCHING
void func_80133A54_142A04(Unk80160080 *arg0) {
	f32 sp40;
	Vec3f sp44;
	VehicleInstance *vehicle = D_80052B34;
	s32 temp_a1;
	s32 temp_a1_2;
	s32 var_a0;
	s32 var_a0_2;
	s32 temp_v0;

	if (D_801600F0 == 0) {
		D_8016011C = 0.0f;
		D_80160120 = 0.0f;
		D_80160124 = 0.0f;
		D_80160128 = 0.0f;
		D_8016012C = D_8014569C_15464C;
		D_80160130 = D_8014569C_15464C;
		D_80160134 = D_8014569C_15464C;
		D_80160138 = D_8014569C_15464C;
		arg0->unk58 = vehicle->unkE;
		vehicle = D_80052B34;
	}

	temp_v0 = func_80132730_1416E0(vehicle->unk6 - D_80052B2C->unk36, arg0->unk58);
	if (temp_v0 >= 0xE39) {
		temp_a1 = temp_v0 - 0xE38;
		var_a0 = D_8015929C;
		if (temp_a1 < D_8015929C) {
			var_a0 = temp_a1;
		}
		arg0->unk58 = (s16)(arg0->unk58 - var_a0);
	}
	if (temp_v0 < -0xE38) {
		temp_a1_2 = -0xE38 - temp_v0;
		var_a0_2 = D_8015929C;
		if (temp_a1_2 < D_8015929C) {
			var_a0_2 = temp_a1_2;
		}
		arg0->unk58 = (s16)(arg0->unk58 + var_a0_2);
	}

	arg0->unk56 = 0x73;
	sp40 = (f32)(D_80257A0C[D_80052B34->unk1A * 0x38] * 2);
	sp44.x = (f32)((f64)D_80052B34->unk0 - (((f64)(f32)coss((u16)arg0->unk58) / 32768.0) * (f64)sp40));
	sp44.y = (f32)(D_80257A38[D_80052B34->unk1A * 0x38] + D_80052B34->unk2 + 0x32);
	sp44.z = (f32)((f64)D_80052B34->unk4 - (((f64)(f32)sins((u16)arg0->unk58) / 32768.0) * (f64)sp40));

	func_801336CC_14267C(arg0, &sp44);
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80133A54_142A04.s")
#endif

// CURRENT(400)
#ifdef NON_MATCHING
void func_80133C9C_142C4C(Vec3f *arg0, Vec3f *arg1, void *arg2, s16 arg3, u16 arg4, s32 arg5, s16 arg6) {
	Vec3f sp44;
	f32 sp40;
	f32 temp_f0;
	f32 sp38;
	f32 sp34;
	s32 sp28;
	s32 var_v0;

	sp38 = (f32)((f64)(f32)sins(arg3) / 32768.0);
	sp34 = (f32)((f64)(f32)coss(arg3) / 32768.0);
		sp40 = (f32)((f64)(f32)sins(arg4) / 32768.0);
		temp_f0 = (f32)((f64)(f32)coss(arg4) / 32768.0);

	sp44.x = 0.0f;
	sp44.y = 0.0f;
	sp44.z = 1.0f;
	*arg0 = sp44;
	sp44.x = arg0->x;
	sp44.y = (arg0->y * temp_f0) - (arg0->z * sp40);
	sp44.z = (arg0->y * sp40) + (arg0->z * temp_f0);
	arg0->x = (sp44.z * sp38) + (sp44.x * sp34);
	arg0->y = sp44.y;
	arg0->z = (sp44.z * sp34) - (sp44.x * sp38);

	var_v0 = arg6;
	sp44.x = 0.0f;
	sp44.z = 0.0f;
	sp44.y = 1.0f;
	if (var_v0 == 0) {
		var_v0 = 0;
	}
	arg0->x = arg0->x * (f32)-var_v0;
	arg0->y = arg0->y * (f32)-var_v0;
	arg0->z = arg0->z * (f32)-var_v0;
	arg0->x = arg0->x + arg1->x;
	arg0->y = arg0->y + arg1->y;
	arg0->z = arg0->z + arg1->z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80133C9C_142C4C.s")
#endif

void func_80133E94_142E44(s32 arg0) {
	if (arg0 >= 0x24) {
		D_80160188 = arg0;
		return;
	}
	D_80160188 = 0x24;
}

void func_80133EBC_142E6C(Unk80160080 *arg0) {
	VehicleInstance *veh = D_80052B34;
	arg0->unk30 = (f32) veh->unk0;
	arg0->unk34 = (f32) veh->unk2 + (f32) D_80160188;
	arg0->unk38 = (f32) veh->unk4;
	*(Vec3f*)&arg0->unk24 = *(Vec3f*)&arg0->unk30;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80133F28_142ED8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_801343D8_143388.s")

// CURRENT (4210)
#ifdef NON_MATCHING
void func_8013493C_1438EC(Unk80160080 *arg0, Unk80052B2C *arg1) {
	s16 var_s0;
	s16 var_s1;
	s16 temp_s3;
	f32 var_f2;
	f32 var_f0;
	u16 temp_v0;
	s32 temp_t1;
	s32 temp_t3;
	s32 temp_t6;

	temp_v0 = func_80003824_4424(arg0->unk14 - arg0->unk8, arg0->unkC - arg0->unk0);
	D_80047950 = temp_v0;
	var_s0 = (s16) ((s16) arg1->unk3C >> 8);
	var_s1 = (s16) ((s16) arg1->unk3E >> 8);
	var_f2 = (f32) ((((f64) (f32) sins(temp_v0 & 0xFFFF) / 32768.0) * (f64) D_801493A8) + (f64) arg0->unkC + 256.0);
	var_f0 = (f32) ((((f64) (f32) coss(D_80047950) / 32768.0) * (f64) D_801493A8) + (f64) arg0->unk14 + 256.0);
	if (D_801456A8_154658 < var_f2) {
		var_f2 = D_801456A8_154658;
	}
	if (var_f2 < -30208.0f) {
		var_f2 = -30208.0f;
	}
	if (D_801456A8_154658 < var_f0) {
		var_f0 = D_801456A8_154658;
	}
	if (var_f0 < -30208.0f) {
		var_f0 = -30208.0f;
	}
	arg1->unk3C = (s16) (s32) var_f2;
	arg1->unk3E = (s16) (s32) var_f0;
	temp_t1 = (s16) arg1->unk3C >> 8;
	temp_s3 = (s16) ((s16) arg1->unk3E >> 8);
	if (var_s0 < (s16) temp_t1) {
		do {
			func_800B42B0_C3260(0);
			var_s0 += 1;
		} while (var_s0 < (s16) temp_t1);
	}
	if ((s16) temp_t1 < var_s0) {
		do {
			func_800B4660_C3610(0);
			var_s0 -= 1;
		} while ((s16) temp_t1 < var_s0);
	}
	if (var_s1 < temp_s3) {
		do {
			func_800B49A4_C3954(0);
			var_s1 += 1;
		} while (var_s1 < temp_s3);
	}
	if (temp_s3 < var_s1) {
		do {
			func_800B4D4C_C3CFC(0);
			var_s1 -= 1;
		} while (temp_s3 < var_s1);
	}
	D_80031404 = (f32) ((f64) (f32) sins(((s16) D_80047950 + 0x4000) & 0xFFFF) / 32768.0);
	D_8003140C = (f32) ((f64) (f32) coss(((s16) D_80047950 + 0x4000) & 0xFFFF) / 32768.0);
	temp_t3 = (s32) (arg1->unk3C - 0x780) >> 8;
	D_801493C0 = temp_t3;
	D_801493BC = temp_t3 + 0x10;
	temp_t6 = (s32) (arg1->unk3E - 0x780) >> 8;
	D_801493C8 = temp_t6;
	D_801493C4 = temp_t6 + 0x10;
	D_801493B0 = temp_t3 << 8;
	D_801493B8 = temp_t6 << 8;
	D_801493AC = D_801493BC << 8;
	D_801493B4 = D_801493C4 << 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_8013493C_1438EC.s")
#endif

void func_80134CCC_143C7C(Unk80160080 *arg0, Unk80052B2C *arg1) {
	arg1->unk0 = arg0->unk0;
	arg1->unk4 = arg0->unk4;
	arg1->unk8 = arg0->unk8;
	arg1->unkC = arg0->unkC;
	arg1->unk10 = arg0->unk10;
	arg1->unk14 = arg0->unk14;
	arg1->unk18 = (s16)(s32)arg0->unkC;
	arg1->unk1A = (s16)(s32)arg0->unk14;
	arg1->unk1C = arg0->unk4E;
	arg1->unk1E = arg0->unk4A;
	arg1->unk20 = D_80149404;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80134D44_143CF4.s")

// adamCameraControls ?
void func_801351DC_14418C(Unk80160080 *arg0)
{
  s32 temp_t5;
  s32 temp_t6;
  s32 var_a0;
  s32 zButtonState;
  func_801358E8_144898(arg0, 0x12C, 0x4E2);
  if (((D_80160148 >= 0) ? (D_80160148) : (-D_80160148)) < 2)
  {
	D_80160148 = 0;
  }
  zButtonState = currentControllerStates[CONTROLLER_ONE].button & BUTTON_Z;
  if (zButtonState == 0)
  {
	if (currentControllerStates[CONTROLLER_ONE].button & BUTTON_C_LEFT)
	{
	  if (D_80160148 < 0x100)
	  {
		D_80160148 = 0x100;
	  }
	  else if (D_80160148 < 0x400)
	  {
		D_80160148 += 0x40;
	  }
	  D_8016018C = 1;
	}
	else if (currentControllerStates[CONTROLLER_ONE].button & BUTTON_C_RIGHT)
	{
	  if (D_80160148 >= (-0xFF))
	  {
		D_80160148 = -0x100;
	  }
	  else if (D_80160148 >= (-0x3FF))
	  {
		D_80160148 -= 0x40;
	  }
	  D_8016018C = 1;
	}
	else if (D_80160148 != 0)
	{
	  D_80160148 = (s16) (D_80160148 / 2);
	}
  }
  temp_t5 = currentControllerStates[CONTROLLER_ONE].stick_x >= 0xB;
  if ((-temp_t5 < temp_t5 ? temp_t5 : -temp_t5) == 0)
  {
	temp_t6 = currentControllerStates[CONTROLLER_ONE].stick_y >= 0xB;
	var_a0 = -temp_t6 < temp_t6 ? temp_t6 : -temp_t6;

	if (((var_a0 == 0 && zButtonState == 0) && 
		 !(currentControllerStates[CONTROLLER_ONE].button & BUTTON_R)) &&
		!(currentControllerStates[CONTROLLER_ONE].button & BUTTON_C_DOWN))
	{
	  goto skip_clear;
	}
  }
  D_8016018C = 0;
  skip_clear:
  if (((zButtonState != 0) || (currentControllerStates[CONTROLLER_ONE].button & BUTTON_C_DOWN)) && (!(D_80157A28 & 4)))
  {
	D_80160190 = 1;
  }
}

void func_80135380_144330(Unk80160080 *arg0)
{
  f32 var_f0;
  f32 temp_f2;
  f32 var_f12;
  var_f0 = 0.0f;
  if ((temp_f2 = arg0->unk3C) <= var_f0)
  {
	var_f12 = 0.0f - temp_f2;
	var_f0 = var_f12;
  }
  else
  {
	var_f12 = 0.0f - temp_f2;
	var_f0 = -var_f12;
  }
  if (((f64) var_f0) < 2.0)
  {
	arg0->unk3C = 0.0f;
  }
  else
  {
	arg0->unk3C = (f32) (((f64) temp_f2) + (((f64) var_f12) / 12.0));
  }
  if ((temp_f2 = arg0->unk40) <= 0.0f)
  {
	var_f12 = 0.0f - temp_f2;
	var_f0 = var_f12;
  }
  else
  {
	var_f12 = 0.0f - temp_f2;
	var_f0 = -var_f12;
  }
  if (((f64) var_f0) < 2.0)
  {
	arg0->unk40 = 0.0f;
  }
  else
  {
	arg0->unk40 = (f32) (((f64) temp_f2) + (((f64) var_f12) / 12.0));
  }
  if ((temp_f2 = arg0->unk44) <= 0.0f)
  {
 var_f12 = 0.0f - temp_f2; var_f0 = var_f12; } else {
	var_f12 = 0.0f - temp_f2;
	var_f0 = -var_f12;
  }
  if (((f64) var_f0) < 2.0)
  {
	arg0->unk44 = 0.0f;
	return;
  }
  arg0->unk44 = (f32) (((f64) temp_f2) + (((f64) var_f12) / 12.0));
}

void func_801354C0_144470(Unk80160080 *arg0) {
	f32 var_f2;
	register VehicleInstance *v1 = D_80052B34;

	arg0->unk30 = (f32)v1->unk0;
	arg0->unk34 = (f32)(vehicleSpecs[D_80052B34->unk1A].unk38 - (vehicleSpecs[D_80052B34->unk1A].unk38 >> 2)) + (f32)v1->unk2;
	arg0->unk38 = (f32)v1->unk4;
	var_f2 = (f32)((arg0->unk6C == 2) ? 400.0 : 100.0);
	arg0->unk24 = (f32)(((f64)(f32)coss((u16)v1->unk6) / 32768.0) * (f64)var_f2 + (f64)arg0->unk30);
	arg0->unk28 = arg0->unk34;
	arg0->unk2C = (f32)(((f64)(f32)sins((u16)v1->unk6) / 32768.0) * (f64)var_f2 + (f64)arg0->unk38);
}

void func_80135630_1445E0(Unk80160080 *arg0) {
	s16 sp1E;
	s32 temp_v0;
	s32 var_v1;

	sp1E = D_80052B34->unk6 + D_80160148;
	temp_v0 = func_80132730_1416E0(sp1E, arg0->unk60);
	if (temp_v0 >= 0) {
		var_v1 = temp_v0;
	} else {
		var_v1 = -temp_v0;
	}
	if (var_v1 < 0xB7) {
		arg0->unk60 = sp1E;
	} else {
		arg0->unk60 = (s16)((f64)arg0->unk60 - (f64)temp_v0 * 0.25);
	}
	arg0->unk50 = (s16)(0x4000 - arg0->unk60);
}

// vehicleCameraControls?
void func_801356F4_1446A4(Unk80160080 *arg0) {
	VehicleSpec *temp = &vehicleSpecs[D_80052B34->unk1A];
	func_801358E8_144898(arg0, (s16)(temp->unk5C * 0x10), (s16)(temp->unk5D * 0x10));
	func_8000345C_405C(3);
	if (currentControllerStates[CONTROLLER_ONE].button & BUTTON_C_RIGHT) {
		D_8016014A -= 1;
		if (D_8016014A < 0) {
			D_8016014A = 7;
		}
	}
	if (currentControllerStates[CONTROLLER_ONE].button & BUTTON_C_LEFT) {
		D_8016014A += 1;
		if (D_8016014A >= 8) {
			D_8016014A = 0;
		}
	}
	D_80160148 = (s16)((D_8016014A * 0x2D0000) / 360);
}

void func_801357EC_14479C(Unk80160080 *arg0) {
	if (D_80160154 == 0 && D_801591BC != 0) {
		D_80160124 = 0.0f;
		D_80160134 = D_801456D8_154688;
	}
	if (D_80160154 != 0 && D_801591BC == 0) {
		D_80160124 = 0.0f;
		D_80160134 = D_801456DC_15468C;
		if (arg0->unk6C == 1) {
			arg0->unk56 = (s16)(vehicleSpecs[D_80052B34->unk1A].unk5C * 0x10);
		} else {
			arg0->unk56 = (s16)(vehicleSpecs[D_80052B34->unk1A].unk5D * 0x10);
		}
	}
	if (D_801591BC != 0) {
		arg0->unk52 = 0x2260;
	}
}

// toggleCameraNearFarMode?
// CURRENT(1155)
#ifdef NON_MATCHING
void func_801358E8_144898(Unk80160080 *arg0, s16 arg1, s16 arg2) {
	f64 temp_f0_2;
	f32 var_f14;
	u8 temp_v0;

	if ((currentLevel == 4) && (D_80052B34->unk1A == 0xF)) {
		arg0->unk6C = 1;
		arg0->unk52 = 0x71C;
		arg0->unk56 = arg1;
		return;
	}

	func_800033D4_3FD4(8, 0);
	if (currentControllerStates[CONTROLLER_ONE].button & 8) {
		temp_v0 = arg0->unk6C;
		if (temp_v0 != 0) {
			if (temp_v0 == 1) {
				func_800B33BC_C236C(0x44);
				arg0->unk6C = 2;
			} else {
				arg0->unk6C = 1;
			}

			if ((f64)D_80160128 >= 1.0) {
				if (*(u8*)&D_8016015E == 0) {
					func_800153D8_15FD8(0xC3);
				}
				var_f14 = D_801456E0_154690;
				D_8016015E = 1;
				D_80160158 = 1;
				D_80160138 = var_f14;
				D_80160128 = 0.0f;
				D_8016013C = 1;
			} else {
				f32 temp_f0 = D_80160128;

				D_80160128 = 0.0f;
				D_80160138 = (f32)(1.0 / (f64)(s16)(s32)(temp_f0 / D_80160138));
				var_f14 = D_801456E4_154694;
			}

			{
				f32 temp_f0 = D_80160124;

				if ((f64)temp_f0 == 1.0) {
					D_80160124 = 0.0f;
					D_80160134 = var_f14;
					D_80160140 = 1;
				} else {
					D_80160124 = 0.0f;
					D_80160134 = (f32)(1.0 / (f64)(s16)(s32)(temp_f0 / D_80160134));
				}
			}

			{
				f32 temp_f0 = D_8016011C;

				if ((f64)temp_f0 == 1.0) {
					D_8016011C = 0.0f;
					D_8016012C = var_f14;
				} else {
					D_8016011C = 0.0f;
					D_8016012C = (f32)(1.0 / (f64)(s16)(s32)(temp_f0 / D_8016012C));
				}
			}

			if (arg0->unk6C == 1) {
				arg0->unk52 = 0x71C;
				arg0->unk56 = arg1;
			} else {
				arg0->unk52 = 0x1555;
				arg0->unk56 = arg2;
			}
		}
	}

	if (D_80160158 != 0) {
		temp_f0_2 = (f64)D_80160128;
		if (temp_f0_2 >= 1.0) {
			func_80015860_16460(D_8016015C);
			D_8016015E = 0;
			D_80160158 = 0;
			if (arg0->unk6C == 1) {
				func_800B33BC_C236C(0x38);
			}
		} else {
			u8 temp_v0_2;

			temp_v0_2 = arg0->unk6C;
			if (temp_v0_2 == 1) {
				func_80014208_14E08(D_8016015C, (s16)(s32)((1.0 - temp_f0_2) * D_801456E8_154698), 0x40);
			} else if (temp_v0_2 == 2) {
				func_80014208_14E08(D_8016015C, (s16)(s32)(temp_f0_2 * D_801456F0_1546A0), 0x40);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_801358E8_144898.s")
#endif

void func_80135CB8_144C68(void) {
	D_80160160 = 0;
	D_80160170 = 0.0f;
	D_80160164 = 4;
	D_80160166 = 4;
	D_80160168 = 0x1E;
	D_80160174 = 0.0f;
	D_80160178 = 0.0f;
	D_8016016C = 0.0f;
}

void func_80135D08_144CB8(f32 arg0, s16 arg1, s16 arg2, s16 arg3) {
	D_80160160 = 1;
	D_80160170 = arg0;
	D_80160164 = arg1;
	D_80160168 = arg2;
	D_80160166 = arg3;
}

// https://decomp.me/scratch/AXqIF
#ifdef NON_MATCHING
void func_80135D44_144CF4(s32 arg0, s32 arg1, s32 arg2, f32 arg3)
{
  f32 var_f14;
  f32 new_var;
  float new_var2;
  s32 var_v0;
  s32 var_v1;
  s32 var_a0;
  f32 temp_f16;
  f32 temp_f18;
  new_var2 = 0.0f;
  if (arg3 != 0.0f)
  {
	f32 temp_f2;
	new_var2 = arg0 / 4;
	temp_f2 = new_var2 - D_80047954;
	var_v0 = ((-temp_f2) < temp_f2) ? ((s32) temp_f2) : ((s32) (-temp_f2));
	temp_f2 = (arg1 / 4) - D_80047958;
	var_v1 = ((-temp_f2) < temp_f2) ? ((s32) temp_f2) : ((s32) (-temp_f2));
	temp_f2 = (arg2 / 4) - D_8004795C;
	var_a0 = ((-temp_f2) < temp_f2) ? ((s32) temp_f2) : ((s32) (-temp_f2));
	new_var = D_801456F8;
	temp_f16 = (((var_v0 * var_v0) + (var_v1 * var_v1)) + (var_a0 * var_a0)) / new_var;
	temp_f18 = temp_f16;
	temp_f18 = arg3 - temp_f18;
	var_f14 = temp_f18;
	if (arg3 < temp_f16)
	{
	  var_f14 = new_var2;
	}
	else
	  if (temp_f18 < 1.0)
	{
	  var_f14 = 1.0f;
	}
	if (D_80160174 < var_f14)
	{
	  D_80160174 = var_f14;
	}
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80135D44_144CF4.s")
#endif

// CURRENT(3790)
#ifdef NON_MATCHING
void func_80135F0C_144EBC(void) {
	f32 temp_f0;
	f32 temp_f2;

	if ((f64) D_80160174 < 0.125) {
		D_80160174 = 0.0f;
	} else {
		D_80160174 = (f32) ((f64) D_80160174 - ((f64) D_80160174 * 0.125));
	}

	if (D_80160160 != 0) {
		temp_f2 = D_80160178;
		if ((D_80160168 == 0) && (temp_f2 == 0.0f)) {
			D_80160160 = 0;
		} else if (D_80160168 > 0) {
			temp_f0 = D_80160170;
			if (temp_f0 == temp_f2) {
				D_80160168 -= 1;
			} else {
				temp_f0 -= temp_f2;
				if ((f64) temp_f0 < ((f64) D_80160170 / 10.0)) {
					D_80160178 = D_80160170;
				} else {
					D_80160178 += temp_f0 / (f32) D_80160164;
				}
			}
		} else if ((f64) temp_f2 < ((f64) D_80160170 / 10.0)) {
			D_80160178 = 0.0f;
		} else {
			D_80160178 -= temp_f2 / (f32) D_80160166;
		}
	}

	temp_f0 = D_80160178 + D_80160174;
	if (temp_f0 == 0.0f) {
		D_8016016C = 0.0f;
	} else {
		if (D_8016016C > 0.0f) {
			D_8016016C = -temp_f0;
		} else {
			D_8016016C = temp_f0;
		}
		func_80001144_1D44((u8)(temp_f0 * 50.0f), 0x14, 0xA);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80135F0C_144EBC.s")
#endif

void func_80136198_145148(s32 arg0) {
	D_8016017C = arg0;
}

s16 func_801361A4_145154(Unk80160080 *arg0)
{
	s16 ret;
  if (D_8016017C && (D_80160180 == 0))
  {
	  D_80160184 = D_80052B34->unkE + 0x8000;
  }
  
  if (D_8016017C)
  {
	arg0->unk5E = D_80160184;
	ret = D_80160184;
  } else {
	  ret = D_80052B34->unkE;
  }
  return ret;
}

#ifdef NON_MATCHING
// CURRENT(1849)
void func_80136214_1451C4(Unk80160080 *arg0) {
	s16 sp66;
	s16 sp62;
	Vec3f sp54;
	Vec3f sp48;
	s32 sp44;
	s32 sp40;
	s32 sp3C;
	Vec3f *sp30;
	s16 temp_s1;
	s32 var_v0;

	temp_s1 = 0x4000 - arg0->unk5E;
	sp66 = 0x4000 - D_80160146;
	if (temp_s1 != sp66) {
		sp44 = (s32) arg0->unk30;
		sp40 = (s32) arg0->unk34;
		sp3C = (s32) arg0->unk38;
		sp30 = (Vec3f *) &arg0->unkC;
		func_80133C9C_142C4C(&sp54, sp30, &sp48, sp66, arg0->unk4A, arg0->unk4C, arg0->unk4E);
		if (func_80126268_135218((s16) sp54.x, (s16) sp54.y, (s16) sp54.z, &sp44, &sp40, &sp3C, 0, 4) == 3) {
			if (func_80132730_1416E0(sp66, temp_s1) < 0) {
				if ((temp_s1 < 0) && ((temp_s1 % 16384) != 0)) {
					sp62 = (temp_s1 / 16384) << 0xE;
				} else {
					sp62 = ((temp_s1 / 16384) << 0xE) + 0x4000;
				}
				if (func_80132730_1416E0(sp66, sp62) < 0) {
					var_v0 = 1;
				} else {
					var_v0 = 0;
				}
			} else {
				if ((temp_s1 <= 0) || !(temp_s1 & 0x3FFF)) {
					sp62 = ((temp_s1 / 16384) << 0xE) - 0x4000;
				} else {
					sp62 = (temp_s1 / 16384) << 0xE;
				}
				if (func_80132730_1416E0(sp66, sp62) > 0) {
					var_v0 = 1;
				} else {
					var_v0 = 0;
				}
			}

			if (var_v0 != 0) {
				sp44 = (s32) arg0->unk30;
				sp40 = (s32) arg0->unk34;
				sp3C = (s32) arg0->unk38;
				func_80133C9C_142C4C(&sp54, sp30, &sp48, sp62, arg0->unk4A, arg0->unk4C, arg0->unk4E);
				if (func_80126268_135218((s16) sp54.x, (s16) sp54.y, (s16) sp54.z, &sp44, &sp40, &sp3C, 0, 4) == 3) {
					D_80160146 = arg0->unk5E;
					return;
				}
				D_80160146 = 0x4000 - sp62;
				if (arg0->unk68 == 0) {
					arg0->unk68 = 1;
					D_8016015F = 0;
					arg0->unk64 = 0x64;
					*(s16 *)arg0->pad66 = 0x64;
				}
			} else {
				D_80160146 = arg0->unk5E;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80136214_1451C4.s")
#endif

void func_80136570_145520(void) {
	D_80034488 = 1;
	D_80034464 = D_80034460;
	D_8003446C = D_80034468;
	D_80034474 = D_80034470;
	D_8006C554 = D_8006C550;
	D_80034460 = &D_80258390;
	D_8006C550 = &D_80258F90;
}

// displaySignposts
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_801365E0_145590.s")

// https://decomp.me/scratch/NQ4OJ
// Check if player is reading signpost
#ifdef NON_MATCHING
void func_80136B50_145B00(s32 arg0, s16 arg1)
{
	s16 sp32;
	s16 sp30;
	s16 sp28;
	void *sp1C;
	s16 temp_v0;
	s32 temp_t6;
	temp_v0 = (*((s16 *) (((u8 *) (&D_8015FAEE)) + (arg1 * 0x30)))) - 0x2000;
	sp1C = ((u8 *) (&D_80258330)) + (temp_v0 * 3);
	sp32 = (((s8) ((u8 *) sp1C)[0]) << 8) + 0x80;
	sp30 = (((s8) ((u8 *) sp1C)[1]) << 8) + 0x80;
	sp28 = temp_v0;
	if (!isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A))
	{
		return;
	}
	if (D_80052B34->unk1A != 0)
	{
		return;
	}
	temp_t6 = ((u32) (((u8 *) sp1C)[2] << 29)) >> 30;
	switch (temp_t6)
	{
		case 0:
		  if (sp30 < D_80052B34->unk4 &&
			  (D_80052B34->unk0 >= (sp32 - 0x13)) &&
			  ((sp32 - -0x13) >= D_80052B34->unk0) &&
			  (D_80052B34->unkE >= (-0x6000)) &&
			  (D_80052B34->unkE < (-0x1FFF))) { }
		  break;
		
		case 1:
		  if (sp32 < D_80052B34->unk0 &&
			  (D_80052B34->unk4 >= (sp30 - 0x13)) &&
			  ((sp30 + 0x13) >= D_80052B34->unk4) &&
			  (D_80052B34->unkE >= (-0x5FFF)) &&
			  (D_80052B34->unkE >= 0x6000)) { }
		  break;
		
		case 2:
		  if (D_80052B34->unk4 < sp30 &&
			  (D_80052B34->unk0 >= (sp32 - 0x13)) &&
			  ((sp32 + 0x13) >= D_80052B34->unk0) &&
			  (D_80052B34->unkE < 0x6001) &&
			  (D_80052B34->unkE >= 0x2000))
		  { }
		  break;
		
		case 3:
		  if (D_80052B34->unk0 < sp32 &&
			  (D_80052B34->unk4 >= (sp30 - 0x13)) &&
			  ((sp30 + 0x13) >= D_80052B34->unk4) &&
			  D_80052B34->unkE >= 0)
		  { }
		  break;
		  default:
			if ((D_80052B34->unk4 == 1) && (1 == D_80052B34->unk4)) { }
		  break;
	}
	
	if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A) &&
		D_80052B34->unk1A == 0 &&
		func_800A3CD0_B2C80() != 0)
	{
		func_80136570_145520();
		func_80018D7C_1997C((u16) sp28);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80136B50_145B00.s")
#endif
