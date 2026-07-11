#include <ultra64.h>
#include "common.h"

const char D_80144260_153210[] = "ERROR: StripModelToBones array overflow, size %d, max %d\n";
const char D_8014429C_15324C[] = "Generating shadow for (%d), %s";
const char D_801442BC_15326C[] = ".";
const char D_801442C0_153270[] = ".";
const char D_801442C4_153274[] = ".OK\n";

const f32 D_801442CC_15327C[1] = {10000.0f};
const f64 D_801442D0_153280[2] = {0.55, 0.0};

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
		osSyncPrintf(D_80144260_153210, arg1, 0x145);
	}

	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800E88C0_F7870.s")
#endif

// castVehicleShadows?
// CURRENT(16124)
#ifdef NON_MATCHING
void func_800E8A00_F79B0(void) {
	VehicleSpec *vehicleSpec;
	ShadowPartEntry *part;
	s32 vehicleIndex;
	s32 savedVehicleIndex;
	s32 stackDepth;
	s32 model;
	u16 perspNorm;
	s32 partStart;
	s32 partCount;
	s16 partFlags;
	f32 size;

	vehicleIndex = D_80052AD8 - 5;
	stackDepth = 0;
	savedVehicleIndex = D_80052B34->unk1A;

	if ((vehicleIndex < 0x14) && (vehicleIndex > 0)) {
		vehicleSpec = &vehicleSpecs[vehicleIndex];
		if ((*(s32 *) vehicleSpec != 0) && (vehicleIndex != 0x13)) {
			D_801575A4 = (void *) (&D_802C4080[vehicleIndex << 10]);
			D_80052B34->unk8 = 0;
			D_80052B34->unkA = 0;
			D_80052B34->unk6 = 0;
			D_80052B34->unk1A = (u8) vehicleIndex;
			osSyncPrintf(D_8014429C_15324C, vehicleSpec->unk18, D_800344B4_350B4[vehicleSpec->unk18 * 2]);
		} else {
			D_801575A4 = D_802C4080;
		}
	} else {
		D_801575A4 = D_802C4080;
	}

	if ((D_80052B34->unk1A == 0) || (D_80052B34->unk1A == 0x13)) {
		D_80052B34->unk1A = (u8) savedVehicleIndex;
		return;
	}

	vehicleSpec = &vehicleSpecs[D_80052B34->unk1A];

	gSPViewport(D_8005BB2C++, D_13E440);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG | G_LIGHTING);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADE | G_SHADING_SMOOTH);
	gSPDisplayList(D_8005BB2C++, D_80031260_31E60);
	gDPSetScissor(D_8005BB2C++, G_SC_NON_INTERLACE, 0, 0, 32, 32);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RNX, 1);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RNY, 1);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RPX, 0x0000FFFF);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RPY, 0x0000FFFF);
	gSPDisplayList(D_8005BB2C++, D_800311A8);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_FILL);
	gDPSetColorImage(D_8005BB2C++, G_IM_FMT_IA, G_IM_SIZ_8b, 32, D_801575A4);
	gDPSetFillColor(D_8005BB2C++, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, 0, 31, 31);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG | G_LIGHTING);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 9, 9, 9, 0xFF);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);

	D_80052B40.unk0 = 0;
	D_80052B40.unk2 = 0;
	D_80052B40.unk4 = -0x2BC;

	D_80052B48.unk0 = (s16) -D_80052B34->unk8;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = (s16) (D_80052B34->unkA + 0x4000);

	size = (f32) ((u8 *) vehicleSpec)[0x65];
	D_80052B50.unk0 = (s16) (s32) (32768.0 / (f64) ((f32) (((u8 *) vehicleSpec)[0x6C] * 2) + size));
	D_80052B50.unk4 = (s16) (s32) (32768.0 / (f64) ((f32) (((u8 *) vehicleSpec)[0x6D] * 2) + size));
	D_80052B50.unk2 = (s16) -((D_80052B50.unk0 + D_80052B50.unk4) >> 1);

	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);

	gSPMatrix(D_8005BB2C++, (Mtx *) ((u32) D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	D_8005BB38 += 0x40;
	guPerspective(D_8005BB38, &perspNorm, 20.0f, 1.0f, 50.0f, D_801442CC_15327C, 1.0f);

	gSPPerspNormalize(D_8005BB2C++, perspNorm);

	gSPMatrix(D_8005BB2C++, (Mtx *) ((u32) D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

	D_8005BB38 += 0x40;

	if ((vehicleIndex < 0x15) && (vehicleIndex > 0) && (*(s32 *) (&vehicleSpecs[vehicleIndex]) != 0)) {
		osSyncPrintf(D_801442BC_15326C);
	}

	if (D_80052B34->unk1A != 0) {
		gSPDisplayList(D_8005BB2C++, func_800E88C0_F7870(*(s32 *) vehicleSpec, 1));
	} else {
		gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);

		func_800EF14C_FE0FC(D_80052B34);

		gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
	}

	if ((vehicleIndex < 0x15) && (vehicleIndex > 0) && (*(s32 *) (&vehicleSpecs[vehicleIndex]) != 0)) {
		osSyncPrintf(D_801442C0_153270);
	}

	partCount = ((u8 *) vehicleSpec)[0x54];
	partStart = ((u8 *) vehicleSpec)[0x53];
	if (partCount != 0) {
		partCount--;
		part = (ShadowPartEntry *) (&D_8013FDA8_14ED58[partStart]);

		do {
			model = part->model;
			part->updateMtx(partStart);
			partFlags = part->flags;

			if (partFlags & 1) {
				gSPMatrix(D_8005BB2C++, (Mtx *) ((u32) D_8005BB38 & 0x1FFFFFFF), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				stackDepth++;
			} else {
				gSPMatrix(D_8005BB2C++, (Mtx *) ((u32) D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			}
			D_8005BB38 += 0x40;

			if ((partStart != ((u8 *) vehicleSpec)[0x63]) && (partStart != ((u8 *) vehicleSpec)[0x64])) {
				if (partFlags & 0x20) {
					gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH);

					D_80052B50.unk0 = -0x100;
					D_80052B50.unk2 = 0x100;
					D_80052B50.unk4 = 0x100;
					func_800039D0_45D0(NULL, NULL, &D_80052B50, D_8005BB38);

					gSPMatrix(D_8005BB2C++, (Mtx *) ((u32) D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
					D_8005BB38 += 0x40;
				} else {
					gSPClearGeometryMode(D_8005BB2C++, G_CULL_FRONT);

					gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
				}

				if ((model != (s32) D_5031BC0) && (model != (s32) D_5031F30) && (model != (s32) D_5031DB0) &&
					(model != (s32) D_5032038) && (model != (s32) D_5030BA0) && (model != (s32) D_5030CE8) &&
					(model != (s32) D_5030E30) && (model != (s32) D_5030F18) && (model != (s32) D_5030FF8) &&
					(model != (s32) D_50310D8) && (model != (s32) D_9043D50) && (model != (s32) D_50445A0)) {
					gSPDisplayList(D_8005BB2C++, func_800E88C0_F7870(model, 0));
				}
			}

			partStart++;
			part++;

			if ((partFlags & 2) && (stackDepth > 0)) {
				gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
				stackDepth--;
			}

		} while (partCount-- != 0);
	}

	while (stackDepth > 0) {
		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
		stackDepth--;
	}

	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RNX, 4);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RNY, 4);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RPX, 0x0000FFFC);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RPY, 0x0000FFFC);
	gSPSetGeometryMode(D_8005BB2C++, G_FOG);

	D_80052B34->unk1A = (u8) savedVehicleIndex;

	if ((vehicleIndex < 0x15) && (vehicleIndex > 0) && (*(s32 *) (&vehicleSpecs[vehicleIndex]) != 0)) {
		osSyncPrintf(D_801442C4_153274);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/F7870/func_800E8A00_F79B0.s")
#endif

// SetupForShadows
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

	if ((var_t5 == var_v0) && ((void*)arg0 == (void*)D_80052B34) && (vehicleSpecs[arg0->specIndex].unk4C & 0x20000000)) {
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

// StopDrawingShadows
void func_800EA088_F9038(void) {
	gDPPipeSync(D_8005BB2C++);
	gDPTileSync(D_8005BB2C++);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetRenderMode(D_8005BB2C++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_LIGHTING);
}

// DisplayVehicleShadows
void func_800EA12C_F90DC(void) {
	s32 i;

	i = D_80158FD8;
	if (i--) {
		do {
			VehicleInstance *v = &vehicleInstances[D_80158E80[i]];
			if ((v->unk20 & 0x8000) && func_800703B0_7F360(v->unk0, v->unk4) != 0 &&
				func_800B93AC_C835C(v->unk0, v->unk4, 0xA0, (s32)D_80052B2C->unk0, (s32)D_80052B2C->unk8, 0x4000 - D_80047950) != 0) {
				do { } while (0);
				func_800E988C_F883C((AlienInstance *)v, (AlienSpec *)&vehicleSpecs[v->unk1A]);
			}
		} while (i--);
	}
}