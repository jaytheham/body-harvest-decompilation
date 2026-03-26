#include <ultra64.h>
#include "common.h"

// Failed - sonnet 4.6
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80115F20_124ED0.s")

#ifdef NON_MATCHING
s16 func_8011619C_12514C(s16 arg0, s16 arg1, s16 arg2) {
	f32 sp20;
	f32 sp24;
	s16 var_v1;

	sp20 = (f32)(((f64)(f32)arg0 * D_80144F08) / 32768.0);
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011629C_12524C.s")

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

#ifdef NON_MATCHING
void func_80116554_125504(s32 arg0, s16 *arg1, s16 *arg2) {
	s16 sp6;
	s16 sp4;
	s16 var_t9;

	switch (arg0 & 3) {
		case 0:
		sp6 = *arg1;
		var_t9 = *arg2;
		sp4 = var_t9;
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
		var_t9 = *arg1;
		sp4 = var_t9;
			break;
	}
	*arg1 = sp6;
	*arg2 = sp4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80116554_125504.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801165FC_1255AC.s")

// https://decomp.me/scratch/SwQQl
#ifdef NON_MATCHING
void func_80116724_1256D4(void) {
    BuildingInstance *building;
    s32 building_idx;
    s32 door_idx;
    u8 interior_id;

    building = D_80050AF0;
    building_idx = 1;

    while (building_idx != 0xFF) {
        door_idx = 2;
        building = &D_80050AF0[building_idx];

        while (door_idx != 0) {
            door_idx -= 1;
            interior_id = (&building->door1InteriorId)[door_idx];
            if (buildingInteriorToLoadId == interior_id) {
                D_80052540 = building_idx;
                D_80052544 = door_idx + 1;
                return;
            }
        }

        building_idx += 1;
        building += 0x18;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80116724_1256D4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80116784_125734.s")

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
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011694C_1258FC.s")

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
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80117508_1264B8.s")

// https://decomp.me/scratch/UNJJQ
#ifdef NON_MATCHING
s32 func_801176B0_126660(void)
{
  s32 i;
  s32 target = D_80052540;Unk80148620 *ptr = &D_80148620_1575D0;
  
  for (i = 0xF; i--;ptr--)
  {
	if (target == ptr->unk0)
	{
	  return ptr;
	}
	
  }

  return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801176B0_126660.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801176F4_1266A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80117A4C_1269FC.s")

void func_80117F10_126EC0(void) {
	D_8015EA30 = D_80144F30_153EE0;
	D_8015EA2C = D_80144F34_153EE4;
}

#ifdef NON_MATCHING
void func_80117F34_126EE4(void) {
	s16 sp46;
	s16 sp44;
	s16 sp42;
	s16 sp40;
	s32 temp_v0;
	s16 sp3A;
	void *sp34;

	sp34 = func_801164C4_125474(*(s16 *)((u8 *)&D_80052540 + 2), D_80052546);
	func_801165FC_1255AC(*((u8 *)&D_80052540 + 3), D_80052547, &sp46, &sp44, &sp42, &sp40);
	func_80117F10_126EC0();
	if (sp40 == -1) {
		sourceTaggedPrintF(D_80144E20, D_80144E2C, 0x469);
	}

	sp3A = *(s16 *)((u8 *)D_801483A4 + (((u8 *)sp34)[8] * 0x18)) + 0x32;
	temp_v0 = -0x4000 - sp40;
	D_80052B34->unk6 = temp_v0;
	D_80052B34->unkE = temp_v0;
	func_800FB44C_10A3FC(D_80052B34, (f32)((((f64)(f32)coss(D_80052B34->unkE) / 32768.0) * (f64)sp3A) + (f64)sp46));
	func_800FB468_10A418(D_80052B34, (f32)sp44);
	func_800FB484_10A434(D_80052B34, (f32)((((f64)(f32)sins(D_80052B34->unkE) / 32768.0) * (f64)sp3A) + (f64)sp42));

	if (D_80052544 == 0) {
		if ((temp_v0 = func_801176B0_126660()) != 0) {
			func_80117A4C_1269FC(temp_v0);
		}
	}
	D_80052A88 = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80117F34_126EE4.s")
#endif

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011815C_12710C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80118670_127620.s")

// displayBuildings
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80118774_127724.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011A2A0_129250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011A604_1295B4.s")

void func_8011B3F0_12A3A0(s16 arg0, s16 *arg1, s16 *arg2, s16 *arg3) {
	s16 sp26;
	s32 flag;

	flag = 0;
	if (func_80118114_1270C4(arg0) != 0) {
		flag = 1;
	}
	func_801165FC_1255AC((u8) arg0, (u8) flag, arg1, arg2, arg3, &sp26);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011B454_12A404.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011B584_12A534.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011B6C0_12A670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011BA80_12AA30.s")

// draw explosion etc when building is damaged/destroyed
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011BB94_12AB44.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011BF7C_12AF2C.s")

void func_8011C080_12B030(u8 arg0)
{
	buildingInstances[arg0].hitPoints = 0;
	buildingInstances[arg0].unk10 = 0;
	func_8011BB94_12AB44(arg0, 1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C0CC_12B07C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C770_12B720.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011C9D8_12B988.s")

s32 func_8011CBD8_12BB88(u8 arg0, u8 arg1) {
	return (s32) ((arg0 * 0x4BAD) + (arg1 * 0xD)) % 6500;
}

s32 func_8011CC20_12BBD0(u16 arg0, u8 arg1) {
	return ((arg0 << 8) + arg1) & 0xFFFF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011CC40_12BBF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011CDA4_12BD54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011D030_12BFE0.s")

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

	if ((((*(u32 *)(D_80050AE0 + (temp_v0 * 0x18))) >> 12) & 1) == 0) {
		return -1;
	}

	return temp_v0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011D2DC_12C28C.s")

#ifdef NON_MATCHING
// Score: 1725 (very close, mostly register allocation differences)
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011D4FC_12C4AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011DBA0_12CB50.s")

void func_8011DE60_12CE10(s32 arg0) {
	D_8015EB80 = arg0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011DE6C_12CE1C.s")

s32 func_8011E6FC_12D6AC(s16 arg0, s16 arg1, s16 *arg2) {
	s32 temp_v0;

	temp_v0 = func_8011D260_12C210((s8)(arg0 >> 8), (s8)(arg1 >> 8));
	if (temp_v0 == -1) {
		*arg2 = (s16)(func_800B84D0_C7480(arg0, arg1) >> 8);
		return -1;
	}

	return func_8011DE6C_12CE1C(arg0, arg1, arg2, (s16)temp_v0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011E788_12D738.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011EB40_12DAF0.s")

#ifdef NON_MATCHING
void func_8011EFBC_12DF6C(void *arg0, s16 arg1) {
	u8 *temp_v0;
	s32 objIndex;

	objIndex = (((u8 *) arg0 - D_80145BE0_154B90) / 0x18);
	if ((temp_v0 = (u8 *) buildingInstances + (((((*(s16 *)((u8 *) &D_8015FAEE + (arg1 * 0x30))) >> 4) << 2) - ((*(s16 *)((u8 *) &D_8015FAEE + (arg1 * 0x30))) >> 4)) << 3),
		 objIndex == 0x4F)) {
		if (temp_v0[0xD] != 2) {
			temp_v0[0xD] = 1;
		}

		if (func_8000726C_7E6C(0x12) == 0) {
			func_801371B8_146168(0, 0x177, D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, D_80144FC8);
		}

		func_800072CC_7ECC(0x12);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011EFBC_12DF6C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011F094_12E044.s")

void func_8011F22C_12E1DC(s32 arg0, s32 arg1) {
	D_8015EA52 = 0x78;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011F244_12E1F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011F818_12E7C8.s")

#ifdef NON_MATCHING
void func_8011F9A0_12E950(s32 arg0) {
	Gfx *dl;
	s32 mask;

	D_80052B40.unk0 = D_80159DC8;
	D_80052B40.unk2 = D_80159DCA;
	D_80052B40.unk4 = D_80159DCC;
	mask = 0x1FFFFFFF;
	func_800039D0_45D0(&D_80052B40, 0, 0, D_8005BB38);

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0x01000040;
	dl->words.w1 = (s32)(D_8005BB38 & mask);

	D_8005BB38 += 0x40;
	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0x06000000;
	dl->words.w1 = D_80159DC4;

	dl = D_8005BB2C;
	D_8005BB2C = dl + 1;
	dl->words.w0 = 0x01020040;
	dl->words.w1 = (s32)((s32)&D_80031160 & mask);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011F9A0_12E950.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8011FA90_12EA40.s")

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

// NON_MATCHING: register allocation (v0=key vs a0=pointer) cannot be coerced to match IDO's choice
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801206B0_12F660.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80120BC4_12FB74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80120D6C_12FD1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012101C_12FFCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80121128_1300D8.s")

void func_801219A4_130954(VehicleInstance *arg0, s16 arg1) {
	func_8011D260_12C210(0x45, 0x12);
	func_80102D00_111CB0(arg0, -50.0f, 30.0f, 0.0f);
	func_8012D808_13C7B8(arg1);
	D_80048178 = -10;
}

void func_801219F4_1309A4(void* arg0, s16 arg1) {
	func_8011D260_12C210(0x45, 0x12);
	if (arg0 == (D_80145BE0_154B90 + 0x1E0)) {
		D_80048178 = 0x14;
		func_8012D84C_13C7FC();
		func_800072CC_7ECC(0xF);
		D_80052558 |= 1;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80121A64_130A14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80121EB4_130E64.s")

#ifdef NON_MATCHING
void func_80122244_1311F4(Unk80152B80 *arg0) {
    s16 sp30;
    s16 sp32;
    u8 sp34[3];

    sp34[0] = D_80140AA4[0];
    sp34[1] = D_80140AA4[1];
    sp34[2] = D_80140AA4[2];

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
 
s32 func_80122320_1312D0(s32 arg0)
{
	int new_var;
	s32 i;
	for(i = 5;i--;)
	{
		new_var = (s32)D_80140AB0_14FA60[i] == arg0;
		if (new_var)
		{
			return -1;
		}
	}
	return 0;
}

int func_8012235C_13130C(Unk8004D0F8 *arg0)
{
  return ((arg0->unk1A != 0) && ((arg0->unk20 & 0x100000) == 0)) && ((arg0->unk1B == 0xFF) || (D_80047F94 == arg0->unk1B));
}

// Failed - gpt 5.3 codex
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801223B0_131360.s")

#ifdef NON_MATCHING
void func_80122524_1314D4(VehicleInstance *arg0, s16 arg1, s16 arg2, s16 arg3) {
	s32 pct = func_801223B0_131360(arg0, arg2, arg3, arg1);
	s32 temp = (s32)((f64)arg1 * (1.0 - (f64)pct / 100.0));
	if ((s16)temp > 0) {
		func_80124118_1330C8(arg0, (s16)temp);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80122524_1314D4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801225C4_131574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801226F8_1316A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801236F0_1326A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801238DC_13288C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80123AC4_132A74.s")

// 80123F04 Reduces damage to adam by 40% in easy
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80123E90_132E40.s")

void func_80124118_1330C8(VehicleInstance *arg0, s16 arg1) {
	if ((arg0->unk20 & 0x80) == 0) {
		if ((arg0 != D_80052B34) || (D_801493E0 != 0)) {
			func_80123E90_132E40(arg0, arg1);
		}
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80124170_133120.s")

void func_80124B5C_133B0C(s16 arg0, s16 arg1, s16 arg2, s32 arg3, s32 arg4) {
	func_80124170_133120(arg0, arg1, arg2, arg3, arg4, 0);
}

#ifdef NON_MATCHING
void func_80124BA8_133B58(void) {
	Unk8015F760 *var_a0;
	Unk8015F790 *var_a0_2;
	s32 var_v1;
	u8 temp_t6;
	u8 temp_t7;
	s32 *temp_v0;
	s32 *temp_v1;

	var_a0 = &D_8015EB90[0x3F];
	var_v1 = 0x3F;
	do {
		var_a0->unk10 = 0.0f;
		var_a0->unk14 = 0.0f;
		var_a0->unk18 = 0.0f;
		var_a0->unk28 = 0;
		var_a0->unk20 = 0;
		var_a0->unk24 = 0;
		var_a0--;
	} while (var_v1--);

	var_a0_2 = &D_8015F790[0xF];
	var_v1 = 0xF;
	do {
		temp_t6 = var_a0_2->unk1F;
		temp_t7 = temp_t6 & 0xFFFD;
		var_a0_2->unk1F = temp_t7;
		var_a0_2->unk1F = temp_t7 & 0xFFFE;
		var_a0_2--;
	} while (var_v1--);

	temp_v0 = &D_80140AC8_14FA78;
	temp_v1 = &D_8015F9E8;
	*temp_v0 = 0;
	*temp_v1 = 0;
	D_8015F9E4 = 0;
	D_8015FA38 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80124BA8_133B58.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80124C40_133BF0.s")

// displayBullets
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80124D60_133D10.s")

void func_80125C48_134BF8(s16 arg0, s16 arg1, s16 arg2) {
	s32 index;

	index = D_80140AC8_14FA78;
	D_8015F9F8[index][0] = arg0;
	D_8015F9F8[index][1] = arg1;
	D_8015F9F8[index][2] = arg2;
	D_8015F9F8[index][3] = 4;
	D_80140AC8_14FA78 = index + 1;
	if (D_80140AC8_14FA78 == 8) {
		D_80140AC8_14FA78 = 0;
	}
}

#ifdef NON_MATCHING
void func_80125CA0_134C50(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
	s32 unused0;
	s32 unused1;
	s16 sp3A;
	s32 sp2C;
	s32 sp28;
	s32 temp_t0;
	s32 temp_v1;

	temp_v1 = arg3 - arg0;
	temp_t0 = arg5 - arg2;
	sp2C = temp_v1;
	sp28 = temp_t0;
	sp3A = func_80003824_4424((f32) temp_t0, (f32) temp_v1);

	func_800D951C_E84CC(D_D03E780, (s16) arg0, (s16) arg1, (s16) arg2, sp3A, 0,
		func_80003824_4424(sqrtf((f32) ((sp2C * sp2C) + (sp28 * sp28))), (f32) -(arg4 - arg1)),
		1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80125CA0_134C50.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80125D70_134D20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80126268_135218.s")

u64 func_80126990_135940(u64 value) {
	return __ll_mul(value, value);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_801269BC_13596C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80126B80_135B30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80127C08_136BB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80127D88_136D38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80127F9C_136F4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80128288_137238.s")

void func_80128428_1373D8(AlienInstance *arg0, s16 arg1, s16 arg2, s16 arg3, s32 *arg4, s32 *arg5, s32 *arg6) {
	s16 sp38[3];
	s16 sp30[3];
	s32 sp24[3];

	sp38[0] = arg1;
	sp38[1] = arg2;
	sp38[2] = arg3;

	sp30[0] = 0x4000 - arg0->unk6;
	sp30[1] = -arg0->unk8;
	sp30[2] = arg0->unkA;

	if (((s8*)&arg0->unkC)[1] != -2) {
		sp30[1] += arg0->unk44;
		sp30[2] += arg0->unk42;
	}

	func_800044D4_50D4(sp38, sp24, sp30);

	*arg4 = sp24[0] + arg0->unk0;
	*arg5 = sp24[1] + arg0->unk2;
	*arg6 = sp24[2] + arg0->unk4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80128504_1374B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80128650_137600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80128E48_137DF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80129354_138304.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_80129864_138814.s")

void func_8012B110_13A0C0(s32 arg0, s32 arg1, InputStruct_8012B150 *arg2) {
	OutputStruct_8012B150 *result;

	result = func_80129354_138304(arg0, arg1, arg2->unk0, arg2->unk2, arg2->unk4);
	if (result != NULL) {
		result->unk18 = (s32)arg2;
	}
}

void func_8012B150_13A100(s32 arg0, s32 arg1, InputStruct_8012B150 *arg2, s32 arg3) {
	OutputStruct_8012B150 *result;

	result = func_80129354_138304(arg0, arg1, arg2->unk0, arg2->unk2, arg2->unk4);
	if (result != NULL) {
		result->unk18 = arg3;
	}
}

void func_8012B194_13A144(s32 arg0, s32 arg1, u8 arg2) {
	s16 index;
	InputStruct_8012B150 *input;
	OutputStruct_8012B150 *result;

	index = D_8015904C - arg2;
	if (index < 0) {
		index += 50;
	}

	input = &D_80159050[index];
	result = func_80129354_138304(arg0, arg1, input->unk0, input->unk2, input->unk4);
	if (result != NULL) {
		result->unk18 = (s32) D_80052B2C->unk38;
	}
}

void func_8012B21C_13A1CC(void) {
	s32 i;

	i = D_8015F9E4;
	while (i--) {
		func_801238DC_13288C((s16)i);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012B26C_13A21C.s")

#ifdef NON_MATCHING
s32 func_8012D600_13C5B0(void) {
	u32 minTime;
	s32 minIdx;
	s32 i;

	minIdx = -1;
	minTime = (u32)-1;
	i = 0x18;
	do {
		if ((u32)D_8015FAD0[i].unk28 < minTime) {
			minTime = (u32)D_8015FAD0[i].unk28;
			minIdx = i;
		}
		if (D_8015FAD0[i].unk2C == 0) {
			D_8015FAD0[i].unk28 = (u32)D_80052A8C;
			return i;
		}
	} while (i--);
	D_8015FAD0[minIdx].unk28 = (u32)D_80052A8C;
	return minIdx;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012D600_13C5B0.s")
#endif

void func_8012D684_13C634(s32 arg0) { *(s32 *)(&D_8015FAF8 + arg0 * 0x30) = -1; }

s32 func_8012D6A4_13C654(u8 arg0, u16 arg1)
{
  s16 *new_var2;
  unsigned long new_var;
  s32 i;
  i = 0x19;
  while (i--)
  {
	new_var2 = &D_8015FAD0[i].unk1E;
	if (D_8015FAD0[i].unk2C == arg0)
	{
	  new_var = arg1;
	  if ((*new_var2) == new_var)
	  {
		return i;
	  }
	}
  }

  return -1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012D700_13C6B0.s")

void func_8012D808_13C7B8(s32 arg0) { *(&D_8015FAFC + arg0 * 0x30) = 0; }

void func_8012D824_13C7D4(void) {
	s32 i;
	i = 0x19;
	while (i--) {
		D_8015FAD0[i].unk2C = 0;
	}
}

void func_8012D84C_13C7FC()
{
  s32 i;
  for (i = 0x19;i--;)
  {
	if (D_8015FAD0[i].unk28 != -1)
	{
	  D_8015FAD0[i].unk2C = 0;
	}
  }
}

// debug_drawInteractionBoxes
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012D884_13C834.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012DDA8_13CD58.s")

s32 func_8012DF90_13CF40(Unk8015FAD0 *arg0, void *arg1, s32 arg2) {

	s32 var_v1 = 0;

	if (arg2 == 0) {
		if (arg0->unk20 != NULL) {
			((s32 (*)()) arg0->unk20)(arg1, (s16) (arg0 - D_8015FAD0));
		}
	}

	if ((arg0->unk2C == 5) || (arg0->unk2C == 7) || (arg0->unk2C == 0xB)) {
		var_v1 = 1;
	}
	if (arg0->unk2C == 6) {
		var_v1 |= 2;
	}
	if (arg0->unk2C == 7) {
		var_v1 |= 4;
	}

	return var_v1;
}

#ifdef NON_MATCHING
s32 func_8012E03C_13CFEC(s16 arg0, s16 arg1, s16 arg2) {
	s32 a0, a1, a2;
	s32 i;
	s32 v0;
	s16 t0;
	s32 temp1, temp2, temp3;
	
	a0 = arg0;
	a1 = arg1;
	a2 = arg2;
	
	i = 0x19;
	while (i--) {
		if (D_8015FAD0[i].unk2C == 0) continue;
		
		v0 = D_8015FAD0[i].unk0;
		t0 = D_8015FAD0[i].unk18;
		temp1 = v0 >> 16;
		if (a0 < temp1 - t0) continue;
		if (temp1 + t0 < a0) continue;
		
		v0 = D_8015FAD0[i].unk4;
		t0 = D_8015FAD0[i].unk1C;
		temp2 = v0 >> 16;
		if (a1 < temp2 - t0) continue;
		if (temp2 + t0 < a1) continue;
		
		v0 = D_8015FAD0[i].unk8;
		t0 = D_8015FAD0[i].unk1A;
		temp3 = v0 >> 16;
		if (a2 < temp3 - t0) continue;
		if (temp3 + t0 < a2) continue;
		
		return i;
	}
	return -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012E03C_13CFEC.s")
#endif

s32 func_8012E114_13D0C4(s16 arg0, s16 arg1, s16 arg2) {
	s32 i;
	s32 a1;
	s32 a2;

	a1 = arg1;
	a2 = arg2;
	i = 0x19;
	while (i--) {
		if (D_8015FAD0[i].unk2C == 0) continue;
		if (arg0 < (D_8015FAD0[i].unk0 >> 16) - D_8015FAD0[i].unk18) continue;
		if (D_8015FAD0[i].unk18 + (D_8015FAD0[i].unk0 >> 16) < arg0) continue;
		if (a1 < (D_8015FAD0[i].unk4 >> 16) - D_8015FAD0[i].unk1C) continue;
		if (D_8015FAD0[i].unk1C + (D_8015FAD0[i].unk4 >> 16) < a1) continue;
		if (a2 < (D_8015FAD0[i].unk8 >> 16) - D_8015FAD0[i].unk1A) continue;
		if (D_8015FAD0[i].unk1A + (D_8015FAD0[i].unk8 >> 16) < a2) continue;
		if (D_8015FAD0[i].unk24 == 0) continue;
		return i;
	}
	return -1;
}

void func_8012E1F8_13D1A8(s32 arg0, s32 arg1) { }

void func_8012E204_13D1B4(s16 arg0, s32 arg1) {
	void (*callback)(s32, s16);
	callback = D_8015FAD0[arg0].unk24;
	if (callback == NULL) {
		return;
	}

	callback(arg1, arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/buildings/func_8012E258_13D208.s")
