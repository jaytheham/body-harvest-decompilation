#include <ultra64.h>
#include "common.h"

void func_8007D7E0_4DC90(void) {
	func_8008F574_5FA24();
	func_8007F3EC_4F89C(&D_800D7A68);

	D_80094998_64E48 = 0;
	D_800D7A84 = 0;
	D_80094934_64DE4 = 1;

	D_800D7A18 = D_80095080_65530;
	D_800D7A1C = D_800950C0_65570;
	D_800D7A20 = (FrontendMovieResource*)D_80095698_65B48;
	D_800D7A24 = (Unk80080530_Src*)D_80095910_65DC0;
	D_800D7A28 = D_80096540_669F0;
	D_800D7A2C = (u8*)D_80095D9C_6624C;
	D_800D7A30 = (FrontendCamEntry*)D_80095DB0_66260;
	D_800D7A34 = D_80096384_66834;
	D_800D7A38 = D_80096528_669D8;
	D_800D7A3C = (u8*)D_80096370_66820;
	D_800D7A40 = (Unk8007E12CEntry8*)D_80096548_669F8;
	D_800D7A48 = (u8*)D_800965E8_66A98;
	D_800D7A44 = D_800965D8_66A88; /* Alternate object-event bindings. */
	D_800D7A4C = D_800965F0_66AA0;

	D_800D7A58 = 0x22;
	D_800D7A8D = 0x0F;
}

s32 func_8007D91C_4DDCC(u8 arg0) {
	s32 fadeState;
	s32 flags;
	s32 i;
	s32 lookAtIndex;
	f32 one;

	lookAtIndex = 0;

	if (D_80094934_64DE4 != 0) {
		switch (arg0) {
		case 0:
			func_8007EA0C_4EEBC((s32*)&D_80098FF0_694A0[0]);
			break;
		case 1:
			func_8007EA0C_4EEBC((s32*)&D_80098FF0_694A0[1]);
			break;
		case 2:
			func_8007EA0C_4EEBC((s32*)&D_80098FF0_694A0[2]);
			break;
		default:
			break;
		}
	}

	fadeState = func_8007E12C_4E5DC();
	i = 0;
	one = 1.0f;
	while (i < D_800D7A58) {
		if (D_800D7A1C[i].unk1C != 0) {
			D_80094944_64DF4 = D_800D7A1C[i].unk29;
			func_80080668_50B18(D_800D7A1C[i].unk8, (AnimChannelState*)&D_800D7B10[D_800D7A1C[i].unk18], one, D_800D7A1C[i].unk19);
			if ((D_800D7A1C[i].unk20 & 0x20) != 0) {
				func_800819C0_51E70(&D_8009499C);
			}
		}
		i = (i + 1) & 0xFF;
	}

	if (D_80094948_64DF8) {
		func_80081F9C_5244C();
	}

	one = 1.0f;
	if (D_80094904_64DB4 == 3) {
		gDPPipeSync(D_8005BB2C++);
		gDPSetAlphaCompare(D_8005BB2C++, G_AC_THRESHOLD);
		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_TEX_EDGE, G_RM_NOOP2);
		gDPPipeSync(D_8005BB2C++);
		func_80005C5C_685C(D_40856F0, 2, 1, 8, 0, 0xB0, 0x140, 0x40, one, one, D_408A6F0);
	}

	func_80081FF0_524A0();
	func_8007EBB8_4F068();
	func_8008FDF0_602A0();
	if (!fadeState) {
		func_8007EB98_4F048();
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_MODULATEIA);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gDPSetColorDither(D_8005BB2C++, G_CD_MAGICSQ);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gSPClearGeometryMode(D_8005BB2C++, 0xFFFFFFFF);
	gSPSetGeometryMode(D_8005BB2C++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH);

	if (D_80094904_64DB4 == 2) {
		func_80081CAC_5215C(0, 0, 0x6E, 0x78);
	}

	func_8007F580_4FA30(1);
	i = 0;
	while (i < D_800D7A58) {
		if (D_800D7A1C[i].unk1C != 0) {
			if (D_800D7A1C[i].unk28 != 0xFF) {
				gSPDisplayList(D_8005BB2C++, (Gfx*)D_800D7A40[D_800D7A1C[i].unk28].unk0);
			}

			if ((D_800D7A1C[i].unk20 & 1) != 0) {
				gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0xFF, D_800D7A1C[i].unk24);
				gDPSetCombineLERP(D_8005BB2C++, TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0,
						  TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0);
			} else {
				gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
				gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0,
						  PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, SHADE, 0);
			}

			flags = D_800D7A1C[i].unk20;
			if ((flags & 2) != 0) {
				gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
				gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
				flags = D_800D7A1C[i].unk20;
			}

			if ((flags & 4) != 0) {
				guLookAtReflect((Mtx *)D_8005BB38, &D_800D7978[lookAtIndex], ((FrontendCamState*)D_800D7A18)->unk10.x, ((FrontendCamState*)D_800D7A18)->unk10.y, ((FrontendCamState*)D_800D7A18)->unk10.z,
						D_800D7A1C[i].unkC, D_800D7A1C[i].unkE, D_800D7A1C[i].unk10, 0.0f, 1.0f, 0.0f);
				gSPLookAt(D_8005BB2C++, &D_800D7978[lookAtIndex]);
				lookAtIndex = (lookAtIndex + 1) & 0xFF;
			}
			flags = D_800D7A1C[i].unk20;

			if ((flags & 8) != 0) {
				gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK);
			} else {
				gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
			}

			if (D_800D7A1C[i].unk2A != 0xFF) {
				D_800D8514 = (s32*)D_800D7A44[D_800D7A1C[i].unk2A].unk0;
			} else {
				D_800D8514 = 0;
			}

			if ((D_800D7A1C[i].unk20 & 0x20) != 0) {
				func_80081A50_51F00((FrontendTextureInfo*)&D_8009499C);
			}

			if (D_8009494C_64DFC != 0) {
				func_80082074_52524();
			}

			D_80094944_64DF4 = D_800D7A1C[i].unk29;
			func_8007FE8C_5033C((Unk8007FE8CArg*)&D_800D7A1C[i]);

			if ((D_800D7A1C[i].unk20 & 2) != 0) {
				gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
			}

			if (D_800D7A1C[i].unk28 != 0xFF) {
				func_8007F580_4FA30(0);
			}
		}

		i = (i + 1) & 0xFF;
	}

	func_8008FD9C_6024C();
	if (D_800D7970 != 0) {
		switch (D_800D7970) {
		case 1:
		case 2:
			func_8007FBF8_500A8();
			break;
		}
	}
	func_80090648_60AF8();
	return D_80094998_64E48;
}

