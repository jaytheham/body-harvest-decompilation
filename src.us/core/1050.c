#include <ultra64.h>
#include "common.h"

u32 D_800312F0_31EF0 = 0;
s32 D_800312F4_31EF4 = 0;
u32 D_800312F8_31EF8 = 0;
s32 D_800312FC_31EFC = 0;
s32 D_80031300_31F00 = 0;
s32 D_80031304 = 1;
s32 D_80031308_31F08 = 0;
s32 D_8003130C_31F0C = 0;

void func_80000730_1330(s32 arg0);
void* (*func_80000CD4_18D4(Unk80042DA8** arg0))(void);

Unk80047FB8 D_80031310_31F10[5] = {
    {'J', 'O', 'H', 'N', ' ', 'W', 0, 0, 500000, 4, 0, 0},
    {'S', 'T', 'A', 'C', 'E', 'Y', 0, 0, 400000, 8, 0, 0},
    {'A', 'L', 'A', 'N', ' ', 'D', 0, 0, 300000, 12, 0, 0},
    {'A', 'D', 'A', 'M', ' ', 'F', 0, 0, 200000, 16, 0, 0},
    {'R', 'I', 'K', ' ', ' ', 'R', 0, 0, 100000, 20, 0, 0},
};
s32 D_80031374_31F74[20] = {0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
s32 D_800313C4_31FC4 = 0;
s16 D_800313C8_31FC8 = 0;
s32 D_800313CC = 0;

/* CURRENT(2031) */
#ifdef NON_MATCHING
void func_80000450_1050(ALSynConfig *arg0, s32 arg1) {
	Unk80042DB8 *s1;
	Unk80042DB8 *s0;
	s32 s2;
	s32 var_v0;
	f32 var_f0;
	f32 one;
	Unk80042DB8 *temp_v0;

	D_80042DA8.unk0 = 0;
	arg0->dmaproc = (void *)func_80000CD4_18D4;
	var_v0 = osAiSetFrequency(0x7D00);
	arg0->outputRate = var_v0;
	one = 1.0f;
	if (D_80031B58_32758 == 0) {
		var_f0 = ((f32)var_v0 * one) / 60.0f;
	} else {
		var_f0 = ((f32)arg0->outputRate * one) / 50.0f;
	}
	D_800431A8 = (s32)var_f0;
	if ((f32)(u32)D_800431A8 < var_f0) {
		D_800431A8++;
	}
	if (D_800431A8 & 0xF) {
		D_800431A8 = (D_800431A8 & ~0xF) + 0x10;
	}
	D_800431A4 = D_800431A8 - 0x10;
	D_800431AC = D_800431A8 + 0xB0;
	alInit(&D_8003FD58, arg0);
	temp_v0 = &D_80042DB8;
	temp_v0->unk4 = 0;
	temp_v0->unk0 = 0;
	s1 = &D_80042DB8;
	s0 = &D_80042DCC;
	for (s2 = 0; s2 < 0x31; s2++, s1++, s0++) {
		alLink((ALLink *)s0, (ALLink *)s1);
		s1->unk10 = alHeapAlloc(arg0->heap, 1, 0x400);
	}
	s1->unk10 = alHeapAlloc(arg0->heap, 1, 0x400);
	{
		Acmd **p;
		for (p = D_8003FB20; p < (Acmd **)D_8003FB28; p++) {
			*p = alHeapAlloc(arg0->heap, 1, 0x8000);
		}
	}
	s2 = 0;
	for (; s2 < 3; s2++) {
		D_8003FB28[s2] = alHeapAlloc(arg0->heap, 1, 0x90);
		D_8003FB28[s2]->unk70 = 2;
		D_8003FB28[s2]->unk74 = D_8003FB28[s2];
		D_8003FB28[s2]->outBuf = alHeapAlloc(arg0->heap, 1, D_800431AC * 4);
	}
	osCreateMesgQueue(&D_8003FD20, D_8003FD38, 8);
	osCreateMesgQueue(&D_8003FCE8, D_8003FD00, 8);
	osCreateThread(&D_8003FB38, 5, (void (*)(void *))func_80000730_1330, NULL, &D_80042DA8, arg1);
	osStartThread(&D_8003FB38);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80000450_1050.s")
#endif

#ifdef NON_MATCHING
void func_80000730_1330(s32 arg0) {
	OSMesg sp64;
	OSScClient sp58;
	BhAudioBuf *var_s0;
	s32 var_s6;
	s32 var_v0;
	f32 var_f0;
	f32 var_f10;

	var_s6 = 0;
	var_s0 = NULL;
	osScAddClient(&D_800680A0, &sp58, &D_8003FCE8);
	do {
		osRecvMesg(&D_8003FCE8, &sp64, 1);
		switch (((OSScMsg *)sp64)->type) {
		case OS_SC_PRE_NMI_MSG:
			break;
		case OS_SC_RETRACE_MSG:
			if (func_8000091C_151C(D_8003FB28[D_800431A0 % 3], var_s0) != 0) {
				osRecvMesg(&D_8003FD20, &sp64, 1);
				func_80000AD4_16D4((s32)((BhAudioMsg *)sp64)->audioBuf);
				var_s0 = ((BhAudioMsg *)sp64)->audioBuf;
			}
			var_v0 = D_800312FC_31EFC;
			if (var_v0 == 0) {
				D_800431B4 = 0.0f;
			} else {
				var_f0 = (f32)var_v0;
				if (var_v0 < 0) {
					var_f0 += 4294967296.0f;
				}
				var_f10 = (f32)D_80031300_31F00;
				if (D_80031300_31F00 < 0) {
					var_f10 += 4294967296.0f;
				}
				D_800431B4 = (f32)(((f64)(var_f0 - var_f10) * 100.0) / (f64)var_f0);
			}
			D_800312FC_31EFC = 0;
			D_80031300_31F00 = 0;
			break;
		case 10:
			var_s6 = 1;
			break;
		}
	} while (var_s6 == 0);
	alClose(&D_8003FD58);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80000730_1330.s")
#endif

s32 func_8000091C_151C(BhAudioTask *arg0, BhAudioBuf *arg1) {
	s32 sp3C;
	s32 sp38;
	s32 sp34;
	Acmd *temp_v1;

	func_80000D0C_190C();
	sp3C = osVirtualToPhysical(arg0->outBuf);
	if (arg1 != NULL) {
		osAiSetNextBuffer(arg1->buf, arg1->numFrames * 4);
	}
	arg0->outLen = (s16)(((D_800431A8 - (func_8001BCE0_1C8E0() >> 2)) + 0xB0) & 0xFFF0);
	if (arg0->outLen < D_800431A4) {
		arg0->outLen = (s16)D_800431A4;
	}
	temp_v1 = alAudioFrame(D_8003FB20[D_800312F4_31EF4], &sp34, (s16 *)sp3C, arg0->outLen);
	if (sp34 == 0) {
		return 0;
	}
	arg0->task.next = NULL;
	arg0->task.msgQ = &D_8003FD20;
	arg0->task.msg = (OSMesg)((u8 *)arg0 + 0x70);
	arg0->task.flags = 2;
	arg0->task.list.t.data_ptr = (u64 *)D_8003FB20[D_800312F4_31EF4];
	arg0->task.list.t.data_size = (u32)(((s32)temp_v1 - (s32)D_8003FB20[D_800312F4_31EF4]) >> 3) * 8;
	arg0->task.list.t.type = M_AUDTASK;
	arg0->task.list.t.ucode_boot = (u64 *)rspbootTextStart;
	arg0->task.list.t.ucode_boot_size = (u32)((u8 *)D_8002DEE0_2EAE0 - (u8 *)rspbootTextStart);
	arg0->task.list.t.flags = 0;
	arg0->task.list.t.ucode = (u64 *)D_8002F310_2FF10;
	arg0->task.list.t.ucode_data = (u64 *)D_8003F060_3FC60;
	arg0->task.list.t.ucode_data_size = 0x800;
	arg0->task.list.t.yield_data_ptr = NULL;
	arg0->task.list.t.yield_data_size = 0;
	osSendMesg(osScGetCmdQ(&D_800680A0), (OSMesg)&arg0->task, OS_MESG_BLOCK);
	D_800312F4_31EF4 ^= 1;
	return 1;
}

void func_80000AD4_16D4(s32 arg0)
{
	int new_var;
	u32 ret = func_8001BCE0_1C8E0();
	new_var = 0;
	if (((ret >> 2) == 0) && (D_80031304 == 0))
	{
		D_80031304 = new_var;
	}
}

#ifdef NON_MATCHING
s32 func_80000B14_1714(u32 arg0, s32 arg1, u32 arg2) {
	Unk80042DB8 *var_a2;
	Unk80042DB8 *var_s0;
	Unk80042DB8 *var_s1;
	s32 temp_s1;

	var_a2 = NULL;
	D_800312FC_31EFC += 1;
	var_s1 = D_80042DA8.unk4;
	if (var_s1 != NULL) {
		var_s0 = var_s1;
		do {
			if (arg0 < (u32)var_s0->unk8) {
				break;
			}
			var_a2 = var_s0;
			if ((var_s0->unk8 + 0x400) >= (s32)(arg0 + arg1)) {
				var_s0->unkC = (s32)D_800431A0;
				return osVirtualToPhysical((void *)((u8 *)var_s0->unk10 + arg0 - (u32)var_s0->unk8));
			}
			var_s0 = var_s0->unk0;
		} while (var_s0 != NULL);
	}
	var_s0 = D_80042DA8.unk8;
	if (var_s0 == NULL) {
		return osVirtualToPhysical(var_s1);
	}
	D_80042DA8.unk8 = var_s0->unk0;
	alUnlink((ALLink *)var_s0);
	if (var_a2 != NULL) {
		alLink((ALLink *)var_s0, (ALLink *)var_a2);
	} else {
		var_s1 = D_80042DA8.unk4;
		if (var_s1 != NULL) {
			D_80042DA8.unk4 = var_s0;
			var_s0->unk0 = var_s1;
			var_s0->unk4 = NULL;
			var_s1->unk4 = var_s0;
		} else {
			D_80042DA8.unk4 = var_s0;
			var_s0->unk0 = NULL;
			var_s0->unk4 = NULL;
		}
	}
	temp_s1 = arg0 & 1;
	arg0 = arg0 - temp_s1;
	var_s0->unk8 = (s32)arg0;
	var_s0->unkC = (s32)D_800431A0;
	osPiStartDma(&D_8006A330[D_800312F0_31EF0++], 0, 0, arg0, var_s0->unk10, 0x400, &D_80067F58);
	D_80031300_31F00 += 1;
	return osVirtualToPhysical(var_s0->unk10) + temp_s1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80000B14_1714.s")
#endif

void* (*func_80000CD4_18D4(Unk80042DA8** arg0))(void) {
	if (D_80042DA8.unk0 == 0) {
		D_80042DA8.unk4 = 0;
		D_80042DA8.unk8 = &D_80042DB8;
		D_80042DA8.unk0 = 1U;
	}
	*arg0 = &D_80042DA8;
	return (void* (*)(void))&func_80000B14_1714;
}

void func_80000D0C_190C(void)
{
	u32 var_s0;
	OSMesg sp40;
	Unk80042DB8 *var_s0_2;
	Unk80042DB8 *temp_v0;
	var_s0 = 0;
	if (D_800312F0_31EF0 != 0)
	{
		do
		{
			osRecvMesg(&D_80067F58, &sp40, 0);
			var_s0 += 1;
		}
		while (var_s0 < ((u32) D_800312F0_31EF0));
	}
	var_s0_2 = D_80042DA8.unk4;
	if (var_s0_2 != NULL)
	{
		do
		{
			temp_v0 = var_s0_2->unk0;
			if (((u32) (var_s0_2->unkC + 1)) < ((u32) D_800431A0))
			{
				if (var_s0_2 == D_80042DA8.unk4)
				{
					D_80042DA8.unk4 = var_s0_2->unk0;
				}
					alUnlink((ALLink *) var_s0_2);
				if (D_80042DA8.unk8 != NULL)
				{
					alLink((ALLink *) var_s0_2, (ALLink *) D_80042DA8.unk8);
				}
				else
				{
					D_80042DA8.unk8 = var_s0_2;
					var_s0_2->unk0 = NULL;
					var_s0_2->unk4 = NULL;
				}
			}
			var_s0_2 = temp_v0;
		}
		while (temp_v0 != NULL);
	}
	if (((u32) D_800312F8_31EF8) < D_800312F0_31EF0)
	{
		D_800312F8_31EF8 = D_800312F0_31EF0;
	}
	D_800312F0_31EF0 = 0;
	D_800431A0 += 1;
}

void checkForRumblePak(void) {
	if (osMotorInit(&D_80043388, &D_80047610, 0) != 0) {
		return;
	}

	osSyncPrintf(D_80036840); // Rumble pak(tm)  detected!
	D_80047678 = 1;
	func_8000108C_1C8C(0);
	D_800313CC = 0;
	D_8004767C = 0;
	D_80047680 = 0;
	D_80047688 = 0;
	D_8004768C = 0;
	D_80047690 = 0;
	D_80047698 = gameplayMode;
}

#ifdef NON_MATCHING
void func_80000ED4_1AD4(void) {
	s32 pad0;
	Unk80047578 *sp58;
	OSPfs *pfs;
	s16 cmd;
	s32 idx;

	while (1) {
		osRecvMesg(&D_800433A8, (OSMesg *)&sp58, 1);
		if (D_80047678 != 1) {
			continue;
		}
		func_8000FF40_10B40();
		cmd = sp58->unk0;
		idx = sp58->unk4;
		switch (cmd) {
		case 1:
			if (osMotorStart(&D_80047610 + idx) != 0) {
				D_80047678 = 0;
			}
			break;
		case 0:
			if (osMotorStop(&D_80047610 + idx) != 0) {
				D_80047678 = 0;
			}
			break;
		case 2:
			pfs = &D_80047610 + idx;
			if (osMotorInit(&D_80043388, pfs, 0) == 0) {
				D_80047678 = 1;
			}
			osMotorStop(pfs);
		}
		func_8000FF88_10B88();
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80000ED4_1AD4.s")
#endif

void func_80001050_1C50(s32 arg0) {
	D_80047578.unk4 = arg0;
	D_80047578.unk0 = 1;
	osSendMesg(&D_800433A8, &D_80047578, 1);
}

void func_8000108C_1C8C(s32 arg0) {
	D_80047578.unk4 = arg0;
	D_80047578.unk0 = 0;
	osSendMesg(&D_800433A8, &D_80047578, 1);
}

void func_800010C4_1CC4(s32 arg0) {
	D_80047694 = 0;
	D_80047578.unk4 = arg0;
	D_80047578.unk0 = 2;
	osSendMesg(&D_800433A8, &D_80047578, 1);
}

void func_80001108_1D08(void) {
	osMotorInit(&D_80043388, &D_80047610, 0);
	osMotorStop(&D_80047610);
}

void func_80001144_1D44(u8 arg0, u8 arg1, u8 arg2) {
	if (showDemoText != 1) {
		D_80047680 = arg0 * 0x10;
		D_80047684 = arg2;
		D_80047688 = arg1;
	}
}

#ifdef NON_MATCHING
void func_80001190_1D90(void) {
	if (gameplayMode != (GameplayMode)D_80047698) {
		func_800010C4_1CC4(0);
		D_80047698 = gameplayMode;
	}
	if (gameplayMode == GAMEPLAY_MODE_UNK1 || gameplayMode == GAMEPLAY_MODE_UNK3 || gameplayMode == GAMEPLAY_MODE_UNKB) {
		if (D_80047678 == 1) {
			f32 temp_f0;
			s32 temp_f8;
			D_800313CC = D_8004767C;
			if ((s32)D_8004768C >= 0x2711) {
				temp_f0 = D_80036C88 / (f32)(s32)D_8004768C;
				temp_f8 = (s32)((f32)(s32)D_8004767C * (temp_f0 * temp_f0 * temp_f0));
				D_800313CC = temp_f8;
				D_800313CC /= 2;
			}
			if (D_800313CC >= 0x100) {
				func_80001050_1C50(0);
			} else {
				func_8000108C_1C8C(0);
			}
			if ((s32)D_8004767C >= 0x100) {
				D_8004767C -= 0x100;
			} else {
				D_8004767C += (s32)(((s32)D_80047680 >> 4) * ((s32)D_80047680 >> 4) * ((s32)D_80047680 >> 4)) / 512;
			}
			if ((s32)D_80047688 > 0) {
				D_80047688 -= 1;
			} else if (D_80047684 < (s32)D_80047680) {
				D_80047680 -= D_80047684;
			} else {
				D_80047684 = 0;
				D_80047680 = 0;
			}
			D_8004768C += 1;
			if ((s32)D_8004767C >= 0x100) {
				D_80047690 = 0;
				return;
			}
			D_80047690 = D_80047690 + 1;
			if ((s32)D_80047690 >= 0x321) {
				D_8004768C = 0;
			}
		} else {
			D_80047694 = D_80047694 + 1;
			if (D_80047694 == 0x9C4) {
				checkForRumblePak();
				D_80047694 = 0;
			}
		}
	} else {
		func_8000108C_1C8C(0);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80001190_1D90.s")
#endif

void osViExtendVStart(s32 arg0) {
	__additional_scanline = arg0;
}

void func_8000140C_200C(OSThread *arg0) {
	__osActiveQueue2 = arg0;
}

OSThread *__osGetActiveQueue(void) {
	return __osActiveQueue2;
}

void func_80001424_2024(void) {
	OSContStatus contStatus[4];
	u8 bitpattern;

	D_800476A2 = 1;
	__osActiveQueue2 = 1;
	D_800475D0.button = 0x9000;
	osCreateMesgQueue(&D_800433A8, &D_800433C0, 1);
	osCreateThread(&D_800433C8, 0xA, (void (*)(void *))func_80000ED4_1AD4, 0, &D_80047578, 0xF);
	osStartThread(&D_800433C8);
	osCreateMesgQueue(&D_80043388, &D_800433A4, 1);
	osSetEventMesg(5, &D_80043388, D_800433A0);
	osContInit(&D_80043388, &bitpattern, contStatus);
	D_80047584 = 1;
	if (contStatus[0].errno == 8) {
		D_80047584 = 0;
	}
	D_80047608 = osEepromProbe(&D_80043388);
	D_800476A0 = 0;
	osContSetCh(2);
	guess_restoreSavedData();
	osSendMesg(&D_8006A8F0, 0, 0);
	D_800475E8 = 0;
	D_800475EC = 1;
	D_800475F0 = 0;
	D_800475F4 = 0;
	D_80047694 = 0;
	D_80047678 = 0;
	if ((bitpattern & 1) && (contStatus[0].type & 4) && (contStatus[0].status & 1)) {
		checkForRumblePak();
	}
}

// https://decomp.me/scratch/zsK5T
#ifdef NON_MATCHING
void func_800015B4_21B4(s32 arg0, s32 arg1) {
	u8 *v0;
	s32 var_v1;
	s32 var_a2;
	s32 var_a3;
	u8 var_t9;

	v0 = &D_800431C0 + arg0;
	v0[0] = 0x1C;
	var_v1 = (arg0 + 4) & 0xFFFF;
	var_a2 = 0;
	var_a3 = 0;
	if (arg1 > 0) {
		do {
			var_t9 = *(&D_800431C0 + var_v1);
			var_a3 = (var_a3 + 1) & 0xFFFF;
			var_v1 = (var_v1 + 1) & 0xFFFF;
			var_a2 = (var_a2 + var_t9) & 0xFFFF;
		} while (var_a3 < arg1);
	}
	v0[2] = var_a2;
	v0[3] = var_a2 >> 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800015B4_21B4.s")
#endif

// https://decomp.me/scratch/Y6mYv
#ifdef NON_MATCHING
s32 validateSaveVersionAndChecksum(s32 arg0, s32 arg1)
{
  u8 *ptr;
  u8 version;
  s32 stored_checksum;
  s32 computed_checksum;
  s32 i;
  ptr = ((u8 *) (&D_800431C0)) + arg0;
  version = ptr[0];
  if (version != 0x1C)
  {
	osSyncPrintf(&D_8003685C_3745C, version);
	return 0;
  }
  stored_checksum = ((ptr[3] << 8) + ptr[2]) & 0xFFFF;
  ptr += 4;
  computed_checksum = 0;
 for (i = 0;i < arg1;i = (i + 1) & 0xFFFF){
	  computed_checksum = (computed_checksum + (*ptr)) & 0xFFFF;
	  ptr++;
  }
  if (computed_checksum != stored_checksum)
  {
	osSyncPrintf(&D_80036870_37470, arg1, stored_checksum);
	return 0;
  }
  return 1;
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/validateSaveVersionAndChecksum.s")
#endif

#ifdef NON_MATCHING
void func_800016D8_22D8(void) {
	u16 i, writeIdx;
	s32 val, val2;

	D_800431C8 = (u8)D_800313D0;
	writeIdx = 9;
	for (i = 0; i < 5; i++) {
		u16 j;
		for (j = 0; j < 6; j++) {
			(&D_800431C0)[writeIdx++] = *((u8*)(D_80047FB8 + i) + j);
		}
		val = ((Unk80047FB8*)((u8*)D_80047FB8 + i * 0x14))->unk8;
		(&D_800431C0)[writeIdx++] = val;
		(&D_800431C0)[writeIdx++] = val >> 8;
		(&D_800431C0)[writeIdx++] = val >> 16;
		(&D_800431C0)[writeIdx++] = val >> 24;
		(&D_800431C0)[writeIdx++] = ((Unk80047FB8*)((u8*)D_80047FB8 + i * 0x14))->unkC;
		val2 = ((Unk80047FB8*)((u8*)D_80047FB8 + i * 0x14))->unk10;
		(&D_800431C0)[writeIdx++] = val2;
		(&D_800431C0)[writeIdx++] = val2 >> 8;
		(&D_800431C0)[writeIdx++] = val2 >> 16;
	}
	func_800015B4_21B4(4, 0x47);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800016D8_22D8.s")
#endif

#ifdef NON_MATCHING
void func_80001830_2430(void) {
	u16 i, j, writeIdx;
	s32 val, val2;

	D_800431C8 = 0xFF;
	writeIdx = 9;
	for (i = 0; i < 5; i++) {
		for (j = 0; j < 6; j++) {
			(&D_800431C0)[writeIdx++] = *((u8*)(D_80031310_31F10 + i) + j);
		}
		val = ((Unk80047FB8*)((u8*)D_80031310_31F10 + i * 0x14))->unk8;
		(&D_800431C0)[writeIdx++] = val;
		(&D_800431C0)[writeIdx++] = val >> 8;
		(&D_800431C0)[writeIdx++] = val >> 16;
		(&D_800431C0)[writeIdx++] = val >> 24;
		(&D_800431C0)[writeIdx++] = ((Unk80047FB8*)((u8*)D_80031310_31F10 + i * 0x14))->unkC;
		val2 = ((Unk80047FB8*)((u8*)D_80031310_31F10 + i * 0x14))->unk10;
		(&D_800431C0)[writeIdx++] = val2;
		(&D_800431C0)[writeIdx++] = val2 >> 8;
		(&D_800431C0)[writeIdx++] = val2 >> 16;
	}
	func_800015B4_21B4(4, 0x47);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80001830_2430.s")
#endif

#ifdef NON_MATCHING
void func_80001984_2584(void) {
	Unk80047FB8 *dst;
	u8 *src;

loop:
	if (validateSaveVersionAndChecksum(4, 0x47) != 0) {
		D_800313D0 = (s16)D_800431C8;
		dst = D_80047FB8;
		src = &D_800431C9;
		do {
			dst->unk0 = src[0];
			dst->unk1 = src[1];
			dst->unk2 = src[2];
			dst->unk3 = src[3];
			dst->unk4 = src[4];
			dst->unk5 = src[5];
			dst->unk8 = src[6];
			dst->unk8 += src[7] << 8;
			dst->unk8 += src[8] << 16;
			dst->unk8 += src[9] << 24;
			dst->unkC = (s16)src[10];
			dst->unk6 = 0;
			dst->unk10 = src[11];
			dst->unk10 += src[12] << 8;
			dst->unk10 += src[13] << 16;
			dst++;
			src += 14;
		} while (dst != &D_8004801C);
		return;
	}
	func_80001830_2430();
	goto loop;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80001984_2584.s")
#endif

#ifdef NON_MATCHING
void guess_prepareToSaveGame(s32 arg0) {
	s32 v1;
	Unk80052A98 *stats;
	u8 *dest;
	u8 *p;
	s32 i;

	v1 = arg0 * 0x7A;
	dest = &((&D_800431C0)[v1 + 0x53]);

	stats = D_80052A98;
	do {
		osSyncPrintf(&D_80036884_37484, stats->score);
		dest[0] = (u8)stats->score;
		dest[1] = (u8)(stats->score >> 8);
		dest[2] = (u8)(stats->score >> 16);
		dest[3] = (u8)(stats->score >> 24);
		dest += 4;
		osSyncPrintf(&D_80036894_37494, (s32)stats->humansKilled);
		*dest++ = (u8)stats->humansKilled;
		osSyncPrintf(&D_800368A0_374A0, (s32)stats->secondsElapsed);
		dest[0] = (u8)stats->secondsElapsed;
		dest[1] = (u8)((s32)stats->secondsElapsed >> 8);
		dest[2] = (u8)((s32)stats->secondsElapsed >> 16);
		dest += 3;
		stats++;
	} while (stats < (Unk80052A98 *)&D_80052AC8);

	osSyncPrintf(&D_800368AC_374AC);
	*dest++ = (u8)((D_80047FA0 * 0x10) | currentLevel);
	osSyncPrintf(&D_800368C4_374C4, currentLevel, D_80047FA0);
	*dest++ = (u8)D_80047F9C;
	osSyncPrintf(&D_800368DC_374DC, D_80047F9C);
	dest[0] = (u8)D_80031420;
	dest[1] = (u8)((u32)D_80031420 >> 8);
	dest[2] = (u8)((u32)D_80031420 >> 0x10);
	dest[3] = (u8)((u32)D_80031420 >> 0x18);
	dest += 4;
	osSyncPrintf(&D_800368F4_374F4, (s32)D_80031420);

	p = &D_80047FA8[0];
	do {
		*dest++ = *p++;
	} while ((u32)p < (u32)&D_80047FAE);
	osSyncPrintf(&D_80036904_37504);

	for (i = 0; i < 7; i++) {
		*dest++ = weaponSlots[i];
		osSyncPrintf(&D_80036910_37510, i, (s32)weaponSlots[i]);
	}

	osSyncPrintf(&D_8003692C_3752C);
	{
		u64 flags;

		flags = D_8004DC48.unk0;
		osSyncPrintf(&D_80036930_37530);
		*dest++ = (s8)flags;
		*dest++ = (s8)(u32)__ull_rshift(flags, 8);
		*dest++ = (s8)(u32)__ull_rshift(flags, 0x10);
		*dest++ = (s8)(u32)__ull_rshift(flags, 0x18);
		*dest++ = (s8)(u32)__ull_rshift(flags, 0x20);
		*dest++ = (s8)(u32)__ull_rshift(flags, 0x28);
		*dest++ = (s8)(u32)__ull_rshift(flags, 0x30);
		*dest++ = (s8)(u32)__ull_rshift(flags, 0x38);
		osSyncPrintf(&D_80036938_37538);
	}

	*dest++ = (u8)((D_8004DC5C * 0x10) + D_8004DC5E);

	dest[1] = (u8)((s32)D_80048026 >> 8);
	dest[0] = (u8)D_80048026;
	dest += 3;
	osSyncPrintf(&D_80036940_37540, (s32)D_80048026);

	dest[1] = (u8)((s32)D_80048028 >> 8);
	dest[0] = (u8)D_80048028;
	dest += 2;
	osSyncPrintf(&D_8003696C_3756C);

	{
		u64 flags;

		flags = ((u64)(u32)D_8004DC50.unk0 << 0x20) | (u32)D_8004DC50.unk4;
		*dest++ = (s8)flags;
		*dest++ = (s8)(u32)__ull_rshift(flags, 8);
		*dest++ = (s8)(u32)__ull_rshift(flags, 0x10);
		*dest++ = (s8)(u32)__ull_rshift(flags, 0x18);
		*dest++ = (s8)(u32)__ull_rshift(flags, 0x20);
		*dest++ = (s8)(u32)__ull_rshift(flags, 0x28);
		*dest++ = (s8)(u32)__ull_rshift(flags, 0x30);
		*dest++ = (s8)(u32)__ull_rshift(flags, 0x38);
		osSyncPrintf(&D_80036984_37584);
	}

	{
		u32 playtime = D_80052A90;
		if (playtime == 0) {
			playtime = 1;
			D_80052A90 = 1;
		}
		dest[0] = (s8)playtime;
		dest[1] = (s8)(playtime >> 8);
		dest[2] = (s8)(playtime >> 0x10);
		dest[3] = (s8)(playtime >> 0x18);
		dest[4] = (s8)D_80047F98;
		dest += 5;
		osSyncPrintf(&D_8003698C_3758C, D_80047F98);
	}

	dest[0] = (u8)D_8004D154;
	dest[1] = (u8)((u32)D_8004D154 >> 8);
	dest[2] = (u8)((u32)D_8004D154 >> 0x10);
	dest[3] = (u8)((u32)D_8004D154 >> 0x18);
	dest += 4;
	osSyncPrintf(&D_800369A0_375A0, (s32)D_8004D154);

	dest[0] = (u8)D_8004D158;
	dest[1] = (u8)((u32)D_8004D158 >> 8);
	dest[2] = (u8)((u32)D_8004D158 >> 0x10);
	dest[3] = (u8)((u32)D_8004D158 >> 0x18);
	dest += 4;
	osSyncPrintf(&D_800369B4_375B4, (s32)D_8004D158);

	osSyncPrintf(&D_800369C4_375C4);
	osSyncPrintf(&D_800369D0_375D0);

	for (i = 0; i < 7; i++) {
		*dest++ = (s8)(D_80048140[weaponSlots[i]] >> D_80031374_31F74[weaponSlots[i]]);
		osSyncPrintf(&D_80036A04_37604, i, (s32)D_80048140[i]);
	}

	*dest++ = (u8)D_80048030;
	osSyncPrintf(&D_80036A20_37620, (s32)D_80048030);

	*dest++ = (u8)D_80052ACD;
	osSyncPrintf(&D_80036A38_37638, (s32)D_80052ACD);

	dest[0] = (s8)D_8004815C;
	dest[1] = (s8)D_80048160;
	dest[2] = (s8)D_80048162;
	dest[3] = (s8)D_8004815E;
	dest += 3;
	osSyncPrintf(&D_80036A48_37648, (s32)D_8004815C, (s32)D_80048160, D_80048162, (s32)D_8004815E);

	osSyncPrintf(&D_80036A68_37668);
	func_800015B4_21B4(v1 + 0x4F, 0x76);
	osSyncPrintf(&D_80036A6C_3766C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/guess_prepareToSaveGame.s")
#endif

#ifdef NON_MATCHING
void func_800020E0_2CE0(s32 arg0, s32 arg1) {
	s32 i;
	s32 src_off;
	s32 dst_base;
	s32 src_next;
	s32 dst_next;
	u8 *dst;
	u8 *src;

	i = 2;
	src_off = arg0 * 0x7A + 0x53;
	dst_base = arg1 * 0x7A;
	src_next = src_off + 1;
	src = (u8 *)&D_800431C0 + (src_next + 1);
	(&D_800431C0)[dst_base + 0x53] = (&D_800431C0)[src_off];
	dst_next = dst_base + 0x53 + 1;
	dst = (u8 *)&D_800431C0 + (dst_next + 1);
	(&D_800431C0)[dst_next] = (&D_800431C0)[src_next];
loop:
	i += 4;
	dst += 4;
	dst[-4] = src[0];
	dst[-3] = src[1];
	src += 4;
	dst[-2] = src[-2];
	dst[-1] = src[-1];
	if (i != 0x76) goto loop;

	func_800015B4_21B4(dst_base + 0x4F, 0x76);
	func_800015B4_21B4(0, 0x1B9);
	if (D_80047608 != 0) {
		osEepromLongWrite(&D_80043388, 0, &D_800431C0, 0x1BD);
	}
}
	#else
	#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800020E0_2CE0.s")
	#endif

#ifdef NON_MATCHING
void func_800021CC_2DCC(s32 arg0) {
	u8 *ptr;
	s32 i;

	ptr = (u8 *)&D_800431C0 + arg0 * 0x7A + 0x53;

	for (i = 0; i < 6; i++) {
		ptr[0] = 0;
		ptr[1] = 0;
		ptr[2] = 0;
		ptr[3] = 0;
		ptr[4] = 0;
		ptr[5] = 0;
		ptr[6] = 0;
		ptr[7] = 0;
		ptr += 8;
	}
	ptr[0] = 1;
	ptr[1] = 0;
	ptr[2] = 0x7B;
	ptr[3] = 0;
	ptr[4] = 0;
	ptr[5] = 0;
	ptr[6] = 0x45;
	ptr[7] = 0x6D;
	ptr[8] = 0x70;
	ptr[9] = 0x74;
	ptr[10] = 0x79;
	ptr[11] = 0;
	ptr[12] = 2;
	ptr += 0xD;

	for (i = 1; i < 7; i++) {
		*ptr = 0;
		ptr++;
	}
	*ptr = 1;
	ptr++;

	for (i = 1; i < 8; i++) {
		*ptr = 0;
		ptr++;
	}
	ptr[0] = 0;
	ptr[1] = 0;
	ptr[2] = 0;
	ptr[3] = 0;
	ptr[4] = 0;
	ptr += 5;

	for (i = 0; i < 8; i++) {
		*ptr = 0;
		ptr++;
	}

	for (i = 0; i < 4; i++) {
		*ptr = 0;
		ptr++;
	}

	*ptr = 0;
	ptr++;

	for (i = 0; i < 8; i++) {
		*ptr = 0;
		ptr++;
		continue;
	}

	ptr[0] = 0;
	ptr[1] = 0;
	ptr[2] = 0;
	ptr[4] = 0;
	ptr[5] = 0;
	ptr[6] = 0;
	ptr[3] = 0;
	ptr[7] = 0;
	ptr[8] = 0;
	ptr[9] = 0;
	ptr[10] = 0;
	ptr[11] = 0;
	ptr += 0xC;
	*ptr = 0;

	func_800015B4_21B4(arg0 * 0x7A + 0x4F, 0x76);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800021CC_2DCC.s")
#endif

#ifdef NON_MATCHING
void guess_loadSavedGame(s32 arg0) {
    u32 sp34;
    s32 sp30;
    s32 saveSlot;
    u8 *src;
    Unk80052A98 *stat;
    s32 shift;
    u8 b;
    u8 *p;
    s16 *q;
    s32 i;

    saveSlot = arg0 * 0x7A + 0x4F;
    if (validateSaveVersionAndChecksum(saveSlot, 0x76) != 0) {
        src = &D_800431C0 + saveSlot + 4;
        stat = D_80052A98;
        b = *src;
        do {
            stat->score = b;
            stat->score += (s32)src[1] << 8;
            stat->score += (s32)src[2] << 16;
            stat->score += (s32)src[3] << 24;
            src += 4;
            osSyncPrintf(&D_80036A8C_3768C, stat->score);
            stat->humansKilled = *src++;
            osSyncPrintf(&D_80036AA0_376A0, stat->humansKilled);
            stat->secondsElapsed = src[0];
            stat->secondsElapsed += src[1] << 8;
            stat->secondsElapsed += src[2] << 16;
            osSyncPrintf(&D_80036AAC_376AC, stat->secondsElapsed);
            src += 3;
            stat++;
        } while ((u32)stat < (u32)&D_80052AC8);
        osSyncPrintf(&D_80036AB8_376B8);
        b = *src++;
        currentLevel = b & 0xF;
        D_80047FA0 = (s32)b >> 4;
        osSyncPrintf(&D_80036AD4_376D4, currentLevel, D_80047FA0, &currentLevel);
        D_80047F9C = *src++ & 0xF;
        osSyncPrintf(&D_80036AEC_376EC, D_80047F9C);
        D_80031420 = 0;
        shift = 0;
        do {
            D_80031420 += *src++ << shift;
            shift += 8;
        } while (shift < 0x20);
        if (D_800313D0 == 2) {
            D_80031420 &= ~2;
        }
        func_80016FD0_17BD0((s16)((D_80031420 & 0x60) >> 5));
        func_800170F4_17CF4((s16)((D_80031420 & 0x18) >> 3));
        osSyncPrintf(&D_80036AFC_376FC, D_80031420);
        p = D_80047FA8;
        do {
            *p++ = *src++;
        } while ((u32)p < (u32)&D_80047FAE);
        D_80047FAE = 0;
        osSyncPrintf(&D_80036B0C_3770C);
        p = &weaponSlots[0];
        b = *src;
        do {
            src++;
            *p = b;
            osSyncPrintf(&D_80036B18_37718, b);
            p++;
        } while ((u32)p < (u32)&D_8004813F);
        osSyncPrintf(&D_80036B1C_3771C);
        sp34 = 0;
        sp30 = 0;
        osSyncPrintf(&D_80036B20_37720);
        shift = 0;
        do {
            u64 shifted = __ll_lshift(*src, shift);
            u32 newLo = (u32)shifted + sp34;
            sp30 = (newLo < sp34 ? 1 : 0) + (u32)(shifted >> 32) + sp30;
            sp34 = newLo;
            src++;
            shift += 8;
        } while (shift < 0x40);
        D_8004DC48.unk0 = ((u64)sp30 << 32) | sp34;
        osSyncPrintf(&D_80036B28_37728, sp30, sp34);
        b = *src;
        D_8004DC5C = (s8)((s32)b >> 4);
        D_8004DC5E = b & 0xF;
        D_80048026 = src[1];
        D_80048026 += src[2] << 8;
        src += 3;
        osSyncPrintf(&D_80036B30_37730, D_80048026);
        D_80048028 = src[0];
        D_80048028 += src[1] << 8;
        src += 2;
        D_8004DC50.unk4 = 0;
        D_8004DC50.unk0 = 0;
        osSyncPrintf(&D_80036B60_37760);
        shift = 0;
        b = *src;
        do {
            u64 shifted = __ll_lshift(b, shift);
            u32 newLo = (u32)shifted + D_8004DC54;
            D_8004DC50.unk0 = (newLo < D_8004DC54 ? 1 : 0) + (u32)(shifted >> 32) + D_8004DC50.unk0;
            D_8004DC54 = newLo;
            src++;
            b = *src;
            shift += 8;
        } while (shift < 0x40);
        osSyncPrintf(&D_80036B78_37778, D_8004DC50.unk0, D_8004DC50.unk4);
        D_80052A90 = 0;
        shift = 0;
        do {
            D_80052A90 += *src++ << shift;
            shift += 8;
        } while (shift < 0x20);
        D_80047F98 = *src++;
        osSyncPrintf(&D_80036B80_37780, D_80047F98);
        if (D_80047F98 < D_80047F9C) {
            D_80047F98 = D_80047F9C;
        }
        osSyncPrintf(&D_80036B94_37794, D_80047F98);
		D_80047F94 = D_8003DFD4_3EBD4[currentLevel * 0x30 + D_80047F98 * 8];
        D_8004D154 = 0;
        shift = 0;
        do {
            D_8004D154 += *src++ << shift;
            shift += 8;
        } while (shift < 0x20);
        osSyncPrintf(&D_80036BA4_377A4, D_8004D154);
        D_8004D150 = 0;
        D_8004D158 = 0;
        shift = 0;
        do {
            D_8004D158 += *src++ << shift;
            shift += 8;
        } while (shift < 0x20);
        osSyncPrintf(&D_80036BB8_377B8, D_8004D158);
        osSyncPrintf(&D_80036BC8_377C8);
        p = &weaponSlots[0];
        q = &D_80048140[0];
        i = 0;
        do {
            u8 slot = *p;
            D_80048140[slot] = (s16)(*src++ << D_80031374_31F74[slot]);
            osSyncPrintf(&D_80036BD4_377D4, i, *q);
            i++;
            p++;
            q++;
        } while (i != 7);
        D_80048030 = *src++;
        osSyncPrintf(&D_80036BF4_377F4, D_80048030);
        osSyncPrintf(&D_80036C0C_3780C, D_80052ACD);
        D_80052ACD = *src++;
        osSyncPrintf(&D_80036C1C_3781C, D_80052ACD);
        D_8004815C = src[0];
        D_80048160 = src[1];
        D_80048162 = src[2];
        D_8004815E = src[3];
        src += 3;
        osSyncPrintf(&D_80036C2C_3782C, D_8004815C, D_80048160, D_80048162, D_8004815E);
        osSyncPrintf(&D_80036C4C_3784C);
    } else {
        osSyncPrintf(&D_80036C50_37850, 0);
        func_800021CC_2DCC(arg0);
        guess_loadSavedGame(arg0);
        D_80052A90 = 0;
    }
    currentSaveFileIndex = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/guess_loadSavedGame.s")
#endif

s32 func_80002A88_3688(s32 arg0) {
	return *(&D_80043243 + (arg0 * 0x7A)) & 0xF;
}

void getSaveFileName(s32 arg0, u8 *arg1)
{
	u8* sd = (u8*)&D_800431C0;
	s32 index;
	s32 temp_v0 = (arg0 * 0x7A) + 0x89;
	for (index =  0; index < 6; index++){
	  arg1[index] = temp_v0[sd + index];
	}
	arg1[6] = 0;
}

#ifdef NON_MATCHING
s32 func_80002B20_3720(s32 arg0) {
	s32 stride;
	u8 *ptr1;
	s32 idx;
	u8 *ptr2;
	s32 v1;
	
	stride = arg0 * 0x7A;
	idx = 2;
	ptr2 = (u8*)&D_800431C0 + stride + (idx << 3);
	ptr1 = (u8*)&D_800431C0 + stride;
	
	v1  = ptr1[0x53];
	v1 += ptr1[0x54] << 8;
	v1 += ptr1[0x55] << 0x10;
	v1 += ptr1[0x56] << 0x18;
	v1 += ptr1[0x5B];
	v1 += ptr1[0x5C] << 8;
	v1 += ptr1[0x5D] << 0x10;
	v1 += ptr1[0x5E] << 0x18;
	v1 += ptr2[0x53];
	v1 += ptr2[0x54] << 8;
	v1 += ptr2[0x55] << 0x10;
	v1 += ptr2[0x56] << 0x18;
	v1 += ptr2[0x5B];
	v1 += ptr2[0x5C] << 8;
	v1 += ptr2[0x5D] << 0x10;
	v1 += ptr2[0x5E] << 0x18;
	v1 += ptr2[0x63];
	v1 += ptr2[0x64] << 8;
	v1 += ptr2[0x65] << 0x10;
	v1 += ptr2[0x66] << 0x18;
	v1 += ptr2[0x6B];
	v1 += ptr2[0x6C] << 8;
	v1 += ptr2[0x6D] << 0x10;
	return v1 + (ptr2[0x6E] << 0x18);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80002B20_3720.s")
#endif

s32 func_80002C58_3858(s32 arg0)
{
  u8 *ptr = ((u8 *) (&D_800431C0)) + (arg0 * 0x7A);
  s32 v1 = ptr[0x9C];
  v1 += ptr[0x9D] << 8;
  ptr = ptr;  
  return (ptr[0x9F] << 24) + (v1 += ptr[0x9E] << 16);
}

void func_80002CA4_38A4(void) {
	func_800016D8_22D8();
	guess_prepareToSaveGame(currentSaveFileIndex);
	func_800015B4_21B4(0, 0x1B9);
	if (D_80047608 != 0) {
		osEepromLongWrite(&D_80043388, 0, &D_800431C0, 0x1BD);
	}
}

void guess_saveHighScores(void) {
	func_800016D8_22D8();
	func_800015B4_21B4(0, 0x1B9);
	if (D_80047608 != 0) {
		osEepromLongWrite(&D_80043388, 0, &D_800431C0, 0x1BD);
	}
}

void func_80002D58_3958(void) {
	func_800021CC_2DCC(currentSaveFileIndex);
	func_800015B4_21B4(0, 0x1B9);
	if (D_80047608 != 0) {
		osEepromLongWrite(&D_80043388, 0, &D_800431C0, 0x1BD);
	}
}

void guess_deleteSavedData(void)
{
	u8 *var_v0;
	short new_var;
	u8 *var_v1;
	do {
		osSyncPrintf(&D_80036C64); // SCRUB GAMENOTE
		var_v0 = &D_800431C0; new_var = 0; var_v1 = &D_8004337D;
		do { var_v0++; *(var_v0 - 1) = new_var; } while (((u32) var_v0) < ((u32) var_v1));
		func_80001830_2430();
		func_800021CC_2DCC(new_var);
		func_800021CC_2DCC(1);
		func_800021CC_2DCC(2);
	} while (0);
	func_800015B4_21B4(new_var, 0x1B9);
	if (D_80047608 != new_var) {
		osEepromLongWrite(&D_80043388, new_var, &D_800431C0, 0x1BD);
	}
}

void guess_restoreSavedData(void) {
	if (D_80047608 != 0) {
		func_8001D5A0_1E1A0(&D_80043388, 0, &D_800431C0, 0x1BD);
	}
	osSyncPrintf(D_80036C74); // RESTORE GAMENOTE
	if (validateSaveVersionAndChecksum(0, 0x1B9) == 0) {
		guess_deleteSavedData();
	}
}

void func_80002EB0_3AB0(void) { osContStartReadData(&D_80043388); }

void func_80002ED4_3AD4(void) { osContGetReadData(&D_800475B8); }

#ifdef NON_MATCHING
void func_80002EF8_3AF8(void *arg0) {
	OSMesg sp34;

	func_80001424_2024(arg0);
	func_8000FF40_10B40();
	osContStartReadData(&D_80043388);

	for (;;) {
		osRecvMesg(&D_80043388, &sp34, OS_MESG_BLOCK);
		func_80002ED4_3AD4();
		func_8000FF88_10B88();
		func_80001190_1D90();
		func_800035D8_41D8(0xA);

		switch (D_800476A0) {
		case 1:
			if (__osActiveQueue2) {
				func_80002CA4_38A4();
			}
			D_800476A0 = 0;
			break;
		case 2:
			break;
		case 6:
			if (__osActiveQueue2) {
				guess_saveHighScores();
			}
			D_800476A0 = 0;
			break;
		case 3:
			func_80002D58_3958();
			D_800476A0 = 0;
			break;
		case 4:
			guess_deleteSavedData();
			func_80001984_2584();
			D_800476A0 = 0;
			break;
		case 5:
			func_800020E0_2CE0(D_80047F88, D_80047F8C);
			D_800476A0 = 0;
			break;
		}

		func_8000FF40_10B40();
		osContStartReadData(&D_80043388);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80002EF8_3AF8.s")
#endif

#ifdef NON_MATCHING
void func_80003064_3C64(void) {
	Unk80047588 *var_v0;
	Unk80047588 *var_a3;
	Unk80047588 *temp_t7;
	u16 *var_v1;
	u16 *var_t0;
	s32 temp_v1;
	s32 var_a0;
	s32 var_a1;
	s32 var_a2;
	s32 var_t2;
	s32 var_v0_2;
	u16 temp_t6;
	u16 temp_t8;

	if (D_800313C8_31FC8 == 1) {
		D_800313C8_31FC8 = 0;
	}
	if (D_800313C8_31FC8 == 2) {
		D_800313C8_31FC8 &= 0xFFFD;
		D_800313C8_31FC8 |= 0xC;
		D_800313C4_31FC4 = 0;
		D_800476B0 = 0;
		D_800476A8 = 0;
		D_800476AC = 0;
		D_800476A4 = 0;
		D_80047604 = 0;
		D_80047600 = 0;
		D_800475FC = 0;
		D_800475F8 = 0;
	}

	var_a1 = 3;
	var_v1 = &D_800475DE;
	var_t0 = &D_800475E6;
	var_v0 = (Unk80047588 *)&D_8004759A;
	var_a3 = (Unk80047588 *)&D_800475B2;
	var_a2 = 0x12;
	var_t2 = D_800313C8_31FC8 & 8;
	do {
		var_a0 = var_a1;
		var_a3--;
		*(var_a3 + 1) = *var_v0;
		if (!var_t2) {
			temp_t7 = (Unk80047588 *)((u8 *)&D_800475B8 + var_a2);
			if (D_800476A2 != 0) {
				*var_v0 = *temp_t7;
			} else {
				var_v0->button = 0;
				var_v0->stick_x = 0;
				var_v0->stick_y = 0;
			}
		}
		temp_t6 = *var_v1;
		temp_t8 = var_v0->button;
		var_a2 -= 6;
		var_v0--;
		var_t0--;
		var_v1--;
		*(var_t0 + 1) = temp_t6;
		*(var_v1 + 1) = temp_t8;
	} while (var_a1--);

	if (D_800475F0 != 0) {
		if (D_800475F4 != 0) {
			D_800475F4--;
		} else {
			D_800475F0 = 0;
		}
	}

	if (currentControllerStates[0].stick_x < 0) {
		var_v0_2 = -1;
	} else {
		var_v0_2 = 1;
	}
	var_a0 = 1;
	var_t2 = D_800313C8_31FC8 & 8;
	if (D_800475A2 < 0) {
		var_a0 = -1;
	}
	if (var_a0 != var_v0_2) {
		D_800475F0 = D_800475F0 + D_800475F4 + 1;
		D_800475F4 = 8;
	}

	if (D_800313C8_31FC8 != 0) {
		if (var_t2 != 0) {
			if ((D_800475B8.button & 0x9000) && !(D_800475D0.button & 0x9000)) {
				func_80006DAC_79AC(0, 1);
				D_800313C8_31FC8 = 0;
				var_t2 = D_800313C8_31FC8 & 8;
			}
			D_800475D0.button = D_800475B8.button;
		}
		if (var_t2 != 0) {
			currentControllerStates[0].stick_x = (s8)((u32)(D_800475F8 & 0xFF000000) >> 24);
			currentControllerStates[0].stick_y = (s8)((u32)(D_800475F8 & 0xFF0000) >> 16);
			currentControllerStates[0].button = (u16)D_800475F8;
			previousControllerButtonStates[0] = D_800475D8[0];
			D_800475D8[0] = currentControllerStates[0].button;
			if (D_800475FC != 0) {
				D_800475FC--;
				return;
			}
			temp_v1 = ((s32 *)__additional_scanline)[D_800313C4_31FC4];
			D_800313C4_31FC4++;
			if (temp_v1 == 0x7FFFFFFF) {
				func_80006DAC_79AC(0, 1);
				D_800313C8_31FC8 = 0;
				return;
			}
			if ((temp_v1 & 0xFFFF) == 0xC00) {
				D_800475FC = (u32)(temp_v1 & (s32)0xFFFF0000) >> 16;
				D_800475FC = D_800475FC - 1;
				return;
			}
			D_800475F8 = temp_v1;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80003064_3C64.s")
#endif

// https://decomp.me/scratch/66U7q
#ifdef NON_MATCHING
void func_800033D4_3FD4(u16 arg0, s32 arg1) {
	u16 *previousButtons;

	if (D_800475D8[arg1] & arg0) {
		previousButtons = &previousControllerButtonStates[arg1];
		if (*previousButtons & arg0) {
			currentControllerStates[arg1].button &= ~arg0;
			if (previousButtons != previousControllerButtonStates) {
				return;
			}
			D_800475F8 &= ~arg0;
		}
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800033D4_3FD4.s")
#endif

// https://decomp.me/scratch/
#ifdef NON_MATCHING
void func_8000345C_405C(u16 arg0) {
	s32 temp_v1;

	if (!(D_800313C8 & 8)) {
		if ((D_800475D8[0] & arg0) && (previousControllerButtonStates[0] & arg0)) {
			D_80047588_W = D_80047588 & ~arg0;
		}
		temp_v1 = ~arg0;
		if ((D_800475DA & arg0) && (D_800475E2 & arg0)) {
			D_8004758E &= temp_v1;
		}
		if ((D_800475DC & arg0) && (D_800475E4 & arg0)) {
			D_80047594 &= temp_v1;
		}
		if ((D_800475DE & arg0) && (D_800475E6 & arg0)) {
			D_8004759A &= temp_v1;
		}
		D_800475F8 &= temp_v1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_8000345C_405C.s")
#endif

s32 isButtonNewlyPressed(Controller controllerNum, Button buttonMask)
{
	s32 result = (currentControllerStates[controllerNum].button & buttonMask) != 0;
	if (result)
	{
		return (previousControllerButtonStates[controllerNum] & buttonMask) == 0;
	}
}

void func_800035D8_41D8(s16 arg0)
{
	s32 i;

	if (currentControllerStates[0].button & 0x10) {
		return;
	}

	for (i = 0; i < ARRAY_COUNT(D_800475B8); i++) {
		if (arg0 < D_800475B8[i].stick_x) {
			D_800475B8[i].stick_x -= arg0;
		} else if (D_800475B8[i].stick_x < (-arg0)) {
			D_800475B8[i].stick_x += arg0;
		} else {
			D_800475B8[i].stick_x = 0;
		}
		
		if (arg0 < D_800475B8[i].stick_y) {
			D_800475B8[i].stick_y -= arg0;
		} else if (D_800475B8[i].stick_y < (-arg0)) {
			D_800475B8[i].stick_y += arg0;
		} else {
			D_800475B8[i].stick_y = 0;
		}
	}
}

s16 func_80003680_4280(f32 arg0) {
	f32 absval;

	if (-arg0 < arg0) {
		absval = arg0;
	} else {
		absval = -arg0;
	}
	if ((f64)absval > 1.0) {
		return 0;
	}
	if (arg0 < 0.0f) {
		return (s16)(-D_8003D000_3DC00[(s32)(-arg0 * 1024.0f)]);
	}
	return D_8003D000_3DC00[(s32)(arg0 * 1024.0f)];
}

s16 func_80003740_4340(f32 arg0) {
	s32 var_v1;

	var_v1 = 1;
	if (arg0 < 0.0f) {
		arg0 = -arg0;
		var_v1 = -1;
	}
	if ((f64) arg0 > 1.0) {
		arg0 = (f32)(1.0 / (f64)arg0);
		return (s16) ((0x4000 - D_8003D800_3E400[(s32) (arg0 * 1024.0f)]) * var_v1);
	}
	if ((f64) arg0 == 1.0) {
		return (s16) (var_v1 << 0xD);
	}
	return (s16) (D_8003D800_3E400[(s32) (arg0 * 1024.0f)] * var_v1);
}

s16 func_80003824_4424(f32 arg0, f32 arg1) {
	s32 sign;

	if (arg0 == 0.0f) {
		sign = (arg1 < 0.0f) ? -1 : 1;
		return (s16) (sign << 0xE);
	}
	sign = (arg0 < 0.0f) ? -1 : 1;
	if (sign == 1) {
		return func_80003740_4340(arg1 / arg0);
	}
	return (s16) (func_80003740_4340(arg1 / arg0) + 0x8000);
}

void setRandomSeed(s32 arg0) {
	D_800476C0 = arg0;
}

// getRandomNumber
s32 func_800038E0_44E0(void)
{
	s64 new_var;
	D_800476C0 = (D_800476C0 * 0x41C64E6D) + 0x3039;
	new_var = 0xFFFF;
	return (((u32) D_800476C0) >> 16) & new_var;
}

#ifdef NON_MATCHING
/* possible: powf_i */
f32 func_80003910_4510(f32 arg0, s32 arg1) {
	f32 result;

	result = 1.0f;
	if (arg1 != 0) {
		while (1) {
			result *= arg0;
			arg1--;
			if (arg1 != 0) {
				continue;
			}
			break;
		}
	}
	return result;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80003910_4510.s")
#endif

#ifdef NON_MATCHING
s32 func_8000393C_453C(f32 arg0, s32 arg1) {
	f32 var_f20;
	f32 var_f22;
	s32 var_s2;
	s32 var_s1;
	s32 var_s0;
	s32 var_v0;

	var_s2 = arg1;
	var_f22 = arg0;
	var_s0 = 0x8000;
	var_f20 = func_80003910_4510(arg0, arg1 >> 16);
	var_v0 = 0x10;
	var_s1 = 0xF;
	if (var_v0 != 0) {
		do {
			var_f22 = sqrtf(var_f22);
			if (var_s2 & var_s0) {
				var_f20 *= var_f22;
			}
			var_v0 = var_s1;
			var_s0 >>= 1;
			var_s1--;
		} while (var_s1 != 0);
	}
	return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_8000393C_453C.s")
#endif

#ifdef NON_MATCHING
void func_800039D0_45D0(Unk80052B40 *arg0, Unk80052B40 *arg1, Unk80052B40 *arg2, s32 arg3) {
	s32 sp3C;
	s32 sp38;
	s32 sp34;
	s32 sp30;
	s32 sp2C;
	s32 temp_v0;
	s32 temp_t9;
	s32 temp_t4;
	s32 temp_t9_2;
	s32 temp_t4_2;
	s32 *var_v0;
	s32 *var_a0;

	D_800476C8[0].unkC = 0;
	D_800476C8[0].unk1C = 0;
	D_800476C8[1].unkC = 0;
	D_800476C8[1].unk1C = 0x10000;

	if (arg0 != NULL) {
		D_800476C8[1].unk10 = (s32)arg0->unk0 << 16;
		D_800476C8[1].unk14 = (s32)arg0->unk2 << 16;
		D_800476C8[1].unk18 = (s32)arg0->unk4 << 16;
	} else {
		D_800476C8[1].unk10 = 0;
		D_800476C8[1].unk14 = 0;
		D_800476C8[1].unk18 = 0;
	}

	if (arg1 != NULL) {
		sp3C = coss((u16)arg1->unk0);
		sp38 = sins((u16)arg1->unk0);
		sp34 = coss((u16)arg1->unk4);
		sp30 = sins((u16)arg1->unk4);
		sp2C = coss((u16)arg1->unk2);
		temp_v0 = sins((u16)arg1->unk2);
		D_800476C8[0].unk0 = ((sp3C * sp2C) >> 15) * 2;
		temp_t9 = (sp30 * sp38) >> 15;
		temp_t4 = (sp3C * sp34) >> 15;
		D_800476C8[0].unk10 = (temp_t9 - (s32)((temp_t4 * temp_v0) >> 15)) * 2;
		temp_t9_2 = (sp38 * sp34) >> 15;
		temp_t4_2 = (sp3C * sp30) >> 15;
		D_800476C8[1].unk0 = (temp_t9_2 + (s32)((temp_t4_2 * temp_v0) >> 15)) * 2;
		D_800476C8[0].unk4 = temp_v0 * 2;
		D_800476C8[0].unk14 = ((sp34 * sp2C) >> 15) * 2;
		D_800476C8[1].unk4 = ((-sp30 * sp2C) >> 15) * 2;
		D_800476C8[0].unk8 = ((-sp38 * sp2C) >> 15) * 2;
		D_800476C8[0].unk18 = (temp_t4_2 + (s32)((temp_t9_2 * temp_v0) >> 15)) * 2;
		D_800476C8[1].unk8 = (temp_t4 - (s32)((temp_t9 * temp_v0) >> 15)) * 2;
	} else {
		D_800476C8[0].unk0 = 0x10000;
		D_800476C8[0].unk10 = 0;
		D_800476C8[1].unk0 = 0;
		D_800476C8[0].unk4 = 0;
		D_800476C8[0].unk14 = 0x10000;
		D_800476C8[1].unk4 = 0;
		D_800476C8[0].unk8 = 0;
		D_800476C8[0].unk18 = 0;
		D_800476C8[1].unk8 = 0x10000;
	}

	if (arg2 != NULL) {
		D_800476C8[0].unk0 = (s32)(D_800476C8[0].unk0 * arg2->unk0) >> 8;
		D_800476C8[0].unk4 = (s32)(D_800476C8[0].unk4 * arg2->unk0) >> 8;
		D_800476C8[0].unk8 = (s32)(D_800476C8[0].unk8 * arg2->unk0) >> 8;
		D_800476C8[0].unk10 = (s32)(D_800476C8[0].unk10 * arg2->unk2) >> 8;
		D_800476C8[0].unk14 = (s32)(D_800476C8[0].unk14 * arg2->unk2) >> 8;
		D_800476C8[0].unk18 = (s32)(D_800476C8[0].unk18 * arg2->unk2) >> 8;
		D_800476C8[1].unk0 = (s32)(D_800476C8[1].unk0 * arg2->unk4) >> 8;
		D_800476C8[1].unk4 = (s32)(D_800476C8[1].unk4 * arg2->unk4) >> 8;
		D_800476C8[1].unk8 = (s32)(D_800476C8[1].unk8 * arg2->unk4) >> 8;
	}

	var_v0 = (s32 *)D_800476C8;
	var_a0 = (s32 *)arg3;
	do {
		var_a0[0] = ((var_v0[1] & 0xFFFF0000) >> 16) + (var_v0[0] & 0xFFFF0000);
		var_a0 += 4;
		var_a0[4] = (var_v0[0] << 16) + (var_v0[1] & 0xFFFF);
		var_a0[-3] = ((var_v0[3] & 0xFFFF0000) >> 16) + (var_v0[2] & 0xFFFF0000);
		var_a0[5] = (var_v0[2] << 16) + (var_v0[3] & 0xFFFF);
		var_a0[-2] = ((var_v0[5] & 0xFFFF0000) >> 16) + (var_v0[4] & 0xFFFF0000);
		var_a0[6] = (var_v0[4] << 16) + (var_v0[5] & 0xFFFF);
		var_a0[-1] = ((var_v0[7] & 0xFFFF0000) >> 16) + (var_v0[6] & 0xFFFF0000);
		var_a0[7] = (var_v0[6] << 16) + (var_v0[7] & 0xFFFF);
		var_v0 += 8;
	} while (var_v0 != (s32 *)&D_80047708);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800039D0_45D0.s")
#endif

#ifdef NON_MATCHING
void func_80003DE8_49E8(Unk80052B40 *arg0, s16 *arg1, s16 *arg2, s32 *arg3) {
	s32 sp3C, sp38, sp34, sp30, sp2C;
	s32 temp1, temp2;
	s32 i;
	s32 *var_v0;
	s32 *var_a0;

	D_800476C8[0].unkC = 0;
	D_800476C8[0].unk1C = 0;
	D_800476C8[1].unkC = 0;
	D_800476C8[1].unk1C = 0x10000;

	if (arg0 != NULL) {
		D_800476C8[1].unk10 = (s32)arg0->unk0 << 16;
		D_800476C8[1].unk14 = (s32)arg0->unk2 << 16;
		D_800476C8[1].unk18 = (s32)arg0->unk4 << 16;
	} else {
		D_800476C8[1].unk10 = 0;
		D_800476C8[1].unk14 = 0;
		D_800476C8[1].unk18 = 0;
	}

	if (arg1 != NULL) {
		sp3C = coss(arg1[0]);
		sp38 = sins(arg1[0]);
		sp34 = coss(arg1[2]);
		sp30 = sins(arg1[2]);
		sp2C = coss(arg1[1]);
		temp1 = sins(arg1[1]);
		D_800476C8[0].unk8 = sp38 * -2;
		D_800476C8[0].unk0 = ((sp3C * sp2C) >> 15) * 2;
		D_800476C8[0].unk4 = ((sp3C * temp1) >> 15) * 2;
		temp2 = (sp38 * sp30) >> 15;
		D_800476C8[0].unk10 = (((-sp34 * temp1) >> 15) + ((temp2 * sp2C) >> 15)) * 2;
		D_800476C8[0].unk14 = (((sp34 * sp2C) >> 15) + ((temp2 * temp1) >> 15)) * 2;
		D_800476C8[0].unk18 = ((sp30 * sp3C) >> 15) * 2;
		temp2 = (sp38 * sp34) >> 15;
		D_800476C8[1].unk0 = (((sp30 * temp1) >> 15) + ((temp2 * sp2C) >> 15)) * 2;
		D_800476C8[1].unk4 = (((-sp30 * sp2C) >> 15) + ((temp2 * temp1) >> 15)) * 2;
		D_800476C8[1].unk8 = ((sp3C * sp34) >> 15) * 2;
	} else {
		D_800476C8[0].unk0 = 0x10000;
		D_800476C8[0].unk10 = 0;
		D_800476C8[1].unk0 = 0;
		D_800476C8[0].unk4 = 0;
		D_800476C8[0].unk14 = 0x10000;
		D_800476C8[1].unk4 = 0;
		D_800476C8[0].unk8 = 0;
		D_800476C8[0].unk18 = 0;
		D_800476C8[1].unk8 = 0x10000;
	}

	if (arg2 != NULL) {
		D_800476C8[0].unk0 = (D_800476C8[0].unk0 * arg2[0]) >> 8;
		D_800476C8[0].unk4 = (D_800476C8[0].unk4 * arg2[0]) >> 8;
		D_800476C8[0].unk8 = (D_800476C8[0].unk8 * arg2[0]) >> 8;
		D_800476C8[0].unk10 = (D_800476C8[0].unk10 * arg2[1]) >> 8;
		D_800476C8[0].unk14 = (D_800476C8[0].unk14 * arg2[1]) >> 8;
		D_800476C8[0].unk18 = (D_800476C8[0].unk18 * arg2[1]) >> 8;
		D_800476C8[1].unk0 = (D_800476C8[1].unk0 * arg2[2]) >> 8;
		D_800476C8[1].unk4 = (D_800476C8[1].unk4 * arg2[2]) >> 8;
		D_800476C8[1].unk8 = (D_800476C8[1].unk8 * arg2[2]) >> 8;
	}

	var_v0 = (s32 *)D_800476C8;
	var_a0 = arg3;
	do {
		var_a0[0] = ((var_v0[1] & 0xFFFF0000) >> 16) + (var_v0[0] & 0xFFFF0000);
		var_a0 += 4;
		var_a0[4] = (var_v0[0] << 16) + (var_v0[1] & 0xFFFF);
		var_a0[-3] = ((var_v0[3] & 0xFFFF0000) >> 16) + (var_v0[2] & 0xFFFF0000);
		var_a0[5] = (var_v0[2] << 16) + (var_v0[3] & 0xFFFF);
		var_a0[-2] = ((var_v0[5] & 0xFFFF0000) >> 16) + (var_v0[4] & 0xFFFF0000);
		var_a0[6] = (var_v0[4] << 16) + (var_v0[5] & 0xFFFF);
		var_a0[-1] = ((var_v0[7] & 0xFFFF0000) >> 16) + (var_v0[6] & 0xFFFF0000);
		var_a0[7] = (var_v0[6] << 16) + (var_v0[7] & 0xFFFF);
		var_v0 += 8;
	} while (var_v0 != (s32 *)&D_80047708);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80003DE8_49E8.s")
#endif

void func_80004214_4E14(s16 arg0, s32 arg1) {
	Unk80052B40 v;
	v.unk0 = arg0;
	v.unk2 = arg0;
	v.unk4 = arg0;
	func_800039D0_45D0(0, 0, &v, arg1);
}

#ifdef NON_MATCHING
s32 func_80004254_4E54(f32 arg0, s32 arg1, s32 *arg2, s32 *arg3) {
	s32 exponent;
	s32 mantissa;
	u32 frac;
	s32 temp;
	s32 i;
	s32 rem;
	s32 temp_lo;

	exponent = ((u32)(*(s32 *)&arg0 << 1) >> 24) - 0x7F;
	mantissa = *(s32 *)&arg0 & 0x7FFFFF;
	*arg3 = 0;

	if (exponent == 0x80) {
		if (mantissa == 0) {
			return 0;
		}
	} else if (exponent == -0x7F) {
		if (mantissa == 0) {
			frac = 0;
		} else {
			frac = (s32)mantissa >> 30;
		}
		*arg2 = 0;
	} else {
		temp = mantissa + 0x800000;
		*arg2 = temp >> (0x17 - exponent);
		if (exponent > 0) {
			frac = (u32)mantissa << exponent;
		} else {
			frac = (u32)(temp >> -exponent);
		}
	}

	i = 0;
	if (arg1 > 0) {
		rem = arg1 & 3;
		if (rem != 0) {
			do {
				i++;
				frac = (frac & 0x7FFFFF) * 10;
				temp_lo = *arg3 * 10;
				*arg3 = temp_lo;
				*arg3 = temp_lo + (frac >> 23) % 10;
			} while (rem != i);
			if (i == arg1) {
				return 1;
			}
		}
		frac &= 0x7FFFFF;
		do {
			frac = (frac & 0x7FFFFF) * 10;
			i += 4;
			temp_lo = *arg3 * 10;
			*arg3 = temp_lo;
			*arg3 = temp_lo + (frac >> 23) % 10;
			frac = (frac & 0x7FFFFF) * 10;
			temp_lo = *arg3 * 10;
			*arg3 = temp_lo;
			*arg3 = temp_lo + (frac >> 23) % 10;
			frac = (frac & 0x7FFFFF) * 10;
			temp_lo = *arg3 * 10;
			*arg3 = temp_lo;
			*arg3 = temp_lo + (frac >> 23) % 10;
			frac = (frac & 0x7FFFFF) * 10;
			temp_lo = *arg3 * 10;
			*arg3 = temp_lo;
			*arg3 = temp_lo + (frac >> 23) % 10;
		} while (i != arg1);
	}
	return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80004254_4E54.s")
#endif

#ifdef NON_MATCHING
s32 func_80004498_5098(f32 arg0) {
	if (((s32)((u32)(*(s32 *)&arg0 << 1) >> 0x18)) - 0x7F != 0x80) {
		return 1;
	}
	if (*(s32 *)&arg0 << 9) {
		return 1;
	}
	return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_80004498_5098.s")
#endif

#ifdef NON_MATCHING
void func_800044D4_50D4(s16 *arg0, s32 *arg1, s16 *arg2) {
	s32 sp64;
	s32 temp_s2_raw;
	s32 sp5C;
	f32 sp58;
	f32 sp54;
	f32 sp50;
	f32 sp4C;
	f32 sp48;
	s16 temp_s0;
	s32 temp_s2;

	sp64 = arg2[0];
	sp5C = -arg2[1];
	temp_s2_raw = arg2[2];
	temp_s2 = temp_s2_raw & 0xFFFF;
	sp58 = arg0[0];
	temp_s0 = coss(temp_s2 & 0xFFFF);
	sp54 = (f32)(-(((f64)(f32)sins(temp_s2 & 0xFFFF) / 32768.0) * (f64)arg0[2]) + ((f64)arg0[1] * ((f64)(f32)temp_s0 / 32768.0)));
	temp_s0 = sins(temp_s2 & 0xFFFF);
	sp50 = (f32)(((f64)arg0[1] * ((f64)(f32)temp_s0 / 32768.0)) + (((f64)(f32)coss(temp_s2 & 0xFFFF) / 32768.0) * (f64)arg0[2]));
	temp_s0 = coss(sp5C);
	sp4C = (f32)((((f64)(f32)sins(sp5C) / 32768.0) * (f64)sp54) + ((f64)sp58 * ((f64)(f32)temp_s0 / 32768.0)));
	temp_s0 = sins(sp5C);
	sp48 = (f32)((((f64)(f32)coss(sp5C) / 32768.0) * (f64)sp54) + ((f64)-sp58 * ((f64)(f32)temp_s0 / 32768.0)));
	temp_s0 = coss(sp64);
	arg1[0] = (s32)((((f64)(f32)sins(sp64) / 32768.0) * (f64)sp50) + ((f64)sp4C * ((f64)(f32)temp_s0 / 32768.0)));
	arg1[1] = (s32)sp48;
	temp_s0 = sins(sp64);
	arg1[2] = (s32)((((f64)(f32)coss(sp64) / 32768.0) * (f64)sp50) + ((f64)-sp4C * ((f64)(f32)temp_s0 / 32768.0)));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1050/func_800044D4_50D4.s")
#endif
