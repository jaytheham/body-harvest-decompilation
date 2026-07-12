#include <ultra64.h>
#include <stdarg.h>
#include "common.h"

const char D_80144DC0_153D70[] = "**** SERIOUS WARNING: Room behind door %d on building %d, (%d,%d).This type hasn't got door %d\n";
const char D_80144E20_153DD0[] = "Yaw != -1";
const char D_80144E2C_153DDC[] = "src/buildings.c";
const char D_80144E3C_153DEC[] = "********** ERROR: Unmapped door **********\n";
const char D_80144E68_153E18[] = "This building needs key %d\n";
const char D_80144E84_153E34[] = "WARNING: Too many hashing conflicts\n";
const char D_80144EAC_153E5C[] = "This level data is kaput\n";
const char D_80144EC8_153E78[] = "ERROR:Trying to generate heightmap for building type %d\n";

const f64 D_80144F08_153EB8[1] = {3.141592654};

const f32 D_80144F10_153EC0[1] = {0.949999988079071};

const f64 D_80144F18_153EC8[1] = {300.0};

const f64 D_80144F20_153ED0[1] = {157.0};

const f64 D_80144F28_153ED8[1] = {157.0};

const f32 D_80144F30_153EE0[1] = {-0.05000000074505806};
const f32 D_80144F34_153EE4[1] = {0.949999988079071};

const f64 D_80144F38_153EE8[1] = {20000.0};

const u32 jtbl_80144F40_153EF0[] = {
	0x801195E8,
	0x8011965C,
	0x80119714,
	0x80119770,
	0x80119630,
	0x80119610,
	0x801196B8,
	0x00000000,
};

const f64 D_80144F60_153F10[1] = {0.95};

const f64 D_80144F68_153F18[1] = {0.95};

const f32 D_80144F70_153F20[1] = {9304.0};
const f32 D_80144F74_153F24[1] = {13600.0};

const f64 D_80144F78_153F28[1] = {20000.0};

const f32 D_80144F80_153F30[1] = {-0.05000000074505806};

const f64 D_80144F88_153F38[1] = {0.4};

const f32 D_80144F90_153F40[1] = {0.20000000298023224};
const f32 D_80144F94_153F44[1] = {0.20000000298023224};

const f32 D_80144F98_153F48[1] = {0.6000000238418579};

const f64 D_80144FA0_153F50[1] = {0.4};

const f64 D_80144FA8_153F58[1] = {32767.0};

const f64 D_80144FB0_153F60[1] = {63.0};

const f64 D_80144FB8_153F68[1] = {1.93333};

const f64 D_80144FC0_153F70[1] = {290.0};

const f32 D_80144FC8_153F78[1] = {0.833329975605011};
const f32 D_80144FCC_153F7C[1] = {0.3330000042915344};
const f32 D_80144FD0_153F80[1] = {0.3330000042915344};
const f32 D_80144FD4_153F84[1] = {0.3330000042915344};
const f32 D_80144FD8_153F88[1] = {0.3330000042915344};
const f32 D_80144FDC_153F8C[1] = {0.3330000042915344};
const f32 D_80144FE0_153F90[1] = {0.3330000042915344};
const f32 D_80144FE4_153F94[1] = {0.3330000042915344};
const f32 D_80144FE8_153F98[1] = {0.3330000042915344};

const f64 D_80144FF0_153FA0[1] = {2600.0};

const f64 D_80144FF8_153FA8[1] = {362.0};

const f64 D_80145000_153FB0[1] = {217.0};

const f64 D_80145008_153FB8[1] = {362.0};

const f64 D_80145010_153FC0[1] = {461.0};

// .data
u8 D_80140A00_14F9B0[0x14] = {
	0x00, 0x00, 0x00, 0x00, 0x09, 0x01, 0xD4, 0x08, 0x0A, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00,
};

u8 D_80140A14_14F9C4[0x14] = {
	0x00, 0x00, 0x00, 0x00, 0x09, 0x01, 0xD5, 0x78, 0x0A, 0x00, 0x1C, 0xB8, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00,
};