s32 func_8007E12C_4E5DC(void) {
	Unk8007E12CEntry8* entry;
	FrontendMovieResource* argEntry;
	Unk80080530_Dst* dst;
	FrontendLightTrack* lightTrack;
	u8 arg;
	Unk8007E12CEntry8* descriptor;
	u8 i;
	/* Keep the result in memory across event helpers. */
	volatile s32 returnValue;
	Unk8007E12CEntry8* audio;
	s32 op;
	u8 one;

	returnValue = 0;
	entry = &((Unk8007E12CEntry8*)D_800D7A54)[D_800D7A5C];
	if (entry->unk0 == D_80094900) {
		while (1) {
			op = entry->unk4;
			switch (op) {
				case 0:
					argEntry = &D_800D7A20[entry->unk5];
					dst = &D_800D7A1C[argEntry->objectIndex];
					dst->unk8 = func_800809DC_50E8C(argEntry->stream->frameCount);
					dst->unk29 = argEntry->flags;
					func_8008035C_5080C(dst->unk8, (AnimChannelState*)&D_800D7B10[dst->unk18], argEntry->stream, 1, dst->unk19);
					break;
				case 1:
					D_80094930_64DE0 = 1;
					func_8007EE8C_4F33C(((s32**)D_800D7A2C)[entry->unk5]);
					break;
				case 2:
					break;
				case 3:
					arg = entry->unk5;
					/* Byte width preserves the comparison order and opcode spill home. */
					one = 1;
					if ((one == arg) || (arg == 2)) {
						func_8007FBC8_50078(arg);
						arg = ((Unk8007E12CEntry8*)D_800D7A54)[D_800D7A5C].unk5;
					}
					D_800D7970 = arg;
					break;
				case 4:
					D_80094904_64DB4 = entry->unk5;
					break;
				case 5:
					arg = entry->unk5;
					if ((D_800313D0_31FD0 == 2) && (arg == 0x13)) {
						break;
					}
					dst = &D_800D7A1C[arg];
					dst->unk28 = 0xFF;
					dst->unk29 = 0xFF;
					dst->unk2A = 0xFF;
					dst->unk1C = 1;
					func_80080F8C_5143C((AnimChannelState*)&D_800D7B10[D_800D7A84], ((FrontendObjectResourceHeader*)dst)->pose, dst->unk19);
					func_80080A84_50F34((FrontendStreamSlot*)dst->unk8);
					dst->unk18 = D_800D7A84;
					D_800D7A84 += dst->unk19;
					break;
				case 6:
					arg = entry->unk5;
					if ((D_800313D0_31FD0 == 2) && (arg == 0x13)) {
						break;
					}
					dst = &D_800D7A1C[arg];
					func_80080A84_50F34((FrontendStreamSlot*)dst->unk8);
					dst->unk1C = 0;
					break;
				case 7:
					D_800D8510 = 1.0f;
					D_80094900 = 0;
					D_80094930_64DE0 = 0;
					func_8008098C_50E3C();
					D_800DE068 = D_800D88E8;
					D_800D7A84 = 0;
					for (i = 0; i < D_800D7A58; i++) {
						D_800D7A1C[i].unk1C = 0;
					}
					D_800D7970 = 0;
					for (i = 0; i < D_800D7A8D; i++) {
						D_800D7A34[i].unk18 = 0;
					}
					D_800D7974 = 1.33333337f;
					D_800AC0E4_7C594 = 0.0f;
					break;
				case 8:
					D_80094998_64E48 = 1;
					returnValue = 1;
					break;
				case 9:
					D_80094930_64DE0 = 0;
					func_8007EE0C_4F2BC(&D_800D7A30[entry->unk5]);
					break;
				case 10:
					D_800D7A86 = D_800D7A38[entry->unk5];
					D_800D8530.unk14 = D_800D7A38[entry->unk5].unk0;
					D_800D8530.unk15 = D_800D7A38[entry->unk5].unk1;
					D_800D8530.unk16 = D_800D7A38[entry->unk5].unk2;
					break;
				case 11:
					D_800D7A34[entry->unk5].unk18 = 1;
					break;
				case 12:
					D_800D7A34[entry->unk5].unk18 = 0;
					break;
				case 13:
					lightTrack = ((FrontendLightTrack**)D_800D7A3C)[entry->unk5];
					if (lightTrack->destination == 0xFF) {
						func_8007FB90_50040((s32*)&D_800D8530, (s32*)lightTrack);
					} else {
						func_8007FB90_50040((s32*)&D_800D7A34[lightTrack->destination], (s32*)lightTrack);
					}
					break;
				case 14:
					func_8008F574_5FA24();
					D_800D7A60++;
					D_800D7A54 = ((Unk8007E12CEntry8**)D_800D7A50)[D_800D7A60];
					D_800D7A5C = 0;
					D_80094900 = 0;
					break;
				case 16:
					func_80080530_509E0(&D_800D7A24[entry->unk5]);
					break;
				case 17:
					for (i = 0; i < D_800D7A8D; i++) {
						D_800D7A34[i].unk18 = 0;
					}
					break;
				case 18:
					D_800D7B08.unk0 = D_800D7A38[entry->unk5].unk0;
					D_800D7B08.unk1 = D_800D7A38[entry->unk5].unk1;
					D_800D7B08.unk2 = D_800D7A38[entry->unk5].unk2;
					D_800D7B0C = D_800D7B08;
					break;
				case 19:
					D_80094908_64DB8 = entry->unk5;
					break;
				case 20:
					arg = entry->unk5;
					descriptor = &D_800D7A40[arg];
					dst = &D_800D7A1C[descriptor->unk4];
					dst->unk28 = arg;
					break;
				case 21:
					dst = &D_800D7A1C[entry->unk5];
					dst->unk28 = 0x15;
					break;
				case 22:
					D_800D8510 = (u32)entry->unk5;
					break;
				case 23:
					arg = entry->unk5;
					descriptor = &D_800D7A44[arg];
					dst = &D_800D7A1C[descriptor->unk4];
					dst->unk2A = arg;
					break;
				case 24:
					D_800D7974 = ((f32*)D_800D7A48)[entry->unk5];
					break;
				case 25:
					func_8008FE98_60348(entry->unk5);
					break;
				case 26:
					D_800D7B0C.unk0 = D_800D7A38[entry->unk5].unk0;
					D_800D7B0C.unk1 = D_800D7A38[entry->unk5].unk1;
					D_800D7B0C.unk2 = D_800D7A38[entry->unk5].unk2;
					break;
				case 27:
					D_8009490C_64DBC = entry->unk5;
					break;
				case 28:
					D_800AC0E4_7C594 = 0.00999999978f;
					break;
				case 29:
					D_800949BC_64E6C = 1;
					break;
				case 30:
					audio = &((Unk8007E12CEntry8*)(void*)D_800D7A4C)[entry->unk5];
					if (audio->unk4 != 6) {
						D_800D8524 = audio->unk4;
						D_800D8520 = D_800D7A4C[entry->unk5].unk0;
					} else {
						D_800D8518 = audio->unk0;
						D_800D851C = D_800D7A4C[entry->unk5].unk4;
					}
					break;
				case 31:
					D_80094948_64DF8 = 1;
					break;
				case 32:
					D_80094948_64DF8 = 0;
					break;
				case 33:
					D_800D8528 = (u32)entry->unk5;
					break;
				case 34:
					D_8009494C_64DFC = entry->unk5;
					D_80094950_64E00 = 0.0f;
					break;
				default:
					osSyncPrintf(D_800AE8E0_7ED90);
					break;
			}

			if ((returnValue == 0) && (op != 0xE)) {
				D_800D7A5C++;
			}

			if (returnValue != 0) {
				break;
			}

			entry = &((Unk8007E12CEntry8*)D_800D7A54)[D_800D7A5C];
			if (entry->unk0 != D_80094900) {
				break;
			}
		}

	}
	return returnValue;
}

void func_8007EA0C_4EEBC(s32* arg0) {
	u8 v1;

	D_80094900 = 0;
	D_800D7A60 = 0;
	D_800D7A5C = 0;
	D_800D7A84 = 0;
	D_800D7970 = 0;
	D_80094930_64DE0 = 0;

	D_800D7A50 = (Unk8007E12CEntry8**)*arg0;
	D_800D7A54 = ((Unk8007E12CEntry8**)D_800D7A50)[D_800D7A60];

	for (v1 = 0; v1 < D_800D7A58; v1++) {
		D_800D7A1C[v1].unk1C = 0;
		D_800D7A1C[v1].unk8 = NULL;
	}
	v1 = 0;

	D_800D7B08.unk0 = 0;
	D_800D7B08.unk1 = 0;
	D_800D7B08.unk2 = 0;
	D_80094908_64DB8 = 7;

	func_8007EBB0_4F060();

	D_800D7A86.unk0 = 0;
	D_800D7A86.unk1 = 0;
	D_800D7A86.unk2 = 0;
	D_80094934_64DE4 = 0;

	for (; v1 < 10; v1++) {
		D_800D8550[v1] = NULL;
	}

	D_800DE068 = D_800D88E8;
	D_800D8518 = 0;
	D_800D8520 = 0;
	D_80094948_64DF8 = 0;
	D_800D8528 = 0.0f;
	D_8009494C_64DFC = 0;
	D_80094950_64E00 = 0.0f;
	D_80094904_64DB4 = 0;
}

void func_8007EB98_4F048(void) {
	D_80094900++;
}

void func_8007EBB0_4F060(void) {
}

