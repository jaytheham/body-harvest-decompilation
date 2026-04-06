### Switch statement jump table blocked by binary blob placement

When a function contains a `switch` statement and the target jump table (`jtbl_XXXXXXXX_YYYYYYY`) is
at an address inside the `2EA10.bin` binary asset (RAM range 0x8002DE20–0x8003FB30), the C compiler
generates a new jump table that goes into `.rodata` at a different (later) address (0x8003FB30+).

**Symptom:**
- `lui at, 0x8003` in target vs `lui at, 0x8004` in current
- `lw t7, 0x6c8c(at)` in target vs different offset in current
- Function code is 0x10 bytes larger due to extra unreachable nops padding the epilogue
  (caused by missing `sw a0, 0x38(sp)` in prologue + 5 extra nops elsewhere = +0x10 net)

**Root cause:** The address `jtbl_80036C8C_3788C` = 0x80036C8C is inside the `assets/2EA10.bin`
binary blob. The C compiler places its auto-generated switch jump table in `.rodata` at ~0x8003FB30
(after the binary blob ends), which doesn't match the target.

**Resolution:** To fully match, split `assets/2EA10.bin` around the jump table entry
and add a dedicated linker entry to place the carved-out data at exactly 0x80036C8C. Until 
then, mark the function `#ifdef NON_MATCHING` with the `#pragma GLOBAL_ASM` fallback.

**Example:** `func_80002EF8_3AF8` in `src.us/core/1050.c`
