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
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800EA12C_F90DC.s")