void func_8007EBB8_4F068(void) {
	u16 perspNorm;
	volatile s32 pad[4];

	func_8000345C_405C(0x20);

	if (D_80094930_64DE0 != 0) {
		func_8007EEE0_4F390();
		func_8007F188_4F638((Vec3f*)&((FrontendCamState*)D_800D7A18)->unk10,
							 (Vec3f*)&((FrontendCamState*)D_800D7A18)->unk1C,
							 (Vec3f*)&((FrontendCamState*)D_800D7A18)->unk28,
							 ((FrontendCamState*)D_800D7A18)->unk38,
							 (u16)((FrontendCamState*)D_800D7A18)->unk36,
							 (u16)((FrontendCamState*)D_800D7A18)->unk34,
							 ((FrontendCamState*)D_800D7A18)->unk3C);
	}

	if ((((FrontendCamState*)D_800D7A18)->unk10.x == ((FrontendCamState*)D_800D7A18)->unk1C.x)
		&& (((FrontendCamState*)D_800D7A18)->unk10.z == ((FrontendCamState*)D_800D7A18)->unk1C.z)) {
		osSyncPrintf(D_800AE8FC_7EDAC);
	}

	guPerspective(D_8005BB38, &perspNorm, (f32)((FrontendCamState*)D_800D7A18)->unk3A, D_800D7974, D_800D8510, 4000.0f, 1.0f);
	gSPPerspNormalize(D_8005BB2C++, perspNorm);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

	guLookAt(D_8005BB38,
		((FrontendCamState*)D_800D7A18)->unk10.x,
		((FrontendCamState*)D_800D7A18)->unk10.y,
		((FrontendCamState*)D_800D7A18)->unk10.z,
		((FrontendCamState*)D_800D7A18)->unk1C.x + D_800D8528,
		((FrontendCamState*)D_800D7A18)->unk1C.y + D_800D8528,
		((FrontendCamState*)D_800D7A18)->unk1C.z,
		((FrontendCamState*)D_800D7A18)->unk28.x,
		((FrontendCamState*)D_800D7A18)->unk28.y,
		((FrontendCamState*)D_800D7A18)->unk28.z);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
	gSPMatrix(D_8005BB2C++, &D_80094958_64E08, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	func_800838E0_53D90(D_8005BB38 - 1);
	func_800839F0_53EA0(&((FrontendCamState*)D_800D7A18)->unk10.x, &((FrontendCamState*)D_800D7A18)->unk1C.x);
}

// AI - Copies a frontend camera entry's position/rotation into the active playback camera state
void func_8007EE0C_4F2BC(FrontendCamEntry* arg0) {
	if (!D_80094938) {
		((FrontendCamState*)D_800D7A18)->unk10 = *(Vec3f*)&arg0->unk0;
		((FrontendCamState*)D_800D7A18)->unk1C = *(Vec3f*)&arg0->unkC;
		((FrontendCamState*)D_800D7A18)->unk34 = arg0->unk18;
		((FrontendCamState*)D_800D7A18)->unk3A = arg0->unk1A - 10;
		((FrontendCamState*)D_800D7A18)->unk3C = arg0->unk1C;
	}
}

/**
 * @brief Initializes the global frontend playback block (D_800D7A18) from a pointer-to-pointer source.
 */
void func_8007EE8C_4F33C(s32** arg0) {
	D_800D7A18[2] = 0;
	if (*arg0 != 0) {
		D_800D7A18[3] = (s32)arg0;
		D_800D7A18[0] = (s32)*arg0;
		D_800D7A18[1] = (*arg0)[5];
		return;
	}
	D_800D7A18[3] = 0;
}

s32 func_8007EEE0_4F390(void) {
	FrontendCamKeyframe* keyframe;
	void* data;
	s32 remaining;
	s32 total;
	s32 elapsed;
	s32 angleX;
	s32 angleY;
	s32 angleZ;
	s32 fov;
	f32 t;

	if (((FrontendCamState*)D_800D7A18)->unkC != 0) {
		data = (void*)((FrontendCamState*)D_800D7A18)->unk0;
		keyframe = data;
		remaining = ((FrontendCamState*)D_800D7A18)->unk4;
		if (remaining <= 0) {
			((FrontendCamState*)D_800D7A18)->unk36 = keyframe->unkA;
			((FrontendCamState*)D_800D7A18)->unk38 = keyframe->unkC;
			((FrontendCamState*)D_800D7A18)->unk34 = keyframe->unkE;
			((FrontendCamState*)D_800D7A18)->unk1C.x = keyframe->unk4;
			((FrontendCamState*)D_800D7A18)->unk1C.y = keyframe->unk6;
			((FrontendCamState*)D_800D7A18)->unk1C.z = keyframe->unk8;
			((FrontendCamState*)D_800D7A18)->unk3C = keyframe->unk10;
			((FrontendCamState*)D_800D7A18)->unk8++;

			data = (void*)((FrontendCamState*)D_800D7A18)->unkC;
			remaining = ((FrontendCamState*)D_800D7A18)->unk8;
			if (remaining == ((FrontendCamTrack*)data)->unk4) {
				((FrontendCamState*)D_800D7A18)->unkC = 0;
			} else {
				((FrontendCamState*)D_800D7A18)->unk0 = (s32)(&((FrontendCamTrack*)data)->unk0[remaining]);
				((FrontendCamState*)D_800D7A18)->unk4 = ((FrontendCamKeyframe*)((FrontendCamState*)D_800D7A18)->unk0)->unk14;
			}
		} else {
			total = ((FrontendCamKeyframe*)data)->unk14;
			elapsed = total - remaining;
			t = 1.0f / (f32)(total - elapsed);
			data = &D_800D7974;
			*((f32*)data) = *((f32*)data) + (keyframe->unk0 - *((f32*)data)) * t;

			((FrontendCamState*)D_800D7A18)->unk1C.x = ((f32)keyframe->unk4 - ((FrontendCamState*)D_800D7A18)->unk1C.x) * t + ((FrontendCamState*)D_800D7A18)->unk1C.x;
			((FrontendCamState*)D_800D7A18)->unk1C.y = ((f32)keyframe->unk6 - ((FrontendCamState*)D_800D7A18)->unk1C.y) * t + ((FrontendCamState*)D_800D7A18)->unk1C.y;
			((FrontendCamState*)D_800D7A18)->unk1C.z = ((f32)keyframe->unk8 - ((FrontendCamState*)D_800D7A18)->unk1C.z) * t + ((FrontendCamState*)D_800D7A18)->unk1C.z;
			angleX = ((FrontendCamState*)D_800D7A18)->unk36;
			((FrontendCamState*)D_800D7A18)->unk36 = (s16)((f32)(keyframe->unkA - angleX) * t + (f32)angleX);
			angleY = ((FrontendCamState*)D_800D7A18)->unk38;
			((FrontendCamState*)D_800D7A18)->unk38 = (s16)((f32)(keyframe->unkC - angleY) * t + (f32)angleY);
			angleZ = ((FrontendCamState*)D_800D7A18)->unk34;
			((FrontendCamState*)D_800D7A18)->unk34 = (s16)((f32)(keyframe->unkE - angleZ) * t + (f32)angleZ);
			fov = ((FrontendCamState*)D_800D7A18)->unk3C;
			((FrontendCamState*)D_800D7A18)->unk3C = (s16)((f32)fov + (f32)(keyframe->unk10 - fov) * t);
			/* Keep elapsed live through interpolation for IDO register allocation. */
			if (elapsed) {}
		}

		((FrontendCamState*)D_800D7A18)->unk4--;
		return 1;
	}
	return 0;
}

void func_8007F188_4F638(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, s16 arg3, u16 arg4, u16 arg5, s16 arg6) {
	Vec3f sp44;
	f32 sp40;
	f32 sp3C;
	f32 sp38;
	f32 sp34;
	f32 temp_f2;
	u32 sp28;

	sp28 = (u16)arg3;
	sp38 = (f32)((f64)sins(sp28) / 32768.0);
	sp34 = (f32)((f64)coss(sp28) / 32768.0);
	sp28 = arg4;
	sp40 = (f32)((f64)sins(sp28) / 32768.0);
	sp3C = (f32)((f64)coss(sp28) / 32768.0);
	sp28 = arg5;
	temp_f2 = (f32)((f64)sins(sp28) / 32768.0);
	arg3 = coss(sp28);

	((f32*)&sp44)[0] = 0.0f;
	((f32*)&sp44)[1] = 0.0f;
	((f32*)&sp44)[2] = 1.0f;
	*arg0 = sp44;
	sp44.x = arg0->x;
	sp44.y = (arg0->y * sp3C) - (arg0->z * sp40);
	sp44.z = (arg0->y * sp40) + (arg0->z * sp3C);
	arg0->x = (sp44.z * sp38) + (sp44.x * sp34);
	arg0->y = sp44.y;
	arg0->z = (sp44.z * sp34) - (sp44.x * sp38);

	sp44.x = 0.0f;
	sp44.z = 0.0f;
	((f32*)&sp44)[1] = 1.0f;
	if (sp28) {
		sp38 = 1.0f;
	} else {
		sp38 = 1.0f;
	}
	arg2->x = 0.0f - (sp38 * temp_f2);
	arg2->y = (sp44.x * temp_f2) + (sp44.y * (f32)((f64)arg3 / 32768.0));
	arg2->z = sp44.z;

	if (arg6 == 0) {
		arg6 = 0;
	}
	temp_f2 = -arg6;
	arg0->x = arg0->x * temp_f2;
	arg0->y = arg0->y * temp_f2;
	arg0->z = arg0->z * temp_f2;
	arg0->x = arg0->x + arg1->x;
	arg0->y = arg0->y + arg1->y;
	arg0->z = arg0->z + arg1->z;
}

void func_8007F3EC_4F89C(FrontendStruct* arg0) {
	arg0->unk12 = 0;
	arg0->unk10 = 0;
}

/* Integer basis factors preserve the original zero/one products. */
void func_8007F3F8_4F8A8(FrontendStruct* arg0, Light* arg1) {
	/* Preserve IDO's local homes and trigonometric spill placement. */
	s32 pad0[7];
	f32 cosY;
	f32 sinY;
	s32 pad1;
	f32 sinX;
	f32 cosX;
	s32 pad2;
	f32 scale;
	s32 pad3;
	f32 z;
	f64 radians;
	f64 degrees;

	radians = D_800AEA40_7EEF0[0];
	degrees = D_800AEA48_7EEF8[0];
	sinY = sinf((f32)((f32)arg0->unk12 * radians / degrees));
	cosY = cosf((f32)((f32)arg0->unk12 * radians / degrees));
	sinX = sinf((f32)((f32)arg0->unk10 * radians / degrees));
	cosX = cosf((f32)((f32)arg0->unk10 * radians / degrees));

	scale = 100.0f;

	z = 0 * sinX + 1 * cosX;
	arg1->l.dir[0] = (-(z * sinY + 0 * cosY) * scale);
	arg1->l.dir[1] = (-(0 * cosX - 1 * sinX) * scale);
	arg1->l.dir[2] = (-(z * cosY - 0 * sinY) * scale);
}

void func_8007F580_4FA30(s32 arg0) {
	u8 lightCount;
	u8 iter;
	u8 nextCount;
	Unk80080588Entry1C* source;
	Unk80080588Entry1C* sourceList;
	Lights1* light;
	Light* buffer;

	lightCount = 0;
	iter = 0;
	if (D_800D7A8D > 0) {
		buffer = D_800D7A90.slots;
		sourceList = ((FrontendResourcePointers*)&D_800D7A18)->lightSources; do {
			if (sourceList[iter].unk18 != 0) {
				if (arg0 != 0) {
					func_8007F830_4FCE0(&sourceList[iter]);
					sourceList = D_800D7A34;
				}

				light = (Lights1*)&D_800D7A90.slots[lightCount];
				/* Keep the lighting bases and source stride live across the helper call. */
				if (lightCount && sourceList) {}
				if (buffer) {}
				if (&sourceList[lightCount]) {}
				func_8007F3F8_4F8A8((FrontendStruct*)&sourceList[iter], &light->l[0]);
				sourceList = D_800D7A34;

				/* Retain the byte count until all six color stores are complete. */
				nextCount = lightCount;
				nextCount++;
				light->l[0].l.col[0] = sourceList[iter].unk14;
				light->l[0].l.colc[0] = sourceList[iter].unk14;
				light->l[0].l.col[1] = sourceList[iter].unk15;
				light->l[0].l.colc[1] = sourceList[iter].unk15;
				light->l[0].l.col[2] = sourceList[iter].unk16;
				light->l[0].l.colc[2] = sourceList[iter].unk16;
				lightCount = nextCount;
			}
			iter++;
		} while (iter < D_800D7A8D);
		iter = 0;
	}

	if (arg0 != 0) {
		func_8007F830_4FCE0(&D_800D8530);
		source = &D_800D8530;
		D_800D7A86.unk0 = source->unk14;
		D_800D7A86.unk1 = source->unk15;
		D_800D7A86.unk2 = source->unk16;
	}

	D_800D7A90.lights.a.l.col[0] = D_800D7A86.unk0;
	D_800D7A90.lights.a.l.colc[0] = D_800D7A86.unk0;
	D_800D7A90.lights.a.l.col[1] = D_800D7A86.unk1;
	D_800D7A90.lights.a.l.colc[1] = D_800D7A86.unk1;
	D_800D7A90.lights.a.l.col[2] = D_800D7A86.unk2;
	D_800D7A90.lights.a.l.colc[2] = D_800D7A86.unk2;

	if (lightCount == 0) {
		light = (Lights1*)&D_800D7A90.slots[lightCount];
		if (lightCount) {}
		nextCount = lightCount;
		nextCount++;
		light->l[0].l.col[0] = 0;
		light->l[0].l.colc[0] = 0;
		light->l[0].l.col[1] = 0;
		light->l[0].l.colc[1] = 0;
		light->l[0].l.col[2] = 0;
		light->l[0].l.colc[2] = 0;
		light->l[0].l.dir[0] = 0;
		light->l[0].l.dir[1] = 0;
		light->l[0].l.dir[2] = 0;
		lightCount = nextCount;
	}

	for (iter = 0; iter < lightCount; iter++) {
		gSPLight(D_8005BB2C++, &((Lights1*)&D_800D7A90.slots[iter])->l[0], iter + 1);
	}
	gSPLight(D_8005BB2C++, &D_800D7A90.slots[0], lightCount + 1);
	gSPNumLights(D_8005BB2C++, D_80094910_64DC0[lightCount]);
}

void func_8007F830_4FCE0(Unk80080588Entry1C* arg0) {
	FrontendLightTrack* track;
	void* data;
	FrontendLightKeyframe* keyframe;
	s32 remaining;
	s32 index;
	s32 total;
	s32 elapsed;
	s32 angleX;
	s32 angleY;
	u32 red;
	u32 green;
	u32 blue;
	f32 factor;
	track = ((FrontendLightAnimState*)arg0)->unkC;
	if (track != NULL) {
		/* Reserve the keyframe snapshot register before loading the current frame. */
		keyframe = (FrontendLightKeyframe*)track;
		if (keyframe) {}
		data = ((FrontendLightAnimState*)arg0)->unk0;
		keyframe = data;
		remaining = ((FrontendLightAnimState*)arg0)->unk4;
		if (remaining <= 0) {
			((FrontendLightAnimState*)arg0)->unk12 = keyframe->unk2;
			((FrontendLightAnimState*)arg0)->unk10 = keyframe->unk0;
			((FrontendLightAnimState*)arg0)->unk8++;
			index = ((FrontendLightAnimState*)arg0)->unk8;
			data = track;
			if (index == ((FrontendLightTrack*)data)->unk4) {
				((FrontendLightAnimState*)arg0)->unkC = NULL;
			} else {
				((FrontendLightAnimState*)arg0)->unk0 = &((FrontendLightTrack*)data)->unk0[index];
				((FrontendLightAnimState*)arg0)->unk4 = ((FrontendLightAnimState*)arg0)->unk0->unk8;
			}
		} else {
			total = ((FrontendLightKeyframe*)data)->unk8;
			elapsed = total - remaining;
			factor = 1.0f / (f32)(total - elapsed);
			angleX = ((FrontendLightAnimState*)arg0)->unk12;
			((FrontendLightAnimState*)arg0)->unk12 = (f32)angleX + (keyframe->unk2 - angleX) * factor;
			angleY = ((FrontendLightAnimState*)arg0)->unk10;
			((FrontendLightAnimState*)arg0)->unk10 = (f32)angleY + (keyframe->unk0 - angleY) * factor;
			data = &((FrontendLightAnimState*)arg0)->unk14;
			red = *(u8*)data;
			((FrontendLightAnimState*)arg0)->unk14 = (f32)red + (keyframe->unk4 - (s32)red) * factor;
			green = ((FrontendLightAnimState*)arg0)->unk15;
			((FrontendLightAnimState*)arg0)->unk15 = (f32)green + (keyframe->unk5 - (s32)green) * (1.0f / (f32)(total - elapsed));
			blue = ((FrontendLightAnimState*)arg0)->unk16;
			((FrontendLightAnimState*)arg0)->unk16 = (f32)blue + (keyframe->unk6 - (s32)blue) * factor;
			/* Keep the elapsed duration live through all channel interpolation. */
			if (elapsed) {}
		}
		((FrontendLightAnimState*)arg0)->unk4--;
	}
}

/**
 * @brief Initializes a small frontend playback/state block from a source descriptor.
 */
void func_8007FB90_50040(s32* arg0, s32* arg1) {
	arg0[2] = 0;
	if (arg1[0] != 0) {
		arg0[3] = (s32)arg1;
		arg0[0] = arg1[0];
		arg0[1] = ((s32*)arg1[0])[2];
		return;
	}
	arg0[3] = 0;
}

void func_8007FBC8_50078(u8 arg0) {
	if (arg0 == 1) {
		D_800D7971 = -1;
	} else {
		D_800D7971 = 0;
	}
}

void func_8007FBF8_500A8(void)
{
  if (D_800D7970 == 1)
  {
	if ((D_800D7971 - D_80094908_64DB8) < 0)
	{
	  D_800D7971 = 0;
	  D_800D7970 = 0;
	}
	else
	{
	  D_800D7971 = D_800D7971 - D_80094908_64DB8;
	}
  }
  else if ((D_800D7971 + D_80094908_64DB8) >= 0x100)
  {
	D_800D7971 = 0xFF;
  }
  else
  {
	D_800D7971 = D_800D7971 + D_80094908_64DB8;
  }
	
  if (D_800D7B08.unk0 != D_800D7B0C.unk0)
  {
	if (D_800D7B0C.unk0 < D_800D7B08.unk0)
	{
		D_800D7B08.unk0 = MAX(D_800D7B0C.unk0, (((s16) D_800D7B08.unk0) - D_8009490C_64DBC));
	}
	else
	{
		D_800D7B08.unk0 = MIN(D_800D7B0C.unk0, (((s16) D_800D7B08.unk0) + D_8009490C_64DBC));
	}
  }
	
  if (D_800D7B08.unk1 != D_800D7B0C.unk1)
  {
	if (D_800D7B0C.unk1 < D_800D7B08.unk1)
	{
		D_800D7B08.unk1 = MAX(D_800D7B0C.unk1, (((s16) D_800D7B08.unk1) - D_8009490C_64DBC));
	}
	else
	{
		D_800D7B08.unk1 = MIN(D_800D7B0C.unk1, (((s16) D_800D7B08.unk1) + D_8009490C_64DBC));
	}
  }

  if (D_800D7B08.unk2 != D_800D7B0C.unk2)
  {
	if (D_800D7B0C.unk2 < D_800D7B08.unk2)
	{
		D_800D7B08.unk2 = MAX(D_800D7B0C.unk2, (((s16) D_800D7B08.unk2) - D_8009490C_64DBC));
	}
	else
	{
		D_800D7B08.unk2 = MIN(D_800D7B0C.unk2, (((s16) D_800D7B08.unk2) + D_8009490C_64DBC));
	}
  }
  gDPPipeSync(D_8005BB2C++);
  gDPSetRenderMode(D_8005BB2C++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
  gDPSetCombineMode(D_8005BB2C++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
  gDPSetPrimColor(D_8005BB2C++, 0, 0, D_800D7B08.unk0, D_800D7B08.unk1, D_800D7B08.unk2, D_800D7971);
  gDPFillRectangle(D_8005BB2C++, 0, 0, 320, 240);
}

void func_8007FE8C_5033C(Unk8007FE8CArg* arg0) {
	s32 sp64[3];
	Unk80052B40 sp5C;
	Unk80052B40 sp54;
	Unk80052B40 sp4C;
	Unk800801BCEntry* entry;

	sp4C = D_800949C0;
	entry = &D_800D7B10[arg0->unk18];
	sp5C.unk0 = arg0->unkC;
	sp5C.unk2 = arg0->unkE;
	sp5C.unk4 = arg0->unk10;
	sp54.unk0 = arg0->unk14;
	sp54.unk2 = arg0->unk16;
	sp54.unk4 = arg0->unk12;

	func_800039D0_45D0(&sp5C, &sp54, &sp4C, D_8005BB38);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	sp54.unk0 = entry->unk2 << 3;
	sp54.unk2 = entry->unk4 << 3;
	sp54.unk4 = entry->unk0 << 3;
	sp64[0] = (s32)(entry->unk8 * 65536.0f);
	sp64[1] = (s32)(entry->unkC * 65536.0f);
	sp64[2] = (s32)(entry->unk10 * 65536.0f);

	if (D_80094944_64DF4 == 1) {
		func_8000C81C_D41C(sp64, &sp54.unk0, 0, D_8005BB38);
	} else {
		func_80080B80_51030(sp64, &sp54.unk0, 0, D_8005BB38);
	}

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	gSPSegment(D_8005BB2C++, 0x07, K0_TO_PHYS(D_8005BB38));

	if (D_800D8518 != 0) {
		gSPSegment(D_8005BB2C++, D_800D851C, (D_800D8518 & 0xFFFFFF) + D_8006AA70);
	}

	if (D_800D8520 != 0) {
		gSPSegment(D_8005BB2C++, D_800D8524, (D_800D8520 & 0xFFFFFF) + D_8006AA70);
	}

	func_800801BC_5066C(entry, arg0->unk19);

	if ((arg0->unk20 & 0x10) != 0) {
		func_80081290_51740();
	} else {
		gSPDisplayList(D_8005BB2C++, (u32)arg0->unk0);
	}

	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}

void func_800801BC_5066C(Unk800801BCEntry* arg0, u8 arg1) {
	u8 var_s1;
	Vec3s sp60;
	Vec3i sp54;
	void* record;

	for (var_s1 = 1; var_s1 != arg1; var_s1++) {
		record = &arg0[var_s1];

			sp60.x = ((Unk800801BCEntry*)record)->unk2 << 3;
			sp60.y = ((Unk800801BCEntry*)record)->unk4 << 3;
			sp60.z = ((Unk800801BCEntry*)record)->unk0 << 3;
			sp54.x = (s32)(((Unk800801BCEntry*)record)->unk8 * 65536.0f);
			sp54.y = (s32)(((Unk800801BCEntry*)record)->unkC * 65536.0f);
			sp54.z = (s32)(((Unk800801BCEntry*)record)->unk10 * 65536.0f);

			if ((D_800D8514 != NULL) && (D_800D8514[var_s1] == 0)) {
				sp54.x = 0x13880000;
				sp54.y = 0x13880000;
				sp54.z = 0x13880000;
			}

			if (D_80094944_64DF4 == 1) {
				record = D_8005BB38;
				D_8005BB38++;
				func_8000C81C_D41C(&sp54.x, &sp60.x, 0, record);
			} else {
				record = D_8005BB38;
				D_8005BB38++;
				func_80080B80_51030(&sp54.x, &sp60.x, 0, record);
			}

	}
}

// Called during start movie, mostly before scene changes
void* func_8008035C_5080C(FrontendStreamSlot* arg0, AnimChannelState* arg1, FrontendStreamHeader* arg2, s32 arg3, u8 arg4) {
	u8 i;
	s32 copiedCount;
	s32 byteOffset;

	arg0->unk54 = arg2;

	arg0->header = *arg2;

	copiedCount = 0;
	byteOffset = 0;
	if (arg2->frameCount != 0) {
		do {
			*(AnimFrameData14*)&((u8*)arg0->unk50)[byteOffset] = ((AnimFrameData14*)&arg2[1])[copiedCount];
			byteOffset += sizeof(AnimFrameData14);
			copiedCount++;
		} while ((u32)copiedCount < arg2->frameCount);
	}

	for (i = 0; i != arg4; i++) {
			AnimChannelState* state;

			state = &arg1[i];
			state->unk18 = 0;
			state->unk14 = arg0->header.channels[i].count;
			if (state->unk14 >= 0x65) {
				osSyncPrintf(&D_800AE920_7EDD0);
			}

			func_80080AD4_50F84(arg0, state, i);
			if (arg3 != 0) {
				state->unk0 = state->unk2A;
				state->unk2 = state->unk2C;
				state->unk4 = state->unk2E;
				state->unk8 = (f32)state->unk24;
				state->unkC = (f32)state->unk26;
				state->unk10 = (f32)state->unk28;
				state->unk18 += 1;

				func_80080AD4_50F84(arg0, state, i);
			}

	}

	return arg2;
}

void func_80080530_509E0(Unk80080530_Src* arg0) {
	Unk80080530_Dst* dst;

	dst = &D_800D7A1C[arg0->unkC];
	dst->unkC = arg0->unk0;
	dst->unkE = arg0->unk2;
	dst->unk10 = arg0->unk4;
	dst->unk14 = arg0->unk8;
	dst->unk12 = arg0->unk6;
	dst->unk16 = arg0->unkA;
}

// ambient light ?
// CURRENT(1245)
void func_80080588_50A38(u8 arg0) {
	Unk80080588Entry5 *selection;
	u8 color;
	u8 i;

	selection = &D_800D7A28[arg0];
	color = selection->unk0;
	if (color != 0xFF) {
		D_800D7A86 = D_800D7A38[color];
		osSyncPrintf(D_800AE958_7EE08, D_800D7A86.unk0, D_800D7A86.unk1, D_800D7A86.unk2);
	}
	for (i = 0; i < 3; i++) {
		color = selection->lights[i];
		if (color != 0xFF) {
			D_800D7A34[color].unk18 = 1;
		}
	}
}

#ifdef NON_MATCHING
// CURRENT(8571)
void func_80080668_50B18(FrontendStreamSlot *arg0, AnimChannelState *arg1, f32 arg2, s32 arg3) {
	f32 sp70;
	f32 sp6C;
	f32 sp68;
	f32 sp64;
	f32 sp60;
	f32 sp5C;
	f32 sp50;
	f32 sp4C;
	f32 sp48;
	f32 temp_f0;
	f32 temp_f10;
	f32 temp_f10_2;
	f32 temp_f12;
	f32 temp_f14;
	f32 temp_f18;
	f32 temp_f2;
	f32 temp_f2_2;
	f32 temp_f4;
	f32 temp_f6;
	f32 temp_f6_2;
	f32 temp_f8;
	f32 temp_f8_2;
	f64 temp_f22;
	f64 temp_f20;
	s32 temp_t6;
	s32 var_s0;
	s32 count;
	AnimChannelState *temp_a1;

	count = arg3 & 0xFF;
	var_s0 = 0;
	if (count != 0) {
		temp_f22 = 4096.0;
		temp_f20 = D_800AEA50_7EF00[0];
		do {
			temp_a1 = &arg1[var_s0];
			if (temp_a1->unk14 != 0) {
				temp_f14 = temp_a1->unk1C;
				temp_f18 = arg2 / (temp_a1->unk20 - temp_f14);
				temp_f10 = (f32)(((f64)(f32)temp_a1->unk2A * temp_f20) / temp_f22);
				sp68 = temp_f10;
				temp_f6 = (f32)(((f64)(f32)temp_a1->unk2C * temp_f20) / temp_f22);
				sp6C = temp_f6;
				temp_f8 = (f32)(((f64)(f32)temp_a1->unk2E * temp_f20) / temp_f22);
				sp70 = temp_f8;
				temp_f4 = (f32)(((f64)(f32)temp_a1->unk0 * temp_f20) / temp_f22);
				sp5C = temp_f4;
				sp48 = temp_f10;
				temp_f10_2 = (f32)(((f64)(f32)temp_a1->unk2 * temp_f20) / temp_f22);
				sp60 = temp_f10_2;
				sp4C = temp_f6;
				sp50 = temp_f8;
				temp_f8_2 = ((sp48 - temp_f4) * temp_f18) + temp_f4;
				sp5C = temp_f8_2;
				temp_f6_2 = (f32)(((f64)(f32)temp_a1->unk4 * temp_f20) / temp_f22);
				sp60 = ((sp4C - temp_f10_2) * temp_f18) + temp_f10_2;
				sp64 = temp_f6_2;
				sp64 = ((sp50 - temp_f6_2) * temp_f18) + temp_f6_2;
				temp_f2 = temp_a1->unk8;
				temp_f12 = temp_a1->unkC;
				temp_f0 = temp_a1->unk10;
				temp_a1->unk0 = (s16)(s32)((f64)(temp_f8_2 * 70.0f) / temp_f20);
				temp_a1->unk2 = (s16)(s32)((f64)(sp60 * 70.0f) / temp_f20);
				temp_a1->unk4 = (s16)(s32)((f64)(sp64 * 70.0f) / temp_f20);
				temp_a1->unk8 = (((f32)temp_a1->unk24 - temp_f2) * temp_f18) + temp_f2;
				temp_f2_2 = (f32)temp_a1->unk28;
				temp_a1->unkC = (((f32)temp_a1->unk26 - temp_f12) * temp_f18) + temp_f12;
				temp_a1->unk1C = temp_a1->unk1C + arg2;
				temp_a1->unk10 = ((temp_f2_2 - temp_f0) * temp_f18) + temp_f0;
				if (temp_a1->unk20 <= temp_a1->unk1C) {
					temp_t6 = temp_a1->unk18 + 1;
					temp_a1->unk8 = (f32)temp_a1->unk24;
					temp_a1->unk10 = temp_f2_2;
					temp_a1->unk18 = temp_t6;
					temp_a1->unk0 = (s16)temp_a1->unk2A;
					temp_a1->unk2 = (s16)temp_a1->unk2C;
					temp_a1->unkC = (f32)temp_a1->unk26;
					temp_a1->unk4 = (s16)temp_a1->unk2E;
					if (temp_t6 == temp_a1->unk14) {
						temp_a1->unk14 = 0;
						temp_a1->unk18 = 0;
						if (var_s0 == 0) {
							arg0->unk54 = 0;
						}
					} else {
						func_80080AD4_50F84(arg0, temp_a1, var_s0 & 0xFF);
					}
				}
			}
			var_s0 = (var_s0 + 1) & 0xFF;
		} while (count != var_s0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/frontend/40720/func_80080668_50B18.s")
#endif

void func_8008098C_50E3C(void) {
	u8 i;

	for (i = 0; i < 10; i++) {
		D_800D8550[i] = NULL;
		D_800D8578[i].unk50 = 0;
	}
}

FrontendStreamSlot* func_800809DC_50E8C(s32 arg0) {
	FrontendStreamSlot *slot;
	u8 i;

	for (i = 0; i != 10; i++) {
		if (D_800D8550[i] == NULL) {
			slot = &D_800D8578[i];
			D_800D8550[i] = slot;
			slot->unk50 = (s32)D_800DE068;
			D_800DE068 = &((AnimFrameData14*)(void*)D_800DE068)[arg0];
			return slot;
		}
	}
	osSyncPrintf(D_800AE97C_7EE2C);
}

void func_80080A84_50F34(FrontendStreamSlot* arg0) {
	s32 index;

	if (arg0 != NULL) {
		index = (arg0 - D_800D8578);
		D_800D8550[index] = NULL;
		D_800D8578[index].unk50 = 0;
	}
}

void func_80080AD4_50F84(FrontendStreamSlot *arg0, AnimChannelState *arg1, u8 arg2) {
	s32 temp_v0;

	if (arg1->unk14 > (temp_v0 = arg1->unk18)) {
		u16 start_frame;

		start_frame = arg0->header.channels[arg2].start;
		start_frame += temp_v0;
		*(AnimFrameData14 *)&arg1->unk24 = ((AnimFrameData14 *)arg0->unk50)[start_frame];
		arg1->unk1C = 0.0f;
		arg1->unk20 = (f32)(u32)arg1->unk30;
	}
}

void func_80080B80_51030(s32 *arg0, s16 *arg1, s16 *arg2, s32 *arg3) {
	s32 cosX;
	s32 sinX;
	s32 cosZ;
	s32 sinZ;
	s32 cosY;
	s32 sinY;
	s32 sinZSinX;
	s32 cosXCosZ;
	s32 sinXCosZ;
	s32 cosXSinZ;
	u32 mask;
	s32 *src;

	D_800DE070[0].unkC = 0;
	D_800DE070[0].unk1C = 0;
	D_800DE070[1].unkC = 0;
	D_800DE070[1].unk1C = 0x10000;

	if (arg0 != NULL) {
		D_800DE070[1].unk10 = arg0[0];
		D_800DE070[1].unk14 = arg0[1];
		D_800DE070[1].unk18 = arg0[2];
	} else {
		D_800DE070[1].unk10 = 0;
		D_800DE070[1].unk14 = 0;
		D_800DE070[1].unk18 = 0;
	}

	if (arg1 != NULL) {
		cosX = coss(arg1[0]);
		sinX = sins(arg1[0]);
		cosZ = coss(arg1[2]);
		sinZ = sins(arg1[2]);
		cosY = coss(arg1[1]);
		sinY = sins(arg1[1]);

		D_800DE070[0].unk0 = ((cosX * cosY) >> 0xF) * 2;

		sinZSinX = (sinZ * sinX) >> 15;
		cosXCosZ = (cosX * cosZ) >> 15;
		D_800DE070[0].unk10 = (sinZSinX - ((cosXCosZ * sinY) >> 15)) * 2;
		sinXCosZ = (sinX * cosZ) >> 15;
		cosXSinZ = (cosX * sinZ) >> 15;
		D_800DE070[1].unk0 = ((sinXCosZ + 0) + ((cosXSinZ * sinY) >> 15)) * 2;
		D_800DE070[0].unk4 = sinY * 2;
		D_800DE070[0].unk14 = ((cosZ * cosY) >> 15) * 2;
		D_800DE070[1].unk4 = ((-sinZ * cosY) >> 15) * 2;
		D_800DE070[0].unk8 = ((-sinX * cosY) >> 15) * 2;
		D_800DE070[0].unk18 = ((cosXSinZ + 0) + ((sinXCosZ * sinY) >> 15)) * 2;
		/* Retain the lifetimes of the shared products during optimization. */
		if (sinXCosZ * cosXSinZ * 0) {}
		D_800DE098 = (cosXCosZ - (((sinZSinX + 0) * sinY) >> 15)) * 2;
	} else {
		D_800DE070[0].unk0 = 0x10000;
		D_800DE070[0].unk10 = 0;
		D_800DE070[1].unk0 = 0;
		D_800DE070[0].unk4 = 0;
		D_800DE070[0].unk14 = 0x10000;
		D_800DE070[1].unk4 = 0;
		D_800DE070[0].unk8 = 0;
		D_800DE070[0].unk18 = 0;
		D_800DE070[1].unk8 = 0x10000;
	}

	if (arg2 != NULL) {
		D_800DE070[0].unk0 *= arg2[0];
		D_800DE070[0].unk4 *= arg2[0];
		D_800DE070[0].unk8 *= arg2[0];
		D_800DE070[0].unk0 >>= 8;
		D_800DE070[0].unk4 >>= 8;
		D_800DE070[0].unk8 >>= 8;
		D_800DE070[0].unk10 *= arg2[1];
		D_800DE070[0].unk14 *= arg2[1];
		D_800DE070[0].unk18 *= arg2[1];
		D_800DE070[0].unk10 >>= 8;
		D_800DE070[0].unk14 >>= 8;
		D_800DE070[0].unk18 >>= 8;
		D_800DE070[1].unk0 *= arg2[2];
		D_800DE070[1].unk4 *= arg2[2];
		D_800DE070[1].unk8 *= arg2[2];
		D_800DE070[1].unk0 >>= 8;
		D_800DE070[1].unk4 >>= 8;
		D_800DE070[1].unk8 >>= 8;
	}

	/* Keep this setup together to preserve the address scheduling. */
	mask = 0xFFFF0000; arg0 = arg3; src = D_800DE070_words; do { arg0[0] = (src[0] & mask) + ((src[1] & mask) >> 0x10);
		arg0 = &arg0[4];
		arg0[4] = (src[0] << 8 << 8) + (src[1] & 0xFFFFU);
		arg0[-3] = (src[2] & mask) + ((src[3] & mask) >> 0x10);
		arg0[5] = (src[2] << 8 << 8) + (src[3] & 0xFFFFU);
		arg0[-2] = (src[4] & mask) + ((src[5] & mask) >> 0x10);
		arg0[6] = (src[4] << 8 << 8) + (src[5] & 0xFFFFU);
		arg0[-1] = (src[6] & mask) + ((src[7] & mask) >> 0x10);
		arg0[7] = (src[6] << 8 << 8) + (src[7] & 0xFFFFU);
		src = &src[8];
	} while (src != (s32 *)&D_800DE0B0);
}

void func_80080F8C_5143C(AnimChannelState *arg0, s16 *arg1, s32 arg2)
{
  f32 zero;
  s32 temp_t0;
  s32 var_v0;
  AnimChannelState *temp_v1;
  zero = 0.0f;
  arg0->unk0 = 0;
  arg0->unk2 = 0;
  arg0->unk4 = 0;
  arg0->unk14 = 0;
  arg0->unk18 = 0;
  arg0->unk2A = 0;
  arg0->unk2C = 0;
  arg0->unk2E = 0;
  arg0->unk24 = 0;
  arg0->unk26 = 0;
  arg0->unk28 = 0;
  arg0->unk30 = 0;
  var_v0 = 1;
  arg0->unk8 = zero;
  arg0->unkC = zero;
  arg0->unk10 = zero;
  arg0->unk1C = zero;
  arg0->unk20 = zero;
  if (arg2 != 1)
  {
	do
	{
	  temp_v1 = &arg0[var_v0];
	  if (1)
	  {
		temp_v1->unk8 = (f32) arg1[0];
		var_v0 += 1;
	  }
	  temp_t0 = var_v0 & 0xFF;
	  var_v0 = temp_t0;
	  arg1 += 8;
	  temp_v1->unkC = (f32) arg1[-7];
	  temp_v1->unk10 = (f32) arg1[-6];
	  temp_v1->unk0 = 0;
	  temp_v1->unk2 = 0;
	  temp_v1->unk4 = 0;
	  temp_v1->unk30 = 0;
	  temp_v1->unk14 = 0;
	  temp_v1->unk18 = 0;
	  temp_v1->unk1C = zero;
	  temp_v1->unk20 = zero;
	  
	}
	while (arg2 != temp_t0);
  }
}

void func_80081058_51508(void) {
	Vtx *vtx;

	vtx = D_8005BB34;
	vtx[0].v.ob[0] = 0;
	vtx[0].v.ob[1] = 0;
	vtx[0].v.ob[2] = 0;
	vtx[0].v.flag = 0;
	vtx[0].v.tc[0] = 0;
	vtx[0].v.tc[1] = 0;
	vtx[0].v.cn[0] = 0;
	vtx[0].v.cn[1] = 0;
	vtx[0].v.cn[2] = 0xFF;
	vtx[0].v.cn[3] = 0xFF;
	vtx[1].v.ob[0] = 0x12C;
	vtx[1].v.ob[1] = 0;
	vtx[1].v.ob[2] = 0;
	vtx[1].v.flag = 0;
	vtx[1].v.tc[0] = 0;
	vtx[1].v.tc[1] = 0;
	vtx[1].v.cn[0] = 0;
	vtx[1].v.cn[1] = 0;
	vtx[1].v.cn[2] = 0xFF;
	vtx[1].v.cn[3] = 0xFF;
	vtx[2].v.ob[0] = 0;
	vtx[2].v.ob[1] = 0;
	vtx[2].v.ob[2] = 0;
	vtx[2].v.flag = 0;
	vtx[2].v.tc[0] = 0;
	vtx[2].v.tc[1] = 0;
	vtx[2].v.cn[0] = 0xFF;
	vtx[2].v.cn[1] = 0;
	vtx[2].v.cn[2] = 0;
	vtx[2].v.cn[3] = 0xFF;
	vtx[3].v.ob[1] = 0x12C;
	vtx[3].v.ob[0] = 0;
	vtx[3].v.ob[2] = 0;
	vtx[3].v.flag = 0;
	vtx[3].v.tc[0] = 0;
	vtx[3].v.tc[1] = 0;
	vtx[3].v.cn[0] = 0xFF;
	vtx[3].v.cn[1] = 0;
	vtx[3].v.cn[2] = 0;
	vtx[3].v.cn[3] = 0xFF;
	vtx[4].v.ob[0] = 0;
	vtx[4].v.ob[1] = 0;
	vtx[4].v.ob[2] = 0;
	vtx[4].v.flag = 0;
	vtx[4].v.tc[0] = 0;
	vtx[4].v.tc[1] = 0;
	vtx[4].v.cn[0] = 0;
	vtx[4].v.cn[1] = 0xFF;
	vtx[4].v.cn[2] = 0;
	vtx[4].v.cn[3] = 0xFF;
	vtx[5].v.ob[2] = 0x12C;
	vtx[5].v.ob[0] = 0;
	vtx[5].v.ob[1] = 0;
	vtx[5].v.flag = 0;
	vtx[5].v.tc[0] = 0;
	vtx[5].v.tc[1] = 0;
	vtx[5].v.cn[0] = 0;
	vtx[5].v.cn[1] = 0xFF;
	vtx[5].v.cn[2] = 0;
	vtx[5].v.cn[3] = 0xFF;
	gDPPipeSync(D_8005BB2C++);
	gSPClearGeometryMode(D_8005BB2C++, -1);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_XLU_LINE, G_RM_AA_ZB_XLU_LINE2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gSPVertex(D_8005BB2C++, OS_PHYSICAL_TO_K0(D_8005BB34), 10, 0);
	D_8005BB34 += 6;
	gSPLineW3D(D_8005BB2C++, 0, 1, 10, 0);
	gSPLineW3D(D_8005BB2C++, 2, 3, 10, 0);
	gSPLineW3D(D_8005BB2C++, 4, 5, 10, 0);
}

void func_80081290_51740(void) {
	s32 j;
	Vtx *baseVtx;
	u32 i;
	FrontendInterpPos *pos0;
	FrontendInterpPos *pos1;
	FrontendInterpVtxData *vtxData;
	f32 oneMinusT;
	f32 x;
	f32 y;
	f32 z;
	FrontendTriBatch *batch;
	Unk80052B40 sp84;
	FrontendTriData *tri;

	sp84 = D_800949C8_64E78;

	if (D_800313D0_31FD0 == 2) {
		return;
	}

	baseVtx = D_8005BB34;
	pos0 = D_800AC0CC.unk0;
	pos1 = D_800AC0CC.unk4;
	vtxData = D_800AC0CC.unk8;
	j = 0;
	if (D_800AC0CC.unk10 != 0) {
		do {
			oneMinusT = 1.0f - D_800AC0CC.unk18;

			x = (pos1[j].unk0 * D_800AC0CC.unk18) + (pos0[j].unk0 * oneMinusT);
			y = (pos1[j].unk4 * D_800AC0CC.unk18) + (pos0[j].unk4 * oneMinusT);
			z = (pos1[j].unk8 * D_800AC0CC.unk18) + (pos0[j].unk8 * oneMinusT);
			D_8005BB34->v.ob[0] = x;
			D_8005BB34->v.ob[1] = y;
			D_8005BB34->v.ob[2] = z;
			D_8005BB34->v.flag = 0;
			D_8005BB34->v.tc[0] = vtxData[j].unk0;
			D_8005BB34->v.tc[1] = vtxData[j].unk2;
			D_8005BB34->v.cn[0] = vtxData[j].unk4;
			D_8005BB34->v.cn[1] = vtxData[j].unk5;
			D_8005BB34->v.cn[2] = vtxData[j].unk6;
			D_8005BB34->v.cn[3] = 0xFF;
			D_8005BB34++;
		} while ((u32)++j < D_800AC0CC.unk10);
	}

	if (D_800AC0CC.unk18 != 0.0f) {
		D_800AC0CC.unk18 = D_800AC0CC.unk18 + D_800AEA58_7EF08.value > 1.0 ?
			1.0 : D_800AC0CC.unk18 + D_800AEA58_7EF08.value;
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_MODULATEIA);
	gDPTileSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, D_800AC0E8_7C598);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, G_TX_RENDERTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 31 << G_TEXTURE_IMAGE_FRAC, 31 << G_TEXTURE_IMAGE_FRAC);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);

	sp84.unk0 = (s16) ((f64) sp84.unk0 * D_800AEA60_7EF10.value);
	sp84.unk2 = (s16) ((f64) sp84.unk2 * D_800AEA60_7EF10.value);
	sp84.unk4 = (s16) ((f64) sp84.unk4 * D_800AEA60_7EF10.value);

	func_800039D0_45D0(NULL, NULL, &sp84, D_8005BB38);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	i = 0;
	if (D_800AC0CC.unk14 != 0) {
		do {
			batch = &D_800AC0CC.unkC[i];

			gSPVertex(D_8005BB2C++, &baseVtx[batch->unk5], batch->unk4, 0);
			tri = batch->unk0;
			for (j = 0; j < (batch->unk6 >> 1); j++) {
				gSP2Triangles(D_8005BB2C++, tri[j * 2].unk0, tri[j * 2].unk1, tri[j * 2].unk2, tri[j * 2].unk3,
					tri[j * 2 + 1].unk0, tri[j * 2 + 1].unk1, tri[j * 2 + 1].unk2, tri[j * 2 + 1].unk3);
			}
			if (batch->unk6 % 2) {
				gSP1Triangle(D_8005BB2C++, tri[batch->unk6 - 1].unk0, tri[batch->unk6 - 1].unk1,
					tri[batch->unk6 - 1].unk2, tri[batch->unk6 - 1].unk3);
			}
		} while (++i < D_800AC0CC.unk14);
	}

	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}

void func_800819C0_51E70(FrontendAnimState *arg0) {
	f32 temp_f0;

	if (arg0->unk20 != 0) {
		temp_f0 = arg0->unk8;
		if ((f64) temp_f0 >= 1.0) {
			arg0->unk10 = (u16) ((s32) (arg0->unk10 + 1) % (s32) arg0->unk12);
			arg0->unk8 = 0.0f;
			return;
		}
		arg0->unk8 = (f32)temp_f0 + arg0->unkC;
	}
}

void func_80081A50_51F00(FrontendTextureInfo *arg0) {
	u8 *img;
	s32 size;
	gDPPipeSync(D_8005BB2C++);
	size = arg0->unk14 * arg0->unk15;
	size /= 2;
	img = &arg0->img[arg0->unk10 * size];
	gDPLoadTextureBlock_4b(D_8005BB2C++, img,
		G_IM_FMT_I, arg0->unk14, arg0->unk15, 0,
		G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
		G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
	gDPSetCombineLERP(D_8005BB2C++, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, TEXEL0,
		PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, TEXEL0);
}

f32 D_80094950_64E00 = 0.0f;
f32 D_80094954_64E04 = 0.0f;

Mtx D_80094958_64E08 = { {
    { 0x00010000, 0x00000000, 0x00000001, 0x00000000 },
    { 0x00000000, 0x00010000, 0x00000000, 0x00000001 },
    { 0x00000000, 0x00000000, 0x00000000, 0x00000000 },
    { 0x00000000, 0x00000000, 0x00000000, 0x00000000 },
} };

s32 D_80094998_64E48 = 0;

// Note: the unk20 field (0x64E6C) is aliased by D_800949BC_64E6C
FrontendAnimState D_8009499C_64E4C = {
    { 0x04, 0x07, 0x39, 0x90, 0x00, 0x00, 0x00, 0x00 },
    0.0f,
    0.25f,
    0x0000,
    0x0008,
    { 0x20, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02 },
    0x00000000
};

Unk80052B40 D_800949C0_64E70 = { 0x0100, 0x0100, 0x0100 };
Unk80052B40 D_800949C8_64E78 = { 0x0100, 0x0100, 0x0100 };

void func_80081CAC_5215C(s32 arg0, s32 arg1, u32 arg2, u32 arg3) {
	s32 pad;
	Gfx *dl;
	static s32 D_800949D0_64E80 = 0;


	(void)arg0;
	(void)arg1;

	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);

	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_800AC8F0_7CDA0);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD,
			   G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
	gDPPipeSync(D_8005BB2C++);



	if (D_800949D0_64E80) {}
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, G_TX_RENDERTILE, 0, G_TX_WRAP, 5, G_TX_NOLOD, G_TX_WRAP, 5, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, (31 << 2), (31 << 2));

	gSPTextureRectangle(D_8005BB2C++, 0, 0, 0x500, 0x3C0, G_TX_RENDERTILE, D_800949D0_64E80, 0,
		(s32)(((f32)(32.0 / (f64)(f32)arg2)) * 1024.0f),
		(s32)(((f32)(32.0 / (f64)(f32)arg3)) * 1024.0f));

	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	D_800949D0_64E80 -= 6;
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA, G_CC_MODULATEIA);
}
u8 D_800949D4_64E84 = 0;

