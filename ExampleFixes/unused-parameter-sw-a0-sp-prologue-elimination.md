### Unused parameter causes `sw a0` in prologue

When IDO -O2 compiles a function that declares a parameter but never uses it, the compiler inserts `sw a0, 0x18(sp)` in the prologue (saving the argument to the caller's stack frame), shifting all subsequent instructions by 4 bytes. The target assembly has no such save.

**Symptom**: Target has `sw ra, 0x14(sp)` at the top, but current has `sw a0, 0x18(sp)` followed by `sw ra, 0x14(sp)`. All later instruction addresses are shifted by 4. The `nop` in the `jr $ra` delay slot is the 14th (last) instruction in the target but is absent (or at wrong offset) in the current.

**Fix**: Remove the unused parameter from the function definition, the declaration, and all call sites. The function becomes `void func(void)` instead of `void func(s32 arg0)`. Since IDO generates `$a0` setup at the call site regardless (the value happens to be in `$a0` from prior computations), the calling code's assembly is unaffected — and if the caller was not perfectly matched, this may even improve its match.

**Example**: `func_802D5110_254850` in `overlay_level/america/254410.c` — the `s32 arg0` parameter was never referenced in the body. Removing it (and updating the call `func_802D5110_254850(arg0)` → `func_802D5110_254850()`) eliminated the spurious `sw a0` and produced a perfect match (score 0).
