#include <ultra64.h>
#include "common.h"

struct Unk80013E44_arg0 { s32 unk0; s32 unk4; s32 unk8; };

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80012080_12C80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80012128_12D28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800121B4_12DB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800123A4_12FA4.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_8001286C_1346C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80012EC4_13AC4.s")

void func_80013178_13D78(s8 arg0) {
	func_80015C94_16894(arg0, 0x2);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800131A4_13DA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_8001322C_13E2C.s")

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

#ifdef NON_MATCHING
void func_80013324_13F24(void) {
	s8 idx;
	s8 arr_val;

	if (D_8006AB88 == 0) {
		return;
	}
	if (D_80031CA4 != 3) {
		idx = (s8)(D_80033C6C_3486C % 15);
		arr_val = D_80033C5C_3485C[idx];
		D_80033C6C_W = D_80033C6C_3486C + 1;
		func_80015C94_16894(arr_val, 3);
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80013324_13F24.s")
#endif

#ifdef NON_MATCHING
void func_80013398_13F98(void) {
	s8 idx;
	s8 arr_val;

	if (D_80031CA4 != 4) {
		idx = (s8)(D_80033C80_34880 % 16);
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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/__dummy.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80013720_14320.s")

void func_800137AC_143AC(void) {
	func_80015C94_16894(0x24, 0xF);
}

static void func_800137D0_stub(void) {
}

void func_800137D8(void) {
}

void func_800137E0(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/n_alSynFreeFX.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80013E64_14A64.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80013FC4_14BC4.s")

#ifdef NON_MATCHING
void func_80014180_14D80(s8 arg0) {
    s32 temp_f16;

    if (D_8006AB88 != 0) {
        temp_f16 = (s32) ((f32) arg0 / 3.0f);
        func_800153D8_15FD8(D_80033A68_34668[currentLevel * 16 + (s8) temp_f16]);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80014180_14D80.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/osBbUsbDevGetHandle.s")

void func_80014208_14E08(s32 arg0, s16 arg1, s32 arg2) {
    s32 pad1;
    s32 pad2;
    f32 sp24;

    if (D_8006AB88 != 0) {
        func_80014A3C_1563C((s32) &sp24, 0xC4, 0, 0,
            sp24 = (f32)D_80032D88_33988 + ((f32) arg1 / D_80038300_38F00));
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80014278_14E78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800143C4_14FC4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80014508_15108.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80014A3C_1563C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80015210_15E10.s")

void func_80015380_15F80(void *arg0) {
}

void func_80015388_15F88(s16 arg0) {
	void *sp24;
	sp24 = (void **)&sp24 + arg0;
	func_80014A3C_1563C((s32)sp24, arg0, 0, 0, -1.0f);
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800153D8_15FD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80015500_16100.s")

void func_800155B0_161B0(s16 arg0, f32 arg1) {
	if ((D_8006AB88 != 0) && (arg0 >= 0)) {
		func_8001F820_20420(D_8006AB10, arg0);
		alSndpSetPitch(D_8006AB10, arg1);
	}
}

void func_80015600_16200(s16 arg0, u8 arg1) {
	if ((D_8006AB88 != 0) && (arg0 >= 0)) {
		func_8001F820_20420(D_8006AB10, arg0);
		if (func_8001F840_20440(D_8006AB10) == 1) {
			alSndpSetPan(D_8006AB10, arg1);
		}
	}
}

void func_80015674_16274(s16 arg0) {
	if ((D_8006AB88 != 0) && (arg0 != -1) && (arg0 < 0x74)) {
		func_800153D8_15FD8(D_80033A74_34674[arg0]);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800156C8_162C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800157D4_163D4.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_8001599C_1659C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80015BCC_167CC.s")

void func_80015C58_16858(u8 arg0) {
	if (D_8006AB88 != 0) {
		alSeqpSetChlVol((ALSeqPlayer *)D_8006AB18[0], arg0, 0);
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80015C94_16894.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800164C4_170C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800165EC_171EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80016ABC_176BC.s")

void func_80016B38_17738(s8 arg0, s8 arg1) {
	D_80031D20_32920[arg1] = D_8006AB18[0]->unk1C;
	D_80031CD0_328D0[arg1] = arg0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80016B74_17774.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80016CD8_178D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80016E54_17A54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80016FD0_17BD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800170F4_17CF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80017224_17E24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_800172E0_17EE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80017394_17F94.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80017BF8_187F8.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80019EA8_1AAA8.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_80019F80_1AB80.s")

void func_8001A024_1AC24(void) {
	D_80034460 = D_80034464;
	D_80034468 = D_8003446C;
	D_80034470 = D_80034474;
	D_8006C550 = D_8006C554;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_8001A068_1AC68.s")

u8 func_8001A114_1AD14(void) {
	return *(u8 *)(D_80034468 + D_8006C558);
}

void func_8001A130_1AD30() {
	if (D_80034478 != 0) {
		func_80019ABC_1A6BC();
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_8001A160_1AD60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/func_8001A37C_1AF7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/12C80/myfree.s")
