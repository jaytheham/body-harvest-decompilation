#include <ultra64.h>
#include "common.h"

// StripModelToBones
#ifdef NON_MATCHING
// regalloc: arg1/count in a3 instead of s0 (callee-saved), causing register shift throughout
Gfx* func_800E88C0_F7870(s32 arg0, s32 arg1) {
	Gfx* src;
	Gfx* dst;
	Gfx* result;
	Gfx temp;
	s8 opcode;

	src = (Gfx*)func_80012000_12C00(arg0);

	switch (arg1) {
	case 0:
		dst = D_801575A8;
		arg1 = D_801575B0;
		break;
	case 1:
		dst = D_802C9480;
		D_801575AC = D_802C9480;
		arg1 = 0;
		break;
	case 2:
		dst = D_802C9EA8;
		D_801575AC = D_802C9EA8;
		arg1 = 0;
		break;
	default:
		dst = D_801575A8;
		arg1 = D_801575B0;
		break;
	}

	result = dst;

	do {
		temp = *src++;
		opcode = *(s8*)&temp;
		if (opcode == -0x41 || opcode == -0x4F || opcode == -0x48 || opcode == 4) {
			*dst++ = temp;
			arg1++;
		}
	} while (opcode != -0x48);

	D_801575A8 = dst;
	D_801575B0 = arg1;

	if (arg1 >= 0x145) {
		D_801575B0 = arg1;
		osSyncPrintf(&D_80144260_153210, arg1, 0x145);
	}

	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800E88C0_F7870.s")
#endif

// castVehicleShadows?
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800E8A00_F79B0.s")

// SetupForShadows ?
void func_800E94B8_F8468(void) {
	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_PRIM_A, G_RM_AA_XLU_SURF2);
	gDPSetBlendColor(D_8005BB2C++, 0, 0, 0, 0x96);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_LIGHTING);
	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0, 0, 0, 0x40);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	D_801575A0 = 0;
}

#ifdef NON_MATCHING
// CURRENT(2664)
s32 func_800E95BC_F856C(s32 arg0, s32 arg1, s32 arg2) {
	volatile s32 sp34;
	volatile s32 sp30;
	volatile s32 sp2C;
	s32 pad0;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	s32 baseX;
	s32 baseY;
	s32 baseZ;
	s32 deltaX;
	s32 deltaZ;
	s32 absDeltaX;
	s32 absDeltaZ;
	s32 stepZLocal;
	s32 stepXLocal;
	s32 stepYLocal;
	s32 stepSign;

	baseX = (s32)D_80052B2C->unk0 << 8;
	baseY = (s32)D_80052B2C->unk4 << 8;
	baseZ = (s32)D_80052B2C->unk8 << 8;

	deltaX = (arg0 << 8) - baseX;
	absDeltaX = -deltaX;
	if (absDeltaX < deltaX) {
		absDeltaX = deltaX;
	}

	deltaZ = (arg2 << 8) - baseZ;
	absDeltaZ = -deltaZ;
	if (absDeltaZ < deltaZ) {
		absDeltaZ = deltaZ;
	}

	if (absDeltaZ < absDeltaX) {
		arg2 = ((-deltaX < deltaX) ? deltaX : -deltaX) >> 8;
		if (arg2 != 0) {
			if (deltaX < 0) {
				stepSign = -0x100;
			} else {
				stepSign = 0x100;
			}

			sp34 = stepSign << 8;
			sp30 = (((arg1 << 8) - baseY) << 8) / arg2;
			sp2C = (deltaZ << 8) / arg2;
		}
	} else {
		arg2 = ((-deltaZ < deltaZ) ? deltaZ : -deltaZ) >> 8;
		if (arg2 != 0) {
			sp34 = (deltaX << 8) / arg2;
			sp30 = (((arg1 << 8) - baseY) << 8) / arg2;
			sp2C = ((deltaZ < 0) ? -0x100 : 0x100) << 8;
		}
	}

	arg2 = arg2 >> 8;
	stepZLocal = sp2C;
	stepXLocal = sp34;
	stepYLocal = sp30;
	if (arg2 != 0) {
		arg2--;
		sp2C = stepZLocal;
		sp34 = stepXLocal;
		sp30 = stepYLocal;
		do {
			baseZ += sp2C;
			baseX += sp34;
			baseY += sp30;

			if (baseY < func_800B84D0_C7480((s16)(baseX >> 8), (s16)(baseZ >> 8))) {
				return 1;
			}
		} while (arg2--);
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800E95BC_F856C.s")
#endif

s16 func_800E9868_F8818(s32 arg0, s32 arg1) {
	return (s16) ((D_801493D8 * 4) + 0x310);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800E988C_F883C.s")

// StopDrawingShadows ?
void func_800EA088_F9038(void) {
	gDPPipeSync(D_8005BB2C++);
	gDPTileSync(D_8005BB2C++);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_LIGHTING);
}

// DisplayVehicleShadows
#ifdef NON_MATCHING
// regalloc: s1/s2 swapped (counter i vs strength-reduced D_80158E80 pointer)
void func_800EA12C_F90DC(void) {
	s32 i;

	i = D_80158FD8;
	if (i--) {
		do {
			VehicleInstance *v = &vehicleInstances[D_80158E80[i]];
			if ((v->unk20 & 0x8000) && func_800703B0_7F360(v->unk0, v->unk4) != 0 &&
				func_800B93AC_C835C(v->unk0, v->unk4, 0xA0, (s32)D_80052B2C->unk0, (s32)D_80052B2C->unk8, 0x4000 - D_80047950) != 0) {
				func_800E988C_F883C((AlienInstance *)v, (AlienSpec *)&vehicleSpecs[v->unk1A]);
			}
		} while (i--);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800EA12C_F90DC.s")
#endif
