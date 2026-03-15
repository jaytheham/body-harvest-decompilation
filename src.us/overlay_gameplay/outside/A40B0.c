#include <ultra64.h>
#include "common.h"

// Debug - display property
#ifdef NON_MATCHING
void func_80095100_A40B0(s16 arg0, s16 arg1)
{
	s32 s0;
	s32 sp38;
	DebugPropEntry *v0;
	u8 *v1;

	s0 = 0;
	if (arg0 < 0x20) {
		v0 = &D_8013CBC0[arg0];
		v1 = (u8 *)vehicleSpecs + (D_80052B34->unk1A * 7 << 4) + (v0->unk8 - v0->unk4);
	} else if (arg0 < 0x35) {
		v0 = &D_8013CBC0[arg0];
		v1 = (u8 *)v0->unk4;
	} else if (arg0 < 0x40) {
		v0 = &D_8013CBC0[arg0];
		v1 = (u8 *)D_801601F0 + (((s8)D_802566D0[((D_8013CBA4 * 4 - D_8013CBA4) * 4 + D_8013CBA4) * 8] * 4 - (s8)D_802566D0[((D_8013CBA4 * 4 - D_8013CBA4) * 4 + D_8013CBA4) * 8]) * 4 - (s8)D_802566D0[((D_8013CBA4 * 4 - D_8013CBA4) * 4 + D_8013CBA4) * 8]) * 2 + v0->unk8 - v0->unk4;
	} else if (arg0 < 0x51) {
		v0 = &D_8013CBC0[arg0];
		v1 = (u8 *)alienSpecs + ((D_8013CBA4 * 4 - D_8013CBA4) * 4 + D_8013CBA4) * 8 + (v0->unk8 - v0->unk4);
	} else if (arg0 < 0x60) {
		v0 = &D_8013CBC0[arg0];
		v1 = (u8 *)v0->unk4;
	} else if (arg0 < 0x64) {
		v0 = &D_8013CBC0[arg0];
		v1 = (u8 *)D_8003E290 + (D_8013CBBC << 4) + (v0->unk8 - v0->unk4);
	} else {
		v0 = &D_8013CBC0[arg0];
		v1 = (u8 *)D_80140768 + (D_80257A55[D_80052B34->unk1A * 7 << 4] * 4 + D_80257A55[D_80052B34->unk1A * 7 << 4]) * 2 + v0->unk8 - v0->unk4;
	}

	drawText(D_801421A0, 3, arg1, v0->unk0, 0x1C, arg1);

	switch (v0->type) {
	case 0:
		s0 = *(u8 *)v1;
		break;
	case 1:
		s0 = *(s8 *)v1;
		break;
	case 2:
	case 5:
		s0 = *(s16 *)v1;
		break;
	case 3:
		s0 = *(s32 *)v1;
		break;
	case 4:
		s0 = (s32)(f32)((f64)(f32)*(f32 *)v1 * D_80142328);
		break;
	case 6:
		sp38 = *(s8 *)v1;
		s0 = *(s8 *)(v1 + 1);
		break;
	case 7:
		sp38 = *(s16 *)v1;
		s0 = *(s16 *)(v1 + 4);
		break;
	default:
		s0 = *(s32 *)v1;
		break;
	}

	if (D_8014ECF0 == 0 || D_8014ECF0 == 1) {
		if (D_8013CBB4 == 0xB || D_8013CBB4 == 0xC) {
			drawText(D_801421A8, D_80034574[s0 * 2]);
			return;
		}
	}

	if (v0->type >= 7) {
		return;
	}
	switch (v0->type) {
	case 0:
	case 1:
	case 2:
	case 3:
		drawText(D_801421AC, s0);
		return;
	case 4:
		drawText(D_801421B0, s0);
		return;
	case 5: {
		f32 f18 = (f32)s0;
		drawText(D_801421B4, (f64)f18 * D_80142350 / D_80142358);
		return;
	}
	case 6:
		drawText(D_801421B8, sp38, s0);
		return;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A40B0/func_80095100_A40B0.s")
#endif

// Debug - menu navigation?
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A40B0/func_80095530_A44E0.s")

// Debug - display menu items
#ifdef NON_MATCHING
void func_8009594C_A48FC(s16 arg0, s16 arg1) {
	s16 temp_s2;
	s16 var_s0;
	s16 var_s1;

	var_s0 = 0;
	if (arg1 > 0) {
		var_s1 = arg0;
		do {
			temp_s2 = var_s0 + 1;
			func_80095100_A40B0(var_s1, temp_s2);
			var_s0 = temp_s2;
			var_s1 += 1;
		} while (temp_s2 != arg1);
	}
	D_8014ECF4 = (s32) arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/A40B0/func_8009594C_A48FC.s")
#endif

void func_800959DC_A498C(void) {
}
