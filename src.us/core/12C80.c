#include <ultra64.h>
#include "common.h"

void func_80012080_12C80(s32 arg0)
{
	s32 *v0;
	s32 *v1;
	if (D_8006AB88 == 0)
	{
		return;
	}
	if (arg0 == -1)
	{
		v0 = D_8006AAD0; v1 = D_8006ABB8;
		for (arg0 = 0; arg0 != 0x10; arg0++)
		{
			v0[arg0] = arg0;
			v1[arg0] = 0;
		}

		D_80031CA0_328A0 = 0;
		return;
	}
	D_8006AAD0[arg0] = arg0;
	D_80031CA0_328A0 -= 1;
}

Unk8006AA84Node *func_80012128_12D28(void) {
	s32 i;
	s32 j;
	s32 *slot;
	Unk8006AA84Node **entry;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	i = 0;
	j = 0;
	if (D_80031CA0_328A0 >= 0x11) {
		return NULL;
	}
	slot = D_8006AAD0;
	do {
		if (*slot != -1) {
			*slot = -1;
			break;
		}
		i++;
		j += 4;
		slot++;
	} while (i != 0x10);
	entry = (Unk8006AA84Node **)((char *)D_8006AA88 + j);
	(*entry)->unk4 = i;
	return *entry;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800121B4_12DB4.s")

void func_800123A4_12FA4(Unk8006AA80Node *arg0, Unk8006AA80Node **arg1, Unk8006AA80Node **arg2) {
	if (D_8006AB88 != 0 && arg0 != NULL) {
		func_80012080_12C80(arg0->unk4);
		if (arg0 == *arg1) {
			*arg1 = arg0->unk34;
			if (*arg1 != NULL) {
				(*arg1)->unk30 = NULL;
				return;
			}
			*arg2 = NULL;
			return;
		}
		arg0->unk30->unk34 = arg0->unk34;
		if (arg0 != *arg2) {
			arg0->unk34->unk30 = arg0->unk30;
			return;
		}
		*arg2 = arg0->unk30;
	}
}

Unk8006AA80Node *func_8001244C_1304C(s16 arg0) {
	Unk8006AA80Node *var_v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	var_v1 = D_8006AA80;
	while (var_v1 != NULL) {
		if (arg0 == var_v1->unk6) {
			return var_v1;
		}
		var_v1 = var_v1->unk34;
	}
	return NULL;
}

Unk8006AA84Node *func_800124A8_130A8(u16 arg0) {
	Unk8006AA84Node *var_v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	var_v1 = D_8006AA84;
	while (var_v1 != NULL) {
		if (arg0 == var_v1->unk0) {
			return var_v1;
		}
		var_v1 = var_v1->unk30;
	}
	return NULL;
}

Unk8006AA84Node *func_80012508_13108(u16 arg0) {
	Unk8006AA84Node *var_v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	var_v1 = D_8006AA84;
	while (var_v1 != NULL) {
		if (arg0 == var_v1->unk10) {
			return var_v1;
		}
		var_v1 = var_v1->unk30;
	}
	return NULL;
}

Unk8006AA80Node *func_80012568_13168(void) {
	Unk8006AA80Node *var_v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	var_v1 = D_8006AA80;
	while (var_v1 != NULL) {
		if (var_v1->unk0 >= 0x82 && var_v1->unk0 < 0x86 && var_v1->unk6 != -1) {
			return var_v1;
		}
		var_v1 = var_v1->unk34;
	}
	return NULL;
}

Unk8006AA80Node *func_800125D8_131D8(void) {
	Unk8006AA80Node *var_v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	var_v1 = D_8006AA80;
	while (var_v1 != NULL) {
		if (var_v1->unk0 >= 0xA && var_v1->unk0 < 0x33) {
			return var_v1;
		}
		var_v1 = var_v1->unk34;
	}
	return NULL;
}

Unk8006AA80Node *func_80012638_13238(u16 arg0, s32 arg1) {
	Unk8006AA80Node *var_v1;
	s32 temp;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	var_v1 = D_8006AA80;
	if (var_v1 != NULL) {
		do {
			if (arg0 == var_v1->unk0) {
				temp = arg1 - var_v1->unk28;
				if (temp < 0x30D40) {
					return var_v1;
				}
			}
			var_v1 = var_v1->unk34;
		} while (var_v1 != NULL);
	}
	return NULL;
}

s32 func_800126B0_132B0(void) {
	Unk8006AA80Node *var_v0;

	if (D_8006AB88 == 0) {
		return 0;
	}
	var_v0 = D_8006AA80;
	while (var_v0 != NULL) {
		if (var_v0->unk0 >= 0xFA && var_v0->unk0 < 0x109 && var_v0->unk6 != -1) {
			return 1;
		}
		var_v0 = var_v0->unk34;
	}
	return 0;
}

Unk8006AA80Node *func_80012720_13320(void) {
	Unk8006AA80Node *v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	v1 = D_8006AA80;
	while (v1 != NULL) {
		if (v1->unk6 == -1) {
			return v1;
		}
		v1 = v1->unk34;
	}
	return NULL;
}

Unk8006AA80Node *func_80012778_13378(s32 arg0) {
	Unk8006AA80Node *v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	v1 = D_8006AA80;
	while (v1 != NULL) {
		if (arg0 == v1->unk2C) {
			return v1;
		}
		v1 = v1->unk34;
	}
	return NULL;
}

Unk8006AA80Node *func_800127CC_133CC(s32 arg0, s16 arg1) {
	Unk8006AA80Node *v1;

	if (D_8006AB88 == 0) {
		return NULL;
	}
	v1 = D_8006AA80;
	while (v1 != NULL) {
		if (arg0 == v1->unk2C && arg1 == v1->unk0) {
			return v1;
		}
		v1 = v1->unk34;
	}
	return NULL;
}

void *func_80012834_13434(void *arg0) {
	void *v1;
	if (D_8006AB88 == 0) {
		return 0;
	}
	v1 = *(void **)((char *)arg0 + 0x30);
	if (*(u16 *)v1 == *(u16 *)arg0) {
		return v1;
	}
}

void func_8001286C_1346C(void) {
	Unk8006AA80Node *node;

	osSyncPrintf(&D_800381C0_38DC0); // Sounds playing
	node = D_8006AA80;
	if (node != NULL) {
		do {
			if (node->unk6 >= 0) {
				alSndpSetSound(D_8006AB10, node->unk6);
				osSyncPrintf(&D_800381D0_38DD0, node->unk0, node->unk2C, node->unk6, alSndpGetState(D_8006AB10), (s32) node->unk20, node->unk28, (s32) node->unk0E);
				//  ID%d obj %lx Slot%d State%d Vol %d T %ld Ct %d
			}
			node = node->unk34;
		} while (node != NULL);
		node = D_8006AA80;
	}
	osSyncPrintf(&D_80038204_38E04);
	if (node != NULL) {
		do {
			if (node->unk6 == -1) {
				osSyncPrintf(&D_80038218_38E18, node->unk0, node->unk2C, node->unk6, alSndpGetState(D_8006AB10), (s32) node->unk20);
				//  Snd ID%d obj %lx Slot%d State%d Vol %d
			}
			node = node->unk34;
		} while (node != NULL);
	}
	node = D_8006AA80;
	osSyncPrintf(&D_80038244_38E44);
	if (node != NULL) {
		do {
			if (node->unk6 == -2) {
				osSyncPrintf(&D_8003825C_38E5C, node->unk0, node->unk2C, node->unk6, alSndpGetState(D_8006AB10), (s32) node->unk20);
				//  Snd ID%d obj %lx Slot%d State%d Vol %d
			}
			node = node->unk34;
		} while (node != NULL);
	}
	osSyncPrintf(&D_80038288_38E88); // .
}

void func_800129FC_135FC(s8 arg0, s8 arg1) {
	s32 devAddr;
	s16 var_a2;

	if (D_8006AB88 != 0) {
		devAddr = D_8006AB44->seqArray[arg0].offset;
		var_a2 = D_8006AB44->seqArray[arg0].len;
		if (var_a2 & 1) {
			var_a2 += 1;
		}
		func_8000F5A8_101A8(devAddr, D_8006AB30[arg1], var_a2);
	}
}

// CURRENT(2715)
#ifdef NON_MATCHING
void func_80012A74_13674(void) {
	ALSynConfig synConfig;
	ALSndpConfig sndpConfig;
	BhAudioGlobals synData;

	synData = D_80033B54_34754;
	D_8006AB88 = 1;

	{
		u8 *p = &D_80165710;
		do {
			p++;
			p[-1] = 0;
		} while ((u32)p < (u32)&D_801ABC10);
	}

	alHeapInit(&D_8006AB98, &D_80165710, 0x46500);

	D_8006AB48 = alHeapDBAlloc(0, 0, &D_8006AB98, 1, (s32)(D_963A70 - D_955300));
	D_8006AB4C = D_8006AB48;
	func_8000F5A8_101A8((s32)D_955300, (s32)D_8006AB48, (s32)(D_963A70 - D_955300));
	alBnkfNew(D_8006AB48, D_963A70);
	D_8006AB8C = D_8006AB48->bankArray[0];
	D_8006AB90 = D_8006AB48->bankArray[1];

	synConfig.maxVVoices = 0x50;
	synConfig.maxPVoices = 0x18;
	synConfig.maxUpdates = 0x200;
	synConfig.dmaproc = 0;
	synConfig.fxType = 6;
	synConfig.outputRate = osAiSetFrequency(0x7D00);
	synConfig.heap = &D_8006AB98;
	synConfig.params = (s32 *)&synData;
	func_80000450_1050(&synConfig, 0xA);

	{
		s32 i;

		for (i = 0; i < 4; i++) {
			D_8006AB50[i].maxVoices   = 0x40;
			D_8006AB50[i].maxEvents   = 0x80;
			D_8006AB50[i].maxChannels = 0x10;
			D_8006AB50[i].heap        = &D_8006AB98;
			D_8006AB50[i].initOsc     = 0;
			D_8006AB50[i].updateOsc   = 0;
			D_8006AB50[i].stopOsc     = 0;
			D_8006AB50[i].debugFlags  = 7;
			D_8006AB18[i] = alHeapDBAlloc(0, 0, &D_8006AB98, 1, 0x7C);
			alCSPNew((ALCSPlayer *)D_8006AB18[i], &D_8006AB50[i]);
			D_8006AB18[i]->unk2C = 0;
			D_8006AB20[i] = alHeapDBAlloc(0, 0, &D_8006AB98, 1, 0xF8);
		}
	}

	sndpConfig.maxSounds = 0x10;
	sndpConfig.maxEvents = 0x80;
	sndpConfig.heap = &D_8006AB98;
	D_8006AB10 = (s32)alHeapDBAlloc(0, 0, &D_8006AB98, 1, 0x54);
	alSndpNew((ALSndPlayer *)D_8006AB10, &sndpConfig);

	{
		s32 i;

		for (i = 0; i < 0x10; i++) {
			D_8006AA88[i] = alHeapDBAlloc(0, 0, &D_8006AB98, 1, 0x38);
		}
	}

	D_8006AA84 = 0;
	D_8006AA80 = 0;
	func_80012080_12C80(-1);

	D_8006AB3C = alHeapDBAlloc(0, 0, &D_8006AB98, 1, 4);
	func_8000F5A8_101A8((s32)D_BBB9B0, (s32)D_8006AB3C, 8);

	{
		ALSeqFile *seqFile;
		u8 *seqBase = D_BBB9B0;
		s16 seqFileSize = (s16)(D_8006AB3C->seqCount * 8 + 4);

		D_8006AB44 = alHeapDBAlloc(0, 0, &D_8006AB98, 1, (s32)(D_8006AB3C->seqCount * 8 + 4));
		func_8000F5A8_101A8((s32)seqBase, (s32)D_8006AB44, (s32)seqFileSize);
		alSeqFileNew((ALSeqFile *)D_8006AB44, seqBase);
		seqFile = (ALSeqFile *)D_8006AB44;

		{
			s16 maxSeqLen = 0;

			if (seqFile->seqCount > 0) {
				s32 i;

				for (i = 0; i < (s32)seqFile->seqCount; i++) {
					if (maxSeqLen < seqFile->seqArray[i].len) {
						maxSeqLen = seqFile->seqArray[i].len;
					}
				}
			}
			if (maxSeqLen & 1) {
				maxSeqLen++;
			}
			{
				s32 i;

				for (i = 0; i < 2; i++) {
					D_8006AB30[i] = (s32)alHeapDBAlloc(0, 0, &D_8006AB98, 1, (s32)maxSeqLen);
				}
			}
		}
	}

	*(s32 *)&D_8004801C = 6;
	D_80048020 = 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80012A74_13674.s")
#endif


s32 func_80012E88_13A88(s8 arg0) {
	if (D_8006AB88 == 0) {
		return 0;
	}
	return D_8006AB18[arg0]->unk2C;
}

void func_80012EC4_13AC4(s8 arg0, s8 arg1)
{
	s16 var_a1;
	if ((D_8006AB88 != 0) && (func_80012E88_13A88(arg1) == 0))
	{
		if (!arg0)
		{
		}
		func_800129FC_135FC(arg0, arg1);
		alSeqpSetBank((ALSeqPlayer *) D_8006AB18[arg1], D_8006AB90);
		alCSeqNew(D_8006AB20[arg1], (u8 *) D_8006AB30[arg1]);
		alSeqpSetSeq((ALSeqPlayer *) D_8006AB18[arg1], (ALSeq *) D_8006AB20[arg1]);
		if (D_80031D28_32928[arg1] == 0)
		{
			if (D_80031CA4 != 5)
			{
				var_a1 = D_80031D74_32974[arg0] * D_80031D64_32964;
			}
			else
			{
				var_a1 = D_80031D74_32974[arg0] * D_80031D60_32960;
			}
		}
		else if (D_80031CA4 != 5)
		{
			var_a1 = ((((D_80031D3C_3293C[arg1] * D_80031D74_32974[arg0]) + ((D_80031D44_32944[arg1] * (D_80031D74_32974[arg0] * D_80031D2C_3292C[arg1])) / D_80031D34_32934[arg1])) * D_80031D64_32964));
		}
		else
		{
			var_a1 = ((D_80031D3C_3293C[arg1] * D_80031D74_32974[arg0]) + ((D_80031D44_32944[arg1] * (D_80031D74_32974[arg0] * D_80031D2C_3292C[arg1])) / D_80031D34_32934[arg1])) * D_80031D60_32960;
		}
		D_80031D1C_3291C[arg1] = arg0;
		alSeqpSetVol((ALSeqPlayer *) D_8006AB18[arg1], var_a1);
		alSeqpPlay((ALSeqPlayer *) D_8006AB18[arg1]);
		D_80031CE4_328E4[arg1] = 1;
	}
}

void func_80013178_13D78(s8 arg0) {
	func_80015C94_16894(arg0, 0x2);
}

void func_800131A4_13DA4(s16 arg0) {
	if (D_80031B58_32758 == 1) {
		if (arg0 == 0) {
			func_80015C94_16894((s8)(arg0 + 0x3C), 2);
		}
		if (arg0 == 3) {
			func_80015C94_16894(0x3D, 2);
		}
	} else {
		func_80015C94_16894((s8)(arg0 + 0x46), 2);
	}
}

void func_8001322C_13E2C(s16 arg0) {
	if (D_80031B58_32758 == 1) {
		if (arg0 == 0) {
			func_80015C94_16894((s8)(arg0 + 0x3B), 2);
			func_80015C94_16894(0x3B, 2);
		}
	} else {
		func_80015C94_16894((s8)(arg0 + 0x3B), 2);
		if (arg0 + 0x3B == 0x3B) {
			func_80015C94_16894((s8)(arg0 + 0x3B), 2);
		}
	}
}

void func_800132CC_13ECC(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x3E, 0xB);
		return;
	}
	func_80015C94_16894(0x4E, 0xB);
}