s32 D_800949D8_64E88[5] = { 0, 0, (s32)D_800AEA80_7EF30, (s32)D_800AEA8C_7EF3C, (s32)D_800AEA9C_7EF4C };
s32 D_800949EC_64E9C[5] = { (s32)D_800AEAAC_7EF5C, 0, (s32)D_800AEAC0_7EF70, (s32)D_800AEACC_7EF7C, (s32)D_800AEAD8_7EF88 };
s32 D_80094A00_64EB0[7] = {
	(s32)D_800AEAE8_7EF98, 0, (s32)D_800AEAF4_7EFA4, (s32)D_800AEB00_7EFB0, (s32)D_800AEB10_7EFC0, (s32)D_800AEB20_7EFD0, 0,
};
Frontend52690Entry D_80094A1C_64ECC[5] = {
	{ 0x0000077C, 0x00000795, (void *)0x040073A0, (void *)0x040083A0 },
	{ 0x00000795, 0x000007AE, (void *)0x040083A0, (void *)0x040093A0 },
	{ 0x000007AE, 0x000007C7, (void *)0x040093A0, (void *)0x0400A3A0 },
	{ 0x000007C7, 0x000007E0, (void *)0x0400A3A0, (void *)0x0400B3A0 },
	{ 0, 0, NULL, NULL },
};

