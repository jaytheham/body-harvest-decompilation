Incorrect ASM: `func_80000730_1330` hoists the quit-message constant into `s8`, rematerializes the frame-counter address in the loop, and shifts the other saved registers.

-> Code changed: use a top-tested `while (done == 0)` loop and keep the address expression live with `if ((u32)&D_800431A0 * 0) {}` in the retrace case. Declare the last-buffer pointer, completion flag, message, DMA count, client, and floating count in that order. The address guard must use `&D_800431A0`; guarding the value retains an unwanted memory read.

-> Correct ASM: the counter address is cached in `s2`, DMA statistics occupy `s3` through `s5`, the completion flag occupies `s6`, message constants use `s7`/`s8`, and the quit constant remains an immediate. The message and client use `0x64(sp)` and `0x58(sp)`.