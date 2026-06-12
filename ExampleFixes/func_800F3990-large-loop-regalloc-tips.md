### Large function (func_800F3990_102940) register allocation tips

This function has a large loop body with 4 trig calls per limb, 2 limbs, plus table lookups. ~17 variables need callee-saved or persistent storage.

**Key techniques that improved closeness (18187 → 17608):**

1. **Remove redundant variables**: `ret` was just `slot` copied. Using `slot` directly removed extra stack slots.
2. **Remove unnecessary intermediate variables**: `allocCount = D_80157FF8 + 1` → inline `D_80157FF8 = D_80157FF8 + 1`.
3. **Fix osSyncPrintf args**: The error case had too many args (`D_80157FF8, specIdx` were being passed but not in format string `"CANNOT ALLOCATE NEW WALKER!!!\n"`).
4. **Move variable assignment to match delay slot**: `alienY = inst->unkE` should be AFTER the `if (cond >= 8)` check, not before. Target loads alienY in the branch delay slot.
5. **Variable declaration order matters for register allocation**: Put `u8 alienIdx` and `u8 specIdx` right after `s32 slot`, before `f64` declarations. This influenced which s-register they got allocated to.

**Remaining challenges for full match:**
- Stack frame 0xD0 vs target 0xC0 (16 bytes too large)
- Compiler allocates s-registers from s0 upward, but target allocates from s8 downward
- This causes completely different register numbers (alienIdx→$s4 instead of $s8)
- `slot` goes to $a1 (caller-saved, spilled) instead of $s0 (callee-saved, register)
- Anim pointer recomputation from inline expressions vs separate variable
- String address offsets shift due to different function code size

**Possible future approaches:**
- Try declaring ALL s16 local variables as s32 to reduce type conversion instructions
- Use anim as a local variable instead of inline expressions
- Try to force `slot` earlier in the function to get it allocated to a lower s-register
- Add/remove f64 variable declarations to shift register pressure
