#include <ultra64.h>
#include "common.h"

u32 D_8013D540_14C4F0[16] = {
    0xFFFFFFFF, 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFF00,
    0xFFFFFFFF, 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFF00,
    0xFFFFFFFF, 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFF00,
    0xFFFFFFFF, 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFF00,
};

void func_8009BAC0_AAA70(void)
{
  s32 i;
  s32 j;
  D_8014EDD8 = D_8014EDDC = D_8014F20C = 0;
  D_8014EDDA = 0x40;
  D_8014F1E4 = 160.0f;
  D_8014F1E8 = 250.0f;
  D_8014F1EC = 160.0f;
  D_8014F1F0 = 250.0f;
  D_8014F1F4 = 0x80;
  D_8014F1F6 = 0;
  D_8014F1FA = 0x80;
  D_8014F1F8 = 0;
  D_8014ED42 = D_8014ED44 = D_8014ED46 = D_8014ED48 = D_8014ED4A = 0;
  D_8014ED4C = D_8014ED4E = D_8014ED50 = D_8014ED52 = 0;
  i = 0x20;
  while (i--) {
	  j = 8;
	  while (j--) {
		  D_8014F210[i][j] = 0;
	  }
  }
  D_8014F610 = 0;
  D_8014F202 = 0;
  D_8014F203 = 0;
  D_8014F204 = (s32) D_8004816A;
  D_8014F208 = -1;
  func_80139B34_148AE4();
}

