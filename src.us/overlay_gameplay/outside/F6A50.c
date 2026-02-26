#include <ultra64.h>
#include "common.h"


void func_800E7AA0_F6A50(Unk80052B34 *arg0) {
	s32 dx;
	s32 dz;
	s16 angle;

	dx = arg0->unk0 - D_80052B34->unk0;
	dz = arg0->unk4 - D_80052B34->unk4;
	angle = func_80003824_4424((f32)dx, (f32)dz);
	if (D_80052B34->unk1A == 0) {
		D_80052B34->unk6 = angle;
		return;
	}
	D_801493DC = (angle - D_80052B34->unk6 + 0x1000) >> 13;
}

void func_800E7B20_F6AD0(s32 arg0, s32 arg1) {
	s32 temp;

	D_8013FD7C = arg1;
	D_801493D8 = (s16)arg1;
	D_8013B934 = D_8013B910[arg1];
	temp = (D_8013B91C[arg1] << 16) / 360;
	if (D_8013B8F0 < temp) {
		D_8013B8F0 = (s16)temp;
	}
	D_801493A8 = D_8013B928[arg1];
	D_801493AA = (s16)temp;
	if (D_801591BC != 0) {
		D_801493AA = 0x2260;
	}
}

void func_800E7BC4_F6B74(void) {
	D_80157580 = D_80052B34->unk0 >> 2;
	D_80157582 = (D_80052B34->unk2 >> 2) + 0x64;
	D_80157584 = (D_80052B34->unk4 >> 2) - 0xC8;
	D_8015758C = D_80047710;
	D_8015758E = D_80047712;
}

