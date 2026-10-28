incorrect ASM: In `func_80101EF4_110EA4`, initializing `entry = &D_8013FDA8_14ED58[i]` before `while (loops--)` makes IDO compute the detail pointer before the initial model display-list read. The vehicle-type pointer spills through `sp+0x40`, the matrix pointer uses `sp+0x88`, and the frame grows to `0x98`.

-> code changed: Use `if (loops--) { entry = &D_8013FDA8_14ED58[i]; do { ... } while (loops--); }`. Keep the existing `gSPMatrix`, `gSPDisplayList`, geometry-mode, and pop macros. Decrement the outstanding matrix count when a detail flag requests a pop.

-> correct ASM: The frame returns to `0x50`; the vehicle-type pointer occupies `s3`, the initial matrix pointer spills at `sp+0x40`, and the detail-table address is computed after the loop guard. No manual graphics-word stores are needed.

incorrect ASM: The original `if (i == 14) ... else if (i == 15) ...` emits the case-14 body first. A two-case switch with bodies ordered 14 then 15 adds an unconditional branch into the default body.

-> code changed: Write the switch bodies in order `case 15: func_802D4CD0_18D7E0(0x18, 0); break;`, then `case 14: func_802D4CD0_18D7E0(0x19, 0); break;`, then the existing default graphics commands.

-> correct ASM: Dispatch is `beq s5,14,case14` followed by `bne s5,15,default`; case 15 falls through to its call, followed by the case-14 block and the default block. This reproduces the target handler layout without a jump table.

incorrect ASM: Capturing the matrix buffer before the first vehicle-type field read assigns its increment to `t9` instead of `t1` and changes the setup schedule. Assigning the type pointer alone does not force IDO to evaluate its address immediately.

-> code changed: Initialize `type`, read `i = type->detailProp`, capture `sp40 = D_8005BB38`, advance `D_8005BB38 = sp40 + 1`, and only then calculate the scale through `type->unkC`.

-> correct ASM: The size halfword loads into `t2`, the matrix increment uses `addiu t1,a3,0x40`, and the complete initial setup matches.

incorrect ASM: Direct countdown conditions leave nine words with `v0` and `v1` exchanged: the first matrix packet uses `v0`, countdown copies use `v1`, and the final packet copy uses `v0`.

-> code changed: Reuse the existing padding word as a signed word control value. Keep each countdown assignment separate from its test: `flags = loops--; if (flags) { ... do { ... flags = loops--; } while (flags); }`, followed by the analogous guarded cleanup loop using `flags = count--;`. The same word holds `entry->flags` inside the detail loop. Keep `if (0x1FFFFFFFU == count) {}` before the detail helper to retain the shared mask's register priority. The two other experimental comparisons and constant aliases are unnecessary and were removed.

-> correct ASM: The first matrix packet uses `v1`, countdown copies use `v0`, and cleanup ends with `move v1,s0`. All 256 instructions match, and the standard build reports `build/bh.us.z64: OK` with the SDK graphics macros retained throughout.
