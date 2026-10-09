### Loop unrolling prevention: `continue;` causes `bne` instead of `slti`

**Context:** A function ending with several consecutive byte-zeroing loops where the LAST loop (`for (i = 0; i < 8; i++) { *ptr = 0; ptr++; }`) is followed immediately by a large block of explicit zero writes (13 bytes total, OUT-OF-ORDER for byte [3]).

**Problem:** Without any trick, IDO unrolls the last 8-byte loop into a 2-iteration × 4-byte-stride loop (`addiu v1, v1, 4; bne v1, a0, ...`), scoring 1185.

**Partial fix:** Adding `continue;` at the end of the last loop body prevents unrolling, but changes the loop comparison from `slti at, v1, 8; bnez at` to `li a0, 8; bne v1, a0` — a 3-instruction structural mismatch within the loop (score 510).

**`i++; i--;` is worse (score 575):** This trick prevents unrolling and restores `slti; bnez`, but causes a `v0`↔`v1` register swap in the last loop (loop counter gets v0, pointer gets v1 instead of the expected v1/v0 assignment).

**Root cause:** The `continue;` statement creates an explicit CFG jump-to-increment structure that causes IDO to choose `bne reg, pregloaded_reg` for the loop exit comparison. The plain `for` loop generates `slti; bnez` but gets unrolled. `i++; i--;` generates `slti; bnez` without `continue`'s CFG effect, but corrupts register assignment.

**Associated problem (t6/t7 register cascade, score contribution ~450):** The function prologue generates `lui t7, &D_800431C0` and `addiu t6, a2, 0x53` (stride offset into t6), but the target has `lui t6, &D_800431C0` and `addiu a1, a2, 0x53` (stride offset into a1). This one allocation difference cascades to affect 18+ instructions (all subsequent t-register allocations shifted by 1: t8→t7, t9→t8, etc.). 

To get `a1` for the stride+0x53 temp, the target code apparently had a named variable for it that IDO assigned to `a1`. However, declaring `s32 off = arg0 * 0x7A + 0x53` still results in `t6` for `off` (not `a1`), even though `a1` is free. The exact C code form required to trigger `a1` allocation in this specific context could not be determined.

**Unresolvable score:** 510 (with `continue;`), representing:
- 18 register rename diffs from t6/t7 cascade: ~450 score
- 3 loop comparison diffs (extra `li a0,8` + `bne` vs `slti;bnez`): ~60 score

**Observed in:** `func_800021CC_2DCC_2DCC` (core/1050.c) — save slot initialization function.

### Loop unrolling prevention: `for (;;)` plus `i++; i--;` on a plain counting loop

**Context:** `func_8007313C_15B1FC` (`overlay_gameplay/inside/158330.c`, 49 instructions) walks the
current room's placed-object array, masks a per-entry visited byte when the catalogue entry has flag 2,
and sets or clears one bit of `D_80047D40[buildingInteriorToLoadId]` per entry.

**The entire residual was IDO unrolling the loop x2** (our 115 instructions against the target's 49).
Every natural spelling unrolled: `do/while`, `while`, `for (i = 0; i < count; i++)` (indexed array or
advancing pointer) all scored 14155-16655. The `continue;` lever from the note above also failed here
(15225, and it swaps the comparison to `bne`).

**Levers measured (49-instruction target, IDO 5.3 -O2 -mips2 -32):**

| loop body | score |
|---|---|
| plain `do { } while (i < count)` (as committed) | 14155 |
| `for (i = 0; i < count; i++)`, indexed or pointer | 15225-16655 |
| `continue;` at end of a `for` body | 15225 |
| `i++; i--;` at end of a `for` body | 2135 |
| `s16 i` loop counter | 2550 / 1765 |
| declare `s32 i;` before `entry` and `count` | 1110 |
| `for (;;) { ... i++; i--; i++; if (i >= count) break; }` | **860** |

`i++; i--;` defeats the unroller without the `bne` side effect that `continue;` introduces, and
declaring the counter first removes a duplicated `blez` loop-entry test. The remaining 860 is **not**
structural: it is a cyclic register rotation. The target keeps `count` in `$v1`, the entry pointer in
`$a1` and the index in `$v0`; our compile ends with the same three values rotated (count `$v0`, entry
`$v1`, index `$a1`), and folds the catalogue pointer into the load in the target
(`lw a2, %lo(D_800E65BC)(a2)`) while we materialise it as `lui/addiu a2; lw t9, 0(a2)` inside the loop.
A named `Unk80070F7CObj *cat = D_800E65BC;` local did not force the hoist (860 -> 1035). Parked at 860;
do not re-tread the loop-form table above.
