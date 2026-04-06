#include <ultra64.h>
#include "common.h"

#ifdef NON_MATCHING
void func_8001A460_1B060(LzssHeader *data, u8 *out) {
    u16 *offsets = (u16*)((s8*)data + data->offsetsRelOffset);
    s8 *literals = (s8*)data + data->literalsRelOffset;
    u8 *end = out + data->outputSize;
    s32 *controlWords = data->controlWords;
    s32 bitCount = 0;
    s32 bits;
    s8 *src;
    u16 token;
    s32 len;

    do {
        if (bitCount == 0) {
            bits = *controlWords++;
            bitCount = 0x20;
        }
        if (bits < 0) {
            *out++ = *literals++;
        } else {
            token = *offsets++;
            src = (s8*)(out - (token & 0xFFF));
            len = (token >> 12) + 3;
            do {
                *out++ = src[-1];
                src++;
            } while (--len != 0);
        }
        bits <<= 1;
        bitCount--;
    } while (out != end);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1B060/func_8001A460_1B060.s")
#endif
