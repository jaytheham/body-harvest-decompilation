#include <ultra64.h>
#include "common.h"

// StripModelToBones
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800E88C0_F7870.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800E95BC_F856C.s")

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