// Outdoors debug camera? Controller 2 moves camera when function runs
#ifdef NON_MATCHING
void func_800E7C28_F6BD8(void) {
	s32 sp3C;
	s32 sp38;
	s32 sp34;
	s16 sp32;
	s16 sp30;

	if (!(currentControllerStates[1].button & 0x20)) {
		if (D_80157590 == 4) {
			D_8015758E -= currentControllerStates[1].stick_x * 0x10;
			D_8015758C += currentControllerStates[1].stick_y * 8;
			if (currentControllerStates[1].button & 4) {
				D_8013E438 += 5;
			}
			if (currentControllerStates[1].button & 8) {
				D_8013E438 -= 5;
			}
			D_80157586 = sp3C;
			D_80157588 = sp38;
			D_8015758A = sp34;
			sp32 = coss((u16)D_8015758C);
			D_80157580 = (s16)(s32)(((f64)(f32)coss((u16)D_8015758E) / 32768.0) * (((f64)(f32)sp32 / 32768.0) * (f64)D_8013E438) + (f64)D_80157586);
			D_80157582 = (s16)(s32)(((f64)(f32)sins((u16)D_8015758C) / 32768.0) * (f64)D_8013E438 + (f64)D_80157588);
			sp32 = coss((u16)D_8015758C);
			D_80157584 = (s16)(s32)(((f64)(f32)sins((u16)D_8015758E) / 32768.0) * (((f64)(f32)sp32 / 32768.0) * (f64)D_8013E438) + (f64)D_8015758A);
			return;
		}
		if (currentControllerStates[1].button & 0x10) {
			D_8015758E += currentControllerStates[1].stick_x * 0x10;
			D_8015758C += currentControllerStates[1].stick_y * 8;
		} else {
			sp30 = sins((u16)D_8015758E);
			D_80157580 = (s16)(s32)((f64)D_80157580 + (-(f64)(currentControllerStates[1].stick_y >> 2) * ((f64)(f32)coss((u16)D_8015758E) / 32768.0) + (f64)(currentControllerStates[1].stick_x >> 2) * ((f64)(f32)sp30 / 32768.0)));
			sp30 = coss((u16)D_8015758E);
			D_80157584 = (s16)(s32)((f64)D_80157584 + (-(f64)(currentControllerStates[1].stick_y >> 2) * ((f64)(f32)sins((u16)D_8015758E) / 32768.0) - (f64)(currentControllerStates[1].stick_x >> 2) * ((f64)(f32)sp30 / 32768.0)));
		}
		if (currentControllerStates[1].button & 8) {
			D_80157582 += 1;
		}
		if (currentControllerStates[1].button & 4) {
			D_80157582 -= 1;
		}
		sp32 = coss((u16)D_8015758C);
		D_80157586 = (s16)(s32)((f64)D_80157580 - ((f64)(f32)coss((u16)D_8015758E) / 32768.0) * (((f64)(f32)sp32 / 32768.0) * D_80144240));
		D_80157588 = (s16)(s32)((f64)D_80157582 - ((f64)(f32)sins((u16)D_8015758C) / 32768.0) * D_80144248);
		sp32 = coss((u16)D_8015758C);
		D_8015758A = (s16)(s32)((f64)D_80157584 - ((f64)(f32)sins((u16)D_8015758E) / 32768.0) * (((f64)(f32)sp32 / 32768.0) * D_80144250));
		if (currentControllerStates[1].button & 1) {
			osSyncPrintf(&D_801441F0, D_80157580, D_80157582, D_80157584, (s32)D_8015758C, (s32)D_8015758E);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F6A50/func_800E7C28_F6BD8.s")
#endif

void func_800E8190_F7140(void) {
	func_80132740_1416F0(&D_80160080);
	D_8013B91C[0] = 0;
	D_8013B91C[1] = 0xA;
	D_8013B91C[2] = 0x32;
	D_8013B91C[3] = 0x1E;
	D_8013B91C[4] = 0;
	D_8013B91C[5] = 0xA;
	D_8013B928[0] = 0x578;
	D_8013B928[1] = 0x514;
	D_8013B928[2] = 0x41A;
	D_8013B928[3] = 0x41A;
	D_8013B928[4] = 0;
	D_8013B928[5] = 0x41A;
	D_8013B910[0] = 0;
	D_8013B910[1] = 0x12C;
	D_8013B910[2] = 0x12C;
	D_8013B910[3] = 0x5DC;
	D_8013B910[4] = 0;
	D_8013B910[5] = 0x3E8;
	D_801493DC = 0;
	D_8014940E = 0;
	if (D_80052B34->unk1A == 0) {
		D_80052B34->unk6 = D_80052B34->unkE;
	}
	D_80157574 = 0xF;
	D_80157576 = 0x500;
	D_8013B90C = 0;
	D_8013B8F4 = 0x1F4;
	D_8013B8FC = 0x40;
	D_8013B8F8 = 0x1F4;
	D_8013B900 = 0x40;
	D_8013B908 = 0;
}

#ifdef NON_MATCHING
void func_800E82AC_F725C(Unk80052B2C *arg0) {
	Gfx *gfx;
	f32 sp30;
	f32 temp_f0;
	f32 temp_f2;
	f32 var_f0;
	s32 var_t3;
	s32 temp_t7;
	s32 temp_t2;

	D_80149404 = 0x2D;
	switch (D_80157590) {
	case 1:
		func_800E7BC4_F6B74();
		/* fall through */
	case 2:
	case 4:
		func_800E7C28_F6BD8();
		/* fall through */
	case 3:
		guLookAt((Mtx *)(D_8005BB20 + 0x200),
				 (f32)D_80157580, (f32)D_80157582, (f32)D_80157584,
				 (f32)D_80157586, (f32)D_80157588, (f32)D_8015758A,
				 0.0f, 1.0f, 0.0f);
		D_80153BAC = D_80157586;
		D_80153BAE = D_80157588;
		D_80153BB0 = D_8015758A;
		func_800C1268_D0218((f32)D_80157580, (f32)D_80157582, (f32)D_80157584);
		temp_f0 = (f32)D_80157586 - (f32)D_80157580;
		sp30 = (f32)D_80157588 - (f32)D_80157582;
		temp_f2 = (f32)D_8015758A - (f32)D_80157584;
		D_8004794E = -func_80003824_4424(sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2)), -sp30);
		D_80047964 = func_80003824_4424((f32)(D_8015758A - D_80157584), (f32)(D_80157586 - D_80157580));
		D_80047960 = (f32)D_80157588;
		break;
	default:
		osSyncPrintf(D_80144204, D_80157590);
		break;
	}
	func_80135F0C_144EBC();
	D_80149404 = (s16)(s32)((f32)D_80149404 + D_8016016C);
	if (D_80157590 == 3) {
		var_f0 = (f32)D_80157582;
	} else {
		var_f0 = D_80047958;
	}
	var_t3 = 0;
	if ((var_f0 * 4.0f) < (f32)D_80222A70) {
		var_t3 = 1;
	}
	D_801493CC = var_t3;
	guPerspective((Mtx *)(D_8005BB20 + 0x180), &D_801493D6, (f32)D_80149404, 4.0f / 3.0f, (f32)D_80157574, (f32)D_80157576, 1.0f);
	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0xBC00000E;
	gfx->words.w1 = (u32)D_801493D6;
	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0x01030040;
	gfx->words.w1 = (s32)(D_8005BB20 + 0x180) & 0x1FFFFFFF;
	gfx = D_8005BB2C;
	D_8005BB2C = gfx + 1;
	gfx->words.w0 = 0x01010040;
	gfx->words.w1 = (s32)(D_8005BB20 + 0x200) & 0x1FFFFFFF;
	D_80031404 = (f32)((f64)(f32)sins((D_80047950 + 0x4000) & 0xFFFF) / 32768.0);
	D_8003140C = (f32)((f64)(f32)coss((D_80047950 + 0x4000) & 0xFFFF) / 32768.0);
	temp_t7 = (s32)(arg0->unk3C - 0x780) >> 8;
	D_801493C0 = temp_t7;
	D_801493BC = temp_t7 + 0x10;
	temp_t2 = (s32)(arg0->unk3E - 0x780) >> 8;
	D_801493C8 = temp_t2;
	D_801493C4 = temp_t2 + 0x10;
	D_801493B0 = temp_t7 << 8;
	D_801493B8 = temp_t2 << 8;
	D_801493AC = D_801493BC << 8;
	D_801493B4 = D_801493C4 << 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F6A50/func_800E82AC_F725C.s")
#endif

// updateCamera?
void func_800E87C8_F7778(void) {
	func_800B33BC_C236C((s16)(-D_8004794E));
	if (D_80157F68 > 0) {
		func_800E82AC_F725C(&D_80157F08);
		func_80071E88_80E38(&D_80157F08);
		return;
	}
	if ((D_80157590 == 0) && (D_80157F96 != 0)) {
		func_80132740_1416F0(&D_80160080);
	}
	func_80132980_141930(&D_80160080, D_80052B2C);
	if (D_80157590 != 0) {
		func_800E82AC_F725C(D_80052B2C);
	}
	func_80071E88_80E38(D_80052B2C);
}

void func_800E8890_F7840(void) {
	func_801330E4_142094(&D_80160080);
}
