### Base pointer v0 vs a2 for global byte array offset access (unresolved)

**Symptom**: Target has `addu v0, a0, t6; lbu a2, 0(v0)` but every C attempt generates `addu a2, a0, t6; lbu v0/a3, 0(a2)`.

**Pattern**: Function takes `(s32 arg0, s32 arg1)`, accesses a global byte array `D_800431C0` at offset `arg0`, reads a version byte, reads a 16-bit checksum from bytes 2–3, then walks bytes 4…4+arg1-1 to compute a running checksum.

**Target register layout**:
- `v0` = base pointer (`(u8*)&D_800431C0 + arg0`), used throughout including loop walk
- `a2` = version byte (recycled to stored_checksum after version check dies)
- `a0` = computed_checksum (recycled from arg0 after it's consumed)
- `v1` = loop counter `i`
- `a1` = arg1 (unchanged)

**Root cause**: IDO's CSE/GVN eagerly pre-allocates `a2` (the first available non-parameter register) for the base pointer computation `(u8*)&D_800431C0 + arg0`, regardless of variable declaration/assignment order or whether a named `ptr` variable is used. The target's v0 allocation appears to be caused by an IDO code-selection template for array index access that uses `v0` as the intermediate register.

**Consequence of wrong allocation**: `stored_checksum` ends up in `a3` (instead of recycling `a2`), causing an extra `move a2, a3` instruction before the second `osSyncPrintf` call. This makes the function 4 bytes larger than the target, shifting subsequent ROM addresses.

**Things tried (all failed)**:
- `u8 *ptr` declared first or last (always gets a2)
- `u8 version` declared first (version gets v0, ptr gets a2 - reversed from target)
- Block-scoped `u8 *ptr` inside `if (arg1 > 0)` block
- Inline array access `((u8*)&D_800431C0)[arg0]` for header, ptr only for loop
- Using `arg0++` as the loop index (no strength reduction, score 1574)
- Using `j = arg0 + 4; j++` as loop index (score 1908)
- Declaring `s32 version` instead of `u8 version`
- Direct array access without ptr for entire function (score 2489)

**Score achieved**: 590 (function is logically correct, just register-swapped throughout)

**Hypothesis**: The target code may have been compiled with `D_800431C0` declared as `extern u8 D_800431C0[]` (a byte array type rather than a single byte with address-of), causing IDO to use the array-access code template that generates `v0` for the address and `a2` for the loaded value. Changing this declaration in the project is not feasible as it is used in already-matched C functions with `&D_800431C0` syntax.
