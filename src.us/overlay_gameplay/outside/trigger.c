#include <ultra64.h>
#include "common.h"


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
		sourceTaggedPrintF(&D_80142AB0_151A60, &D_80142AD0_151A80, 0x6D, &D_80223778); // nextTrigger < MAX_GAME_TRIGGERS
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
		sourceTaggedPrintF(&D_80142AE0_151A90, &D_80142B00_151AB0, 0x8F, (s32 *)arg0);
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
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE588_BD538.s")

// guess_checkTriggers
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE6CC_BD67C.s")

void func_800AEBC4_BDB74(s32 arg0) {
	if (currentLevel == 4 && D_80047F94 == 3) {
		func_80013314_13F14();
		D_80052AE0 = gameplayMode;
		gameplayMode = GAMEPLAY_MODE_END_OF_LEVEL;
		return;
	}
	func_800A6FD4_B5F84();
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AEC34_BDBE4.s")

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
			if (waveType == 0x1F) {
				sp68.unk0 = 3;
				sp68.unk8 = leaderId;
				sp68.unkC = func_800AEC34_BDBE4;
				func_800AE454_BD404(&sp68);
			}
			if (alienInstances[leaderId].specIndex == 0x19) {
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

#ifdef NON_MATCHING
void func_800AF0C0_BE070(s16 arg0, s16 arg1, u8 arg2) {
	register s16 var_a1;
	s32 temp_a0;
	register AlienSpec *temp_v1;

	if (currentLevel == 3 && (arg2 == 9 || arg2 == 8)) {
		return;
	}

	temp_v1 = &alienSpecs[arg2];
	temp_a0 = func_800B84D0_C7480(arg0, arg1);
	temp_a0 /= 0x100;
	var_a1 = (s16)temp_a0;
	if ((temp_v1->unk54 & 0x81) != 0 && (s16)temp_a0 < D_80222A70) {
		var_a1 = D_80222A70;
	}

	func_800CF80C_DE7BC(arg0, var_a1 + temp_v1->unk58, arg1, (s16)((s32)((f64)temp_v1->unkC * 1.5)), 0xA0, 0xFF, 0, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF0C0_BE070.s")
#endif

// https://decomp.me/scratch/xEzEG
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
	if (alienInstances[alienIdx].specIndex == 0x19) {
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
  if (alienInstances[alienIdx].specIndex == 0x19)
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
	if (arg0->unk0 == 1 && *(&D_8003BCC6 + (s8)D_80223780[waveIdx].waveSpecId * 0x60) != 0x19) {
		tmp.unk1 = arg0->unk1;
		tmp.unk2 = arg0->unk2;
		tmp.pad3 = arg0->pad3;
	} else {
		tmp.pad3 = 0;
	}
	if (*(&D_8003BCC6 + (s8)D_80223780[waveIdx].waveSpecId * 0x60) == 0x19) {
		func_8001A650_1B250(0x17);
		func_800BECE0_CDC90();
	}
	func_800AE454_BD404(&tmp);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFE68_BEE18.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B03CC_BF37C.s")

void func_800B06C4_BF674(Unk80222A78 *arg0) {
	func_800B03CC_BF37C(arg0->unk8, (s16)((arg0->unk1 << 8) + 0x80), (s16)((arg0->unk2 << 8) + 0x80), arg0);
}

#ifdef NON_MATCHING
void func_800B0710_BF6C0(s16 arg0, s16 arg1) {
	Unk80222A78 tmp;
	s16 y;
	u8 levelIdx;
	u8 missionIdx;

	levelIdx = (currentLevel - 1) & 0xFF;
	missionIdx = ((u8 *)D_8003CEC6)[levelIdx * 0x28];
	y = ((s16 *)((u8 *)D_802566D8 + (missionIdx * 0x68)))[0] + (func_800B84D0_C7480(arg0, arg1) >> 8);

	func_800CF80C_DE7BC(
		arg0,
		y,
		arg1,
		((s16 *)((u8 *)D_8013D91E_14C8CE + (currentLevel * 4)))[0],
		0xA0,
		0xFF,
		0,
		0
	);

	func_800BECF0_CDCA0();

	tmp.unk0 = 2;
	tmp.unk1 = (s8)(arg0 >> 8);
	tmp.unk2 = (s8)(arg1 >> 8);
	tmp.unk4 = D_8014F820 + 0x12;
	tmp.unkC = func_800B06C4_BF674;
	tmp.unk8 = levelIdx;

	func_800AE454_BD404(&tmp);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0710_BF6C0.s")
#endif

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

#ifdef NON_MATCHING
// Score 15: only v0/v1 register difference for CSE'd &D_80223780[a0->unk9] pointer
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
	  a0->unk0 = 0;
	  osSyncPrintf(&D_80142C40_151BF0, v0);
	}
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B08DC_BF88C.s")
#endif

s32 func_800B0A00_BF9B0(void) { return D_80047F98; }