Unk80052B40 D_80094A6C_64F1C = { 0, 0, 0x076C };
Unk80052B40 D_80094A74_64F24 = { 0x8000, 0, 0 };
Unk80052B40 D_80094A7C_64F2C = { 0x0100, 0x0100, 0x0100 };
Unk80052B40 D_80094A84_64F34 = { 0, 0, 0x00A0 };
Unk80052B40 D_80094A8C_64F3C = { 0, 0, 0xFF6A };
Unk80052B40 D_80094A94_64F44 = { 0x8000, 0, 0 };
Unk80052B40 D_80094A9C_64F4C = { 0x8000, 0, 0 };
Unk80052B40 D_80094AA4_64F54 = { 0, 0, 0xFF9C };
Unk80052B40 D_80094AAC_64F5C = { 0xD8F0, 0xE0C0, 0xFF9C };
u32 D_80094AB4_64F64 = 0;
u32 D_80094AB8_64F68 = 0;
u32 D_80094ABC_64F6C = 0;

void func_80081F9C_5244C(void) {
	s32 index;

	index = D_800949D4;
	D_800D8524 = 0xF;
	D_800D8520 = D_800D7A4C[index + 4].unk0;
	D_800949D4_64E84 = (index + 1) % 4;
}

/**
 * @brief Dampens D_800D8528 by 87.5% and reverses direction, zeroing if below threshold.
 */