void func_80013314_13F14(void) {
	D_80031CA4 = -1;
}

// This matches except D_80033C6C_W has to be defined in addition to D_80033C6C_3486C
void func_80013324_13F24(void)
{
	s8 idx;
	s8 arr_val;
	if (D_8006AB88 == 0)
	{
		return;
	}
	if (D_80031CA4 != 3)
	{
		arr_val = D_80033C6C_3486C % 15;
		idx = (s8) arr_val;
		arr_val = D_80033C5C_3485C[idx];
		D_80033C6C_W = D_80033C6C_3486C + 1;
		func_80015C94_16894(arr_val, 3);
	}
}

// https://decomp.me/scratch/wNzpE
#ifdef NON_MATCHING
void func_80013398_13F98(void)
{
  s8 idx;
  s8 arr_val;
  if (D_80031CA4 != 4)
  {
	arr_val = (s8) (D_80033C80_34880 % 16);
	idx = arr_val;
	arr_val = D_80033C70_34870[idx] + 0xF;
	D_80033C80_W = D_80033C80_34880 + 1;
	func_80015C94_16894(arr_val, 4);
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80013398_13F98.s")
#endif

void func_80013410_14010(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x46, 4);
		return;
	}
	func_80015C94_16894(0x56, 4);
}

void __dummy(void) {
}

void func_80013460(void) {
}

void func_80013468_14068(s16 arg0) {
	if (arg0 == 0) {
		func_80015C94_16894((s8)(currentLevel + 0x24), 5);
		return;
	}
	func_80015C94_16894((s8)(arg0 + 0x29), 5);
}

void func_800134CC_140CC(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x3F, 0xC);
		return;
	}
	func_80015C94_16894(0x4F, 0xC);
}

void func_80013514_14114(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x40, 1);
		return;
	}
	func_80015C94_16894(0x50, 1);
}

void func_8001355C_1415C(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x41, 0);
		return;
	}
	func_80015C94_16894(0x51, 0);
}

static void func_800135A4_stub(void) {
}

void playMapMusic(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x42, 8);
		return;
	}
	func_80015C94_16894(0x52, 8);
}

void playInventoryMusic(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x43, 0x9);
		return;
	}
	func_80015C94_16894(0x53, 0x9);
}

void func_8001363C_1423C(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x44, 0xA);
		return;
	}
	func_80015C94_16894(0x54, 0xA);
}

void func_80013684_14284(void) {
	if (D_80031B58_32758 == 1) {
		func_80015C94_16894(0x45, 0xD);
		return;
	}
	func_80015C94_16894(0x55, 0xD);
}

void func_800136CC_142CC(void) {
	func_80015C94_16894(0x23, 0x10);
}

void func_800136F0_142F0(void) {
	if (D_8006AB88 != 0) {
		func_80013324_13F24();
	}
}

