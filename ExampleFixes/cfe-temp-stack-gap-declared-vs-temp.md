### cfe temp stack gap: declared variable vs compiler-generated spill

When a value needs to be preserved across function calls and is used as a (s16) parameter multiple times, the compiler may create a cfe temp (compiler-generated spill) at a **higher stack address** than an equivalent declared local variable.

**Observed pattern (score 8, only stack offset differs):**
- Target has a cfe temp at `sp+0x30` with a 4-byte gap at `sp+0x2C`
- Current C has the same value as a declared `s32` at `sp+0x2C` (packed contiguously)

**Key insight:** Removing unnecessary outer `(s16)` casts from intermediate calculations fixed register allocation but the stack offset for the stored spill value remains 4 bytes off.

**The pattern:**

```c
// Target layout (compiler-generated):
// sp+0x24: first_value  (sw in delay slot)
// sp+0x28: second_value (sw before jal)
// sp+0x2C: [gap - alignment]
// sp+0x30: spilled_shifted_return_value (cfe temp)

// C code produces:
// sp+0x24: first_value
// sp+0x28: second_value
// sp+0x2C: spilled_shifted_return_value (declared variable, no gap)
```

**Workaround:** `#ifdef NON_MATCHING` with `#pragma GLOBAL_ASM` since the C code produces the exact same instruction sequence, differing only in the stack offset by 4 bytes. The gap at `sp+0x2C` is created by IDO treating the spill as a cfe temp rather than a declared local.

**Variables that were tried without success:**
- Adding `s32` padding variables (shifts all offsets or grows frame to 0x40)
- Reversing declaration order
- Using `(0, expr)` comma operator
- Inline computation without declaration (triggers callee-save register usage)
- Different cast patterns on sp24/sp28 assignments
- Anonymous inner blocks for scoping

### Inline one delta to control the paired save slots

In func_800B9228_C81D8, both named s32 deltas produced a0 at sp+0x18 and a2 at sp+0x1C. The target instead saves a0 at sp+0x20 while retaining a2 at sp+0x1C. Remove the named Z delta and repeat (arg1 - arg3) in the angle call and absolute-value calculation. IDO caches this expression and preserves it across the call, with exactly the target save slots and no new instructions. Inlining the X delta instead exchanges the two slots and still fails.

Declare the temporary angle halfword before the saved half-angle halfword so the latter occupies sp+0x34. Verified with a full ROM checksum match.

### Reviewed instance: the gap can be 8 bytes, and neither block size nor declaration order moves it (func_800E5E3C_F4DEC)

`overlay_gameplay/outside/CFE30.c`, 123 instructions, score **16**, `ins_diff -noregs` delta **+0** - the same mechanism as above, but the gap is two slots. IDO spills the masked `arg1` copy (a cfe temp created for the `osSyncPrintf(&D_80143F7C_152F2C, arg1)` argument and still live in the loop test) at `sp+0x44`; the target has it at `sp+0x4C`. The `type` local is at `sp+0x40` in both and the frame is `0x58` in both, so the whole divergence is which slot the spill gets.

Measured variants (one compile each, file restored after every probe; baseline re-measured **16**):

| variant | score |
|---|---|
| declaration order permuted, reversed, `type` first/last, assignment order swapped | 16 |
| `(u8)` cast on the call argument / on the loop-test operand | 16 |
| `s32 count`, `s32 j` (declared-block 16/20/24 bytes) | 16 (or 12384 when the type change alters codegen) |
| named copy local (`s32`/`s16`/`u8 arg1Copy`, declared first/middle/last, used in the loop test) | 42 / 238 / 669 - all worse |
| declared-but-unused pad, 4 or 8 bytes, first or last | 42, and the frame grows |

So the spill slot is not a declared-block-size or declaration-order question here: the target allocates 8 bytes at `sp+0x44`/`sp+0x48` for something this reconstruction does not declare, and a pad is *charged* rather than free (unlike `func_800FD510_10C4C0`). Parked at 16.
