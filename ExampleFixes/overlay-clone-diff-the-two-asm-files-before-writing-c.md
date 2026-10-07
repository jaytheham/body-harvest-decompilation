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
