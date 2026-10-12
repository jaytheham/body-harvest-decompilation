#include <ultra64.h>
#include "common.h"

// the original was hand-written assembly using addi, add, and sub instructions
// (trap-on-overflow variants) that IDO 5.3 never generates (?)
#ifdef NON_MATCHING
void func_8001A460_1B060(LzssHeader *data, u8 *out) {
	u16 *offsets = (u16 *)((u8 *)data + data->offsetsRelOffset);
	s8 *literals = (s8 *)((u8 *)data + data->literalsRelOffset);
	u8 *end = out + data->outputSize;
	s32 *ctrlPtr = data->controlWords;
	s32 ctrlWord = 0;
	s32 bits = 0;

	do {
		if (bits == 0) {
			ctrlWord = *ctrlPtr++;
			bits = 0x20;
		}
		if (ctrlWord < 0) {
			*out++ = *literals++;
		} else {
			u16 ref = *offsets++;
			u8 *src = out - (ref & 0xFFF) - 1;
			s32 len = (ref >> 12) + 3;
			do {
				*out++ = *src++;
			} while (--len != 0);
		}
		ctrlWord <<= 1;
		bits--;
	} while (out != end);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1B060/func_8001A460_1B060.s")
#endif