// https://decomp.me/scratch/imH5M
#ifdef NON_MATCHING
void func_80013720_14320(void)
{
  s8 sp1F;
  if (D_8006AB88 != 0)
  {
	sp1F = D_80033C88_34888 % 4;
	D_80033C88_W = D_80033C88_34888 + 1;
	osSyncPrintf(&D_8003828C_38E8C, sp1F);
	sp1F = D_80033C84_34884[sp1F] + 0x1F;
	func_80015C94_16894(sp1F, 6);
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80013720_14320.s")
#endif

void func_800137AC_143AC(void) {
	func_80015C94_16894(0x24, 0xF);
}

static void func_800137D0_stub(void) {
}

void func_800137D8(void) {
}

void func_800137E0(void) {
}

void n_alSynFreeFX(s32 arg0) {
}

void func_800137F0_143F0(s32 arg0) {
	if (D_8006AB88 != 0) {
		D_8006ABA8 = arg0;
	}
}

void func_80013810_14410(s8 arg0) {
}

#ifdef NON_MATCHING
void func_80013818_14418(void) {
	f32 sp28;
	f32 temp_f0;
	f32 temp_f14;
	f32 temp_f2;
	s16 var_s0;

	if (D_8006AB88 != 0) {
		func_80017224_17E24();
		for (var_s0 = 0; var_s0 < 2; var_s0++) {
			if (D_80031D28_32928[var_s0] != 0) {
				func_80016CD8_178D8((s8)var_s0);
			}
		}
		if (D_80031D4C_3294C != 0) {
			func_80016E54_17A54();
		}
		if (D_80031CD4_328D4 != -1) {
			D_80031CD4_328D4 -= 1;
			if (D_80031CD4_328D4 == -1) {
				func_80013324_13F24();
			}
		}
		if (((D_80052ACA == 0) || (D_80052ACA == 1) || (D_80052ACA == 2)) && (gameplayMode == 1)) {
			{
				s16 var_v0;
				var_v0 = D_80033C94_34894;
				if (var_v0 > 0) {
					var_v0--;
				}
				D_80033C94_34894 = var_v0;
				if (var_v0 == 0) {
					D_80033C94_34894 = -1;
					sp28 = D_800323BC_32FBC[func_800056D0_62D0(D_80052B34->unk0, D_80052B34->unk4)];
					temp_f0 = ((f32)D_80052B34->unk0 / 4) - D_80047954;
					temp_f2 = ((f32)D_80052B34->unk2 / 4) - D_80047958;
					temp_f14 = ((f32)D_80052B34->unk4 / 4) - D_8004795C;
					func_80014A3C_1563C((s32)D_80052B34, 0x97, sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f14 * temp_f14)), 0, sp28);
				}
			}
			if ((currentLevel == 3) && (gameplayMode == 1) && (D_80052ACA != 3) && (D_80052B34->unk1A == 3) && (currentControllerStates[0].button & 0x2000)) {
				func_80014A3C_1563C((s32)D_80052B34, 0x35, 0.0f, 0, -1.0f);
			}
		}
		if (D_80031CD4_328D4 != -1) {
			D_80031CD4_328D4 -= 1;
			if (D_80031CD4_328D4 == -1) {
				func_80013324_13F24();
			}
		}
		func_80013FC4_14BC4(D_8006AB10);
		if ((D_8006AB14 = func_80013F64_14B64()) > 0) {
			Unk8006AA80Node *ptr;
			for (var_s0 = 0; var_s0 < D_8006AB14; var_s0++) {
				ptr = func_80012720_13320();
				if (ptr == NULL) {
					break;
				}
				if (func_80013B48_14748(ptr, D_80033C90_34890) != -1 && ptr->unk0 == 0x96) {
					D_80033C94_34894 = 1;
				}
			}
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80013818_14418.s")
#endif

s16 func_80013B48_14748(Unk8006AA80Node *arg0, s16 arg1)
{
  s32 phantom1;
  f32 var_f2;
  s32 phantom2;
  s16 sp22;
  s32 temp_rand;
  sp22 = 0;
  if (D_8006AB88 == 0)
  {
	return 0;
  }
  if (arg0->unk0C >= 0)
  {
	arg0->unk0C = arg0->unk0C - 1;
  }
  {
	s16 id;
	id = alSndpAllocate(D_8006AB10, D_8006AB8C->instArray[arg0->unk0]->soundArray[0]);
	if (id >= 0)
	{
	  s16 var_a1;
	  arg0->unk6 = id;
	  D_8006ABB8[arg0->unk6] = 1;
	  alSndpSetPriority(D_8006AB10, arg0->unk6, D_80032228_32E28[arg0->unk0]);
	  alSndpSetSound(D_8006AB10, arg0->unk6);
	  var_f2 = arg0->unk24;
	  if (arg0->unk0 == 0xD3)
	  {
		var_f2 += ((f32) func_800038E0_44E0()) / D_800382F0_38EF0;
	  }
	  if (arg0->unk0 == 0x97)
	  {
		temp_rand = func_800038E0_44E0();
		sp22 = temp_rand / ((f32) D_80031D14_32914);
		var_f2 += ((f32) temp_rand) / ((f32) D_80031D10_32910);
		sp22 = temp_rand / ((f32) D_80031D14_32914);
	  }
	  if (arg0->unk0 == 0x96)
	  {
		sp22 = (s16) ((s32) (((f32) func_800038E0_44E0()) / ((f32) D_80031D18_32918)));
	  }
	  if (arg0->unk0 == 0xEB)
	  {
		alSndpSetFXMix(D_8006AB10, 0x50);
	  }
	  if (D_800382F8_38EF8 < ((f64) var_f2))
	  {
		alSndpSetPitch(D_8006AB10, var_f2);
	  }
	  if (D_80031D4C_3294C == 1)
	  {
		var_a1 = ((((arg0->unk20 * D_80031D58_32958) + ((D_80031D5C_3295C * (arg0->unk20 * D_80031D50_32950)) / D_80031D54_32954)) * D_80031D60_32960));
	  }
	  else
	  {
		var_a1 = (s16) ((s32) (((f32) arg0->unk20) * D_80031D60_32960));
	  }
	  if (sp22 < var_a1)
	  {
		var_a1 -= sp22;
	  }
	  alSndpSetVol(D_8006AB10, var_a1);
	  alSndpSetPan(D_8006AB10, arg0->unk22);
	  alSndpPlay(D_8006AB10);
	  arg0->unk8 = 9;
	  return arg0->unk6;
	}
	return -1;
  }
}

void func_80013E44_14A44(void *arg0) {
	if (D_8006AB88 != 0) {
		((struct Unk80013E44_arg0 *)arg0)->unk8 = 1;
	}
}

void func_80013E64_14A64(s8 arg0) {
	if (D_8006AB88 != 0) {
		if (arg0 < 0 || arg0 >= 4) {
			func_8001599C_1659C();
			return;
		}
		if (D_8006AB18[arg0]->unk2C == 0) {
			func_80016ABC_176BC(arg0);
			return;
		}
		alSeqpStop(D_8006AB18[arg0]);
		D_80031CD0_328D0[arg0] = -1;
		D_80031CE4_328E4[arg0] = 0;
		D_80031D1C_3291C[arg0] = -1;
		D_80031D28_32928[arg0] = 0;
		D_80031D2C_3292C[arg0] = 0.0f;
		D_80031D34_32934[arg0] = 0.0f;
		D_80031D3C_3293C[arg0] = 0.0f;
		D_80031D44_32944[arg0] = 0.0f;
	}
}

s16 func_80013F64_14B64(void) {
	s16 var_v1;
	Unk8006AA80Node *var_v0;

	var_v1 = 0;
	if (D_8006AB88 == 0) {
		return -1;
	}
	var_v0 = D_8006AA80;
	if (var_v0 != NULL) {
		do {
			if (var_v0->unk6 == -1) {
				var_v1 += 1;
			}
			var_v0 = var_v0->unk34;
		} while (var_v0 != NULL);
	}
	return var_v1;
}

void func_80013FC4_14BC4(s32 arg0) {
	Unk8006AA80Node *node;
	s16 unk6;
	s16 neg2;

	if (D_8006AB88 != 0) {
		node = D_8006AA80;
		if (node != NULL) {
			neg2 = -2;
			do {
				unk6 = node->unk6;
				if (unk6 < 0) {
					if (neg2 == unk6) {
						func_800123A4_12FA4(node, &D_8006AA80, (Unk8006AA80Node **)&D_8006AA84);
					} else {
						if (node->unk0C++ >= 0x10) {
							func_800123A4_12FA4(node, &D_8006AA80, (Unk8006AA80Node **)&D_8006AA84);
						}
					}
				} else {
					alSndpSetSound(arg0, unk6);
					if (alSndpGetState(arg0) != 0) {
						if (node->unk2C != 0) {
							if (node->unk0E >= 0) {
								node->unk0E = node->unk0E - 1;
							}
							if (node->unk0E == 0) {
								func_800157D4_163D4(node->unk6);
							}
						}
						if (node->unk8 == 9) {
							func_80013E44_14A44(node);
						}
						D_8006ABB8[node->unk6] = 0;
					} else if (D_8006ABB8[node->unk6] == 0 && alSndpGetState(arg0) == 0) {
						alSndpDeallocate(arg0, node->unk6);
						if (node->unk8 == 9) {
							node->unk6 = -1;
							node->unk8 = 0;
							node->unk0C = 0;
						} else {
							func_800123A4_12FA4(node, &D_8006AA80, (Unk8006AA80Node **)&D_8006AA84);
						}
					}
				}
				node = node->unk34;
			} while (node != NULL);
		}
	}
}

void func_80014180_14D80(s8 arg0)
{
	if (D_8006AB88) {
		arg0 /= 3.0f;
		func_800153D8_15FD8(D_80033A68_34668[currentLevel][arg0]);
	}
}

s32 osBbUsbDevGetHandle(void) {
	return -1;
}

void func_80014208_14E08(s32 arg0, s16 arg1, s32 arg2) {
	s32 pad1;
	s32 pad2;
	f32 sp24;

	if (D_8006AB88 != 0) {
		func_80014A3C_1563C((s32) &sp24, 0xC4, 0, 0,
			sp24 = (f32)D_80032D88_33988 + ((f32) arg1 / D_80038300_38F00));
	}
}

s32 func_80014278_14E78(void)
{
	Unk8006AA80Node sp50;
	s16 soundId;
	u16 soundIdU;

	if (D_8006AB88 == 0)
	{
		return -1;
	}
	soundId = D_80032EB8_33AB8[currentLevel][D_80052B34->unk1A].unk2;
	if (soundId == -1)
	{
		return -1;
	}
	soundIdU = (sp50.unk0 = soundId);
	sp50.unk2 = D_80032228_32E28[soundIdU];
	sp50.unk24 = D_80032A78_33678[soundIdU];
	sp50.unk6 = -1;
	sp50.unk20 = D_80031F04_32B04[soundId];
	sp50.unk0C = 0;
	sp50.unk8 = 0;
	sp50.unk0E = -1;
	sp50.unk22 = 0x40;
	sp50.unk0F = -1;
	return func_800121B4_12DB4(sp50, &D_8006AA80, &D_8006AA84);
}

// https://decomp.me/scratch/0wfIc
s32 func_800143C4_14FC4(s16 arg0)
{
	Unk8006AA80Node sp58;
	s32 sp54;
	s16 soundId;
	u16 soundIdU;

	if (D_8006AB88 == 0)
	{
	return -1;
	}
	if (func_80012638_13238(arg0, D_8006AB18[0]->unk1C) != NULL)
	{
	return -1;
	}
	soundId = arg0;
	soundIdU = (sp58.unk0 = soundId);
	sp58.unk2 = D_80032228_32E28[soundIdU];
	sp58.unk24 = D_80032A78_33678[soundIdU];
	sp58.unk6 = -1;
	sp58.unk20 = D_80031F04_32B04[soundId];
	sp58.unk0C = 0;
	sp58.unk8 = 0;
	sp58.unk0E = -1;
	sp58.unk28 = D_8006AB18[0]->unk1C;
	sp58.unk22 = 0x40;
	sp58.unk0F = -1;
	return func_800121B4_12DB4(sp58, &D_8006AA80, &D_8006AA84);
}

#ifdef NON_MATCHING
void func_80014508_15108(VehicleInstance *arg0, s16 arg1, s16 arg2) {
	VehicleSpec *spec;
	f32 temp_f14;
	f32 temp_f12;
	f32 temp_f2;

	spec = &vehicleSpecs[arg0->unk1A];
	if (!D_8006AB88) {
		return;
	}
	if (arg0->unk3C <= 0) {
		return;
	}
	if (D_80032EB8_33AB8[currentLevel][arg0->unk1A].unk0 == -1) {
		return;
	}
	if (D_80032EB8_33AB8[currentLevel][arg0->unk1A].unk0 == 0x27) {
		if (arg0->unk12 < 0x14) {
			f32 dx = (f32)arg0->unk0 / 4 - D_80047954;
			f32 dy = (f32)arg0->unk2 / 4 - D_80047958;
			f32 dz = (f32)arg0->unk4 / 4 - D_8004795C;
			f32 dist = sqrtf(dx * dx + dy * dy + dz * dz);
			s16 temp_v0 = arg0->unk12;
			s32 temp_v1;

			if (temp_v0 < 0) {
				temp_v1 = -temp_v0;
			} else {
				temp_v1 = temp_v0;
			}
			func_80014A3C_1563C((s32)D_80052B34, 0x170, (f32)(temp_v1 * 100) + dist, 0, -1.0f);
			if (arg0->unk12 == 0) {
				return;
			}
		}
	}
	if (arg1 != 0) {
		switch (spec->unk58) {
		case 0:
			temp_f14 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unk14 * ((f32)arg2 / 1.0f);
			temp_f2 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unkC;
			temp_f12 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unk8;
			break;
		case 1:
			temp_f14 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unk14 * ((f32)arg2 / D_80038324_38F24);
			temp_f2 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unkC;
			temp_f12 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unk8;
			break;
		case 3:
			temp_f2 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unkC;
			temp_f12 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unk8;
			temp_f14 = (temp_f2 - temp_f12) * ((f32)arg2 / D_80038328_38F28) + temp_f12;
			break;
		case 7:
			temp_f2 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unkC;
			temp_f12 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unk8;
			temp_f14 = (temp_f2 - temp_f12) * ((f32)arg2 / D_8003832C_38F2C) + temp_f12;
			break;
		case 5:
			temp_f14 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unk14 * ((f32)arg2 / 25.0f);
			temp_f2 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unkC;
			temp_f12 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unk8;
			break;
		default:
			temp_f14 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unk14 * ((f32)arg2 / 1.0f);
			temp_f2 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unkC;
			temp_f12 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unk8;
			break;
		}
	} else {
		if ((s32)(spec->unk4C << 9) < 0) {
			f32 vx = arg0->unk30;
			f32 vz = arg0->unk38;
			f32 spd = sqrtf(vx * vx + vz * vz);

			temp_f14 = (f32)((f64)spd / 60.0);
			temp_f2 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unkC;
			temp_f12 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unk8;
		} else {
			if (spec->unk58 == 3 || spec->unk58 == 7) {
				temp_f2 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unkC;
				temp_f14 = temp_f2;
			} else {
				temp_f14 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unk14 * D_8004DCC0;
				temp_f2 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unkC;
			}
			temp_f12 = D_800330B0_33CB0[currentLevel][arg0->unk1A].unk8;
		}
	}
	if (temp_f2 < temp_f14) {
		temp_f14 = temp_f2;
	}
	if (temp_f14 < temp_f12) {
		temp_f14 = temp_f12;
	}
	if ((f64)temp_f14 < D_80038330_38F30) {
		temp_f14 = D_80038338_38F38;
	}
	{
		f32 dx = (f32)arg0->unk0 / 4 - D_80047954;
		f32 dy = (f32)arg0->unk2 / 4 - D_80047958;
		f32 dz = (f32)arg0->unk4 / 4 - D_8004795C;
		f32 dist = sqrtf(dx * dx + dy * dy + dz * dz);

		func_80014A3C_1563C((s32)&vehicleSpecs[arg0->unk1A], D_80032EB8_33AB8[currentLevel][arg0->unk1A].unk0,
			dist, 0, temp_f14);
	}
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80014508_15108.s")
#endif

#ifdef NON_MATCHING
void func_80014A3C_1563C(s32 arg0, s16 arg1, f32 arg2, s32 arg3, f32 arg4) {
	Unk8006AA80Node *node;
	Unk8006AA80Node sp6C;
	s16 angle;
	u8 pan;
	u32 pan_u32;

	if (D_8006AB88 != 0 && arg1 != -1 && arg1 != -1) {

	if (arg1 == 0x3E7) {
		if (gameplayMode != 6) {
			func_800056D0_62D0(D_80052B34->unk0, D_80052B34->unk4);
		}
		arg1 = 0x96;
		if ((f64) D_80052B34->unk12 < 26.0) {
			D_8006AB8C->instArray[0x96]->soundArray[0]->envelope->decayTime = 0x81A57 - D_80052B34->unk12 * 0x4E20;
		}
	}

	if (gameplayMode == 1 && D_80052B34->unk1A == 3 && currentLevel == 3 && arg1 == 0x5E) {
		return;
	}

	if (arg1 == 0xB3) {
		if (D_80052ACA == 2 || currentLevel == 5) {
			D_80032430_33030[0xB3] = D_8003833C_38F3C;
			D_80031F04_32B04[0xB3] = 0x7FFF;
		} else {
			D_80032430_33030[0xB3] = D_80038340_38F40;
			D_80031F04_32B04[0xB3] = 0x5FFF;
		}
	}

	if (arg1 == 0xE8 && (f64) arg4 <= D_80038348_38F48) {
		D_80032310_32F10 = 0x7D;
		D_80031F04_32B04[0xE8] = 0x7FFF;
	} else {
		D_80031F04_32B04[0xE8] = 0x3FFF;
		D_80032310_32F10 = 0;
	}

	if (arg1 == 0x17F) {
		if (currentLevel == 5) {
			D_80032430_33030[0x17F] = 1000.0f;
		} else {
			D_80032430_33030[0x17F] = D_80038350_38F50;
		}
	}

	if (!(arg2 < D_80032430_33030[arg1])) {
		return;
	}

	angle = arg3;
	arg3 = (s16)(s32)(((D_80032430_33030[arg1] - arg2) / D_80032430_33030[arg1]) * (f32) D_80031F04_32B04[arg1]);

	if (angle < -0x4000) {
		angle = -0x8000 - angle;
	} else if (angle >= 0x4001) {
		angle = 0x8000 - angle;
	}

	pan = (u8)(pan_u32 = (u32)(((f64)(f32)angle + 16384.0) / 16384.0 * 64.0));

	if ((f64) arg4 < 0.0) {
		if ((f64) arg4 == -1.0) {
			arg4 = D_80032A78_33678[arg1];
		} else if ((f64) arg4 < -1.0) {
			arg4 = (f32)((f64)(D_80032A78_33678[arg1] + arg4) + 1.0);
		}
	}

	if (arg0 != 0 && (node = func_800127CC_133CC(arg0, arg1)) != NULL) {
		node->unk0F++;
		if (node->unk6 >= 0) {
			alSndpSetSound(D_8006AB10, node->unk6);
			if (alSndpGetState(D_8006AB10) == 1) {
				if ((u8)node->unk22 != (u8)pan_u32) {
					if ((u8)pan_u32 > 0) {
						if ((u8)pan_u32 < 0x7F) {
						if ((s16)(pan - (u8)node->unk22) >= 0xB) {
							pan = (u8)node->unk22 + 0xA;
						} else if ((s16)(pan - (u8)node->unk22) < -0xA) {
							pan = (u8)node->unk22 - 0xA;
						}
						alSndpSetPan(D_8006AB10, pan);
						node->unk22 = pan;
						}
					}
				}
				if (arg4 != node->unk24) {
					if ((f64) D_80038358_38F58 < (f64) arg4 && (f64) arg4 < 2.0) {
						alSndpSetPitch(D_8006AB10, arg4);
						node->unk24 = arg4;
					}
				}
				if (arg3 != node->unk20 && arg3 > 0) {
					if (arg3 < 0x7FFF) {
						if ((s16)(arg3 - node->unk20) >= 0x101) {
							arg3 = node->unk20 + 0x100;
						} else if ((s16)(arg3 - node->unk20) < -0x100) {
							arg3 = node->unk20 - 0x100;
						}
						node->unk20 = arg3;
						if (D_80031D4C_3294C == 1) {
							arg3 = (s16)(s32)(((f32)arg3 * D_80031D58_32958 + (D_80031D5C_3295C * ((f32)arg3 * D_80031D50_32950)) / D_80031D54_32954) * D_80031D60_32960);
						} else {
							arg3 = (s16)(s32)((f32)arg3 * D_80031D60_32960);
						}
						alSndpSetVol(D_8006AB10, arg3);
					}
				}
				node->unk0E = 0xF;
				return;
			}
			if (node->unk8 != 1) {
				return;
			}
			func_800157D4_163D4(node->unk6);
		}
	}

	{
		s32 soundIdx = arg1;

		if (func_80012638_13238(soundIdx, D_8006AB18[0]->unk1C) == 0) {
			sp6C.unk0 = soundIdx;
		sp6C.unk20 = arg3;
		*(f32 *)((u8 *)&sp6C + 0x1C) = arg2;
		sp6C.unk2 = D_80032228_32E28[arg1];
		*(s16 *)((u8 *)&sp6C + 0x18) = angle;
		sp6C.unk22 = (s8) pan_u32;
		sp6C.unk24 = arg4;
		sp6C.unk2C = arg0;
		sp6C.unk28 = D_8006AB18[0]->unk1C;
		sp6C.unk0F = 0;
		sp6C.unk0E = arg0 != 0 ? 0xF : -1;
		sp6C.unk6 = -1;
		sp6C.unk0C = 0;
		func_800121B4_12DB4(sp6C, &D_8006AA80, &D_8006AA84);
		}
	}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80014A3C_1563C.s")
#endif

#ifdef NON_MATCHING
void func_80015210_15E10(s16 arg0, s32 arg1, s32 arg2, s32 arg3, u16 arg4) {
	Unk8006AA80Node sp50;

	if (D_8006AB88 != 0) {
		s16 temp_v1;

		sp50.unk2 = D_80032228_32E28[arg0 & 0xFFFF];
		sp50.unk24 = D_80032A78_33678[arg0 & 0xFFFF];
		sp50.unk6 = -1;
		sp50.unk0C = 0;
		sp50.unk8 = 0;
		temp_v1 = (s16)((s32)((f32)D_80031F04_32B04[arg0] * ((f32)arg4 / 200.0f)));
		sp50.unk0 = arg0 & 0xFFFF;
		if (temp_v1 < 0x2FFF) {
			sp50.unk20 = temp_v1 + 0x2FFF;
		} else {
			sp50.unk20 = 0x7FFF;
		}
		sp50.unk0E = -1;
		sp50.unk22 = 0x40;
		func_800121B4_12DB4(sp50, &D_8006AA80, &D_8006AA84);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80015210_15E10.s")
#endif

void func_80015380_15F80(u8 arg0) {
}

void func_80015388_15F88(s16 arg0) {
	void *sp24;
	sp24 = (void **)&sp24 + arg0;
	func_80014A3C_1563C((s32)sp24, arg0, 0, 0, -1.0f);
}

void func_800153D8_15FD8(s16 arg0)
{
	Unk8006AA80Node sp60;
	s32 pad1;
	s32 pad2;
	s32 pad3;
	if (D_8006AB88 != 0 && arg0 != -1 && arg0 != -1)
	{
		if (arg0 == 0xC6)
		{
			arg0 = 0xCD;
		}
		sp60.unk0 = arg0;
		sp60.unk2 = D_80032228_32E28[arg0];
		sp60.unk24 = D_80032A78_33678[arg0 & 0xFFFF];
		sp60.unk6 = -1;
		sp60.unk0C = 0;
		sp60.unk8 = 0;
		sp60.unk20 = D_80031F04_32B04[arg0];
		sp60.unk22 = 0x40;
		sp60.unk0E = -1;
		sp60.unk2C = 0;
		func_800121B4_12DB4(sp60, &D_8006AA80, &D_8006AA84);
	}
}

void func_80015500_16100(s16 arg0, s16 arg1) {
	s16 sp1E;

	if ((D_8006AB88 != 0) && (arg0 >= 0) && (D_80031D4C_3294C == 0)) {
		sp1E = (s16) ((f32) arg1 * D_80031D60_32960);
		alSndpSetSound(D_8006AB10, arg0);
		if (alSndpGetState(D_8006AB10) == 1) {
			alSndpSetVol(D_8006AB10, sp1E);
		}
	}
}

void func_800155B0_161B0(s16 arg0, f32 arg1) {
	if ((D_8006AB88 != 0) && (arg0 >= 0)) {
		alSndpSetSound(D_8006AB10, arg0);
		alSndpSetPitch(D_8006AB10, arg1);
	}
}

void func_80015600_16200(s16 arg0, u8 arg1) {
	if ((D_8006AB88 != 0) && (arg0 >= 0)) {
		alSndpSetSound(D_8006AB10, arg0);
		if (alSndpGetState(D_8006AB10) == 1) {
			alSndpSetPan(D_8006AB10, arg1);
		}
	}
}

void func_80015674_16274(s16 arg0) {
	if ((D_8006AB88 != 0) && (arg0 != -1) && (arg0 < 0x74)) {
		func_800153D8_15FD8(D_80033A74_34674[arg0]);
	}
}

void func_800156C8_162C8(u8 arg0) {
	Unk8006AA84Node *node;
	Unk8006AA84Node *node2;

	if ((D_8006AB88 != 0) && ((node = func_800124A8_130A8(arg0)) != NULL)) {
		if (node->unk6 >= 0) {
			if (node->unk8 == 1) {
				if (D_8006ABB8[node->unk6] != 1) {
					alSndpSetSound(D_8006AB10, node->unk6);
					alSndpStop(D_8006AB10);
				}
			} else {
				node2 = func_80012834_13434(node);
				if ((node2 != NULL) && (node2->unk6 >= 0)) {
					if (node2->unk8 == 1) {
						if (D_8006ABB8[node2->unk6] != 1) {
							alSndpSetSound(D_8006AB10, node2->unk6);
							alSndpStop(D_8006AB10);
						}
					} else {
						node2->unk6 = -2;
					}
				}
			}
		} else {
			node->unk6 = -2;
		}
	}
}

void func_800157D4_163D4(s16 arg0) {
	Unk8006AA80Node *node;

	if ((D_8006AB88 != 0) && (arg0 >= 0)) {
		node = func_8001244C_1304C(arg0);
		if (node != NULL) {
			node->unk8 = 0;
			node->unk2C = 0;
		}
		alSndpSetSound(D_8006AB10, arg0);
		if (arg0 == D_80031CAC_328AC) {
			D_80031CAC_328AC = -1;
		}
		alSndpStop(D_8006AB10);
	}
}

void func_80015860_16460(s16 arg0) {
	Unk8006AA84Node *node;

	if (D_8006AB88 != 0 && (node = func_80012508_13108((u16)arg0)) != NULL) {
		if (node->unk6 != -1) {
			func_800157D4_163D4(node->unk6);
			return;
		}
		node->unk6 = -2;
	}
}

void func_800158C8_164C8(s16 arg0) {
	Unk8006AA84Node *node;

	if (D_8006AB88 != 0 && arg0 != -1 && (node = func_80012508_13108((u16)arg0)) != NULL) {
		if (node->unk6 != -1) {
			func_800157D4_163D4(node->unk6);
			return;
		}
		node->unk6 = -2;
	}
}

void func_8001593C_1653C(void *arg0) {
}

void func_80015944_16544(s8 arg0, s16 arg1) {
	if ((D_8006AB88 != 0) && (func_80012E88_13A88(arg0) == 1)) {
		alSeqpSetVol((ALSeqPlayer *)D_8006AB18[arg0], arg1);
	}
}

void func_8001599C_1659C(void)
{
	Unk8006AA80Node *temp_v0;
	u8 var_s0;
	Unk8006AA80Node sp70;

	if (D_8006AB88 != 0)
	{
		D_80031CA8_328A8 = 0;
		D_80031CB4_328B4 = 0;
		D_80031CB8_328B8 = 0;
		D_80031CBC_328BC = 0;
		D_80031CD8_328D8 = 0;
		D_80031CDC_328DC = 0;
		D_80031CE0_328E0 = 0;
		D_80031CFC_328FC = 0;
		D_80031CF8_328F8 = 0;
		D_80031D00_32900 = 0;
		D_80031CEC_328EC = 0;
		D_800314C8_320C8 = 0;
		D_80031CF0_328F0 = 0;
		D_80031CAC_328AC = -1;
		D_80031CB0_328B0 = 0;
		D_80031CA4 = -1;
		for (var_s0 = 0; var_s0<0x10; var_s0++)
		{
			alSndpSetSound(D_8006AB10, var_s0);
			if (alSndpGetState(D_8006AB10) != 0)
			{
				temp_v0 = func_8001244C_1304C(var_s0);
				if (temp_v0 == NULL)
				{
					sp70.unk6 = var_s0;
					func_800121B4_12DB4(sp70, &D_8006AA80, &D_8006AA84);
				}
				else
				{
					temp_v0->unk8 = 0;
				}
				alSndpStop(D_8006AB10);
			}
		}

		for (var_s0 = 0;var_s0 < 2; var_s0++)
		{
			D_80031CE4_328E4[var_s0] = 1;
			func_80013E64_14A64(var_s0);
			D_80031CD0_328D0[var_s0] = -1;
			D_80031CD4_328D4 = -1;
		}
	}
}

void func_80015BCC_167CC(s32 arg0) {
	if ((D_8006AB88 != 0) && (gameplayMode == 1)) {
		if (D_80031CA4 != 4) {
			if (D_80052ACA == 2) {
				func_80013410_14010();
				return;
			}
			func_80013398_13F98();
			return;
		}
		D_80031CD4_328D4 = 0xFA;
	}
}

void func_80015C58_16858(u8 arg0) {
	if (D_8006AB88 != 0) {
		alSeqpSetChlVol((ALSeqPlayer *)D_8006AB18[0], arg0, 0);
	}
}

// Matching - but needs the jump table rodata linked first
#ifdef NON_MATCHING
void func_80015C94_16894(s8 arg0, s8 arg1) {
	s8 sp1F;

	if (D_8006AB88 == 0) {
		return;
	}
	if (arg1 != 0x10 && D_80031CA4 == 0x10) {
		return;
	}
	switch (arg1) {
	case 0:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4 == 0) {
			return;
		}
		D_80031CA4 = 0;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 1:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4 == 1) {
			return;
		}
		D_80031CA4 = 1;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 2:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4 != 2) {
			D_80031CA4 = 2;
			if (func_800164C4_170C4() == 1) {
				sp1F = func_800165EC_171EC();
				func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
				func_80016B38_17738(arg0, sp1F);
			} else {
				func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
			}
		} else {
			if (D_80031B58_32758 == 1) {
				if (arg0 >= 0x3C && arg0 < 0x3E) {
					func_80016B74_17774(0x3C, 0x3E);
					D_80031CD0_328D0[func_800165EC_171EC()] = arg0;
					return;
				}
				func_80016B74_17774(0x3B, 0x3C);
				D_80031CD0_328D0[func_800165EC_171EC()] = arg0;
				return;
			}
			if (arg0 >= 0x46 && arg0 < 0x4E) {
				func_80016B74_17774(0x46, 0x4E);
				D_80031CD0_328D0[func_800165EC_171EC()] = arg0;
				return;
			}
			func_80016B74_17774(0x3B, 0x46);
			D_80031CD0_328D0[func_800165EC_171EC()] = arg0;
			return;
		}
		break;
	case 11:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4 == 11) {
			return;
		}
		D_80031CA4 = 11;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 5:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4 == 5) {
			return;
		}
		D_80031CA4 = 5;
		func_800164C4_170C4();
		func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		break;
	case 3:
		if (D_80031CA4 == 3) {
			return;
		}
		D_80031CA4 = 3;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 4:
		if (D_80031CA4 == 4) {
			return;
		}
		D_80031CA4 = 4;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 6:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4 == 6) {
			return;
		}
		D_80031CA4 = 6;
		func_800164C4_170C4();
		func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		break;
	case 8:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4 == 8) {
			return;
		}
		D_80031CA4 = 8;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 9:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4 == 9) {
			return;
		}
		D_80031CA4 = 9;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 10:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4 == 10) {
			return;
		}
		D_80031CA4 = 10;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 12:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4 == 12) {
			return;
		}
		D_80031CA4 = 12;
		func_800164C4_170C4();
		func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		break;
	case 13:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4 == 13) {
			return;
		}
		D_80031CA4 = 13;
		if (func_800164C4_170C4() == 1) {
			sp1F = func_800165EC_171EC();
			func_80016C14_17814(sp1F, 60.0f, 0.0f, 20.0f);
			func_80016B38_17738(arg0, sp1F);
		} else {
			func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		}
		break;
	case 15:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4 == 15) {
			return;
		}
		D_80031CA4 = 15;
		func_800164C4_170C4();
		func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		break;
	case 16:
		D_80031CD4_328D4 = -1;
		if (D_80031CA4 == 16) {
			return;
		}
		D_80031CA4 = 16;
		func_800164C4_170C4();
		func_80016B38_17738(arg0, (s8)func_800165EC_171EC());
		break;
	case 7:
	case 14:
		break;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80015C94_16894.s")
