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

#pragma GLOBAL_ASM("asm/nonmatchings/core/1B100/func_8001A650_1B250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1B100/func_8001A7A0_1B3A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/1B100/func_8001A828_1B428.s")
