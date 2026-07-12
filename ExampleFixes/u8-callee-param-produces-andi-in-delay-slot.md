### `u8` callee param produces `andi` in delay slot

When passing a small constant (like `1`) as a function argument where the callee's parameter is declared as `u8` (instead of `s32`), MIPS IDO generates `andi reg, reg, 0xFF` to zero-extend the value. This is important when the target assembly shows `andi a0, sN, 0xFF` for a function call argument.

In particular, this pattern appears in delay slots: the compiler schedules the `andi` in the branch delay slot when the value is used in both paths of a conditional.

```c
// Target assembly shows `andi a0, s7, 0xff` in the delay slot of a branch:
//   bnez t6, .Ltarget
//   andi a0, s7, 0xff         ← delay slot

// Wrong (s32 param → move a0, s8 instead of andi):
s32 func_callee(s32 arg0, ...);

// Correct (u8 param → andi a0, sN, 0xFF):
s32 func_callee(u8 arg0, ...);
```

**Key insight**: Even though `1 & 0xFF` is trivially `1`, IDO will still emit `andi` when the callee's parameter type is `u8` because it must zero-extend the byte to a 32-bit word per the ABI. If the callee parameter is `s32`, IDO optimizes the `& 0xFF` away for small constants and uses `move` instead.

Also note that two separate constant `1` values (one for assignment/comparison and one for function parameter) may get allocated to different registers (s7 vs s8 in this case) depending on usage patterns.
