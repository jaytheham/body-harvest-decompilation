#define OUTSIDE_F7870_BSS
#include <ultra64.h>
#include "common.h"
#include "version_shift.h"

const char D_80144260_153210[] = "ERROR: StripModelToBones array overflow, size %d, max %d\n"; // "ERROR: StripModelToBones array overflow, size %d, max %d\n"
const char D_8014429C_15324C[] = "Generating shadow for (%d), %s"; // "Generating shadow for (%d), %s"
const char D_801442BC_15326C[] = "."; // "."
const char D_801442C0_153270[] = "."; // "."
const char D_801442C4_153274[] = ".OK\n"; // ".OK\n"

const f32 D_801442CC_15327C[1] = {10000.0f};

// StripModelToBones
Gfx* func_800E88C0_F7870(s32 arg0, s32 arg1) {
	ShadowModelCommand temp;
	Gfx* src;
	s8 opcode;
	Gfx* result;
	static Gfx* dst;
	static Gfx* start;
	static s32 count;

	src = (Gfx*)func_80012000_12C00(arg0);
	switch (arg1) {
	case 0:
		break;
	case 1:
		dst = D_802C9480;
		start = dst;
		count = 0;
		break;
	case 2:
		dst = D_802C9EA8;
		start = dst;
		count = 0;
		break;
	default:
		break;
	}
	result = dst;
	do {
		temp.words = src->words;
		src++;
		opcode = temp.bytes[0];
		if (opcode == -0x41 || opcode == -0x4F || opcode == -0x48 || opcode == 4) {
			dst->words = temp.words;
			dst++;
			count++;
		}
	} while (opcode != -0x48);
	if (count >= 0x145) {
		osSyncPrintf(D_80144260_153210, count, 0x145);
	}
	return result;
}