#endif

s32 func_800164C4_170C4(void) {
	s32 var_s1;
	s8 var_s0;

	var_s1 = 0;
	for (var_s0 = 0; var_s0 < 2; var_s0++) {
		if (D_80031CE4_328E4[var_s0] == 1) {
			if ((f64)D_80031D44_32944[var_s0] > 0.0 && D_80031D28_32928[var_s0] >= 2) {
				return 1;
			}
			func_80016C14_17814(var_s0, 60.0f, 20.0f, 0.0f), var_s1 = 1;
		}
	}
	return var_s1;
}

#ifdef NON_MATCHING
s8 func_800165EC_171EC(void) {
	s32 sp4C;
	s32 sp48;
	s32 sp44;
	s16 var_s5;
	s8 var_s6;
	s8 var_s3;
	s8 i;

	var_s6 = -1;
	var_s3 = 0;
	var_s5 = 0x7FFF;

	if (D_80031CA4 != 2) {
		for (i = 0; i < 2; i++) {
			if (D_80031CD0_328D0[i] != -1 && D_80031CE4_328E4[i] == 0) {
				func_80016ABC_176BC(i);
			}
			if (D_80031CE4_328E4[i] == 1 && func_80012E88_13A88(i) == 0) {
				func_80013E64_14A64(i);
			}
		}
	}

	i = 0;
	do {
		if (D_80031CD0_328D0[i] != -1 && D_80031CA4 != 2) {
			func_80016ABC_176BC(i);
			return i;
		}
		if (func_80012E88_13A88(i) == 0 && D_80031CE4_328E4[i] == 0 && D_80031CD0_328D0[i] == -1) {
			func_80016ABC_176BC(i);
			return i;
		}
		i++;
		var_s3++;
	} while (i < 2);

	if (var_s3 == 2) {
		for (i = 0; i < 2; i++) {
			if (D_80031CE4_328E4[i] == 1 && func_80012E88_13A88(i) == 0) {
				func_80013E64_14A64(i);
				return i;
			}
		}

		for (i = 0; i < 2; i++) {
			if (D_80031CE4_328E4[i] == 0 && func_80012E88_13A88(i) != 0) {
				func_80016ABC_176BC(i);
				return i;
			}
		}

		for (i = 0; i < 2; i++) {
			s16 score;
			if (D_80031CE4_328E4[i] == 1 && func_80012E88_13A88(i) == 1) {
				if (D_80031D28_32928[i] == 1) {
					score = (s16)((D_80031D44_32944[i] * ((f32)D_80031D74_32974[D_80031D1C_3291C[i]] * D_80031D2C_3292C[i]) / D_80031D34_32934[i] + D_80031D3C_3293C[i] * (f32)D_80031D74_32974[D_80031D1C_3291C[i]]) * D_80031D64_32964);
				} else {
					score = (s16)((f32)D_80031D74_32974[D_80031D1C_3291C[i]] * D_80031D64_32964);
				}
				if (score < var_s5) {
					var_s5 = score;
					var_s6 = i;
				}
			}
		}

		if (var_s6 != -1) {
			func_80013E64_14A64(var_s6);
			return var_s6;
		}

		for (i = 0; i < 2; i++) {
			if (D_8006AB18[0]->unk1C >= D_80031D20_32920[i]) {
				if (sp44 < D_8006AB18[0]->unk1C - D_80031D20_32920[i]) {
					sp44 = D_8006AB18[0]->unk1C - D_80031D20_32920[i];
					var_s6 = i;
				}
			} else if (D_8006AB18[0]->unk1C >= 0) {
				if (sp44 < (D_8006AB18[0]->unk1C + 0x7FFFFFFF) - D_80031D20_32920[i]) {
					sp44 = (D_8006AB18[0]->unk1C + 0x7FFFFFFF) - D_80031D20_32920[i];
					var_s6 = i;
				}
			} else {
				if (sp44 < (0x7FFFFFFF - D_80031D20_32920[i]) - D_8006AB18[0]->unk1C) {
					sp44 = (0x7FFFFFFF - D_80031D20_32920[i]) - D_8006AB18[0]->unk1C;
					var_s6 = i;
				}
			}
		}

		if (var_s6 != -1) {
			func_80013E64_14A64(var_s6);
			return var_s6;
		}

		osSyncPrintf(&D_800382A0_38EA0);
	} else {
		osSyncPrintf(&D_800382C8_38EC8);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800165EC_171EC.s")
#endif

void func_80016ABC_176BC(s8 arg0) {
	D_80031CD0_328D0[arg0] = -1;
	D_80031CE4_328E4[arg0] = 0;
	D_80031D1C_3291C[arg0] = -1;
	D_80031D28_32928[arg0] = 0;
	D_80031D2C_3292C[arg0] = 0.0f;
	D_80031D34_32934[arg0] = 0.0f;
	D_80031D3C_3293C[arg0] = 0.0f;
	D_80031D44_32944[arg0] = 0.0f;
}

void func_80016B38_17738(s8 arg0, s8 arg1) {
	D_80031D20_32920[arg1] = D_8006AB18[0]->unk1C;
	D_80031CD0_328D0[arg1] = arg0;
}

void func_80016B74_17774(s8 arg0, s8 arg1) {
	s8 i;

	for (i = 0; i < 2; i++) {
		if (D_80031D1C_3291C[i] >= arg0 && D_80031D1C_3291C[i] < arg1) {
			func_80013E64_14A64(i);
		}
	}
}

void func_80016C14_17814(s8 arg0, f32 arg1, f32 arg2, f32 arg3) {
	D_80031D2C_3292C[arg0] = arg1;
	D_80031D34_32934[arg0] = arg1;
	D_80031D3C_3293C[arg0] = arg3 / 20.0f;
	D_80031D44_32944[arg0] = (arg2 - arg3) / 20.0f;
	D_80031D28_32928[arg0] = 1;
}

void func_80016C8C_1788C(f32 arg0, f32 arg1, f32 arg2) {
	D_80031D50_32950 = arg0;
	D_80031D54_32954 = arg0;
	D_80031D58_32958 = arg2 / 20.0f;
	D_80031D5C_3295C = (arg1 - arg2) / 20.0f;
	D_80031D4C_3294C = 1;
}

void func_80016CD8_178D8(s8 arg0) {
	f32 temp_f0;

	if (D_80031CE4_328E4[arg0] == 1 && D_80031D28_32928[arg0] == 1) {
		temp_f0 = (f32)D_80031D74_32974[D_80031D1C_3291C[arg0]];
		alSeqpSetVol((ALSeqPlayer *)D_8006AB18[arg0],
			(s16)(s32)((D_80031D3C_3293C[arg0] * temp_f0 + D_80031D44_32944[arg0] * (temp_f0 * D_80031D2C_3292C[arg0]) / D_80031D34_32934[arg0]) * D_80031D64_32964));
	}
	D_80031D2C_3292C[arg0] = D_80031D2C_3292C[arg0] - 1.0f;
	if (D_80031D2C_3292C[arg0] == 0.0f) {
		if ((f64)D_80031D44_32944[arg0] > 0.0) {
			func_80013E64_14A64(arg0);
			return;
		}
		D_80031D28_32928[arg0] = 0;
	}
}

void func_80016E54_17A54(void) {
	Unk8006AA80Node *node;
	f32 temp_f0;
	s16 temp_vol;

	if (D_8006AB88 != 0) {
		node = D_8006AA80;
		if (node != NULL) {
			do {
				if (node->unk6 >= 0 && D_80031D4C_3294C == 1) {
					temp_f0 = (f32) node->unk20;
					temp_vol = (s16)(s32)((temp_f0 * D_80031D58_32958 + D_80031D5C_3295C * (temp_f0 * D_80031D50_32950) / D_80031D54_32954) * D_80031D60_32960);
					alSndpSetSound(D_8006AB10, node->unk6);
					alSndpSetVol(D_8006AB10, temp_vol);
				}
				node = node->unk34;
			} while (node != NULL);
		}
		if (D_80031D50_32950 == 0.0f) {
			D_80031D4C_3294C = 0;
			return;
		}
		D_80031D50_32950 -= 1.0f;
	}
}

void func_80016FD0_17BD0(s16 arg0) {
	Unk8006AA80Node *node;
	s16 temp_vol;
	Float4 sp38;

	sp38 = D_80033C9C_3489C;

	if (D_8006AB88 == 0) {
		return;
	}

	D_80031D60_32960 = ((f32 *)&sp38)[arg0];
	node = D_8006AA80;
	if (node != NULL) {
		do {
			if (node->unk6 >= 0 && D_80031D4C_3294C == 0) {
				temp_vol = (s16) ((f32) node->unk20 * D_80031D60_32960);
				alSndpSetSound(D_8006AB10, node->unk6);
				alSndpSetVol(D_8006AB10, temp_vol);
			}
			node = node->unk34;
		} while (node != NULL);
	}
}

void func_800170F4_17CF4(s16 arg0) {
	s16 var_s0;
	s16 temp_vol;

	D_80031D64_32964 = D_80033CAC_348AC[arg0];
	for (var_s0 = 0; var_s0 < 2; var_s0++) {
		if (D_80031CE4_328E4[var_s0] == 1 && D_80031D28_32928[var_s0] == 0) {
			temp_vol = (s16)(s32)((f32)D_80031D74_32974[D_80031D1C_3291C[var_s0]] * D_80031D64_32964);
			alSeqpSetVol((ALSeqPlayer *)D_8006AB18[var_s0], temp_vol);
		}
	}
}

void func_80017224_17E24(void) {
	s8 i;

	for (i = 0; i < 2; i++) {
		if (D_80031CD0_328D0[i] != -1 && D_80031CE4_328E4[i] == 0 && func_80012E88_13A88(i) == 0) {
			func_80012EC4_13AC4(D_80031CD0_328D0[i], i);
			D_80031CD0_328D0[i] = -1;
		}
	}
}

s16 func_800172E0_17EE0(u8 *arg0)
{
	s32 count = 0;
	u8 *ptr = arg0;

	if (*arg0 != 0xa && *arg0 != 0 && *arg0 != 0x40) {
		do {
			// is 0x3B and not one of the first 4 iterations
			if (*ptr == 0x3B && arg0 != ptr && arg0 + 1 != ptr && arg0 + 2 != ptr && arg0 + 3 != ptr) {
				count++;
			}
			ptr++;
		} while (*ptr != 0xa && *ptr != 0 && *ptr != 0x40);
	}

	if (D_80034494 != 0 && D_8006C566 == 0xFFFF && count == 1) {
		count = 2;
	}

	return count;
}

// https://decomp.me/scratch/sIowK
#ifdef NON_MATCHING
s16 func_80017394_17F94(u8 *arg0, s16 arg1)
{
  s32 var_v1;
  u8 *var_v0;
  u8 var_a0;
  var_v1 = 0;
  var_v0 = arg0;
  if (*arg0 != 0xA && *arg0 != 0 && *arg0 != 0x40 && *arg0 != 0x3B)
  {
	arg1--;
	
	  var_a0 = *arg0;
		while (arg1)
	  {
		if ((var_a0 >= 0x20) && (var_a0 < 0x80))
		{
		  if (var_a0 == 0x5E)
		  {
			var_v0 += 2;
			arg1 -= 2;
			var_a0 = *var_v0;
		  }
		  if (var_v1 != 0 || var_a0 != 0x20 || var_a0 != 0x26 || var_a0 != 0x25)
		  {
			var_v1 += D_80031720_32320[(var_a0 * 2) + 0x261];
		  }
		}
		var_a0 = var_v0[1];
		var_v0++;
		arg1--;
		if ((var_a0 == 0xA) || (var_a0 == 0))
		  break;
		if ((var_a0 == 0x40) || (var_a0 == 0x3B))
		  return var_v1;
	  }
	  
	
  }
  return var_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80017394_17F94.s")
#endif

#ifdef NON_MATCHING
void func_80017490_18090(u8 *arg0) {
	u8 buf[32];
	s32 pad1;
	s32 pad2;
	s32 s5;
	s32 s4;
	s16 s3;
	u8 *s2;
	s32 s1;
	s32 sp68;
	u8 s0;
	s16 *pD558;

	s5 = 0;
	if (D_800313D0 != 0) {
		sp68 = 0;
	}

	D_8006C55A = 0;

	pD558 = &D_8006C558;

	if (D_8003447C != 0) {
		s4 = (u16)D_8006C564;
	} else {
		s4 = ((u16 *)D_8006C550)[*pD558] + (u16)D_8006C564;
	}

	s2 = arg0 + s4;

	if (D_8003447C != 0) {
		s3 = func_80017394_17F94(s2, 0);
	} else {
		s3 = func_80017394_17F94(s2, (s16)(((u16 *)D_8006C550)[(*pD558) + 1] - s4));
	}

	s0 = *s2;

	if (func_800172E0_17EE0(s2) == 1) {
		drawText(&D_800383B0_38FB0, 0, 7, 0, D_80068088 * 4 - 0x3DC), s1 = 8;
	} else {
		drawText(&D_800383BC_38FBC, 0, 7, 0, D_80068088 * 4 - 0x40C), s1 = 8;
	}

	if (D_80034488 != 0 || ((u8 *)D_80034468)[*pD558] == 0xFF || D_8003447C == 1) {
		drawText(&D_800383C8_38FC8, (s16)(-(s3 >= 0 ? s3 >> 1 : (s3 + 1) >> 1) * 4 + 0x1C8));
	} else {
		drawText(&D_800383C8_38FC8, (s16)(-(s3 >= 0 ? s3 >> 1 : (s3 + 1) >> 1) * 4 + 0x154));
	}

	while (1) {
		if (s0 >= 0x41) {
			if (s0 == 0x5E) {
				s4 += 2;
				s2 += 2;
			} else {
				buf[s5++] = s0;
			}
		} else {
			switch (s0) {
			case 0:
			case 0x40:
				buf[s5] = 0;
				D_8006C55A++;
				sp68 = 1;
				s5 = 0;
				drawText(&D_800383E4_38FE4, buf);
				if (func_800172E0_17EE0(s2) == 1) {
					drawText(&D_800383EC_38FEC, 0, s1, 0, D_80068088 * 4 - 0x3DC);
				} else {
					drawText(&D_800383F8_38FF8, 0, s1, 0, D_80068088 * 4 - 0x40C);
				}
				s1++;
				s4--;
				s2--;
				break;
			case 0x20:
				buf[s5] = 0;
				D_8006C55A++;
				s5 = 0;
				drawText(&D_800383CC_38FCC, buf);
				break;
			case 0x24:
				s4 += 2;
				s2 += 2;
				break;
			case 0x25:
			case 0x26:
				break;
			case 0x3B: {
				s16 lw;
				buf[s5] = 0;
				D_8006C55A++;
				s5 = 0;
				drawText(&D_800383D4_38FD4, buf);
				drawText(&D_800383DC_38FDC, 0, s1);
				s1++;
				if (D_8003447C != 0) {
					lw = func_80017394_17F94(s2 + 1, 0);
				} else {
					lw = func_80017394_17F94(s2 + 1, (s16)(*(u16 *)((u8 *)D_8006C550 + (*pD558) * 2 + 2) - s4));
				}
				if (D_80034488 != 0 || ((u8 *)D_80034468)[*pD558] == 0xFF || D_8003447C == 1) {
					drawText(&D_800383E0_38FE0, (s16)(-(lw >= 0 ? lw >> 1 : (lw + 1) >> 1) * 4 + 0x1C8));
				} else {
					drawText(&D_800383E0_38FE0, (s16)(-(lw >= 0 ? lw >> 1 : (lw + 1) >> 1) * 4 + 0x154));
				}
				break;
			}
			default:
				buf[s5++] = s0;
				break;
			}
		}

		s4++;
		s2++;

		if (D_8003447C != 0) {
			s0 = *s2;
		} else {
			s0 = *s2;
			if (s4 >= ((u16 *)D_8006C550)[(*pD558) + 1]) {
				buf[s5] = 0;
				D_8006C55A++;
				sp68 = 1;
				s5 = 0;
				drawText(&D_80038404_39004, buf);
				if (func_800172E0_17EE0(s2) == 1) {
					drawText(&D_8003840C_3900C, 0, s1, 0, D_80068088 * 4 - 0x3DC);
				} else {
					drawText(&D_80038418_39018, 0, s1, 0, D_80068088 * 4 - 0x40C);
				}
				s1++;
			}
		}

		if (sp68 != 0) {
			break;
		}
	}

	if (s0 == 0x40) {
		D_8006C566 = s4 - ((u16 *)D_8006C550)[*pD558] + 1;
	} else {
		D_8006C566 = 0xFFFF;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80017490_18090.s")
#endif

void func_80017AAC_186AC(void) {
	D_8006C55C = 0;
	D_8006C558 = -1;
	D_8006C55E = 0xFFFF;
	D_8006C568 = 0;
	D_8006C56A = 0;
}

void func_80017AE0_186E0(void) {
	D_80034478 = 0;
	D_80034480 = 0xFFFF;
	D_8003447C = 0;
	D_80034484 = 0;
}

void func_80017B08_18708(s32 arg0) {
	D_8006C55C = 0;
	D_8006C558 = arg0;
	osSyncPrintf(&D_80038424_39024, D_8006C558);
	// --------talkyIndex=%d
	D_8006C55E = 1;
	D_8006C564 = 0;
	D_8006C566 = 0;
	D_8006C568 = 0;
	D_8006C56A = 0;
	func_8000C6B8_D2B8(0);
}

s32 func_80017B78_18778(void) {
	if (D_80052AD0 != 0) {
		if ((D_8006C55E != 0xFFFF) && ((gameplayMode == 1) || (gameplayMode == 9) || (gameplayMode == 0) || (gameplayMode == 9) || (gameplayMode == 6) || (gameplayMode == 0xC))) {
			return D_8006C55E;
		}
		return 0xFFFF;
	}
	return 0xFFFF;
}

void func_80017BF8_187F8(short arg0)
{
	s32 offset = (arg0 * 0x1600) & 0xFFFF;
	func_800101F0_10DF0(&D_80265A80, ((((s32) (&D_3059BA0)) & 0xFFFFFF) + offset) + D_8F4960, 0x1400);
	func_800101F0_10DF0(&D_80266E80, ((((s32) (&D_305AFA0)) & 0xFFFFFF) + offset) + D_8F4960, 0x200);
}

#ifdef NON_MATCHING
s16 func_80017CA4_188A4(void) {
	u32 spC4;
	Gfx *sp94;
	s32 sp20;
	s16 var_t4;
	s32 temp_t7;
	u32 var_v1;
	u8 var_a2;

	if (D_8006C558 == -1) {
		return -1;
	}

	{
		Gfx **dl;

		dl = &D_8005BB2C;
		gDPSetRenderMode((*dl)++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
		gDPSetCombineMode((*dl)++, G_CC_DECALRGBA, G_CC_DECALRGBA);
		gDPSetTextureLUT((*dl)++, G_TT_RGBA16);
		gDPSetTexturePersp((*dl)++, G_TP_NONE);
	}

	if (D_8003447C != 0) {
		var_a2 = 0xFF;
	} else if (D_80034488 != 0) {
		var_a2 = 0xFF;
	} else {
		var_a2 = *(u8 *)((s32)D_8006C558 + D_80034468);
	}
	sp20 = (s32)var_a2;

	if (var_a2 != 0xFF) {
		func_800190D4_19CD4(D_80068084 - 0x5B, D_80068088 - 0x60, (u16)var_a2, (u16)D_8006C568, (u16)D_8006C56A);
	}

	if (D_8006C55C == 0) {
		D_80053C8C = D_80052AD8;
		D_8006C576 = 0;
	}

	if (D_8006C564 == 0xFFFF) {
		D_8006C558 = -1;
		D_8006C55E = 0xFFFF;
		if (D_80034488 != 0) {
			D_80034488 = 0;
			func_8001A024_1AC24();
		}
		if (D_8003447C != 0) {
			D_8003447C = 0;
			if (D_8004771C == -1) {
				osSyncPrintf(&D_8003843C);
				func_80018D7C_1997C(D_8004771A);
				D_80034480 = 0xFFFF;
			} else if (D_80034480 != 0xFFFF) {
				func_80018D7C_1997C(D_80034480);
			} else {
				func_8001A024_1AC24();
				D_80034484 = 0;
			}
		} else if (D_80034484 != 0) {
			func_8001A024_1AC24();
			D_80034484 = 0;
		}
	} else if (D_8003447C != 0) {
		if (D_80034480 == 0xFFFF) {
			switch (D_800313D0) {
			default:
			case 0:
				func_80017490_18090(&D_80033CC0);
				break;
			case 2:
				func_80017490_18090(&D_800340A8);
				break;
			case 1:
				func_80017490_18090(&D_80033EB4);
				break;
			}
		} else {
			switch (D_800313D0) {
			default:
			case 0:
				func_80017490_18090(&D_80033DBA);
				break;
			case 2:
				func_80017490_18090(&D_800341A2);
				break;
			case 1:
				func_80017490_18090(&D_80033FAE);
				break;
			}
		}
	} else {
		func_80017490_18090(D_80034460);
	}

	if (D_8006C55E == 1) {
		if ((D_80034494 != 0) && ((func_8000C670_D270(D_8006C55A) != 0) || (func_8000C6C4_D2C4() != 0)) && (D_8006C566 == 0xFFFF)) {
			if (D_80034498_35098 != 0) {
				if (D_80034490_35090 != 0) {
					if ((currentLevel == 3) && (D_8006C570 == 2)) {
						func_800072CC_7ECC(0x3F);
					} else {
						func_800072CC_7ECC((s64)D_8006C570);
					}
				} else if ((currentLevel == 3) && (D_8006C570 == 2)) {
					func_800073B8_7FB8(0x3F);
				} else {
					func_800073B8_7FB8((s64)D_8006C570);
				}
				D_80034494 = 0;
				func_8000C6B8_D2B8(0);
				D_8006C564 = D_8006C566;
				D_80053C8C = D_80052AD8;
				D_8006C576 = 0;
			} else {
				func_8001A160_1AD60();
			}
		} else if ((isButtonNewlyPressed(0, 0xC000) != 0) && (D_8003449C == 0x18)) {
			if ((func_8000C670_D270(D_8006C55A) != 0) || (func_8000C6C4_D2C4() != 0)) {
				func_8000C6B8_D2B8(0);
				D_8006C564 = D_8006C566;
				D_80053C8C = D_80052AD8;
				D_8006C576 = 0;
			} else {
				func_8000C6B8_D2B8(1);
			}
		}
		if ((D_80034484 != 0) && (isButtonNewlyPressed(0, 0x20) != 0) && (D_8003449C == 0x18)) {
			D_80034484 = 0;
			D_8003447C = 0;
			D_8006C558 = -1;
			D_8006C55E = 0xFFFF;
			func_8001A024_1AC24();
		}
	} else if (((s32)D_8006C55C % 150) == 0x81) {
		D_8006C564 = D_8006C566;
		D_80053C8C = D_80052AD8;
		D_8006C576 = 0;
	}

	var_v1 = ((u16)D_8006C55A * 3) + 0xF;
	D_8006C568 = 0;
	D_8006C56A = 0;
	if ((var_v1 % 10U) != 0) {
		var_v1 = ((var_v1 / 10U) * 0xA) + 0xA;
	}
	spC4 = var_v1;
	if (func_8000C6C4_D2C4() != 0) {
		D_8006C576 = (u16)var_v1;
	}
	if ((u16)D_8006C576 < var_v1) {
		s32 temp_hi = (s32)D_8006C576 % 10;
		if (temp_hi < 5) {
			if (temp_hi == 0) {
				u32 temp_v0 = (D_8006C578 * 0x41C64E6D) + 0x3039;
				D_8006C574 = (u16)((u32)((temp_v0 >> 0x10) & 0xFFFF) % 10U);
				D_8006C578 = temp_v0;
			}
			if ((s32)D_8006C574 < 5) {
				D_8006C56A = 1;
			} else {
				D_8006C56A = 2;
			}
		}
		D_8006C576 += 1;
	} else {
		s32 temp_hi_2 = (s32)D_8006C55C % 90;
		if ((temp_hi_2 >= 0x15) && (temp_hi_2 < 0x19)) {
			D_8006C568 = 1;
		}
	}

	func_8000B044_BC44();

	if ((D_8006C566 != 0xFFFF) && ((func_8000C670_D270(D_8006C55A) != 0) || (func_8000C6C4_D2C4() != 0))) {
		Gfx **dl;

		dl = &D_8005BB2C;
		gSPClearGeometryMode((*dl)++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
		gDPPipeSync((*dl)++);
		gDPSetRenderMode((*dl)++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
		gDPSetTextureFilter((*dl)++, G_TF_BILERP);
		gDPSetTexturePersp((*dl)++, G_TP_NONE);
		{
			Gfx *_dl = (*dl)++;

			_dl->words.w0 = 0xFA000000;
			sp94 = _dl;
		}
		sp94->words.w1 = (s32)(((u32)(128.0 - (((f64)(f32)coss(D_800344A2) / 32768.0) * 128.0)) & 0xFF) | (D_80053BF8 << 0x18) | ((D_80053BFA & 0xFF) << 0x10) | ((D_80053BFC & 0xFF) << 8));
		gSPTexture((*dl)++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
		gDPSetCombineMode((*dl)++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
		gDPSetTextureLUT((*dl)++, G_TT_IA16);
		gDPSetTextureImage((*dl)++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, D_801FEA10);
		gDPTileSync((*dl)++);
		gDPSetTile((*dl)++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync((*dl)++);
		gDPLoadTLUTCmd((*dl)++, G_TX_LOADTILE, 15);
		gDPPipeSync((*dl)++);
		gDPTileSync((*dl)++);
		gDPSetTextureImage((*dl)++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, D_801FE810);
		gDPSetTile((*dl)++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync((*dl)++);
		gDPLoadBlock((*dl)++, G_TX_LOADTILE, 0, 0, 63, 2048);
		gDPPipeSync((*dl)++);
		gDPSetTile((*dl)++, G_IM_FMT_CI, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize((*dl)++, G_TX_RENDERTILE, 0, 0, 15 << 2, 15 << 2);
		if (sp20 == 0xFF) {
			var_t4 = (D_80068084 - 0x2D) * 4;
		} else {
			var_t4 = (D_80068084 - 0x6F) * 4;
		}
		temp_t7 = (D_80068088 - 0x2A) * 4;
		(*dl)->words.w0 = (s32)((((var_t4 + 0x40) & 0xFFF) << 0xC) | 0xE4000000 | ((temp_t7 + 0x40) & 0xFFF));
		(*dl)->words.w1 = (s32)(((var_t4 & 0xFFF) << 0xC) | (temp_t7 & 0xFFF));
		(*dl)++;
		(*dl)->words.w0 = 0xB4000000;
		(*dl)->words.w1 = 0x02000000;
		(*dl)++;
		(*dl)->words.w0 = 0xB3000000;
		(*dl)->words.w1 = 0xFC000400;
		(*dl)++;
		gDPPipeSync((*dl)++);
		gDPSetTextureLUT((*dl)++, G_TT_NONE);
		gSPTexture((*dl)++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
		gDPSetRenderMode((*dl)++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);
		gDPSetCombineMode((*dl)++, G_CC_SHADE, G_CC_SHADE);
		gDPPipeSync((*dl)++);
	} else {
		D_800344A0 = 0;
	}

	D_8006C55C += 1;
	D_800344A0 += 0xFA0;
	return (s16)D_8006C55E;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80017CA4_188A4.s")
#endif

s32 func_80018A58_19658(void) {
	if ((D_8003449C == 0) && (func_80017B78_18778() != 1)) {
		return 0;
	}
	return 1;
}

s32 func_80018AA0_196A0(void) {
	if (D_8003449C == 0x18) {
		return 1;
	}
	return 0;
}

s32 func_80018AC8_196C8(void) {
	if (D_8003449C != 0) {
		return 1;
	}
	return 0;
}

#ifdef NON_MATCHING
s32 func_80018AEC_196EC(s32 arg0, s32 arg1, s32 arg2) {
	s32 sp24;
	s32 var_v1;
	s32 temp_v0;
	s32 temp_v1;

	sp24 = 0;
	if (func_80017B78_18778() == 1) {
		var_v1 = D_800344A4;
		temp_v0 = var_v1 + 1;
		var_v1 = (temp_v0 >= 0xB) ? 0xA : temp_v0;
		if (D_8006C6C6 > 0 && D_8004802C == 0) {
			var_v1 = 0;
		}
		D_800344A4 = var_v1;
		if (var_v1 >= 0xA) {
			if ((D_8003449C == 0) && (gameplayMode != 0)) {
				D_8006C560 = (u16)gameplayMode;
				gameplayMode = 9;
				if ((D_80034484 != 0) && (D_8003447C == 0) && (D_80034488 == 0)) {
					func_800153D8_15FD8(0x156);
				}
			}
			sp24 = 1;
			if (D_8003449C + 4 >= 0x19) {
				D_8003449C = 0x18;
			} else {
				D_8003449C = D_8003449C + 4;
			}
		} else {
			D_8003449C = 0;
		}
	} else {
		temp_v1 = D_8003449C - 4;
		if (D_8003449C == 0x18) {
			gameplayMode = (GameplayMode)D_8006C560;
		}
		if (temp_v1 < 0) {
			D_8003449C = 0;
		} else {
			D_8003449C = temp_v1;
		}
		D_800344A4 = 0;
	}
	if (D_8003449C > 0) {
		gDPSetPrimColor(D_8005BB2C++, 0, 0, arg0, arg1, arg2, 0xFF);
		func_800092B8_9EB8(0x3C, (D_80068088 - D_8003449C * 2 - 0x40) * 4, (D_80068084 - 0xF) * 4, ((s32)D_80068088 + D_8003449C * 2 - 0x40) * 4, 0);
	}
	return sp24;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80018AEC_196EC.s")
#endif

void func_80018D14_19914(void) {
	D_80034484 = 0;
	D_8003447C = 0;
	D_8006C558 = -1;
	D_8006C55E = 0xFFFF;
	func_8001A024_1AC24();
}

void func_80018D58_19958(void) {
	func_80018D14_19914();
	D_8003449C = 0;
}

#ifdef NON_MATCHING
void func_80018D7C_1997C(u16 arg0) {
	s32 sp20;
	s32 sp1C;

	D_80034494 = 0;
	sp20 = arg0;
	osSyncPrintf(&D_8003845C_3905C, arg0);
	if (!(D_800313C8 & 8) && !(D_80052ACD & 0x10)) {
		if (sp20 >= 0xCD) {
			func_80019F80_1AB80();
			sp1C = (sp20 - 0xCD) & 0xFF;
			if (((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C * 2))[0] != 0x25) {
				if (((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C * 2))[0] == 0x26) {
					D_80034484 = 1;
					D_8003447C = 0;
					sp20 = sp1C;
					func_80017B08_18708(sp1C);
					func_80015380_15F80((u8)sp1C);
					if (sp20 < 0x26) {
						D_80034480 = (s16)sp1C;
					}
					D_80034478 = 0;
				}
			} else {
				func_80019EA8_1AAA8((u8)sp1C);
				func_8001A024_1AC24();
				return;
			}
			if (((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C * 2))[0] == 0x5E) {
				osSyncPrintf(&D_80038470_39070,
					((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C * 2))[0],
					((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C * 2))[1],
					((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C * 2))[2]);
				D_8006C570 = func_8001A37C_1AF7C((char *)((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C * 2)));
				D_80034494 = 1;
				D_80034490_35090 = 1;
				D_80034498_35098 = 0;
				func_80017B08_18708(sp20);
				return;
			}
			if (((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C * 2))[1] == 0x24) {
				gzip_data_0000 = 1;
				D_8006C56D = ((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C * 2))[2];
				D_8006C56E = ((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C * 2))[3];
				osSyncPrintf(&D_80038480_39080, ((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C * 2))[0]);
				osSyncPrintf(&D_80038484_39084, (s8)D_8006C56D, (s8)D_8006C56E);
			}
		} else {
			osSyncPrintf(&D_8003849C_3909C, sp20);
			sp1C = (s32)arg0 * 2;
			osSyncPrintf(&D_800384A8_390A8, *(u16 *)((u8 *)D_8006C550 + sp1C), sp1C);
			if (((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C))[0] == 0x5E) {
				D_8006C570 = func_8001A37C_1AF7C((char *)((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C)));
				osSyncPrintf(&D_800384B4_390B4, D_8006C570, &D_8006C570);
				D_80034498_35098 = 0;
				D_80034494 = 1;
				D_80034490_35090 = 1;
			} else if (((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C))[0] == 0x24) {
				gzip_data_0000 = 1;
				D_8006C56D = ((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C))[1];
				D_8006C56E = ((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C))[2];
				osSyncPrintf(&D_800384C4_390C4, ((u8 *)D_80034460 + *(u16 *)((u8 *)D_8006C550 + sp1C))[0], sp1C);
				osSyncPrintf(&D_800384C8_390C8, (s8)D_8006C56D, (s8)D_8006C56E);
			}
			func_80017B08_18708((s32)arg0);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80018D7C_1997C.s")
#endif


#ifdef NON_MATCHING
void func_800190D4_19CD4(s32 arg0, s32 arg1, u16 arg2, u16 arg3, u16 arg4) {
	u8 *texture;
	Unk800190D4 *entry;
	s32 sp12C;
	s32 sp128;
	s32 pad0;
	s32 pad1;
	u16 sp2C;
	u16 sp28;
	u16 portraitIndex;

	portraitIndex = arg2;
	switch (portraitIndex) {
	default:
		entry = &D_8003429C[D_80034453_35053[currentLevel] + portraitIndex - 1];
		texture = (u8 *)((portraitIndex * 0x1600) + D_80034470 - 0x1600);
		break;
	case 0:
		func_80017BF8_187F8(0);
		entry = &D_8003429C[portraitIndex];
		texture = D_80265A80;
		break;
	case 0x33:
		func_80017BF8_187F8(1);
		entry = &D_8003429C[portraitIndex];
		texture = D_80265A80;
		break;
	case 0x34:
		func_80017BF8_187F8(2);
		entry = &D_8003429C[portraitIndex];
		texture = D_80265A80;
		break;
	case 0x35:
		func_80017BF8_187F8(3);
		entry = &D_8003429C[portraitIndex];
		texture = D_80265A80;
		break;
	case 0x36:
		func_80017BF8_187F8(4);
		entry = &D_8003429C[portraitIndex];
		texture = D_80265A80;
		break;
	}

	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, texture + 0x1400);
	gDPTileSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 255);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, texture);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 63 << 2, 31 << 2);
	gSPTextureRectangle(D_8005BB2C++, arg0 << 2, arg1 << 2, (arg0 + 0x40) << 2, (arg1 + 0x20) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, texture + 0x800);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 1023, 256);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 63 << 2, 31 << 2);
	gSPTextureRectangle(D_8005BB2C++, arg0 << 2, (arg1 + 0x20) << 2, (arg0 + 0x40) << 2, (arg1 + 0x40) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

	if ((entry->unk0 != 0) && (entry->unk2 != 0) && (arg3 != 0)) {
		sp12C = entry->unk0 + arg0;
		sp128 = entry->unk2 + arg1;
		gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 64, texture);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 5, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPLoadSync(D_8005BB2C++);
		gDPLoadTile(D_8005BB2C++, G_TX_LOADTILE, 0, 64 << 2, 32 << 2, 80 << 2);
		gDPPipeSync(D_8005BB2C++);
		gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
		gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 64 << 2, 32 << 2, 80 << 2);
		gSPTextureRectangle(D_8005BB2C++, sp12C << 2, sp128 << 2, (sp12C + 0x20) << 2, (sp128 + 0x10) << 2, G_TX_RENDERTILE, 0, 64 << 5, 1 << 10, 1 << 10);
	}

	sp2C = entry->unk4;
	if ((sp2C != 0) && (sp28 = entry->unk6, sp28 != 0)) {
		if (arg4 == 1) {
			sp12C = sp2C + arg0;
			sp128 = sp28 + arg1;
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 64, texture);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadTile(D_8005BB2C++, G_TX_LOADTILE, 32 << 2, 64 << 2, 48 << 2, 80 << 2);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 32 << 2, 64 << 2, 48 << 2, 80 << 2);
			gSPTextureRectangle(D_8005BB2C++, sp12C << 2, sp128 << 2, (sp12C + 0x10) << 2, (sp128 + 0x10) << 2, G_TX_RENDERTILE, 32 << 5, 64 << 5, 1 << 10, 1 << 10);
			return;
		}
		if (arg4 == 2) {
			sp12C = sp2C + arg0;
			sp128 = sp28 + arg1;
			gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 64, texture);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPLoadSync(D_8005BB2C++);
			gDPLoadTile(D_8005BB2C++, G_TX_LOADTILE, 48 << 2, 64 << 2, 64 << 2, 80 << 2);
			gDPPipeSync(D_8005BB2C++);
			gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
			gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 48 << 2, 64 << 2, 64 << 2, 80 << 2);
			gSPTextureRectangle(D_8005BB2C++, sp12C << 2, sp128 << 2, (sp12C + 0x10) << 2, (sp128 + 0x10) << 2, G_TX_RENDERTILE, 48 << 5, 64 << 5, 1 << 10, 1 << 10);
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800190D4_19CD4.s")
#endif

#ifdef NON_MATCHING
void func_80019ABC_1A6BC(arg0, arg1)
s32 arg0;
s32 arg1;
{
	u8 cnt;
	Gfx *sp18;

	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
	gDPSetCombineMode(D_8005BB2C++, G_CC_DECALRGBA, G_CC_DECALRGBA);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, (u8*)((s32)D_80265880 & 0x1FFFFFFF));
	gDPTileSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
	sp18 = D_8005BB2C;
	gDPLoadSync(D_8005BB2C++);
	gDPLoadTLUTCmd(D_8005BB2C++, G_TX_LOADTILE, 255);
	gDPPipeSync(D_8005BB2C++);
	if (D_8003445C != 0) {
		func_800153D8_15FD8(0x156);
		D_8003445C = 0;
		D_800344A8 = 0;
	}
	cnt = D_800344A8;
	if ((cnt % 3) == 2) {
		D_8006C56C = ((u8)D_8006C56C + 1) % 6;
	}
	gDPSetTextureImage(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, (u8*)((s32)&D_80264B00[(u8)D_8006C56C * 0x240] & 0x1FFFFFFF));
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPLoadSync(D_8005BB2C++);
	gDPLoadBlock(D_8005BB2C++, G_TX_LOADTILE, 0, 0, 287, 683);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTile(D_8005BB2C++, G_IM_FMT_CI, G_IM_SIZ_8b, 3, 0, G_TX_RENDERTILE, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
	gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x5C, 0x5C);
	D_8005BB2C->words.w0 = (s32)((((arg0 + 0x12) * 4 & 0xFFF) << 0xC) | 0xE4000000 | ((arg1 + 0x12) * 4 & 0xFFF));
	D_8005BB2C->words.w1 = (s32)(((arg0 * 4 & 0xFFF) << 0xC) | (arg1 * 4 & 0xFFF));
	D_8005BB2C++;
	D_800344A8 = cnt + 1;
	gImmp1(D_8005BB2C++, G_RDPHALF_1, 0x00000000);
	gImmp1(D_8005BB2C++, G_RDPHALF_2, 0x05550555);
	gDPPipeSync(D_8005BB2C++);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80019ABC_1A6BC.s")
#endif

void func_80019EA8_1AAA8(u8 arg0) {
	D_80034478 = 1;
	D_80034480 = arg0;
	osSyncPrintf(&D_800384E0_390E0, D_80034480, arg0);
	// 3)Changing mailMessageIndex=%d
	D_8003447C = 0;
	D_8006C56C = 0;
	D_8003445C = 1;
}

void func_80019F08_1AB08(void) {
	func_80019F80_1AB80();
	D_80034484 = 1;
	D_8003447C = 1;
	D_8006C55C = 0;
	D_8006C558 = 0;
	D_8006C55E = 1;
	D_8006C564 = 0;
	D_8006C566 = 0;
	D_8006C568 = 0;
	D_8006C56A = 0;
	func_8000C6B8_D2B8(0);
}

void func_80019F80_1AB80(void) {
	D_80034464 = D_80034460;
	D_8003446C = D_80034468;
	D_80034474 = D_80034470;
	D_8006C554 = D_8006C550;
	D_80034460 = &D_8006AC10;
	D_80034468 = (s32)&D_8006C410;
	D_80034470 = (s32)&D_3059BA0;
	D_8006C550 = &D_8006C450;
	osSyncPrintf(&D_80038500_39100, D_8006C550, &D_80034468, &D_80034470);
	// INSIDE InitCommsMessages,  dialogue_offsets=%d
}

void func_8001A024_1AC24(void) {
	D_80034460 = D_80034464;
	D_80034468 = D_8003446C;
	D_80034470 = D_80034474;
	D_8006C550 = D_8006C554;
}

void func_8001A068_1AC68(void) {
	if ((func_80017B78_18778() == 0xFFFF) && ((gameplayMode == GAMEPLAY_MODE_UNK1) || (gameplayMode == GAMEPLAY_MODE_UNK6)) && (func_80017B78_18778() != 1)) {
		if (D_80034478 != 0) {
			func_80019F80_1AB80();
			D_80034484 = 1;
			func_80018D7C_1997C(D_80034480);
			D_80034478 = 0;
			return;
		}
		if (D_8006C55E == 0xFFFF) {
			func_80019F08_1AB08();
		}
	}
}

u8 func_8001A114_1AD14(void) {
	return *(u8 *)(D_80034468 + D_8006C558);
}

void func_8001A130_1AD30() {
	if (D_80034478 != 0) {
		func_80019ABC_1A6BC();
	}
}

void func_8001A160_1AD60(void) {
	drawText(&D_80038530_39130);
	D_80034498_35098 = 0;
	if (D_8004758A >= 0x1F) {
		D_80034490_35090 = 0;
	}
	if (D_8004758A < -0x1E) {
		D_80034490_35090 = 1;
	}
	drawText(&D_80038534_39134, 0, 0);
	drawText(&D_8003853C_3913C, 0, 8);
	if (D_80034490_35090 != 0) {
		switch (D_800313D0) {
		default:
		case 0:
			func_8000577C_637C();
			drawText(&D_80038540_39140);
			drawText(&D_80038554_39154, 0x32, 0x5A, 0x32);
			break;
		case 2:
			func_8000577C_637C();
			drawText(&D_8003855C_3915C);
			drawText(&D_8003856C_3916C, 0x32, 0x5A, 0x32);
			break;
		case 1:
			func_8000577C_637C();
			drawText(&D_80038574_39174);
			drawText(&D_80038588_39188, 0x32, 0x5A, 0x32);
			break;
		}
	} else {
		switch (D_800313D0) {
		default:
		case 0:
			drawText(&D_80038590_39190, 0x32, 0x5A, 0x32);
			func_8000577C_637C();
			drawText(&D_800385A4_391A4);
			break;
		case 2:
			drawText(&D_800385A8_391A8, 0x32, 0x5A, 0x32);
			func_8000577C_637C();
			drawText(&D_800385BC_391BC);
			break;
		case 1:
			drawText(&D_800385C4_391C4, 0x32, 0x5A, 0x32);
			func_8000577C_637C();
			drawText(&D_800385D8_391D8);
			break;
		}
	}
	if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_A) != 0) {
		D_80034498_35098 = 1;
	}
}

s32 func_8001A37C_1AF7C(char *arg0) {
	s32 var_s0;
	s32 sp20;

	sp20 = (u8) arg0[1];
	var_s0 = 0;
	osSyncPrintf(&D_800385E0_391E0, sp20); // %c
	if (sp20 >= 0x30 && sp20 < 0x3A) {
		var_s0 = (sp20 * 0xA - 0x1E0) & 0xFF;
	} else {
		osSyncPrintf(&D_800385E4_391E4, sp20); // Character read as key number was not a digit
	}
	sp20 = (u8) arg0[2];
	osSyncPrintf(&D_80038614_39214, sp20); // %c
	if (sp20 >= 0x30 && sp20 < 0x3A) {
		var_s0 = (var_s0 + sp20 - 0x30) & 0xFF;
	} else {
		osSyncPrintf(&D_80038618_39218, sp20); // Character read as key number was not a digit
	}
	return var_s0;
}

void myfree(void) {
	gzip_data_0000 = 0;
}


