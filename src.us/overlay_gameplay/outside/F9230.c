#include <ultra64.h>
#include "common.h"

void func_800EA280_F9230(void) { D_80047948 = 0; D_80157E7C = 4; }

void func_800EA298_F9248(s16 arg0) {
	s16 temp = 0xC000 - arg0;
	D_80157A40 = temp;
}

void func_800EA2B0_F9260(s32 arg0) { D_801575DC = arg0; }

// guess_attemptDoAnimation
// https://decomp.me/scratch/4eqv8
#ifdef NON_MATCHING
void func_800EA2BC_F926C(void)
{
  if (D_80052B34->unk1A == 0)
  {
	func_800EB534_FA4E4(&D_80157600, 0x2F, 0, 0);
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA2BC_F926C.s")
#endif

#ifdef NON_MATCHING
void func_800EA2FC_F92AC(s16 arg0) {
	Unk8009E8DC *anim;

	if (arg0 >= 0x6E) {
		func_8000CDFC_D9FC(D_80157600.unk404, &D_80157600, 0x10, D_8013ECC8_14DC78, 1);
		return;
	}

	if ((arg0 == D_80157600.unk40C) && (((Unk8007F878_404 *)D_80157600.unk404)->unkE50 != 0)) {
		return;
	}

	anim = &((Unk8009E8DC *)D_8013E5AC_14D55C)[arg0];
	D_80157600.unk40C = arg0;
	func_8000CDFC_D9FC(D_80157600.unk404, &D_80157600, 0x10, anim->unk0, 1);
	if (anim->unk4 & 1) {
		func_8000D278_DE78(D_80157600.unk404, &D_80157600, 0x10, anim->unk8);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA2FC_F92AC.s")
#endif

void *func_800EA3E8_F9398(s16 arg0) {
	if (arg0 >= 0x6E) {
		return &D_801442E0_153290;
	}
	return (char *)&D_8013E5AC_14D55C + (arg0 * 0x34) + 0x20;
}

// guess_initAnimations
#ifdef NON_MATCHING
void func_800EA434_F93E4(void) {
	f32 temp_zero = 0.0f;

	D_8004818C = 0;
	D_80157600.unk404 = func_8000C6F4_D2F4();
	D_80157600.unk408 = func_8000C6F4_D2F4();
	D_80157600.unk410 = 1.0f;
	D_80157A34 = 0;
	func_8000C790_D390(&D_80157600, &D_8003BAE0, 0x10);
	temp_zero = 0.0f;
	D_80157600.unk40C = 0x27;
	func_800EB534_FA4E4(&D_80157600, 0x23, 7, 0);
	D_80157600.unk8 = temp_zero;
	D_80157600.unk10 = temp_zero;
	D_80157600.unkC = 145.0f;
	D_801575D0 = 0;
	D_80157A28 = 1;
	D_801575DC = (s32) D_80047948;
	D_80157A38 = 2;
	D_80157A3C = 0x40;
	D_80157A48.unk404 = func_8000C6F4_D2F4();
	D_80157A48.unk408 = func_8000C6F4_D2F4();
	D_80157A48.unk410 = 1.0f;
	func_8000C790_D390(&D_80157A48, &D_8003BAE0, 0x10);
	D_80157E70 = 0;
	D_80157A48.unk8 = temp_zero;
	D_80157A48.unk10 = temp_zero;
	D_80157A48.unk40C = 0x27;
	D_80157A48.unkC = 145.0f;
	func_800EB534_FA4E4(&D_80157A48, 0x23, 7, 0);
	D_801575E0.unk0 = 0;
	D_801575E0.unk2 = 0;
	D_801575E0.unk4 = 0;
	D_801575E0.unk6 = 0;
	D_801575E0.unk8 = 0;
	D_801575E0.unkA = 0;
	D_801575E0.unkC = 0;
	D_801575E0.unkE = 0;
	D_801575E0.unk10 = 0;
	D_801575E0.unk12 = 0;
	D_801575E0.unk14 = 0;
	D_801575E0.unk16 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA434_F93E4.s")
#endif

void func_800EA5B8_F9568(void) {
	func_8000C764_D364(D_80157A04);
	func_8000C764_D364(D_80157A08);
	func_8000C764_D364(D_80157E4C);
	func_8000C764_D364(D_80157E50);
	D_80048188 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA604_F95B4.s")

#ifdef NON_MATCHING
s32 func_800EA7DC_F978C(s16 arg0, Vec3f *arg1, Vec3f *arg2, s32 arg3, f32 arg4) {
	s32 temp_v1;
	s32 var_a0;
	s32 var_v0;
	s32 var_v0_2;

	temp_v1 = (arg3 & 0xFFFF) - (func_80003824_4424(arg1->z - arg2->z, arg1->x - arg2->x) & 0xFFFF);
	var_a0 = temp_v1;
	if (temp_v1 >= 0) {
		var_v0 = temp_v1;
	} else {
		var_v0 = -temp_v1;
	}
	if (var_v0 >= 0x8001) {
		u32 var_at = 0x10000;
		if (temp_v1 > 0) {
			var_at = 0xFFFF0000;
		}
		var_a0 = temp_v1 + var_at;
	}
	if (var_a0 >= 0) {
		var_v0_2 = var_a0;
	} else {
		var_v0_2 = -var_a0;
	}
	if (var_v0_2 < (s16) (s32) ((f64) ((arg4 / 2) * 32768.0f) / D_801443E0_153390)) {
		goto block_18;
	}
	if (var_a0 >= 0) {
		if (arg0 >= -4) {
			return 2;
		}
		goto block_18;
	}
	if ((var_a0 < 0) && (arg0 < 5)) {
		return 1;
	}
block_18:
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA7DC_F978C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EA8F8_F98A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EABE0_F9B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EADF8_F9DA8.s")

void func_800EB05C_FA00C(void) {
	osSyncPrintf(&D_801442F0_1532A0); // Player start swimming
	D_80157A28 |= 4;
}

void func_800EB090_FA040(void) {
	osSyncPrintf(&D_80144308_1532B8); // Player stops swimming
	D_80157A28 &= ~4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EB0C8_FA078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EB534_FA4E4.s")

#ifdef NON_MATCHING
void func_800EB7CC_FA77C(Unk80157600 *arg0, s32 arg1, s32 arg2, f32 arg3) {
	s32 temp_v0 = arg0->unk40C;
	
	if (!((((Unk8009E8DC*)D_8013E5AC_14D55C)[temp_v0].unk4) & 8)) {
		if (arg3 > 0.0f) {
			if ((arg2 != temp_v0) && (temp_v0 >= 3)) {
				func_800EB534_FA4E4(arg0, arg2, 0, *(s32*)&arg3);
				return;
			}
			if (((Unk8007F878_404*)arg0->unk404)->unkE50 == 0) {
				func_800EB534_FA4E4(arg0, arg2, ((Unk8009E8DC*)D_8013E5AC_14D55Cs)[arg2].unk8, *(s32*)&arg3);
			}
		} else if ((temp_v0 < 0x24) || (temp_v0 == 0x3B)) {
			func_800EB534_FA4E4(arg0, 0, 0, 0);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EB7CC_FA77C.s")
#endif

#ifdef NON_MATCHING
void func_800EB8A4_FA854(Unk80157600 *arg0, f32 arg1) {
	Unk8009E8DC *anim;
	s32 animIdx;

	if (((Unk8007F878_404*)arg0->unk404)->unkE50 != 0) {
		return;
	}

	animIdx = arg0->unk40C;
	anim = &((Unk8009E8DC*)D_8013E5AC_14D55C)[animIdx];

	if (anim->unk14 != 0) {
		if (anim->unk4 & 1) {
			if (anim->unk18 == arg0->unk41C) {
				func_800EB534_FA4E4(arg0, anim->unk1C, 0, arg1);
				arg0->unk41C = 0;
				return;
			} else {
				func_800EB534_FA4E4(arg0, animIdx, anim->unk8, arg1);
				arg0->unk41C = arg0->unk41C + 1;
				return;
			}
		}
		func_800EB534_FA4E4(arg0, anim->unk1C, 0, arg1);
		return;
	}

	if (anim->unk4 & 1) {
		func_800EB534_FA4E4(arg0, animIdx, anim->unk8, arg1);
		return;
	}
	if (anim->unk4 & 2) {
		func_800EB534_FA4E4(arg0, anim->unk8, 0, arg1);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EB8A4_FA854.s")
#endif

s16 func_800EB9B4_FA964(void *arg0) {
	return ((s16 *)arg0)[0xD];
}

f32 func_800EB9BC_FA96C(void *arg0) {
	return ((f32 *)arg0)[0x7];
}

#ifdef NON_MATCHING
s32 func_800EB9C4_FA974(s32 arg0, Unk80157600 *arg1) {
	Unk8013E45C *temp_v0;
	s16 temp_v1;
	f32 temp_f0;

	temp_v0 = &D_8013E45C[arg0];
	temp_v1 = temp_v0->unkC;
	if (((arg1->unk298 == temp_v1) && (arg1->unk29C == temp_v0->unk10)) ||
		((temp_f0 = temp_v0->unk10, (-1.0f == temp_f0)) && (temp_v1 < arg1->unk298)) ||
		((-1.0f == temp_f0) && (temp_v1 == -1))) {
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EB9C4_FA974.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EBA54_FAA04.s")

#ifdef NON_MATCHING
void func_800EBC94_FAC44(VehicleInstance *arg0, Unk80047588 *arg1) {
	s16 var_v1;
	s8 var_v0;

	arg0->unk22 = 0;
	func_800FB430_10A3E0(arg0, 0);
	var_v0 = arg1->stick_x;
	if (var_v0 >= 0x3E) {
		var_v0 = 0x3D;
	}
	if (var_v0 < -0x3D) {
		var_v0 = -0x3D;
	}
	if (currentControllerStates[0].button & 0x10) {
		var_v1 = (s16)((s32)(var_v0 * var_v0 * var_v0) >> 8);
	} else {
		var_v1 = (s16)((s32)(var_v0 * var_v0 * var_v0) >> 8);
		var_v1 *= 2;
	}
	arg0->unkE += var_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EBC94_FAC44.s")
#endif

void func_800EBD5C_FAD0C(s32 arg0) {
	D_80157A28 |= 0x1000;
	func_80001144_1D44(0x46, 0xA, 0xA);
}

// Exit vehicle to point x,y,z
void func_800EBD9C_FAD4C(s16 arg0, s16 arg1, s16 arg2) {
	if (D_80048188 == 0) {
		D_80048188 = 1;
		D_801575E0.unk0 = 1;
		D_801575E0.unk4 = 0;
		D_801575E0.unkE = arg2;
		D_801575E0.unk6 = arg0;
		D_80157600.unk8 = 0.0f;
		D_80157600.unk10 = 0.0f;
		D_801575E0.unkA = arg1;
		osSyncPrintf(&D_80144330_1532E0, arg0, arg1, arg2); // attempt to exit to point %d,%d,%d
		D_8015760C = 145.0f;
		if ((D_80222A70 - 0x24) >= arg1) {
			func_800EB05C_FA00C();
			return;
		}
		func_800EB090_FA040();
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EBE74_FAE24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EC0D0_FB080.s")

void func_800EC330_FB2E0(void) {
	Unk800522C0 *temp_v0;

	temp_v0 = func_801164C4_125474(D_80052542, D_80052546);
	D_8016018C = 1;
	if (*(s32 *)((u8 *)D_80148390_157340 + ((u8 *)temp_v0)[8] * 0x18) != 0) {
		D_80048188 = 1;
		D_801575E0.unk0 = 3;
	}
}

#ifdef NON_MATCHING
void func_800EC3A0_FB350(s16 arg0) {
	switch (arg0) {
		case 4:
			if ((D_80048188 == 0) && (arg0 != D_801575E0.unk0)) {
				D_80048188 = 1;
				D_801575E0.unk0 = arg0;
				D_80157600.unk420 = &D_8013E450;
				D_80157600.unk424 = 0;
				D_801575E0.unk6 = 0x7FFF;
				D_801575E0.unkA = 0x7FFF;
				D_801575E0.unkE = 0x7FFF;
				return;
			}
			return;

		case 5:
			D_80048188 = 1;
			D_801575E0.unk0 = arg0;
			break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EC3A0_FB350.s")
#endif

void func_800EC450_FB400(void) { D_80157A28 |= 0x200; }

void func_800EC468_FB418(void) { D_80157A28 &= ~0x200; }

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EC484_FB434.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800ED55C_FC50C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800ED78C_FC73C.s")

// Cont 2 button attempts to use weapon model 0 when changing weapon
#ifdef NON_MATCHING
s32 func_800EF0B0_FE060(s32 arg0) {
	s32 buf[2];
	s32 *ptr;
	s32 count;
	s32 sum;
	s8 byte;

	ptr = (s32 *)func_80012000_12C00(arg0);
	count = 0;
	sum = 0;

	do {
		buf[0] = ptr[0];
		ptr += 2;
		count++;
		buf[1] = ptr[-1];
		byte = *(s8 *)buf;
		sum += byte;
	} while (byte != -0x48 || count >= 0x39);

	if (currentControllerStates[CONTROLLER_TWO].button & BUTTON_Z) {
		return 0;
	}

	if ((sum == -0x88E) && (count == 0x38)) {
		return 1;
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EF0B0_FE060.s")
#endif

// This checks the player modifier and writes values that cause either
// normal or evil adam to be rendered
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EF14C_FE0FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EF650_FE600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EF9F0_FE9A0.s")

void func_800EFC28_FEBD8(u8 arg0) {
	s16 idx;
	AlienInstance *alien;

	idx = func_8007956C_8851C(0x12);
	alien = &alienInstances[idx];
	alien->unk0 = D_80052B34->unk0;
	alien->unk4 = D_80052B34->unk4 + 0x50;
	if (arg0 == 0) {
		alienSpecs[arg0].unk0 = (s32)&D_5040770;
		alien->unk24 = 0x10;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EFCC0_FEC70.s")

void func_800EFE50_FEE00(u8 arg0) {
	func_800101F0_10DF0(&D_80157E90,
		(void *)(((s32)&D_3058A40 & 0xFFFFFF) + ((arg0 * 0x78) & 0xFFFF) + (s32)&D_8F4960),
		0x78);
}

/// Cutscene stuff
/// 800EFEB4 is called and triggers cutscenes (may need to be followed by 80013468)
/// Greece values:
/// a0 = cutscene code pointer?
/// 800F1DDC = 0
/// 802D52C4 = 1
/// 800F1134 = 4
/// 802D57A0 = 5
/// 802D64D0 = 6
/// 802D6904 = 7
/// 
/// a1 = cutscene number
/// 0 = Alpha Zero landing at stage start
/// 1 = Bridge lowering
/// 2 = Beacon launch
/// 3 = ?
/// 4 = Destroying Shield Generator
/// 5 = Raising Atlantis
/// 6 = Dark Adam blowing up bridge
/// 7 = Dark Adam blowing up planes
/// 	
/// a2 = bool, pause gameplay while cutscene active?
#ifdef NON_MATCHING
void func_800EFEB4_FEE64(void *arg0, s16 arg1, s32 arg2) {
	s32 sp18 = arg1;

	if (D_80052AD0 != 0) {
		if (arg1 == 1) {
			D_8015EA2C = 0.0f;
		}
		D_800476A2 = 0;
		D_80047968 = 0;
		func_800EFE50_FEE00(arg1);
		D_80157F6A = (s8)sp18;
		if (arg2 != 0) {
			gameplayMode = 3;
		} else {
			gameplayMode = 0xB;
		}
		if (arg1 != 3) {
			D_801493E2 = 0;
		}
		D_80157F8C = 0;
		D_80157F8E = 0;
		D_80157F90 = 0;
		D_80157F70 = (s32)arg0;
		if (arg0 != NULL) {
			((void (*)(void))arg0)();
		}
		func_800F0340_FF2F0(&D_80157E90, 0, 5);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800EFEB4_FEE64.s")
#endif

void func_800EFFB4_FEF64(void) {
	s16 temp;

	switch (currentLevel) {
		case 1:
			if (func_8011D260_12C210(0x46, -0x25) == -1) {
				osSyncPrintf(&D_801444F0_1534A0);
			}

			if (func_8011D260_12C210(0x4A, -7) == -1) {
				osSyncPrintf(&D_80144534_1534E4);
			}

			if (func_8011D260_12C210(-0x13, -0x1F) == -1) {
				osSyncPrintf(&D_8014457C_15352C);
			}
			/* fallthrough */
		case 2:
		default:
			temp = -1;
			break;
	}

	D_80157F68 = temp;
	D_80157F70 = 0;
	D_80157F8C = 0;
	D_80157F8E = 0;
	D_80068080 = 0;
	D_8004DC60 = 0x25;
	D_80157FB4 = 0;
	D_80157F96 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F0094_FF044.s")

void func_800F0234_FF1E4(void) {
	D_80157F68 = 0;
	D_80157F8C = 0;
	D_80157F8E = 0;
	D_80157F70 = 0;
	D_80157F96 = 0;
	D_80047968 = 1;
}

s32 func_800F026C_FF21C(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s32 temp_v0;
	s32 temp_v1;

	temp_v0 = arg0 - arg2;
	temp_v1 = arg1 - arg3;
	return (s32) sqrtf((f32) ((temp_v0 * temp_v0) + (temp_v1 * temp_v1)));
}

s32 func_800F02E4_FF294(void) {
	return 0;
}

void func_800F02EC_FF29C(s16 arg0)
{
  D_80157F4C = (void *) ((((s32) arg0) * 24) + ((s32) D_80157F58));
  D_80157F50 = (void *) ((s32)D_80157F4C + 0x18);
  D_80157F64 = *((s16 *) ((s32)D_80157F4C + 0xC));
  D_80157F54 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F0340_FF2F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F066C_FF61C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F1004_FFFB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F1134_1000E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F1DDC_100D8C.s")

#ifdef NON_MATCHING
void func_800F2890_101840(u8 arg0, s32 *arg1, s32 *arg2, u8 *arg3) {
	s32 sp1C;
	s32 sp20;

	if (arg0 >= 9) {
		osSyncPrintf(&D_801446A0_153650);
	}

	if (D_80157FF0[arg0] != -1) {
		osSyncPrintf(&D_801446B8_153668);
	}

	if (arg0 < 8 && D_80157FF0[arg0] == -1) {
		*arg1 = *(s32*)&D_80158000[arg0 * 0x170 + 0x10];
		*arg2 = *(s32*)&D_80158000[arg0 * 0x170 + 0x14];
		*arg3 = D_80158000[arg0 * 0x170 + 0x22];
	} else {
		*arg3 = 0xFF;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F2890_101840.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F2980_101930.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F2D48_101CF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F2ED8_101E88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F3038_101FE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F3190_102140.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F32EC_10229C.s")

#ifdef NON_MATCHING
void func_800F34AC_10245C(s32 arg0) {
	if ((arg0 &= 0xFF) >= 9) {
		osSyncPrintf(&D_80144828, arg0);
	}
	
	if (D_80157FF0[arg0] != -1) {
		osSyncPrintf(&D_80144840, arg0);
	}
	
	D_80158000[arg0 * 0x170 + 0x22] = 0x10;
	*(s32*)&D_80158000[arg0 * 0x170] = *(s32*)&D_80158000[arg0 * 0x170 + 0x10];
	*(s32*)&D_80158000[arg0 * 0x170 + 4] = *(s32*)&D_80158000[arg0 * 0x170 + 0x14];
	*(s16*)&D_80158000[arg0 * 0x170 + 0x16A] = *(s16*)&D_8014DD52[alienInstances[D_80158000[arg0 * 0x170 + 0x144]].unkC * 0x10] + alienInstances[D_80158000[arg0 * 0x170 + 0x144]].unk2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F34AC_10245C.s")
#endif

void func_800F3580_102530(u8 arg0) {
	D_80158022[arg0 * 0x170] = 0;
}

#ifdef NON_MATCHING
void func_800F35AC_10255C(u8 arg0, s16 arg1) {
	u8 temp_v1;
	
	temp_v1 = arg0;
	
	if (arg0 >= 9) {
		osSyncPrintf(&D_80144868);
	}
	
	if (D_80157FF0[arg0] != -1) {
		osSyncPrintf(&D_80144880);
	}
	
	if (temp_v1 < 8 && D_80157FF0[arg0] == -1) {
		*(s16*)&D_80158020[arg0 * 0x170] = arg1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F35AC_10255C.s")
#endif

#ifdef NON_MATCHING
void func_800F3670_102620(void) {
	u8 i;

	D_80157FF8 = 0;
	for (i = 0; i < 8; i++) {
		D_80157FF0[i] = i;
	}
	{
		u8 j;
		for (j = 0; j < 12; j++) {
			*(Unk801470C0Entry *)(D_801601F0 + j * 0x16) =
				*(Unk801470C0Entry *)(D_801470C0_156070 + currentLevel * 0x108 + j * 0x16 - 0x108);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F3670_102620.s")
#endif

void func_800F375C_10270C(s8 arg0) {
    osSyncPrintf(&D_801448A8_153858, arg0, D_80157FF8, &D_80157FF8);
    if (arg0 >= 8 || arg0 < -1) {
        osSyncPrintf(&D_801448D0_153880, arg0);
        return;
    }
    if (D_80157FF0[arg0] != -1 && arg0 != -1) {
        osSyncPrintf(&D_801448E8_153898, arg0);
        return;
    }
    if (arg0 == -1) {
        for (arg0 = 0; arg0 < 8; arg0++) {
            D_80157FF0[arg0] = arg0;
        }
        D_80157FF8 = 0;
        return;
    }
    D_80157FF0[arg0] = arg0;
    D_80157FF8--;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F384C_1027FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F3990_102940.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F3EE4_102E94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F4028_102FD8.s")

s32 func_800F41E0_103190(s32 arg0, s32 arg1, s16 arg2, s16 arg3) {
	return (s32) (((arg3 - arg2) * arg0) + (arg1 * arg2)) / arg3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F4258_103208.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F450C_1034BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F4748_1036F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F49A4_103954.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F4DB0_103D60.s")

void func_800F54AC_10445C(Vec3f *arg0, Vec3f *arg1) {
	f32 x = arg0->x;
	f32 lenSq = (arg0->z * arg0->z) + (x * x + arg0->y * arg0->y);

	if (lenSq == 0.0f) {
		arg1->x = x;
		arg1->y = arg0->y;
		arg1->z = arg0->z;
	} else {
		f32 len = sqrtf(lenSq);
		arg1->x = arg0->x / len;
		arg1->y = arg0->y / len;
		arg1->z = arg0->z / len;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F554C_1044FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F63D0_105380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F7790_106740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F842C_1073DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F8B24_107AD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F9118_1080C8.s")

// DrawLegsShadows ?
void func_800F97FC_1087AC(void) {
	s32 i;

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PASS2);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);

	for (i = 0; i < 8; i++) {
		func_800F9118_1080C8(i);
	}

	gDPPipeSync(D_8005BB2C++);
}

// drawLegs
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F98C0_108870.s")

s32 func_800F9C40_108BF0(s32 arg0) { return arg0 * arg0; }

s16 func_800F9C50_108C00(s16 arg0, s16 arg1) {
	s16 temp_v1;

	temp_v1 = arg0 - arg1;

	if (temp_v1 >= 0x8000) {
		return (s16)(0x10000 - temp_v1);
	}
	if (temp_v1 < -0x8000) {
		return (s16)(temp_v1 + 0x10000);
	}
	return temp_v1;
}

void func_800F9CB0_108C60(s16 arg0, s16 *arg1, s16 arg2) {
	s32 sp1C;

	sp1C = func_800F9C40_108BF0(arg0 - D_80159218);
	if ((u32)(func_800F9C40_108BF0(arg2 - D_8015921C) + sp1C) < 0x9C4U) {
		*arg1 += 0x14;
	}
}

s16 func_800F9D24_108CD4(s16 arg0, s16 arg1) {
	return (s16)(func_800B84D0_C7480(arg0, arg1) >> 8);
}

#ifdef NON_MATCHING
s16 func_800F9D60_108D10(s16 arg0, s16 arg1, s16 *arg2, s16 *arg3, s16 *arg4) {
	s16 sp22;
	s16 temp_v0;
	s32 var_v1;

	*arg2 = (s16)(func_800B85CC_C757C(arg0, arg1) >> 8);
	var_v1 = func_8011E6FC_12D6AC(arg0, arg1, &sp22);
	if (var_v1 != -1) {
		*arg3 = D_80050ADA[var_v1].unk0;
		*arg4 = sp22;
	} else {
		temp_v0 = *arg2;
		*arg3 = temp_v0;
		*arg4 = temp_v0;
	}
	return (s16)var_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F9D60_108D10.s")
#endif

#ifdef NON_MATCHING
s16 func_800F9E0C_108DBC(s16 arg0, s16 arg1, s16 *arg2, s16 *arg3, s16 *arg4, s32 arg5, s32 arg6) {
	s16 sp2A;
	s32 temp_v0;

	*arg2 = (s16)(func_800B85CC_C757C(arg0, arg1) >> 8);
	temp_v0 = func_8011E788_12D738(arg0, arg1, &sp2A, arg5, arg6);
	if (temp_v0 != -1) {
		*arg3 = D_80050ADA[temp_v0].unk0;
		*arg4 = sp2A;
	} else {
		*arg3 = *arg2;
		*arg4 = *arg2;
	}
	return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800F9E0C_108DBC.s")
#endif

s16 func_800F9EC4_108E74(s16 arg0, s16 arg1) {
	return (s16)(func_800B85CC_C757C(arg0, arg1) >> 8);
}

s16 func_800F9F00_108EB0(s16 arg0, s16 arg1) {
	s32 var_a1;
	s16 temp_v1;
	s32 var_v1;

	temp_v1 = (s16)(func_800B85CC_C757C(arg0, arg1) >> 8);
	var_v1 = D_80222A70;
	if (var_v1 < temp_v1) {
		var_a1 = temp_v1;
	} else {
		var_a1 = var_v1;
	}
	return (s16)var_a1;
}

s16 func_800F9F64_108F14(s16 arg0, s16 arg1) {
	s16 sp26;
	s16 sp24;
	s16 sp22;
	func_800F9D60_108D10(arg0, arg1, &sp22, &sp26, &sp24);
	return sp24;
}

s16 func_800F9FAC_108F5C(s16 arg0, s16 arg1) {
	s16 sp2E;
	s16 sp2C;
	s16 sp2A;
	s32 var_v1;

	func_800F9D60_108D10(arg0, arg1, &sp2A, &sp2E, &sp2C);
	if (D_80222A70 < sp2C) {
		var_v1 = sp2C;
	} else {
		var_v1 = D_80222A70;
	}
	return (s16) var_v1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FA018_108FC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FA40C_1093BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FA690_109640.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FA7F0_1097A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FAA08_1099B8.s")

s16 func_800FAB9C_109B4C(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s32 sp1C;
	s32 sp18;
	f32 temp_f2;
	f32 var_f0;
	s32 temp_v1;
	s32 temp_a0;

	sp1C = func_800B84D0_C7480(arg0, arg1) >> 8;
	temp_v1 = arg2 - arg0;
	temp_a0 = arg3 - arg1;
	sp18 = func_800B84D0_C7480(arg2, arg3) >> 8;
	temp_f2 = (f32)(sp18 - sp1C) / (f32)(s32)sqrtf((f32)(temp_v1 * temp_v1 + temp_a0 * temp_a0)) * 8.0f;
	if (temp_f2 >= 0.0f) {
		var_f0 = temp_f2;
	} else {
		var_f0 = -temp_f2;
	}
	return (s16)(s32)var_f0;
}

void func_800FAC90_109C40(void) {
	VehicleInstance *var_s0;
	VehicleInstance *end;

	var_s0 = vehicleInstances, end = (VehicleInstance *)&D_80050AD0;
	do {
		if (func_800B0D10_BFCC0(var_s0->unk0, var_s0->unk4, 0) != 0) {
			var_s0->unk20 = var_s0->unk20 & ~0x40;
		} else {
			var_s0->unk20 = var_s0->unk20 | 0x40;
		}
		var_s0++;
	} while (var_s0 != end);
}

#ifdef NON_MATCHING
void func_800FAD10_109CC0(void) {
	VehicleInstance *var_v1;
	s8 var_v0;

	D_80158FD8 = 0;
	var_v1 = vehicleInstances;
	var_v0 = 0;
	do {
		if (var_v1[0].unk20 & 0x8000) {
			D_80158E80[D_80158FD8] = var_v0;
			D_80158FD8++;
		}
		if (var_v1[1].unk20 & 0x8000) {
			D_80158E80[D_80158FD8] = var_v0 + 1;
			D_80158FD8++;
		}
		if (var_v1[2].unk20 & 0x8000) {
			D_80158E80[D_80158FD8] = var_v0 + 2;
			D_80158FD8++;
		}
		if (var_v1[3].unk20 & 0x8000) {
			D_80158E80[D_80158FD8] = var_v0 + 3;
			D_80158FD8++;
		}
		var_v0 += 4;
		var_v1 += 4;
	} while (var_v0 != 0x80);
	D_80159320 &= ~0x2000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FAD10_109CC0.s")
#endif

s16 func_800FADF8_109DA8(s16 arg0) {
	s32 var_v1;

	var_v1 = D_80158FD8;
	if (var_v1--) {
		do {
			if (arg0 == D_80158E80[var_v1]) {
				return var_v1;
			}
		} while (var_v1--);
	}
	return -1;
}

s16 func_800FAE60_109E10(VehicleInstance *arg0) {
	return (s16)(arg0 - vehicleInstances);
}

void func_800FAE84_109E34(VehicleInstance *arg0) {
    VehicleSpec *spec = &vehicleSpecs[arg0->unk1A];
    arg0->unk0 = 0;
    arg0->unk2 = 0;
    arg0->unk4 = 0;
    arg0->unkE = 0;
    arg0->unk10 = 0;
    arg0->unk12 = 0;
    arg0->unk6 = 0;
    arg0->unk8 = 0;
    arg0->unkA = 0;
    arg0->unkC = -2;
    arg0->unk22 = 0;
    arg0->unk24 = 0;
    arg0->unk26 = 0;
    arg0->unk20 = spec->unk4C;
    arg0->unk1C = spec->hitPoints;
    arg0->unk14 = 0;
    arg0->unk16 = 0;
    arg0->unk18 = 0;
    arg0->unk28 = 0;
    arg0->unk2A = 0;
    arg0->unk2E = 0xFA;
    arg0->unk1E = 0;
    arg0->unk30 = 0.0f;
    arg0->unk34 = 0.0f;
    arg0->unk38 = 0.0f;
    arg0->unk3C = (s16)(spec->unk61 << 8);
    arg0->unk40 = 0;
    arg0->unk42 = 0;
    arg0->unk46 = arg0->unk46 & 0xFFC0;
    arg0->unk4C = 0.0f;
    arg0->unk50 = 0.0f;
    arg0->unk54 = 0.0f;
    arg0->unk58 = 0.0f;
    D_80158C58[func_800FAE60_109E10(arg0)] = 0.0f;
}

f32 func_800FAF74_109F24(VehicleInstance *arg0, VehicleInstance *arg1) {
	f32 temp_f0 = arg0->unk4C - arg1->unk4C;
	f32 temp_f2 = arg0->unk54 - arg1->unk54;
	return sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
}

void *func_800FAFB8_109F68(VehicleInstance *arg0) {
	if (arg0->unkC == -2) {
		return &vehicleSpecs[arg0->unk1A];
	}
	return &alienSpecs[arg0->unk1A];
}

f32 func_800FB014_109FC4(VehicleInstance *arg0) {
	s16 sp1E;

	sp1E = coss(arg0->unkE);
	return (f32)(((f64)(f32)coss(arg0->unk10) / 32768.0) * ((f64)(f32)sp1E / 32768.0) * (f64)arg0->unk58 + (f64)arg0->unk30);
}

f32 func_800FB098_10A048(VehicleInstance *arg0) {
	s16 sp1E;

	sp1E = sins(arg0->unkE);
	return (f32)(((f64)(f32)coss(arg0->unk10) / 32768.0) * ((f64)(f32)sp1E / 32768.0) * (f64)arg0->unk58 + (f64)arg0->unk38);
}

f32 func_800FB11C_10A0CC(VehicleInstance *arg0) {
	f32 sp1C = func_800FB014_109FC4(arg0);
	f32 temp_f0 = func_800FB098_10A048(arg0);
	return sqrtf((sp1C * sp1C) + (temp_f0 * temp_f0));
}

#ifdef NON_MATCHING
s16 func_800FB160_10A110(VehicleInstance *arg0) {
	f32 sp1C;
	f32 sp18;
	f32 var_f16;
	f32 var_f2;
	s16 temp;

	sp1C = func_800FB014_109FC4(arg0);
	sp18 = func_800FB098_10A048(arg0);
	var_f16 = (-sp1C < sp1C) ? sp1C : -sp1C;
	var_f2 = (-sp18 < sp18) ? sp18 : -sp18;
	
	if ((f64)(var_f2 + var_f16) < 1.0) {
		if (arg0->unk58 < 0.0f) {
			return arg0->unk6;
		}
		temp = arg0->unk6;
		temp = -temp;
		return temp;
	}
	return func_80003824_4424(sp1C, sp18);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FB160_10A110.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FB238_10A1E8.s")

void func_800FB3A0_10A350(VehicleInstance *arg0, f32 arg1) {
	arg0->unk58 = arg0->unk58 + arg1;
	arg0->unk12 = (s16)(s32)arg0->unk58;
}

void func_800FB3C4_10A374(VehicleInstance *arg0, f32 arg1) {
	arg0->unk4C = arg0->unk4C + arg1;
	arg0->unk0 = (s16)(s32)arg0->unk4C;
}

void func_800FB3E8_10A398(VehicleInstance *arg0, f32 arg1) {
	arg0->unk50 = arg0->unk50 + arg1;
	arg0->unk2 = (s16)(s32)arg0->unk50;
}

void func_800FB40C_10A3BC(VehicleInstance *arg0, f32 arg1) {
	arg0->unk54 = arg0->unk54 + arg1;
	arg0->unk4 = (s16)(s32)arg0->unk54;
}

void func_800FB430_10A3E0(VehicleInstance *arg0, f32 arg1) { arg0->unk58 = arg1; arg0->unk12 = (s16)(s32)arg1; }

void func_800FB44C_10A3FC(VehicleInstance *arg0, f32 arg1) { arg0->unk4C = arg1; arg0->unk0 = (s16)(s32)arg1; }

void func_800FB468_10A418(VehicleInstance *arg0, f32 arg1) { arg0->unk50 = arg1; arg0->unk2 = (s16)(s32)arg1; }

void func_800FB484_10A434(VehicleInstance *arg0, f32 arg1) { arg0->unk54 = arg1; arg0->unk4 = (s16)(s32)arg1; }

void func_800FB4A0_10A450(s16 arg0, s16 arg1, s16 arg2) {
	s32 temp_v0;
	s32 temp_v1;

	temp_v0 = D_801593E8;
	temp_v1 = temp_v0 * 2;
	*(s16 *)((u8 *)D_80159328 + temp_v1) = arg0;
	*(s16 *)((u8 *)D_80159368 + temp_v1) = arg1;
	*(s16 *)((u8 *)D_801593A8 + temp_v1) = arg2;
	D_801593E8 = temp_v0 + 1;
	if (D_801593E8 >= 0x20) {
		D_801593E8 = 0;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FB504_10A4B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FC1CC_10B17C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FC434_10B3E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FC568_10B518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FC7E0_10B790.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FC90C_10B8BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FCA5C_10BA0C.s")

void func_800FD0EC_10C09C(void) {
	D_80159310 += 2;
	D_8015930C += D_80159310;
	if (D_8015930C >= 0x261A) {
		D_8015930E = 0;
		D_8015930C = 0x2619;
		D_8015920C = 0;
	}
	if (D_80052B34->unk3C == 0) {
		D_8015930E = 0;
		D_8015920C = 0;
	}
}

void func_800FD168_10C118(void) {
	D_80159310 += 1;
	D_8015930C += D_80159310;
	if (D_8015930C >= 0x1195) {
		D_8015930E = 0;
		D_8015930C = 0x1194;
		D_8015920C = 0;
	}
	if (D_80052B34->unk3C == 0) {
		D_8015930E = 0;
		D_8015920C = 0;
	}
}

void func_800FD1E4_10C194(void) {
	if (D_80159310++ >= 0x10) {
		D_8015930E = 0;
		D_8015920C = 0;
	}
}

void func_800FD218_10C1C8(void) {
	if (D_80159310++ >= 0x15) {
		D_8015930E = 0;
		D_8015920C = 0;
	}
	D_80052B34->unk20 |= 2;
	D_80159304 = func_800065A4_71A4(0, 0x6E, D_80159310 * 2978);
}

void func_800FD2AC_10C25C(void) {
	if (D_80052B34->unk3C != 0 && D_8015920C == 0) {
		D_8015930E = 1;
		D_8015920C = (s32)func_800FD0EC_10C09C;
		D_80159310 = 0;
	}
}

void func_800FD2F8_10C2A8(void) {
	if (D_80052B34->unk3C != 0 && D_8015920C == 0) {
		D_8015930E = 1;
		D_8015920C = (s32)func_800FD0EC_10C09C;
		D_80159310 = 0;
	}
}

void func_800FD344_10C2F4(void) {
	if (D_80052B34->unk3C != 0 && D_8015920C == 0) {
		D_8015930E = 1;
		D_8015920C = (s32)func_800FD168_10C118;
		D_80159310 = 0;
	}
}

extern void func_800FD218_10C1C8(void);

void func_800FD390_10C340(void) {
	if (D_8015920C == 0) {
		D_8015930E = 1;
		D_8015920C = (s32)func_800FD218_10C1C8;
		D_80159310 = 0;
		D_80052B34->unk20 |= 2;
		func_800FB3E8_10A398(D_80052B34, 1.0f);
		D_80052B34->unk2E++;
	}
}

void func_800FD410_10C3C0(VehicleSpec *spec) {
	switch (spec->unk58) {
	case 1:
		func_800FD2AC_10C25C();
		break;
	case 3:
		func_800FD2F8_10C2A8();
		break;
	case 5:
		func_800FD390_10C340();
		break;
	case 7:
		func_800FD344_10C2F4();
		break;
	}

	if ((currentLevel == 2) && (((s32) (spec - vehicleSpecs)) == 7)) {   
		D_80159318 = -0xFB4;
	}
}

void func_800FD4D4_10C484(void *arg0) {
	u8 temp_v0;
	temp_v0 = *(u8 *)((u8 *)arg0 + 0x58);
	if ((temp_v0 == 2) || (temp_v0 == 4) || (temp_v0 == 8)) {
		D_8015930C = 0;
		D_80159310 = 0;
		D_8015920C = 0;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FD510_10C4C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FD858_10C808.s")

void func_800FDB00_10CAB0(void) {
	func_800156C8_162C8(0x10);
	D_801591AC = 4;
	func_800E7B20_F6AD0((s32)D_80052B34, 3);
	D_80159314 = 0x5A;
	D_80052B2C->unk1C = 0x5DC;
}

void func_800FDB58_10CB08(VehicleInstance *arg0) {
	func_80124170_133120(arg0->unk0, arg0->unk2, arg0->unk4, 0x1D4C0, 0xDAC, arg0);
	func_800FDD8C_10CD3C(arg0);
	func_800D6ADC_E5A8C(arg0->unk0, arg0->unk2, arg0->unk4, 5);
	func_800B8F30_C7EE0((s16)(arg0->unk0 >> 8), (s16)(arg0->unk4 >> 8), 0);
	func_800072CC_7ECC(0x1C);
	if (!(vehicleInstances[D_80159316].unk20 & 0x8000)) {
		func_80006DAC_79AC(0x50, 0);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FDC30_10CBE0.s")

void func_800FDD48_10CCF8(s16 arg0) {
	s16 temp_v0 = func_800FADF8_109DA8(arg0);
	if (temp_v0 != -1) {
		func_800FDC30_10CBE0(temp_v0);
	}
}

#ifdef NON_MATCHING
void func_800FDD8C_10CD3C(VehicleInstance *arg0) {
	s16 i = 0x7F;
	if (arg0 != &D_80050A74) {
		while (i--) {
			if (arg0 == &vehicleInstances[i]) {
				break;
			}
		}
	}
	if (i >= 0) {
		func_800FDD48_10CCF8(i);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FDD8C_10CD3C.s")
#endif

void func_800FDE00_10CDB0(void) {
	extern VehicleInstance *D_80158F8C;
	extern Vec3f D_80159188;

	if ((D_80159320 & 2) && (D_80158F8C->unkC == -2)) {
		D_80158F8C->unk30 = D_80159188.x;
		D_80158F8C->unk34 = D_80159188.y;
		D_80158F8C->unk38 = D_80159188.z;
		D_80158F8C->unk12 = 0;
		D_80158F8C->unk58 = 0.0f;
		D_80158F8C->unk20 |= 3;
		D_80158F8C = 0;
		D_80159320 &= ~2;
		D_80159320 |= 0x80000000;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FDEA8_10CE58.s")

void func_800FE910_10D8C0(s32 arg0) {
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, 0, 0, D_8005BB38);
}

void func_800FE954_10D904(s32 arg0) {
	D_80052B48.unk0 = 0x7FFF;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FE9AC_10D95C(s32 arg0) {
	D_80052B48.unk0 = (s16)(D_80052A8C * 8754);
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FEA2C_10D9DC(s32 arg0) {
	Unk80052B40 *entry = &D_8013FDA8_14ED58[arg0].unk8;
	D_80052B40.unk0 = entry->unk0;
	D_80052B40.unk2 = entry->unk2;
	D_80052B40.unk4 = entry->unk4 - D_801591C0 * 2;
	func_800039D0_45D0(&D_80052B40, 0, 0, D_8005BB38);
}

void func_800FEAA0_10DA50(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = (s16)func_800038E0_44E0();
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FEB04_10DAB4(s32 arg0) {
	D_80052B50.unk0 = 0x37;
	D_80052B50.unk2 = 0x37;
	D_80052B50.unk4 = 0x37;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, 0, &D_80052B50, D_8005BB38);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FEB5C_10DB0C.s")

void func_800FEC78_10DC28(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = D_801591C2;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FECD4_10DC84(s32 arg0) {
	D_80052B48.unk0 = (s16)((D_80052B34->unk12 > 0 ? -0xD : 0xD) * D_80052B34->unk22);
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = (s16)D_801591C2;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FED60_10DD10(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = D_80159246;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FEDBC_10DD6C.s")

void func_800FF164_10E114(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = -D_80158C50;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF1C4_10E174(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = func_800065A4_71A4(0, -0xA28, (u16)(D_80159274 << 11));
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
	guMtxCatL(D_8005BB38, &D_801592C0, &D_801592C0);
}

void func_800FF258_10E208(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = (s16)func_800038E0_44E0();
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF2BC_10E26C(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = (s16)func_800038E0_44E0();
	D_80052B48.unk4 = 0;
	D_80052B50.unk0 = 0x3A1;
	D_80052B50.unk2 = 0x3A1;
	D_80052B50.unk4 = 0x3A1;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, &D_80052B50, D_8005BB38);
}

void func_800FF334_10E2E4(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = D_8015930A;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FF390_10E340.s")

void func_800FF5A8_10E558(s32 arg0) {
	D_80052B48.unk0 = D_8015930A;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF604_10E5B4(s32 arg0) {
	D_80052B48.unk0 = -D_8015930A;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF664_10E614(s32 arg0) {
	D_80052B48.unk0 = D_80159232;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF6C0_10E670(s32 arg0) {
	D_80052B48.unk0 = -D_80159232;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF720_10E6D0(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = D_80159308;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
	guMtxCatL(D_8005BB38, &D_801592C0, &D_801592C0);
}

void func_800FF794_10E744(s32 arg0) {
	D_80052B48.unk0 = D_80052B2C->unk36;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
	guMtxCatL(D_8005BB38, &D_801592C0, &D_801592C0);
}

void func_800FF80C_10E7BC(s32 arg0) {
	s16 temp = D_80052B2C->unk36;

	if (temp < 0) {
		temp = 0;
	}

	if (temp >= 0x2711) {
		D_80052B2C->unk36 = 0x2710;
		temp = 0x2710;
	}

	D_80052B48.unk0 = temp;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF88C_10E83C(s32 arg0) {
	s16 temp = D_80052B2C->unk36;

	if (temp < -0x2710) {
		D_80052B2C->unk36 = -0x2710;
		temp = -0x2710;
	}

	if (temp > 0) {
		temp = 0;
	}

	D_80052B48.unk0 = temp;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FF90C_10E8BC(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = -D_80159318;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
	guMtxCatL(&D_801592C0, D_8005BB38, &D_801592C0);
}

void func_800FF984_10E934(s32 arg0) {
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = (s16)((-0xFB4) - D_80159318);
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
	guMtxCatL(&D_801592C0, D_8005BB38, &D_801592C0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FFA00_10E9B0.s")

void func_800FFC3C_10EBEC(s32 arg0) {
	D_80052B48.unk0 = 0;
	if (arg0 & 1) {
		D_80052B48.unk2 = (s16)D_801591CA;
	} else {
		D_80052B48.unk2 = (s16)-D_801591CA;
	}
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_8013FDA8_14ED58[arg0].unk8, &D_80052B48, 0, D_8005BB38);
}

void func_800FFCB8_10EC68(s32 arg0) {
	Unk80052B40 *sp = &D_8013FDA8_14ED58[arg0].unk8;

	D_80052B40.unk0 = sp->unk0;
	D_80052B40.unk2 = sp->unk2;
	D_80052B40.unk4 = sp->unk4 - D_801591C0;
	func_800039D0_45D0(&D_80052B40, 0, 0, D_8005BB38);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_800FFD28_10ECD8.s")

void func_80100114_10F0C4(VehicleInstance *arg0) {
	D_80052B40.unk0 = (s16)(s32)arg0->unk4C;
	D_80052B40.unk2 = (s16)(s32)arg0->unk50;
	D_80052B40.unk4 = (s16)(s32)arg0->unk54;
	D_80052B48.unk0 = (s16)(0x4000 - arg0->unk6);
	D_80052B48.unk2 = (s16)-arg0->unk8;
	D_80052B48.unk4 = (s16)arg0->unkA;
	func_800039D0_45D0(&D_80052B40, &D_80052B48, 0, (s32)&D_801592C0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801001B4_10F164.s")

void func_801005CC_10F57C(s32 arg0, s32 arg1) {
	VehicleInstance *sp1C;

	if (!(D_80159320 & 0x800000)) {
		sp1C = func_80109960_118910();
		D_8015EA38 = D_8015EA34;
		func_800FB484_10A434(sp1C, D_8015EA34);
		D_80159248 = 0;
		func_800FB430_10A3E0(sp1C, 0);
	}
}

void func_80100638_10F5E8(u8 arg0, u8 arg1) {
	D_80159320 |= 0x800000;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010065C_10F60C.s")

// drawDeadVehicles
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80101C14_110BC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80101EF4_110EA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801022F4_1112A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80102600_1115B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801027E8_111798.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80102A0C_1119BC.s")

void func_80102D00_111CB0(VehicleInstance *arg0, f32 arg1, f32 arg2, f32 arg3) {
	if (arg0->unk1C <= 0) {
		return;
	}
	if (gameplayMode != 1 && arg0 == D_80052B34) {
		return;
	}
	arg0->unk30 += arg1;
	arg0->unk34 += arg2;
	arg0->unk38 += arg3;
	if (arg2 > 0.0f) {
		if (!(arg0->unk20 & 2)) {
			arg0->unk20 |= 2;
			arg0->unk10 = 0;
			func_800FB3E8_10A398(arg0, 1.0f);
		}
	}
	arg0->unk20 |= 1;
	if (arg0 == D_80052B34) {
		D_80157A2C = func_80003824_4424(arg1, arg3);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80102DDC_111D8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80102FA4_111F54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80103308_1122B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80103760_112710.s")

void func_80103D18_112CC8(VehicleInstance *arg0, VehicleInstance *arg1) {
	func_80103760_112710(arg0, D_80158F8C);
	arg1->unk12 = 0;
	arg0->unk20 |= 1;
	if (arg1->unkC == -2 && arg1->unk20 & 2) {
		arg1->unk2A = 0;
		arg1->unk28 = 0;
		arg1->unk26 = -arg1->unkA >> 1;
		arg1->unk24 = -arg1->unk8 >> 1;
		arg1->unk22 = (s16)(s32)((f64)arg1->unk22 * D_80144AC0_153A70);
	}
}

void func_80103DD0_112D80(void) {
	s16 temp_v1;

	if (D_80052B34->unk1A != 0x13) {
		temp_v1 = D_80052B34->unk3C;
		if (temp_v1 > 0) {
			if (temp_v1 == 0x5DC) {
				func_8001A650_1B250(3);
				temp_v1 = D_80052B34->unk3C;
			}
			if (temp_v1 == 2) {
				func_8001A650_1B250(0xE);
				temp_v1 = D_80052B34->unk3C;
			}
			D_80052B34->unk3C = temp_v1 - 2;
		}
	}
}

// Do vehicle acceleration?
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80103E54_112E04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801047C8_113778.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80104E00_113DB0.s")

// The button press check is Z to shoot the gun.
// Skiiping this call stops adam responding to input
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801052E8_114298.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80106628_1155D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80107184_116134.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801073FC_1163AC.s")

void func_80107890_116840(VehicleInstance *arg0) {
	VehicleSpec *specPtr;
	WeaponSpecEntry *tableEntry;
	s16 retVal;

	specPtr = &vehicleSpecs[arg0->unk1A];
	tableEntry = &D_80140768_14F718[specPtr->unk55];

	if (specPtr->unk4C & 0x20000000) {
		retVal = func_800FA018_108FC8(arg0, arg0->unk6, specPtr->unk36, tableEntry);
		if (tableEntry->unk8 < arg0->unkA - retVal) {
			func_80123E90_132E40(arg0, (s16)((arg0->unkA - retVal - tableEntry->unk8) >> 2));
		}
		if (currentLevel == LEVEL_SIBERIA && arg0->unk1A == 0xE) {
			func_800FDB58_10CB08(arg0);
		}
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80107970_116920.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80107EBC_116E6C.s")

s16 func_80108138_1170E8(s16 arg0, s16 arg1, s16 arg2) {
	s16 sp1E;
	s16 temp_v0;
	s32 var_a0;

	temp_v0 = func_8011E6FC_12D6AC(arg0, arg2, &sp1E);
	var_a0 = sp1E >= (arg1 - 0xA);
	if (var_a0) {
		var_a0 = (temp_v0 + 1) != 0;
	}
	return var_a0;
}

s16 func_801081AC_11715C(s16 arg0, s16 arg1) {
	s16 sp1E;
	return (s16) ((func_8011E6FC_12D6AC(arg0, arg1, &sp1E) + 1) != 0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801081F0_1171A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010895C_11790C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80108B48_117AF8.s")

void func_80108CA8_117C58(VehicleInstance *arg0) {
	arg0->unk8 = arg0->unk8 + arg0->unk24;
	arg0->unkA = arg0->unkA + arg0->unk26;
	arg0->unk6 = arg0->unk6 + arg0->unk22 + arg0->unk16;
	arg0->unk16 = arg0->unk16 >> 1;
	arg0->unk34 = arg0->unk34 - 1.0f;
	if (arg0->unk22 >= 0x7D1) {
		arg0->unk22 = 0x7D0;
	}
	if (arg0->unk22 < -0x7D0) {
		arg0->unk22 = -0x7D0;
	}
	if (arg0->unk24 >= 0x7D1) {
		arg0->unk24 = 0x7D0;
	}
	if (arg0->unk24 < -0x7D0) {
		arg0->unk24 = -0x7D0;
	}
	if (arg0->unk26 >= 0x7D1) {
		arg0->unk26 = 0x7D0;
	}
	if (arg0->unk26 < -0x7D0) {
		arg0->unk26 = -0x7D0;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80108D80_117D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80109370_118320.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_801095BC_11856C.s")

void func_801098E8_118898(VehicleInstance *vehicle) {
	D_8015922C = &D_8003E290[func_800056D0_62D0(vehicle->unk0, vehicle->unk4)];
	if ((vehicle->unk20 & VEHICLE_FLAG_ON_BRIDGE) && (currentLevel != LEVEL_COMET)) {
		D_8015922C = &D_8003E3A0;
	}
}

VehicleInstance *func_80109960_118910(void)
{
  s32 i;
  for (i = 0x80; i--;)
  {
	if (vehicleInstances[i].unk1A == 5)
	{
	  return &vehicleInstances[i];
	}
  }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010999C_11894C.s")

void func_80109B34_118AE4(VehicleInstance *arg0, f32 arg1, f32 arg2) {
	func_800FB430_10A3E0(arg0, 0.0f);
	arg0->unk30 = arg1;
	arg0->unk38 = arg2;
}

void func_80109B74_118B24(VehicleInstance *arg0) {
	if ((gameplayMode != 0xB) && (D_8015922C->unk8 == 0x1F5) && !(arg0->unk20 & 2)) {
		if (!(D_80052A8C & 3) && (arg0->unk1A == 0)) {
			func_800C3BD8_D2B88(arg0->unk0, arg0->unk2, arg0->unk4, 0x10, 2, 0xFF, 0xEE, 0);
		}
		if ((currentLevel == 2) && ((arg0->unk1A == 0x10) || (arg0->unk1A == 2))) {
			func_80123E90_132E40(arg0, 4);
			return;
		}
		if (currentLevel == 5) {
			func_80123E90_132E40(arg0, 0x18);
			return;
		}
		func_80123E90_132E40(arg0, 8);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80109C84_118C34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010ADA4_119D54.s")

void func_8010B5C8_11A578(VehicleInstance *arg0, f32 arg1) {
	func_800FB430_10A3E0(arg0, 0.0f);
	arg0->unk30 = 0.0f;
	arg0->unk34 = 0.0f;
	arg0->unk38 = 0.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010B60C_11A5BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010B804_11A7B4.s")

s32 func_8010B970_11A920(u8 *arg0, VehicleInstance *arg1) {
	VehicleSpec *sp1C;
	s32 sp18;

	sp1C = &vehicleSpecs[arg1->unk1A];
	if (func_80078FE0_87F90(arg0, arg1, &sp18) != 0 ||
			((sp1C->unk4C & 0x20000000) && (arg1->unk20 & 2))) {
		func_800792E0_88290(arg0, sp18);
		func_80014180_14D80(0);
		return 1;
	}
	return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010BA04_11A9B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010C14C_11B0FC.s")

void func_8010C454_11B404(void) {
	VehicleInstance *vehicle;

	if (D_80159314-- == 0) {
		vehicle = D_80052B34;
		if (vehicle != vehicleInstances + D_80159316) {
			func_800FD510_10C4C0(0, D_80159316);
			vehicle = D_80052B34;
		}
		func_800E7B20_F6AD0(vehicle, D_801493D8);
		D_801591AC = 0;
		D_8015930E = 0;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010C4EC_11B49C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010CA38_11B9E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010CF7C_11BF2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010D234_11C1E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010D4EC_11C49C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010DC00_11CBB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010E040_11CFF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010E480_11D430.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010E684_11D634.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010EA54_11DA04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010ED84_11DD34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010EF40_11DEF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010F218_11E1C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010F5D8_11E588.s")

#ifdef NON_MATCHING
s32 func_8010F72C_11E6DC(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	BuildingInstance *building;
	s16 idx;
	s16 temp;

	idx = func_8011D260_12C210((s8)(arg0 >> 8), (s8)(arg2 >> 8));
	if (idx == -1) {
		return 0;
	}

	building = &buildingInstances[idx];
	if ((building->buildingType != 0x1F) && (D_8015EA28 != building->buildingType)) {
		return 0;
	}

	if ((arg1 + arg3) < building->yCoord) {
		return 0;
	}

	temp = arg2;
	if (building->unk8 & 1) {
		temp = arg0;
	}

	temp = (temp & 0xFF) >> 2;
	if (temp < 9) {
		return 1;
	}

	return temp >= 0x38;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010F72C_11E6DC.s")
#endif

#ifdef NON_MATCHING
void func_8010F834_11E7E4(Unk80052B40 *arg0, s32 arg1, s32 arg2, s32 arg3) {
	float fx = (float)(arg0->unk0 - arg1);
	float fy = (float)(arg0->unk2 - arg2);
	float fz = (float)(arg0->unk4 - arg3);
	float len = sqrtf(fx * fx + fy * fy + fz * fz);
	float nx;
	float ny;
	float nz;
	u16 flags;

	if (len == 0.0f) {
		return;
	}

	nx = fx / len;
	ny = fy / len;
	nz = fz / len;

	/* read halfword at offset 0x20 from the base pointer (outer struct flag) */
	flags = *(u16 *)((char *)arg0 + 0x20);

	if (!(flags & 2)) {
		ny = 0.0f;
	} else if (0.0f < ny) {
		ny *= 2.0f;
	}

	/* store length into offsets 0x30,0x34,0x38 relative to base */
	*(float *)((char *)arg0 + 0x30) = len;
	*(float *)((char *)arg0 + 0x34) = len;
	*(float *)((char *)arg0 + 0x38) = len;

	/* scale normalized vector by 10 and call handler */
	func_80102D00_111CB0((VehicleInstance *)arg0, nx * 10.0f, ny * 10.0f, nz * 10.0f);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010F834_11E7E4.s")
#endif

void func_8010F93C_11E8EC(Unk80052B40 *arg0, Unk80052B40 *arg1) {
	func_8010F834_11E7E4(arg0, arg1->unk0, arg1->unk2, arg1->unk4);
}

void func_8010F96C_11E91C(Unk80052B40 *arg0, Unk80052B40_fp *arg1)
{
  Unk80052B40_fp *temp = arg1;
  func_8010F834_11E7E4(arg0, arg1->unk0 >> 16, temp->unk4 >> 16, temp->unk8 >> 16);
}

void func_8010F9B4_11E964(Unk80052B40 *arg0, s32 arg1) {
    s32 var_s0;
    s32 var_a2;
    s32 var_a3;
    Unk80259D90 *entry;

    if (arg1 == -1) {
        var_s0 = arg0->unk0 + 1;
        var_a2 = arg0->unk2;
        var_a3 = arg0->unk4;
    } else {
        entry = &D_80259D90[arg1];
        if (entry->unk0 >= 0xE) {
            var_s0 = (entry->unk40 + entry->unk20) / 2;
            var_a2 = (entry->unk42 + entry->unk22) / 2;
            var_a3 = (entry->unk44 + entry->unk24) / 2;
        } else {
            var_s0 = entry->unk4;
            var_a3 = entry->unk6;
            var_a2 = func_800B84D0_C7480(var_s0, var_a3) >> 8;
        }
    }
    func_8010F834_11E7E4(arg0, var_s0, var_a2, var_a3);
}

void func_8010FABC_11EA6C(void) { D_80158FDC = 0; }

void func_8010FAC8_11EA78(u8 arg0, s32 arg1) {
	s32 idx = D_80158FDC;
	D_80158F98[idx].unk0 = arg0;
	D_80158FDC = idx + 1;
	D_80158F98[idx].unk4 = arg1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010FAFC_11EAAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8010FF84_11EF34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80110144_11F0F4.s")

void func_801103B4_11F364(VehicleInstance *arg0, VehicleSpec *arg1) {
    BeaconDisplayEntry *entry;
    s32 i;

    if (arg0 == D_80052B34) {
        entry = &D_8014F7DE + 1;
        i = 0x10;
        while (entry--, i--) {
            if (entry->unkC != -1) {
                if ((arg0->unk2 - 0xA) < entry->unk2 && entry->unk2 < (arg0->unk2 + arg1->unk38 + 0xA) && func_8010DC00_11CBB0(entry->unk0, entry->unk4, 0x14) != 0) {
                    if (func_800A8E18_B7DC8(entry->unkC) != 0) {
                        func_800153D8_15FD8(0xC5);
                    }
                    func_800CBD1C_DACCC(entry->unk10);
                    entry->unkC = -1;
                }
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8011049C_11F44C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80110818_11F7C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80110FB4_11FF64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8011290C_1218BC.s")

s32 func_80112A64_121A14(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s32 temp_t6;
	s32 temp_t7;

	temp_t6 = (s32)(arg0 - arg2) >> 2;
	temp_t7 = (s32)(arg1 - arg3) >> 2;
	return (temp_t6 * temp_t6) + (temp_t7 * temp_t7);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80112A98_121A48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80112F98_121F48.s")

void func_801131D4_122184(VehicleInstance *arg0) {
	func_800FB44C_10A3FC(arg0, D_80159194);
	func_800FB468_10A418(arg0, D_8015919C);
	func_800FB484_10A434(arg0, D_80159198);
	arg0->unk6 = D_801591A0;
	arg0->unkA = D_801591A2;
	arg0->unk8 = D_801591A4;
}

void func_80113248_1221F8(VehicleInstance *arg0) {
	func_801131D4_122184(arg0);
	func_800FDEA8_10CE58(D_80052B2C, 1);
	func_800FDD8C_10CD3C(arg0);
	func_800E0F4C_EFEFC(arg0->unk0, arg0->unk2, arg0->unk4, 0x18);
	func_80135D44_144CF4(arg0->unk0, arg0->unk2, arg0->unk4, 3.0f);
	D_801591AC = 0;
	D_80158E6C = arg0;
	D_8015931C = 0x64;
	D_80158E74 = 0;
	if ((D_80159320 & 0x400000) && (D_8004DC58 != 5) && (D_8004DC58 != 6) && (D_8004DC58 != 7)) {
		D_8004DC58 = 4;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80113310_1222C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80113808_1227B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80113CEC_122C9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80115604_1245B4.s")

#ifdef NON_MATCHING
s32 func_80115730_1246E0(VehicleInstance *arg0, s32 arg1) {
	s32 temp_a3;
	s32 temp_v1;
	s32 var_a1;

	temp_a3 = arg1 * 4;
	temp_v1 = func_800B84D0_C7480(
		(s16)(s32)(D_80159D78[arg1] + arg0->unk4C),
		(s16)(s32)(D_80159D98[arg1] + arg0->unk54)) >> 8;
	var_a1 = temp_v1;

	if (!(D_80257A4C[arg0->unk1A].unk0 & 0x100) && (temp_v1 < D_80222A70)) {
		var_a1 = D_80222A70;
	}

	return var_a1 - *(s32 *)((u8 *)D_80159510 + (func_800FAE60_109E10(arg0) * 0x10) + temp_a3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80115730_1246E0.s")
#endif

s32 func_80115824_1247D4(VehicleInstance *arg0, s32 arg1) {
	s32 var_v1;
	s32 temp_a3;

	temp_a3 = arg1 * 4;
	var_v1 = func_800B84D0_C7480(
		(s16)(s32)(D_80159D78[arg1] + arg0->unk4C),
		(s16)(s32)(D_80159D98[arg1] + arg0->unk54)) >> 8;

	if (!(D_80257A4C[arg0->unk1A].unk0 & 0x100) && (var_v1 < D_80222A70)) {
		var_v1 = D_80222A70;
	}

	if (*(s32 *)((u8 *)D_80159510 + (func_800FAE60_109E10(arg0) * 0x10) + temp_a3) < var_v1) {
		return 1;
	}
	return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_8011592C_1248DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80115A74_124A24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F9230/func_80115CC0_124C70.s")
