#include <ultra64.h>
#include "common.h"

const char D_80142AB0_151A60[] = "nextTrigger < MAX_GAME_TRIGGERS";
const char D_80142AD0_151A80[] = "src/trigger.c";
const char D_80142AE0_151A90[] = "nextTrigger < MAX_GAME_TRIGGERS";
const char D_80142B00_151AB0[] = "src/trigger.c";
const char D_80142B10_151AC0[] = "*********************\n";
const char D_80142B28_151AD8[] = "proc states:%d\n";
const char D_80142B38_151AE8[] = "********************\n";
const char D_80142B50_151B00[] = "trigger: entered building\n";
const char D_80142B6C_151B1C[] = "Wave type %d\n";
const char D_80142B7C_151B2C[] = "Create positional %d in %d seconds\n";
const char D_80142BA0_151B50[] = "Do not regenerate %d\n";
const char D_80142BB8_151B68[] = "Wave regenerated %d in %d seconds\n";
const char D_80142BDC_151B8C[] = "Wave failed %d\n";
const char D_80142BEC_151B9C[] = "Wave successful %d\n";
const char D_80142C00_151BB0[] = "\n\nWAVE %d KILLED\n\n";
const char D_80142C14_151BC4[] = "Add boss %d, %d\n";
const char D_80142C28_151BD8[] = "Add boss component %d\n";
const char D_80142C40_151BF0[] = "deleting wave %d\n";

const u32 jtbl_80142C54_151C04[] = {
	0x800AEA8C,
	0x800AE760,
	0x800AE83C,
	0x800AE954,
	0x800AE9D4,
	0x800AE9B8,
	0x800AEA08,
	0x800AE988,
	0x800AEA3C,
	0x800AE8A0,
	0x800AEA68,
};

void func_800AE2C0_BD270(void) {
	u8 i;
	for (i = 0; i < 0xD0; i++) {
		D_80222A78[i].unk0 = 0;
	}
	D_8014F820 = 0;
	D_80223778 = 0;
}

s16 func_800AE300_BD2B0(Unk80222A78 *arg0) {
	if (D_80223778 >= 0xD0) {
		sourceTaggedPrintF(&D_80142AB0_151A60, &D_80142AD0_151A80, 0x6D);
	}
	if (D_80223778 >= 0xD0) {
		return -1;
	}
	D_80222A78[D_80223778] = *arg0;
	D_80223778 = D_80223778 + 1;
	return (s16)(D_80223778 - 1);
}

void func_800AE3AC_BD35C(Unk80222A78 *arg0) {
	if (arg0->unk0 == 2 && (u32)(arg0->unk4 - D_80052A8C) >= 0x3Du &&
		(arg0->unkC == (void (*)(void *))func_800AFD48_BECF8 || arg0->unkC == 0)) {
		arg0->unk1 = (s8)((s16)D_80223780[arg0->unk9].xPosition >> 8);
		arg0->unk2 = (s8)((s16)D_80223780[arg0->unk9].yPosition >> 8);
	}
	D_80222A78[0] = *arg0;
}

s32 func_800AE454_BD404(Unk80222A78 *arg0) {
	if (D_80223778 >= 0xD0) {
		sourceTaggedPrintF(&D_80142AE0_151A90, &D_80142B00_151AB0, 0x8F);
	}
	if (D_80223778 >= 0xD0) {
		return -1;
	}
	if (arg0->unk0 == 2 && (u32)(arg0->unk4 - D_80052A8C) >= 0x3Du &&
		(arg0->unkC == (void (*)(void *))func_800AFD48_BECF8 || arg0->unkC == NULL)) {
		arg0->unk1 = (s8)(D_80223780[arg0->unk9].xPosition >> 8);
		arg0->unk2 = (s8)(D_80223780[arg0->unk9].yPosition >> 8);
	}
	D_80222A78[D_80223778] = *arg0;
	D_80223778 = D_80223778 + 1;
	return (s16)(D_80223778 - 1);
}

// guess_initAlienWaves
void func_800AE588_BD538(void) {
	s32 i;

	D_8014F820 = 0;
	D_8014F824 = 0;

	i = 0xCF; do {
		if (D_80222A78[i].unk0 == 2) {
			D_80222A78[i].unk1 = (s8)(D_80223780[D_80222A78[i].unk9].xPosition >> 8);
			D_80222A78[i].unk2 = (s8)(D_80223780[D_80222A78[i].unk9].yPosition >> 8);
		}
	} while (i--);

	for (i = 0; i < 0xC0; i++) {
		D_80048038[i] = 0;
		D_80223780[i].unk10 = 0;
		D_80223780[i].unk12 = func_800B0F20_BFED0(D_80223780[i].xPosition, D_80223780[i].yPosition);
		D_80223780[i].unk13 = -1;
	}

	osSyncPrintf(&D_80142B10_151AC0);
	osSyncPrintf(&D_80142B28_151AD8, D_80047F98);
	osSyncPrintf(&D_80142B38_151AE8);

	if (currentLevel != 5) {
		func_8007562C_845DC();
		func_800B0830_BF7E0(D_80047F98);
		func_800B08DC_BF88C(D_80047F98);
	}
}

