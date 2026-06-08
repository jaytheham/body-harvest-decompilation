### Non-matching func_802DEED4_25E614 - State machine with GFX display list

**Score:** CURRENT(9052)

**Function pattern:** A state machine (`D_802E0CE4_260424` states 0-3) with a timer (`D_802E0CE8_260428`) that:
1. Transitions state 1→0 when timer >= 0xF0, resetting timer to 0xF0
2. Transitions state 3→2 when timer <= 0, resetting timer to 0
3. Checks vehicle proximity to center (0x47FE, 0x1644), sets state 3 if near (within 0x4B0) and state != 2, or state 1 if far and state != 0
4. In state 1: timer += 4; in state 3: timer -= 0xC
5. Builds display list commands (gSPMatrix, gSPDisplayList)
6. Calls func_8012D700 twice to spawn projectiles

**Key matching difficulties:**
- **Stack frame:** The compiler uses 0x78 vs target's 0x60 (0x18 = 24 bytes extra). Likely from GFX macro block-scoped `_g` variables and local variable stack spills.
- **Hoisted constant:** IDO hoists `li t2, 1` for repeated `== 1` comparisons. Target uses inline `li at, 1` each time.
- **Instruction reordering:** The compiler reorders stores to `D_802E0CE4_260424`/`D_802E0CE8_260428` vs function argument setup differently than target.
- **`temp_t0` lifecycle:** After `var_v0 == 1` block, target reloads `t0` from global `D_802E0CE8_260428` (which was just written as `t0+4`). The reloaded value changes the subsequent `t0 - 0xC` computation in the `var_v0 == 3` block to effectively be `(original_t0 + 4) - 0xC = original_t0 - 8`.

**What worked:**
- Using `gSPMatrix(D_8005BB2C++, (Mtx *)(D_8005BB38 & 0x1FFFFFFF), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW)` for the matrix display list command
- Using `gSPDisplayList(D_8005BB2C++, D_504FD38)` for the display list branch
- Variable name choices (`temp_a0`, `temp_a1`, `temp_a2`, `temp_v1`) matching the register names from the target
- The ABS computation pattern: computing default negative value first, then conditionally overriding

**Further matching would require:** Experimenting with goto-based control flow matching the target's branch labels, eliminating ALL local variables (reading globals inline), or using raw Gfx word writes instead of macros.