u8 D_80140A28_14F9D8[0x18] = {
	0x00, 0x00, 0x00, 0x00, 0x09, 0x01, 0xD5, 0xD0, 0x0A, 0x00, 0x1D, 0x60, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

u8 D_80140A40_14F9F0[0x50] = {
	0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x02, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x04, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x80, 0x00,
	0x00, 0x00, 0x00, 0x02, 0x00, 0x03, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0xE0, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xF8, 0x00,
	0x00, 0x80, 0x00, 0x80, 0x01, 0xFF, 0x00, 0x00, 0x00, 0x80, 0x00, 0x80, 0x01, 0xFF, 0x00, 0x00,
};

u8 D_80140A90_14FA40[4] = {
	0x00, 0x00, 0x00, 0x00,
};

u8 D_80140A94_14FA44[0x0C] = {
	0xFF, 0xFF, 0xF0, 0xFF, 0xFA, 0x14, 0xE6, 0xC8, 0x1E, 0xB4, 0x96, 0x00,
};

u8 D_80140AA0_14FA50[4] = {
	0x00, 0x00, 0x00, 0x00,
};

u8 D_80140AA4_14FA54[0x0C] = {
	0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

// CURRENT(940)
#ifdef NON_MATCHING
s16 func_80115F20_124ED0(s16 arg0, s16 arg1, s16 *arg2, s16 *arg3) {
	s16 instanceId;
	s16 testId;
	s16 x;
	s16 z;
	s16 xStep;
	s16 zStep;
	u8 buildingType;

	instanceId = func_8011D260_12C210((s8)(arg0 >> 8), (s8)(arg1 >> 8));
	if (instanceId != -1) {
		goto body;
	}
	*arg2 = -1;
	*arg3 = -1;
	return -1;
body:
	buildingType = buildingInstances[instanceId].buildingType;
	if ((0x1F != buildingType) && (D_8015EA28 != buildingType)) {
		goto fail;
	}

	x = arg0 >> 8;
	z = arg1 >> 8;

	xStep = 1;
	zStep = 0;
	if (buildingInstances[instanceId].unk8 & 1) {
		xStep = 0;
		zStep = 1;
	}

	*arg2 = 0;
	*arg3 = 0;

	if (*arg2 == 0) {
		do {
			x += xStep;
			z += zStep;
			testId = func_8011D260_12C210((s8)x, (s8)z);
			buildingType = buildingInstances[testId].buildingType;
			if (buildingType != 0x1F) {
				if (buildingType == D_8015EA28) {
					*arg2 = testId;
				} else {
					*arg2 = instanceId;
				}
			}
		} while (*arg2 == 0);

		x = arg0 >> 8;
		z = arg1 >> 8;
	}

	if (*arg3 == 0) {
		do {
			x -= xStep;
			z -= zStep;
			testId = func_8011D260_12C210((s8)x, (s8)z);
			buildingType = buildingInstances[testId].buildingType;
			if (buildingType != 0x1F) {
				if (buildingType == D_8015EA28) {
					*arg3 = testId;
				} else {
					*arg3 = instanceId;
				}
			}
		} while (*arg3 == 0);
	}

	return instanceId;

fail:
	*arg2 = -1;
	*arg3 = -1;
	return -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80115F20_124ED0.s")
#endif

// CURRENT(149)
#ifdef NON_MATCHING
s16 func_8011619C_12514C(s16 arg0, s16 arg1, s16 arg2) {
	f32 sp24;
	f32 sp20;
	s16 var_v1;

	sp20 = (f32)(((f64)(f32)arg0 * D_80144F08_153EB8[0]) / 32768.0);
	sp24 = sinf(sp20) / cosf(sp20);
	if (arg2 >= 0) {
		var_v1 = (s16)(s32)(-sp24 * (f32)(arg1 - arg2));
	} else {
		var_v1 = (s16)(s32)((f64)((f32)(arg1 - arg2) * sp24) - 2.0 * (f64)(sp24 * (f32)arg1));
	}
	return (s16)(var_v1 - (var_v1 >> 2));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011619C_12514C.s")
#endif

// CURRENT(3558)
#ifdef NON_MATCHING
s32 func_8011629C_12524C(BuildingInstance *arg0, s16 arg1, s16 arg2) {
	BuildingInstance *temp;
	BuildingInstance *prev;
	u8 *buildingType;
	s16 x;
	s16 z;
	s16 y;
	s32 idx;
	s32 count;
	s32 stride;
	s32 minusOne;
	s8 hitPoints;
	u8 trailType;

	x = (s16)(arg0->xCoord >> 8);
	z = (s16)(arg0->zCoord >> 8);
	prev = NULL;
	count = -1;
	minusOne = -1;
	stride = 0x18;
	buildingType = &D_8015EA28;

	while (TRUE) {
		x += arg1;
		z += arg2;
		idx = func_8011D260_12C210((s8)x, (s8)z);
		count += 1;
		if (idx == minusOne) {
			continue;
		}

		temp = buildingInstances[idx];
		if (*buildingType != temp->buildingType) {
			prev = temp;
			continue;
		}

		y = temp->yCoord;
		if (y < arg0->yCoord) {
			y = arg0->yCoord;
		}

		prev->yCoord = y;
		temp->yCoord = prev->yCoord;
		arg0->yCoord = prev->yCoord;

		hitPoints = buildingSpecs[*buildingType].unk19;
		prev->hitPoints = hitPoints;
		temp->hitPoints = hitPoints;
		arg0->hitPoints = hitPoints;

		arg0->padC[1] = count;
		temp->padC[1] = count;
		prev->buildingType = 0x1F;
		prev->rotation = (u8)((prev->rotation & 0xFC) | (arg0->unk8 & 3));
		break;
	}

	x = (s16)(arg0->xCoord >> 8);
	z = (s16)(arg0->zCoord >> 8);
	trailType = count;

	if (count != 0) {
		count -= 1;
		while (TRUE) {
			x += arg1;
			z += arg2;
			func_8011CC40_12BBF0((u8)x, (u8)z, trailType);
			if (count == 0) {
				break;
			}
			count -= 1;
		}
	}

	return count;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011629C_12524C.s")
#endif

Unk800522C0 *func_801164C4_125474(s16 arg0, s16 arg1) {
	s32 i;

	i = 0x20;
	while (i--) {
		if (D_800522C0[i].unk13 != 0 && D_800522C0[i].unkC == buildingInstances[arg0].buildingType) {
			if (arg1-- == 0) {
				return &D_800522C0[i];
			}
		}
	}
	return NULL;
}

void func_80116554_125504(s16 arg0, s16 *arg1, s16 *arg2) {
	s16 sp6;
	s16 sp4;

	switch (arg0 & 3) {
		case 0:
			sp6 = *arg1;
			sp4 = *arg2;
			break;
		case 1:
			sp6 = *arg2;
			sp4 = -*arg1;
			break;
		case 2:
			sp6 = -*arg1;
			sp4 = -*arg2;
			break;
		case 3:
			sp6 = -*arg2;
			sp4 = *arg1;
			break;
	}
	*arg1 = sp6;
	*arg2 = sp4;
}

// CURRENT(700)
#ifdef NON_MATCHING
s32 func_801165FC_1255AC(u8 arg0, u8 arg1, s16 *arg2, s16 *arg3, s16 *arg4, s16 *arg5) {
	BuildingInstance *sp18;
	Unk800522C0 *sp20;
	s16 sp1E;
	s16 sp1C;

	sp20 = func_801164C4_125474(arg0, arg1);
	if (sp20 == NULL) {
		*arg5 = -1;
		return 0;
	}

	sp1E = sp20->unk0;
	sp1C = sp20->unk4;
	sp18 = buildingInstances + arg0;
	func_80116554_125504((s16)(sp18->unk8 & 3), &sp1E, &sp1C);
	*arg2 = sp18->xCoord + sp1E;
	*arg3 = sp18->yCoord + sp20->unk2;
	*arg4 = sp18->zCoord + sp1C;
	*arg5 = (sp18->unk8 + sp20->unk6) << 14;

	if (D_8015EB7C != 0) {
		D_8015EB7C = 0;
		*arg5 += 0x8000;
	}
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801165FC_1255AC.s")
#endif

// https://decomp.me/scratch/SwQQl
// CURRENT(110)
#ifdef NON_MATCHING
void func_80116724_1256D4(void) {
	s32 building_idx;
	BuildingInstance *building;
	u32 door_idx;
	u32 interior_to_load;

	building = buildingInstances[1];
	interior_to_load = buildingInteriorToLoadId;
	building_idx = 1;

	do {
		door_idx = 3;
		while (door_idx--) {
			if ((&building->door1InteriorId)[door_idx] == interior_to_load) {
				D_80052540 = building_idx;
				D_80052544 = door_idx;
				return;
			}
		}

		building_idx += 1;
		building++;
	} while (building_idx != 0xFF);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80116724_1256D4.s")
#endif

// CURRENT(205)
#ifdef NON_MATCHING
void func_80116784_125734(void) {
	Unk80148620 *s4;
	BuildingInstance *building;
	s32 s5;
	u32 s3;
	s32 loop;
	u32 dist;
	s32 s6;

	D_8015EA58 = 0;
	s4 = D_80148620_1575D0;
	s6 = 0xE;

	if (s4 != NULL) {
		do {
			u32 curLevel;
			s3 = -1U;

			curLevel = currentLevel;
			building = &buildingInstances[ARRAY_COUNT(buildingInstances)];

			if (curLevel == s4->unk6) {
				loop = 0xFE;
				do {
					building--;
					dist = func_800047FC_53FC((s16)(s4->unk0 - (building->xCoord >> 8))) + func_800047FC_53FC((s16)(s4->unk2 - (building->zCoord >> 8)));
					if (dist < s3) {
						s3 = dist;
						s5 = loop;
					}
				} while (loop--);
				s4->unk0 = s5;
				s4->unk2 = 0;
			} else {
				s4->unk0 = 0x3E8;
			}

			s4++;
		} while (s6-- && s4 != NULL);
	}

end:
	D_80159DDA = 0x23F6;
	D_80159DDC = 0x1E;
	D_8015EA52 = 0;
	D_80159DDF = 0xFF;
	D_8015EB7C = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80116784_125734.s")
#endif

s32 func_801168E8_125898(s16 arg0, s16 arg1) {
	s32 count;
	s32 i;

	count = 0;
	i = 0x20;
	while (i--) {
		if (arg0 == D_800522C0[i].unkC) {
			if (arg1 == count) {
				return 1;
			}
			count++;
		}
	}
	return 0;
}

// guess_initBuildingsDoors
// CURRENT(41814)
#ifdef NON_MATCHING
void func_8011694C_1258FC(void) {
	Unk800522C0 *doorRef;
	s32 unusedPad0;
	s32 unusedPad1;
	s32 unusedPad2;
	s32 unusedPad3;
	BuildingSpec *spec;
	UnkBuildDoorMap *doorMap;
	UnkBuildGridCell *gridCell;
	BuildingInstance *inst;
	Unk80146688 *zone;
	s32 i;
	s32 j;
	s16 idx;
	s16 idx2;
	s32 bestDelta;
	s16 bestGrid;
	u8 targetType;
	u32 flags;

	D_8015EB80 = 0;
	spec = buildingSpecs;
	doorRef = &D_800522C0[0x1F];
	for (i = 0x1F; i >= 0; i--) {
		if (doorRef->unk13 != 0) {
			for (j = 0x1F; j >= 0; j--) {
				if ((s32) spec[j].pad0 == doorRef->unkC) {
					doorRef->unkC = j;
				}
			}
		} else {
			doorRef->unkC = 0x3E8;
		}
		doorRef = (Unk800522C0 *) ((u8 *) doorRef - 0x14);
	}

	for (i = 0x1F; i >= 0; i--) {
		buildingSpecs[i].pad16[7] = 0;
		buildingSpecs[i].pad16[6] = 0xFF;
	}

	doorMap = (UnkBuildDoorMap *) D_80052A7C;
	for (i = 0x6D; i >= 0; i--) {
		if (doorMap->unkA != doorMap->unk8) {
			for (j = 0x1F; j >= 0; j--) {
				spec = &buildingSpecs[j];
				if ((s32) spec->pad0 == doorMap->unk0) {
					doorMap->unk0 = j;
					spec->pad16[7] += 1;
					if (spec->pad16[6] == 0xFF) {
						spec->pad16[6] = i;
					}
				}
			}
		} else {
			doorMap->unk0 = 0x3E8;
		}
		doorMap = (UnkBuildDoorMap *) ((u8 *) doorMap - 0x0C);
	}

	func_80116784_125734();
	D_8015EA44 = 0x100;
	D_8015EA46 = 0;
	D_8015EA48 = 0;
	D_8015EA4A = 1;
	D_8015EA4C = 0;
	D_8015EA4E = 0;
	D_8015EA50 = 0;

	if (currentLevel == 1) {
		D_80052554 = 0x400;
	} else {
		D_80052554 = 0;
	}

	D_8015EB78 = 0;
	D_8005254C = -1;
	D_8015EA2C = 0.0f;
	D_8015EA30 = 0.0f;

	for (i = -1;; i--) {
		for (j = -1;; j--) {
			func_800B316C_C211C((s8) i, (s8) j, 0x800, 0);
			if (j == 0) {
				break;
			}
		}
		if (i == 0) {
			break;
		}
	}

	D_8015EA28 = 0xFF;
	for (i = 0x1F; i >= 0; i--) {
		if ((s32) buildingSpecs[i].pad0 == ((s32 *) D_80140A00_14F9B0)[currentLevel]) {
			D_8015EA28 = i;
		}
		if ((s32) buildingSpecs[i].pad0 == (s32) D_5002D40) {
			D_8015EA29 = i;
		}
	}

	for (i = 0x1F; i >= 0; i--) {
		spec = &buildingSpecs[i];
		if (currentLevel == 1) {
			if ((i == D_8015EA28) || (i == 4) || (i == 6) || (i == 0x14)) {
				spec->pad16[4] |= 8;
			}
		} else if (currentLevel == 2) {
			if ((i == D_8015EA28) || (i == 6) || (i == 0xD) || (i == 0xE) || (i == 0x10) || (i == 0x16)) {
				spec->pad16[4] |= 8;
			}
		} else if (currentLevel == 3) {
			if ((i == 7) || (i == 0x12) || (i == 0xC) || (i == 0x15)) {
				spec->pad16[4] |= 8;
			}
		} else if ((currentLevel == 4) && ((i == 4) || (i == 5) || (i == 0x10) || (i == 0x14))) {
			spec->pad16[4] |= 8;
		}
	}

	gridCell = (UnkBuildGridCell *) &buildingInstances[254];
	targetType = D_8015EA28;
	for (i = 0xFE; i >= 0; i--) {
		if (gridCell->unk6 == targetType) {
			gridCell->unk0 = (gridCell->unk0 & 0xFF00) + 0x80;
			gridCell->unk4 = (gridCell->unk4 & 0xFF00) + 0x80;
			targetType = D_8015EA28;
		}
		gridCell = (UnkBuildGridCell *) ((u8 *) gridCell - 0x18);
	}

	for (i = 0xFE; i >= 0; i--) {
		inst = &buildingInstances[i];
		if (inst->buildingType == D_8015EA28) {
			bestDelta = -0x10000;
			bestGrid = 0xFF;
			if ((inst->unk8 & 3) == 0) {
				gridCell = (UnkBuildGridCell *) &buildingInstances[254];
				for (j = 0xFE; j >= 0; j--) {
					if ((inst->zCoord >> 8) == (gridCell->unk4 >> 8)) {
						idx = inst->xCoord - gridCell->unk0;
						if ((idx < 0) && (bestDelta < idx)) {
							bestDelta = idx;
							bestGrid = j;
						}
					}
					gridCell = (UnkBuildGridCell *) ((u8 *) gridCell - 0x18);
				}
				if (bestGrid != 0xFF) {
					buildingInstances[(u8) bestGrid].buildingType = 0x1F;
				}
			} else if ((inst->unk8 & 3) == 3) {
				bestDelta = -0x10000;
				bestGrid = 0xFF;
				gridCell = (UnkBuildGridCell *) &buildingInstances[254];
				for (j = 0xFE; j >= 0; j--) {
					if ((inst->xCoord >> 8) == (gridCell->unk0 >> 8)) {
						idx = inst->zCoord - gridCell->unk4;
						if ((idx < 0) && (bestDelta < idx)) {
							bestDelta = idx;
							bestGrid = j;
						}
					}
					gridCell = (UnkBuildGridCell *) ((u8 *) gridCell - 0x18);
				}
				if (bestGrid != 0xFF) {
					buildingInstances[(u8) bestGrid].buildingType = 0x1F;
				}
			}
		}
	}

	spec = &buildingSpecs[D_8015EA28];
	D_80048172 = 0;
	spec->unk10 = 0x80;
	spec->unk12 = 0x80;
	spec->unk14 = 0x80;
	spec->pad16[2] = 0;
	spec->pad16[3] = 0x1F;
	buildingSpecs[0x1F].unk10 = 0x80;
	buildingSpecs[0x1F].unk12 = 0x80;
	buildingSpecs[0x1F].unk14 = 0x1000;
	buildingSpecs[0x1F].pad16[2] = 0;
	buildingSpecs[0x1F].pad16[3] = 0x1F;
	buildingSpecs[0x1F].pad16[4] |= 8;
	D_8015EB6A = D_80048172;
	D_8015EB6C = D_8015EB6A;
	D_8015EB68 = D_8015EB6C;
	D_8015EB6E = 0xFF;

	for (i = 7; i >= 0; i--) {
		D_8015EB60[i] = 0xFF;
	}
	for (i = 7; i >= 0; i--) {
		((&D_8015EB70)[i]) = 0xFF;
	}

	for (i = 0; i < 0xFF; i++) {
		D_8015EA60[i] = i;
		inst = &buildingInstances[i];
		spec = &buildingSpecs[inst->buildingType];

		if ((spec->pad16[4] & 4) || ((((u32) inst->unk8 >> 28) != 0xF)) || (func_80118114_1270C4(i) != 0)) {
			flags = inst->unk8;
			inst->unk8 = ((((flags >> 12) | 0x1000) ^ (flags >> 12)) << 12) ^ flags;
		}

		flags = inst->unk8;
		if (spec->pad16[2] == 0) {
			inst->unk8 = ((((flags >> 12) | 8) ^ (flags >> 12)) << 12) ^ flags;
		} else {
			inst->unk8 = ((((flags >> 12) | 0x8000) ^ (flags >> 12)) << 12) ^ flags;
		}

		if ((((u32) inst->unk8 >> 12) & 1) == 0) {
			inst->zCoord = 0x7FFF;
		} else {
			D_80048172++;
		}

		((u8 *) inst)[0xE] = 0xFF;
		inst->unk11 = func_8011C594_12B544((u8) i);
	}

	for (i = 0x1F; i >= 0; i--) {
		buildingSpecs[i].pad16[5] = 0xFF;
	}

	for (i = 0x1C; i >= 0; i--) {
		for (j = 0x1F; j >= 0; j--) {
			if ((s32) buildingSpecs[j].pad0 == D_801486A0_157650[i * 5]) {
				buildingSpecs[j].pad16[5] = i;
			}
		}
	}

	D_8015EA14 = func_8011C4D4_12B484();
	D_8015EA18 = D_8015EA14;

	if (D_8014667F_15562F[currentLevel] > 0) {
		for (i = 0; i < D_8014667F_15562F[currentLevel]; i++) {
			zone = &D_80146688_155638[currentLevel - 1][i];
			((s16 *) ((u8 *) zone + 8))[0] = func_8011C42C_12B3DC((s32) zone);
			zone->unk0A = ((s16 *) ((u8 *) zone + 8))[0];
			zone->unk0C = 0;
			((u8 *) zone)[0xE] = 0xFF;
		}
	}

	func_8011CDA4_12BD54();

	for (i = 0xFE; i >= 0; i--) {
		inst = &buildingInstances[i];
		if (inst->buildingType == D_8015EA28) {
			switch (inst->unk8 & 3) {
				case 0:
					func_8011629C_12524C(inst, 1, 0);
					break;
				case 3:
					func_8011629C_12524C(inst, 0, 1);
					break;
			}
		}
	}

	if (currentLevel == 1) {
		D_8015EA54 = func_8011D260_12C210(0x40, -0x1C);
		D_8015EA55 = func_8011D260_12C210(0x42, -0x1C);
		D_8015EA56 = func_8011D260_12C210(0x43, -0x1C);
	} else if (currentLevel == 5) {
		for (i = 0xFE; i >= 0; i--) {
			inst = &buildingInstances[i];
			inst->hitPoints = inst->hitPoints * 3;
		}
	}

	for (i = 0xFE; i >= 0; i--) {
		inst = &buildingInstances[i];
			if ((((u32) inst->unk8 >> 12) & 1) != 0) {
			for (j = 2; j >= 0; j--) {
					if ((&inst->door1InteriorId)[j] != 0xFF) {
					if (func_801168E8_125898(inst->buildingType, j) == 0) {
						idx2 = j + 1;
						osSyncPrintf(D_80144DC0_153D70, idx2, i, inst->xCoord >> 8, inst->zCoord >> 8, idx2);
					}
				}
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011694C_1258FC.s")
#endif

s32 func_80117464_126414(u8 arg0) {
	s16 minX;
	s16 minZ;

	minX = (s16) ((D_80149434 - 0x780) >> 8);
	minZ = (s16) ((D_80149436 - 0x780) >> 8);

	if (((buildingInstances[arg0].xCoord >> 8) >= minX) && ((buildingInstances[arg0].xCoord >> 8) < (minX + 0x10))) {
		if (((buildingInstances[arg0].zCoord >> 8) >= minZ) && ((buildingInstances[arg0].zCoord >> 8) < (minZ + 0x10))) {
			return 1;
		}
	}

	return 0;
}

// Is the return value from this used to determine how close a building is?
// And if it should be drawn?
// CURRENT(1050)
#ifdef NON_MATCHING
s32 func_80117508_1264B8(s16 arg0) {
	s32 halfStep;
	s32 candidate;
	s32 step = 0x40;
	s32 distPrev;
	s32 distThis;
	s32 distNext;
	s32 index;
	u8 thisId;
	s32 bestId;

	index = 0x7F;
	thisId = D_8015EA60[0x7F];
	do {
		halfStep = step >> 1;
		if ((buildingInstances[thisId].zCoord < arg0) && (((u32)buildingInstances[thisId].unk8 >> 12) & 1)) {
			candidate = step;
		} else {
			candidate = -step;
		}
		index += candidate;
		thisId = D_8015EA60[index];
		step = halfStep;
	} while (halfStep != 0);

	if (index > 0) {
		distPrev = arg0 - buildingInstances[D_8015EA60[index - 1]].zCoord;
	} else {
		distPrev = 0xF423F;
	}

	distThis = arg0 - buildingInstances[thisId].zCoord;
	if (((u32)index < 0xFEU) && (((u32)buildingInstances[D_8015EA60[index + 1]].unk8 >> 12) & 1)) {
		distNext = arg0 - buildingInstances[D_8015EA60[index + 1]].zCoord;
	} else {
		distNext = 0xF423F;
	}

	if (distPrev < 0) {
		distPrev = -distPrev;
	}
	if (distThis < 0) {
		distThis = -distThis;
	}
	if (distNext < 0) {
		distNext = -distNext;
	}

	if (distPrev < distThis) {
		if (distPrev < distNext) {
			bestId = D_8015EA60[index - 1];
		} else {
			bestId = D_8015EA60[index + 1];
		}
	} else if (distThis < distNext) {
		bestId = thisId;
	} else {
		bestId = D_8015EA60[index + 1];
	}

	if ((s32)bestId > 0) {
		if (buildingInstances[bestId - 1].zCoord == buildingInstances[bestId].zCoord) {
			do {
				bestId--;
			} while ((s32)bestId > 0 && buildingInstances[bestId - 1].zCoord == buildingInstances[bestId].zCoord);
		}
	}

	return bestId & 0xFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80117508_1264B8.s")
#endif

// https://decomp.me/scratch/UNJJQ
Unk80148620 *func_801176B0_126660(void)
{
  s32 i;
  for (i = 0xF; i--;)
  {
	if (D_80148620_1575D0[i].unk0 == D_80052540)
	{
	  return &D_80148620_1575D0[i];
	}
  }
  return NULL;
}

// CURRENT(7525)
#ifdef NON_MATCHING
void func_801176F4_1266A4(u8 arg0, u8 arg1, s32 arg2) {
	AlienInstance *alien;
	s16 centerX;
	s16 centerY;
	s16 centerZ;
	s16 orientation;
	s32 halfX;
	s32 halfZ;
	s32 cornerX0;
	s32 cornerX1;
	s32 cornerZ0;
	s32 cornerZ1;
	s32 minX;
	s32 maxX;
	s32 minZ;
	s32 maxZ;
	f64 halfXf;
	s32 specRadius;
	s32 alienId;
	s32 alienSpecIndex;
	s32 specIndex;

	specIndex = vehicleInstances[arg2].unk1A;

	halfX = vehicleSpecs[specIndex].unk34 + 0xC8;
	halfZ = vehicleSpecs[specIndex].unk36 + 0xC8;
	halfX /= 2;

	func_801165FC_1255AC(arg0, arg1, &centerX, &centerY, &centerZ, &orientation);
	halfXf = (f64)halfX;

	cornerX0 = (s32)((f64)centerX - (((f64)(f32)coss((u16)orientation) / 32768.0) * halfXf));
	cornerZ0 = (s32)((f64)centerZ - (((f64)(f32)sins((u16)orientation) / 32768.0) * halfXf));
	cornerX1 = (s32)((f64)centerX + ((((f64)(f32)sins((u16)orientation) / 32768.0) * (f64)halfZ) + (((f64)(f32)coss((u16)orientation) / 32768.0) * halfXf)));
	cornerZ1 = (s32)((f64)centerZ + ((((f64)(f32)coss((u16)orientation) / 32768.0) * (f64)halfZ) + (((f64)(f32)sins((u16)orientation) / 32768.0) * halfXf)));

	if (cornerX1 < cornerX0) {
		minX = cornerX1;
		maxX = cornerX0;
	} else {
		minX = cornerX0;
		maxX = cornerX1;
	}

	if (cornerZ1 < cornerZ0) {
		minZ = cornerZ1;
		maxZ = cornerZ0;
	} else {
		minZ = cornerZ0;
		maxZ = cornerZ1;
	}

	for (alienId = 0; alienId != 0xFF; alienId++) {
		alien = &alienInstances[alienId];
		alienSpecIndex = alien->specIndex;
		if (alienSpecIndex < 3 || alienSpecIndex == 0x20) {
			continue;
		}

		specRadius = alienSpecs[alienSpecIndex].unkC;
		if (!(alien->unk0 < (maxX + specRadius))) {
			continue;
		}
		if (!((minX - specRadius) < alien->unk0)) {
			continue;
		}
		if (!(alien->unk4 < (maxZ + specRadius))) {
			continue;
		}
		if (!((minZ - specRadius) < alien->unk4)) {
			continue;
		}
		if (!(alien->unk20 & 0x100000)) {
			func_80079910_888C0(alienId);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801176F4_1266A4.s")
#endif

// CURRENT(1562)
#ifdef NON_MATCHING
void func_80117A4C_1269FC(Unk80148620 *arg0) {
	s16 sp3A;
	s16 sp38;
	s16 sp36;
	s16 sp34;
	VehicleInstance *temp_s0;

	temp_s0 = &vehicleInstances[(u8)(arg0->unk4 >> 8)];
	temp_s0->unk1A = (u8)(arg0->unk4 & 0xFF);
	func_800FDD48_10CCF8((u8)(arg0->unk4 >> 8));
	func_800FAE84_109E34(temp_s0);
	temp_s0->unk20 |= 0x8049;
	func_801165FC_1255AC(D_80052543, 0, &sp3A, &sp38, &sp36, &sp34);
	func_800FB44C_10A3FC(temp_s0,
						 (f32)(((f64)vehicleSpecs[temp_s0->unk1A].unk36 * ((f64)(f32)coss((u16)(-0x4000 - sp34)) / 32768.0)) +
							   (f64)sp3A));
	func_800FB468_10A418(temp_s0, (f32)sp38);
	func_800FB484_10A434(temp_s0,
						 (f32)(((f64)vehicleSpecs[temp_s0->unk1A].unk36 * ((f64)(f32)sins((u16)(-0x4000 - sp34)) / 32768.0)) +
							   (f64)sp36));
	temp_s0->unk6 = 0x4000 - sp34;
	func_800FD510_10C4C0(0, (u8)(arg0->unk4 >> 8));
	func_800FDD48_10CCF8(0);
	D_8015EA2C = D_80144F10_153EC0[0];
	D_8015EA30 = 0.0f;
	D_80159260 = 0x3E;
	D_8015930E = 1;
	D_80159262 = 0;
	D_8005254C &= ~7;
	D_80158BD0[(u8)(arg0->unk4 >> 8)] = 0;
	if (currentLevel == 3) {
		s16 cosA = coss((u16)(-0x4000 - sp34));
		func_80112A98_121A48((s32)((((f64)(f32)cosA / 32768.0) * D_80144F18_153EC8[0]) + (f64)sp3A),
							(s32)((((f64)(f32)sins((u16)(-0x4000 - sp34)) / 32768.0) * D_80144F18_153EC8[0]) + (f64)sp36),
							0x258);
	} else {
		s16 cosA = coss((u16)(-0x4000 - sp34));
		func_80112A98_121A48((s32)((((f64)(f32)cosA / 32768.0) * 200.0) + (f64)sp3A),
							(s32)((((f64)(f32)sins((u16)(-0x4000 - sp34)) / 32768.0) * 200.0) + (f64)sp36),
							0x190);
	}
	func_801176F4_1266A4(D_80052543, 0, (u8)(arg0->unk4 >> 8));
	if ((currentLevel == 1) && ((arg0 - D_80148620_1575D0) == 3)) {
		D_80159262 = 1;
		func_800FB44C_10A3FC(temp_s0,
						 (f32)((f64)sp3A - (((f64)(f32)coss((u16)(-0x4000 - sp34)) / 32768.0) * D_80144F20_153ED0[0])));
		func_800FB484_10A434(temp_s0,
						 (f32)((f64)sp36 - (((f64)(f32)sins((u16)(-0x4000 - sp34)) / 32768.0) * D_80144F28_153ED8[0])));
	}
	func_800EFEB4_FEE64(0, 3, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80117A4C_1269FC.s")
#endif

void func_80117F10_126EC0(void) {
	D_8015EA30 = D_80144F30_153EE0[0];
	D_8015EA2C = D_80144F34_153EE4[0];
}

// CURRENT(196)
void func_80117F34_126EE4(void) {
	s16 sp46;
	s16 sp44;
	s16 sp42;
	s16 sp40;
	Unk80148620 *sp38;
	s16 sp3A;
	void *sp34;

	sp34 = func_801164C4_125474(*(s16 *)((u8 *)&D_80052540 + 2), D_80052546);
	func_801165FC_1255AC(*((u8 *)&D_80052540 + 3), D_80052547, &sp46, &sp44, &sp42, &sp40);
	func_80117F10_126EC0();
	if (sp40 == -1) {
		sourceTaggedPrintF(D_80144E20_153DD0, D_80144E2C_153DDC, 0x469);
	}

	sp3A = *(s16 *)((u8 *)D_801483A4 + (((u8 *)sp34)[8] * 0x18)) + 0x32;
	D_80052B34->unkE = D_80052B34->unk6 = -0x4000 - sp40;
	func_800FB44C_10A3FC(D_80052B34, (f32)((((f64)(f32)coss(D_80052B34->unkE) / 32768.0) * (f64)sp3A) + (f64)sp46));
	func_800FB468_10A418(D_80052B34, (f32)sp44);
	func_800FB484_10A434(D_80052B34, (f32)((((f64)(f32)sins(D_80052B34->unkE) / 32768.0) * (f64)sp3A) + (f64)sp42));

	if (D_80052544 == 0) {
		sp38 = func_801176B0_126660();
		if (sp38 != NULL) {
			func_80117A4C_1269FC(sp38);
		}
	}
	D_80052A88 = 1;
}

s32 func_80118114_1270C4(s16 arg0) {
	s32 i;
	i = 0xF;
	while (i--) {
		if (arg0 == D_80148620_1575D0[i].unk0) {
			return 1;
		}
	}
	return 0;
}

#ifdef NON_MATCHING
// CURRENT(7353)
void func_8011815C_12710C(void *arg0, s16 arg1, s32 arg2) {
	BuildingInstance *building;
	s32 buildingId;
	Unk80148620 *found;
	s16 doorData;
	s16 doorId;
	s32 canEnter;

	doorData = D_8015FAD0[arg1].unk1E;
	if (((u8 *) arg0)[0x1A] != 0) {
		return;
	}

	if ((f64) D_8015EA30 != 0.0) {
		return;
	}

	buildingId = (s16) (doorData >> 4);
	building = &buildingInstances[buildingId];
	if ((((u32) building->unk8 >> 0xC) & 0x10) != 0) {
		return;
	}

	if ((((u32) building->unk8 >> 0xC) & 4) != 0) {
		return;
	}

	D_80052540 = (s16) buildingId;
	found = func_801176B0_126660();
	D_80052540 = 0xFF;

	if (found != NULL) {
		doorId = doorData & 0xF;
		if (doorId != 0) {
			goto open_door;
		}
	}

	if (func_8000726C_7E6C(0, (building->unk8 << 0x14) >> 0x1A, buildingId, building) != 0) {
		doorId = doorData & 0xF;
		goto open_door;
	}

	if (D_8015EB78 != 0) {
		return;
	}

	if (currentLevel == 1) {
		if (((building->unk8 << 0x14) >> 0x1A) == 0x2E) {
			if (func_8000726C_7E6C(0, 0xA, buildingId, building) != 0) {
				goto finish_alarm;
			}
		}
	}

	func_8001A650_1B250(0);

finish_alarm:
	D_8015EB78 = 0xC8;
	osSyncPrintf(D_80144E68_153E18, (building->unk8 << 0x14) >> 0x1A);
	return;

open_door:
	D_80052540 = buildingId;
	D_80052544 = doorId;
	buildingInteriorToLoadId = (&building->door1InteriorId)[doorId];
	if (buildingInteriorToLoadId == 0xF0) {
		return;
	}

	D_8005254C = (D_80052540 * 0x10) + D_80052544;
	if ((found != 0) && (doorId == 0)) {
		D_8015EB7C = 1;
	}

	if ((buildingInteriorToLoadId == 0xFF) && (found == 0)) {
		osSyncPrintf(D_80144E3C_153DEC);
		return;
	}

	if (arg2 != 0) {
		canEnter = D_8004D148 == 0;
		if (canEnter == 0) {
			canEnter = func_8000726C_7E6C(0, (building->unk8 << 0x14) >> 0x1A, buildingId, building) != 0;
		}
		func_800EC0D0_FB080(canEnter);
	} else {
		gameplayMode = 6;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011815C_12710C.s")
#endif

void func_801183EC_12739C(void *arg0, s16 arg1) {
	func_8011815C_12710C(arg0, arg1, 0);
}

void func_80118418_1273C8(void* arg0, s16 arg1) {
	if (currentControllerStates[CONTROLLER_ONE].button & BUTTON_A) {
		func_8011815C_12710C(arg0, arg1, 1);
	}
}

void func_80118454_127404(s32 arg0, s32 arg1) {

}

s32 func_80118460_127410(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
	s32 temp2;
	s32 temp1;

	temp1 = func_800F9C40_108BF0(arg0 - arg2);
	temp2 = func_800F9C40_108BF0(arg1 - arg3);
	temp2 += temp1;
	return (s32) sqrtf((f32)(u32)temp2);
}

void func_801184E4_127494(s8 arg0) {
	D_80159DDE = arg0;
}

s32 func_801184F4_1274A4(BuildingInstance *building) {
	BuildingSpec *spec = &buildingSpecs[building->buildingType];

	if ((spec->unk10 >= 0x321) || (spec->unk12 >= 0x321)) {
		return 1;
	}

	return 0;
}

s32 func_8011853C_1274EC(BuildingInstance *arg0, s16 arg1) {
	if (arg0 != NULL) {
		if (func_801184F4_1274A4(arg0) != 0) {
			s32 lo;
			if (arg1 - 0x4B0 < -0x8000) {
				lo = -0x8000;
			} else {
				lo = arg1 - 0x4B0;
			}
			if (arg0->xCoord >= lo) {
				if (arg0->xCoord < ((arg1 + 0x15B0) >= 0x8001 ? (s32)0x8000 : (s32)(arg1 + 0x15B0))) {
					return 1;
				}
			}
		} else {
			if (arg0->xCoord >= arg1) {
				if (arg0->xCoord < arg1 + 0x1100) {
					return 1;
				}
			}
		}
	}
	return 0;
}

s32 func_801185F8_1275A8(BuildingInstance *arg0, s16 arg1) {
	s32 buildingIndex;
	s32 maxY;
	s32 maxYClamped;

	buildingIndex = arg0 - buildingInstances;
	if (buildingIndex >= 0xFF) {
		return 0;
	}

	maxY = arg1 + 0x15B0;
	if (arg0 != NULL) {
		if (maxY >= 0x8001) {
			maxYClamped = 0x8000;
		} else {
			maxYClamped = maxY;
		}

		if (arg0->zCoord < maxYClamped) {
			return 1;
		}
	}

	return 0;
}

// CURRENT(42)
#ifdef NON_MATCHING
s32 func_80118670_127620(s16 arg0, s16 arg1) {
	s32 sp20;
	s32 sp1C;

	if (currentLevel != 1) {
		return 0x400;
	}

	sp20 = arg0;
	sp1C = arg1;

	if (func_80118460_127410(sp20, sp1C, 0x4B, -6) < 0x14) {
		return func_8000726C_7E6C((u64) 0x28) != 0 ? -0x2570 : 0x400;
	}

	if (func_80118460_127410(sp20, sp1C, 0x27, -0x41) < 0x14) {
		return func_8000726C_7E6C((u64) 0x29) != 0 ? -0x2970 : 0x400;
	}

	if (func_80118460_127410(sp20, sp1C, -0x23, -0x2E) < 0x14) {
		return func_8000726C_7E6C((u64) 0xB) != 0 ? 0x400 : 0x38A4;
	}
	return 0x400;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80118670_127620.s")
#endif

// CURRENT(70000)
#ifdef NON_MATCHING
// displayBuildings
void func_80118774_127724(s32 arg0) {
	BuildingInstance *building;
	BuildingInstance *neighbor;
	BuildingInstance *sp7C;
	BuildingSpec *spec;
	Unk800522C0 *doorRef;
	UnkBuildDoorMap *doorMap;
	UnkBuildingProp_80118774 *prop;
	UnkBuildingAction_80118774 *action;
	u8 sp180[0x10];
	u8 sp170[0x10];
	s16 sp1D6;
	s16 sp1D4;
	s32 sp1C8;
	s16 sp1BA;
	s16 sp1B8;
	s16 sp1B6;
	s16 sp1B4;
	u16 sp1B2;
	s32 sp1A4;
	u8 sp19F;
	s32 sp198;
	s16 sp196;
	s16 sp194;
	s16 sp192;
	s16 sp16E;
	s32 sp168;
	s32 sp14C;
	s32 sp90;
	s32 sp88;
	s32 sp78;
	s32 sp74;
	s32 temp;
	s32 flags;
	s32 propMode;
	s32 i;
	s32 searchCount;
	s16 maxY;
	s16 maxYClamped;
	s16 halfX;
	s16 halfZ;
	s16 bboxTest;
	u8 currentIndex;
	u8 revisitIndex;
	u8 *scanPtr;
	u8 *revisitPtr;
	u8 *specialPtr;
	f32 tempF;
	f64 scale;

	(void)arg0;

	sp1D4 = D_80149436 - 0x900;
	sp1D6 = D_80149434 - 0x900;
	maxY = sp1D4 - 0x4B0;
	maxYClamped = maxY;

	building = &buildingInstances[func_80117508_1264B8(maxYClamped)];
	sp198 = 0;
	sp192 = func_80115F20_124ED0(D_80052B34->unk0, D_80052B34->unk4, &sp194, &sp196);
	sp16E = 0;

	if ((currentLevel == 2) && (D_80159320 & 0x800000)) {
		D_80159DDF = func_8011D260_12C210(-0x10, 0x4D);
		D_80159DE0 = 0;
		D_80159DE2 = 0;
		D_80159DE4 = 0;
	}

	i = 0xF;
	scanPtr = &sp180[0xF];
	revisitPtr = &sp170[0xF];
	D_80052558 &= ~8;
	while (i != 0) {
		*scanPtr-- = 0xFF;
		*revisitPtr-- = 0xFF;
		i--;
	}

	if (func_8000726C_7E6C(0x2A) == 0) {
		if ((gameplayMode == 0xB) || (gameplayMode == 3)) {
			sp1BA = D_80157F08.unk18 >> 6;
			sp1B6 = D_80157F08.unk1A >> 6;
		} else {
			sp1BA = D_80052B2C->unk18 >> 8;
			sp1B6 = D_80052B2C->unk1A >> 8;
		}
		D_80052554 = func_80118670_127620(sp1BA, sp1B6);
	}

	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);

	sp168 = 0;
	if (func_801185F8_1275A8(building, sp1D4) == 0) {
		goto end_scan;
	}

	scale = D_80144F38_153EE8[0];

main_scan:
	flags = (u32)building->unk8 >> 12;
	if (!(flags & 1) || (building->buildingType == 0x1F)) {
		goto advance_building;
	}

	if (!func_801184F4_1274A4(building) && (building->zCoord < sp1D4)) {
		goto advance_building;
	}

	sp88 = building - buildingInstances;
	sp19F = (u8)sp88;
	if (!func_8011853C_1274EC(building, sp1D6)) {
		goto after_building;
	}

	sp1C8 = building->buildingType;
	spec = &buildingSpecs[building->buildingType];
	if (building->unk8 & 1) {
		halfX = spec->unk12;
		halfZ = spec->unk10;
	} else {
		halfX = spec->unk10;
		halfZ = spec->unk12;
	}

	bboxTest = func_800B960C_C85BC((s16)(building->xCoord - halfX), (s16)(building->zCoord - halfZ), halfX * 2, halfZ * 2);
	currentIndex = sp19F;
	if (func_801184F4_1274A4(building)) {
		bboxTest = 1;
	}

	if ((sp1C8 != D_8015EA28) && (bboxTest == 0)) {
		goto after_building;
	}

	sp1A4 = -1;
	if ((D_80159DDF != 0xFF) && (D_80159DDF == (u8)sp88)) {
		sp198 = 1;
	}

	if ((s8)building->hitPoints < (s8)building->unk10) {
		sp19F = currentIndex;
		func_800710D4_80084(0xFF, 0xFF, 0xFF);
	}

	if (sp1C8 == D_8015EA28) {
		sp180[sp16E] = (u8)sp88;
		sp16E++;
	}

	specialPtr = &D_8015EB67;
	propMode = flags & 4;
	searchCount = 7;
	while (searchCount != 0) {
		temp = propMode ? 0x80 : 0;
		if (*specialPtr == (u8)(temp + sp1C8)) {
			break;
		}
		specialPtr--;
		searchCount--;
	}

	if (specialPtr == (&D_8015EB67 - 8)) {
		sp19F = currentIndex;
		func_8011D438_12C3E8((u8)sp1C8, propMode);
	}

	currentIndex = sp19F;

process_current:
	if (sp192 == sp88) {
		sp192 = -1;
	}
	if (sp196 == sp88) {
		sp196 = -1;
	}
	if (sp194 == sp88) {
		sp194 = -1;
	}

	D_80052B40.unk0 = building->xCoord >> 2;
	D_80052B40.unk2 = building->yCoord >> 2;
	D_80052B40.unk4 = building->zCoord >> 2;
	D_80052B48.unk0 = building->unk8 << 14;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = 0;

	if (D_80159DDF == currentIndex) {
		D_80052B40.unk0 += D_80159DE0;
		D_80052B40.unk2 += D_80159DE2;
		D_80052B40.unk4 += D_80159DE4;
	}

	func_800039D0_45D0(&D_80052B40, &D_80052B48, (Unk80052B40 *)&D_800311A0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	if (building->buildingType == D_8015EA28) {
		gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
		gSPDisplayList(D_8005BB2C++, ((u32 *)D_80140A00_14F9B0)[currentLevel]);

		D_80052B40.unk0 = (((u8 *)building)[0xD] << 7) - 0x80;
		if (D_80052554 == 0x400) {
			D_80052B40.unk2 = (s16)(s32)(((f64)(f32)sins((u16)D_80052554) / 32768.0) * (f64)D_80052B40.unk0);
		} else {
			D_80052B40.unk0 = (s16)(s32)(((f64)(f32)coss((u16)D_80052554) / 32768.0) * (f64)D_80052B40.unk0);
			D_80052B40.unk2 = (s16)(s32)(((f64)(f32)sins((u16)D_80052554) / 32768.0) * (f64)((((u8 *)building)[0xD] << 7) - 0x80));
		}
		D_80052B40.unk4 = 0;
		func_800039D0_45D0(&D_80052B40, NULL, NULL, D_8005BB38);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;
		gSPTexture(D_8005BB2C++, ((u8 *)building)[0xD] << 12, 0x2000, 5, G_TX_RENDERTILE, G_ON);
		gSPDisplayList(D_8005BB2C++, ((u32 *)D_80140A14_14F9C4)[currentLevel]);
		if (D_80052554 != 0x400) {
			gSPDisplayList(D_8005BB2C++, ((u32 *)D_80140A28_14F9D8)[currentLevel]);
		}
		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
		gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	} else {
		if (building->buildingType == D_8015EA29) {
			gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
			gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
			gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
		} else {
			gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);
		}

		if (!(flags & 4)) {
			gSPDisplayList(D_8005BB2C++, *(u32 *)&buildingSpecs[building->buildingType].pad0[0]);
		} else if (*(u32 *)&buildingSpecs[building->buildingType].pad0[4] != 0) {
			gSPDisplayList(D_8005BB2C++, *(u32 *)&buildingSpecs[building->buildingType].pad0[4]);
		} else {
			gSPDisplayList(D_8005BB2C++, *(u32 *)&buildingSpecs[building->buildingType].pad0[0]);
		}
	}

	doorRef = &D_800522C0[0x1F];
	flags = (u32)building->unk8 >> 12;
	propMode = flags & 4;
	searchCount = 0x1F;
	while (searchCount != 0) {
		prop = &D_80148390_157340[((u8 *)doorRef)[8]];
		if (building->buildingType == doorRef->unkC) {
			sp14C = 0xA;
			sp1A4++;
			sp7C = building + sp1A4;
			if (propMode) {
				bboxTest = 1;
			} else {
				bboxTest = prop->unk16;
			}

			sp1BA = doorRef->unk0;
			sp1B8 = doorRef->unk2 + (prop->unk10 >> 1);
			sp1B6 = doorRef->unk4;
			func_80116554_125504(building->unk8 & 3, &sp1BA, &sp1B6);

			sp90 = bboxTest & 2;
			sp1B4 = prop->unkC >> (sp90 == 0);
			sp1B2 = prop->unkE;
			func_80116554_125504(doorRef->unk6, &sp1B4, (s16 *)&sp1B2);
			func_80116554_125504(building->unk8 & 3, &sp1B4, (s16 *)&sp1B2);
			if (bboxTest & 0x80) {
				sp14C = 0xB;
			}

			if ((sp7C->door1InteriorId == 0xFF) && ((func_80118114_1270C4((s16)sp88) == 0) || (sp1A4 != 0))) {
				flags = (u32)building->unk8 >> 12;
				propMode = flags & 4;
				goto next_door_ref;
			}

			if ((sp7C->door1InteriorId != 0xF0) && !(flags & 4)) {
				temp = currentIndex * 0x10;
				if (bboxTest & 0x20) {
					func_8012D700_13C6B0((u8)sp14C, (temp + sp1A4) & 0xFFFF, (s16)(building->xCoord + sp1BA), (s16)(building->yCoord + sp1B8), building->zCoord + sp1B6,
						0, 0, 0, sp1B4, (s16)sp1B2, prop->unk10 >> 1, func_801183EC_12739C, 0);
				} else {
					func_8012D700_13C6B0((u8)sp14C, (temp + sp1A4) & 0xFFFF, (s16)(building->xCoord + sp1BA), (s16)(building->yCoord + sp1B8), building->zCoord + sp1B6,
						0, 0, 0, sp1B4, (s16)sp1B2, prop->unk10 >> 1, func_80118418_1273C8, 0);
				}
			}

			if (prop->unk0 != NULL) {
				D_80052B40.unk0 = doorRef->unk0;
				D_80052B40.unk2 = doorRef->unk2;
				D_80052B40.unk4 = doorRef->unk4;
				D_80052B48.unk0 = doorRef->unk6 << 14;
				D_80052B48.unk2 = 0;
				D_80052B48.unk4 = 0;
				temp = currentIndex * 0x10 + sp1A4;
				if (((u8 *)doorRef)[8] == 4) {
					D_80052B48.unk0 += 0x8000;
				}

				gSPClearGeometryMode(D_8005BB2C++, G_LIGHTING);
				func_800039D0_45D0(&D_80052B40, &D_80052B48, NULL, D_8005BB38);
				gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				D_8005BB38 += 0x40;

				if ((prop->unk8 != NULL) && ((prop->unk8 != D_5038D48) || (D_8005254C != temp) || (D_8015EA2C != 0.0f))) {
					gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_PASS2);
					gSPDisplayList(D_8005BB2C++, prop->unk8);
				}

				if (bboxTest & 8) {
					D_80052B40.unk0 = -prop->unkC;
				} else if (bboxTest & 1) {
					D_80052B40.unk0 = prop->unkC >> 1;
				} else if (bboxTest & 0x40) {
					D_80052B40.unk0 = (s16)(-prop->unkC) >> 1;
				} else {
					D_80052B40.unk0 = 0;
				}

				if (bboxTest & 4) {
					D_80052B40.unk2 = 0x7A;
				} else {
					D_80052B40.unk2 = 0;
				}
				D_80052B40.unk4 = -2;
				D_80052B48.unk0 = 0;
				D_80052B48.unk2 = 0;
				D_80052B48.unk4 = 0;

				if (D_8005254C == temp) {
					switch (prop->unk12) {
						case 1:
							D_80052B48.unk0 = (u16)(-(s32)((f64)D_8015EA2C * scale));
							break;
						case 2:
							tempF = (f32)(u16)prop->unkC;
							D_80052B40.unk0 = (s16)(s32)((f64)D_80052B40.unk0 - ((f64)(D_8015EA2C * tempF) * D_80144F60_153F10[0]));
							break;
						case 3:
							D_80052B48.unk4 = (s16)(-(s32)(D_8015EA2C * 16384.0f));
							D_80052B40.unk2 = (s16)(s32)((f32)(u16)prop->unk10 * D_8015EA2C);
							break;
						case 4:
							D_80052B48.unk4 = (s16)(u32)(D_8015EA2C * D_80144F70_153F20[0]);
							break;
						case 5:
							D_80052B48.unk0 = (s16)((s32)((f64)D_8015EA2C * scale) + 0x8000);
							break;
						case 6:
							D_80052B48.unk0 = (s16)(s32)((f64)D_8015EA2C * scale);
							break;
						case 7:
							tempF = (f32)(u16)prop->unkC;
							D_80052B40.unk0 = (s16)(s32)((f64)D_80052B40.unk0 + ((f64)(D_8015EA2C * tempF) * D_80144F68_153F18[0]));
							break;
					}
				} else if (prop->unk12 == 5) {
					D_80052B48.unk0 = 0x8000;
				}

				if (bboxTest & 0x10) {
					D_80052B48.unk0 += 0x8000;
				}

				if (sp7C->door1InteriorId == 0xF0) {
					gSPDisplayList(D_8005BB2C++, D_504E888);
				}

				gDPSetPrimColor(D_8005BB2C++, 0, 0, ((u8 *)doorRef)[0x10], ((u8 *)doorRef)[0x11], ((u8 *)doorRef)[0x12], 0);
				sp74 = bboxTest & 4;
				sp78 = bboxTest & 0x10;
				func_800039D0_45D0(&D_80052B40, &D_80052B48, NULL, D_8005BB38);
				gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
				D_8005BB38 += 0x40;

				if (flags & 4) {
					gSPDisplayList(D_8005BB2C++, D_5038A00);
					gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
				} else {
					if ((D_8015EA2C != 0.0f) && (D_8005254C == temp)) {
						gSPDisplayList(D_8005BB2C++, prop->unk4);
					} else {
						gSPDisplayList(D_8005BB2C++, prop->unk0);
					}
					gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

					if (sp90 != 0) {
						D_80052B48.unk0 = (sp78 != 0) ? 0x8000 : 0;
						D_80052B48.unk2 = 0;
						D_80052B48.unk4 = 0;
						D_80052B50.unk0 = -0x100;
						D_80052B50.unk2 = 0x100;
						D_80052B50.unk4 = 0x100;
						if (prop->unk12 == 5) {
							D_80052B48.unk0 = 0x8000 - (s32)((f64)D_8015EA2C * scale);
						}
						D_80052B40.unk0 = -D_80052B40.unk0;
						D_80052B40.unk2 = 0;
						D_80052B40.unk4 = -2;
						func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);
						gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
						D_8005BB38 += 0x40;
						gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK);
						gSPSetGeometryMode(D_8005BB2C++, G_CULL_FRONT);
						gSPDisplayList(D_8005BB2C++, prop->unk0);
						gSPClearGeometryMode(D_8005BB2C++, G_CULL_FRONT);
						gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
					}

					if (sp74 != 0) {
						D_80052B40.unk0 = 0;
						D_80052B40.unk2 = 0x29;
						D_80052B40.unk4 = -0xC;
						D_80052B48.unk0 = 0;
						D_80052B48.unk2 = 0;
						D_80052B48.unk4 = (s16)(0x10000 - (s32)(D_8015EA2C * D_80144F74_153F24[0]));
						func_800039D0_45D0(&D_80052B40, &D_80052B48, NULL, D_8005BB38);
						gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
						D_8005BB38 += 0x40;
						gSPDisplayList(D_8005BB2C++, D_504EC90);
					}
				}

				gDPSetPrimColor(D_8005BB2C++, 0, 0, 0, 0, 0, 0);
				gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
				flags = (u32)building->unk8 >> 12;
				propMode = flags & 4;
			}
		}

next_door_ref:
		doorRef = (Unk800522C0 *)((u8 *)doorRef - 0x14);
		searchCount--;
	}

	if (!(propMode) && (flags & 1)) {
		if (buildingSpecs[building->buildingType].pad16[5] != 0xFF) {
			action = (UnkBuildingAction_80118774 *)((u8 *)D_801486A0_157650 + (buildingSpecs[building->buildingType].pad16[5] * sizeof(UnkBuildingAction_80118774)));
			D_80159DD0 = building;
			D_80159DC0 = action->unkF;
			D_80159DC4 = action->unk10;
			D_80159DC8 = action->unk8;
			D_80159DCA = action->unkA;
			D_80159DCC = action->unkC;
			func_80116554_125504(building->unk8 & 3, &D_80159DC8, &D_80159DCC);
			if (buildingSpecs[building->buildingType].pad16[5] == 0xA) {
				D_80159DCA = 0x11;
				switch (building->unk8 & 3) {
					case 0:
						D_80159DC8 = -9;
						D_80159DCC = 5;
						break;
					case 1:
						D_80159DC8 = -5;
						D_80159DCC = -9;
						break;
					case 2:
						D_80159DC8 = 9;
						D_80159DCC = -5;
						break;
					case 3:
						D_80159DC8 = 5;
						D_80159DCC = 9;
						break;
				}
			}
			action->unk4(building);
		}
	}

	gSPMatrix(D_8005BB2C++, ((u32)&D_80031160) & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	doorMap = (UnkBuildDoorMap *)D_80052A7C;
	searchCount = 0x6D;
	while (1) {
		if (building->buildingType == doorMap->unk0) {
			D_80159DC8 = ((s16 *)doorMap)[2];
			D_80159DCC = ((s16 *)doorMap)[3];
		}
		doorMap = (UnkBuildDoorMap *)((u8 *)doorMap - 0x0C);
		if (--searchCount != 0) {
			continue;
		}
		break;
	}

after_building:
	if (sp168 != 0) {
		goto revisit_neighbors;
	}

	if ((s8)building->hitPoints < (s8)building->unk10) {
		func_80070FB8_7FF68();
		building->unk10 = building->hitPoints;
	}

advance_building:
	building++;
	if (func_801185F8_1275A8(building, sp1D4) != 0) {
		goto main_scan;
	}

end_scan:
	scale = D_80144F78_153F28[0];

revisit_neighbors:
	if (sp192 != -1) {
		neighbor = &buildingInstances[sp192];
		currentIndex = (u8)sp192;
		if (neighbor->buildingType != 0x1F) {
			sp168 = 1;
			sp88 = neighbor - buildingInstances;
			sp1A4 = -1;
			building = neighbor;
			goto process_current;
		}
	}

	if (sp196 != -1) {
		neighbor = &buildingInstances[sp196];
		currentIndex = (u8)sp196;
		if (neighbor->buildingType != 0x1F) {
			sp168 = 1;
			sp88 = neighbor - buildingInstances;
			sp1A4 = -1;
			building = neighbor;
			goto process_current;
		}
	}

	if (sp194 != -1) {
		neighbor = &buildingInstances[sp194];
		currentIndex = (u8)sp194;
		if (neighbor->buildingType != 0x1F) {
			sp168 = 1;
			sp88 = neighbor - buildingInstances;
			sp1A4 = -1;
			building = neighbor;
			goto process_current;
		}
	}

	if ((D_80159DDF != 0xFF) && (sp198 == 0)) {
		neighbor = &buildingInstances[D_80159DDF];
		currentIndex = D_80159DDF;
		if (neighbor->buildingType != 0x1F) {
			sp198 = 1;
			sp168 = 1;
			sp88 = neighbor - buildingInstances;
			sp1A4 = -1;
			building = neighbor;
			goto process_current;
		}
	}

	if (sp16E != -1) {
		sp16E = 0;
		scanPtr = &sp180[0xF];
		i = 0xF;
		while (i != 0) {
			currentIndex = *scanPtr;
			if (currentIndex != 0xFF) {
				neighbor = &buildingInstances[currentIndex];
				func_80115F20_124ED0(neighbor->xCoord, neighbor->zCoord, &sp194, &sp196);
				revisitIndex = (sp194 != currentIndex) ? (u8)sp194 : (u8)sp196;
				specialPtr = &sp180[0xF];
				temp = 0xF;
				while (temp != 0) {
					if (revisitIndex == *specialPtr) {
						revisitIndex = 0xFF;
						break;
					}
					specialPtr--;
					temp--;
				}
				if (revisitIndex != 0xFF) {
					sp170[sp16E] = revisitIndex;
					sp16E++;
				}
			}
			scanPtr--;
			i--;
		}
		sp16E = -1;
		sp194 = -1;
		sp196 = -1;
	}

	revisitPtr = &sp170[0xF];
	i = 0xF;
	while (i != 0) {
		currentIndex = *revisitPtr;
		if (currentIndex != 0xFF) {
			building = &buildingInstances[currentIndex];
			*revisitPtr = 0xFF;
			sp168 = 1;
			sp88 = building - buildingInstances;
			sp1A4 = -1;
			goto process_current;
		}
		revisitPtr--;
		i--;
	}

	for (i = 0; i < 0x20; i++) {
		D_80259470[(i * 0x20) + 0x1A] &= ~0x10;
	}

	gSPMatrix(D_8005BB2C++, ((u32)&D_80031160) & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	gDPTileSync(D_8005BB2C++);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80118774_127724.s")
#endif

// CURRENT(3140)
#ifdef NON_MATCHING
void func_8011A2A0_129250(void) {
	VehicleInstance *var_s1;
	s8 *var_s3;
	s32 var_s4;
	BuildingInstance *var_s5;
	s8 *var_s6;
	s16 var_s0;
	s16 var_s2;
	s32 var_v1;
	s32 temp_v0_4;
	s8 temp_v0;
	s8 temp_v0_2;
	s8 temp_v0_3;
	u16 temp_t4;
	extern s8 D_80140B03_14FAB3;

	if ((D_80052B34->unk0 >= 0x5701) && (D_80052B34->unk0 < 0x6000)) {
		if ((D_80052B34->unk4 >= 0x5001) && (D_80052B34->unk4 < 0x5B00) && (func_8000726C_7E6C(2) == 0)) {
			var_s4 = func_8011D260_12C210(0x5B, 0x5C);
			if (var_s4 != -1) {
				var_s5 = &buildingInstances[var_s4];
				D_80158E78 = NULL;
				var_s3 = &D_8015EB86;
				var_s6 = &D_80140B03_14FAB3;
				var_s1 = &vehicleInstances[115];
				var_s4 = 0;
				do {
					var_s1->unk1A = 0x12;
					func_800FAE84_109E34(var_s1);
					if (var_s3 == &D_8015EB86) {
						func_800FB44C_10A3FC(var_s1, (f32) (var_s5->xCoord + 0x11B));
					} else {
						func_800FB44C_10A3FC(var_s1, (f32) (var_s5->xCoord - 0x11F));
					}
					func_800FB468_10A418(var_s1, (f32) (var_s5->yCoord + 0x1A8));
					func_800FB484_10A434(var_s1, (f32) (var_s5->zCoord - 0x1D3));
					temp_v0 = var_s6[-0x73];
					var_s1->unkE = -0x4000;
					temp_t4 = var_s1->unk20 | 0x8000;
					var_s1->unk20 = temp_t4;
					var_s1->unk46 = (var_s1->unk46 & 0xFFC0) | 0x3F;
					var_s1->unk20 = temp_t4 & 0xFFFE;
					var_s6[-0x73] = temp_v0 - 1;
					var_s1->unk6 = var_s1->unkE;
					if (temp_v0 <= 0) {
						D_80140A90_14FA40[var_s4] = (func_800038E0_44E0() & 0x3F) + 0x3C;
						*var_s3 = (func_800038E0_44E0() & 0x1F) + 0x10;
						*(&D_8015EB88 + var_s4) = (func_800038E0_44E0() & 3) + 9;
					}
					temp_v0_2 = *var_s3;
					*var_s3 = temp_v0_2 - 1;
					if (temp_v0_2 > 0) {
						temp_v0_3 = *(&D_8015EB88 + var_s4);
						if ((u32)((u32) D_80052A8C % (u32) temp_v0_3) < (u32)(temp_v0_3 >> 1)) {
							temp_v0_4 = func_800038E0_44E0();
							if (var_s3 == &D_8015EB86) {
								var_v1 = 0x32;
							} else {
								var_v1 = -0x32;
							}
							var_s2 = (var_v1 + D_80052B34->unk0 + (temp_v0_4 & 0x7F)) - 0x3F;
							var_s0 = D_80052B34->unk4;
							if (var_s0 < 0x51A4) {
								var_s0 = 0x51A4;
							}
							var_s0 = (var_s0 + (func_800038E0_44E0() & 0x7F)) - 0x3F;
							if (var_s4 == 0) {
								D_80158E78 = &D_80050A18;
							} else {
								D_80158E78 = &D_80050A74;
							}
							func_80129354_138304((s32) var_s1, 0, var_s2, func_800F9FAC_108F5C(var_s2, var_s0), var_s0);
						}
					}
					var_s3++;
					var_s1++;
					var_s4++;
					var_s6++;
				} while (var_s3 != &D_8015EB87);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011A2A0_129250.s")
#endif

// CURRENT(21919)
#ifdef NON_MATCHING
void func_8011A604_1295B4(void) {
	s32 i;
	s32 temp;
	s32 x;
	s32 z;
	s32 maxSize;
	s32 y;
	s32 rand1;
	s32 rand2;
	s32 rand3;
	f32 vecX;
	f32 vecY;
	f32 vecZ;
	f32 tempF12;
	f32 tempF0;
	f64 tempF64;
	s16 buildingId;
	s16 yTerrain;
	s16 xPos;
	s16 zPos;
	s16 localX;
	s16 localZ;
	s16 hp;
	s16 varA3;
	u32 flags;
	u32 gameTick;
	u8 *activeEntry;
	u8 entryId;
	BuildingInstance *inst;
	BuildingSpec *spec;
	Unk80148620 *foundEntry;
	u8 *model;

	func_8011A2A0_129250();
	if ((f64) D_8015EA30 != 0.0) {
		tempF12 = D_8015EA2C;
		tempF64 = (f64) tempF12;
		if (tempF64 < 1.0) {
			D_8015EA2C = tempF12 + D_8015EA30;
			tempF64 = (f64) D_8015EA2C;
		}

		if (tempF64 >= 1.0) {
			D_8015EA2C = 1.0f;
			D_8015EA30 = D_80144F80_153F30[0];
			foundEntry = func_801176B0_126660();
			if ((currentLevel == 1) && (foundEntry == &D_80148620_1575D0[4])) {
				if (D_80052544 == 0) {
					foundEntry->unk4 = (foundEntry->unk4 & 0xFF00) | 2;
				} else {
					foundEntry->unk4 = (foundEntry->unk4 & 0xFF00) | 3;
				}
			}
			if (foundEntry != NULL) {
				if (D_80052544 == 0) {
					func_80117A4C_1269FC(foundEntry);
				}
				tempF64 = (f64) D_8015EA2C;
			} else {
				tempF64 = (f64) D_8015EA2C;
			}
		}

		if (tempF64 <= 0.0) {
			D_8015EA2C = 0.0f;
			D_8015EA30 = 0.0f;
		}
	}

	if (D_8015EB78 != 0) {
		D_8015EB78 -= 1;
	}

	if ((currentLevel == 1) && (func_8000726C_7E6C((u64) 0x1A) != 0) && (func_8000726C_7E6C((u64) 0x19) != 0) &&
		(func_8000726C_7E6C((u64) 0x17) == 0)) {
		func_802D4CD0_18D7E0(0x16, 0);
		func_800072CC_7ECC((u64) 0x17);
	}

	activeEntry = &D_8015EA60[0];
	for (i = 0; i < 0xFF; i++, activeEntry++) {
		entryId = *activeEntry;
		inst = &buildingInstances[entryId];
		flags = (u32) inst->unk8 >> 12;
		if (!(flags & 1)) {
			continue;
		}

		spec = &buildingSpecs[inst->buildingType];
		if (flags & 0x8000) {
			buildingId = entryId & 0xFF;
			if (!(flags & 0x10000) && (func_80117464_126414(buildingId & 0xFF) != 0)) {
				func_800AD240_BC1F0(buildingId & 0xFF);
				flags = (u32) inst->unk8 >> 12;
				inst->unk8 ^= ((flags ^ (flags & 0xFFFF7FFF)) << 12);
			}
		}

		if (inst->state >= 2) {
			inst->state--;
			if (inst->hitPoints <= 0) {
				xPos = inst->xCoord;
				zPos = inst->zCoord;
				x = xPos;
				z = zPos;
				yTerrain = func_800B84D0_C7480(xPos, zPos) >> 8;
				maxSize = spec->unk12;
				if (maxSize < spec->unk10) {
					maxSize = spec->unk10;
				}

				inst->yCoord += (s16) (((inst->yCoord - yTerrain) - spec->unk14) / inst->state);

				vecY = 0.0f;
				vecX = (f32) (x / 4) - D_80047954;
				vecZ = (f32) (z / 4) - D_8004795C;
				guNormalize(&vecX, &vecY, &vecZ);

				tempF0 = (f32) maxSize;
				vecX *= tempF0;
				vecZ *= tempF0;

				gameTick = D_80052A8C;
				if (!(gameTick & 7)) {
					func_800DEA08_ED9B8(xPos, yTerrain, zPos, maxSize * 2, 0x14, 0, 0x28, 0xC8, 0x88, 0x67, 0x11);
				}
				if (!(gameTick & 3)) {
					func_80135D44_144CF4(x, yTerrain, z, 3.0f);
				}
				if (!(gameTick & 1)) {
					y = yTerrain;
					func_800C541C_D43CC(xPos, yTerrain, zPos, 0, 0x7F, 0, 0xC8, 0xFF, 0x50, 0x14, 0x6A, 0x53, 0);
					func_800C541C_D43CC(xPos, y, zPos, 0, -0x7F, 0, 0xC8, 0xFF, 0x50, 0x14, 0xFF, 0xFF, 0);
				}
			}
		} else {
			hp = inst->hitPoints;
			if (hp <= 0) {
				func_8011D030_12BFE0(entryId & 0xFF);
				if (D_80052ACA != 2) {
					if ((((u32) inst->unk8 >> 12) & 4) == 0) {
						D_80048174++;
					}
					D_80048176++;
					func_800AE190_BD140(inst->unk7);
				}

				if ((((u32) buildingInstances[*activeEntry].unk8 >> 12) & 1) && (i < 0xFE)) {
					u8 *cursor;

					for (cursor = &D_8015EA60[i]; cursor < &D_8015EA60[0xFE]; cursor++) {
						*cursor = cursor[1];
						if ((((u32) buildingInstances[*cursor].unk8 >> 12) & 1) == 0) {
							break;
						}
					}
				}

				if (inst->unk11 != -1) {
					D_80146688_155638[currentLevel - 1][inst->unk11].unk0A -= inst->unk7;
				}

				flags = (u32) inst->unk8 >> 12;
				inst->unk7 = 0;
				inst->unk8 ^= ((flags ^ (flags & ~1)) << 12);
				i--;
				activeEntry--;
				inst->yCoord = (s16) (func_800B84D0_C7480(inst->xCoord, inst->zCoord) >> 8);

				model = *(u8 **) spec;
				if (currentLevel == 3) {
					if (model == D_B00D230) {
						func_8012D84C_13C7FC(currentLevel);
					}
				} else if (currentLevel == 4) {
					if (model == D_C012598) {
						func_8012D84C_13C7FC(currentLevel);
					}
				} else if (currentLevel == 5) {
					if (model == D_D011660) {
						func_800A8A68_B7A18(inst->xCoord, inst->yCoord, inst->zCoord, 0x1A);
					} else if (model == D_D00C4B8) {
						func_800A8A68_B7A18(inst->xCoord, inst->yCoord, inst->zCoord, 0x16);
					} else if (model == D_D00AB08) {
						func_800A8A68_B7A18(inst->xCoord, inst->yCoord, inst->zCoord, 0x18);
					} else if (model == D_D012098) {
						func_800A8A68_B7A18(inst->xCoord, inst->yCoord, inst->zCoord, 0x16);
						func_800A8A68_B7A18(inst->xCoord, inst->yCoord, inst->zCoord, 0x1A);
					} else if (model == D_D0091C8) {
						func_800A8A68_B7A18(inst->xCoord, inst->yCoord, inst->zCoord, 0x16);
					} else if (model == D_D015C38) {
						func_800A8A68_B7A18(inst->xCoord, inst->yCoord, inst->zCoord, 0x17);
					} else if (model == D_D00CF28) {
						func_800A8A68_B7A18(inst->xCoord, inst->yCoord, inst->zCoord, 0x1A);
					} else if (model == D_D009D48) {
						func_800A8A68_B7A18(inst->xCoord, inst->yCoord, inst->zCoord, 0x18);
					} else if (model == D_D010EB0) {
						func_800A8A68_B7A18(inst->xCoord, inst->yCoord, inst->zCoord, 0x10);
					}
				}
			} else {
				flags = (u32) inst->unk8 >> 12;
				if (flags & 4) {
					buildingId = entryId & 0xFF;
					if (!(flags & 0x10) && (hp < ((s8) spec->pad16[3] >> 2))) {
						inst->unk8 ^= (((flags ^ (flags | 0x210)) << 12));
						if ((currentLevel < 5) && ((currentLevel != 4) || (inst->buildingType != 4)) &&
							((currentLevel != 3) || (inst->buildingType != 2))) {
							func_800D249C_E144C(inst->xCoord, (s16) (s32) ((f64) inst->yCoord + ((f64) spec->unk14 * D_80144F88_153F38[0])),
												 inst->zCoord, 0xC8, 0x55, 0x55, (s32) entryId, 0);
						}
					}

					if ((func_80117464_126414(buildingId & 0xFF) != 0) && !(((i * 7) + D_80052A8C) & 0x1F)) {
						rand1 = func_800038E0_44E0() & 0xFFFF;
						rand2 = func_800038E0_44E0() & 0xFFFF;
						rand3 = func_800038E0_44E0() & 0xFFFF;
						func_800DEA08_ED9B8((s16) (((rand1 >> 9) + inst->xCoord) - 0x40),
											 (s16) ((inst->yCoord + spec->unk14) - (rand2 >> 9)),
											 (s16) (((rand3 >> 9) + inst->zCoord) - 0x40),
											 (s16) ((s32) (func_800038E0_44E0() + 0xFA) >> 9),
											 8,
											 8,
											 0x32,
											 0xC8,
											 0xA0,
											 0xA0,
											 0xA0);
					}

					if ((((u32) inst->unk8 >> 12) & 0x200) && (((u32) (entryId + D_80052A8C) % 80U) == 0)) {
						inst->state = 0;
						func_8011BEA0_12AE50(buildingId & 0xFF, 1);
					}
				} else if (hp < ((s8) spec->pad16[3] >> 1)) {
					inst->unk8 ^= (((flags ^ (flags | 0x24)) << 12));
					if (D_80052ACA != 2) {
						D_80048174++;
					}
				}
			}
		}

		if (inst->state == 1) {
			inst->state = 0;
		}

		if ((((u32) inst->unk8 >> 12) & 0x20) && (inst->unk7 != 0) && (((u32) D_80052A8C % 12U) == 0)) {
			func_800AD3BC_BC36C(entryId & 0xFF);
		}

		model = *(u8 **) spec;
		if ((currentLevel == 3) && (model == D_B007F80)) {
			xPos = inst->xCoord;
			zPos = inst->zCoord;
			temp = D_80052B34->unk0 - xPos;
			y = D_80052B34->unk4 - zPos;
			if ((temp * temp) + (y * y) < 0x3D0900) {
				func_801371B8_146168(inst, 0x32, xPos, inst->yCoord, zPos, D_80144F90_153F40[0]);
			}
		} else if ((currentLevel == 1) && (model == D_90193F8) && (func_8000726C_7E6C((u64) 0x13) == 0)) {
			xPos = inst->xCoord;
			zPos = inst->zCoord;
			temp = D_80052B34->unk0 - xPos;
			y = D_80052B34->unk4 - zPos;
			if ((temp * temp) + (y * y) < 0x3D0900) {
				func_801371B8_146168(inst, 0x175, xPos, inst->yCoord, zPos, D_80144F94_153F44[0]);
			}
		} else if (((currentLevel == 2) && (model == D_A01E340)) || ((currentLevel == 4) && (model == D_C014920)) ||
				   ((currentLevel == 5) && (model == D_D010EB0))) {
			xPos = inst->xCoord;
			zPos = inst->zCoord;
			temp = D_80052B34->unk0 - xPos;
			y = D_80052B34->unk4 - zPos;
			if ((temp * temp) + (y * y) < 0x3D0900) {
				func_801371B8_146168(inst, 0x17F, xPos, inst->yCoord, zPos, D_80144F98_153F48[0]);
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011A604_1295B4.s")
#endif

void func_8011B3F0_12A3A0(s16 arg0, s16 *arg1, s16 *arg2, s16 *arg3) {
	s16 sp26;
	s32 flag;

	flag = 0;
	if (func_80118114_1270C4(arg0) != 0) {
		flag = 1;
	}
	func_801165FC_1255AC((u8) arg0, (u8) flag, arg1, arg2, arg3, &sp26);
}

s32 func_8011B454_12A404(s32 arg0, s16 *arg1, s16 *arg2, s16 *arg3) {
	s16 sp2E;
	s32 var_v1;
	s32 sp28;
	s32 temp;

	sp28 = 0;
	var_v1 = sp28;
	if (func_80118114_1270C4(arg0) != 0) {
		var_v1 = 1;
	}
	if (func_801165FC_1255AC((u8) arg0, (u8) var_v1, arg1, arg2, arg3, &sp2E) == 0) {
		return 0;
	}
	temp = sins(sp2E);
	*arg1 = (s16) (s32) ((f64) *arg1 + (-50.0 * ((f64) (f32) temp / 32768.0)));
	temp = coss(sp2E);
	*arg3 = (s16) (s32) ((f64) *arg3 + (-50.0 * ((f64) (f32) temp / 32768.0)));
	return 1;
}

s32 func_8011B584_12A534(s32 arg0, s32 arg1) {
	if (!((buildingInstances[arg0].unk8 >> 12) & 1) || alienInstances[arg1].unk38 == 0xFF) {
		return 0;
	}
	if (alienInstances[arg1].unk24 == 1) {
		func_800765C4_85574(alienInstances[arg1].unk3F);
		func_80079910_888C0(arg1);
		return 0;
	}
	if (buildingInstances[arg0].unk7 < buildingSpecs[buildingInstances[arg0].buildingType].pad16[2]) {
		func_80079910_888C0(arg1);
		buildingInstances[arg0].unk7++;
		if (buildingInstances[arg0].unk11 == -1) {
			D_8015EA18++;
		} else {
			D_80146688_155638[currentLevel - 1][buildingInstances[arg0].unk11].unk0A++;
		}
		return 1;
	}
	return 0;
}

// CURRENT(22351)
#ifdef NON_MATCHING
s32 func_8011B6C0_12A670(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u16 arg4) {
	s8 candidates[8];
	s16 xPos;
	s16 zPos;
	s16 bestDist;
	u16 mask;
	u16 rejectMask;
	u8 count;
	s32 hi;
	s32 lo;

	xPos = arg0 >> 8;
	zPos = arg1 >> 8;
	bestDist = arg2;
	mask = arg3;
	rejectMask = arg4;
	count = 0;
	hi = func_80117508_1264B8((s16)(zPos << 8));
	lo = hi;

	if ((hi == 0xFE) ||
		((((buildingInstances[(u8)hi].zCoord >> 8) - zPos) >= bestDist) &&
		 ((zPos - (buildingInstances[(u8)hi].zCoord >> 8)) >= bestDist))) {
		return -1;
	}

	for (;;) {
		s16 dzHi;
		s16 dzLo;
		s16 dist;

		hi++;
		lo--;

		if (hi == 0xFF) {
			hi--;
		} else {
			u32 flags = buildingInstances[(u8)hi].unk8 >> 12;
			if ((flags & mask) && !(flags & rejectMask)) {
				s16 dx = (buildingInstances[(u8)hi].xCoord >> 8) - xPos;
				s16 dz = (buildingInstances[(u8)hi].zCoord >> 8) - zPos;
				s16 absDx = (dx < 0) ? -dx : dx;
				s16 absDz = (dz < 0) ? -dz : dz;

				dist = (absDz < absDx) ? absDx : absDz;
				if (dist > 0) {
					if (dist < (bestDist - 1)) {
						count = 0;
					}
					if (((bestDist + 1) >= dist) && (count != 8)) {
						candidates[count] = hi;
						count = (u8)(count + 1);
						bestDist = dist;
					}
				}
			}
		}

		if (lo == -1) {
			lo++;
		} else {
			u32 flags = buildingInstances[(u8)lo].unk8 >> 12;
			if ((flags & mask) && !(flags & rejectMask)) {
				s16 dx = (buildingInstances[(u8)lo].xCoord >> 8) - xPos;
				s16 dz = zPos - (buildingInstances[(u8)lo].zCoord >> 8);
				s16 absDx = (dx < 0) ? -dx : dx;
				s16 absDz = (dz < 0) ? -dz : dz;

				dist = (absDz < absDx) ? absDx : absDz;
				if (dist != 0) {
					if (dist < (bestDist - 1)) {
						count = 0;
					}
					if (((bestDist + 1) >= dist) && (count != 8)) {
						candidates[count] = lo;
						count = (u8)(count + 1);
						bestDist = dist;
					}
				}
			}
		}

		dzHi = (buildingInstances[(u8)hi].zCoord >> 8) - zPos;
		dzLo = zPos - (buildingInstances[(u8)lo].zCoord >> 8);
		if (!((dzHi < bestDist) || (dzLo < bestDist))) {
			break;
		}
		if ((hi == 0xFE) && (lo == 0)) {
			break;
		}
	}

	if (count == 0) {
		return -1;
	}

	return candidates[(u32)D_80052A8C % count];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011B6C0_12A670.s")
#endif

// CURRENT(4000)
#ifdef NON_MATCHING
void func_8011BA80_12AA30(u8 arg0, s16 arg1) {
	BuildingInstance *building;
	BuildingInstance *end;
	s16 minX;
	s16 minZ;
	s16 maxX;
	s16 maxZ;

	building = &buildingInstances[func_80117508_1264B8((s16)(buildingInstances[arg0].zCoord - arg1))];
	end = &buildingInstances[ARRAY_COUNT(buildingInstances)];
	minX = buildingInstances[arg0].xCoord - arg1;
	minZ = buildingInstances[arg0].zCoord - arg1;
	maxX = minX + (arg1 << 1);
	maxZ = minZ + (arg1 << 1);

	if ((building < end) && (building->zCoord < maxZ)) {
		while (TRUE) {
			if (((building->unk8 >> 12) & 1) && (building->xCoord >= minX) && (building->xCoord < maxX)) {
				building->unk8 ^= 0x10000000;
			}

			building++;
			if ((building >= end) || (building->zCoord >= maxZ)) {
				break;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011BA80_12AA30.s")
#endif

// draw explosion etc when building is damaged/destroyed
#ifdef NON_MATCHING
// CURRENT(6030)
void func_8011BB94_12AB44(s32 arg0, s32 arg1) {
	BuildingInstance *building;
	BuildingSpec *spec;
	u32 flags;
	s32 radius;
	s32 x;
	s32 y;
	s32 z;
	s32 temp;
	u32 *srcWords;
	u32 unkSp6C[3];

	srcWords = (u32 *)D_80140AA4_14FA54;
	unkSp6C[0] = srcWords[0];
	unkSp6C[1] = srcWords[1];
	unkSp6C[2] = srcWords[2];

	building = &buildingInstances[arg0];
	spec = &buildingSpecs[building->buildingType];

	radius = (s32)sqrtf((f32)((spec->unk12 * spec->unk12) + (spec->unk10 * spec->unk10)));
	x = building->xCoord;
	z = building->zCoord;
	y = (func_800B84D0_C7480((s16)x, (s16)z) >> 8) + 0x32;

	temp = (s8)spec->pad16[3];
	temp = temp / 2;
	if (((s8)building->unk10 >= temp) && ((s8)building->hitPoints < temp)) {
		building->padC[0] = 0xA;
		if (func_80117464_126414((u8)arg0) != 0) {
			if (radius < 0x82) {
				radius = 0x82;
			}

			temp = func_800038E0_44E0() % 4;
			if ((temp < 0) && ((temp & 3) != 0)) {
				temp -= 4;
			}
			func_800DF038_EDFE8((s16)x, (s16)y, (s16)z, radius, temp + 4, 0);
			func_80135D44(x, y, z, 3.0f);
		}
	}

	if ((s8)building->hitPoints <= 0) {
		flags = (u32)(building->unk8 >> 12);
		if ((flags & 0x1000) && (arg1 == 0)) {
			building->hitPoints = 1;
			return;
		}

		if (flags & 0x10) {
			func_800D3614_E25C4((u8)arg0);
		}

		building->padC[0] = 0x23;
		if (func_80117464_126414((u8)arg0) != 0) {
			if (radius < 0xA0) {
				radius = 0xA0;
			}

			func_800DF038_EDFE8((s16)x, (s16)y, (s16)z, radius, 0xC, 0);
			func_800DEE5C_EDE0C((s16)x, (s16)(y + 0xA), (s16)z, 0x78, 0x10);
			func_80135D44(x, y, z, 3.0f);

			if (func_800B325C_C220C((s8)(x >> 8), (s8)(z >> 8), 0x1000) == 0) {
				func_800DEA08_ED9B8((s16)x, (s16)y, (s16)z, radius * 2, 5, 0, 0x64, 0xFF, 0, 0, 0);
				func_800B8D80_C7D30((s16)x, (s16)z, (s16)(radius >> 8), 0);
			}
		}
	}

	return;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011BB94_12AB44.s")
#endif

// CURRENT(500)
#ifdef NON_MATCHING
s32 func_8011BEA0_12AE50(s32 arg0, s32 arg1) {
	s32 buildingId;
	BuildingInstance* building;
	s8 hitPoints;

	buildingId = arg0 & 0xFF;
	building = &buildingInstances[buildingId];
	if (building->padC[0] != 0) {
		return 0;
	}

	if (((*(u32*)&building->isDestroyable >> 12) & 0x1000) != 0) {
		return 0;
	}

	if (arg1 <= 0) {
		return 0;
	}

	hitPoints = (s8) building->hitPoints;
	building->unk10 = hitPoints;
	if (hitPoints > 0) {
		if (arg1 < hitPoints) {
			building->hitPoints = hitPoints - arg1;
		} else {
			building->hitPoints = 0;
		}
	}

	func_8011BB94_12AB44(buildingId, 1);

	if ((s8) building->hitPoints <= 0) {
		if (D_8015EA29 == building->buildingType) {
			D_80052AC8 = 0;
			D_80052AD0 = 0;
		}
	}

	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011BEA0_12AE50.s")
#endif

// CURRENT(55)
#ifdef NON_MATCHING
void func_8011BF7C_12AF2C(u8 arg0) {
	BuildingInstance *inst = &buildingInstances[arg0];
	BuildingSpec *spec = &buildingSpecs[inst->buildingType];

	if ((s8)inst->hitPoints <= 0) {
		return;
	}
	if (!((inst->unk8 >> 12) & 1)) {
		return;
	}
	if ((inst->unk8 >> 12) & 0x10) {
		return;
	}
	func_800D249C_E144C(
		inst->xCoord,
		(s16)(s32)((f64)inst->yCoord + (f64)spec->unk14 * D_80144FA0_153F50[0]),
		inst->zCoord,
		0xC8,
		0x55,
		0x55,
		(s32)arg0,
		0
	);
	inst->hitPoints = 1;
	inst->unk8 = (((inst->unk8 >> 12 | 0x10) ^ (inst->unk8 >> 12)) << 12) ^ inst->unk8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011BF7C_12AF2C.s")
#endif

void func_8011C080_12B030(u8 arg0)
{
	buildingInstances[arg0].hitPoints = 0;
	buildingInstances[arg0].unk10 = 0;
	func_8011BB94_12AB44(arg0, 1);
}

#ifdef NON_MATCHING
// CURRENT(4954)
s32 func_8011C0CC_12B07C(s32 arg0, s16 arg1, s16 arg2, s16 arg3) {
	BuildingInstance *building;
	BuildingSpec *spec;
	s32 halfX;
	s32 halfZ;
	s32 x;
	s32 z;
	s32 minX;
	s32 minZ;
	s32 maxX;
	s32 maxZ;
	s32 points[8];
	s32 i;
	s32 radiusSq;
	s32 *corner;
	s32 cornerX;
	s32 cornerZ;

	building = &buildingInstances[arg0];
	spec = &buildingSpecs[building->buildingType];

	if (building->unk8 & 1) {
		halfX = spec->unk12;
		halfZ = spec->unk10;
	} else {
		halfX = spec->unk10;
		halfZ = spec->unk12;
	}

	x = building->xCoord;
	z = building->zCoord;
	minX = x - halfX;
	minZ = z - halfZ;
	maxX = x + halfX;
	maxZ = z + halfZ;

	points[0] = maxX;
	points[1] = maxZ;
	points[2] = minX;
	points[3] = maxZ;
	points[4] = maxX;
	points[5] = minZ;
	points[6] = minX;
	points[7] = minZ;

	radiusSq = (arg3 * arg3) >> 4;
	i = 4;
	corner = &points[6];
	do {
		cornerX = (corner[0] - arg1) >> 2;
		cornerZ = (corner[1] - arg2) >> 2;

		if (((cornerX * cornerX) + (cornerZ * cornerZ)) < radiusSq) {
			return 1;
		}

		corner -= 2;
	} while (i-- != 0);

	if ((x - arg1) < halfX) {
		if ((z - arg2) < (halfZ + arg3)) {
			return 1;
		}
	}

	if ((z - arg2) < halfZ) {
		if ((x - arg1) < (halfX + arg3)) {
			return 1;
		}
	}

	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C0CC_12B07C.s")
#endif

// CURRENT(40)
#ifdef NON_MATCHING
s32 func_8011C25C_12B20C(s8 *arg0, s32 arg1) {
	s16 sp1E;
	s16 sp1A;
	s16 sp1C;
	s16 xCoord;
	BuildingInstance *building;
	s32 index;

	sp1A = arg0[1] << 8;
	sp1C = arg0[2] << 8;
	sp1E = arg0[0] << 8;

	index = func_80117508_1264B8((s16)(sp1A - sp1C)) - 1;
	arg1++;
	while (TRUE) {
		if (arg1 == 0) {
			return index;
		}

		index++;
		building = &buildingInstances[index];
		xCoord = building->xCoord;

		if ((xCoord >= (sp1E - sp1C)) && (xCoord < (sp1E + sp1C))) {
			arg1--;
		}

		if (index < 0xFF) {
			if (building->zCoord < (sp1A + sp1C)) {
				continue;
			}
		}
		return -1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C25C_12B20C.s")
#endif

#ifdef NON_MATCHING
s32 func_8011C338_12B2E8(s8 *arg0, s32 arg1) {
	s32 sp34;
	s32 sp30;
	s32 sp2C;
	s32 sp28;
	s32 sp24;
	s32 sp20;
	s32 index;
	s32 origIndex;
	s32 flag;
	BuildingInstance *building;
	s16 xCoord;

	sp30 = arg0[1] << 8;
	sp2C = arg0[2] << 8;
	sp34 = arg0[0] << 8;
	sp20 = 0;
	index = func_80117508_1264B8((s16)(sp30 - sp2C));
	sp28 = arg0[0] << 8;
	sp24 = arg0[1] << 8;
	origIndex = index;
	flag = sp20;
	building = &buildingInstances[index];
	xCoord = building->xCoord;

	while (TRUE) {
		if ((xCoord >= (sp34 - sp2C)) && (xCoord < (sp34 + sp2C)) && flag) {
			return index;
		}
		if (index == arg1) {
			flag = 1;
		}
		index++;
		building++;
		if (index >= 0xFF) {
			return origIndex;
		}
		if (building->zCoord >= (sp30 + sp2C)) {
			return origIndex;
		}
		xCoord = building->xCoord;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C338_12B2E8.s")
#endif

s32 func_8011C42C_12B3DC(s32 arg0) {
	s32 temp_v0;
	s32 temp_v0_2;
	s32 var_s0;
	s32 var_s1;
	s32 var_s2;

	var_s0 = 0;
	var_s2 = 0;
	temp_v0 = func_8011C25C_12B20C(arg0, 0);
	var_s1 = temp_v0;
	if (temp_v0 != -1) {
		do {
			var_s0 += 1;
			var_s2 += buildingInstances[var_s1].unk7;
			temp_v0_2 = func_8011C25C_12B20C(arg0, var_s0);
			var_s1 = temp_v0_2;
		} while (temp_v0_2 != -1);
	}
	return var_s2;
}

s32 func_8011C4D4_12B484(void) {
	s32 i;
	s32 count;

	count = 0;
	for (i = 0; i < 0xFF; i++) {
		if (buildingInstances[i].unk11 == -1) {
			count += buildingInstances[i].unk7;
		}
	}
	return count;
}

#ifdef NON_MATCHING
s32 func_8011C594_12B544(u8 arg0) {
	s32 var_v1;
	s8 count;
	Unk80146688 *var_a0;
	s16 temp_v0;
	s16 temp_a2;
	s16 temp_t5;
	s16 temp_t1;
	s16 temp_v0_2;

	count = D_8014667F_15562F[currentLevel];
	var_v1 = 0;
	if (count > 0) {
		var_a0 = &D_80146688_155638[currentLevel][0];
loop:
		if (var_a0[-0x20].unk3 == 0) {
			temp_v0 = var_a0[-0x20].unk0 << 8;
			temp_a2 = var_a0[-0x20].unk1 << 8;
			temp_t1 = buildingInstances[arg0].xCoord;
			temp_t5 = var_a0[-0x20].unk2 << 8;
			if (temp_t1 >= (temp_v0 - temp_t5) && temp_t1 < (temp_v0 + temp_t5)) {
				temp_v0_2 = buildingInstances[arg0].zCoord;
				if (temp_v0_2 >= (temp_a2 - temp_t5) && temp_v0_2 < (temp_a2 + temp_t5)) {
					return var_v1;
				}
			}
		}
		var_v1++;
		var_a0++;
		if (var_v1 < count) {
			goto loop;
		}
	}
	return -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C594_12B544.s")
#endif

void func_8011C680_12B630(u8 arg0, s8 arg1) {
	alienInstances[arg0].unk3D = arg1;
}

#ifdef NON_MATCHING
void func_8011C6A8_12B658(u8 arg0) {
	AlienInstance *alien;
	s32 index;
	s16 *ptr;
	s8 unk3D;
	s32 temp_unk20;

	alien = &alienInstances[arg0];
	unk3D = alien->unk3D;
	index = unk3D * 16;
	ptr = (s16 *)(D_80146688 + (currentLevel * 512 + index - 512));

	if (alien->unk24 != 1) {
		if (index != -16) {
			ptr[5]--;
			if ((alien->unk20 << 11) < 0) {
				if (ptr[6] != 0) {
					ptr[6]--;
				}
			}
		} else {
			temp_unk20 = alien->unk20;
			D_8015EA18--;
			if ((temp_unk20 << 11) < 0) {
				D_8015EA1C--;
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C6A8_12B658.s")
#endif

// CURRENT(1298)
#ifdef NON_MATCHING
void func_8011C770_12B720(s32 arg0, s32 arg1) {
	Unk80146688 *zone;

	zone = &D_80146688_155638[currentLevel - 1][arg0];
	{
		BuildingInstance *building;
		s32 buildingIndex;
		s32 count;

		count = 0;
		buildingIndex = func_8011C25C_12B20C((s8 *) zone, 0);
		if (buildingIndex != -1) {
			do {
				building = &buildingInstances[buildingIndex];
				building->padC[2] = arg1;
				building->unk8 ^= ((((u32) building->unk8 >> 12) | 0x20) ^ ((u32) building->unk8 >> 12)) << 12;
				count++;
			} while ((buildingIndex = func_8011C25C_12B20C((s8 *) zone, count)) != -1);
		}
	}

	if (D_8014D507 > 0) {
		u8 *alienIds;
		u8 *alienIdsEnd;
		u8 alienId;

		alienIds = D_8014D408;
		alienIdsEnd = alienIds + D_8014D507;
		alienId = *alienIds;
		do {
			alienIds++;
			if (arg0 == alienInstances[alienId].unk3D) {
				alienInstances[alienId].unk12 = 0xA0;
				alienInstances[alienId].unk38 = arg1;
				alienInstances[alienId].unk20 &= -0x41E1;
				alienInstances[alienId].unk20 |= 0x80;
			}
		} while ((alienIds < alienIdsEnd) && (alienId = *alienIds, 1));
	}

	D_8015EA20 = zone->unk0A;
	D_8015EA24 = zone->unk0A;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C770_12B720.s")
#endif

// CURRENT(135)
#ifdef NON_MATCHING
void func_8011C8E8_12B898(s32 arg0, s32 arg1) {
	s32 var_s2;
	AlienInstance *alien;
	u8 *var_s1;

	var_s2 = 0;
	if ((s32)D_8014D507 > 0) {
		var_s1 = D_8014D408;
		do {
			alien = &alienInstances[*var_s1];
			if (arg0 == alien->unk3D) {
				alien->unk38 = arg1;
				func_8011B3F0_12A3A0(alien->unk38, &alien->unk14, &alien->unk16, &alien->unk18);
				alien->unk20 &= ~0x1E0;
				alien->unk12 = 0xA0;
				alien->unk20 |= 0x1100;
			}
			var_s2 += 1;
			var_s1 += 1;
		} while (var_s2 < (s32)D_8014D507);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C8E8_12B898.s")
#endif

// CURRENT(1476)
#ifdef NON_MATCHING
void func_8011C9D8_12B988(s32 arg0, s32 arg1, ...) {
	s32 assignedTargets[8];
	s32 i;
	va_list args;
	AlienInstance *alien;
	u8 *alienIdPtr;

	i = 0;
	if (arg1 > 0) {
		args = (va_list)(&arg1 + 1);
		for (i = 0; i < arg1; i++) {
			assignedTargets[i] = *(s32 *)args;
			args = (va_list)((u32)args + sizeof(s32));
		}
		i = 0;
	}

	if ((s32) D_8014D507 > 0) {
		alienIdPtr = D_8014D408;
		do {
			alien = &alienInstances[*alienIdPtr];
			if (arg0 == alien->unk3D) {
				alien->unk38 = assignedTargets[i % arg1];
				func_8011B3F0_12A3A0(alien->unk38, &alien->unk14, &alien->unk16, &alien->unk18);
				alien->unk12 = 0xA0;
				alien->unk20 &= -0x1E1;
				alien->unk20 |= 0x1100;
			}
			i++;
			alienIdPtr++;
		} while (i < (s32) D_8014D507);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C9D8_12B988.s")
#endif

s32 func_8011CBD8_12BB88(u8 arg0, u8 arg1) {
	return (s32) ((arg0 * 0x4BAD) + (arg1 * 0xD)) % 6500;
}

s32 func_8011CC20_12BBD0(u16 arg0, u8 arg1) {
	return ((arg0 << 8) + arg1) & 0xFFFF;
}

void func_8011CC40_12BBF0(u8 arg0, u8 arg1, u8 arg2) {
	u16 hashValues[3];
	s32 step;
	u32 slot;
	u8 *slotValue;

	slot = func_8011CBD8_12BB88(arg0, arg1);
	hashValues[1] = func_8011CC20_12BBD0(arg0, arg1);
	step = 0x17;
	*(s32 *) D_80140A00_14F9B0 = 0;

	while (1) {
		slotValue = &D_8015D0B0[slot];
		if (*slotValue == 0xFF) {
			*slotValue = arg2;
			D_80159DE8[slot] = hashValues[1];
			func_800B316C_C211C((s8) arg0, (s8) arg1, 0x800, 1);
			return;
		}

		slot = (step + slot) % 6500;
		step++;
		(*(s32 *) D_80140A00_14F9B0)++;

		if (*(s32 *) D_80140A00_14F9B0 >= 0x11) {
			D_8015EA58++;
			if ((u16) D_8015EA58 < 0x10) {
				osSyncPrintf(D_80144E84_153E34);
			} else {
				osSyncPrintf(D_80144EAC_153E5C);
				while (1) {
				}
			}
		}
	}
}

// CURRENT(8544)
#ifdef NON_MATCHING
void func_8011CDA4_12BD54(void) {
	BuildingInstance *inst;
	BuildingSpec *spec;
	s16 xHalfSize;
	s16 zHalfSize;
	s16 xCell;
	s16 zCell;
	s16 xMin;
	s16 xMax;
	s16 zMin;
	s16 zMax;
	s32 i;
	u32 flags;
	u8 trailType;

	for (i = 6499; i >= 0; i--) {
		D_80159DE8[i] = 0xFFFF;
		D_8015D0B0[i] = 0xFF;
	}

	inst = &buildingInstances[0xFE];
	for (i = 0xFE; i >= 0; i--) {
		flags = inst->unk8;
		if (((flags >> 12) & 1) == 0) {
			inst--;
			continue;
		}

		spec = &buildingSpecs[inst->buildingType];
		if (flags & 1) {
			xHalfSize = spec->unk12;
			zHalfSize = spec->unk10;
		} else {
			xHalfSize = spec->unk10;
			zHalfSize = spec->unk12;
		}

		if (inst->buildingType == 0x1F) {
			func_8011CC40_12BBF0((u8)(inst->xCoord >> 8), (u8)(inst->zCoord >> 8), trailType);
			inst->unk8 = ((((inst->unk8 >> 12) | 0x1000) ^ (inst->unk8 >> 12)) << 12) ^ inst->unk8;
			inst--;
			continue;
		}

		if (D_8015EA28 == inst->buildingType) {
			func_8011CC40_12BBF0((u8)(inst->xCoord >> 8), (u8)(inst->zCoord >> 8), trailType);
			inst--;
			continue;
		}

		xMin = (inst->xCoord - xHalfSize) >> 8;
		xMax = ((inst->xCoord + xHalfSize) - 1) >> 8;
		for (xCell = xMin; xCell <= xMax; xCell++) {
			zMin = (inst->zCoord - zHalfSize) >> 8;
			zMax = ((inst->zCoord + zHalfSize) - 1) >> 8;
			for (zCell = zMin; zCell <= zMax; zCell++) {
				if (func_8011D260_12C210((s8)xCell, (s8)zCell) != -1) {
					inst->hitPoints = 0;
				}
				func_8011CC40_12BBF0((u8)xCell, (u8)zCell, trailType);
			}
		}

		inst--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011CDA4_12BD54.s")
#endif

#ifdef NON_MATCHING
// CURRENT(200)
void func_8011D030_12BFE0(u8 arg0) {
	BuildingInstance *inst;
	u8 buildingType;
	s16 xHalfSize;
	s16 zHalfSize;
	s32 xMax;
	s32 zMax;
	s32 xCell;
	s32 zCell;

	inst = &buildingInstances[arg0];
	buildingType = inst->buildingType;

	if (inst->unk8 & 1) {
		xHalfSize = buildingSpecs[buildingType].unk12;
		zHalfSize = buildingSpecs[buildingType].unk10;
	} else {
		xHalfSize = buildingSpecs[buildingType].unk10;
		zHalfSize = buildingSpecs[buildingType].unk12;
	}

	xMax = ((inst->xCoord + xHalfSize) - 1) >> 8;
	xCell = (inst->xCoord - xHalfSize) >> 8;
	if (xMax >= xCell) {
		zMax = ((inst->zCoord + zHalfSize) - 1) >> 8;
		do {
			zCell = (inst->zCoord - zHalfSize) >> 8;
			if (zMax >= zCell) {
				do {
					func_800B316C_C211C((s8)xCell, (s8)zCell, 0x800, 0);
					zCell++;
					zMax = ((inst->zCoord + zHalfSize) - 1) >> 8;
				} while (zMax >= zCell);
				xMax = ((inst->xCoord + xHalfSize) - 1) >> 8;
			}
			xCell++;
		} while (xMax >= xCell);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011D030_12BFE0.s")
#endif

// CURRENT(930)
#ifdef NON_MATCHING
s32 func_8011D19C_12C14C(s8 arg0, s8 arg1) {
	u16 sp2C;
	u8 sp20;
	u8 sp1C;
	u32 var_v1;
	u32 var_a0;
	u8 temp_a1;
	u8 emptyMarker;

	sp20 = arg0 & 0xFF;
	sp1C = arg1 & 0xFF;
	sp2C = func_8011CC20_12BBD0(sp20, sp1C);
	var_v1 = func_8011CBD8_12BB88(sp20, sp1C);
	var_a0 = 0x17;
	emptyMarker = 0xFF;
	
	while (1) {
		temp_a1 = D_8015D0B0[var_v1];
		if (emptyMarker == temp_a1) {
			return -1;
		}
		if (sp2C == D_80159DE8[var_v1]) {
			return temp_a1;
		}
		var_v1 = (var_a0 + var_v1) % 6500;
		var_a0++;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011D19C_12C14C.s")
#endif

s32 func_8011D260_12C210(s8 arg0, s8 arg1) {
	s32 temp_v0;

	temp_v0 = func_8011D19C_12C14C(arg0, arg1);
	if (temp_v0 == -1) {
		return -1;
	}

	if (((buildingInstances[temp_v0].unk8 >> 12) & 1) == 0) {
		return -1;
	}

	return temp_v0;
}

s32 func_8011D2DC_12C28C(s16 arg0, s16 arg1)
{
	s32 index;
	BuildingInstance *inst;
	BuildingSpec *spec;
	index = func_8011D260_12C210((s8)(arg0 >> 8), (s8)(arg1 >> 8));
	if (index == (-1))
	{
		return -1;
	}
	inst = &buildingInstances[index];
	if (inst->buildingType == 0x1F)
	{
		return index;
	}
	spec = &buildingSpecs[inst->buildingType];
	if ((inst->unk8 & 0xFFFF) & 1)
	{
		if ((((arg0 >= (inst->xCoord - spec->unk12)) && ((inst->xCoord + spec->unk12) >= arg0)) && (arg1 >= (inst->zCoord - spec->unk10))) && ((inst->zCoord + spec->unk10) >= arg1))
		{
			return index;
		}
	}
	else if ((((arg0 >= (inst->xCoord - spec->unk10)) && ((inst->xCoord + spec->unk10) >= arg0)) && (arg1 >= (inst->zCoord - spec->unk12))) && ((inst->zCoord + spec->unk12) >= arg1))
	{
		return index;
	}
	return -1;
}

// CURRENT(1725)
#ifdef NON_MATCHING
void func_8011D438_12C3E8(u8 arg0, s32 arg1) {
	u8 value;
	u8* ptr;
	s32 i;
	s32 count;

	value = arg0 & 0xFF;
	value += (arg1 != 0 ? 0x80 : 0);
	value &= 0xFF;
	
	count = 8;
	if (count) {
		i = 7;
		ptr = &D_8015EB67;
		do {
			if (value == *ptr) {
				return;
			}
			ptr--;
		} while (i--);
	}
	
	if (D_8015EB6E == value) {
		return;
	}
	
	count = 8;
	if (count) {
		i = 7;
		ptr = &D_8015EB77;
		do {
			if (value == *ptr) {
				return;
			}
			ptr--;
		} while (i--);
	}
	
	if (D_8015EB6A < 8) {
		(&D_8015EB70)[D_8015EB6A] = value;
		D_8015EB6A++;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011D438_12C3E8.s")
#endif

// CURRENT(?)
#ifdef NON_MATCHING
void func_8011D4FC_12C4AC(u8 arg0, u16 *arg1, s16 startIndex, s32 arg3) {
	BuildingSpec *spec;
	u32 *specWords;
	u8 value;
	u8 buildingIndex;

	value = arg0 & 0xFF;
	buildingIndex = value & 0x7F;
	if (buildingIndex >= 0x19) {
		osSyncPrintf(D_80144EC8_153E78, value);
		return;
	}

	gSPDisplayList(D_8005BB2C++, (u32)D_80031260_31E60 & 0x1FFFFFFF);
	gSPViewport(D_8005BB2C++, (u32)D_140A80);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER);
	gSPSetGeometryMode(D_8005BB2C++, G_SHADE | G_SHADING_SMOOTH);
	gDPSetScissor(D_8005BB2C++, G_SC_NON_INTERLACE, 0, 0, 64, 64);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RNX, 1);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RNY, 1);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RPX, 0xFFFF);
	gMoveWd(D_8005BB2C++, G_MW_CLIP, G_MWO_CLIP_RPY, 0xFFFF);
	gDPSetCycleType(D_8005BB2C++, G_CYC_FILL);
	gDPSetColorImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 0xFFFCFFFC);
	gDPSetFillColor(D_8005BB2C++, 0);
	gDPPipeSync(D_8005BB2C++);
	gDPFillRectangle(D_8005BB2C++, 0, 0, 63, 63);
	gDPSetDepthImage(D_8005BB2C++, (u32)D_802C2080 & 0x1FFFFFFF);
	gDPSetRenderMode(D_8005BB2C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gSPSetGeometryMode(D_8005BB2C++, 0x80008000);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);

	D_8005BB38 += 0x40;

	spec = &buildingSpecs[buildingIndex];
	specWords = (u32 *) spec;
	D_80052B40.unk0 = 0;
	D_80052B40.unk2 = 0;
	D_80052B40.unk4 = 0;
	D_80052B44 = -(s16) spec->unk14;
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0x8000;
	D_80052B48.unk4 = 0x4000;
	D_80052B50.unk0 = (s16) (s32) (((256.0 / (f64) (spec->unk10 * 2)) * 128.0));
	D_80052B50.unk2 = 0x100;
	D_80052B54 = (s16) (s32) (((256.0 / (f64) (spec->unk12 * 2)) * 128.0));
	func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);

	gSPMatrix(D_8005BB2C++, (u32)D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	guOrtho(D_8005BB38, -64.0f, 64.0f, 64.0f, 0.0f, 1.0f, (f32) spec->unk14, 1.0f);

	gSPMatrix(D_8005BB2C++, (u32)D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	D_8005BB38 += 0x40;

	if (arg0 & 0x80) {
		if ((u32) D_5002D40 == specWords[0]) {
			gSPDisplayList(D_8005BB2C++, (u32)func_800E88C0_F7870((s32) D_5002D40, 2));
		} else if (specWords[1] != 0) {
			gSPDisplayList(D_8005BB2C++, (u32)func_800E88C0_F7870((s32) specWords[1], 2));
		} else {
			gSPDisplayList(D_8005BB2C++, (u32)func_800E88C0_F7870((s32) specWords[0], 2));
		}
	} else if ((u32) D_5002D40 == specWords[0]) {
		gSPDisplayList(D_8005BB2C++, (u32)func_800E88C0_F7870((s32) D_5002D40, 2));
	} else {
		gSPDisplayList(D_8005BB2C++, (u32)func_800E88C0_F7870((s32) specWords[0], 2));
	}

	if (D_8015EA28 == value) {
		D_80052B40.unk0 = 0x100;
		D_80052B40.unk2 = 0;
		D_80052B40.unk4 = 0;
		func_800039D0_45D0(&D_80052B40, NULL, NULL, D_8005BB38);

		gSPMatrix(D_8005BB2C++, (u32)D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;

		gDPPipeSync(D_8005BB2C++);

		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011D4FC_12C4AC.s")
#endif
// CURRENT(9775)
#ifdef NON_MATCHING
void func_8011DBA0_12CB50(s32 arg3) {
	typedef struct {
		s32 unk0;
		s32 unk4;
	} Unk80140A40;

	BuildingSpec *spec;
	Unk80140A40 *unkTable;
	u16 *unkPtr;
	u8 *pendingPtr;
	s16 startIndex;
	s16 index;
	u32 counter;
	u16 value;
	Unk80140A40 *entry;
	s32 temp;

	index = D_8015EB68;
	unkPtr = (u16 *)((u8 *)&D_802B2080 + (index << 0xD));

	if (D_8015EB6C != 0) {
		D_8015EB6C--;
		if (D_8015EB6C == 0) {
			spec = &buildingSpecs[(u8)D_8015EB6E & 0x7F];
			unkTable = (Unk80140A40 *)D_80140A40_14F9F0;
			counter = 0xFFF;

			do {
				value = *unkPtr;
				entry = &unkTable[value >> 0xD];
				temp = (entry->unk4 + ((((s32)value >> 2) & 0x7FF) << entry->unk0)) >> 3;
				*unkPtr = (u16)((1.0 - ((f64)temp / D_80144FA8_153F58[0])) * (f64)spec->unk14);
				unkPtr++;
			} while (counter-- != 0);

			D_8015EB60[index] = (u8)D_8015EB6E;
			index++;
			D_8015EB68 = index;
			if (D_8015EB68 >= 8) {
				D_8015EB68 = 0;
			}
			D_8015EB6E = 0xFF;
		}
	}

	if ((D_8015EB6A != 0) && (D_8015EB6C == 0)) {
		startIndex = D_8015EB68;
		D_8015EB6E = D_8015EB70;
		index = startIndex;

		while ((D_8015EB60[index] != 0xFF) && (*((u8 *)&buildingSpecs[D_8015EB60[index]] + 0x1A) & 0x10)) {
			index++;
			if (index >= 8) {
				index = 0;
			}
			if (index == startIndex) {
				break;
			}
		}

		D_8015EB68 = index;
		func_8011D4FC_12C4AC((u8)D_8015EB6E, (u16 *)((u8 *)&D_802B2080 + (D_8015EB68 << 0xD)), startIndex, arg3);

		pendingPtr = &D_8015EB71;
		while (pendingPtr < &D_8015EB77) {
			pendingPtr[-1] = *pendingPtr;
			pendingPtr++;
		}

		D_8015EB77 = 0xFF;
		D_8015EB6C = 2;
		D_8015EB6A--;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011DBA0_12CB50.s")
#endif

void func_8011DE60_12CE10(s32 arg0) {
	D_8015EB80 = arg0;
}

// CURRENT(21902)
#ifdef NON_MATCHING
s32 func_8011DE6C_12CE1C(s16 arg0, s16 arg1, s16 *arg2, s16 arg3) {
	BuildingInstance *inst;
	BuildingInstance *instA;
	BuildingInstance *instB;
	BuildingSpec *spec;
	f32 localX;
	f32 localZ;
	f32 absX;
	f32 absZ;
	s16 outA;
	s16 outB;
	s16 instanceId;
	s16 dist;
	s16 delta;
	s16 sampleY;
	s32 cellY;
	s32 searchIndex;
	s32 specType;
	s32 rot;
	s32 needSeamFix;
	u8 *history;

	cellY = func_800B84D0_C7480(arg0, arg1) >> 8;
	instanceId = arg3;
	inst = &buildingInstances[instanceId];
	if (inst->buildingType == 0x1F) {
		specType = D_8015EA28;
	} else {
		specType = inst->buildingType;
	}
	history = &D_8015EB67;

	for (searchIndex = 7; searchIndex != 0; searchIndex--) {
		s32 historyBase = 0;

		if (((inst->unk8 >> 0xC) & 4) != 0) {
			historyBase = 0x80;
		}

		if (history[-searchIndex] == (u8)(historyBase + specType)) {
			break;
		}
	}

	if ((D_8015EA28 == inst->buildingType) && (D_80052554 >= 0x401)) {
		*arg2 = 1000;
		return instanceId;
	}

	spec = &buildingSpecs[specType];
	spec->pad16[4] |= 0x10;

	if (inst->buildingType == 0x1F) {
		if ((inst->unk8 & 1) != 0) {
			localX = 5.0f;
			localZ = (f32)((arg0 & 0xFF) >> 2);
		} else {
			localX = 5.0f;
			localZ = (f32)((arg1 & 0xFF) >> 2);
		}
		needSeamFix = 0;
	} else {
		rot = inst->unk8 & 3;
		localX = (f32)(arg0 - inst->xCoord);
		localZ = (f32)(arg1 - inst->zCoord);

		switch (rot) {
		case 0:
			localX = -localX;
			break;
		case 1: {
			f32 temp = localX;
			localX = localZ;
			localZ = temp;
			break;
		}
		case 2:
			localZ = -localZ;
			break;
		case 3: {
			f32 temp = localZ;
			localZ = -localX;
			localX = -temp;
			break;
		}
		}

		if (localX >= 0.0f) {
			absX = localX;
		} else {
			absX = -localX;
		}

		if ((f32)spec->unk10 < absX) {
			*arg2 = (s16)cellY;
			return -1;
		}

		if (localZ >= 0.0f) {
			absZ = localZ;
		} else {
			absZ = -localZ;
		}

		if ((f32)spec->unk12 < absZ) {
			*arg2 = (s16)cellY;
			return -1;
		}

		localX = (f32)(((f64)localX * (32.0 / (f64)spec->unk10)) + 32.0);
		localZ = (f32)(((f64)localZ * (32.0 / (f64)spec->unk12)) + 32.0);
		needSeamFix = 0;
		if (D_8015EA28 == inst->buildingType) {
			if ((rot & 1) != 0) {
				if (((arg1 & 0xFF) >> 2) < 7) {
					needSeamFix = 1;
				}
			} else if (((arg1 & 0xFF) >> 2) < 7) {
				needSeamFix = 1;
			}
		}
	}

	if (D_80144FB0_153F60[0] < (f64)localX) {
		localX = 63.0f;
	}
	if (D_80144FB0_153F60[0] < (f64)localZ) {
		localZ = 63.0f;
	}

	if (searchIndex == -1) {
		*arg2 = inst->yCoord + spec->unk14;
		if (*arg2 < cellY) {
			*arg2 = (s16)cellY;
			return -1;
		}
		return instanceId;
	}

	*arg2 = (s16)*(u16 *)((u8 *)&D_802B2080 + (searchIndex << 0xD) + (((s16)(s32)localX) * 2) + (((s16)(s32)localZ) << 7));

	if ((D_8015EA29 == inst->buildingType) && (gameplayMode == 3) && ((f64)localZ > 48.0)) {
		*arg2 = (s16)(s32)(((64.0 - (f64)localZ) * D_80144FB8_153F68[0]) + 16.0);
	}

	if (D_8015EB80 != 0) {
		switch (currentLevel) {
		case LEVEL_GREECE:
			if ((*(s32 *)&buildingSpecs[inst->buildingType] == (s32)D_900AD50) && (localX > 23.0f) && (localX < 41.0f) && (localZ > 45.0f)) {
				*arg2 = 0;
			}
			break;
		case LEVEL_JAVA:
			if ((*(s32 *)&buildingSpecs[inst->buildingType] == (s32)D_A014AD8) && (localX > 26.0f) && (localX < 38.0f) && (localZ > 55.0f)) {
				if ((func_8011D260_12C210(0x45, 0x12) != (s32)(inst - buildingInstances)) || (func_8000726C_7E6C((u64)0xFULL) != 0)) {
					*arg2 = 0;
				}
			} else if ((*(s32 *)&buildingSpecs[inst->buildingType] == (s32)D_A01EC58) && (localX > 21.0f) && (localX < 43.0f) && (localZ > 51.0f)) {
				*arg2 = 0;
			}
			break;
		case LEVEL_AMERICA:
			if ((*(s32 *)&buildingSpecs[inst->buildingType] == (s32)D_B00E4E8) && (localX > 19.0f) && (localX < 45.0f)) {
				*arg2 = 0;
			}
			break;
		}
	}

	if ((inst->buildingType == 0x1F) || (needSeamFix != 0)) {
		func_80115F20_124ED0(arg0, arg1, &outA, &outB);
		instA = &buildingInstances[outA];
		instB = &buildingInstances[outB];

		if (instA->xCoord == instB->xCoord) {
			delta = instB->zCoord - instA->zCoord;
			if (delta >= 0) {
				dist = delta;
			} else {
				dist = -delta;
			}
			sampleY = ((delta >> 1) + instA->zCoord) - arg1;
		} else {
			delta = instB->xCoord - instA->xCoord;
			if (delta >= 0) {
				dist = delta;
			} else {
				dist = -delta;
			}
			sampleY = ((delta >> 1) + instA->xCoord) - arg0;
		}

		*arg2 -= func_8011619C_12514C((s16)func_80118670_127620((s8)(arg0 >> 8), (s8)(arg1 >> 8)), (s16)((dist - 0xE6) >> 1), sampleY);
	}

	if (*arg2 == 0) {
		*arg2 = (s16)(func_800B84D0_C7480(arg0, arg1) >> 8);
		return -1;
	}

	*arg2 = *arg2 + inst->yCoord;
	if (*arg2 < cellY) {
		*arg2 = (s16)cellY;
		return -1;
	}

	if (((spec->pad16[4] & 8) == 0) && (D_8015EB80 == 0) && (*arg2 != 0)) {
		*arg2 = spec->unk14 + inst->yCoord;
	}

	return instanceId;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011DE6C_12CE1C.s")
#endif

s32 func_8011E6FC_12D6AC(s16 arg0, s16 arg1, s16 *arg2) {
	s32 temp_v0;

	temp_v0 = func_8011D260_12C210((s8)(arg0 >> 8), (s8)(arg1 >> 8));
	if (temp_v0 == -1) {
		*arg2 = (s16)(func_800B84D0_C7480(arg0, arg1) >> 8);
		return -1;
	}

	return func_8011DE6C_12CE1C(arg0, arg1, arg2, (s16)temp_v0);
}

// CURRENT(5575)
#ifdef NON_MATCHING
s16 func_8011E788_12D738(s16 arg0, s16 arg1, s16 *arg2, s32 arg3, s32 arg4) {
	BuildingInstance *inst;
	BuildingSpec *spec;
	s16 xMin;
	s16 xMax;
	s16 zMin;
	s16 zMax;
	s16 edgeX;
	s16 edgeZ;
	s16 *outX;
	s16 *outZ;
	s32 temp_v0;
	s32 temp_v1;
	s32 temp;
	s32 index;

	outX = (s16 *)arg3;
	outZ = (s16 *)arg4;
	index = func_8011E6FC_12D6AC(arg0, arg1, arg2);
	if (index == -1) {
		return -1;
	}

	inst = &buildingInstances[index];
	if (inst->buildingType == 0x1F) {
		if (inst->unk8 & 1) {
			*outX = arg0;
			*outZ = arg1 & 0xFF00;
		} else {
			*outX = arg0 & 0xFF00;
			*outZ = arg1;
		}
		return (s16)index;
	}

	spec = &buildingSpecs[inst->buildingType];
	if (inst->unk8 & 1) {
		zMin = inst->zCoord - spec->unk10;
		zMax = inst->zCoord + spec->unk10;
		xMax = inst->xCoord + spec->unk12;
		xMin = inst->xCoord - spec->unk12;
	} else {
		zMin = inst->zCoord - spec->unk12;
		zMax = inst->zCoord + spec->unk12;
		xMax = inst->xCoord + spec->unk10;
		xMin = inst->xCoord - spec->unk10;
	}

	if (arg0 < xMin) {
		goto fail;
	}
	if (xMax < arg0) {
		goto fail;
	}
	if (arg1 < zMin) {
		goto fail;
	}
	if (zMax < arg1) {
		goto fail;
	}

	temp_v0 = arg0 - xMax;
	temp_v1 = arg0 - xMin;
	if (temp_v0 < 0) {
		temp_v0 = -temp_v0;
	}
	if (temp_v1 < 0) {
		temp_v1 = -temp_v1;
	}

	if (temp_v0 < temp_v1) {
		edgeX = xMax;
	} else {
		edgeX = xMin;
	}

	temp_v0 = arg1 - zMin;
	temp_v1 = arg1 - zMax;
	if (temp_v0 < 0) {
		temp_v0 = -temp_v0;
	}
	if (temp_v1 < 0) {
		temp_v1 = -temp_v1;
	}

	if (temp_v0 < temp_v1) {
		edgeZ = zMin;
	} else {
		edgeZ = zMax;
	}

	temp_v0 = arg0 - edgeX;
	temp_v1 = arg1 - edgeZ;
	if (temp_v0 < 0) {
		temp_v0 = -temp_v0;
	}
	if (temp_v1 < 0) {
		temp_v1 = -temp_v1;
	}

	if (temp_v0 < temp_v1) {
		*outX = edgeX;
		*outZ = arg1;
	} else {
		*outX = arg0;
		*outZ = edgeZ;
	}

	temp = index;
	return index;

fail:
	return -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011E788_12D738.s")
#endif

void func_8011E9F4_12D9A4(s32 arg0, s16 arg1) {
	if (D_8015FAD0[arg1].unk2C == 6) {
		D_80159320 |= 0x1000000;
	}
}

void func_8011EA44_12D9F4(s16 *arg0) {
	if (gameplayMode == GAMEPLAY_MODE_UNK1) {
		func_800E0D28_EFCD8(arg0[0] + D_80159DC8, arg0[1] + D_80159DCA, arg0[2] + D_80159DCC);
	}
}

void func_8011EABC_12DA6C(Unk8004D0F8 *arg0, s32 arg1) {
	if (arg0->unk1A != 0) {
		D_8015EA4A = 2;
		func_800072CC_7ECC(0x13);
	}
}

void func_8011EAF8_12DAA8(s32 arg0, s32 arg1) {
	if (D_8015EA4A == 1) {
		func_800072CC_7ECC(0x13);
		D_8015EA4A = 3;
	}
}

// CURRENT(9768)
#ifdef NON_MATCHING
void func_8011EB40_12DAF0(BuildingInstance *arg0) {
	f64 tempF22;
	s16 tempS1;
	s32 varS0;
	s16 state;
	s16 *tempEA48;

	gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);

	D_80052B40.unk0 = D_80159DC8 + D_8015EA4C;
	D_80052B40.unk2 = D_80159DCA + D_8015EA4E;
	D_80052B40.unk4 = D_80159DCC + D_8015EA50;
	D_80052B48.unk0 = 0;
	D_80052B48.unk4 = 0;
	D_80052B48.unk2 = D_8015EA48;
	func_800039D0_45D0(&D_80052B40, &D_80052B48, 0, D_8005BB38);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	gSPDisplayList(D_8005BB2C++, D_80159DC4 & 0x1FFFFFFF);

	gSPMatrix(D_8005BB2C++, (u32)&D_80031160 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	if (gameplayMode != 2) {
		tempEA48 = &D_8015EA48;
		state = D_8015EA4A;
		if (state < 3) {
			if ((state == 2) && (D_8015EA44 > 0)) {
				D_8015EA44 -= 0x40;
			}
			*tempEA48 += D_8015EA44;
		}

		D_8015EB84 = *tempEA48 + 0x78D;

		switch (state) {
		case 3:
			D_8015EA46 += 1;
			D_8015EA4E -= D_8015EA46;
			if (D_8015EA4E < -0x5E) {
				D_8015EA4A = state = 4;
				D_8015EA4E = -0x5E;
			}
			break;
		case 4:
			break;
		}

		if (state == 1) {
			varS0 = 3;
			tempF22 = D_80144FC0_153F70[0];
			do {
				tempS1 = sins(D_8015EB84);
				func_8012D700_13C6B0(
					1,
					(((((s32)((u8 *)arg0 - (u8 *)buildingInstances) / 0x18) * 0x10) + varS0) & 0xFFFF),
					(s16)(arg0->xCoord + D_80159DC8 - 0x62),
					(s16)(s32)((((f64)(f32)tempS1 / 32768.0) * tempF22) + (f64)(arg0->yCoord + D_80159DCA + 0x26)),
					(s32)((((f64)(f32)coss(D_8015EB84) / 32768.0) * tempF22) + (f64)(arg0->zCoord + D_80159DCC - 0xB5)),
					0,
					0,
					0,
					0x14,
					0x28,
					0x28,
					&func_8011EABC_12DA6C,
					NULL);
				D_8015EB84 = (s16)D_8015EB84 + 0x4000;
				varS0 -= 1;
			} while (varS0 != 0);

			func_8012D700_13C6B0(
				1,
				(((((s32)((u8 *)arg0 - (u8 *)buildingInstances) / 0x18) * 0x10) + 5) & 0xFFFF),
				(s16)(arg0->xCoord - 0x8E),
				(s16)(arg0->yCoord + D_80159DCA),
				arg0->zCoord - 0x21,
				0,
				0,
				0,
				0x13,
				0x14,
				0x14,
				NULL,
				&func_8011EAF8_12DAA8);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011EB40_12DAF0.s")
#endif

// CURRENT(170)
#ifdef NON_MATCHING
void func_8011EFBC_12DF6C(void *arg0, s16 arg1) {
	BuildingInstance *temp_v0;
	s32 objIndex;

	objIndex = (const WeaponEntry_80129864 *)arg0 - D_80145BE0_154B90;
	if ((temp_v0 = &buildingInstances[D_8015FAD0[arg1].unk1E >> 4],
		 objIndex == 0x4F)) {
		if (temp_v0->unkD != 2) {
			temp_v0->unkD = 1;
		}

		if (func_8000726C_7E6C(0x12) == 0) {
			func_801371B8_146168(0, 0x177, D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, D_80144FC8_153F78[0]);
		}

		func_800072CC_7ECC(0x12);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011EFBC_12DF6C.s")
#endif

void func_8011F094_12E044(BuildingInstance *arg0) {
	if ((arg0 == &buildingInstances[func_8011D260_12C210(-0x21, 0x38)]) && (arg0->unkD != 2)) {
		arg0->unkD = 1;
	}

	switch (arg0->unkD) {
	case 0:
		func_8012D700_13C6B0(
			0xD,
			((arg0 - buildingInstances) * 0x10) & 0xFFFF,
			(s16)(arg0->xCoord + D_80159DC8),
			(s16)(arg0->yCoord + D_80159DCA - 0x32),
			arg0->zCoord + D_80159DCC,
			0,
			0,
			0,
			0x1A,
			0x18,
			0x1A,
			0,
			func_8011EFBC_12DF6C);
		break;
	case 1:
		func_800C3BD8_D2B88(
			(s16)(arg0->xCoord + D_80159DC8),
			(s16)(arg0->yCoord + D_80159DCA),
			(s16)(arg0->zCoord + D_80159DCC),
			0x4E,
			0xFFFF,
			0xF0,
			0xD9,
			0x39);
		arg0->unkD = 2;
		break;
	}
}

void func_8011F22C_12E1DC(s32 arg0, s32 arg1) {
	D_8015EA52 = 0x78;
}

// CURRENT(587)
#ifdef NON_MATCHING
void func_8011F244_12E1F4(BuildingInstance *arg0) {
	s32 sp84;
	s32 temp_v1;
	s32 sp5C;
	u8 temp_v0_12;

	sp84 = 0;
	D_80052B40.unk0 = (s16)(arg0->padC[1] + 0x92);
	D_80052B40.unk2 = 0x5E;
	D_80052B40.unk4 = 0;
	func_800039D0_45D0(&D_80052B40, 0, 0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gSPDisplayList(D_8005BB2C++, D_80159DC4 & 0x1FFFFFFF);
	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

	D_80052B40.unk0 = (s16)(-0x92 - arg0->padC[1]);
	D_80052B50.unk0 = -0x100;
	D_80052B50.unk2 = 0x100;
	D_80052B50.unk4 = 0x100;
	func_800039D0_45D0(&D_80052B40, 0, &D_80052B50, D_8005BB38);
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gSPSetGeometryMode(D_8005BB2C++, G_CULL_FRONT);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK);
	gSPDisplayList(D_8005BB2C++, D_80159DC4 & 0x1FFFFFFF);
	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_FRONT);

	if (gameplayMode == 1) {
		if (D_8015EA52 != 0) {
			D_8015EA52--;
		}

		if (func_8000726C_7E6C(0x14) != 0) {
			if ((D_8015EA52 != 0) || ((sp5C = func_800F9C40_108BF0(D_80052B34->unk0 - arg0->xCoord), (u32)(func_800F9C40_108BF0(D_80052B34->unk4 - arg0->zCoord) + sp5C) < 0x258U))) {
				if ((s32)arg0->padC[1] < 0x78) {
					arg0->padC[1] = (u8)(arg0->padC[1] + 4);
					sp84 = 0x40000;
					func_801371B8_146168(0x64, 0x138, arg0->xCoord, arg0->yCoord, arg0->zCoord, D_80144FCC_153F7C[0]);
					if (arg0->padC[1] == 0x78) {
						func_801371B8_146168(0, 0xE9, arg0->xCoord, arg0->yCoord, arg0->zCoord, D_80144FD0_153F80[0]);
					}
				}
			} else {
				if ((s32)arg0->padC[1] > 0) {
					arg0->padC[1] = (u8)(arg0->padC[1] - 4);
					sp84 = -0x40000;
					func_801371B8_146168(0x64, 0x138, arg0->xCoord, arg0->yCoord, arg0->zCoord, D_80144FD4_153F84[0]);
					if (arg0->padC[1] == 0) {
						func_801371B8_146168(0, 0xE9, arg0->xCoord, arg0->yCoord, arg0->zCoord, D_80144FD8_153F88[0]);
					}
				}
			}
		}

		temp_v0_12 = arg0->padC[1];
		if (arg0->unk8 & 1) {
			temp_v1 = (arg0 - buildingInstances) * 0x10;
			func_8012D700_13C6B0(1,
				(temp_v1 + 2) & 0xFFFF,
				arg0->xCoord,
				(s16)(arg0->yCoord + 0xF1),
				arg0->zCoord + temp_v0_12 + 0x49,
				0,
				0,
				sp84,
				0x10,
				0x49,
				0x93,
				func_8011F22C_12E1DC,
				func_8012E1F8_13D1A8);
			func_8012D700_13C6B0(1,
				(temp_v1 + 1) & 0xFFFF,
				arg0->xCoord,
				(s16)(arg0->yCoord + 0xF1),
				(arg0->zCoord - arg0->padC[1]) - 0x49,
				0,
				0,
				-sp84,
				0x10,
				0x49,
				0x93,
				func_8011F22C_12E1DC,
				func_8012E1F8_13D1A8);
		} else {
			temp_v1 = (arg0 - buildingInstances) * 0x10;
			func_8012D700_13C6B0(1,
				temp_v1 & 0xFFFF,
				(s16)(arg0->xCoord + temp_v0_12 + 0x49),
				(s16)(arg0->yCoord + 0xF1),
				arg0->zCoord,
				sp84,
				0,
				0,
				0x49,
				0x10,
				0x93,
				func_8011F22C_12E1DC,
				func_8012E1F8_13D1A8);
			func_8012D700_13C6B0(1,
				(temp_v1 + 1) & 0xFFFF,
				(s16)(arg0->xCoord - arg0->padC[1] - 0x49),
				(s16)(arg0->yCoord + 0xF1),
				arg0->zCoord,
				-sp84,
				0,
				0,
				0x49,
				0x10,
				0x93,
				func_8011F22C_12E1DC,
				func_8012E1F8_13D1A8);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011F244_12E1F4.s")
#endif

// CURRENT(290)
#ifdef NON_MATCHING
void func_8011F818_12E7C8(BuildingInstance *arg0) {
	s32 result;

	// Check if index is non-zero
	result = func_8000726C_7E6C((s64)(((s32)arg0 - (s32)&buildingInstances[0]) / 0x18 - D_8015EA54 + 0x18));
	if (result != 0) {
		if ((s32)arg0->padC[1] < 0x20) {
			arg0->padC[1] = (u8)(arg0->padC[1] + 1);
		}
	} else {
		if ((s32)arg0->padC[1] > 0) {
			arg0->padC[1] = (u8)(arg0->padC[1] - 1);
		}
	}

	// Set up transformation matrices
	D_80052B40.unk0 = D_80159DC8;
	D_80052B40.unk2 = D_80159DCA;
	D_80052B40.unk4 = D_80159DCC;
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = 0;
	D_80052B48.unk4 = (s16)((s32)arg0->padC[1] * -0x154);

	// Apply transformations
	func_800039D0_45D0(&D_80052B40, &D_80052B48, 0, D_8005BB38);

	// Add graphics commands
	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	gSPDisplayList(D_8005BB2C++, (u32)&D_9017550);

	gSPMatrix(D_8005BB2C++, (u32)&D_80031160 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011F818_12E7C8.s")
#endif

void func_8011F9A0_12E950(s32 arg0)
{
	D_80052B40.unk0 = D_80159DC8;
	D_80052B40.unk2 = D_80159DCA;
	D_80052B40.unk4 = D_80159DCC;
	func_800039D0_45D0(&D_80052B40, 0, 0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, (D_8005BB38 & 0xFFFFFFFF) & 0x1FFFFFFF, (G_MTX_NOPUSH | G_MTX_MUL) | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gSPDisplayList(D_8005BB2C++, D_80159DC4);
	gSPMatrix(D_8005BB2C++, ((u32)(&D_80031160)) & 0x1FFFFFFF, (G_MTX_NOPUSH | G_MTX_LOAD) | G_MTX_MODELVIEW);
}

void func_8011FA90_12EA40(BuildingInstance *arg0, u8 arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7, s32 arg8) {
	func_80116554_125504((s16)(arg0->unk8 & 3), &arg2, &arg4);
	func_80116554_125504((s16)(arg0->unk8 & 3), &arg5, &arg7);
	func_8012D700_13C6B0(arg1, ((arg0 - buildingInstances) * 0x10 + arg8) & 0xFFFF, (s16)(arg0->xCoord + arg2), (s16)(arg0->yCoord + arg3), arg0->zCoord + arg4, 0, 0, 0, (s32)arg5, (s32)arg7, (s32)arg6, func_8011E9F4_12D9A4, 0);
}

void func_8011FB98_12EB48(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 5, -5, 0x74, -0xD8, 0xBF, 0x17, 0xB, 0xF);
	func_8011FA90_12EA40(arg0, 5, 0xB6, 0x74, -0xB0, 0xE, 0x16, 0x24, 0xE);
	func_8011FA90_12EA40(arg0, 5, -0xCD, 0x74, -0x72, 0xE, 0x16, 0x6F, 0xD);
}

void func_8011FC64_12EC14(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 5, 0xCF, 0x99, -0x92, 0x2F, 0x1D, 0xF, 0xF);
	func_8011FA90_12EA40(arg0, 5, 0xF7, 0x99, -0x44, 0xC, 0x1D, 0x6A, 0xE);
}

void func_8011FCF4_12ECA4(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 5, 0, 0xBE, 0, 0xAA, 0xC8, 0x95, 0xF);
}

void func_8011FD40_12ECF0(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 6, 0, 0x76, 0x62, 0x4B, 0xA, 0x28, 0xF);
}

void func_8011FD90_12ED40(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 6, 0, 0xA8, 0x90, 0x4B, 0xA, 0x2D, 0xF);
}

void func_8011FDE0_12ED90(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 6, 0, 0xC0, 0, 0x3C, 0xA, 0xE7, 0xF);
	func_8011FA90_12EA40(arg0, 5, 0x41, 0x27, 0xDA, 0x14, 0x59, 0x10, 0xE);
	func_8011FA90_12EA40(arg0, 5, -0x44, 0x27, 0xDA, 0x14, 0x59, 0x10, 0xD);
}

void func_8011FEA8_12EE58(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 5, 0x78, 0, 0, 0x16, 0xB6, 0x1CF, 0xF);
	func_8011FA90_12EA40(arg0, 5, -0x78, 0, 0, 0x16, 0xB6, 0x1CF, 0xE);
}

void func_8011FF30_12EEE0(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 5, -0x67A, 0x28, 0, 0x4B, 0x5D, 0x51, 0xD);
	func_8011FA90_12EA40(arg0, 5, -0x498, 0, -3, 0x4E, 0x119, 0x35, 0xF);
	func_8011FA90_12EA40(arg0, 5, 0x3A4, 0, -3, 0x4E, 0x119, 0x35, 0xE);
}

void func_8011FFF8_12EFA8(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 5, 0, 0, 0, 0x2CF, 0xE2, 0xE3, 0xF);
	func_8011FA90_12EA40(arg0, 5, 0, 0, 0, 0xE3, 0xE2, 0x2CF, 0xE);
	func_8011FA90_12EA40(arg0, 5, 0, 0, 0, 0x1A8, 0xE2, 0x1AA, 0xD);
}

void func_801200B8_12F068(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 5, 0, 0, 0x2B7, 0x47D, 0x2A8, 0x18A, 0xF);
	func_8011FA90_12EA40(arg0, 5, 0, 0, -0x2F4, 0x47D, 0x2A8, 0x15B, 0xE);
	func_8011FA90_12EA40(arg0, 5, -5, 0, 0x2C6, 0xAB, 0x2FC, 0x199, 0xD);
	func_8011FA90_12EA40(arg0, 5, 0x162, 0x2E9, 0x29D, 0x4B, 0x3A, 0x49, 0xC);
}

void func_801201C0_12F170(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 5, 0, 0, -0x12C, 0x15D, 0xA5, 0x184, 0xF);
	func_8011FA90_12EA40(arg0, 5, 1, 0, 0x175, 0x380, 0x203, 0x127, 0xE);
	func_8011FA90_12EA40(arg0, 5, 0, 0, 0x17E, 0x82, 0x243, 0x132, 0xD);
}

void func_8012028C_12F23C(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 5, -0x180, 0, 0x216, 0x54, 0x80, 0x57, 0xF);
}

// setUnluckyAndrewFlag
// Doesn't work to name this and set it in symbol_addrs.us
// because the function is never actually called?
void func_801202DC_12F28C(s32 arg0, s32 arg1) {
	u8 saveFileName[7];
	s32 prefixASJI = 0x41534A49;

	getSaveFileName(currentSaveFileIndex, saveFileName);

	if (*(s32*)saveFileName == prefixASJI) {
		D_80159320 |= 0x08000000;
	}
}

// CURRENT(136)
#ifdef NON_MATCHING
void func_80120334_12F2E4(BuildingInstance *arg0) {
	s32 index;
	s32 indexParam;
	s32 yShifted;
	s32 zAdjusted;
	void (*callback)(s32, s32);

	func_8011FA90_12EA40(arg0, 5, -0xDB, 0, -0x9C, 0x1CC, 0xB8, 0x98, 0xF);
	index = arg0 - buildingInstances;
	indexParam = (index << 4) + 5;
	yShifted = (arg0->yCoord + 0x15) << 16;
	zAdjusted = arg0->zCoord - 0xC0;
	callback = func_801202DC_12F28C;
	func_8012D700_13C6B0(4, indexParam & 0xFFFF, arg0->xCoord, yShifted >> 16, zAdjusted,
		0, 0, 0, 0x64, 0x64, 0x64, callback, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80120334_12F2E4.s")
#endif

void func_80120414_12F3C4(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 5, -0x2CD, 0, 0x35C, 0x218, 0x2C8, 0x164, 0xF);
	func_8011FA90_12EA40(arg0, 5, 0x3FD, 0, 0xE9, 0xFE, 0x2C8, 0x30B, 0xE);
}

void func_801204A4_12F454(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 5, -0x45, 0, -0x12B, 0x326, 0xE6, 0x1CB, 0xF);
	func_8011FA90_12EA40(arg0, 5, -0x40, 0, 0x296, 0x1A5, 0xE6, 0x66, 0xD);
	func_8011FA90_12EA40(arg0, 5, 0x2D4, 0, -0x4F, 0xA8, 0x26C, 0xB4, 0xC);
	func_8011FA90_12EA40(arg0, 5, 0x2D4, 0, -0x208, 0xA8, 0x26C, 0xB7, 0xB);
}

void func_801205AC_12F55C(BuildingInstance *arg0) {
	func_8011FA90_12EA40(arg0, 5, -0xD1, 0x3C, 0, 0x4B, 0x3C, 0x596, 0xF);
	func_8011FA90_12EA40(arg0, 5, 0xD1, 0x3C, 0, 0x4B, 0x3C, 0x596, 0xE);
}

// CURRENT(2310)
#ifdef NON_MATCHING
s32 func_80120634_12F5E4(void) {
	s32 i = 0;
	BuildingInstance *inst = buildingInstances;

	for (; i != 0x100; i += 4, inst += 4) {
		if (D_8015EA29 == inst[0].buildingType) return i;
		if (D_8015EA29 == inst[1].buildingType) return i + 1;
		if (D_8015EA29 == inst[2].buildingType) return i + 2;
		if (D_8015EA29 == inst[3].buildingType) return i + 3;
	}

	return D_8015EA29;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80120634_12F5E4.s")
#endif

// CURRENT(4395)
#ifdef NON_MATCHING
// Debug? Find the nearest special building of type D_A01F868
// in front of and behind the player along the Z-axis,
// then render a three-segment 3D line connecting those buildings and the player
void func_801206B0_12F660(void) {
	BuildingInstance *instA;
	BuildingInstance *instB;
	VehicleInstance *playerVehicle;
	s16 idx;
	s8 xCell;
	s8 zCell;

	if (!(D_80052558 & 8)) {
		D_80052558 |= 8;

		playerVehicle = func_80109960_118910();
		D_8015EA34 = D_8015EA38;
		D_8015EA38 = playerVehicle->unk54;

		xCell = (s8)((s16)playerVehicle->unk0 >> 8);
		zCell = (s8)((s16)playerVehicle->unk4 >> 8);

		for (zCell += 1;; zCell += 1) {
			idx = func_8011D260_12C210(xCell, zCell);
			if (idx != -1) {
				instA = &buildingInstances[idx];
				if (*(s32 *)&buildingSpecs[instA->buildingType] == (s32)D_A01F868) {
					break;
				}
			}
		}

		zCell = (s8)((s16)playerVehicle->unk4 >> 8);
		for (zCell -= 1;; zCell -= 1) {
			idx = func_8011D260_12C210(xCell, zCell);
			if (idx != -1) {
				instB = &buildingInstances[idx];
				if (*(s32 *)&buildingSpecs[instB->buildingType] == (s32)D_A01F868) {
					break;
				}
			}
		}

		D_8015EA3C = (s16)((f32)D_8015EA3C + (D_8015EA34 - D_8015EA38));

		D_8005BB34->v.ob[0] = instA->xCoord + 0x19;
		D_8005BB34->v.ob[1] = instA->yCoord + 0x39C;
		D_8005BB34->v.ob[2] = instA->zCoord + 0xDF;
		D_8005BB34->v.flag = 0;
		D_8005BB34->v.tc[0] = 0;
		D_8005BB34->v.tc[1] = 0;
		D_8005BB34->v.cn[0] = 0;
		D_8005BB34->v.cn[1] = 0;
		D_8005BB34->v.cn[2] = 0;
		D_8005BB34->v.cn[3] = 0xFF;

		D_8005BB34[1].v.ob[0] = instB->xCoord - 0x1E;
		D_8005BB34[1].v.ob[1] = instB->yCoord + 0x39C;
		D_8005BB34[1].v.ob[2] = instB->zCoord - 0xDF;
		D_8005BB34[1].v.flag = 0;
		D_8005BB34[1].v.tc[0] = 0;
		D_8005BB34[1].v.tc[1] = 0;
		D_8005BB34[1].v.cn[0] = 0;
		D_8005BB34[1].v.cn[1] = 0;
		D_8005BB34[1].v.cn[2] = 0;
		D_8005BB34[1].v.cn[3] = 0xFF;

		D_8005BB34[2].v.ob[0] = instA->xCoord + 0x19;
		D_8005BB34[2].v.ob[1] = instA->yCoord + 0x2D9;
		D_8005BB34[2].v.ob[2] = instA->zCoord + 0xDF;
		D_8005BB34[2].v.flag = 0;
		D_8005BB34[2].v.tc[0] = 0;
		D_8005BB34[2].v.tc[1] = 0;
		D_8005BB34[2].v.cn[0] = 0;
		D_8005BB34[2].v.cn[1] = 0;
		D_8005BB34[2].v.cn[2] = 0;
		D_8005BB34[2].v.cn[3] = 0xFF;

		D_8005BB34[3].v.ob[0] = playerVehicle->unk0 + 0xF;
		D_8005BB34[3].v.ob[1] = playerVehicle->unk2 + 0x190;
		D_8005BB34[3].v.ob[2] = playerVehicle->unk4;
		D_8005BB34[3].v.flag = 0;
		D_8005BB34[3].v.tc[0] = 0;
		D_8005BB34[3].v.tc[1] = 0;
		D_8005BB34[3].v.cn[0] = 0;
		D_8005BB34[3].v.cn[1] = 0;
		D_8005BB34[3].v.cn[2] = 0;
		D_8005BB34[3].v.cn[3] = 0xFF;

		D_8005BB34[4].v.ob[0] = instB->xCoord - 0x1E;
		D_8005BB34[4].v.ob[1] = instB->yCoord + 0x2D9;
		D_8005BB34[4].v.ob[2] = instB->zCoord - 0xDF;
		D_8005BB34[4].v.flag = 0;
		D_8005BB34[4].v.tc[0] = 0;
		D_8005BB34[4].v.tc[1] = 0;
		D_8005BB34[4].v.cn[0] = 0;
		D_8005BB34[4].v.cn[1] = 0;
		D_8005BB34[4].v.cn[2] = 0;
		D_8005BB34[4].v.cn[3] = 0xFF;

		gDPPipeSync(D_8005BB30++);
		gDPSetCombineMode(D_8005BB30++, G_CC_SHADE, G_CC_PASS2);
		gDPSetRenderMode(
			D_8005BB30++,
			AA_EN | Z_CMP | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL | G_RM_FOG_SHADE_A,
			AA_EN | Z_CMP | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL |
				GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM));
		gDPSetCycleType(D_8005BB30++, G_CYC_2CYCLE);
		gSPSetGeometryMode(D_8005BB30++, G_FOG);
		gSPVertex(D_8005BB30++, D_8005BB34, 5, 0);
		gSPLine3D(D_8005BB30++, 0, 1, 0);
		gSPLine3D(D_8005BB30++, 2, 3, 0);
		gSPLine3D(D_8005BB30++, 3, 4, 0);
		gDPPipeSync(D_8005BB30++);

		D_8005BB34 += 5;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801206B0_12F660.s")
#endif

void func_80120BC4_12FB74(BuildingInstance *arg0) {
	s32 angle;

	if ((arg0->unk8 & 3) == 1) {
		D_80159DC8 = -0xE0;
		D_80159DCC = 0x19;
	} else {
		D_80159DC8 = -0xE0;
		D_80159DCC = 0x19;
	}

	gSPSetGeometryMode(D_8005BB2C++, G_LIGHTING);

	D_80052B40.unk0 = D_80159DC8;
	D_80052B40.unk2 = D_80159DCA;
	D_80052B40.unk4 = D_80159DCC;
	D_80052B48.unk0 = 0;

	if ((arg0->unk8 & 3) == 1) {
		angle = D_8015EA3C;
	} else {
		angle = -D_8015EA3C;
	}

	D_80052B48.unk2 = (s16)(angle << 8);
	D_80052B48.unk4 = 0;
	func_800039D0_45D0(&D_80052B40, &D_80052B48, 0, D_8005BB38);

	gSPMatrix(D_8005BB2C++, (u32)D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;
	gSPDisplayList(D_8005BB2C++, D_A01FF98);
	gSPMatrix(D_8005BB2C++, (u32)&D_80031160 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	func_801206B0_12F660();
}

// CURRENT(5208)
#ifdef NON_MATCHING
void func_80120D6C_12FD1C(BuildingInstance *arg0) {
	s32 count;
	s32 j;
	s32 tcY;
	s32 zOffset;
	s32 yOffset;
	s32 tcX;
	Vtx *vtx;

	count = 4;
	zOffset = 0x50;
	tcY = 0;
	do {
		j = 4;
		yOffset = 0x50;
		tcX = 0x800;
		do {
			vtx = D_8005BB34;
			D_8005BB34 = vtx + 1;

			vtx->v.ob[0] = arg0->xCoord + D_80159DC8 + yOffset + 2;
			vtx->v.ob[1] = (s16)(s32)((((f64)(f32)sins((D_80052A8C * 0x8E0 - (j << 0xC)) & 0xFFFF) / 32768.0) * 2.0 * (f64)j) +
				(f64)(arg0->yCoord + D_80159DCA + zOffset));
			vtx->v.ob[2] = (s16)(s32)((((f64)(f32)sins((D_80052A8C * 0x1130 - (j << 0xC)) & 0xFFFF) / 32768.0) * 6.0 * (f64)j) +
				(f64)(arg0->zCoord + D_80159DCC));
			vtx->v.tc[0] = tcX;
			vtx->v.tc[1] = tcY;

			tcX -= 0x200;
			yOffset -= 0x14;
			j--;
		} while (j != 0);

		zOffset -= 0x14;
		tcY += 0x200;
	} while (--count != 0);

	gSPMatrix(D_8005BB2C++, (u32)&D_80031160 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
	gSPVertex(D_8005BB2C++, D_8005BB34 - 25, 25, 0);
	gSPDisplayList(D_8005BB2C++, &D_5038FF8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80120D6C_12FD1C.s")
#endif

void func_8012101C_12FFCC(BuildingInstance *arg0, s16 arg1) {
	BuildingInstance *building;

	building = &buildingInstances[D_8015FAD0[arg1].unk1E >> 4];

	if ((const WeaponEntry_80129864 *)arg0 - D_80145BE0_154B90 == 0xA) {
		building->unkD |= (D_8015FAD0[arg1].unk1E & 0xF);
		func_800DF038_EDFE8(
			(s16)(D_8015FAD0[arg1].unk0 >> 0x10),
			(s16)(D_8015FAD0[arg1].unk4 >> 0x10),
			(s16)(D_8015FAD0[arg1].unk8 >> 0x10),
			0x64, 6, 0);
		func_8012D808_13C7B8(arg1);
		if (building->zCoord < 0x5301) {
			if ((building->unkD & 3) && (building->unkD & 0xC)) {
				func_800072CC_7ECC(0xE);
			}
		}
	}
}

// CURRENT(1235)
#ifdef NON_MATCHING
void func_80121128_1300D8(BuildingInstance *arg0) {
	s32 bit2;
	s32 bit8;
	s32 bit1;
	s32 bit4;
	s32 doorOffset;
	s16 doorMask;

	if (arg0->unk8 & 1) {
		return;
	}

	if (arg0->zCoord >= 0x5300) {
		D_80052B48.unk0 = 0x8000;
		D_80052B48.unk2 = 0;
		D_80052B48.unk4 = 0;
		func_800039D0_45D0(0, &D_80052B48, 0, D_8005BB38);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;
		doorOffset = arg0->pad15[0];
		doorMask = ~(arg0->padC[1] & 0xF);
	} else {
		doorOffset = 0;
		doorMask = ~(arg0->padC[1] & 0xF);
	}

	D_80052B40.unk0 = -0x60 - doorOffset;
	D_80052B40.unk2 = 0;
	D_80052B44 = 0x1A1;
	bit2 = doorMask & 2;

	if (bit2 != 0) {
		func_800039D0_45D0(&D_80052B40, 0, 0, D_8005BB38);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;
		gSPDisplayList(D_8005BB2C++, (u32)D_A01D390 & 0x1FFFFFFF);
		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
	}

	D_80052B44 = -0x1A1;
	bit8 = doorMask & 8;
	if (bit8 != 0) {
		func_800039D0_45D0(&D_80052B40, 0, 0, D_8005BB38);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;
		gSPDisplayList(D_8005BB2C++, (u32)D_A01D390 & 0x1FFFFFFF);
		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
	}

	D_80052B40.unk0 = doorOffset + 0x60;
	D_80052B44 = 0x1A1;
	D_80052B50.unk0 = -0x100;
	D_80052B50.unk2 = 0x100;
	D_80052B50.unk4 = 0x100;
	gSPSetGeometryMode(D_8005BB2C++, G_CULL_FRONT);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK);

	bit1 = doorMask & 1;
	if (bit1 != 0) {
		func_800039D0_45D0(&D_80052B40, 0, &D_80052B50, D_8005BB38);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;
		gSPDisplayList(D_8005BB2C++, (u32)D_A01D390 & 0x1FFFFFFF);
		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
	}

	D_80052B44 = -0x1A1;
	bit4 = doorMask & 4;
	if (bit4 != 0) {
		func_800039D0_45D0(&D_80052B40, 0, &D_80052B50, D_8005BB38);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;
		gSPDisplayList(D_8005BB2C++, (u32)D_A01D390 & 0x1FFFFFFF);
		gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
	}

	gSPSetGeometryMode(D_8005BB2C++, G_CULL_BACK);
	gSPClearGeometryMode(D_8005BB2C++, G_CULL_FRONT);

	if (gameplayMode != GAMEPLAY_MODE_UNK1) {
		return;
	}

	if (func_8000726C_7E6C(0xD) != 0) {
		if (arg0->zCoord >= 0x5300) {
			if (arg0->pad15[0] < 0xBE) {
				arg0->pad15[0] += 5;
				func_801371B8_146168(0x64, 0x138, arg0->xCoord, arg0->yCoord, arg0->zCoord, D_80144FDC_153F8C[0]);
				if (arg0->pad15[0] == 0xBE) {
					func_801371B8_146168(0, 0xE9, arg0->xCoord, arg0->yCoord, arg0->zCoord, D_80144FE0_153F90[0]);
				}
			}
		}
	}

	if (func_8000726C_7E6C(0xD) == 0) {
		if (arg0->zCoord >= 0x5300) {
			if (arg0->pad15[0] > 0) {
				arg0->pad15[0] -= 5;
				func_801371B8_146168(0x64, 0x138, arg0->xCoord, arg0->yCoord, arg0->zCoord, D_80144FE4_153F94[0]);
				if (arg0->pad15[0] == 0) {
					func_801371B8_146168(0, 0xE9, arg0->xCoord, arg0->yCoord, arg0->zCoord, D_80144FE8_153F98[0]);
				}
			}
		}
	}

	if (bit1 != 0) {
		func_8012D700_13C6B0(1, (((arg0 - buildingInstances) * 0x10) + 1) & 0xFFFF,
			arg0->xCoord + doorOffset + 0x60, arg0->yCoord + 0x8C, arg0->zCoord + 0x1A1,
			0, 0, 0, 0x60, 0x26, 0x8C, 0, func_8012101C_12FFCC);
	}

	if (bit2 != 0) {
		func_8012D700_13C6B0(1, (((arg0 - buildingInstances) * 0x10) + 2) & 0xFFFF,
			arg0->xCoord - doorOffset - 0x60, arg0->yCoord + 0x8C, arg0->zCoord + 0x1A1,
			0, 0, 0, 0x60, 0x26, 0x8C, 0, func_8012101C_12FFCC);
	}

	if (bit4 != 0) {
		func_8012D700_13C6B0(1, (((arg0 - buildingInstances) * 0x10) + 4) & 0xFFFF,
			arg0->xCoord + doorOffset + 0x60, arg0->yCoord + 0x8C, arg0->zCoord - 0x1A1,
			0, 0, 0, 0x60, 0x26, 0x8C, 0, func_8012101C_12FFCC);
	}

	if (bit8 != 0) {
		func_8012D700_13C6B0(1, (((arg0 - buildingInstances) * 0x10) + 8) & 0xFFFF,
			arg0->xCoord - doorOffset - 0x60, arg0->yCoord + 0x8C, arg0->zCoord - 0x1A1,
			0, 0, 0, 0x60, 0x26, 0x8C, 0, func_8012101C_12FFCC);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80121128_1300D8.s")
#endif

void func_801219A4_130954(VehicleInstance *arg0, s16 arg1) {
	func_8011D260_12C210(0x45, 0x12);
	func_80102D00_111CB0(arg0, -50.0f, 30.0f, 0.0f);
	func_8012D808_13C7B8(arg1);
	D_80048178 = -10;
}

void func_801219F4_1309A4(void* arg0, s16 arg1) {
	func_8011D260_12C210(0x45, 0x12);
	if (arg0 == &D_80145BE0_154B90[20]) {
		D_80048178 = 0x14;
		func_8012D84C_13C7FC();
		func_800072CC_7ECC(0xF);
		D_80052558 |= 1;
	}
}

// CURRENT(3553)
#ifdef NON_MATCHING
void func_80121A64_130A14(BuildingInstance *arg0) {
	BuildingInstance *building;
	s16 temp;
	s32 i;
	s16 *tempS16;

	building = &buildingInstances[func_8011D260_12C210(0x45, 0x12)];
	tempS16 = (s16 *)D_80140AA0_14FA50;
	func_8011FA90_12EA40(arg0, 6, 0, 0x195, 0x11B, 0x32, 0xA, 0x36, 0xF);
	if (arg0 != building) {
		return;
	}

	if (func_8000726C_7E6C(0xFULL) == 0) {
		if ((D_80052558 & 1) == 0) {
			return;
		}
	}

	if (D_80048178 >= 0) {
		D_8015EA3E = 0;
		D_8015EA40 = 0;
		D_8015EA42 = 0x144;
	}

	if (D_80052558 & 1) {
		D_80048178--;
		if ((D_80048178 < -10) && (*tempS16 >= 0x4001)) {
			func_8012D84C_13C7FC();
			D_80052558 &= ~1;
			return;
		}

		temp = *tempS16;
		if (D_80048178 == 0) {
			func_800DF038_EDFE8(building->xCoord, building->yCoord, building->zCoord, 0xDC, 0, 0);
		}

		if (D_80048178 < 0) {
			if ((D_80048178 >= -9) && (temp >= 0x4001)) {
				D_8015EA42 += 0xD0;
			} else {
				temp = temp + (D_80048178 * -20) - 0xC8;
				*tempS16 = temp;
				if (temp >= 0x4001) {
					func_800DF038_EDFE8((s16)(building->xCoord - D_8015EA42), building->yCoord, building->zCoord, 0xB4, 0, 0);
				}
			}
		}
	}

	temp = *tempS16;
	if (temp < 0x4001) {
		D_80052B40.unk0 = D_8015EA3E;
		D_80052B48.unk0 = 0;
		D_80052B48.unk2 = 0;
		D_80052B48.unk4 = temp;
		D_80052B50.unk0 = 0x88;
		D_80052B50.unk2 = 0x123;
		D_80052B50.unk4 = 0x3E;
		D_80052B40.unk2 = D_8015EA40;
		D_80052B40.unk4 = D_8015EA42;
		*tempS16 = temp;
		func_800039D0_45D0(&D_80052B40, &D_80052B48, &D_80052B50, D_8005BB38);
		gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
		D_8005BB38 += 0x40;
		gSPDisplayList(D_8005BB2C++, D_A002120);
	}

	i = (arg0 - buildingInstances) * 0x10;
	func_8012D700_13C6B0(0xD, (i + 1) & 0xFFFF, arg0->xCoord + D_80159DC8, arg0->yCoord + D_80159DCA, arg0->zCoord + D_80159DCC, 0, 0, 0,
					   0x3C, 0x32, 0x20, NULL, func_801219F4_1309A4);
	func_8012D700_13C6B0(0xD, (i + 2) & 0xFFFF, arg0->xCoord + D_80159DC8, arg0->yCoord + D_80159DCA, arg0->zCoord - D_80159DCC, 0, 0, 0,
					   0x3C, 0x32, 0x20, NULL, func_801219F4_1309A4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80121A64_130A14.s")
#endif

#ifdef NON_MATCHING
// CURRENT(5649)
void func_80121EB4_130E64(s16 *arg0) {
	f32 sp38;
	f32 sp34;
	f32 temp_f0;
	f64 temp_f16;
	s32 temp_a0;
	s32 temp_a3;
	s32 temp_f6;

	temp_f6 = (s32) ((((f64) (f32) sins(((*arg0 + D_80052A8C) * 0x2EE) & 0xFFFF)) / 32768.0) * D_80144FF0_153FA0[0]);
	sp38 = (f32) (D_80145000_153FB0[0] - ((((f64) (f32) coss(temp_f6 & 0xFFFF)) / 32768.0) * D_80144FF8_153FA8[0]));
	temp_f16 = ((f64) (f32) sins((s16) temp_f6 & 0xFFFF)) / 32768.0;

	D_80052B40.unk0 = 0xD9;
	D_80052B40.unk2 = 0x1CD;
	D_80052B40.unk4 = 0;
	D_80052B48.unk0 = 0;
	D_80052B48.unk2 = (s16) temp_f6;
	D_80052B48.unk4 = 0;

	sp34 = (f32) (D_80145010_153FC0[0] - (temp_f16 * D_80145008_153FB8[0]));
	func_800039D0_45D0(&D_80052B40, &D_80052B48, NULL, D_8005BB38);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
	D_8005BB38 += 0x40;

	gSPDisplayList(D_8005BB2C++, (u32)&D_B008828);

	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);

	temp_f0 = 0.0f;
	D_80052B40.unk0 = (s16) (s32) sp38;
	D_80052B40.unk2 = (s16) (s32) sp34;
	D_80052B44 = (s16) (s32) temp_f0;
	func_800039D0_45D0(&D_80052B40, NULL, NULL, D_8005BB38);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	temp_a0 = D_8005BB38 + 0x40;
	D_8005BB38 = temp_a0;
	guAlign((Mtx *) temp_a0, temp_f0, (f32) 0x2D - sp34, -((f32) -0x63 - sp38), temp_f0);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	temp_a3 = D_8005BB38 + 0x40;
	D_8005BB38 = temp_a3;
	D_80052B50.unk0 = 0xC8;
	D_80052B50.unk2 = 0xC8;
	D_80052B50.unk4 = 0xC8;
	func_800039D0_45D0(NULL, NULL, &D_80052B50, temp_a3);

	gSPMatrix(D_8005BB2C++, D_8005BB38 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);

	gSPDisplayList(D_8005BB2C++, (u32)&D_B008F88);

	gSPMatrix(D_8005BB2C++, (u32)&D_80031160 & 0x1FFFFFFF, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80121EB4_130E64.s")
#endif

// CURRENT(3445)
#ifdef NON_MATCHING
void func_80122244_1311F4(Unk80152B80 *arg0) {
	s16 sp30;
	s16 sp32;
	u8 sp34[3];

	sp34[0] = D_80140AA4_14FA54[0];
	sp34[1] = D_80140AA4_14FA54[1];
	sp34[2] = D_80140AA4_14FA54[2];

	if ((D_80052A8C % 35) == 0) {
		sp30 = arg0->unk0;
		sp32 = arg0->unk4;
		func_800B99A8_C8958(&sp30, 30, 500, 255, sp34, 80, 10, 0);
	}

	if (gameplayMode == GAMEPLAY_MODE_UNK1) {
		func_800D16BC_E066C(arg0->unk0, arg0->unk2 + 0x14E, arg0->unk4, arg0->unk0, arg0->unk2 + 0x7D0, arg0->unk4, 1);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80122244_1311F4.s")
#endif