### `s32` intermediate variable fixes `mul.d` operand order for damage scaling

When a function computes `arg * (1.0 - func_result / 100.0)` and the target assembly shows `mul.d $f8, $f6, $f18` (f6 = (double)arg, f18 = factor), but your code produces `mul.d $f8, $f18, $f6` (reversed), the fix is to split the function call result into a named `s32` variable:

**Wrong (inlined, gives reversed mul.d operands):**
```c
s32 temp = (s32)((f64)arg1 * (1.0 - (f64)func_result(...) / 100.0));
```

**Correct (split, gives correct mul.d f6*f18 order):**
```c
s32 pct = func_result(...);
s32 temp = (s32)((f64)arg1 * (1.0 - (f64)pct / 100.0));
```

**Why it works:** With the `s32 pct` split, the compiler evaluates `pct` as a separate statement first (converting it to double in f6), then the second statement uses f6 for (double)pct, then reuses f6 for (double)arg1 in the multiply. The multiply is `f6 * f18` = `(double)arg1 * factor`. Without the split, the compiler may evaluate the operands in the opposite order.

**Additional pattern:** With explicit `(s16)temp` casts for both the condition and the function argument, the compiler generates the double sign-extend pattern (`sll t7, a3, 16; sra t8, t7, 16` for check + `sll a1, t8, 16; sra t9, a1, 16` for argument), matching target. Without the explicit casts (using `s16 temp`), the compiler uses a single sign-extend chain with a `move` for the argument.

Pattern from `func_80122524_1314D4` (buildings.c, score 534):
```c
void func_80122524_1314D4(VehicleInstance *arg0, s16 arg1, s16 arg2, s16 arg3) {
    s32 pct = func_801223B0_131360(arg0, arg2, arg3, arg1);
    s32 temp = (s32)((f64)arg1 * (1.0 - (f64)pct / 100.0));
    if ((s16)temp > 0) {
        func_80124118_1330C8(arg0, (s16)temp);
    }
}
```

**Remaining unresolved difference (score 534):** The target has an extra `lh $a3, 0x1E($sp)` instruction very early in the prologue (before `sw $ra`), which causes:
- IDO's scheduler to save `$a1` before `$ra` (unusual)
- The post-jal reload of s16(arg1) to go into `$a3` instead of a t-register
- All sign-extend/branch registers to shift accordingly
- The function to be exactly 1 instruction longer

This specific behavior appears to be a scheduler quirk that cannot easily be reproduced with a different C expression form. Declaring the called function with `(VehicleInstance*, s16, s16, s16)` is correct (confirmed by post-jal use of a0 as pointer in callee).
