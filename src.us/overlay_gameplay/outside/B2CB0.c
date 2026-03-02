#include <ultra64.h>
#include "common.h"

void func_800A3D00_B2CB0(u8 arg0, s16 arg1, s16 arg2, s32 arg3) {
	if (!(alienInstances[arg0].unk20 & 0x8000)) {
		return;
	}

	func_80081E5C_90E0C(arg1);
	if (D_8014DD5E[arg1][0] == 0) {
		if (arg2 == alienInstances[arg0].unk4B) {
			alienInstances[arg0].unk20 &= ~0x8000;
			return;
		}

		func_80081C84_90C34(arg1, (alienInstances[arg0].unk4B * 0x10) + arg3);
		alienInstances[arg0].unk4B++;
	}
}

u8 func_800A3DC8_B2D78(void) {
	u8 var_v0;
	u8 temp_a2;
	AlienInstance* alien;

	for (var_v0 = D_8014D509; var_v0 < D_8014D50A; var_v0++) {
		temp_a2 = D_8014D408[var_v0];
		alien = &alienInstances[temp_a2];
		
		if (alien->specIndex == 0x19) {
			if (alien->unk3C != 0) {
				alien->unk3C = (s8) (alien->unk3C - 1);
				osSyncPrintf(D_80142740, temp_a2); // Found parent %d
				return temp_a2;
			}
		}
	}
	return 0xFF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A3E74_B2E24.s")

void func_800A4150_B3100(u8 arg0) {
	s32 temp_v1;
	AlienInstance* temp_v0;

	temp_v0 = (arg0 ) + alienInstances;
	temp_v1 = temp_v0->unk20;
	if (!(temp_v1 & 0x100000) &&
		(temp_v0->unk3D == 0) &&
		!(temp_v1 & 0x4000) &&
		(temp_v1 & 0x1000)) {

		temp_v0->unk20 = (s32) (temp_v1 | 0x4000);
		temp_v0->unk2C = 0;
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A41B0_B3160.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A4C28_B3BD8.s")

s32 func_800A52F8_B42A8(u8 arg0, s32 arg1, s32 arg2, s32 arg3) {
	s32 temp_a0;
	s32 var_v0;
	s32 var_v1;

	var_v1 = 0;
	if (alienInstances[arg0].unk10 < -arg2) {
		var_v1 = arg1;
	} else {
		if (alienInstances[arg0].unk10 < arg2) {
			var_v0 = arg3 - alienInstances[arg0].unk2;
			temp_a0 = arg1 * 4;
			if (alienInstances[arg0].unk10 < 0) {
				var_v0 -= alienInstances[arg0].unk10;
			}
			if (temp_a0 < var_v0) {
				var_v1 = arg1;
			} else if (var_v0 >= 0) {
				var_v1 = (f32) (((temp_a0 - var_v0) * 0x70) + (arg1 * var_v0)) / temp_a0;
			}
		}
	}
	alienInstances[arg0].unk10 += var_v1;
	return var_v1;
}

#ifdef NON_MATCHING
void func_800A53C0_B4370(s32 arg0, s16 arg1, s16 arg2) {
    s16 abs_arg1;
    AlienInstance *entry;
    s32 sign;
    entry = &alienInstances[arg0 & 0xFF];
    if (entry->unk20 & 0x10) {
        abs_arg1 = (-arg1 < arg1) ? arg1 : -arg1;
        if (entry->unk8 > 0) {
            sign = 1;
        } else {
            sign = 0;
            if (entry->unk8 < 0) {
                sign = -1;
            }
        }
        entry->unk8 = entry->unk8 - sign * abs_arg1;
    } else {
        s16 lookup = D_802566C2[entry->specIndex][0];
        s16 diff = entry->unk2A - entry->unkE;
        if (-lookup >= diff) {
            entry->unk8 = entry->unk8 - arg1;
        } else if (lookup < diff) {
            entry->unk8 = entry->unk8 + arg1;
        } else {
            abs_arg1 = (-arg1 < arg1) ? arg1 : -arg1;
            if (entry->unk8 > 0) {
                sign = 1;
            } else {
                sign = 0;
                if (entry->unk8 < 0) {
                    sign = -1;
                }
            }
            entry->unk8 = entry->unk8 - sign * abs_arg1;
        }
    }
    if (arg2 < entry->unk8) {
        entry->unk8 = arg2;
        return;
    }
    if (entry->unk8 < -arg2) {
        entry->unk8 = -arg2;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A53C0_B4370.s")
#endif

#ifdef NON_MATCHING
void func_800A5554_B4504(u8 arg0, s32 arg1, s32 arg2, s16 arg3) {
    u8 sp23;
    s32 sp1C;
    AlienInstance *entry;
    AlienSpec *spec;
    s32 temp_f10;
    s32 var_a0;
    s16 var_a3;

    entry = &alienInstances[arg0];
    sp1C = 0;
    sp23 = entry->specIndex;
    func_80137468_146418(arg0, 0x1C);
    func_8008076C_8F71C(arg0);
    func_800A53C0_B4370(arg0, 0x1F4, 0x1388);
    if (entry->unk20 & 0x08000000) {
        sp1C = D_80052B34->unk20 & 2;
        if (sp1C != 0 && D_80222A70 >= D_80052B34->unk2) {
            sp1C = 0;
        }
    }
    spec = &alienSpecs[sp23];
    temp_f10 = (s32)(((f32)(entry->unk12 - entry->unk2C) / (f32)spec->unk40) * 8000.0f * 2.0f);
    if (temp_f10 == 0 || entry->unk12 >= (spec->unk40 - spec->unk3E * 2)) {
        if (entry->unkA >= 0xFA1) {
            entry->unkA = (s16)(entry->unkA - 0xC8);
        }
    } else {
        entry->unkA = (s16)(entry->unkA + temp_f10);
    }
    if (entry->unkA >= 0xFA1) {
        entry->unkA = entry->unkA;
    } else {
        entry->unkA = 0xFA0;
    }
    if (entry->unkA < 0x1F40) {
        entry->unkA = entry->unkA;
    } else {
        entry->unkA = 0x1F40;
    }
    var_a0 = func_800B84D0_C7480(entry->unk0, entry->unk4) >> 8;
    if (var_a0 < D_80222A70) {
        var_a0 = D_80222A70;
    }
    if (entry->unk16 >= var_a0) {
        var_a0 = entry->unk16;
    }
    var_a3 = (s16)(arg1 + var_a0);
    if (sp1C != 0) {
        var_a3 = (s16)(D_80052B34->unk2 + 0x12C);
    }
    if (var_a3 < entry->unk2) {
        if (var_a3 > (s16)(entry->unk2 - 7)) {
            entry->unk2 = var_a3;
        } else {
            entry->unk2 = (s16)(entry->unk2 - 7);
        }
    } else if (var_a3 > entry->unk2) {
        if (var_a3 < (s16)(entry->unk2 + 7)) {
            entry->unk2 = var_a3;
        } else {
            entry->unk2 = (s16)(entry->unk2 + 7);
        }
    }
    entry->unk2C = entry->unk12;
    D_8014DD50[arg3].unk6 = (s16)((u16)D_8014DD50[arg3].unk6 + 0x2EE0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5554_B4504.s")
#endif

#ifdef NON_MATCHING
void func_800A57E4_B4794(u8 arg0) {
    s16 sp2E;
    s32 sp20;
    AlienInstance *entry;
    s32 angle_diff;
    s32 neg_angle;

    entry = &alienInstances[arg0];
    angle_diff = (s16)(func_80003824_4424((f32)(entry->unk0 - D_80052B34->unk0), (f32)(entry->unk4 - D_80052B34->unk4)) - D_80052B34->unk6);
    if (!(entry->unk47 & 1)) {
        neg_angle = -angle_diff;
        if ((neg_angle < angle_diff ? angle_diff : neg_angle) < 0x4000) {
            entry->unk20 = (s32)(entry->unk20 & 0xF7FF7FFF);
            sp20 = (s16)(angle_diff > 0 ? D_80052B34->unk6 + 0x6000 : D_80052B34->unk6 - 0x6000) & 0xFFFF;
            sp2E = angle_diff;
            entry->unk14 = (s16)(s32)(((f64)(f32)coss(sp20) / 32768.0) * D_80142778 + (f64)D_80052B34->unk0);
            entry->unk18 = (s16)(s32)(((f64)(f32)sins(sp20) / 32768.0) * D_80142780 + (f64)D_80052B34->unk4);
            entry->unk16 = D_80052B34->unk2;
        }
    }
    neg_angle = -angle_diff;
    if ((neg_angle < angle_diff ? angle_diff : neg_angle) >= 0x6001) {
        entry->unk20 = (s32)(entry->unk20 | 0x8000);
    }
    if (entry->unk20 & 0x8000) {
        func_8008751C_964CC(arg0, 0x258, 0x28A);
        entry->unk20 = (s32)(entry->unk20 | 0x08000000);
        return;
    }
    func_8008064C_8F5FC(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A57E4_B4794.s")
#endif

Unk8014F6D0* func_800A5A10_B49C0() {
	s32 i;

	i = 16;
	while (i--) {
		if (D_8014F6D0[i].unkC == -1) {
			return &D_8014F6D0[i];
		}
	}

	return NULL;
}

// activateSaveBeacon?
void func_800A5A50_B4A00(s32 arg0, s32 arg1) {
	s32 sp1C;

	D_8014F800 = 1;
	osSyncPrintf(D_80142790, arg0); // Activate beacon %d
	if (D_80151DD0 == 0) {
		D_80047F9C = arg0 + 1;
		sp1C = func_80009F18_AB18(arg1);
		func_80116784_125734();
		if (sp1C == 1) {
			D_80052A98[currentLevel - 1].score = (s32) D_80052B2C->unk30;
			D_80052A98[currentLevel - 1].humansKilled = (s16) D_8004816A;
			D_80052A98[currentLevel - 1].secondsElapsed = (s16) ((u32) D_80052A90 / 1000U);
			D_800476A0 = 1;
			return;
		}
		if (sp1C == 2) {
			func_800A5F24_B4ED4(arg0);
		}
	}
}

// checkIfActivatingSaveBeacon?
void func_800A5B30_B4AE0(s32 arg0, s16 arg1) {
	if ((isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A) != 0) &&
		(D_80052B34->unk1A == 0) &&
		(D_8004794C == 0) &&
		(D_80048188 != 1)) {
		func_800A5A50_B4A00((s32) (*(s16*)((u8*)&D_8015FAEE + (arg1 * 0x30)) - 0x1000) / 2, 1);
	}
}

#ifdef NON_MATCHING
void func_800A5BD0_B4B80(s32 arg0) {
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp40;

    sp4C = ((s8*)&D_8003154C)[currentLevel * 0x18 + arg0 * 4 - 0x18] << 8;
    sp48 = ((s8*)&D_8003154C)[currentLevel * 0x18 + arg0 * 4 - 0x17] << 8;
    sp40 = func_800B84D0_C7480((s16)sp4C, (s16)sp48) >> 8;
    if (currentLevel == LEVEL_AMERICA && arg0 == 0) {
        sp40 = 0x7D0;
    }
    sp44 = arg0 * 2;
    func_8012D684_13C634(func_8012D700_13C6B0(4, (sp44 + 0x1000) & 0xFFFF, (s16)sp4C, (s16)sp40, sp48, 0, 0, 0, 0x19, 0x19, 0x50, func_800A5B30_B4AE0, NULL));
    func_8012D684_13C634(func_8012D700_13C6B0(5, (sp44 + 0x1001) & 0xFFFF, (s16)sp4C, (s16)sp40, sp48, 0, 0, 0, 0xF, 0xF, 0x50, NULL, func_8012E1F8_13D1A8));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5BD0_B4B80.s")
#endif

// guess_initBeacons
#ifdef NON_MATCHING
void func_800A5D3C_B4CEC(void) {
    s32 sentinel;
    s32 i;
    s32 j;
    s32 k;
    BeaconDisplayEntry *entry;

    sentinel = -1;
    entry = &D_8014F7DE;
    j = 0xF;
    do {
        entry->unkC = sentinel;
        entry--;
    } while (j-- != 0);

    D_8014F7F0 = 0;
    D_8014F7F4 = 0;
    osSyncPrintf(&D_801427A4);

    k = 0;
    i = 0;
    do {
        if (i < D_80047F98) {
            ((u8 *)&D_8003154C + currentLevel * 0x18 + k * 4)[-0x15] = 0;
            ((u8 *)&D_8003154C + currentLevel * 0x18 + k * 4)[-0x16] = 8;
            func_800A5BD0_B4B80(i);
            osSyncPrintf(&D_801427B0, i);
        } else {
            ((u8 *)&D_8003154C + currentLevel * 0x18 + k * 4)[-0x15] = 0;
            ((u8 *)&D_8003154C + currentLevel * 0x18 + k * 4)[-0x16] = 0;
            osSyncPrintf(&D_801427C4, i);
        }
        i = (k + 1) & 0xFF;
        k = i;
    } while (i < 6);

    D_8014F804 = sentinel;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5D3C_B4CEC.s")
#endif

// warpFromSaveBeacon
void func_800A5EA8_B4E58(u8 arg0) {
	osSyncPrintf(D_801427D8, arg0); // teleport to:%d
	D_8013D890 = 1;
	D_8013D894 = arg0;
}

void func_800A5EE8_B4E98(u8 arg0) {
	D_8013D890 = 4;
	D_80157A3C = 0;
	func_800EC450_FB400();
	func_800153D8_15FD8(0xD7);
}

#ifdef NON_MATCHING
void func_800A5F24_B4ED4(s32 arg0) {
    u8 sp27;

    if (D_8013D890 == 0) {
        osSyncPrintf(&D_801427E8, (s32)arg0);
        sp27 = arg0 * 4;
        osSyncPrintf(&D_801427F4, (u32)D_80031536[currentLevel * 0x18 + sp27]);
        osSyncPrintf(&D_80142800, (u32)D_8003153A[currentLevel * 0x18 + sp27]);
        if (D_8003153A[currentLevel * 0x18 + sp27] >= 4) {
            func_800A5EA8_B4E58((u8)(arg0 + 2));
        } else {
            func_800A5EA8_B4E58(0);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A5F24_B4ED4.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A6020_B4FD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A68CC_B587C.s")

// Launch beacon?
#ifdef NON_MATCHING
void func_800A6FD4_B5F84(void) {
    u8 sp1F;

    sp1F = D_80047F9B;
    osSyncPrintf(&D_8014280C, (s32)sp1F);
    if (currentLevel != LEVEL_SIBERIA || sp1F != 3) {
        func_80013314_13F14();
        D_80052AE0 = gameplayMode;
        gameplayMode = 0xA;
    }
    *((u8*)&D_8003154C + currentLevel * 0x18 + sp1F * 4 - 0x16) = 1;
    *((u8*)&D_8003154C + currentLevel * 0x18 + sp1F * 4 - 0x15) = 0x1E;
    D_80048025 |= 1 << sp1F;
    D_80047F98++;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A6FD4_B5F84.s")
#endif

// displayBeacons
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A70B8_B6068.s")

#ifdef NON_MATCHING
s16 func_800A7B84_B6B34(s16 arg0, s16 arg1) {
    s32 i;
    u8 *ptr;
    Unk8004DCD0 *item;

    i = D_80158FD8;
    if (i == 0) {
        return i;
    }
    i--;
    ptr = D_80158E80 + i;
    do {
        item = D_8004DCD0 + *ptr;
        func_8010C4EC_11B49C(item);
        ptr--;
        if (func_8010CF7C_11BF2C(arg0, arg1) != 0) {
            return func_80123AC4_132A74(item);
        }
    } while (i--);
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A7B84_B6B34.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A7C6C_B6C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A854C_B74FC.s")

#ifdef NON_MATCHING
void func_800A8A68_B7A18(s16 arg0, s16 arg1, s16 arg2, s32 arg3) {
    Unk8014F6D0 *entry;

    entry = func_800A5A10_B49C0();
    if (entry == NULL) {
        if (arg3 != 9) {
            return;
        }
        entry = &D_8014F6D0;
    }
    if (arg3 != 9) {
        entry->unk10 = func_800CB19C_DA14C((s16)(arg0 >> 2), (s16)(arg1 >> 2), (s16)(arg2 >> 2), (u8)arg3);
        if (entry->unk10 == -3) {
            entry->unkC = -1;
            return;
        }
    }
    if (arg1 < D_80222A70) {
        entry->unk2 = arg1;
        entry->unk8 = -2;
    } else {
        entry->unk2 = (s16)((arg1 - (func_800038E0_44E0() % 128)) + 0x40);
        entry->unk8 = (s16)((func_800038E0_44E0() % 16) + 0x14);
    }
    entry->unk0 = (s16)((arg0 - (func_800038E0_44E0() % 128)) + 0x40);
    entry->unk4 = (s16)((arg2 - (func_800038E0_44E0() % 128)) + 0x40);
    entry->unk6 = (s16)(0x20 - (func_800038E0_44E0() % 64));
    entry->unkA = (s16)(0x20 - (func_800038E0_44E0() % 64));
    entry->unkC = (s16)arg3;
    entry->unkE = (s16)((func_800038E0_44E0() & 0x7F) + 0x1F4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A8A68_B7A18.s")
#endif

#ifdef NON_MATCHING
void func_800A8C44_B7BF4(s16 arg0, s16 arg1, s16 arg2) {
    s16 sp1C;
    s32 rand2;
    s32 i;
    s32 slot;

    sp1C = (s16)(func_800038E0_44E0() % 100);
    rand2 = func_800038E0_44E0();
    i = 0;
    slot = 0;
    if (sp1C < 0x1E) {
        s32 offset = rand2 % 7;
        do {
            s32 idx;
            u8 wtype;
            idx = (slot + offset) & 0xFF;
            if (idx >= 7) {
                idx = (idx - 7) & 0xFF;
            }
            wtype = weaponSlots[idx];
            i = i + 1;
            slot = i & 0xFF;
            if (wtype == 3) {
                func_800A8A68_B7A18(arg0, arg1, arg2, 0xB);
                return;
            }
            if (wtype == 6) {
                func_800A8A68_B7A18(arg0, arg1, arg2, 0xD);
                return;
            }
            if (wtype == 5) {
                func_800A8A68_B7A18(arg0, arg1, arg2, 0x11);
                return;
            }
            if (wtype == 4) {
                func_800A8A68_B7A18(arg0, arg1, arg2, 0x1);
                return;
            }
            if (wtype == 0xA) {
                func_800A8A68_B7A18(arg0, arg1, arg2, 0xF);
                return;
            }
            i = slot;
        } while (slot < 7);
    }
    if (sp1C < 0x4B) {
        func_800A8A68_B7A18(arg0, arg1, arg2, 0x1);
        return;
    }
    if (sp1C < 0x61) {
        func_800A8A68_B7A18(arg0, arg1, arg2, 0x10);
        return;
    }
    if (sp1C < 0x61) {
        func_800A8A68_B7A18(arg0, arg1, arg2, 0xA);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A8C44_B7BF4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/B2CB0/func_800A8E18_B7DC8.s")

// guess_givePowerUp
void func_800A9238_B81E8() {
	s16* powerupTypePtr = &D_80047F7E + 1;
	s16 powerupType;
	s32 i = 0x10;
	s16 negOne = -1;
	
	while (powerupTypePtr--, i--) {
		powerupType = *powerupTypePtr;
		if (negOne != powerupType) {
			osSyncPrintf(D_80142820, powerupType); // Giving delayed powerup %d
			func_800A8E18_B7DC8(*powerupTypePtr);
		}
	}
}

void func_800A92B0_B8260(void) {
	s32 i;
	
	i = 16;
	while (i--) {
		D_8014F6D0[i].unkC = -1;
	} ;
}
