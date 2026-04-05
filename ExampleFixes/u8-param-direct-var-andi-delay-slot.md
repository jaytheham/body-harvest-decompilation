### Passing s32 to u8 parameter directly puts andi in jal delay slot

When calling a function with a `u8 arg2` prototype and the third argument is an `s32` loop variable (e.g., `var_s3`), passing it **directly** (without explicit `& 0xFF`) causes IDO to emit `andi a2, sN, 0xFF` cleanly in the **jal delay slot**:

```
jal func
 andi a2, s3, 0xFF    ← direct s32→u8 widening, in delay slot
```

Passing with an **explicit mask** (`var_s3 & 0xFF`) causes IDO to pre-compute the result early:
```
move a2, s3            ← in bne delay slot (premature)
andi t0, a2, 0xFF      ← before jal
jal func
 move a2, t0           ← put result in a2 in jal delay slot
```

This also cascades: the pre-scheduled `move a2, s3` in the bne delay slot displaces other register allocation, producing extra mismatches.

**Fix:** Remove the explicit `& 0xFF` from the call site. The compiler auto-generates the `andi` for the u8 parameter widening and places it optimally.

### Named temp_t0 for unk18 increment shifts allocation to v0

When the original code increments a struct counter field (`temp_s0->unk18 = temp_s0->unk18 + 1`) and then compares the result to another field (`if (temp_s0->unk18 == temp_s0->unk14)`), using **no named s32 temporary** for the incremented value produces the correct anonymous temp register assignment (t9/t0 for the lw/addiu pair).

Adding a named `s32 temp_t0` causes IDO to allocate `temp_t0 → v0` (first available non-callee temp), which cascades into wrong registers (v0/t9 vs correct t9/t0) and wrong bne operand order.

**Fix:** Use direct struct access on both sides of the increment and comparison:
```c
// ❌ WRONG – named temp shifts to v0/t9:
s32 temp_t0 = temp_s0->unk18 + 1;
temp_s0->unk18 = temp_t0;
if (temp_t0 == temp_s0->unk14) { ... }

// ✓ CORRECT – anonymous temps produce t9/t0:
temp_s0->unk18 = temp_s0->unk18 + 1;
if (temp_s0->unk18 == temp_s0->unk14) { ... }
```

Also place `var_s1 = (s32)((f32)var_s1 - unk20)` **before** the unk18 increment statement (matching the trunc.w.s instruction order in the target assembly). This matches `func_8000D278_DE78_DE78`.

### Residual: unk14 gets t1 instead of t2 (score 15, unresolvable)

In this pattern, the second anonymous load (unk14) gets register t1 ($9) while the target assigns t2 ($10). All other instruction positions and arguments match exactly. This one-register difference and its cascading bne operand swap appear to be an intrinsic IDO allocator tiebreaker that cannot be resolved via C-level changes (similar to the bne ordering note in `converting-do-while-to-for-loops.md`).
