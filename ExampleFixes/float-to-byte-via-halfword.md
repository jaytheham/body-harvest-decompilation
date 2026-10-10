# Float conversion before a byte parameter

With IDO 5.3 `-O2 -mips2 -32`, converting a float to `s16` before passing it to an `s8` parameter can produce a different register-transfer schedule from converting it to `s32` first.

In `func_802DDFF0_2C0420`, this call:

```c
func_800C8184_D7134((s16)sp8C, 5, (s16)sp88, sp6E);
```

produces the target sequence for the two float-to-byte arguments: `mfc1` into a temporary register, `nop`, `sll` by 24, and `sra` into the argument register, repeated for the second argument. Using `(s8)(s32)` instead puts both `mfc1` results directly into argument registers and interleaves them, removing the two target `nop` instructions.

The called function's `s8` parameters supply the final narrowing, so an additional outer `(s8)` cast is unnecessary. This observation was verified for the conversion section at target ROM offsets `0x2C0704` through `0x2C0724`; the containing function was still unmatched when this note was added. Stack offsets and earlier instruction differences require separate work.
