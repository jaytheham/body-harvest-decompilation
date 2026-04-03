#include <ultra64.h>
#include "common.h"

#ifdef NON_MATCHING
void func_8001A460_1B060(LzssHeader *data, u8 *out) {
    u16 *offsets = (u16 *)((u8 *)data + data->offsetsRelOffset);
    s8 *literals = (s8 *)((u8 *)data + data->literalsRelOffset);
    u8 *end = out + data->outputSize;
    s32 *bitPtr = data->controlWords;
    s32 bits = 0;
    s32 bitCount = 0;
    u16 ref;
    u8 *src;
    s32 len;
    s8 byte;

    while (out != end) {
        if (bitCount == 0) {
            bits = *bitPtr++;
            bitCount = 0x20;
        }
        if (bits < 0) {
            byte = *literals++;
            *out++ = byte;
        } else {
            ref = *offsets++;
            src = out - (ref & 0xFFF) - 1;
            len = (ref >> 12) + 3;
            do {
                byte = *src++;
                *out++ = byte;
                len--;
            } while (len != 0);
        }
        bits <<= 1;
        bitCount--;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/core/1B060/func_8001A460_1B060.s")
#endif
