Incorrect ASM (`func_80108D80_117D30`): an empty speed-delta guard loses the two multiplies, truncation, signed-halfword comparison, and redundant branch.

-> Code changed: calculate the delta into a signed halfword, clamp it with `if (angularStep >= 0x1556) angularStep = 0x1555;`, then assign `arg0->unk2A = angularStep * 0;`.

-> Correct ASM: the delta calculation and `slti at,t8,0x1556; bnezl` remain, while the pitch assignment becomes a single zero halfword store.

Incorrect ASM: an `if/else` steering assignment schedules `mtc1 zero,$f16` before `sll t9,t6,2`.

-> Code changed: replace that assignment with `arg0->unk28 = 0.0f < speed ? -headingCorrection * 3 : 0;`.

-> Correct ASM: `negu t6,a0; sll t9,t6,2; mtc1 zero,$f16; subu t9,t9,t6`, preserving every other instruction, register, and stack offset. Full US ROM checksum passes.

Incorrect ASM: storing the projected terrain height in a named integer before calculating vertical motion emits `addu t2,t0,v0` instead of `addu t2,v0,t0`.

-> Code changed: inline `func_800F9EC4_108E74(...)` in the argument to `func_800FB3E8_10A398`, before adding clearance and subtracting vehicle height.

-> Correct ASM: `addu t2,v0,t0; subu t1,t2,t3; div zero,t1,at`, with the original temporary-register phase preserved.