// guess_checkTriggers
#ifdef NON_MATCHING
// CURRENT(3339)
void func_800AE6CC_BD67C(void) {
	Unk80222A78 tmp;
	s32 unusedPad0;
	s32 unusedPad1;
	AlienWaveInstance *wave;
	VehicleInstance *vehicle;
	u8 i;
	u8 shouldRun;
	u8 waveId0;
	u8 waveId1;

	unusedPad0 = 0;
	unusedPad1 = 0;

	if (D_80223778 > 0) {
		i = 0;
		while (i < D_80223778) {
			shouldRun = 0;

			switch (D_80222A78[i].unk0) {
				case 0:
					wave = &D_80223780[D_80222A78[i].unk9];
					if (D_80047F94 == wave->unk12) {
						if (((D_80222A78[i].unk1 - (D_80052B34->unk0 >> 8)) < 0 ? -(D_80222A78[i].unk1 - (D_80052B34->unk0 >> 8)) : (D_80222A78[i].unk1 - (D_80052B34->unk0 >> 8))) < D_80222A78[i].pad3) {
							if (((D_80222A78[i].unk2 - (D_80052B34->unk4 >> 8)) < 0 ? -(D_80222A78[i].unk2 - (D_80052B34->unk4 >> 8)) : (D_80222A78[i].unk2 - (D_80052B34->unk4 >> 8))) < D_80222A78[i].pad3) {
								waveId0 = wave->padC[1];
								waveId1 = wave->padC[0];
								if (waveId0 == 0xFF || func_8000726C_7E6C(waveId0) != 0) {
									if (waveId1 == 0xFF || func_8000726C_7E6C(waveId1) == 0) {
										shouldRun = 1;
									}
								}
							}
						}
					}
					break;

				case 1:
					if (D_80222A78[i].unkC == (void (*)(void *))func_800AFD48_BECF8 || D_80222A78[i].unkC == NULL) {
						if (D_80047F94 != D_80223780[D_80222A78[i].unk9].unk12) {
							D_80222A78[i].unk4++;
						}
					}
					if (D_8014F820 >= D_80222A78[i].unk4) {
						shouldRun = 1;
					}
					break;

				case 2:
					if (D_80222A78[i].unkC == (void (*)(void *))func_800AFD48_BECF8 || D_80222A78[i].unkC == NULL) {
						if (D_80047F94 != D_80223780[D_80222A78[i].unk9].unk12) {
							D_80222A78[i].unk4++;
						}
					}
					if (D_8014F820 >= D_80222A78[i].unk4) {
						wave = &D_80223780[D_80222A78[i].unk9];
						waveId0 = wave->padC[1];
						waveId1 = wave->padC[0];
						if (waveId0 == 0xFF || func_8000726C_7E6C(waveId0) != 0) {
							if (waveId1 == 0xFF || func_8000726C_7E6C(waveId1) == 0) {
								shouldRun = 1;
							}
						}
					}
					break;

				case 3:
					if ((alienInstances[D_80222A78[i].unk8].unk20 & 0x00300000) != 0) {
						shouldRun = 1;
					}
					break;

				case 4:
					if ((s32)alienInstances[D_80222A78[i].unk8].unk20 < 0) {
						shouldRun = 1;
					}
					break;

				case 5:
					if (D_80149440 == D_80222A78[i].unk8) {
						shouldRun = 1;
					}
					break;

				case 6:
					vehicle = (VehicleInstance *)((u8 *)&vehicleInstances[D_80222A78[i].unk8] + 0x1C);
					if (vehicle->unk1C <= 0) {
						shouldRun = 1;
					}
					break;

				case 7:
					if (((buildingInstances[D_80222A78[i].unk8].unk8 >> 0xC) & 1) == 0) {
						shouldRun = 1;
					}
					break;

				case 8:
					if (D_80052540 == D_80222A78[i].unk8) {
						osSyncPrintf(&D_80142B50_151B00);
						shouldRun = 1;
					}
					break;

				case 9:
					if (D_80223780[D_80222A78[i].unk9].unk10 == 0) {
						shouldRun = 1;
					}
					break;

				case 10:
					D_80223778--;
					if (i < D_80223778) {
						D_80222A78[i] = D_80222A78[D_80223778];
						i--;
					}
					break;
			}

			if (shouldRun != 0) {
				tmp = D_80222A78[i];
				D_80223778--;
				if (i < D_80223778) {
					D_80222A78[i] = D_80222A78[D_80223778];
					i--;
				}
				if (tmp.unkC != NULL) {
					tmp.unkC(&tmp);
				} else {
					func_800AFD48_BECF8(&tmp);
				}
			}

			i++;
		}
	}

	D_8014F820++;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE6CC_BD67C.s")
#endif

void func_800AEBC4_BDB74(s32 arg0) {
	if (currentLevel == 4 && D_80047F94 == 3) {
		func_80013314_13F14();
		D_80052AE0 = gameplayMode;
		gameplayMode = GAMEPLAY_MODE_END_OF_LEVEL;
		return;
	}
	func_800A6FD4_B5F84();
}

// https://decomp.me/scratch/ycEOT
void func_800AEC34_BDBE4(void *arg0)
{
	Unk80222A78 sp28;
	s16 i;
	s16 tmp;
	for (i = 0; i < 0xD0; i++)
	{
		if (D_80047F94 == D_80223780[D_80222A78[i].unk9].unk12)
		{
			D_80222A78[i].unk0 = 0;
		}
	}

	if (D_80052AD0 != 0)
	{
		if (D_8004816A < ((u8)D_800314C4))
		{
			func_800136CC_142CC();
		}
		func_80087E30_96DE0();

		sp28.unk0 = 2;
		sp28.unk1 = 0;
		sp28.unk2 = 0;
		sp28.pad3 = 0;
		sp28.unk8 = 0;sp28.unk4 = D_8014F820 + 0x12C;
		sp28.unk9 = 0;
		sp28.unkC = func_800AEBC4_BDB74;
		func_800AE454_BD404(&sp28);
		func_800BDAF4_CCAA4();
	}
	tmp = ((currentLevel * 10) + D_80047F94) - 10;
	switch (tmp)
	{
	case 0:
		D_80048030 = 6;
		break;

	case 1:
		D_80048030 = 0xB;
		break;

	case 2:
		D_80048030 = 0x10;
		break;

	case 3:
	case 4:
	case 5:
	case 6:
	case 7:
	case 8:
	case 9:
		break;

	case 10:
		D_80048030 = 2;
		break;

	case 11:
		D_80048030 = 6;
		break;

	case 12:
		D_80048030 = 0xA;
		break;

	case 13:
		D_80048030 = 0xD;
		break;

	case 14:
	case 15:
	case 16:
	case 17:
	case 18:
	case 19:
		break;

	case 20:
		D_80048030 = 2;
		break;

	case 21:
		D_80048030 = 5;
		break;

	case 22:
		D_80048030 = 7;
		break;

	case 23:
	case 24:
	case 25:
	case 26:
	case 27:
	case 28:
	case 29:
		break;

	case 30:
		D_80048030 = 2;
		break;

	case 31:
		D_80048030 = 4;
		break;

	case 32:
		D_80048030 = 6;
		break;

	case 33:
		D_80048030 = 9;
		break;

	default:
		break;
	}
}

// spawnAlienWave arg3 changes orientation?
u8 func_800AEE5C_BDE0C(s16 arg0, s16 arg1, u8 waveType, u8 arg3)
{
	Unk80222A78 sp68;
	u8 i;
	u8 leaderId;
	u8 followerIdx;
	AlienInstance *leaderGroup;

	leaderId = 0xFF;
	osSyncPrintf(&D_80142B6C_151B1C, waveType); // Wave type %d
	D_80223780[arg3].unk11 = 0;
	for (i = 0; i < 0xC; i++) {
		if (D_8003BCC0[waveType][i].alienSpecId == 0) {
			break;
		}
		if (i != 0) {
			followerIdx = func_8007956C_8851C(D_8003BCC0[waveType][i].alienSpecId);
			if (followerIdx == 0xFF) {
				break;
			}
			alienInstances[followerIdx].unk25 = leaderId;
			((u8 *)leaderGroup)[i - 1] = followerIdx;
		} else {
			leaderId = func_8007956C_8851C(D_8003BCC0[waveType][i].alienSpecId);
			if (leaderId == 0xFF) {
				return 0;
			}
			leaderGroup = &alienInstances[alienInstances[leaderId].unk25];
			if (waveType == ALIEN_WAVE_TYPE_UNK1F) {
				sp68.unk0 = 3;
				sp68.unk8 = leaderId;
				sp68.unkC = func_800AEC34_BDBE4;
				func_800AE454_BD404(&sp68);
			}
			if (alienInstances[leaderId].specIndex == ALIEN_SPEC_HARVESTER) {
				alienInstances[leaderId].unk26 = 4;
			}
			followerIdx = leaderId;
		}

		alienInstances[followerIdx].unk3E = arg3;
		alienInstances[followerIdx].unk3D = D_80223780[arg3].unk13;
		D_80223780[arg3].unk10++;
		alienInstances[followerIdx].unk0 = D_8003BCC0[waveType][i].xOffset + arg0;
		alienInstances[followerIdx].unk4 = D_8003BCC0[waveType][i].zOffset + arg1;
		alienInstances[followerIdx].unk2E = alienInstances[followerIdx].unk0;
		alienInstances[followerIdx].unk32 = alienInstances[followerIdx].unk4;
		func_8011E6FC_12D6AC(alienInstances[followerIdx].unk0, alienInstances[followerIdx].unk4, &alienInstances[followerIdx].unk2);
		alienInstances[followerIdx].unk1B = func_800B0F20_BFED0(alienInstances[followerIdx].unk0, alienInstances[followerIdx].unk4);
		alienInstances[followerIdx].unkE = alienInstances[followerIdx].unk6 = D_8003BCC0[waveType][i].unk4 + (D_80223780[arg3].unkF << 8);
		func_80080510_8F4C0(followerIdx);
	}

	return leaderId;
}

void func_800AF0C0_BE070(s16 arg0, s16 arg1, u8 arg2)
{
	s16 var_a1;

	if (currentLevel == 3 && (arg2 == 9 || arg2 == 8))
	{
		return;
	}

	var_a1 = func_800B84D0_C7480(arg0, arg1) / 0x100;
	if ((alienSpecs[arg2].unk54 & 0x81) != 0 && var_a1 < D_80222A70)
	{
		var_a1 = D_80222A70;
	}
	var_a1 += alienSpecs[arg2].unk58;
	func_800CF80C_DE7BC(arg0, var_a1, arg1, alienSpecs[arg2].unkC * 1.5, 0xA0, 0xFF, 0, 0);
}

void func_800AF1F8_BE1A8(s16 arg0, s16 arg1, u8 arg2)
{
  u8 i;
	s16 temp, temp2;
  
  for (i = 0; i < 0xC; i++)
  {
	if (!D_8003BCC0[arg2][i].alienSpecId)
	{
	  return;
	}
	temp = D_8003BCC0[arg2][i].xOffset + arg0;
	temp2 = D_8003BCC0[arg2][i].zOffset + arg1;
	func_800AF0C0_BE070(temp, temp2, D_8003BCC0[arg2][i].alienSpecId);
  }
}

void func_800AF2BC_BE26C(void *arg0) { func_80017B08_18708(((u8 *)arg0)[8]); }

void func_800AF2DC_BE28C(s32 arg0, s32 arg1) {
	Unk80222A78 tmp;
	tmp.unk8 = arg0;
	tmp.unk0 = 2;
	tmp.unk4 = arg1 + D_8014F820;
	tmp.unkC = func_800AF2BC_BE26C;
	func_800AE454_BD404(&tmp);
}

void func_800AF324_BE2D4(s32 arg0) { func_80088000_96FB0(-1); }

// guess_initTriggers
void func_800AF348_BE2F8(s32 arg0) {
	Unk80222A78 tmp;
	tmp.unk8 = 0;
	tmp.unk0 = 2;
	tmp.unk4 = arg0 + D_8014F820;
	tmp.unkC = func_800AF324_BE2D4;
	func_800AE454_BD404(&tmp);
}

void func_800AF390_BE340(Unk80222A78 *arg0) {
	arg0->unk0 = 1;
	arg0->unkC = 0;
	func_800AE454_BD404(arg0);
}

void func_800AF3B8_BE368(Unk80222A78 *arg0) {
	s32 sp1C;

	sp1C = D_80223780[arg0->unk9].padC[2] * 200;
	if (sp1C != 0) {
		osSyncPrintf(&D_80142B7C_151B2C, arg0->unk9, sp1C / 20, arg0); // Create positional %d in %d seconds
		arg0->unk0 = 2;
		arg0->unk4 = sp1C + D_8014F820;
		arg0->unkC = func_800AF390_BE340;
		func_800AE454_BD404(arg0);
		return;
	}
	osSyncPrintf(&D_80142BA0_151B50, arg0->unk9); // Do not regenerate %d
}

void func_800AF474_BE424(s32 arg0) {}
void func_800AF47C_BE42C(s32 arg0) {}
void func_800AF484_BE434(s32 arg0) {}
void func_800AF48C_BE43C(s32 arg0) {}
void func_800AF494_BE444(s32 arg0) {}
void func_800AF49C_BE44C(s32 arg0) {}

void func_800AF4A4_BE454(s32 arg0, s32 arg1, s32 arg2) {
	Unk80222A78 tmp;
	osSyncPrintf(&D_80142BB8_151B68, arg0, arg2); // Wave regenerated %d in %d seconds
	tmp.unk0 = 9;
	tmp.unk1 = 0;
	tmp.unk2 = 0;
	tmp.unk4 = arg1 + D_8014F820;
	tmp.unkC = 0;
	tmp.unk9 = arg0;
	func_800AE454_BD404(&tmp);
	D_80223780[arg0].unk13 = arg2;
}

void func_800AF52C_BE4DC(s32 arg0) {
	if ((D_80048038[arg0] == 1) || (D_80048038[arg0] == 0)) {
		osSyncPrintf(&D_80142BDC_151B8C, arg0); // Wave failed %d
		D_80048038[arg0] = 3;
		if (D_8014CFF0[arg0 * 2] != 0x93) {
			func_800AF764_BE714((s16)D_8014CFF0[arg0 * 2]);
		}
	}
}

void func_800AF5B0_BE560(s32 arg0) {
	if ((D_80048038[arg0] == 1) || (D_80048038[arg0] == 0)) {
		osSyncPrintf(&D_80142BEC_151B9C, arg0); // Wave successful %d
		D_80048038[arg0] = 2;
		if (D_8014CFF1[arg0 * 2] != 0x93) {
			func_800AF764_BE714((s16)D_8014CFF1[arg0 * 2]);
		}
	}
}


void func_800AF634_BE5E4(Unk80222A78 *arg0) {
	u8 alienIdx = arg0->unk8;
	AlienInstance *parent;
	s32 waveIndex;

	osSyncPrintf(&D_80142C00_151BB0, alienInstances[alienIdx].unk3E);
	if (alienInstances[alienIdx].specIndex == ALIEN_SPEC_HARVESTER) {
		parent = alienInstances + alienInstances[alienIdx].unk25;
		waveIndex = alienInstances[alienIdx].unk3E;

		if ((parent->unk20 & 0x4000) != 0) {
			if (D_80223780[waveIndex].padC[2] != 0) {
				func_800AF4A4_BE454(waveIndex, D_80223780[waveIndex].padC[2] * 0xC8, alienInstances[alienIdx].unk3D);
			}
		}
		if ((parent->unk20 & 0x8000) != 0) {
			func_800AF5B0_BE560(arg0->unk9);
			func_800AFBA4_BEB54(D_80223780[waveIndex].xPosition, D_80223780[waveIndex].yPosition);
		} else {
			func_800AF52C_BE4DC(arg0->unk9);
		}
	}
}

void func_800AF764_BE714(s16 arg0) {
	Unk80222A78 tmp;
	s32 idx;
	idx = arg0;
	tmp.unk9 = idx;
	tmp.unk4 = D_80223780[idx].unk8 + D_8014F820 + 0xA;
	tmp.unk0 = 2;
	tmp.unkC = func_800AFD48_BECF8;
	func_800AE454_BD404(&tmp);
}

void func_800AF7D4_BE784(Unk80222A78 *arg0) {
	Unk80222A78 tmp;
	s32 idx;
	idx = arg0->unk9;
	if (D_80223780[idx].waveSpecId != -1) {
		tmp.unk9 = idx;
		tmp.unk4 = D_80223780[idx].unk8 + D_8014F820;
		tmp.unk0 = 2;
		tmp.unkC = func_800AFD48_BECF8;
	} else {
		tmp.unkC = func_800AFFE8_BEF98;
		tmp.unk0 = 2;
		tmp.unk4 = D_8014F820 + 0x32;
	}
	func_800AE454_BD404(&tmp);
}

void func_800AF870_BE820(Unk80222A78 *arg0) {
	func_800AEE5C_BDE0C((s16)((arg0->unk1 << 8) + 0x80), (s16)((arg0->unk2 << 8) + 0x80), arg0->unk9, 0xFF);
}

void func_800AF8C4_BE874(Unk80222A78 *arg0) {
	Unk80222A78 tmp;
	func_800AF1F8_BE1A8((s16)((arg0->unk1 << 8) + 0x80), (s16)((arg0->unk2 << 8) + 0x80), arg0->unk9);
	tmp.unk1 = arg0->unk1;
	tmp.unk2 = arg0->unk2;
	tmp.unk9 = arg0->unk9;
	tmp.unk4 = D_8014F820 + 0x12;
	tmp.unk0 = 2;
	tmp.unkC = func_800AF870_BE820;
	func_800AE454_BD404(&tmp);
}

void func_800AF95C_BE90C(s16 arg0, s16 arg1, s32 arg2, s32 arg3) {
	Unk80222A78 tmp;
	tmp.unk1 = arg0 >> 8;
	tmp.unk2 = arg1 >> 8;
	tmp.unk9 = arg2;
	tmp.unk4 = arg3 + D_8014F820;
	tmp.unk0 = 2;
	tmp.unkC = func_800AF8C4_BE874;
	func_800AE454_BD404(&tmp);
}

void func_800AF9C0_BE970(Unk80222A78 *arg0)
{
  u8 alienIdx;
	
  alienIdx = func_8007956C_8851C(arg0->unk9);
  if (alienIdx != 0xFF)
  {
	alienInstances[alienIdx].unk25 = arg0->unk8;
	alienInstances[alienIdx].unk0 = (arg0->unk1 << 8) + 0x80;
	alienInstances[alienIdx].unk4 = (arg0->unk2 << 8) + 0x80;
	alienInstances[alienIdx].unk2E = alienInstances[alienIdx].unk0;
	alienInstances[alienIdx].unk32 = alienInstances[alienIdx].unk4;
	alienInstances[alienIdx].unk1B = func_800B0F20_BFED0(alienInstances[alienIdx].unk0, alienInstances[alienIdx].unk4);
	func_8011E6FC_12D6AC(
		alienInstances[alienIdx].unk0,
		alienInstances[alienIdx].unk4,
		&alienInstances[alienIdx].unk2);
	if (arg0->unk8 != 0xFF)
	{
	  alienInstances[alienIdx].unkE = alienInstances[arg0->unk8].unkE;
	}
  }
}

void func_800AFA98_BEA48(Unk80222A78 *arg0) {
	Unk80222A78 tmp;
	func_800AF0C0_BE070((s16)((arg0->unk1 << 8) + 0x80), (s16)((arg0->unk2 << 8) + 0x80), arg0->unk9);
	tmp.unk1 = arg0->unk1;
	tmp.unk2 = arg0->unk2;
	tmp.unk9 = arg0->unk9;
	tmp.unk8 = arg0->unk8;
	tmp.unk4 = D_8014F820 + 0x12;
	tmp.unk0 = 2;
	tmp.unkC = func_800AF9C0_BE970;
	func_800AE454_BD404(&tmp);
}

void func_800AFB38_BEAE8(s16 arg0, s16 arg1, s32 arg2, s32 arg3, s32 arg4) {
	Unk80222A78 tmp;
	tmp.unk1 = arg0 >> 8;
	tmp.unk2 = arg1 >> 8;
	tmp.unk9 = arg2;
	tmp.unk8 = arg3;
	tmp.unk4 = arg4 + D_8014F820;
	tmp.unk0 = 2;
	tmp.unkC = func_800AFA98_BEA48;
	func_800AE454_BD404(&tmp);
}

void func_800AFBA4_BEB54(s16 arg0, s16 arg1) {
	func_800AFB38_BEAE8(arg0, arg1, 0x16, 0xFF, 0x96);
	func_8001A650_1B250(0x18);
	D_80031410 = 1;
}

void func_800AFBF8_BEBA8(Unk80222A78 *arg0)
{
  Unk80222A78 tmp;
	s32 var1;
	s32 var2;
	s32 var3;
	s32 var4;
	s32 var5;
  u8 alienIdx;
	s32 var6;
  u8 waveIdx;
  waveIdx = arg0->unk9;
  alienIdx = func_800AEE5C_BDE0C(D_80223780[waveIdx].xPosition, D_80223780[waveIdx].yPosition, D_80223780[waveIdx].waveSpecId, waveIdx);
  D_80048038[waveIdx] = 1;
  if ((*(D_80223780 + waveIdx)).waveSpecId == 0x1C)
  {
	tmp.unk1 = (s8) (((s16) D_80223780[waveIdx].xPosition) >> 8);
	tmp.unk2 = (s8) (((s16) D_80223780[waveIdx].yPosition) >> 8);
	tmp.unkC = func_800B0390_BF340;
	tmp.unk0 = 3;
	tmp.unk8 = alienIdx;
	if (func_800AE454_BD404(&tmp) == (-1))
	{
	  func_8001A650_1B250(7);
	  func_800AE3AC_BD35C(&tmp);
	}
  }
  if (alienInstances[alienIdx].specIndex == ALIEN_SPEC_HARVESTER)
  {
	tmp.unk9 = waveIdx;
	tmp.unk8 = alienIdx;
	tmp.unkC = func_800AF634_BE5E4;
	tmp.unk0 = 3;
	func_800AE454_BD404(&tmp);
	return;
  }
  if (arg0->pad3 != 0)
  {
	arg0->unkC = func_800AF3B8_BE368;
	arg0->unk0 = 0xA;
	func_800AE454_BD404(arg0);
  }
}

void func_800AFD48_BECF8(Unk80222A78 *arg0) {
	Unk80222A78 tmp;
	u8 waveIdx;

	waveIdx = arg0->unk9;
	func_800AF1F8_BE1A8(D_80223780[waveIdx].xPosition, D_80223780[waveIdx].yPosition, D_80223780[waveIdx].waveSpecId);
	tmp.unk4 = D_8014F820 + 0x12;
	tmp.unk0 = 2;
	tmp.unkC = func_800AFBF8_BEBA8;
	tmp.unk9 = waveIdx;
	if (arg0->unk0 == 1 && D_8003BCC0[(s8)D_80223780[waveIdx].waveSpecId][0].alienSpecId != 0x19) {
		tmp.unk1 = arg0->unk1;
		tmp.unk2 = arg0->unk2;
		tmp.pad3 = arg0->pad3;
	} else {
		tmp.pad3 = 0;
	}
	if (D_8003BCC0[(s8)D_80223780[waveIdx].waveSpecId][0].alienSpecId == 0x19) {
		func_8001A650_1B250(0x17);
		func_800BECE0_CDC90();
	}
	func_800AE454_BD404(&tmp);
}

// CURRENT(1255)
#ifdef NON_MATCHING
void func_800AFE68_BEE18(Unk80222A78 *arg0) {
	s32 sp34;
	s32 sp30;
	s32 sp2C;
	s32 sp28;
	s32 sp24;
	s32 sp20;
	s32 temp;
	s16 sp22;

	if (alienInstances[arg0->unk8].specIndex == ALIEN_SPEC_HARVESTER) {
		sp24 = (s32) alienInstances[arg0->unk8].unk0;
		sp20 = (s32) alienInstances[arg0->unk8].unk4;
		temp = coss(alienInstances[arg0->unk8].unkE);
		sp24 = (s32) ((f64) sp24 - (400.0 * ((f64) (f32) temp / 32768.0)));
		temp = sins(alienInstances[arg0->unk8].unkE);
		sp22 = (s16) (s32) ((f64) sp20 - (400.0 * ((f64) (f32) temp / 32768.0)));
		func_800AFB38_BEAE8((s16) sp24, sp22, arg0->unk9, arg0->unk8, 0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFE68_BEE18.s")
#endif

void func_800AFF9C_BEF4C(s32 arg0, s32 arg1, s32 arg2) {
	Unk80222A78 tmp;
	tmp.unk0 = 2;
	tmp.unk8 = arg0;
	tmp.unk9 = arg1;
	tmp.unk4 = arg2 + D_8014F820;
	tmp.unkC = func_800AFE68_BEE18;
	func_800AE454_BD404(&tmp);
}

void func_800AFFE8_BEF98(s32 arg0) {}

void func_800AFFF0_BEFA0(s32 arg0) {
	D_801493E0 = 0;
}

void func_800B0000_BEFB0(s32 arg0) {
	D_801493E0 = 1;
	D_801493E2 = 1;
}

void func_800B001C_BEFCC(u16 arg0) {
	Unk80222A78 tmp;
	tmp.unk0 = 2;
	tmp.unk4 = arg0 + D_8014F820;
	tmp.unkC = func_800B0068_BF018;
	func_800AE454_BD404(&tmp);
}

void func_800B0068_BF018(void *arg0) {
	Unk80222A78 tmp;
	tmp.unk0 = 2;
	tmp.unk4 = D_8014F820 + 0x20;
	tmp.unkC = func_800AFFF0_BEFA0;
	func_800FDEA8_10CE58(D_80052B2C, 1);
	D_801493E2 = 0;
	func_800CF80C_DE7BC(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, -0x64, 0xA0, 0xFF, 0, 1);
	func_800FB430_10A3E0(D_80052B34, 0);
	func_800AE454_BD404(&tmp);
}

void func_800B0110_BF0C0(s32 arg0) {
	Unk80222A78 tmp;
	tmp.unk0 = 2;
	tmp.unk4 = D_8014F820 + 0x23;
	tmp.unkC = func_800B0000_BEFB0;
	func_800CF80C_DE7BC(D_80052B34->unk0, D_80052B34->unk2, D_80052B34->unk4, -0x64, 0xA0, 0xFF, 0, 0);
	func_800AE454_BD404(&tmp);
}

void func_800B018C_BF13C(s32 arg0) {
	Unk80222A78 tmp;
	func_80013314_13F14();
	gameplayMode = GAMEPLAY_MODE_END_OF_LEVEL;
	tmp.unk0 = 2;
	tmp.unk4 = D_8014F820 + 0xC8;
	tmp.unkC = func_800B0068_BF018;
	func_800AE454_BD404(&tmp);
}

void func_800B01E4_BF194(void *arg0) {
	Unk80222A78 tmp;
	func_800136CC_142CC();
	if (D_80052ACD & 0x10) {
		func_80006DAC_79AC(0x50, 1);
		return;
	}
	if (currentLevel != 5) {
		tmp.unk0 = 2;
		tmp.unk4 = D_8014F820 + 0x3C;
		tmp.unkC = func_800B018C_BF13C;
		func_800AE454_BD404(&tmp);
		func_80006DAC_79AC(0x96, 2);
		return;
	}
	func_80006DAC_79AC(0x50, 2);
}

void func_800B0288_BF238(s32 arg0) {
	Unk80222A78 tmp;
	tmp.unk0 = 2;
	if (currentLevel != 1) {
		if (currentLevel == 5) {
			return;
		}
		tmp.unk4 = D_8014F820 + 0x10E;
	} else {
		tmp.unk4 = D_8014F820 + 0x172;
	}
	tmp.unkC = func_800B01E4_BF194;
	func_800AE454_BD404(&tmp);
}

void func_800B02FC_BF2AC(Unk80222A78 *arg0) {
	u8 idx = arg0->unk2;
	D_8014F828 += 1;
	alienInstances[idx].unk20 |= (1 << (arg0->unk1 + 0xB));
}

void func_800B034C_BF2FC(void) {
	Unk80222A78 tmp;
	tmp.unk0 = 2;
	tmp.unk4 = D_8014F820 + 0x50;
	tmp.unkC = func_800B01E4_BF194;
	func_800AE454_BD404(&tmp);
}

void func_800B0390_BF340(Unk80222A78 *arg0) {
	func_800AE2C0_BD270();
	D_80157F94 = arg0->unk8;
	func_802D4CD0_18D7E0(0x14, 0);
}

#ifdef NON_MATCHING
// CURRENT(1138)
u8 func_800B03CC_BF37C(u8 arg0, s16 arg1, s16 arg2) {
	Unk80222A78 sp60;
	volatile u8 sp5F;
	u8 sp5E;
	AlienInstance *sp58;
	s32 sp4C;
	AlienInstance *leader;
	u8 temp_v0;
	s16 i;

	if (currentLevel != 5) {
		func_80011A40_12640(6, D_8006AA70);
	}

	temp_v0 = func_8007956C_8851C(D_8003CEC6[arg0 * 0x28]);
	sp5E = temp_v0;
	if ((temp_v0 & 0xFF) == 0xFF) {
		return 0xFF;
	}

	leader = &alienInstances[temp_v0];
	sp5F = temp_v0;
	leader->unk0 = arg1;
	leader->unk4 = arg2;
	leader->unk1B = (u8)func_800B0F20_BFED0(arg1, arg2);
	leader->unk2C = 0;

	if (currentLevel == 5) {
		leader->unkE = 0;
		leader->unk6 = leader->unkE;
	} else {
		leader->unkE = 0x4000;
		leader->unk6 = leader->unkE;
	}

	sp58 = &alienInstances[leader->unk25];
	*(s16 *)&sp58->unk24 = arg1;
	*(s16 *)&sp58->unk26 = arg2;
	D_80140AC4_14FA74 = (s32)leader;
	sp4C = sp5F;

	osSyncPrintf(&D_80142C14_151BC4, sp5F, leader->unk25);
	D_80140AB0_14FA60[0] = &alienInstances[sp5F];

	i = 1;
	while (i < 5) {
		u8 slotSpec;
		u8 followerId;

		slotSpec = ((u8 *)&D_8003CEC0[arg0])[i * 8 + 6];
		if (slotSpec == 0) {
			break;
		}

		followerId = func_8007956C_8851C(slotSpec);
		if (followerId == 0xFF) {
			leader->unk20 |= (1 << (i + 0xB));
		} else {
			alienInstances[followerId].unk0 = *(s16 *)&((u8 *)&D_8003CEC0[arg0])[i * 8 + 4] + arg1;
			alienInstances[followerId].unk4 = arg2 - *(s16 *)&((u8 *)&D_8003CEC0[arg0])[i * 8];
			alienInstances[followerId].unk25 = sp5F;
			alienInstances[followerId].unk1B = leader->unk1B;

			sp60.unk0 = 3;
			sp60.unk1 = i;
			sp60.unk2 = (s8)sp4C;
			sp60.unk8 = followerId;
			sp60.unkC = func_800B02FC_BF2AC;
			func_800AE454_BD404(&sp60);

			osSyncPrintf(&D_80142C28_151BD8, followerId);
			((u8 *)sp58)[i - 1] = followerId;
			D_80140AB0_14FA60[i] = &alienInstances[followerId];
		}

		i++;
	}

	sp60.unk0 = 3;
	sp60.unk8 = sp5E;
	sp60.unkC = func_800B0288_BF238;
	func_800AE454_BD404(&sp60);

	((s32 *)D_8013D8C0_14C870)[0] = 0;
	D_8014F828 = 0;
	D_801493E2 = 1;

	return sp5F;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B03CC_BF37C.s")
#endif

void func_800B06C4_BF674(Unk80222A78 *arg0) {
	func_800B03CC_BF37C(arg0->unk8, (s16)((arg0->unk1 << 8) + 0x80), (s16)((arg0->unk2 << 8) + 0x80));
}

// Spawn boss alien at position, kind of
void func_800B0710_BF6C0(s16 arg0, s16 arg1)
{
	u8 levelIdx;
	u8 alienSpecId;
	s16 y;
	Unk80222A78 tmp;
	s32 g2, g3, g4, g5;

	levelIdx = (currentLevel - 1);
	alienSpecId = D_8003CEC0[levelIdx].unk6;
	y = (func_800B84D0_C7480(arg0, arg1) >> 8) + alienSpecs[alienSpecId].unk58;
	func_800CF80C_DE7BC(arg0, y, arg1, D_8013D91C[currentLevel].unk2, 0xA0, 0xFF, 0, 0);
	func_800BECF0_CDCA0();
	tmp.unk1 = arg0 >> 8;
	tmp.unk2 = arg1 >> 8;
	tmp.unk8 = levelIdx;
	tmp.unk0 = 2;
	tmp.unk4 = D_8014F820 + 0x12;
	tmp.unkC = func_800B06C4_BF674;
	func_800AE454_BD404(&tmp);
}

void func_800B0830_BF7E0(s32 arg0)
{
  AlienWaveInstance *new_var;
  s32 v0;
  Unk80222A78 *a0;
  v0 = D_80223778;
  while (v0--)
  {
	a0 = &D_80222A78[v0];
	if (((a0->unkC == (void (*)(void *))func_800AFD48_BECF8) || (a0->unkC == 0)) && 
	  (*(new_var = &D_80223780[a0->unk9])).waveSpecId == 0x1F &&
	  ((*new_var).unk12 < arg0))
	{
	  a0->unk0 = 0;
	  D_80048038[a0->unk9] = 0;
	}
  }
}

void func_800B08DC_BF88C(s32 arg0)
{
  s32 v0 = D_80223778;
  Unk80222A78 *a0;
  while (v0--)
  {
	a0 = &D_80222A78[v0];
	if (((a0->unkC == (void (*)(void *))func_800AFD48_BECF8) || (a0->unkC == 0)) &&
	  D_8003BCC0[D_80223780[a0->unk9].waveSpecId][0].alienSpecId != 0x18 &&
	  (D_80223780[a0->unk9].unk12 < arg0))
	{
		if (((!a0->unkC) && (!a0->unkC)) && (!a0->unkC)){}
	  a0->unk0 = 0;
	  osSyncPrintf(&D_80142C40_151BF0, v0);
	}
  }
}

s32 func_800B0A00_BF9B0(void) { return D_80047F98; }