// CURRENT(16124)
#ifdef NON_MATCHING
// castVehicleShadows?
void func_800E8A00_F79B0(void) {
	VehicleType *vehicleType;
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
		vehicleType = &vehicleTypes[vehicleIndex];
		if ((*(s32 *) vehicleType != 0) && (vehicleIndex != 0x13)) {
			D_801575A4 = (void *) (&D_802C4080[vehicleIndex << 10]);
			D_80052B34->unk8 = 0;
			D_80052B34->unkA = 0;
			D_80052B34->unk6 = 0;
			D_80052B34->unk1A = (u8) vehicleIndex;
			osSyncPrintf(D_8014429C_15324C, vehicleType->unk18, D_800344B4_350B4[vehicleType->unk18].name);
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

	vehicleType = &vehicleTypes[D_80052B34->unk1A];

	gSPViewport(D_8005BB2C++, D_13E440);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_FOG | G_LIGHTING);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADE | G_SHADING_SMOOTH);
	gSPDisplayList(D_8005BB2C++, D_80031260_31E60);
	gDPSetScissor(D_8005BB2C++, G_SC_NON_INTERLACE, 0, 0, 32, 32);
	gSPClipRatio(D_8005BB2C++, FRUSTRATIO_1);
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

	size = (f32) ((u8 *) vehicleType)[0x65];
	D_80052B50.unk0 = (s16) (s32) (32768.0 / ((f32) (((u8 *) vehicleType)[0x6C] * 2) + size));
	D_80052B50.unk4 = (s16) (s32) (32768.0 / ((f32) (((u8 *) vehicleType)[0x6D] * 2) + size));
	D_80052B50.unk2 = (s16) -((D_80052B50.unk0 + D_80052B50.unk4) >> 1);

	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	guPerspective(D_8005BB38, &perspNorm, 20.0f, 1.0f, 50.0f, D_801442CC_15327C, 1.0f);

	gSPPerspNormalize(D_8005BB2C++, perspNorm);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

	if ((vehicleIndex < 0x15) && (vehicleIndex > 0) && (*(s32 *) (&vehicleTypes[vehicleIndex]) != 0)) {
		osSyncPrintf(D_801442BC_15326C);
	}

	if (D_80052B34->unk1A != 0) {
		gSPDisplayList(D_8005BB2C++, func_800E88C0_F7870(*(s32 *) vehicleType, 1));
	} else {
		gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);

		func_800EF14C_FE0FC(D_80052B34);

		gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
	}

	if ((vehicleIndex < 0x15) && (vehicleIndex > 0) && (*(s32 *) (&vehicleTypes[vehicleIndex]) != 0)) {
		osSyncPrintf(D_801442C0_153270);
	}

	partCount = ((u8 *) vehicleType)[0x54];
	partStart = ((u8 *) vehicleType)[0x53];
	if (partCount != 0) {
		partCount--;
		part = (ShadowPartEntry *) (&D_8013FDA8_14ED58[partStart]);

		do {
			model = part->model;
			part->updateMtx(partStart);
			partFlags = part->flags;

			if (partFlags & 1) {
				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				stackDepth++;
			} else {
				gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
			}

			if ((partStart != ((u8 *) vehicleType)[0x63]) && (partStart != ((u8 *) vehicleType)[0x64])) {
				if (partFlags & 0x20) {
					gSPClearGeometryMode(D_8005BB2C++, G_CULL_BOTH);

					D_80052B50.unk0 = -0x100;
					D_80052B50.unk2 = 0x100;
					D_80052B50.unk4 = 0x100;
					func_800039D0_45D0(NULL, NULL, &D_80052B50, D_8005BB38);

					gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
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

	gSPClipRatio(D_8005BB2C++, FRUSTRATIO_4);
	gSPSetGeometryMode(D_8005BB2C++, G_FOG);

	D_80052B34->unk1A = (u8) savedVehicleIndex;

	if ((vehicleIndex < 0x15) && (vehicleIndex > 0) && (*(s32 *) (&vehicleTypes[vehicleIndex]) != 0)) {
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

// AI - Line-of-sight ground raycast: steps from the camera toward a target point checking terrain height
s32 func_800E95BC_F856C(s32 arg0, s32 arg1, s32 arg2) {
	s32 pad[4]; /* Preserves the original unused stack space. */
	s32 stepX;
	s32 stepY;
	s32 stepZ;
	Vec3i base;
	s32 deltaX;
	s32 negativeX;
	s32 deltaZ;
	s32 negativeZ;
	s32 absDeltaX;
	s32 absDeltaZ;
	s32 scratch;
	s32 nSteps;

	base.x = (s32)D_80052B2C->unk0 << 8;
	base.y = (s32)D_80052B2C->unk4 << 8;
	base.z = (s32)D_80052B2C->unk8 << 8;

	deltaX = (arg0 << 8) - base.x;
	negativeX = -deltaX;
	absDeltaX = (negativeX < deltaX) ? deltaX : negativeX;

	deltaZ = (arg2 << 8) - base.z;
	negativeZ = -deltaZ;
	if (negativeZ < deltaZ) {
		absDeltaZ = deltaZ;
	} else {
		absDeltaZ = negativeZ;
	}

	if (absDeltaZ < absDeltaX) {
		if (negativeX < deltaX) {
			scratch = deltaX;
		} else {
			scratch = negativeX;
		}
		nSteps = scratch >> 8;
		if (nSteps != 0) {
			scratch = (deltaX < 0) ? -0x100 : 0x100;

			stepX = scratch << 8;
			stepY = (((arg1 << 8) - base.y) << 8) / nSteps;
			stepZ = (deltaZ << 8) / nSteps;
		}
	} else {
		nSteps = ((negativeZ < deltaZ) ? deltaZ : negativeZ) >> 8;
		if (nSteps != 0) {
			stepX = (deltaX << 8) / nSteps;
			stepY = (((arg1 << 8) - base.y) << 8) / nSteps;
			scratch = (deltaZ < 0) ? -0x100 : 0x100;
			stepZ = scratch << 8;
		}
	}

	nSteps = nSteps >> 8;
	while (nSteps--) {
		base.z += stepZ;
		base.x += stepX;
		base.y += stepY;

		if (base.y < func_800B84D0_C7480(base.x >> 8, base.z >> 8)) {
			return 1;
		}
	}

	return 0;
}

s16 func_800E9868_F8818(s32 arg0, s32 arg1) {
	return (s16) ((D_801493D8 * 4) + 0x310);
}

// Draw an entity shadow using the selected terrain-height sampler.
void func_800E988C_F883C(AlienInstance *arg0, AlienType *arg1) {
	f32 sine;
	f32 cosine;
	s16 width;
	s16 depth;
	union {
		s16 (*height)(s16, s16);
		void *texture;
	} data;
	s32 typeIndex;
	s16 depthCosine;
	s16 widthNegativeSine;
	s16 (*sampleHeight)(s16, s16);
	s16 depthSine;
	s16 widthCosine;
	u8 color;

	sine = (f32)sins(arg0->unk6) / 32768.0;
	cosine = (f32)coss(arg0->unk6) / 32768.0;
	if (((void*)arg0 == D_80052B34) && (D_801493E0 == 0)) {
		return;
	}

	if ((arg0->unkC == -2) && (arg0->flagsHigh & 0x800)) {
		return;
	}

	if ((arg0->unkC != -2) && (arg0->typeIndex == 2)) {
		return;
	}

	if (arg0->unkC == -2) {
		width = vehicleTypes[arg0->typeIndex].shadowWidth << 1;
		depth = vehicleTypes[arg0->typeIndex].shadowDepth << 1;
	} else {
		width = arg1->unk34 >> 1;
		depth = arg1->unk36 >> 1;
	}

	if (func_800E95BC_F856C(arg0->unk0, (func_800B84D0_C7480(arg0->unk0, arg0->unk4) >> 8) + 5, arg0->unk4) != 0) {
		return;
	}

	if (D_801575A0 & 1) {
		data.height = func_800F9EC4_108E74;
		sampleHeight = (s16 (*)(s16, s16)) func_800E9868_F8818;
	} else {
		sampleHeight = func_800F9F00_108EB0;
		if (D_80222A70 >= arg0->unk2) {
			data.height = func_800F9EC4_108E74;
			sampleHeight = data.height;
		} else {
			data.height = func_800F9EC4_108E74;
		}
	}

	if ((sampleHeight == data.height) && ((void*)arg0 == D_80052B34) && (vehicleTypes[arg0->typeIndex].unk4C & 0x20000000)) {
		sampleHeight = func_800F9F00_108EB0;
	}

	data.texture = arg1->shadowTexture;
	if ((void*)arg0 == D_80052B34) {
		typeIndex = D_80052B34->unk1A;

		if ((typeIndex == 0) || (typeIndex == 0x13)) {
			data.texture = D_5000000;
			if (typeIndex == 0) {
				width = arg1->unk34 * 0.55;
				depth = arg1->unk36 * 0.55;
			}
		} else {
			data.texture = D_802C4080;
		}
	} else if (arg0->unkC == -2) {
		typeIndex = arg0->typeIndex;

		if (typeIndex == 0x13) {
			data.texture = D_5000000;
		} else {
			data.texture = &D_802C4080[typeIndex << 10];
		}
	}

	if (data.texture != NULL) {
		gDPSetCombineLERP(D_8005BB2C++, TEXEL0, 0, SHADE, 0, 0, TEXEL0, SHADE, TEXEL0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED);
		gDPLoadTextureBlock(D_8005BB2C++, data.texture, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
	} else {
		gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PASS2);
	}

	depthCosine = (f32)depth * cosine;
	widthNegativeSine = (f32)width * -sine;
	depthSine = (f32)depth * sine;
	widthCosine = (f32)width * cosine;

	D_8005BB34->v.ob[0] = (arg0->unk0 + depthCosine + widthNegativeSine);
	D_8005BB34->v.ob[2] = (arg0->unk4 + depthSine + widthCosine);
	D_8005BB34->v.ob[1] = sampleHeight(D_8005BB34->v.ob[0], D_8005BB34->v.ob[2]);
	D_8005BB34->v.tc[1] = 0x7DA;
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.cn[2] = 0;
	color = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[1] = color;
	D_8005BB34->v.cn[0] = color;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = ((arg0->unk0 - depthCosine) + widthNegativeSine);
	D_8005BB34->v.ob[2] = ((arg0->unk4 - depthSine) + widthCosine);
	D_8005BB34->v.ob[1] = sampleHeight(D_8005BB34->v.ob[0], D_8005BB34->v.ob[2]);
	D_8005BB34->v.tc[0] = 0;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	color = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[1] = color;
	D_8005BB34->v.cn[0] = color;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = ((arg0->unk0 + depthCosine) - widthNegativeSine);
	D_8005BB34->v.ob[2] = ((arg0->unk4 + depthSine) - widthCosine);
	D_8005BB34->v.ob[1] = sampleHeight(D_8005BB34->v.ob[0], D_8005BB34->v.ob[2]);
	D_8005BB34->v.tc[0] = 0x7DA;
	D_8005BB34->v.tc[1] = 0x7DA;
	D_8005BB34->v.cn[2] = 0;
	color = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[1] = color;
	D_8005BB34->v.cn[0] = color;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = ((arg0->unk0 - depthCosine) - widthNegativeSine);
	D_8005BB34->v.ob[2] = ((arg0->unk4 - depthSine) - widthCosine);
	D_8005BB34->v.ob[1] = sampleHeight(D_8005BB34->v.ob[0], D_8005BB34->v.ob[2]);
	D_8005BB34->v.tc[0] = 0x7DA;
	D_8005BB34->v.tc[1] = 0;
	D_8005BB34->v.cn[2] = 0;
	color = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[1] = color;
	D_8005BB34->v.cn[0] = color;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	D_8005BB34->v.ob[0] = arg0->unk0;
	D_8005BB34->v.ob[2] = arg0->unk4;
	D_8005BB34->v.ob[1] = sampleHeight(arg0->unk0, arg0->unk4);
	D_8005BB34->v.tc[1] = 0x3ED;
	D_8005BB34->v.tc[0] = D_8005BB34->v.tc[1];
	D_8005BB34->v.cn[2] = 0;
	color = D_8005BB34->v.cn[2];
	D_8005BB34->v.cn[1] = color;
	D_8005BB34->v.cn[0] = color;
	D_8005BB34->v.cn[3] = 0xFF;
	D_8005BB34++;

	gSPVertex(D_8005BB2C++, K0_TO_PHYS(&D_8005BB34[-5]), 5, 0);
	gSP2Triangles(D_8005BB2C++, 1, 0, 4, 0, 3, 1, 4, 0);
	gSP2Triangles(D_8005BB2C++, 2, 3, 4, 0, 0, 2, 4, 0);
	gDPPipeSync(D_8005BB2C++);
}


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
				func_800E988C_F883C((AlienInstance *)v, (AlienType *)&vehicleTypes[v->unk1A]);
			}
		} while (i--);
	}
}
