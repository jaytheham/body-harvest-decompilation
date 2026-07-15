#include <ultra64.h>
#include "common.h"

// https://decomp.me/scratch/AA2W0
// CURRENT(740)
#ifdef NON_MATCHING
void func_8001A500_1B100(s32 arg0) {
	D_8006C6C6 = 0;
	D_8006C6C0 = 0;
	D_8006C6C2 = 0;
	D_8006C6CC = 0;
	D_8006C6CE = 0;
	D_8006C6D0 = arg0;
	D_8006C6D4 = -1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1B100/func_8001A500_1B100.s")
#endif

void func_8001A54C_1B14C(u8 *arg0) {
	u8 *dst;
	u8 c;

	c = *arg0;
	D_8006C6D8 = c;
	dst = &D_8006C6D9;
	arg0++;

	if (c != 0) {
		do {
			c = *arg0;
			dst++;
			arg0++;
			dst[-1] = c;
		} while (c != 0);
	}

	*dst = '\n';
	D_80053C8C = D_80052AD8;
}

#ifdef NON_MATCHING
void func_8001A598_1B198(u8 *arg0) {
	u8 *dst;
	u8 c;
	s32 temp;
	s32 count;

	dst = D_8006C580 + D_8006C6C2 * 0x28;
	c = *arg0;
	count = 1;
	if (c != 0) {
		do {
			if ((c & 0x80) && D_800313D0_31FD0 == 3) {
				*dst++ = c;
				arg0++;
				c = *arg0;
				count++;
			}
			temp = count < 0x28;
			count++;
			*dst++ = c;
			arg0++;
			if (!temp) {
				break;
			}
			c = *arg0;
		} while (c != 0);
	}
	*dst = 0;
	D_8006C6C2++;
	if (D_8006C6C2 == 8) {
		D_8006C6C2 = 0;
	}
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1B100/func_8001A598_1B198.s")
#endif

void func_8001A650_1B250(s16 arg0) {
    if ((arg0 != D_8006C6D4) || (D_8006C6C6 == 0)) {
        if ((arg0 == 1) || (arg0 == 0x17) || (arg0 == 0x18)) {
            func_80014A3C_1563C(0, 0x17B, 0, 0, D_80039830_3A430);
        }
        D_8006C6D4 = arg0;
        if (arg0 < 0x19) {
            switch (D_800313D0_31FD0) {
            case 0:
            default:
                func_8001A598_1B198(*(u8 **)((u8 *)D_800344B4_350B4 + arg0 * 8));
                return;
            case 1:
                func_8001A598_1B198(*(u8 **)((u8 *)D_80034C44_35844 + arg0 * 8));
                return;
            case 2:
                func_8001A598_1B198(*(u8 **)((u8 *)D_80034D0C_3590C + arg0 * 8));
                return;
            }
        } else {
            if (arg0 == 0xD6) {
                osSyncPrintf(D_800397DC_3A3DC);
                if (D_800313D0_31FD0 == 1) {
                    arg0 = 0xF0;
                }
                if (D_800313D0_31FD0 == 2) {
                    arg0 = 0xF1;
                }
            }
            func_8001A598_1B198(*(u8 **)((u8 *)D_800344B4_350B4 + arg0 * 8));
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/1B100/func_8001A7A0_1B3A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1B100/func_8001A828_1B428.s")
