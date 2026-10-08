#include <ultra64.h>

/* Two 48-byte VI contexts, cleared by __osViInit. */
u32 vi_data_0000[24] = {0};
u32 * __osViCurr = vi_data_0000;
u32 * __osViNext = &vi_data_0000[12];