// https://decomp.me/scratch/HfYzB
#ifdef NON_MATCHING
s32 func_8009BC48_AABF8(s32 arg0, s32 arg1, s32 arg2)
{
  s32 new_var;
  s32 temp_t0;
  s32 temp_v1;
  s32 var_v1;
  temp_t0 = arg1 - 0x10;
  temp_v1 = arg0 - 0x10;
  new_var = temp_t0;
  if (arg0 >= 0 && temp_v1 < 0x10 && new_var >= -0x10 && temp_t0 < 0x10)
  {
	var_v1 = 0x100;
	if (arg2 != 0)
	{
	  var_v1 = 0x80;
	}
	if (((temp_t0 * temp_t0) + (temp_v1 * temp_v1)) < var_v1)
	{
	  if (arg0) { }
	  return 1;
	}
  }
  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009BC48_AABF8.s")
#endif

s32 func_8009BCC0_AAC70(s32 arg0, s32 arg1, u8 arg2) {
	u8 *ptr;

	if (func_8009BC48_AABF8(arg0, arg1, 0) != 0) {
		if (arg0 & 1) {
			if (D_8014EDD8 != 0) {
				return 1;
			}
			ptr = &D_8014EDE0[(arg1 << 4) + arg0 / 2];
			*ptr &= 0xF0;
			*ptr |= arg2;
			return 1;
		}
		if (D_8014EDD8 != 0) {
			return 1;
		}
		ptr = &D_8014EDE0[(arg1 << 4) + arg0 / 2];
		*ptr &= 0xF;
		*ptr |= (arg2 << 4);
		return 1;
	}
	return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009BDB8_AAD68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009BF64_AAF14.s")

// drawWaypointMarker ?
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009C1D8_AB188.s")

void func_8009C458_AB408(void) {
	D_8014F1F6 = 0x10;
	D_8014F1F8 = 0x10;
}

void func_8009C470_AB420(void) {
	if (D_80052B34->unk1A != 0) {
		D_8014F1F6 = -0x10;
	}
	D_8014F1F8 = -0x10;
}

void func_8009C4A0_AB450(void) {
	D_8014F1F6 = 0x10;
}

void func_8009C4B0_AB460(void) {
	if (D_80052B34->unk1A != 0) {
		D_8014F1F6 = -0x10;
	}
}

void func_8009C4D8_AB488(void) {
	D_8014F1F8 = 0x10;
}

void func_8009C4E8_AB498(void) {
	D_8014F1F8 = -0x10;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009C4F8_AB4A8.s")

// Additional params
// sp10 Pointer to icon
// sp14 Type, 2=Vertical, 3=Horizontal ...
// sp18 Values > 0 scale icon smaller
// sp1c Alters color of the bar - used to make it flash
// sp20 Length of the bar background
// drawHudBarWithIcon
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009C6CC_AB67C.s")

void func_8009D900_AC8B0(s16 *arg0, f32 *arg1, s16 arg2) {
	f32 temp_f0;
	f32 temp_f2;

	temp_f0 = (f32)*arg0 / (f32)arg2;
	temp_f2 = (f32)*arg0;
	if ((f64) temp_f0 > 1.0) {
		*arg0 = (s16) (s32) (temp_f2 / temp_f0);
		*arg1 /= temp_f0;
	}
}

// Draws Health/Human/vehicle/+more bars on HUD
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009D96C_AC91C.s")

// drawAlienHealth
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009E994_AD944.s")

void func_8009EC90_ADC40(s16 arg0, f32 *arg1, f32 *arg2) {
	s32 var_v0;

	if (((arg0 >= 0x2001) && (arg0 < 0x6000)) || ((arg0 < -0x2000) && (arg0 >= -0x5FFF))) {
		if (arg0 > 0) {
			*arg1 = 1.0f;
		} else {
			if (arg0 < 0) {
				var_v0 = -1;
			} else {
				var_v0 = 0;
			}
			*arg1 = (f32) var_v0;
		}
		*arg2 = (f32) (((f64) *arg1 * ((f64) (f32) coss(arg0) / 32768.0)) / ((f64) (f32) sins(arg0) / 32768.0));
		return;
	}
	if (arg0 >= 0) {
		var_v0 = arg0;
	} else {
		var_v0 = -(s32) arg0;
	}
	if (var_v0 < 0x4000) {
		*arg2 = 1.0f;
	} else {
		*arg2 = -1.0f;
	}
	*arg1 = (f32) (((f64) *arg2 * ((f64) (f32) sins(arg0) / 32768.0)) / ((f64) (f32) coss(arg0) / 32768.0));
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009EE30_ADDE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009F130_AE0E0.s")

void func_8009FB1C_AEACC(s16 arg0, s16 arg1) {
	D_8014F1EC = (f32) arg0;
	D_8014F1F0 = (f32) arg1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_8009FB58_AEB08.s")

// displayScanner
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A03FC_AF3AC.s")

void func_800A1364_B0314(void)
{
  D_8013D758_14C708 = D_8013D75C_14C70C;
  D_8013D75C_14C70C = osGetCount();
  D_8014F210[D_8014F20C][D_8014F610] = D_8013D75C_14C70C - D_8013D758_14C708;
  D_8014F20C++;
  if (D_8014F20C >= 0x20)
  {
	D_8014F20C = 0;
  }
}

void func_800A13E8_B0398(void) {
	D_8013D75C_14C70C = osGetCount();
}

// drawDebugTimingGraphs
#ifdef NON_MATCHING
void func_800A140C_B03BC(void) {
	s32 iter;
	s32 lry;
	s32 uly;
	s32 newIdx;
	union { struct { s32 hi; u32 lo; } h; unsigned long long ull; } acc;
	s32 *rowPtr;
	s16 *shiftPtr;

	if (D_80047720 != 0) {
		shiftPtr = &D_80047722;
		debug_drawTimingGraphBars();
		gDPPipeSync(D_8005BB2C++);
		gDPSetCycleType(D_8005BB2C++, 3 << 20);
		gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);

		iter = 0x1F;
		lry = 0xD3;
		uly = 0xCF;
		rowPtr = D_8014F5F0;
		shiftPtr = &D_80047722;
		do {
			s32 j;
			acc.h.lo = 0;
			acc.h.hi = 0;
			j = 7;
			do {
				u32 carry = 0;
				u32 new_lo = (u32)rowPtr[j] + acc.h.lo;
				carry = carry + (u32)(new_lo < acc.h.lo);
				acc.h.hi = acc.h.hi + carry;
				acc.h.lo = new_lo;
			} while (j--);
			acc.ull = func_8001D1A0_1DDA0(acc.h.hi, acc.h.lo, (s32)*shiftPtr >> 31, *shiftPtr);
			if (acc.h.hi != 0 || acc.h.lo >= 0xC9U) {
				acc.h.hi = 0;
				acc.h.lo = 0xC8;
			}
			{
				s32 c0 = (iter & 2) ? 0x3C0 : 0;
				s32 c1 = (iter & 1) ? 0x1E : 0;
				s32 c2 = (iter & 4) ? 0x7800 : 0;
				s32 color = c2 + c1 + c0;
				gDPPipeSync(D_8005BB2C++);
				gDPSetFillColor(D_8005BB2C++, ((u32)color << 16) | (u32)color);
				gDPFillRectangle(D_8005BB2C++, 0x20, uly, acc.h.lo + 0x20, lry);
			}
			rowPtr -= 8;
			lry -= 6;
			uly -= 6;
		} while (iter--);
		iter = 0x1F;

		gDPPipeSync(D_8005BB2C++);
		gDPSetCycleType(D_8005BB2C++, 0);
		gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);

		((s32 *)D_8014F210)[D_8014F610] = D_8013D764_14C714 - D_8013D760_14C710;
		newIdx = D_8014F610 + 1;
		D_8014F610 = newIdx;
		if ((u32)newIdx >= 8U) {
			D_8014F610 = 0;
			newIdx = 0;
		}
		rowPtr = D_8014F5F0 + newIdx;
		do {
			*rowPtr = 0;
			rowPtr -= 8;
		} while (iter--);

		D_8014F20C = 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A140C_B03BC.s")
#endif

void func_800A1764_B0714(void) {
	D_8014F618.unk69 = 0;
	D_8014F618.unk6A = 0;
	D_8014F618.unk6B = 0;
	D_8014F618.unk6C = 0;
	D_8014F618.unk6F = 0xF;
	D_8014F618.unk70 = 0;
	D_8014F618.unk71 = 0x14;
	D_8014F618.unk72 = 0xE6;
	D_8014F618.unk73 = 0x1E;
	D_8014F618.unk74 = 0x14;
	D_8014F618.unk75 = 0xE6;
	D_8014F618.unk76 = 0x1E;
	D_8014F618.unk6D = 0;
	D_8014F618.unk68 = 0;
	D_8014F618.unk67 = 0;
	D_8014F618.unk6E = 0;
	D_8014F618.unk77 = 0xA;
	D_8014F618.unk78 = 0x1E;
	D_8014F618.unk79 = 0x96;
	D_8014F618.unk7A = 0xA;
	D_8014F618.unk7B = 0x1E;
	D_8014F618.unk7C = 0x96;
	D_8014F618.unk7D = 0xA;
	D_8014F618.unk7E = 0x1E;
	D_8014F618.unk7F = 0x96;
}

void func_800A17EC_B079C(void) {
	D_8013D5B4_14C564 = 0;
	D_8013D5B8_14C568 = 0;
	D_8013D5BC_14C56C = 0;
	D_8013D5C0_14C570 = 0;
	func_800A1764_B0714();
}

#ifdef NON_MATCHING
s32 func_800A1828_B07D8(u8 arg0, u8 arg1, u8 arg2) {
	s32 target = arg1;
	s32 step = arg2;
	s32 current = arg0;

	if (target < current) {
		if (current < step || (current - target) < step) {
			return arg1;
		}
		return current - step;
	} else if (current < target) {
		if ((0xFF - step) < current || (target - current) < step) {
			return arg1;
		}
		current = (current + step) & 0xFF;
	}
	return current;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A1828_B07D8.s")
#endif

s32 func_800A18CC_B087C(void) {
	s16 index = (s16)(D_80158FE8 - buildingInstances);
	return (D_8014D1B8[index >> 5] & (1 << (index & 0x1F))) != 0;
}

// checkIfShouldOpenPauseMenu
void func_800A1924_B08D4(void) {
	if ((currentControllerStates[CONTROLLER_ONE].button & BUTTON_START) &&
		(gameplayMode != GAMEPLAY_MODE_UNK3) &&
		(gameplayMode != GAMEPLAY_MODE_UNKB) &&
		(D_8004794C == 0) &&
		(func_80018A58_19658() == 0) &&
		(D_80048188 == 0)) {

		D_801591B0 = D_801591AC;
		D_80052AE0 = gameplayMode;
		D_801591AC = 3;
		gameplayMode = GAMEPLAY_MODE_UNK2;
		D_8014ED56 = 0xFF;
		D_8014ED54 = 0;
		D_80050AD0 = D_80050AD4;
		D_801591D4 = D_80052B34->unk6;
		D_8014ED40 = D_8004794A;
		func_800153D8_15FD8(0xC6);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A1A18_B09C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A1DD8_B0D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A2260_B1210.s")

s32 func_800A2A88_B1A38(void) {
	s32 temp_v0;

	if (D_8013D5B4_14C564 == 0) {
		return 0;
	}
	temp_v0 = vehicleSpecs[D_80052B34->unk1A].weapon1;
	if (temp_v0 == 0) {
		return 0;
	}
	if (((s32)D_80145BE8_154B98[temp_v0][0] >> 8) & 0x200000) {
		return 0;
	}
	if (D_80159320 & 0x10000) {
		return 0;
	}
	if (gameplayMode == GAMEPLAY_MODE_UNK3) {
		return 0;
	}
	if (gameplayMode == GAMEPLAY_MODE_UNKB) {
		return 0;
	}
	return 1;
}

// drawGhostTarget - R-trigger aiming reticle?
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A2B58_B1B08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A2D98_B1D48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/AAA70/func_800A3490_B2440.s")

s32 func_800A3CD0_B2C80(void) {
	if (D_8014F1FA == 0) {
		return 1;
	}
	return 0;
}