void func_80081FF0_524A0(void) {
	f32 absVal;

	if (D_800D8528 >= 0.0f) {
		absVal = D_800D8528;
	} else {
		absVal = -D_800D8528;
	}
	if ((f64)absVal < D_800AEA68_7EF18[0]) {
		D_800D8528 = 0.0f;
		return;
	}
	D_800D8528 = (f32)((f64)D_800D8528 - (f64)D_800D8528 * 0.125);
	D_800D8528 = -D_800D8528;
}

/* Keep the branch assignments on separate lines for IDO scheduling. */
void func_80082074_52524(void) {
	f32 step;
	u32 start;
	u32 end;

	f32 t;
	f64 limit;
	f64 next;
	u32 alpha;
	f32 *ptr;
	if (D_8009494C_64DFC == 1) {
		start = 0;
		end = 255;
		step = D_800AEA70_7EF20[0];
	} else {
		start = 255;
		end = 0;
		step = D_800AEA74_7EF24[0];
	}
	limit = 1.0;
	t = D_80094950[0];
	if (limit < t) {}
	alpha = (u8)(u32)((f32)start * (1.0f - t) + t * (f32)end);
	ptr = D_80094950;
	ptr = &ptr[alpha & 0];
	if (alpha) {}
	next = t + step;
	if (limit < next) {
		*ptr = limit;
	} else {
		*ptr = next;
	}
	D_800D7A1C[26].unk24 = alpha;
}

/* Shared diagnostics precede the generated event table in both releases. */
const char D_800AE8E0_7ED90[] = "INVALID MOVIE EVENT!!!!!\012";
const char D_800AE8FC_7EDAC[] = "ERROR: guLookAt is going to CRASH.\012";
const char D_800AE920_7EDD0[] = "ERROR: Too many keyframes for buffers! 100 KF Maximum!\012";
const char D_800AE958_7EE08[] = "newAmbientLight r: %d g: %d b: %d\012";
const char D_800AE97C_7EE2C[] = "ERROR: No free animation buffers! See Frank. \012";
