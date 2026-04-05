### `u8` arg0 generates `sw a0, home(sp)` but NOT `move s2,a0` prologue with decrement+mask

When a function takes `u8 arg0`, computes `(arg0-1) & 0xFF` as an outer loop counter, and
calls many jal functions, IDO generates `sw a0, 0x28(sp)` (ABI homing) for the u8 argument.

However, the `move s2, a0; addiu s2, s2, -1; andi t6, s2, 0xFF; move s2, t6` prologue
sequence (where arg0 lands in s2 directly, is decremented in-place, then masked via an
intermediate t6 register) cannot be reproduced by any simple C expression.

**Symptom:** target has 4-instruction sequence:
```
move  s2, a0         ← (1) copy arg to callee-save immediately
addiu s2, s2, -1     ← (2) decrement in-place
andi  t6, s2, 0xff   ← (3) mask to t6 (NOT back to s2!)
... (other setup) ...
move  s2, t6         ← (4) assign t6 to s2
beqz  t6, skip       ← branch on t6, not s2
```

**Current generates instead:**
```
addiu v0, a0, -1     ← compute in v0 (temp)
andi  s2, v0, 0xff   ← mask directly to s2
beqz  s2, skip       ← branch on s2
```

**Cause:** IDO -O2 GVN/CSE folds `var_s2 = arg0; var_s2--;` into a single `addiu v0, a0, -1`
even across multiple statements. An explicit `temp_t6 = var_s2 & 0xFF; var_s2 = temp_t6`
intermediate is also folded away. All variations of 2-4 step approach produce the same output.

**Working approaches that match `sw a0, home(sp)` (use u8 arg0):**
- Declare `u8 arg0` — this causes IDO to generate `sw a0, 0x28(sp)` (ABI homing) ✅
- However, IDO still generates `addiu v0, a0, -1; andi s2, v0, 0xFF` (not the 4-step)
- This leaves 3 prologue instruction differences: missing `move s2,a0`, `andi` source/dest differ,
  missing `move s2,t6`

**Also note:**
- Using a `for (var_s0 = 0; var_s0 < 0xC; var_s0 = (var_s0 + 1) & 0xFF)` inner loop instead
  of `do-while` correctly fixes the inner loop's delay slot ordering
  (`move s0, t7; bnez at; move s1, v0` in delay vs `move s1, v0; bnez; move s0, t7`)

**Result score:** 455 (NON_MATCHING) - body matches, prologue has 2 missing instructions
and register-only differences in loops (t8/t9 instead of t7/t8 due to t6 not being consumed
in the prologue).

**Call site evidence for u8:** `lbu a0, 0x4B(sp)` in the calling function (`func_800105F0_111F0`)
passes arg0 as a byte-loaded unsigned value, confirming `u8 arg0` is the correct parameter type.
