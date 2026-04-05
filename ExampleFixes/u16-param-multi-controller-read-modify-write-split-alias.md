### u16 param + multi-controller button read-modify-write with split-alias for controller 0

When a function applies bitwise clear operations to all 4 controller button state variables using a
same 16-bit mask (arg0), with a conditional guard on a global s16 flag:

**Recognition signs:**
- `andi t6, a0, 0xffff` at function entry (→ u16 param, not s32)
- `sw a0, 0(sp)` immediately after the andi (home-save because u16 param)
- `nor tX, tX, zero` computed twice: once inline (first block) and once into `v1` as reused temp
- Four separate `if (D_mask[i] & arg0) && (prevState[i] & arg0) { state[i] &= ~arg0 }` blocks
- `currentControllerStates[0].button` (accessed via struct array) generates CSE `addiu` pointer
  pattern, while D_8004758E/D_80047594/D_8004759A (standalone externs) generate clean lui+lo

**Root cause of address CSE for controller 0:**
`currentControllerStates[0].button` is accessed through a struct array, which triggers IDO to
precompute and cache the full address (`lui v1; addiu v1, v1, 0x7588`). Direct `extern u16`
symbols use separate lui+offset pairs for load and store (no CSE).

**Fix:** 
1. Declare `u16 arg0` (not s32) to generate `andi` + `sw a0`
2. Declare all 4 * 2 button state globals as separate `extern u16` symbols:
   - D_800475DA, D_800475DC, D_800475DE (= D_800475D8[1..3])
   - D_800475E2, D_800475E4, D_800475E6 (= previousControllerButtonStates[1..3])  
   - D_8004758E, D_80047594, D_8004759A (= currentControllerStates[1..3].button)
3. For controller 0's button (currentControllerStates[0].button = D_80047588):
   Use the split read/write alias pattern from `read-compare-write-extern-cse-split-symbol.md`:
   - Declare `extern u16 D_80047588;` (read) AND `extern u16 D_80047588_W;` (write alias)
   - In undefined_syms.us.txt add both: `D_80047588 = 0x80047588;` and `D_80047588_W = 0x80047588;`
   - Use: `D_80047588_W = D_80047588 & ~arg0;` instead of `currentControllerStates[0].button &= ~arg0`

**Best achieved score:** 495 (residual diffs: instruction scheduling for D_800475F8 `addiu v0` vs
`lui t4` hoisting, and `move v0, t6` ordering vs `lui t8`).

**Remaining unfixed:** D_800475F8 final read-modify-write uses `addiu v0` (pointer cache) in target
but current generates `lui t4` hoisted + separated load/store. This appears to be an IDO scheduler
choice based on register availability (v0 vs t4 free at different points), with no obvious C-level fix.
