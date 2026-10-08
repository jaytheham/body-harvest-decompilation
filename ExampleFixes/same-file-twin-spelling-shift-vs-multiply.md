### Same-file twin with an identical head: the residual is expression *spelling*

**Symptom.** A function sharing an unbroken instruction run with a *matched* function in the same
file scores in the hundreds, yet `ins_diff -noregs` shows the count off by one and every block a
reorder or a constant difference — no missing logic.

**Measured on `func_8009C4F8_AB4A8` (`overlay_gameplay/outside/AAA70.c`, 117 instr, marker
`CURRENT(1224)` -> 0, `Match func_8009C4F8_AB4A8`):** `asm_chunks.py` found a **72-instruction run
identical to the matched `func_8009BDB8_AAD68`** (`AAA70.c:231`, the next function above it) — the
whole tile-setup head, same registers and immediates. Two levers, both measured:

1. **Unused locals cost frame, not just warnings.** The guess declared `Gfx *dl; s32 pad0..pad9;`
   and never used any of them: frame `0x60` vs the target's `0x30`, and the parameter homes at
   `0x60/0x64` where the target has `0x30/0x34`. Deleting all eleven: **1224 -> 1110**. The twin has
   *no* locals at all and still emits its `0x30` frame and the `sp+0`/`sp+0xC` scratch slots, so an
   identical body needs none here either.
2. **`* 4` and `<< 2` are not the same expression to IDO.** Rectangle args spelled
   `arg0 * 4`, `(D_80068088 - 0x24) * 4`, `(arg0 + 0xB) * 4`, `(D_80068088 - 0x19) * 4`
   (**116** instructions, score **1110**): IDO strength-reduces and *distributes* the difference —
   `addiu t6,t9,-0x19; sll t7,t6,2` becomes `sll t6,t9,2; addiu t7,t6,-100` — and CSEs
   `arg0*4` with `(arg0+0xB)*4`, so it computes `xl` first and spills the **product** to `sp+0`.
   Respelling as `(s32)arg0 * 4` and `(X - k) << 2` (**117** instructions, score **0**): the shift
   applies to the *difference* (`addiu t6,t9,-0x19; sll t7,t6,2`), `xh` is computed first as the
   target does, and the **raw parameter** is what gets spilled to `sp+0`. Both spellings are legal
   and compute the same value; only one reproduces the schedule.

**Recipe.** Rank the target's own file for a matched twin with `asm_chunks.py <target>.s --corpus asm`
— a same-file twin means the data symbols, macros and declaration context are already right, so the
residual is nearly always spelling or allocation. Copy the twin's statement *spellings*, not just its
statement order, then take every literal from the target's own `.s`.
