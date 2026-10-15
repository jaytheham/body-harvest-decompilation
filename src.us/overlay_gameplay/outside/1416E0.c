#include <ultra64.h>
#include "common.h"
#include "version_shift.h"

const char D_80145650_154600[] = "-------- GAME CAMERA INITIALISED --------\n";
const f32 D_8014567C_15462C[1] = {0.1f};
const CameraFadeScale D_80145680_154630 = {500.0};
const CameraFadeScale D_80145688_154638 = {500.0};
const f32 D_80145690_154640[1] = {0.05f};
const f32 D_80145694_154644[1] = {0.1f};
const f32 D_80145698_154648[1] = {0.1f};
const f32 D_8014569C_15464C[1] = {0.1f};
const f64 D_801456A0_154650[1] = {91.02222222222223};
const f32 D_801456A8_154658[1] = {30719.0f};
const CameraFadeScale D_801456B0_154660 = {0.7};
const CameraFadeScale D_801456B8_154668 = {0.02};
const CameraFadeScale D_801456C0_154670 = {0.02};
const CameraFadeScale D_801456C8_154678 = {0.02};
const CameraFadeScale D_801456D0_154680 = {0.7};
const f32 D_801456D8_154688[1] = {0.1f};
const f32 D_801456DC_15468C[1] = {0.1f};
const f32 D_801456E0_154690[1] = {0.1f};
const f32 D_801456E4_154694[1] = {0.1f};
const CameraFadeScale D_801456E8_154698 = {500.0};
const CameraFadeScale D_801456F0_1546A0 = {500.0};
const f32 D_801456F8_1546A8[1] = {50000.0f};

s16 D_8013E410_14D3C0[] = {
	0x001E, 0x0000, 0x0000, 0x0000,
	0x0000, 0x0000, 0x012C, 0x0000,
	0x0064, 0x0000, 0x0400, 0x0000,
	0x0190, 0x0000, 0x0DAC, 0x0000,
};

// AI - Angle difference utility
s16 func_80132730_1416E0(s32 arg0, s32 arg1) { return (s16)(arg1 - arg0); }

// AI - Camera initialization
void func_80132740_1416F0(Unk80160080 *arg0) {
	VehicleInstance *sp1C;
	 f32 zero;

	zero = 0.0f;
	sp1C = D_80052B34;
	osSyncPrintf(&D_80145650_154600, arg0);
	arg0->unkC = zero;
	arg0->unk10 = zero;
	arg0->unk14 = zero;
	arg0->unk48 = 0;
	arg0->unk50 = 0;
	arg0->unk4A = 0x71C;
	arg0->unk52 = 0x71C;
	arg0->unk4C = 0;
	arg0->unk54 = 0;
	arg0->unk4E = 0x12C;
	arg0->unk56 = 0x12C;
	arg0->unk0 = zero;
	arg0->unk4 = zero;
	arg0->unk8 = zero;
	arg0->unk18 = zero;
	arg0->unk20 = zero;
	arg0->unk1C = 1.0f;
	arg0->desiredLookAt = arg0->lookAt;
	arg0->unk5E = (s16) D_80052B34->unkE;
	{
		f32 lodColor;
		if (zero) {} 
		lodColor = D_8014567C_15462C[0];
		arg0->unk64 = 0x64;
		arg0->unk68 = 0;
		D_8016011C = 1.0f;
		D_80160120 = 1.0f;
		D_80160124 = 1.0f;
		D_80160128 = 1.0f;
		D_8016012C = lodColor;
		D_80160130 = lodColor;
		D_80160134.value = lodColor;
		D_80160138.value = lodColor;
	}
	arg0->unk6C = 1;
	arg0->unk30 = (f32) sp1C->unk0;
	{
		s16 temp_v0 = vehicleTypes[D_80052B34->unk1A].unk38;
		arg0->unk34 = (f32) (temp_v0 - (temp_v0 >> 2)) + (f32) sp1C->unk2;
	}
	arg0->unk38 = (f32) sp1C->unk4;
	D_801600F8 = arg0->vehiclePosition;
	D_80160104 = 0;
	D_8016014C = 0;
	D_80160154 = 0;
	D_80160144 = 0;
	arg0->unk3C = zero;
	arg0->unk40 = zero;
	arg0->unk44 = zero;
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



// AI - Main camera update
void func_80132980_141930(Unk80160080 *arg0, Unk80052B2C *arg1) {
	f32 sp3C;
	f32 sp38;
	f32 sp34;
	f32 sp30;
	u8 vehicleType;

	D_80149404 = 0x2D;
	if ((gameplayMode != 2) && (gameplayMode != 9) && (gameplayMode != 0xA)) {
		if ((D_80160158 != 0) && (D_8016015E == 0)) {
			D_8016015E = 1;
			if (arg0->unk6C == 1) {
				func_80014208_14E08(D_8016015C, (s16)((1.0 - D_80160128) * D_80145680_154630.value), 0x40);
			} else if (arg0->unk6C == 2) {
				func_80014208_14E08(D_8016015C, (s16)(D_80160128 * D_80145688_154638.value), 0x40);
			}
		}

		if ((D_80157F96 != 0) && (D_80157590 != 3)) {
			D_80157F96 = 0;
			sp38 = (f32)D_80157586 - (f32)D_80157580;
			sp34 = (f32)D_80157588 - (f32)D_80157582;
			sp30 = (f32)D_8015758A - (f32)D_80157584;
			sp3C = sqrtf((sp38 * sp38) + (sp30 * sp30));
			arg0->unk48 = func_80003824_4424(sp30, sp38);
			arg0->unk4A = func_80003824_4424(sp3C, -sp34);
			sp38 = sqrtf((sp3C * sp3C) + (sp34 * sp34));
			sp3C = D_80145690_154640[0];
			arg0->unk4E = (s16)sp38;
			arg0->unk4E = (s16)(arg0->unk4E * 4.0);
			arg0->unkC = (f32)((f32)D_80157586 * 4.0);
			arg0->unk10 = (f32)((f32)D_80157588 * 4.0);
			arg0->unk14 = (f32)((f32)D_8015758A * 4.0);
			D_80160120 = 0.0f;
			D_80160130 = sp3C;
			D_80160124 = 0.0f;
			D_80160134.value = sp3C;
			D_80160128 = 0.0f;
			D_80160138.value = sp3C;
			D_8016011C = 0.0f;
			D_8016012C = sp3C;
		}

		vehicleType = D_80052B34->unk1A;
		if (((vehicleType == 0) && (D_80160104 != 0)) || ((vehicleType != 0) && (D_80160104 == 0))) {
			if (vehicleType == 0) {
				if (arg0->unk6C == 1) {
					arg0->unk56 = 0x12C;
				} else if (arg0->unk6C == 2) {
					arg0->unk56 = 0x4E2;
				} else if (arg0->unk6C == 0) {
					arg0->unk56 = 0x96;
				}
				arg0->unk5E = D_80052B34->unkE;
				D_80160146 = D_80052B34->unkE;
			} else {
				if (arg0->unk6C == 1) {
					arg0->unk56 = (s16)(vehicleTypes[vehicleType].unk5C * 0x10);
				} else {
					arg0->unk56 = (s16)(vehicleTypes[vehicleType].unk5D * 0x10);
				}
				arg0->unk60 = D_80052B34->unk6;
			}
			sp3C = D_80145694_154644[0];
			D_8016011C = 0.0f;
			D_80160120 = 0.0f;
			D_80160124 = 0.0f;
			D_80160128 = 0.0f;
			D_8016012C = sp3C;
			D_80160130 = sp3C;
			D_80160134.value = sp3C;
			D_80160138.value = sp3C;
			D_80160148 = 0;
			D_8016014A = 0;
			vehicleType = D_80052B34->unk1A;
		}

		if (vehicleType == 0) {
			func_80133288_142238(arg0);
		} else {
			func_80133934_1428E4(arg0);
		}
		func_80134D44_143CF4(arg0);
	} else if (D_80160158 != 0) {
		func_80015860_16460(D_8016015C);
		D_8016015E = 0;
	}

	func_80135F0C_144EBC();
	D_80149404 = (s16)((f32)D_80149404 + D_8016016C);
	func_80133C9C_142C4C(&arg0->position, &arg0->lookAt, &arg0->up, arg0->unk48, arg0->unk4A, arg0->unk4C,
					arg0->unk4E);
	func_8013493C_1438EC(arg0, arg1);
	func_80134CCC_143C7C(arg0, arg1);

	if (D_80157590 == 0) {
		D_80160194 = (f32)((f64)arg0->unk0 * 0.25);
		D_80160198 = (f32)((f64)arg0->unk4 * 0.25);
		D_8016019C = (f32)((f64)arg0->unk8 * 0.25);
		D_801601A0 = (f32)((f64)arg0->unkC * 0.25);
		D_801601A4 = (f32)((f64)arg0->unk10 * 0.25);
		D_801601A8 = (f32)((f64)arg0->unk14 * 0.25);
		D_80153BAC = (s16)D_801601A0;
		D_80153BAE = (s16)D_801601A4;
		D_80153BB0 = (s16)D_801601A8;
		func_800C1268_D0218(D_80160194, D_80160198, D_8016019C);
		D_80047964 = func_80003824_4424(D_801601A8 - D_8016019C, D_801601A0 - D_80160194);
		D_80047960 = D_801601A4;
		D_8004794E = -arg0->unk4A;
		if ((D_80160198 * 4.0f) < (f32)D_80222A70) {
			D_801493CC = 1;
		} else {
			D_801493CC = 0;
		}
	}

	D_8016014C = currentControllerStates[0].button & 0x2000;
	D_801600F0 = D_801493D0;
	D_801600F8 = arg0->vehiclePosition;
	D_80160104 = (s16)D_80052B34->unk1A;
	D_80160154 = D_801591BC;
	D_80160180 = D_8016017C;
}
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
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB20 + 0x180), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB20 + 0x200), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
}

