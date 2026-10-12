### beql blocked by early array base `lui a0` scheduled into branch delay slot

**Symptom:** Target uses `beql <cond>, skip; lw ra (delay)` for an `if (cond) { body }` guard, but current generates `beq <cond>, skip; lui a0, %hi(array) (delay)`. The function is exactly 1 instruction shorter than target (28 vs 29), and the jal target address is 4 bytes off.

**Cause:** IDO eagerly pre-schedules the high-word address `lui a0, %hi(D_array)` for a global array into the branch delay slot. This happens when:
1. The body contains `temp_a0 = D_array[(s8)(D_counter % 15)]` — the named `s8 temp_a0` local variable causes IDO to pre-commit `a0` to the array base address.
2. `a0` is free (no register conflicts) at the delay slot point, so it goes there.
3. With `lui a0` in the delay slot, `mfhi t8` (not `a0`) is used for the div result, and `addu a0, a0, t0` uses the pre-loaded base — all in `a0` instead of `at`.

In the target, `at` is used for the array base (`lui at + addu at + lb a0, offset(at)`). `at` CANNOT be scheduled into the delay slot because `li at, <comparison_value>` appears just before the branch (`at` is the comparison immediate), making it "busy" across that region. This forces the delay slot to be `lw ra` → beql.

**What was tried without success:**
- Separate early returns vs. `if (cond) { body }` forms
- `&&` compound conditions
- Explicit `u8 ctr` local variable
- Comma operator grouping
- Read/write alias for D_counter (prevents CSE, corrects fused loads — helps reach score 855)
- Read alias for D_array (no effect)
- `s32 dummy` phantom variable
- Moving temp_a0 declaration inside the if block
- Various orderings of write-before-call vs write-after-call

**Partial fix (score 855):** Use a **write alias** for the counter global to prevent address CSE. This converts the counter read from `lui + addiu + lbu 0(reg)` to `lui + fused lbu%lo(reg)`, and correctly places `sb counter+1` in the jal delay slot:

```c
// undefined_syms_auto.txt: D_80033C6C_W = 0x80033C6C;
// variables.us.h: extern u8 D_80033C6C_W;

if (D_80031CA4 != 3) {
    s8 temp_a0 = D_80033C5C_3485C[(s8)(D_80033C6C_3486C % 15)];
    D_80033C6C_W = D_80033C6C_3486C + 1;  // write alias prevents CSE
    func_80015C94_16894(temp_a0, 3);
}
```

**Remaining difference:** `beq` (current) vs `beql` (target) for the `D_80031CA4 != 3` check. This causes `lui a0` in the delay slot (current) vs `lw ra` (target), which cascades to:
- `mfhi t8` vs `mfhi a0`
- `addu a0, a0, t0` + `lb a0, offset(a0)` vs `lui at + addu at + lb a0, offset(at)`
- Missing `lui at` instruction (function is 1 instruction shorter)
- All jal addresses after this function are 4 bytes off

**Root cause:** The named `s8 temp_a0` local causes IDO to pre-commit `a0` to the D_array base address, allowing `lui a0` to be scheduled in the delay slot. In the target, the original C code must not have used a named temp for the array value OR had some other property that prevented `a0` pre-commitment.
