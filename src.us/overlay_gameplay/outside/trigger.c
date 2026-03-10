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
		sourceTaggedPrintF(&D_80142AB0, &D_80142AD0, 0x6D, &D_80223778); // nextTrigger < MAX_GAME_TRIGGERS
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
		(arg0->unkC == func_800AFD48_BECF8 || arg0->unkC == 0)) {
		arg0->unk1 = (s8)((s16)D_80223780[arg0->pad9[0]].xPosition >> 8);
		arg0->unk2 = (s8)((s16)D_80223780[arg0->pad9[0]].yPosition >> 8);
	}
	D_80222A78[0] = *arg0;
}

// Data waits at 0x802232C8 (Greece) until the trigger is executed
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AE454_BD404.s")

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
	osSyncPrintf(&D_80142B6C, waveType);
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF0C0_BE070.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF1F8_BE1A8.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF3B8_BE368.s")

void func_800AF474_BE424(s32 arg0) {}
void func_800AF47C_BE42C(s32 arg0) {}
void func_800AF484_BE434(s32 arg0) {}
void func_800AF48C_BE43C(s32 arg0) {}
void func_800AF494_BE444(s32 arg0) {}
void func_800AF49C_BE44C(s32 arg0) {}

void func_800AF4A4_BE454(s32 arg0, s32 arg1, s32 arg2) {
	Unk80222A78 tmp;
	osSyncPrintf(&D_80142BB8, arg0, arg2); // Wave regenerated %d in %d seconds
	tmp.unk0 = 9;
	tmp.unk1 = 0;
	tmp.unk2 = 0;
	tmp.unk4 = arg1 + D_8014F820;
	tmp.unkC = 0;
	tmp.pad9[0] = arg0;
	func_800AE454_BD404(&tmp);
	D_80223780[arg0].unk13 = arg2;
}

#ifdef NON_MATCHING
void func_800AF52C_BE4DC(s32 arg0) {
	u8 *ptr;
	u8 val;
	ptr = D_80048038 + arg0;
	val = *ptr;
	if (val == 1 || val == 0) {
		osSyncPrintf(&D_80142BDC, arg0);
		*ptr = 3;
		if (D_8014CFF0[arg0 * 2] != 0x93) {
			func_800AF764_BE714((s16)D_8014CFF0[arg0 * 2]);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF52C_BE4DC.s")
#endif

#ifdef NON_MATCHING
void func_800AF5B0_BE560(s32 arg0) {
	u8 *ptr;
	u8 val;
	ptr = D_80048038 + arg0;
	val = *ptr;
	if (val == 1 || val == 0) {
		osSyncPrintf(&D_80142BEC, arg0);
		*ptr = 2;
		if (D_8014CFF1[arg0 * 2] != 0x93) {
			func_800AF764_BE714((s16)D_8014CFF1[arg0 * 2]);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF5B0_BE560.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF634_BE5E4.s")

#ifdef NON_MATCHING
void func_800AF764_BE714(s16 arg0) {
	s32 sp18;
	s32 sp1C;
	Unk80222A78 tmp;
	sp18 = D_80223780[arg0].unk8;
	sp1C = D_8014F820;
	tmp.pad9[0] = arg0;
	tmp.unk4 = sp18 + sp1C + 0xA;
	tmp.unk0 = 2;
	tmp.unkC = func_800AFD48_BECF8;
	func_800AE454_BD404(&tmp);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF764_BE714.s")
#endif

void func_800AF7D4_BE784(Unk80222A78 *arg0) {
	Unk80222A78 tmp;
	s32 idx;
	idx = arg0->pad9[0];
	if (D_80223780[idx].waveSpecId != -1) {
		tmp.pad9[0] = idx;
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
	func_800AEE5C_BDE0C((s16)((arg0->unk1 << 8) + 0x80), (s16)((arg0->unk2 << 8) + 0x80), arg0->pad9[0], 0xFF);
}

#ifdef NON_MATCHING
void func_800AF8C4_BE874(Unk80222A78 *arg0) {
	Unk80222A78 tmp;
	func_800AF1F8_BE1A8((s16)((arg0->unk1 << 8) + 0x80), (s16)((arg0->unk2 << 8) + 0x80), arg0->pad9[0], arg0);
	tmp.unk1 = arg0->unk1;
	tmp.unk4 = D_8014F820 + 0x12;
	tmp.unk0 = 2;
	tmp.unkC = func_800AF870_BE820;
	tmp.unk2 = arg0->unk2;
	tmp.pad9[0] = arg0->pad9[0];
	func_800AE454_BD404(&tmp);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF8C4_BE874.s")
#endif

void func_800AF95C_BE90C(s16 arg0, s16 arg1, s32 arg2, s32 arg3) {
	Unk80222A78 tmp;
	tmp.unk1 = arg0 >> 8;
	tmp.unk2 = arg1 >> 8;
	tmp.pad9[0] = arg2;
	tmp.unk4 = arg3 + D_8014F820;
	tmp.unk0 = 2;
	tmp.unkC = func_800AF8C4_BE874;
	func_800AE454_BD404(&tmp);
}

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AF9C0_BE970.s")

void func_800AFA98_BEA48(Unk80222A78 *arg0) {
	Unk80222A78 tmp;
	func_800AF0C0_BE070((s16)((arg0->unk1 << 8) + 0x80), (s16)((arg0->unk2 << 8) + 0x80), arg0->pad9[0], arg0);
	tmp.unk1 = arg0->unk1;
	tmp.unk2 = arg0->unk2;
	tmp.pad9[0] = arg0->pad9[0];
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
	tmp.pad9[0] = arg2;
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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFBF8_BEBA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFD48_BECF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800AFE68_BEE18.s")

void func_800AFF9C_BEF4C(s32 arg0, s32 arg1, s32 arg2) {
	Unk80222A78 tmp;
	tmp.unk0 = 2;
	tmp.unk8 = arg0;
	tmp.pad9[0] = arg1;
	tmp.unk4 = arg2 + D_8014F820;
	tmp.unkC = func_800AFE68_BEE18;
	func_800AE454_BD404(&tmp);
}

void func_800AFFE8_BEF98(s32 arg0) {}

void func_800AFFF0_BEFA0(s32 arg0) {
	D_801493E0 = 0;
}

#ifdef NON_MATCHING
void func_800B0000_BEFB0(s32 arg0) { D_801493E0 = 1; D_801493E2 = 1; }
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0000_BEFB0.s")
#endif

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

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0710_BF6C0.s")

#ifdef NON_MATCHING
void func_800B0830_BF7E0(s32 arg0) {
	s32 v0;
	Unk80222A78 *a0;
	v0 = D_80223778;
	if (v0 != 0) {
		v0--;
		a0 = &D_80222A78[v0];
		for (;;) {
			if (a0->unkC == func_800AFD48_BECF8 || a0->unkC == 0) {
				if (D_80223780[a0->pad9[0]].unk0 == 0x1F && D_80223780[a0->pad9[0]].unk12 < arg0) {
					a0->unk0 = 0;
					D_80048038[a0->pad9[0]] = 0;
				}
			}
			a0--;
			if (!v0--) break;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B0830_BF7E0.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/outside/trigger/func_800B08DC_BF88C.s")

s32 func_800B0A00_BF9B0(void) { return D_80047F98; }