// AI - Reset camera to default state
void func_80133260_142210(Unk80160080 *arg0) {
	D_801493D0 = 0;
	D_801600F0 = 0;
	arg0->unk6C = 0;
	arg0->unk52 = 0x71C;
	arg0->unk56 = 0x96;
}

// AI - On-foot camera update
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

// Matched: on-foot orbit and recenter camera
// AI - On-foot camera orbit/recenter
void func_801333D0_142380(Unk80160080 *arg0) {
	Vec3f sp3C;
	s32 temp_v0;
	VehicleInstance *vehicle;
	f32 temp_f20;

	vehicle = D_80052B34;
	if (D_801600F0 == 0) {
		if (D_80145698_154648[0]) {} /* Three eliminated reads retain IDO's constant and zero registers. */
		if (D_80145698_154648[0]) {}
		if (D_80145698_154648[0]) {}


		D_8016011C = 0.0f;
		D_80160120 = 0.0f;
		D_80160124 = 0.0f;
		D_80160128 = 0.0f;
		D_8016012C = D_80145698_154648[0];
		D_80160130 = D_80145698_154648[0];
		D_80160134.value = D_80145698_154648[0];
		D_80160138.value = D_80145698_154648[0];
		arg0->unk58 = D_80052B34->unkE;
	}

	if (currentControllerStates[0].button & 4) {
		D_80160190 = 1;
		D_80140CF8_Reset = 0;
	}

	if (D_80160190 == 1) {
		temp_v0 = func_80132730_1416E0(D_80052B34->unkE, arg0->unk58);
		temp_v0 = (s16)temp_v0;
		if (temp_v0 < 0) {
			arg0->unk58 = (s16)(arg0->unk58 - (temp_v0 / 8));
		} else {
			arg0->unk58 = (s16)(arg0->unk58 + (temp_v0 / 8));
		}

		if (((-temp_v0 < temp_v0) ? temp_v0 : -temp_v0) >= 1001) {
			D_80140CF8_Set = 1;
		}

		if ((((-temp_v0 < temp_v0) ? temp_v0 : -temp_v0) < 200) && (D_80140CF8_14FCA8 == 1)) {
			arg0->unk58 = D_80052B34->unkE;
			D_80160190 = 0;
			D_80140CF8_Reset = 0;
		}
	}

	if (D_80157570 != 0) {
		if (D_801575CC == 0) {
			temp_v0 = func_80132730_1416E0(D_80052B34->unkE, arg0->unk58);
			temp_v0 = (s16)temp_v0;
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
	temp_f20 = 30.0f;
	sp3C.x = (f32)(vehicle->unk0 - (((f32)coss((u16)arg0->unk58) / 32768.0) * temp_f20));
	sp3C.y = (f32)(vehicle->unk2 + 0x4B);
	sp3C.z = (f32)(vehicle->unk4 - (((f32)sins((u16)arg0->unk58) / 32768.0) * temp_f20));
	func_801336CC_14267C(arg0, &sp3C);
}


// AI - Compute camera position from target
void func_801336CC_14267C(Unk80160080 *arg0, Vec3f *arg1) {
	f32 sp20;
	f32 temp_f0;
	f32 temp_f12;
	f32 temp_f2;
	f32 sp44;
	f32 temp_f14;
	f32 temp_f16;
	s16 temp_s0;
	s32 temp_a0;
	s32 temp_v0;
	s32 var_v1;

	temp_f14 = (f32) D_80159020->unk0;
	temp_f16 = (f32) D_80159020->unk2;
	sp20 = (f32) D_80159020->unk4;
	temp_f0 = temp_f14 - arg1->x;
	sp44 = temp_f16 - arg1->y;
	temp_f2 = sp20 - arg1->z;
	temp_f12 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
	if ((D_801600F0 == 0) || ((var_v1 = D_80140CFC_14FCAC) != 0)) {
		temp_v0 = func_80003824_4424(temp_f12, sp44);
		var_v1 = D_80140CFC_14FCAC;
		arg0->unk5C = -temp_v0;
		arg0->unk5A = D_80159318;
		if (var_v1 != 0) {
			D_80140CFC_Decrement = (u16)var_v1 - 1; /* Preserve IDO temporary allocation for the halfword store. */
		} else {
			var_v1 = var_v1 * 0 + 1; /* Fold the reset after the counter register is assigned. */
			D_80140CFC_Reset = var_v1;
		}
	}
	temp_v0 = func_80132730_1416E0(D_80159318, arg0->unk5A);
	if (temp_v0 < -0xE38) {
		temp_a0 = -0xE38 - temp_v0;
		if (temp_a0 >= 0x16D) {
			var_v1 = 0x16C;
		} else {
			var_v1 = temp_a0;
		}
		arg0->unk5A += var_v1;
		arg0->unk5C -= var_v1;
	}
	if (temp_v0 >= 0xE39) {
		temp_a0 = temp_v0 - 0xE38;
		if (temp_a0 >= 0x16D) {
			var_v1 = 0x16C;
		} else {
			var_v1 = temp_a0;
		}
		arg0->unk5A -= var_v1;
		arg0->unk5C += var_v1;
	}
	temp_s0 = arg0->unk58;
	arg0->unk54 = 0;
	arg0->unk50 = 0x4000 - temp_s0;
	arg0->unk52 = arg0->unk5C;
	sp20 = 100.0f;
	arg0->unk24 = (f32) ((((f32) coss((u16) temp_s0) / 32768.0) * sp20) + arg1->x);
	arg0->unk28 = (f32) ((((f32) sins((u16) -arg0->unk5C) / 32768.0) * sp20) + arg1->y);
	arg0->unk2C = (f32) ((((f32) sins((u16) arg0->unk58) / 32768.0) * sp20) + arg1->z);
}

// AI - Vehicle camera update
void func_80133934_1428E4(Unk80160080 *arg0) {
	if (D_801493D0 != 0) {
		func_80133A54_142A04(arg0);
		return;
	}
	if (D_801600F0 != 0) {
		if (arg0->unk6C == 1) {
			arg0->unk52 = 0x71C;
			arg0->unk56 = (s16)(vehicleTypes[D_80052B34->unk1A].unk5C * 0x10);
		} else {
			arg0->unk52 = 0x1555;
			arg0->unk56 = (s16)(vehicleTypes[D_80052B34->unk1A].unk5D * 0x10);
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

// CURRENT(5): only generated interpolation constant address differs
// AI - Vehicle camera orbit/recenter
#ifdef NON_MATCHING
void func_80133A54_142A04(Unk80160080 *arg0) {
	Vec3f sp44;
	f32 sp40;
	s32 temp_v0;
	s32 step;
	VehicleInstance *vehicle;

	vehicle = D_80052B34;

	if (D_801600F0 == 0) {
		D_8016011C = 0.0f;
		D_80160120 = 0.0f;
		D_80160124 = 0.0f;
		D_80160128 = 0.0f;
		D_8016012C = 0.1f;
		D_80160130 = 0.1f;
		D_80160134.value = 0.1f;
		D_80160138.value = 0.1f;
		arg0->unk58 = D_80052B34->unk6;
	}

	temp_v0 = func_80132730_1416E0(D_80052B34->unk6 - D_80052B2C->unk36, arg0->unk58);
	if (temp_v0 >= 0xE39) {
		step = ((temp_v0 - 0xE38 < D_8015929C) ? temp_v0 - 0xE38 : D_8015929C);
		arg0->unk58 -= step;
	}
	if (temp_v0 < -0xE38) {
		step = ((-0xE38 - temp_v0 < D_8015929C) ? -0xE38 - temp_v0 : D_8015929C);
		arg0->unk58 += step;
	}

	arg0->unk56 = 0x73;
	sp40 = (f32)(vehicleTypes[D_80052B34->unk1A].unkC * 2);
	sp44.x = (f32)(vehicle->unk0 - (((f32)coss(arg0->unk58) / 32768.0) * sp40));
	sp44.y = (f32)(vehicleTypes[D_80052B34->unk1A].unk38 + vehicle->unk2 + 0x32);
	sp44.z = (f32)(vehicle->unk4 - (((f32)sins((u16)arg0->unk58) / 32768.0) * sp40));

	func_801336CC_14267C(arg0, &sp44);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80133A54_142A04.s")
#endif


// AI - Apply yaw/pitch rotation to look-at vector
void func_80133C9C_142C4C(Vec3f *arg0, Vec3f *arg1, void *arg2, s16 arg3, u32 arg4, s32 arg5, s16 arg6) {
	Vec3f sp44;
	f32 sp40;
	f32 temp_f0;
	f32 sp38;
	f32 sp34;
	s32 sp28;
	s32 var_v0;

	sp38 = (f32)((f32)sins(arg3) / 32768.0);
	sp34 = (f32)((f32)coss(arg3) / 32768.0);
		sp40 = (f32)((f32)sins(arg4) / 32768.0);
		temp_f0 = (f32)((f32)coss(arg4) / 32768.0);

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

// AI - Set camera height offset with minimum clamp
void func_80133E94_142E44(s32 arg0) {
	if (arg0 >= 0x24) {
		D_80160188 = arg0;
		return;
	}
	D_80160188 = 0x24;
}

// AI - Update camera target to vehicle position
void func_80133EBC_142E6C(Unk80160080 *arg0) {
	VehicleInstance *veh = D_80052B34;
	arg0->unk30 = (f32) veh->unk0;
	arg0->unk34 = (f32) veh->unk2 + (f32) D_80160188;
	arg0->unk38 = (f32) veh->unk4;
	*(Vec3f*)&arg0->unk24 = *(Vec3f*)&arg0->unk30;
}

// Matched: camera yaw rotation control
// AI - Camera yaw rotation control
void func_80133F28_142ED8(Unk80160080 *arg0) {
	s32 pad24; /* Retain the target frame; the saved heading stays at sp+0x1E. */
	s32 pad20;
	s16 sp1E;
	s16 temp_a0;
	s16 temp_a1;
	s16 temp_v1;
	s32 temp_a3;
	s32 temp_v0;
	s32 temp_v0_2;
	s32 var_a0;

	sp1E = func_801361A4_145154(arg0);
	temp_v0 = func_80132730_1416E0(sp1E, arg0->unk5E);
	if (arg0->unk68 == 0) {
		if ((currentControllerStates[0].button & 0x2000) && !(D_80157A28 & PLAYER_STATE_FLAG_SWIMMING)) {
			if (D_8016014C == 0) {
				D_80160146 = sp1E;
				arg0->unk68 = 1;
				D_8016015F = 0;
				arg0->unk64 = 0x320;
				arg0->unk66 = 0x1F4;
				arg0->unk62 = 0xBB8;
			} else {
				temp_v0_2 = func_80132730_1416E0(sp1E, arg0->unk5E);
				if (temp_v0_2 >= 0) {
					var_a0 = temp_v0_2;
				} else {
					var_a0 = -temp_v0_2;
				}
				if (var_a0 < 0xB7) {
					arg0->unk5E = sp1E;
				} else {
					arg0->unk5E = (s16)((f64)arg0->unk5E - ((f64)temp_v0_2 * 0.25));
				}
			}
		} else {
			if (temp_v0 >= 0) {
				var_a0 = temp_v0;
			} else {
				var_a0 = -temp_v0;
			}
			if ((((s32)D_8013E410_14D3C0[0] << 16) / 360) < var_a0) {
				if (currentControllerStates[0].stick_y >= 0) {
					D_80160146 = sp1E;
					arg0->unk68 = 1;
					D_8016015F = 0;
					arg0->unk64 = 0x64;
					arg0->unk66 = 0x64;
				}
			} else if ((currentControllerStates[0].stick_y == 0) && (currentControllerStates[0].stick_x == 0) &&
						 (temp_v0 != 0) && (D_80160148 == 0)) {
				D_80160146 = sp1E;
				arg0->unk68 = 1;
				D_8016015F = 0;
				arg0->unk64 = 0x64;
				arg0->unk66 = 0x64;
			} else {
				D_80160146 = arg0->unk5E;
			}
		}
	}

	func_80136214_1451C4(arg0);
	if (((arg0->unk68 != 0) && (D_8016018C == 0)) || (D_80160190 != 0)) {
		temp_v0 = func_80132730_1416E0(D_80160146, arg0->unk5E);
		if (!(currentControllerStates[0].button & 0x2000) && (D_80160190 == 0)) {
			if (temp_v0 >= 0) {
				var_a0 = temp_v0;
			} else {
				var_a0 = -temp_v0;
			}
			arg0->unk62 = (s16)(((f32)var_a0 / 32768.0f) * 1024.0f);
		} else {
			if (arg0->unk64 < 0x320) {
				arg0->unk64 = 0x320;
			}
			arg0->unk66 = 0x1F4;
			arg0->unk62 = 0xBB8;
		}

		temp_a1 = arg0->unk62;
		temp_v1 = arg0->unk64;
		temp_a3 = temp_a1 - temp_v1;
		if (temp_a3 >= 0) {
			var_a0 = temp_a3;
		} else {
			var_a0 = -temp_a3;
		}
		arg0->unk64 = (s16)(temp_v1 + (s16)(var_a0 / 2));
		temp_v1 = arg0->unk64;
		var_a0 = -temp_v0;
		if (temp_a1 < temp_v1) {
			arg0->unk64 = temp_a1;
		} else {
			arg0->unk64 = temp_v1;
		}
		temp_v1 = arg0->unk64;
		if (temp_v1 >= 0xB7) {
			arg0->unk64 = temp_v1;
		} else {
			arg0->unk64 = 0xB6;
		}
		if (temp_v0 >= 0) {
			var_a0 = temp_v0;
		} else {
			var_a0 = -temp_v0;
		}

		temp_v1 = arg0->unk64;
		if (temp_v1 >= var_a0) {
			arg0->unk5E = D_80160146;
			arg0->unk68 = 0;
			D_80160190 = 0;
			D_8016018C = 0;
		} else if (temp_v0 < 0) {
			arg0->unk5E = arg0->unk5E + temp_v1;
		} else {
			arg0->unk5E = arg0->unk5E - temp_v1;
		}

		if ((currentControllerStates[0].stick_y >= 0) || (currentControllerStates[0].button & 0x2000)) {
			D_80160146 = sp1E;
		}
	}

	if (D_80160148 != 0) {
		temp_v0_2 = func_80132730_1416E0(D_80160146, arg0->unk5E);
		arg0->unk64 = 0x64;
		if (temp_v0_2 < 0) {
			if (D_80160148 > 0) {
				arg0->unk5E = arg0->unk5E + arg0->unk64 + D_80160148;
			} else {
				arg0->unk5E = (arg0->unk5E + D_80160148) - arg0->unk64;
			}
		} else if (temp_v0_2 > 0) {
			if (D_80160148 > 0) {
				arg0->unk5E = arg0->unk5E + arg0->unk64 + D_80160148;
			} else {
				arg0->unk5E = (arg0->unk5E + D_80160148) - arg0->unk64;
			}
		} else {
			arg0->unk5E = arg0->unk5E + D_80160148;
		}
	}

	temp_a0 = arg0->unk5E;
	arg0->unk50 = 0x4000 - temp_a0;
	func_800EA298_F9248(temp_a0);
}


// Matched: camera pitch and terrain collision avoidance
// AI - Camera pitch/zoom and terrain collision avoidance
void func_801343D8_143388(Unk80160080 *arg0) {
	Vec3f sp6C;
	Vec3f sp60;
	s32 temp_s0;
	s32 temp_v0;
	s32 sp54;
	s32 sp50;
	s32 sp4C;
	s16 var_s1;
	s16 temp_v1;

	var_s1 = arg0->unk52;

	sp54 = (s32)arg0->unk30;
	sp50 = (s32)arg0->unk34;
	sp4C = (s32)arg0->unk38;
	func_80133C9C_142C4C(&sp6C, &arg0->lookAt, &sp60, arg0->unk48, var_s1, arg0->unk4C, arg0->unk4E);
	temp_v0 = func_800B84D0_C7480((s32)sp6C.x, (s32)sp6C.z);
	temp_s0 = vehicleTypes[D_80052B34->unk1A].unk38;
	temp_v0 = (temp_s0 - (temp_s0 >> 2)) + (temp_v0 >> 8);
	if (((func_80126268_135218((s32)sp6C.x, (s32)sp6C.y, (s32)sp6C.z, &sp54, &sp50, &sp4C, 0, 6) == 1) ||
		 ((sp6C.y - temp_v0) < 50.0f)) &&
		(var_s1 != 0x3C71)) {
		do {
			D_80160144 = 5;
			var_s1 += 0x71C;
			if (var_s1 >= 0x3C72) {
				var_s1 = 0x3C71;
			}

			sp54 = (s32)arg0->unk30;
			sp50 = (s32)arg0->unk34;
			sp4C = (s32)arg0->unk38;
			func_80133C9C_142C4C(&sp6C, &arg0->lookAt, &sp60, arg0->unk48, var_s1, arg0->unk4C, arg0->unk4E);
			temp_v0 = func_800B84D0_C7480((s32)sp6C.x, (s32)sp6C.z);
			temp_s0 = vehicleTypes[D_80052B34->unk1A].unk38;
			temp_v0 = (temp_s0 - (temp_s0 >> 2)) + (temp_v0 >> 8);
		} while (((func_80126268_135218((s32)sp6C.x, (s32)sp6C.y, (s32)sp6C.z, &sp54, &sp50, &sp4C, 0, 6) == 1) ||
			((sp6C.y - temp_v0) < 50.0f)) && (var_s1 != 0x3C71));
	}

	if (D_80160144 != 0) {
		D_80160144 -= 1;
	} else {
		var_s1 = arg0->unk52;
		if ((arg0->unk6C == 1) || (arg0->unk6C == 0)) {
			temp_v0 = var_s1 - 0x71C;
			if (temp_v0 >= 0x71D) {
				var_s1 = temp_v0;
			} else {
				var_s1 = 0x71C;
			}
		} else {
			temp_v0 = var_s1 - 0x71C;
			var_s1 = temp_v0 >= 0x1556 ? temp_v0 : 0x1555;
		}

		func_80133C9C_142C4C(&sp6C, &arg0->lookAt, &sp60, arg0->unk48, var_s1, arg0->unk4C, arg0->unk4E);
		sp54 = (s32)arg0->unk30;
		sp50 = (s32)arg0->unk34;
		sp4C = (s32)arg0->unk38;
		temp_v0 = func_800B84D0_C7480((s32)sp6C.x, (s32)sp6C.z);
		temp_s0 = vehicleTypes[D_80052B34->unk1A].unk38;
		temp_v0 = (temp_s0 - (temp_s0 >> 2)) + (temp_v0 >> 8);
		if ((func_80126268_135218((s32)sp6C.x, (s32)sp6C.y, (s32)sp6C.z, &sp54, &sp50, &sp4C, 0, 6) == 1) ||
			((sp6C.y - temp_v0) < 50.0f)) {
			D_80160144 = 5;
			var_s1 = arg0->unk52;
		}
	}

	temp_v1 = arg0->unk52;
	temp_v0 = var_s1 - temp_v1;
	temp_s0 = -temp_v0;
	if (temp_v0 >= 0) {
		temp_s0 = temp_v0;
	} else {
		temp_s0 = -temp_v0;
	}
	if (temp_s0 <= D_801456A0_154650[0]) {
		arg0->unk52 = var_s1;
	} else {
		arg0->unk52 = temp_v1 + (u16)(s32)(temp_v0 / 12.0);
	}
}


// CURRENT(2820)
#ifdef NON_MATCHING
// AI - Clipping/frustum setup for visible region culling
void func_8013493C_1438EC(Unk80160080 *arg0, Unk80052B2C *arg1) {
	s16 var_s0;
	s16 var_s1;
	s16 temp_s3;
	f32 var_f2;
	f32 var_f0;
	f32 temp_f2_2;
	f32 temp_f12;
	s16 temp_v0;
	s16 temp_t1;
	s32 temp_t3;
	s32 temp_t6;
	s16 *temp_a0;
	s32 *temp_a1;
	s32 *temp_a3;
	s32 *temp_a2;
	s32 *temp_t0;

	temp_v0 = func_80003824_4424(arg0->unk14 - arg0->unk8, arg0->unkC - arg0->unk0);
	temp_a0 = &D_80047950;
	*temp_a0 = temp_v0;
	var_s0 = (s16) ((s16) arg1->unk3C >> 8);
	var_s1 = (s16) ((s16) arg1->unk3E >> 8);
	var_f2 = (f32) ((((f32) sins(temp_v0) / 32768.0) * D_801493A8) + arg0->unkC + 256.0);
	var_f0 = (f32) ((((f32) coss(D_80047950) / 32768.0) * D_801493A8) + arg0->unk14 + 256.0);
	temp_f2_2 = var_f2;
	temp_f12 = D_801456A8_154658[0];
	if (temp_f12 < temp_f2_2) {
		temp_f2_2 = temp_f12;
	}
	if (temp_f2_2 < -30208.0f) {
		temp_f2_2 = -30208.0f;
	}
	if (temp_f12 < var_f0) {
		var_f0 = temp_f12;
	}
	if (var_f0 < -30208.0f) {
		var_f0 = -30208.0f;
	}
	arg1->unk3C = (s16) (s32) temp_f2_2;
	arg1->unk3E = (s16) (s32) var_f0;
	temp_t1 = (s16) ((s16) arg1->unk3C >> 8);
	temp_s3 = (s16) ((s16) arg1->unk3E >> 8);
	if (var_s0 < temp_t1) {
		do {
			func_800B42B0_C3260(0);
			var_s0 += 1;
		} while (var_s0 < temp_t1);
	}
	if (temp_t1 < var_s0) {
		do {
			func_800B4660_C3610(0);
			var_s0 -= 1;
		} while (temp_t1 < var_s0);
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
	D_80031404 = (f32) ((f32) sins(((s16) D_80047950 + 0x4000) & 0xFFFF) / 32768.0);
	D_8003140C = (f32) ((f32) coss(((s16) D_80047950 + 0x4000) & 0xFFFF) / 32768.0);
	temp_a1 = &D_801493C0;
	temp_a3 = &D_801493BC;
	temp_a2 = &D_801493C8;
	temp_t0 = &D_801493C4;
	temp_t3 = (s32) (arg1->unk3C - 0x780) >> 8;
	*temp_a1 = temp_t3;
	*temp_a3 = temp_t3 + 0x10;
	temp_t6 = (s32) (arg1->unk3E - 0x780) >> 8;
	*temp_a2 = temp_t6;
	*temp_t0 = temp_t6 + 0x10;
	D_801493B0 = *temp_a1 << 8;
	D_801493B8 = *temp_a2 << 8;
	D_801493AC = *temp_a3 << 8;
	D_801493B4 = *temp_t0 << 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_8013493C_1438EC.s")
#endif

// AI - Copy camera state to shared structure
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

// CURRENT(485)
// AI - Smooth camera position/angle interpolation
#ifdef NON_MATCHING
void func_80134D44_143CF4(Unk80160080 *arg0) {
	f64 temp_f2;
	f64 temp_f12;
	f64 temp_f14;
	f64 var_f16;
	s32 var_v0;
	s32 var_v1;

	if (D_8016011C == 0.0f) {
		D_80160108 = arg0->lookAt;
	}
	if (D_80160120 == 0.0f) {
		D_80160114 = arg0->unk48;
	}
	if (D_80160124 == 0.0f) {
		D_80160118 = arg0->unk4A;
	}
	if (D_80160128 == 0.0f) {
		D_8016011A = arg0->unk4E;
	}

	if (D_8016011C < 1.0) {
		arg0->unkC = ((arg0->unk24 - D_80160108.x) * D_8016011C) + D_80160108.x;
		arg0->unk10 = ((arg0->unk28 - D_80160108.y) * D_8016011C) + D_80160108.y;
		arg0->unk14 = ((arg0->unk2C - D_80160108.z) * D_8016011C) + D_80160108.z;
		D_8016011C += D_8016012C;
	} else {
		arg0->lookAt = arg0->desiredLookAt;
		D_8016011C = 1.0f;
	}
	if (D_80160120 < 1.0) {
		var_v0 = D_80160114;
		var_v1 = arg0->unk50 - var_v0;
		if (var_v1 >= 0x8001) {
			D_80160114 = var_v0 + 0x10000;
			var_v0 = D_80160114;
			var_v1 = arg0->unk50 - var_v0;
		} else if (var_v1 < -0x8000) {
			D_80160114 = var_v0 + 0xFFFF0000;
			var_v0 = D_80160114;
			var_v1 = arg0->unk50 - var_v0;
		}
		arg0->unk48 = (s32)(var_v0 + (D_80160120 * var_v1));
		D_80160120 += D_80160130;
	} else {
		arg0->unk48 = arg0->unk50;
		D_80160120 = 1.0f;
	}

	if (D_80160124 < 1.0) {
		arg0->unk4A = (s32)(D_80160118 + (D_80160124 * (arg0->unk52 - D_80160118)));
		if (D_80160140 != 0) {
			temp_f2 = D_80160124;
			if (D_801456B0_154660.value < temp_f2) {
				temp_f12 = (1.0 - temp_f2) * 0.25;
				if (temp_f12 < (f64)D_80160134.value) {
					D_80160134.reload = temp_f12;
				} else {
					D_80160134.reload = (f64)D_80160134.value;
				}
				temp_f14 = D_80160134.value;
				var_f16 = D_801456B8_154668.value;
				if (temp_f14 < var_f16) {
					D_80160134.value = var_f16;
				} else {
					D_80160134.value = temp_f14;
				}
			}
		}
		var_f16 = D_801456C0_154670.value;
		D_80160124 += D_80160134.value;
	} else {
		arg0->unk4A = arg0->unk52;
		D_80160124 = 1.0f;
		D_80160140 = 0;
		var_f16 = D_801456C8_154678.value;
	}

	if (D_80160128 < 1.0) {
		arg0->unk4E = (s32)(D_8016011A + (D_80160128 * (arg0->unk56 - D_8016011A)));
		if (D_8016013C != 0) {
			temp_f2 = D_80160128;
			if (D_801456D0_154680.value < temp_f2) {
				temp_f12 = (1.0 - temp_f2) * 0.25;
				temp_f14 = D_80160138.value;
				if (temp_f12 < temp_f14) {
					D_80160138.reload = temp_f12;
				} else {
					D_80160138.reload = temp_f14;
				}
				temp_f14 = D_80160138.value;
				if (temp_f14 < var_f16) {
					D_80160138.value = var_f16;
				} else {
					D_80160138.reload = temp_f14;
				}
			}
		}
		D_80160128 += D_80160138.value;
	} else {
		arg0->unk4E = arg0->unk56;
		D_80160128 = 1.0f;
		D_8016013C = 0;
	}

	arg0->unk4C = arg0->unk54;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80134D44_143CF4.s")
#endif

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
  if (((zButtonState != 0) || (currentControllerStates[CONTROLLER_ONE].button & BUTTON_C_DOWN)) && (!(D_80157A28 & PLAYER_STATE_FLAG_SWIMMING)))
  {
	D_80160190 = 1;
  }
}

// AI - Decay camera offset values toward zero
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

// AI - Vehicle camera target update
void func_801354C0_144470(Unk80160080 *arg0) {
	f32 var_f2;
	VehicleInstance *v1 = D_80052B34;

	arg0->unk30 = (f32)v1->unk0;
	arg0->unk34 = (f32)(vehicleTypes[D_80052B34->unk1A].unk38 - (vehicleTypes[D_80052B34->unk1A].unk38 >> 2)) + (f32)v1->unk2;
	arg0->unk38 = (f32)v1->unk4;
	var_f2 = (f32)((arg0->unk6C == 2) ? 400.0 : 100.0);
	arg0->unk24 = (f32)(((f64)(f32)coss((u16)v1->unk6) / 32768.0) * (f64)var_f2 + (f64)arg0->unk30);
	arg0->unk28 = arg0->unk34;
	arg0->unk2C = (f32)(((f64)(f32)sins((u16)v1->unk6) / 32768.0) * (f64)var_f2 + (f64)arg0->unk38);
}

// AI - Vehicle camera yaw interpolation
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
// AI - Vehicle camera view cycling
void func_801356F4_1446A4(Unk80160080 *arg0) {
	VehicleType *temp = &vehicleTypes[D_80052B34->unk1A];
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

// AI - Enter/exit vehicle camera transition
void func_801357EC_14479C(Unk80160080 *arg0) {
	if (D_80160154 == 0 && D_801591BC != 0) {
		D_80160124 = 0.0f;
		D_80160134.value = D_801456D8_154688[0];
	}
	if (D_80160154 != 0 && D_801591BC == 0) {
		D_80160124 = 0.0f;
		D_80160134.value = D_801456DC_15468C[0];
		if (arg0->unk6C == 1) {
			arg0->unk56 = (s16)(vehicleTypes[D_80052B34->unk1A].unk5C * 0x10);
		} else {
			arg0->unk56 = (s16)(vehicleTypes[D_80052B34->unk1A].unk5D * 0x10);
		}
	}
	if (D_801591BC != 0) {
		arg0->unk52 = 0x2260;
	}
}

// toggleCameraNearFarMode?
// CURRENT(65)
// AI - Toggle near/far camera mode
#ifdef NON_MATCHING
void func_801358E8_144898(Unk80160080 *arg0, s16 arg1, s16 arg2) {
	f32 var_f14;
	f32 temp_f0;
	s16 temp_s0;

	if ((currentLevel == 4) && (D_80052B34->unk1A == 0xF)) {
		arg0->unk6C = 1;
		arg0->unk52 = 0x71C;
		arg0->unk56 = arg1;
		return;
	}

	func_800033D4_3FD4(8, 0);
	if (currentControllerStates[CONTROLLER_ONE].button & 8) {
		if (arg0->unk6C != 0) {
			if (arg0->unk6C == 1) {
				func_800B33BC_C236C(0x44);
				arg0->unk6C = 2;
			} else {
				arg0->unk6C = 1;
			}

			temp_f0 = D_80160128;
			if (temp_f0 >= 1.0) {
				if (D_8016015E == 0) {
					func_800153D8_15FD8(0xC3);
				}
				var_f14 = D_801456E0_154690[0];
				D_8016015E = 1;
				D_80160158 = 1;
				D_80160138.value = var_f14;
				D_80160128 = 0.0f;
				D_8016013C = 1;
			} else {

				D_80160128 = 0.0f;
				temp_s0 = (s16)(s32)(temp_f0 / D_80160138.value);
				D_80160138.value = (f32)(1.0 / temp_s0);
				var_f14 = D_801456E4_154694[0];
			}

			{
				temp_f0 = D_80160124;

				if (temp_f0 == 1.0) {
					D_80160124 = 0.0f;
					D_80160134.value = var_f14;
					D_80160140 = 1;
				} else {

					D_80160124 = 0.0f;
					temp_s0 = (s16)(s32)(temp_f0 / D_80160134.value);
					D_80160134.value = (f32)(1.0 / temp_s0);
				}
			}

			{
				temp_f0 = D_8016011C;

				if (temp_f0 == 1.0) {
					D_8016011C = 0.0f;
					D_8016012C = var_f14;
				} else {
					D_8016011C = 0.0f;
					temp_s0 = (s16)(s32)(temp_f0 / D_8016012C);
					D_8016012C = (f32)(1.0 / temp_s0);
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
		f64 temp_f0_2;

		temp_f0_2 = (f64)D_80160128;
		if (temp_f0_2 >= 1.0) {
			func_80015860_16460(D_8016015C);
			D_8016015E = 0;
			D_80160158 = 0;
			if (arg0->unk6C == 1) {
				func_800B33BC_C236C(0x38);
			}
		} else {
			if (arg0->unk6C == 1) {
				func_80014208_14E08(D_8016015C, (s16)(s32)((1.0 - temp_f0_2) * D_801456E8_154698.value), 0x40);
			} else if (arg0->unk6C == 2) {
				func_80014208_14E08(D_8016015C, (s16)(s32)(temp_f0_2 * D_801456F0_1546A0.value), 0x40);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_801358E8_144898.s")
#endif

// AI - Initialize camera shake parameters
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

// AI - Set camera shake offset parameters
void func_80135D08_144CB8(f32 arg0, s16 arg1, s16 arg2, s16 arg3) {
	D_80160160 = 1;
	D_80160170 = arg0;
	D_80160164 = arg1;
	D_80160168 = arg2;
	D_80160166 = arg3;
}

// https://decomp.me/scratch/AXqIF
// CURRENT(55)
// AI - Calculate camera shake from impact distance
#ifdef NON_MATCHING
void func_80135D44_144CF4(s32 arg0, s32 arg1, s32 arg2, f32 arg3)
{
	f32 zero;
	f32 amplitude;

	f32 attenuation;
	f32 distance;
	f32 negative;
	s32 x;
	s32 y;
	s32 z;
	zero = 0.0f;
	if (arg3 != zero)
	{
		distance = (arg0 / 4) - D_80047954;
		negative = -distance;
		if (negative < ((arg0 / 4) - D_80047954)) {
			x = ((arg0 / 4) - D_80047954);
		} else {
			x = negative;
		}
		distance = (arg1 / 4) - D_80047958;
		negative = -distance;
		if (negative < ((arg1 / 4) - D_80047958)) {
			y = ((arg1 / 4) - D_80047958);
		} else {
			y = negative;
		}
		distance = (arg2 / 4) - D_8004795C;
		negative = -distance;
		if (negative < ((arg2 / 4) - D_8004795C)) {
			z = ((arg2 / 4) - D_8004795C);
		} else {
			z = negative;
		}
		distance = ((x * x) + (y * y)) + (z * z);
		attenuation = distance / D_801456F8_1546A8[0];
		amplitude = arg3 - attenuation;
		if (distance) {} /* Retain the numerator lifetime for IDO. */
		if (arg3 < attenuation)
		{
			amplitude = zero;
		}
		else if (amplitude < 1.0)
		{
			amplitude = 1.0f;
		}
		if (D_80160174 < amplitude)
		{
			D_80160174 = amplitude;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80135D44_144CF4.s")
#endif

// AI - Update and decay camera shake effects
void func_80135F0C_144EBC(void) {
	f32 temp_f14;
	f32 temp_f0;
	f32 temp_f12;
	s16 temp_v0;

	if (D_80160174 < 0.4) {
		temp_f14 = 0.0f;
		D_80160174 = temp_f14;
	} else {
		temp_f14 = 0.0f;
		D_80160174 = (f32)(D_80160174 - (D_80160174 * 0.125));
	}

	if (D_80160160 != 0) {
		temp_v0 = D_80160168;
		if ((temp_v0 == 0) && (D_80160178 == temp_f14)) {
			D_80160160 = 0;
		} else if (temp_v0 > 0) {

			if (D_80160178 == D_80160170) {
				D_80160168 = temp_v0 - 1;
			} else {
				temp_f12 = D_80160170 - D_80160178;
				if (temp_f12 < (D_80160170 / 10.0)) {
					D_80160178 = D_80160170;
				} else {
					D_80160178 += temp_f12 / D_80160164;
				}
			}
		} else {

			if (D_80160178 < (D_80160170 / 10.0)) {
				D_80160178 -= D_80160178;
			} else {
				D_80160178 = D_80160178 - (D_80160178 / (f32)D_80160166);
			}
		}
	}

	temp_f0 = D_80160178 + D_80160174;
	if (temp_f0 != temp_f14) {
		if (D_8016016C > temp_f14) {
			D_8016016C = -temp_f0;
		} else {
			D_8016016C = temp_f0;
		}
		func_80001144_1D44((u8)(temp_f0 * 50.0f), 0x14, 0xA);
	} else {
		D_8016016C -= D_8016016C;
	}
}

// AI - Set cutscene camera flag
void func_80136198_145148(s32 arg0) {
	D_8016017C = arg0;
}

// AI - Get camera yaw target (cutscene or vehicle angle)
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

// AI - Camera collision avoidance against terrain
void func_80136214_1451C4(Unk80160080 *arg0) {
	s16 sp66;
	s16 unused;
	s16 sp62;
	Vec3f sp54;
	Vec3f sp48;
	s32 sp44;
	s32 sp40;
	s32 sp3C;

	s16 temp_s1;
	s32 var_v0;

	temp_s1 = 0x4000 - arg0->unk5E;
	sp66 = 0x4000U - D_80160146;
	if (temp_s1 != sp66) {
		sp44 = (s32) arg0->unk30;
		sp40 = (s32) arg0->unk34;
		sp3C = (s32) arg0->unk38;

		func_80133C9C_142C4C(&sp54, &arg0->lookAt, &sp48, sp66, arg0->unk4A, arg0->unk4C, arg0->unk4E);
		if (func_80126268_135218((s16) sp54.x, (s16) sp54.y, (s16) sp54.z, &sp44, &sp40, &sp3C, 0, 4) == 3) {
			if (func_80132730_1416E0(sp66, temp_s1) < 0) {
				if ((temp_s1 < 0) && (temp_s1 % 16384)) {
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
				func_80133C9C_142C4C(&sp54, &arg0->lookAt, &sp48, sp62, arg0->unk4A, arg0->unk4C, arg0->unk4E);
				if (func_80126268_135218((s16) sp54.x, (s16) sp54.y, (s16) sp54.z, &sp44, &sp40, &sp3C, 0, 4) == 3) {
					D_80160146 = arg0->unk5E;
					return;
				}
				D_80160146 = 0x4000 - sp62;
				if (arg0->unk68 == 0) {
					arg0->unk68 = 1;
					D_8016015F = 0;
					arg0->unk64 = 0x64;
					arg0->unk66 = 0x64;
				}
			} else {
				D_80160146 = arg0->unk5E;
			}
		}
	}
}


// AI - Switch to billboard rendering mode
void func_80136570_145520(void) {
	D_80034488_35088 = 1;
	D_80034464_35064 = D_80034460_35060;
	D_8003446C_3506C = D_80034468_35068;
	D_80034474_35074 = D_80034470_35070;
	D_8006C554 = D_8006C550;
	D_80034460_35060 = &D_80258390;
	D_8006C550 = &D_80258F90;
}

// CURRENT(4071)
// displaySignposts
// AI - Render signpost sprites in 3D world
// CURRENT(2231)
#ifdef NON_MATCHING
void func_801365E0_145590(void) {
	Unk80052B40 spE0;
	Unk80052B40 spD8;
	Unk80052B40 spD0;
	s16 spCC;
	void (*sp68)(s32, s16);
	s16 var_fp;
	s16 var_s0;
	s16 var_s1;
	s16 width;
	s16 height;
	SignpostData *signpost;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_2CYCLE);
	gSPClearGeometryMode(D_8005BB2C++, -1);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_FOG | G_SHADING_SMOOTH);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetTextureLOD(D_8005BB2C++, G_TL_TILE);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetColorDither(D_8005BB2C++, G_CD_NOISE);
	gSPLightColor(D_8005BB2C++, LIGHT_1, 0xFFFFFFFF);
	gSPLightColor(D_8005BB2C++, LIGHT_2, 0x808080FF);

	var_fp = 0;
	while (var_fp < 0x20) {
		signpost = &D_80258330[var_fp];
		var_s0 = signpost->unk0;
		if ((var_s0 != 0) || (signpost->unk1 != 0)) {
			var_s0 = (var_s0 << 24) >> 16;
			var_s0 += 0x80;
			var_s1 = (signpost->unk1 << 8) + 0x80;
			func_8011E6FC_12D6AC(var_s0, var_s1, &spCC);
			if ((var_s0 >= D_801493B0) && (D_801493AC >= var_s0) && (var_s1 >= D_801493B8) &&
				(D_801493B4 >= var_s1) &&
				(func_800B93AC_C835C(var_s0, var_s1, 0x13, (s16) D_80052B2C->unk0, (s32) D_80052B2C->unk8,
					0x4000 - D_80047950) != 0)) {
				spE0.unk0 = var_s0 >> 2;
				spE0.unk2 = spCC >> 2;
				spE0.unk4 = var_s1 >> 2;
				spD8.unk0 = signpost->direction << 0xE;
				spD8.unk2 = 0;
				spD8.unk4 = 0;
				spD0.unk0 = 0x20;
				spD0.unk2 = 0x20;
				spD0.unk4 = 0x20;
				sp68 = func_80136B50_145B00;
				func_800039D0_45D0(&spE0, &spD8, &spD0, D_8005BB38);
				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
				gDPPipeSync(D_8005BB2C++);
				gSPDisplayList(D_8005BB2C++, D_504D1D0);
				if (signpost->direction & 1) {
					width = 0x10;
					height = 0x13;
				} else {
					width = 0x13;
					height = 0x10;
				}
				func_8012D700_13C6B0(5, (var_fp + 0x2000), var_s0, spCC, var_s1, 0, 0, 0, width, height, 0x35, NULL,
					func_8012E1F8_13D1A8);
				switch (signpost->direction) {
					case 0:
						var_s1 += 0x18;
						break;

					case 1:
						var_s0 = (s16) (var_s0 + 0x18);
						break;

					case 2:
						var_s1 -= 0x18;
						break;

					case 3:
						var_s0 = (s16) (var_s0 - 0x18);
						break;
				}
				func_8012D700_13C6B0(4, (var_fp + 0x2000), var_s0, spCC, var_s1, 0, 0, 0, width, height, 0x35, sp68,
					NULL);
			}
		}
		var_fp++;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_801365E0_145590.s")
#endif

// https://decomp.me/scratch/NQ4OJ
// CURRENT(110)
// Check if player is reading signpost
// AI - Handle signpost interaction on button press
#ifdef NON_MATCHING
void func_80136B50_145B00(s32 arg0, s16 arg1)
{
	s32 heading;
	s16 sp32;
	s16 sp30;
	SignpostData *sp1C;
	s16 sp28;
	s16 temp_v0;
	VehicleInstance *player;
	temp_v0 = D_8015FAD0[arg1].unk1E - 0x2000;
	sp1C = &D_80258330[temp_v0];
	sp32 = (s16)(sp1C->unk0 << 8) + 0x80;
	sp30 = (s16)(sp1C->unk1 << 8) + 0x80;
	sp28 = temp_v0;
	if (!isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A))
	{
		return;
	}
	player = D_80052B34;
	if (player->unk1A != 0)
	{
		return;
	}
	switch (sp1C->direction)
	{
		case 0:
		  if (sp30 < player->unk4 &&
			  (player->unk0 >= (sp32 - 0x13)) &&
			  ((sp32 - -0x13) >= player->unk0) &&
			  (player->unkE >= (-0x6000)) &&
			  (player->unkE < (-0x1FFF))) { }
		  break;
		
		case 1:
		  if (sp32 < player->unk0 &&
			  (player->unk4 >= (sp30 - 0x13)) &&
			  ((sp30 + 0x13) >= player->unk4) &&
			  (player->unkE >= (-0x5FFF)) &&
			  (player->unkE >= 0x6000)) { }
		  break;
		
		case 2:
		  if (player->unk4 < sp30 &&
			  (player->unk0 >= (sp32 - 0x13)) &&
			  ((sp32 + 0x13) >= player->unk0) &&
			  (player->unkE < 0x6001) &&
			  (player->unkE >= 0x2000))
		  { }
		  break;
		
		case 3:
		  if (player->unk0 < sp32 &&
			  (player->unk4 >= (sp30 - 0x13)) &&
			  ((sp30 + 0x13) >= player->unk4)) {
			  heading = player->unkE;
			  if (heading >= 0) {} 
		  }
		  break;
		  default:
			if ((player->unk4 == 1) && (1 == player->unk4)) { }
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
