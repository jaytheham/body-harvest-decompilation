### Constant -1 cached in `$s2` instead of freshly loaded into `$at`

**Symptom:** Frame is 8 bytes too large (e.g. `0x38` vs `0x30`). The prologue saves an extra `s2` register. Throughout the function body, `li s2,-1` appears once near the first use and then `s2` is used for ALL subsequent `-1` comparisons. In particular `beq/bne` instructions that should use `at` use `s2` instead. This cascades into:
- Different float constant (0.25f `0x3e80` instead of 4.0f `0x4080`) due to different instruction scheduling
- `mul.s` instead of `div.s` for the same float constant
- Different addressing for global variable stores (full `lui+addiu+sh 0(v1)` instead of `lui+sh -offset(at)`)
- `blezl` (likely branch) + `lw ra` in delay slot (early epilogue restore) instead of `blez` + non-likely pattern
- Register number differences throughout the second half of the function (e.g. `t1` for `ptr->unk0` instead of `t2`, `t2` for constant 1 instead of `v0`)

**Root cause:** The function uses integer constant `-1` in many places:
1. Two identical `if (D_80031CD4 != -1) { D_80031CD4--; if (D_80031CD4 == -1) { func_80013324(); } }` blocks
2. A `D_80033C94 = -1` assignment in between
3. A loop comparison `func_80013B48(...) != -1` after both blocks

The two `D_80031CD4` blocks are separated by many function calls. IDO -O2 decides to cache `-1` in a callee-saved register (`s2`) across all 6 uses, to avoid reloading it repeatedly. This is suboptimal but correct; the original binary's IDO compiler made the opposite choice and freshly loaded `-1` into `$at` each time.

**Why you can't easily fix it:** The register allocator pre-assigns `s0` for the loop counter(s) and `s1` for the global pointer (`D_80031CD4` address / `ptr` in loop), leaving no free saved register in the "plan" for `-1` below `s2`. The choice between caching `-1` in `s2` vs fresh `li $at,-1` appears to depend on subtle compiler heuristics that can't be controlled through simple C code restructuring.

**Attempted fixes that did NOT help:**
- Merging separate loop counter variables (`var_s0` + `var_s0_2`) into one `var_s0` — improved score from 3675→2850 but did not eliminate `s2`
- Scoping `var_v0` inside a block (`{ s16 var_v0; ... }`) instead of at function level
- Scoping `ptr` inside the inner `if (temp_v0 > 0)` block
- Changing `while(...) { ptr = ...; var_s0++; if (...) ... }` to a `for(var_s0 = 0; ...; var_s0++)` with `break` — the for-loop IS correct and matches the delay-slot increment pattern
- Simplifying the `D_80033C94_34894` update to not use a local variable `var_v0`
- Various orderings of the `D_80033C94 = -1` store relative to the `func_800056D0_62D0` call
- Changing loop variable types (s32 vs s16)

**What does match well (score 2850):** 
- The overall function structure is correct
- The first for-loop body (s0 counter, s1 pointer, beqzl pattern) matches
- The D_80031CD4 block structure matches (minus reg differences)
- The ACA/gameplayMode block structure matches
- The float computation structure matches (minus mul vs div)
- The second for-loop with var_s0++ in beq delay slot matches

**Merging loop counters (key improvement):**
When the target uses the SAME saved register (`s0`) for two separate loop counters in NON-OVERLAPPING live ranges (first for-loop counter 0..1, and second loop counter 0..N), declare a SINGLE `s16 var_s0` variable and reuse it for BOTH loops. Using separate variables (`s16 var_s0` + `s16 var_s0_2`) gives score 3675. Using one merged `s16 var_s0` reduces to 2850.

**Note:** The `D_80033C94_34894` decrement block requires `var_v0` (s16) to generate the `blez/nop/addiu v0,-1/sll+sra/bnez v0; sh v0 (delay)` pattern. Without `var_v0`, the compiler generates an eager `blez` with early store and reload pattern, which is WORSE.
