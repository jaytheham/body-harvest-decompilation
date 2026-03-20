### Post-increment in condition moves global address to a0

When a global counter is loaded, incremented, stored, and compared, using `D_global++ >= threshold` instead of a local temp (`s16 temp = D_global; D_global = temp+1; if (temp >= threshold)`) causes IDO to put the global address in `a0` (not `v1`) and the loaded value in `v1` (not `v0`). It also triggers pre-loading of the next global address into `at` before the branch — matching the original scheduling pattern. Use this form when the original shows: `lui a0; lh v1, 0(a0); lui at, D_other; slti v0, v1, threshold`.

### u8 vs s8 parameter shifts temp register numbers

When an argument parameter type is `s8`, temp registers t7/t8/t9 end up one slot higher (t8/t9/t0) compared to `u8`. The `sw $a0, 0($sp)` hint for (u)8 parameters is the same for both; the difference is in the subsequent address/compute register assignments. If D_global address computation ends up in t9 (orig: t8), try changing the parameter from `s8` to `u8`.

### Comparison operand order affects register assignment for D_global

When a condition like `(D_global & mask) == (arg & mask)` produces register mismatches where D_global is in t8 (orig: t7) and arg is in t7 (orig: t9), reversing the operands to `(arg & mask) == (D_global & mask)` fixes it. IDO uses the rs (first operand) register of `bne` for the most recently computed value. By placing D_global on the right, it is computed last and assigned to rs, matching the expected register order.

### bnel backward loop with or v0, v1, zero pattern

When a backwards array walk uses `or v0, v1, zero` at the start of each loop iteration (copying counter v1 to return register v0), the original C code has no explicit `ctr` variable — IDO spontaneously copies the counter to the return register v0 as an optimization to return NULL naturally when the counter reaches 0. To reproduce: declare only two local vars (counter, pointer) in order counter→v1, pointer→a0. If v0/v1 are taken by locals, v0 will NOT be the implicit return copy and bne will be used instead of bnel. After 5 attempts if the register layout still differs, wrap as NON_MATCHING.
