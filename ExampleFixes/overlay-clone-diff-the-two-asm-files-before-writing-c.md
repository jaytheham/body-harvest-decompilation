# Overlay-clone transplant: diff the two `.s` files before writing any C

Symptom: a function in one level overlay is the *same* function as a matched one in another overlay
(the seam board reports it as `graftable`/`near-copy` at ~1.00x, and the donor is the counterpart
function). The wrapped guess is poor (a large `CURRENT(n)`, e.g. 22434 over 363 instructions).

The lever, measured 2026-10-07 (`func_802D7FCC_1F0CDC`, java `1ED9E0.c`; donor `func_802D775C_19026C`,
matched, greece `18D7E0.c`): **before touching the C, diff the two extracted `.s` files.** Strip the
`/* addr addr word */` comment and collapse the `.L...` label names, then `diff`:

    norm() { sed -E 's@/\*.*\*/@@; s@\.L[0-9A-F_]+@LBL@g; s/^\s+//' "$1" | grep -v '^$'; }
    diff <(norm asm/matchings/<mod>/<donor>.s) <(norm asm/nonmatchings/<mod>/<target>.s)

If the whole function differs in only a handful of lines - the name, one or two `jal` targets, a few
constants - the transplant is mechanical and the match is essentially guaranteed. That case here was
**5 lines**: the glabel name, `jal func_802D763C_19014C` -> `jal func_802D7EAC_1F0BBC`, and
`0x49 -> 0x4B` / `0x48 -> 0x4A` (three sites). Rebuilding the body from the donor's *source* with exactly
those substitutions reached `check` **0** on the first compile, gate PASSED.

Do not hand-edit the guess in this case, and do not trust the profile's `diff` column as the
discriminator: the same board shows `func_80087A40_16FB00` (0.98x, `graftable`, profile `diff 82`) whose
raw normalised diff is **159 lines** - a real logic difference, not a constant swap. The raw `diff | wc
-l` of the two `.s` files is the cheap decision: ~10 lines is a transplant, >50 is a reconstruction.

Notes on the mechanical rebuild:

- Generate the body with a script from the donor's source (extract the donor's definition block to its
  closing `}`), not by retyping - 363 instructions of C is where typos come from.
- Take the donor's **parameter types** with the body. The donor was `u8 arg0`; the java overlay's own
  header (`src.us/overlay_level/java/1ED9E0.h`) declared the target `(s32 arg0)` and every neighbouring
  declaration was `u8` - the header had to be corrected or the TU fails with `conflicting types`.
- The donor's `CURRENT(n)` marker line above the target's block is stale once the body is replaced;
  delete it.
- `include/common.us.h` includes every overlay header, so an overlay-`.h` retype looks like a
  tree-wide header edit. Only the two TUs that name the function (`1ED9E0.c` + the overlay's
  `alien_types.c` table) need a rebuild; `touch` those, then gate.

## The transplant queue: rank sibling-overlay pairs by raw `.s` diff, not by the board's `lift`

The board names only the *best* donor per target, so it hides the rest of the family. Enumerate the
pairs directly and rank them by the raw normalised diff: resolve each row's donor and target `.s`
(`find` in both directions), keep the rows where the donor is a **matched** function of one level
overlay and the target is an **unmatched** function of a *different* level overlay, and sort by
`diff | wc -l`. Measured 2026-10-07 (band 80-700, 25 such pairs): the two cheapest - **12** and **23**
diff lines - both reached `check` 0 on the first compile (`func_802DA548_1F3258`,
`func_802DBDDC_1F4AEC`); everything at 100+ was a reconstruction (`func_802D8830_1F1540` 159,
`func_802D7B68_1F0878` 177). The overlays pair function-by-function against **greece** (every win in
this window took a greece donor), so `greece -> {java, comet, america, siberia}` is a generator, not a
one-off. Run it as a queue, not a board.

Use this sed diff, not the board's `diff` column, as the authority: the board's column comes from
`asm_chunks.py`'s normaliser, which collapses `%hi(...)`/`%lo(...)` operands to a placeholder and is
therefore **blind to data-symbol differences**, while the sed form above keeps them.

Two classes the `.s` diff *does* authorise but does not settle on its own:

- **Data symbols shared by name.** `func_802DA548_1F3258` uses `D_8014DD50`, `D_80052B34` and
  `ALIEN_FLAG_UNKD` exactly as its greece donor does, so the donor's C went in verbatim. Always check
  the donor's symbols against the target's own `.s` (`grep -n "%hi\|%lo" <target>.s`) before splicing.
- **A callee the sibling overlay does not have.** `func_802DBDDC_1F4AEC` calls
  `func_8008EDFC_9DDAC(arg0)` where greece calls the *pair* `func_8008E524_9D4D4(arg0, 0x190, 2)` +
  `func_8008E978_9D928(arg0, new_var2)` - 8 donor instructions against 1, and the donor's `new_var2`
  declaration goes with them. Substitute from the target's `.s`, and drop any local the substitution
  orphans (a surviving unused local would reserve a stack home the target does not have).
