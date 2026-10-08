# A byte read of an `s8`-declared global needs the u8 cast to emit `lbu`

**Symptom.** Two builds agree instruction-for-instruction (same count, delta +0, every home and
register equal) apart from a handful of rows where the target reads a byte with `lbu` and ours reads
it with `lb`. The score looks disproportionate to a one-opcode difference because `asm-differ` charges
those rows plus the whole rest of the table.

**Measured case.** `func_800DBA9C_EAA4C` (`overlay_gameplay/outside/CFE30.c`, 225 instructions, port
irrelevant). Re-measured baseline **800** — the recorded `/* CURRENT(2775) */` was stale in our
favour. `ins_diff -noregs` gave **225 vs 225, delta +0**, and the only real rows were four
`lbu` vs `lb`. Everything else in the table was register names and `li`/`addiu`-zero pseudo-form noise.

**Cause and fix.** The four reads were the `tc[]` texture-coordinate fields, spelled in the guess as
`(s16)(D_80153BCD << 6)` / `(s16)(D_80153BCE << 6)`. Both globals are declared **`s8`**
(`include/variables.us.h:2403-2404`), so `X << 6` loads **signed** (`lb`). The ROM loads them
unsigned (`lbu`, then `sll ...,6`). Two options:

- retype the globals to `u8` — **do not**: they are shared, and the sibling `func_800DB714_EA6C4`
  (and this function's own colour reads) already depend on the current declaration; and
- **cast at the use site** — the spelling the already-matched same-shape twin uses:
  `(*(u8 *)&D_80153BCD) << 6`. Four one-line edits measured **800 -> 0**.

**Lever, and why the chunk matcher earned its keep here.** The chunk index scored
`func_800DBA9C_EAA4C` at 84% lift, 1.00x ratio, graftable, against the matched
`func_800DB714_EA6C4` in the *same file* — the upright/flat cross pair, identical shape with the
`±scale` on a different axis. `donor_patch.py`'s draft was therefore the *same body with the other
axis*, and its gap list pointed straight at the `tc[]` rows. The donor's **literal spelling**
(`(*(u8 *)&X) << 6`, not the bare global) is what made the loads unsigned — its *shape* was already
present in the guess, but its *spelling* was not. Copying a chunk twin's exact expression form, not
just its statement order, is what closed this one.

**Note for the next run.** Read the delta list for opcode-level differences the normaliser hides
(`lbu` vs `lb`, `li` vs `addiu`) before concluding "allocation"; and when a twin's body is byte-identical
in shape, diff its *casts and literal spellings* against the guess.
