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
