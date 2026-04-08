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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80012A74_13674.s")

s32 func_80012E88_13A88(s8 arg0) {
	if (D_8006AB88 == 0) {
		return 0;
	}
	return D_8006AB18[arg0]->unk2C;
}

#ifdef NON_MATCHING
void func_80012EC4_13AC4(s8 arg0, s8 arg1) {
	f32 temp_f0;
	f32 temp_f0_2;
	s16 var_a1;

	if ((D_8006AB88 != 0) && (func_80012E88_13A88(arg1) == 0)) {
		func_800129FC_135FC(arg0, arg1);
		alSeqpSetBank((ALSeqPlayer *)D_8006AB18[arg1], D_8006AB90);
		alCSeqNew(D_8006AB20[arg1], (u8 *)D_8006AB30[arg1]);
		alSeqpSetSeq((ALSeqPlayer *)D_8006AB18[arg1], (ALSeq *)D_8006AB20[arg1]);
		if (D_80031D28_32928[arg1] == 0) {
			if (D_80031CA4 != 5) {
				var_a1 = (s16)(s32)((f32)D_80031D74_32974[arg0] * D_80031D64_32964);
			} else {
				var_a1 = (s16)(s32)((f32)D_80031D74_32974[arg0] * D_80031D60_32960);
			}
		} else if (D_80031CA4 != 5) {
			temp_f0 = (f32)D_80031D74_32974[arg0];
			var_a1 = (s16)(s32)(((D_80031D44_32944[arg1] * (temp_f0 * D_80031D2C_3292C[arg1])) / D_80031D34_32934[arg1] + (D_80031D3C_3293C[arg1] * temp_f0)) * D_80031D64_32964);
		} else {
			temp_f0_2 = (f32)D_80031D74_32974[arg0];
			var_a1 = (s16)(s32)(((D_80031D44_32944[arg1] * (temp_f0_2 * D_80031D2C_3292C[arg1])) / D_80031D34_32934[arg1] + (D_80031D3C_3293C[arg1] * temp_f0_2)) * D_80031D60_32960);
		}
		D_80031D1C_3291C[arg1] = arg0;
		alSeqpSetVol((ALSeqPlayer *)D_8006AB18[arg1], var_a1);
		alSeqpPlay((ALSeqPlayer *)D_8006AB18[arg1]);
		D_80031CE4_328E4[arg1] = 1;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80012EC4_13AC4.s")
#endif

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
#ifdef NON_MATCHING
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80013324_13F24.s")
#endif

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80013818_14418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80013B48_14748.s")

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

// https://decomp.me/scratch/QTO8a
#ifdef NON_MATCHING
void func_80014180_14D80(s8 arg0)
{
  if (D_8006AB88)
  {
	func_800153D8_15FD8(D_80033A68_34668[currentLevel * 16 + (s8)(arg0 / 3.0f)]);
  }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80014180_14D80.s")
#endif

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

#ifdef NON_MATCHING
s32 func_80014278_14E78(void) {
	Unk8006AA80Node sp50;

	if (D_8006AB88 == 0) {
		return -1;
	}

	sp50.unk0 = D_80032EBA_33ABA[(currentLevel * 504) + (D_80052B34->unk1A * 24)];

	if (sp50.unk0 == -1) {
		return -1;
	}

	sp50.unk2 = D_80032228_32E28[sp50.unk0 & 0xFFFF];
	sp50.unk6 = -1;
	sp50.unk8 = 0;
	sp50.unk0C = 0;
	sp50.unk0E = -1;
	sp50.unk0F = -1;
	sp50.unk20 = D_80031F04_32B04[sp50.unk0];
	sp50.unk22 = 0x40;
	sp50.unk24 = D_80032A78_33678[sp50.unk0 & 0xFFFF];

	return func_800121B4_12DB4(sp50, &D_8006AA80, &D_8006AA84);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80014278_14E78.s")
#endif

// https://decomp.me/scratch/0wfIc
#ifdef NON_MATCHING
s32 func_800143C4_14FC4(s16 arg0)
{
  Unk8006AA80Node sp58;
  s32 sp54;
  unsigned char new_var;
  if (D_8006AB88 == 0)
  {
	return -1;
  }
  if (func_80012638_13238(arg0, D_8006AB18[0]->unk1C) != NULL)
  {
	return -1;
  }
  sp58.unk0 = arg0;
  sp58.unk6 = -1;
  sp58.unk0C = 0;
  sp58.unk8 = 0;
  sp58.unk2 = D_80032228_32E28[arg0 & 0xFFFF];
  sp58.unk0E = -1;
  sp58.unk24 = D_80032A78_33678[arg0 & 0xFFFF];
  sp58.unk20 = D_80031F04_32B04[arg0];
  sp58.unk28 = D_8006AB18[0]->unk1C;
  
  sp58.unk0F = -1;
	sp58.unk22 = 0x40;
  return func_800121B4_12DB4(sp58, &D_8006AA80, &D_8006AA84);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800143C4_14FC4.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80014508_15108.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80014A3C_1563C.s")

#ifdef NON_MATCHING
void func_80015210_15E10(s16 arg0, s32 arg1, s32 arg2, s32 arg3, u16 arg4) {
	Unk8006AA80Node sp50;

	if (D_8006AB88 != 0) {
		sp50.unk6 = -1;
		sp50.unk0C = 0;
		sp50.unk8 = 0;
		sp50.unk2 = D_80032228_32E28[arg0 & 0xFFFF];
		sp50.unk24 = D_80032A78_33678[arg0 & 0xFFFF];
		sp50.unk0 = arg0 & 0xFFFF;
		if ((s16)((s32)((f32)D_80031F04_32B04[arg0] * ((f32)arg4 / 200.0f))) < 0x2FFF) {
			sp50.unk20 = (s16)((s32)((f32)D_80031F04_32B04[arg0] * ((f32)arg4 / 200.0f))) + 0x2FFF;
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

void func_80015380_15F80(void *arg0) {
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

#ifdef NON_MATCHING
void func_8001599C_1659C(void) {
	Unk8006AA80Node sp70;
	Unk8006AA80Node *temp_v0;
	s16 var_s1;
	s16 var_s0;
	s8 var_s1_2;
	s8 var_s0_2;

	if (D_8006AB88 != 0) {
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
		var_s1 = 0;
		var_s0 = 0;
		do {
			alSndpSetSound(D_8006AB10, var_s0);
			if (alSndpGetState(D_8006AB10) != 0) {
				temp_v0 = func_8001244C_1304C(var_s0);
				if (temp_v0 == NULL) {
					sp70.unk6 = var_s0;
					func_800121B4_12DB4(sp70, &D_8006AA80, &D_8006AA84);
				} else {
					temp_v0->unk8 = 0;
				}
				alSndpStop(D_8006AB10);
			}
			var_s1++;
			var_s0 = var_s1 & 0xFF;
			var_s1 = var_s0;
		} while (var_s0 < 0x10);
		var_s1_2 = 0;
		var_s0_2 = 0;
		do {
			D_80031CE4_328E4[var_s1_2] = 1;
			func_80013E64_14A64(var_s0_2);
			var_s0_2 = (var_s1_2 + 1) & 0xFF;
			D_80031CD0_328D0[var_s1_2] = -1;
			var_s1_2 = var_s0_2;
			D_80031CD4_328D4 = -1;
		} while (var_s0_2 < 2);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_8001599C_1659C.s")
#endif

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80015C94_16894.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800165EC_171EC.s")

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

#ifdef NON_MATCHING
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80016E54_17A54.s")
#endif

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

// https://decomp.me/scratch/n2aua
#ifdef NON_MATCHING
s16 func_800172E0_17EE0(u8 *arg0)
{
  s32 count = 0;
  u8 *ptr = arg0;
  int new_var;
  new_var = 0x3B;
  if ((((*arg0) != 0xA) && ((*arg0) != 0)) && ((*arg0) != 0x40))
  {
	s32 c = ptr[count];
	do
	{
	  if (((((c == new_var) && (arg0 != ptr)) && ((arg0 + 1) != ptr)) && ((arg0 + 2) != ptr)) && ((arg0 + 3) != ptr))
	  {
		count++;
	  }
	  c = ptr[1];
	  ptr++;
	}
	while ((((c ^ 0) != 0xA) && (c != 0)) && (c != 0x40));
  }
  if (((D_80034494 != 0) && (D_8006C566 == 0xFFFF)) && (count == 1))
  {
	count = 2;
  }
  return count;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800172E0_17EE0.s")
#endif

#ifdef NON_MATCHING
s16 func_80017394_17F94(u8 *arg0, s16 arg1) {
	s32 var_v1;
	u8 *var_v0;
	u8 var_a0;

	var_v1 = 0;
	var_v0 = arg0;
	if (*arg0 != 0xA && *arg0 != 0 && *arg0 != 0x40 && *arg0 != 0x3B) {
		arg1--;
		if (arg1 != 0) {
			var_a0 = *arg0;
			do {
				if (var_a0 >= 0x20 && var_a0 < 0x80) {
					if (var_a0 == 0x5E) {
						var_v0 += 2;
						arg1 -= 2;
						var_a0 = *var_v0;
					}
					if (var_v1 != 0 || var_a0 != 0x20 || var_a0 != 0x26 || var_a0 != 0x25) {
						var_v1 += D_80031720_32320[var_a0 * 2 + 0x261];
					}
				}
				var_a0 = var_v0[1];
				var_v0++;
				arg1--;
				if (var_a0 == 0xA || var_a0 == 0) break;
				if (var_a0 == 0x40 || var_a0 == 0x3B) return var_v1;
			} while (arg1 != 0);
		}
	}
	return var_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80017394_17F94.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80017490_18090.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80017CA4_188A4.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80018AEC_196EC.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80018D7C_1997C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800190D4_19CD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80019ABC_1A6BC.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_8001A160_1AD60.s")

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
