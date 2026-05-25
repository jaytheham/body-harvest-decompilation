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

#ifdef NON_MATCHING
// CURRENT(4940)
void func_800E988C_F883C(AlienInstance *arg0, AlienSpec *arg1) {
	s16 sp86;
	s16 sp84;
	f32 sp8C;
	f32 sp88;
	s32 sp30;
	s32 sp2C;
	s32 sp28;
	s32 sp24;
	s16 (*sp74)(s16, s16);
	s16 var_s7;
	s16 (*var_t5)(s16, s16);
	s16 (*var_v0)(s16, s16);
	void *var_t4;
	s32 temp_v0;
	s32 temp_t0;
	s32 temp_t1;
	s32 temp_t2;

	sp8C = (f32)((f64)(f32)sins((u16)arg0->unk6) / 32768.0);
	sp88 = (f32)((f64)(f32)coss((u16)arg0->unk6) / 32768.0);
	if (((void*)arg0 == (void*)D_80052B34) && (D_801493E0 == 0)) {
		return;
	}

	if ((arg0->unkC == -2) && (*(u16*)((u8*)arg0 + 0x20) & 0x800)) {
		return;
	}

	if ((arg0->unkC != -2) && (arg0->specIndex == 2)) {
		return;
	}

	if (arg0->unkC == -2) {
		var_s7 = (s16)(((u16)((u8*)&vehicleSpecs[arg0->specIndex])[0x6C]) << 1);
		sp84 = (s16)(((u16)((u8*)&vehicleSpecs[arg0->specIndex])[0x6D]) << 1);
	} else {
		var_s7 = (*(s16*)((u8*)arg1 + 0x34)) >> 1;
		sp84 = (*(s16*)((u8*)arg1 + 0x36)) >> 1;
	}

	sp86 = var_s7;
	if (func_800E95BC_F856C(arg0->unk0, (func_800B84D0_C7480(arg0->unk0, arg0->unk4) >> 8) + 5, arg0->unk4) != 0) {
		return;
	}

	if (D_801575A0 & 1) {
		var_v0 = func_800F9EC4_108E74;
		var_t5 = (s16 (*)(s16, s16)) func_800E9868_F8818;
	} else {
		var_t5 = func_800F9F00_108EB0;
		var_v0 = func_800F9EC4_108E74;
		if (D_80222A70 >= arg0->unk2) {
			var_t5 = func_800F9EC4_108E74;
		}
	}

	if ((var_t5 == var_v0) && ((void*)arg0 == (void*)D_80052B34) && (D_80257A4C[arg0->specIndex].unk0 & 0x20000000)) {
		var_t5 = func_800F9F00_108EB0;
	}

	var_t4 = *(void**)((u8*)arg1 + 4);
	var_s7 = sp86;
	if ((void*)arg0 == (void*)D_80052B34) {
		u8 temp_v0_3 = D_80052B34->unk1A;

		if ((temp_v0_3 == 0) || (temp_v0_3 == 0x13)) {
			var_t4 = D_5000000;
			if (temp_v0_3 == 0) {
				var_s7 = (s16)(s32)((f64)(*(s16*)((u8*)arg1 + 0x34)) * D_801442D0_153280);
				sp84 = (s16)(s32)((f64)(*(s16*)((u8*)arg1 + 0x36)) * D_801442D0_153280);
			}
		} else {
			var_t4 = D_802C4080;
		}
	} else if (arg0->unkC == -2) {
		u8 temp_v0_4 = arg0->specIndex;

		if (temp_v0_4 == 0x13) {
			var_t4 = D_5000000;
		} else {
			var_t4 = &D_802C4080[temp_v0_4 << 10];
		}
	}

	if (var_t4 != NULL) {
		gDPSetCombineLERP(D_8005BB2C++, TEXEL0, 0, SHADE, 0, 0, TEXEL0, SHADE, TEXEL0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED);
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, var_t4);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 511, 512);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 4, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD,
				   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);
	} else {
		gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PASS2);
	}

	temp_v0 = (s16)(s32)((f32)sp84 * sp88);
	temp_t0 = (s16)(s32)((f32)var_s7 * -sp8C);
	temp_t1 = (s16)(s32)((f32)sp84 * sp8C);
	temp_t2 = (s16)(s32)((f32)var_s7 * sp88);

	D_8005BB34->v.ob[0] = (s16) (arg0->unk0 + (s16) temp_v0 + (s16) temp_t0);
	D_8005BB34->v.ob[2] = (s16) (arg0->unk4 + (s16) temp_t1 + (s16) temp_t2);
	D_8005BB34->v.ob[1] = var_t5(D_8005BB34->v.ob[0], D_8005BB34->v.ob[2]);
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0x7DA;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[1] = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[0] = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	sp74 = var_t5;
	sp24 = (s16) temp_t2;
	sp28 = (s16) temp_t1;
	sp2C = (s16) temp_t0;
	sp30 = (s16) temp_v0;
	D_8005BB34->v.ob[0] = (s16) ((arg0->unk0 - sp30) + sp2C);
	D_8005BB34->v.ob[2] = (s16) ((arg0->unk4 - sp28) + sp24);
	D_8005BB34->v.ob[1] = var_t5(D_8005BB34->v.ob[0], D_8005BB34->v.ob[2]);
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[1] = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[0] = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16) ((arg0->unk0 + sp30) - sp2C);
	D_8005BB34->v.ob[2] = (s16) ((arg0->unk4 + sp28) - sp24);
	D_8005BB34->v.ob[1] = var_t5(D_8005BB34->v.ob[0], D_8005BB34->v.ob[2]);
	D_8005BB34->v.tc[0] = 0x7DA;
	D_8005BB34->v.tc[1] = 0x7DA;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[1] = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[0] = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = (s16) ((arg0->unk0 - sp30) - sp2C);
	D_8005BB34->v.ob[2] = (s16) ((arg0->unk4 - sp28) - sp24);
	D_8005BB34->v.ob[1] = var_t5(D_8005BB34->v.ob[0], D_8005BB34->v.ob[2]);
	D_8005BB34->v.tc[0] = 0x7DA;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[1] = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[0] = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg0->unk0;
	D_8005BB34->v.ob[2] = arg0->unk4;
	D_8005BB34->v.ob[1] = sp74(arg0->unk0, arg0->unk4);
	D_8005BB34->v.tc[1] = 0x3ED;
	D_8005BB34->v.tc[0] = D_8005BB34->v.tc[1];
	D_8005BB34->v.cn[2] = 0;
	D_8005BB34->v.cn[1] = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[0] = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	gSPVertex(D_8005BB2C++, D_8005BB34 - 5, 5, 0);
	gSP2Triangles(D_8005BB2C++, 1, 0, 4, 0, 3, 1, 4, 0);
	gSP2Triangles(D_8005BB2C++, 2, 3, 4, 0, 0, 2, 4, 0);
	gDPPipeSync(D_8005BB2C++);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800E988C_F883C.s")
#endif

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
