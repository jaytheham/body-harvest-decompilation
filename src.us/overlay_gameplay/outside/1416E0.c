#include <ultra64.h>
#include "common.h"


s16 func_80132730_1416E0(s32 arg0, s32 arg1) { return (s16)(arg1 - arg0); }

#ifdef NON_MATCHING
void func_80132740_1416F0(Unk80160080 *arg0) {
	Unk80052B34 *sp1C;

	sp1C = D_80052B34;
	osSyncPrintf(&D_80145650, arg0);
	arg0->unkC = 0.0f;
	arg0->unk10 = 0.0f;
	arg0->unk14 = 0.0f;
	*(s32*)&arg0->unk24 = *(s32*)&arg0->unkC;
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
	arg0->unk64 = 0x64;
	arg0->unk68 = 0;
	D_8016011C = 1.0f;
	D_80160120 = 1.0f;
	D_80160124 = 1.0f;
	D_80160128 = 1.0f;
	D_8016012C = D_8014567C;
	D_80160130 = D_8014567C;
	D_80160134 = D_8014567C;
	D_80160138 = D_8014567C;
	arg0->unk6C = 1;
	arg0->unk30 = (f32) sp1C->unk0;
	{
		s16 temp_v0 = (&D_80257A38)[D_80052B34->unk1A * 0x38];
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

#ifdef NON_MATCHING
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
	{
		Gfx *gfx = D_8005BB2C;
		D_8005BB2C = gfx + 1;
		gfx->words.w0 = 0xBC00000E;
		gfx->words.w1 = (s32)sp46;
	}
	guLookAt((Mtx *)(D_8005BB20 + 0x200),
			 D_80160194, D_80160198, D_8016019C,
			 D_801601A0, D_801601A4, D_801601A8,
			 arg0->unk18, arg0->unk1C, arg0->unk20);
	{
		Gfx *gfx = D_8005BB2C;
		D_8005BB2C = gfx + 1;
		gfx->words.w0 = 0x01030040;
		gfx->words.w1 = (s32)((u32)(D_8005BB20 + 0x180) & 0x1FFFFFFF);
	}
	{
		Gfx *gfx = D_8005BB2C;
		D_8005BB2C = gfx + 1;
		gfx->words.w0 = 0x01010040;
		gfx->words.w1 = (s32)((u32)(D_8005BB20 + 0x200) & 0x1FFFFFFF);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_801330E4_142094.s")
#endif

void func_80133260_142210(Unk80160080 *arg0) {
	D_801493D0 = 0;
	D_801600F0 = 0;
	arg0->unk6C = 0;
	arg0->unk52 = 0x71C;
	arg0->unk56 = 0x96;
}

void func_80133288_142238(Unk80160080 *arg0) {
	if ((D_801493D0 != 0) && (D_8016017C == 0)) {
		func_801333D0_142380();
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_801333D0_142380.s")

#ifdef NON_MATCHING
void func_801336CC_14267C(Unk80160080 *arg0, Vec3f *arg1) {
	f32 sp44;
	f64 sp20;
	f32 temp_f0;
	f32 temp_f2;
	f32 temp_f12;
	f64 temp_f0_2;
	s32 temp_v0;
	s32 var_v1;
	s32 temp_a0;
	s16 temp_v0_2;

	temp_f0 = (f32) D_80159020->unk0 - arg1->x;
	sp44 = (f32) D_80159020->unk2 - arg1->y;
	temp_f2 = (f32) D_80159020->unk4 - arg1->z;
	temp_f12 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
	if ((D_801600F0 == 0) || (D_80140CFC != 0)) {
		arg0->unk5C = (s16) -func_80003824_4424(temp_f12, sp44);
		arg0->unk5A = (s16) D_80159318;
		if (D_80140CFC != 0) {
			D_80140CFC -= 1;
		} else {
			D_80140CFC = 1;
		}
	}
	temp_v0 = func_80132730_1416E0(D_80159318, arg0->unk5A);
	if (temp_v0 < -0xE38) {
		temp_a0 = -0xE38 - temp_v0;
		var_v1 = temp_a0;
		if (temp_a0 >= 0x16D) {
			var_v1 = 0x16C;
		}
		arg0->unk5A = (s16) (arg0->unk5A + var_v1);
		arg0->unk5C = (s16) (arg0->unk5C - var_v1);
	}
	if (temp_v0 >= 0xE39) {
		temp_a0 = temp_v0 - 0xE38;
		var_v1 = temp_a0;
		if (temp_a0 >= 0x16D) {
			var_v1 = 0x16C;
		}
		arg0->unk5A = (s16) (arg0->unk5A - var_v1);
		arg0->unk5C = (s16) (arg0->unk5C + var_v1);
	}
	temp_v0_2 = arg0->unk58;
	arg0->unk54 = 0;
	arg0->unk50 = (s16) (0x4000 - temp_v0_2);
	arg0->unk52 = (s16) arg0->unk5C;
	temp_f0_2 = (f64) 100.0f;
	arg0->unk24 = (f32) (((f64)(f32) coss(temp_v0_2 & 0xFFFF) / 32768.0) * temp_f0_2 + (f64) arg1->x);
	sp20 = temp_f0_2;
	arg0->unk28 = (f32) (((f64)(f32) sins(-arg0->unk5C & 0xFFFF) / 32768.0) * temp_f0_2 + (f64) arg1->y);
	arg0->unk2C = (f32) (((f64)(f32) sins((u16) arg0->unk58) / 32768.0) * temp_f0_2 + (f64) arg1->z);
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

#ifdef NON_MATCHING
void func_80133A54_142A04(Unk80160080 *arg0) {
	f64 sp28;
	Unk80052B34 *sp34;
	f32 sp40;
	f32 sp44;
	f32 sp48;
	f32 sp4C;
	s32 diff;
	s32 temp_a1;

	sp34 = D_80052B34;
	if (D_801600F0 == 0) {
		D_8016011C = 0.0f;
		D_80160120 = 0.0f;
		D_80160124 = 0.0f;
		D_80160128 = 0.0f;
		D_8016012C = D_8014569C;
		D_80160130 = D_8014569C;
		D_80160134 = D_8014569C;
		D_80160138 = D_8014569C;
		arg0->unk58 = (s16) D_80052B34->unk6;
	}
	diff = func_80132730_1416E0(D_80052B34->unk6 - D_80052B2C->unk36, arg0->unk58);
	if (diff >= 0xE39) {
		temp_a1 = diff - 0xE38;
		arg0->unk58 -= temp_a1 < (s32) D_8015929C ? temp_a1 : (s32) D_8015929C;
	}
	if (diff < -0xE38) {
		temp_a1 = -0xE38 - diff;
		arg0->unk58 += temp_a1 < (s32) D_8015929C ? temp_a1 : (s32) D_8015929C;
	}
	arg0->unk56 = 0x73;
	sp40 = (f32) ((&D_80257A0C)[D_80052B34->unk1A * 0x38] * 2);
	sp44 = (f32) ((f64) sp34->unk0 - (((f64) (f32) coss((u16) arg0->unk58) / 32768.0) * (f64) sp40));
	sp48 = (f32) ((&D_80257A38)[D_80052B34->unk1A * 0x38] + sp34->unk2 + 0x32);
	sp28 = (f64) sp40;
	sp4C = (f32) ((f64) sp34->unk4 - (((f64) (f32) sins((u16) arg0->unk58) / 32768.0) * sp28));
	func_801336CC_14267C(arg0, (Vec3f *) &sp44);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80133A54_142A04.s")
#endif

#ifdef NON_MATCHING
void func_80133C9C_142C4C(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2, s32 arg3, u16 arg4, s32 arg5, s16 arg6) {
	f32 sp4C;
	f32 sp48;
	f32 sp44;
	f32 sp40;
	f32 sp38;
	f32 sp34;
	s32 sp28;
	f32 temp_f0;
	f32 temp_f2;
	s32 temp_a0;

	temp_a0 = arg3 & 0xFFFF;
	sp28 = temp_a0;
	sp38 = (f32)((f64)(f32)sins(temp_a0) / 32768.0);
	temp_f0 = (f32)coss(temp_a0);
	sp28 = (s32)arg4;
	sp34 = (f32)((f64)temp_f0 / 32768.0);
	temp_f2 = (f32)((f64)(f32)sins(sp28) / 32768.0);
	sp40 = temp_f2;
	temp_f0 = (f32)((f64)(f32)coss(sp28) / 32768.0);
	sp44 = 0.0f;
	sp48 = 0.0f;
	sp4C = 1.0f;
	arg0->x = (f32)sp44;
	arg0->y = (f32)sp48;
	arg0->z = (f32)sp4C;
	sp44 = arg0->x;
	sp48 = (arg0->y * temp_f0) - (arg0->z * temp_f2);
	sp4C = (arg0->y * temp_f2) + (arg0->z * temp_f0);
	arg0->x = (f32)((sp4C * sp38) + (sp44 * sp34));
	arg0->y = sp48;
	arg0->z = (f32)((sp4C * sp34) - (sp44 * sp38));
	sp44 = 0.0f;
	sp4C = 0.0f;
	sp48 = 1.0f;
	if (arg6 == 0) {
		arg6 = 0;
	}
	temp_f0 = (f32)-arg6;
	arg0->x = (f32)(arg0->x * temp_f0);
	arg0->y = (f32)(arg0->y * temp_f0);
	arg0->z = (f32)(arg0->z * temp_f0);
	arg0->x = (f32)(arg0->x + arg1->x);
	arg0->y = (f32)(arg0->y + arg1->y);
	arg0->z = (f32)(arg0->z + arg1->z);
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

#ifdef NON_MATCHING
void func_80133EBC_142E6C(Unk80160080 *arg0) {
	Unk80052B34 *temp = D_80052B34;
	arg0->unk30 = (f32) temp->unk0;
	arg0->unk34 = (f32) temp->unk2 + (f32) D_80160188;
	arg0->unk38 = (f32) temp->unk4;
	*(s32 *)&arg0->unk24 = *(s32 *)&arg0->unk30;
	*(s32 *)&arg0->unk28 = *(s32 *)&arg0->unk34;
	*(s32 *)&arg0->unk2C = *(s32 *)&arg0->unk38;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80133EBC_142E6C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80133F28_142ED8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_801343D8_143388.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_8013493C_1438EC.s")

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
#ifdef NON_MATCHING
void func_801351DC_14418C(Unk80160080 *arg0) {
	s32 temp_t5;
	s32 temp_t6;
	s32 var_v1_2;
	s32 var_a0;
	s32 button_2000;

	func_801358E8_144898(arg0, 0x12C, 0x4E2);
	if ((D_80160148 >= 0 ? D_80160148 : -D_80160148) < 2) {
		D_80160148 = 0;
	}
	button_2000 = currentControllerStates[0].button & 0x2000;
	if (button_2000 == 0) {
		if (currentControllerStates[0].button & 2) {
			if (D_80160148 < 0x100) {
				D_80160148 = 0x100;
			} else if (D_80160148 < 0x400) {
				D_80160148 += 0x40;
			}
			D_8016018C = 1;
		} else if (currentControllerStates[0].button & 1) {
			if (D_80160148 >= -0xFF) {
				D_80160148 = -0x100;
			} else if (D_80160148 >= -0x3FF) {
				D_80160148 -= 0x40;
			}
			D_8016018C = 1;
		} else if (D_80160148 != 0) {
			D_80160148 = (s16) (D_80160148 / 2);
		}
	}
	temp_t5 = (currentControllerStates[0].stick_x < 0xB) ^ 1;
	var_v1_2 = ((-temp_t5) < temp_t5) ? temp_t5 : (-temp_t5);
	if (var_v1_2 == 0) {
		temp_t6 = (currentControllerStates[0].stick_y < 0xB) ^ 1;
		var_a0 = ((-temp_t6) < temp_t6) ? temp_t6 : (-temp_t6);
		if (var_a0 == 0 && button_2000 == 0 && !(currentControllerStates[0].button & 0x10) && !(currentControllerStates[0].button & 4)) {
			goto skip_clear;
		}
	}
	D_8016018C = 0;
skip_clear:
	if ((button_2000 != 0 || (currentControllerStates[0].button & 4)) && !(D_80157A28 & 4)) {
		D_80160190 = 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_801351DC_14418C.s")
#endif

#ifdef NON_MATCHING
void func_80135380_144330(Unk80160080 *arg0) {
	f32 neg;
	f32 val;

	val = arg0->unk3C;
	if (val <= 0.0f) {
		neg = 0.0f - val;
		if ((f64)neg < 2.0) {
			arg0->unk3C = 0.0f;
		} else {
			arg0->unk3C = (f32)((f64)val + (f64)neg / 12.0);
		}
	} else {
		neg = 0.0f - val;
		if ((f64)(-neg) < 2.0) {
			arg0->unk3C = 0.0f;
		} else {
			arg0->unk3C = (f32)((f64)val + (f64)neg / 12.0);
		}
	}

	val = arg0->unk40;
	if (val <= 0.0f) {
		neg = 0.0f - val;
		if ((f64)neg < 2.0) {
			arg0->unk40 = 0.0f;
		} else {
			arg0->unk40 = (f32)((f64)val + (f64)neg / 12.0);
		}
	} else {
		neg = 0.0f - val;
		if ((f64)(-neg) < 2.0) {
			arg0->unk40 = 0.0f;
		} else {
			arg0->unk40 = (f32)((f64)val + (f64)neg / 12.0);
		}
	}

	val = arg0->unk44;
	if (val <= 0.0f) {
		neg = 0.0f - val;
		if ((f64)neg < 2.0) {
			arg0->unk44 = 0.0f;
		} else {
			arg0->unk44 = (f32)((f64)val + (f64)neg / 12.0);
		}
	} else {
		neg = 0.0f - val;
		if ((f64)(-neg) < 2.0) {
			arg0->unk44 = 0.0f;
		} else {
			arg0->unk44 = (f32)((f64)val + (f64)neg / 12.0);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80135380_144330.s")
#endif

#ifdef NON_MATCHING
void func_801354C0_144470(Unk80160080 *arg0) {
	s16 temp;
	f32 var_f2;
	f64 sp18;

	arg0->unk30 = (f32)D_80052B34->unk0;
	temp = vehicleSpecs[D_80052B34->unk1A].unk38;
	arg0->unk34 = (f32)(temp - (temp >> 2)) + (f32)D_80052B34->unk2;
	arg0->unk38 = (f32)D_80052B34->unk4;
	if (arg0->unk6C == 2) {
		sp18 = 400.0;
	} else {
		sp18 = 100.0;
	}
	var_f2 = (f32)sp18;
	arg0->unk24 = (f32)(((f64)(f32)coss((u16)D_80052B34->unk6) / 32768.0) * (f64)var_f2 + (f64)arg0->unk30);
	arg0->unk28 = arg0->unk34;
	arg0->unk2C = (f32)(((f64)(f32)sins((u16)D_80052B34->unk6) / 32768.0) * (f64)var_f2 + (f64)arg0->unk38);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_801354C0_144470.s")
#endif

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
		D_80160134 = D_801456D8;
	}
	if (D_80160154 != 0 && D_801591BC == 0) {
		D_80160124 = 0.0f;
		D_80160134 = D_801456DC;
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
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_801358E8_144898.s")

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

#ifdef NON_MATCHING
void func_80135D44_144CF4(s32 arg0, s32 arg1, s32 arg2, f32 arg3) {
	f32 var_f14;
	s32 var_v0;
	s32 var_v1;
	s32 var_a0;
	f32 temp_f16;
	f32 temp_f18;
	f32 temp_f2;

	if (arg3 != 0.0f) {
		temp_f2 = (f32) (arg0 / 4) - D_80047954;
		var_f14 = -temp_f2;
		if (var_f14 < temp_f2) {
			var_v0 = (s32) temp_f2;
		} else {
			var_v0 = (s32) var_f14;
		}
		temp_f2 = (f32) (arg1 / 4) - D_80047958;
		var_f14 = -temp_f2;
		if (var_f14 < temp_f2) {
			var_v1 = (s32) temp_f2;
		} else {
			var_v1 = (s32) var_f14;
		}
		temp_f2 = (f32) (arg2 / 4) - D_8004795C;
		var_f14 = -temp_f2;
		if (var_f14 < temp_f2) {
			var_a0 = (s32) temp_f2;
		} else {
			var_a0 = (s32) var_f14;
		}
		temp_f16 = (f32) ((var_v0 * var_v0) + (var_v1 * var_v1) + (var_a0 * var_a0)) / D_801456F8;
		temp_f18 = arg3 - temp_f16;
		var_f14 = temp_f18;
		if (arg3 < temp_f16) {
			var_f14 = 0.0f;
		} else if ((f64) temp_f18 < 1.0) {
			var_f14 = 1.0f;
		}
		if (D_80160174 < var_f14) {
			D_80160174 = var_f14;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80135D44_144CF4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80135F0C_144EBC.s")

void func_80136198_145148(s32 arg0) {
	D_8016017C = arg0;
}

#ifdef NON_MATCHING
s16 func_801361A4_145154(Unk80160080 *arg0) {
	if ((D_8016017C != 0) && (D_80160180 == 0)) {
		D_80160184 = D_80052B34->unkE + 0x8000;
	}
	if (D_8016017C != 0) {
		arg0->unk5E = (s16) D_80160184;
		return D_80160184;
	}
	return (s16) D_80052B34->unkE;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_801361A4_145154.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80136214_1451C4.s")

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

#ifdef NON_MATCHING
void func_80136B50_145B00(s32 arg0, s16 arg1) {
	s16 sp32;
	s16 sp30;
	s16 sp28;
	void *sp1C;
	s16 temp_v0;
	s32 temp_t6;

	temp_v0 = *(s16 *)((u8 *)&D_8015FAEE + (arg1 * 0x30)) - 0x2000;
	sp1C = (u8 *)&D_80258330 + temp_v0 * 3;
	sp32 = ((s8)((u8 *)sp1C)[0] << 8) + 0x80;
	sp30 = ((s8)((u8 *)sp1C)[1] << 8) + 0x80;
	sp28 = temp_v0;
	if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A) != 0) {
		if (D_80052B34->unk1A == 0) {
			temp_t6 = (u32)(((u8 *)sp1C)[2] << 29) >> 30;
			switch (temp_t6) {
			case 0:
				if (sp30 < D_80052B34->unk4) {
					if ((D_80052B34->unk0 >= (sp32 - 0x13)) && ((sp32 + 0x13) >= D_80052B34->unk0)) {
						if ((D_80052B34->unkE >= -0x6000) && (D_80052B34->unkE < -0x1FFF)) {
						}
					}
				}
				break;
			case 1:
				if (sp32 < D_80052B34->unk0) {
					if ((D_80052B34->unk4 >= (sp30 - 0x13)) && ((sp30 + 0x13) >= D_80052B34->unk4)) {
						if ((D_80052B34->unkE >= -0x5FFF) && (D_80052B34->unkE >= 0x6000)) {
						}
					}
				}
				break;
			case 2:
				if (D_80052B34->unk4 < sp30) {
					if ((D_80052B34->unk0 >= (sp32 - 0x13)) && ((sp32 + 0x13) >= D_80052B34->unk0)) {
						if ((D_80052B34->unkE < 0x6001) && (D_80052B34->unkE >= 0x2000)) {
						}
					}
				}
				break;
			case 3:
				if (D_80052B34->unk0 < sp32) {
					if ((D_80052B34->unk4 >= (sp30 - 0x13)) && ((sp30 + 0x13) >= D_80052B34->unk4)) {
						if (D_80052B34->unkE >= 0) {
							break;
						}
					}
				}
				break;
			}
			if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A) != 0) {
				if (D_80052B34->unk1A == 0) {
					if (func_800A3CD0_B2C80() != 0) {
						func_80136570_145520();
						func_80018D7C_1997C((u16) sp28);
					}
				}
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/1416E0/func_80136B50_145B00.s")
#endif
