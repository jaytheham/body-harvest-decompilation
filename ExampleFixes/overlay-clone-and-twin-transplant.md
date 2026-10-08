# Overlay clone / twin transplant: diff the two `.s` files before writing any C

**Shared rule.** When a function is a *near-copy* of an already-matched function (the seam board calls it `graftable` / `near-copy`, ~1.00x, donor = the counterpart), do **not** hand-edit the guess. **Diff the two extracted `.s` files first** — the raw normalised diff, not the board's `diff` column: a handful of lines means the transplant is mechanical (rename + symbol substitution); >50 lines means a reconstruction. Then rebuild the body **by script from the donor's source**, taking the donor's parameter types and statement *spellings*, and read the target's own `.s` for anything the donor's overlay lacks.

Normalise + diff:

    norm() { sed -E 's@/\*.*\*/@@; s@\.L[0-9A-F_]+@LBL@g; s/^\s+//' "$1" | grep -v '^$'; }
    diff <(norm asm/matchings/<mod>/<donor>.s) <(norm asm/nonmatchings/<mod>/<target>.s)

Use this sed diff, **not** the board's `diff` column: the board's column comes from `asm_chunks.py`'s normaliser, which collapses `%hi(...)`/`%lo(...)` operands to a placeholder and is therefore **blind to data-symbol differences**, while the sed form above keeps them.

## The transplant queue: rank sibling-overlay pairs by raw `.s` diff, not the board's `lift`

The board names only the *best* donor per target, hiding the rest of the family. Enumerate pairs directly: resolve each row's donor and target `.s` (`find` in both directions), keep the rows where the donor is a **matched** function of one level overlay and the target is an **unmatched** function of a *different* level overlay, and sort by `diff | wc -l`. Measured 2026-10-07 (band 80-700, 25 such pairs): the two cheapest - **12** and **23** diff lines - both reached `check` 0 on the first compile (`func_802DA548_1F3258`, `func_802DBDDC_1F4AEC`); everything at 100+ was a reconstruction (`func_802D8830_1F1540` 159, `func_802D7B68_1F0878` 177). The overlays pair function-by-function against **greece** (every win in this window took a greece donor), so `greece -> {java, comet, america, siberia}` is a generator, not a one-off. Run it as a queue, not a board.

Two classes the `.s` diff *authorises* but does not settle on its own:

- **Data symbols shared by name.** `func_802DA548_1F3258` uses `D_8014DD50`, `D_80052B34` and `ALIEN_FLAG_UNKD` exactly as its greece donor does, so the donor's C went in verbatim. Always check the donor's symbols against the target's own `.s` (`grep -n "%hi\|%lo" <target>.s`) before splicing.
- **A callee the sibling overlay does not have.** `func_802DBDDC_1F4AEC` calls `func_8008EDFC_9DDAC(arg0)` where greece calls the *pair* `func_8008E524_9D4D4(arg0, 0x190, 2)` + `func_8008E978_9D928(arg0, new_var2)` - 8 donor instructions against 1, and the donor's `new_var2` declaration goes with them. Substitute from the target's `.s`, and drop any local the substitution orphans (a surviving unused local would reserve a stack home the target does not have).

## First case: a 5-line transplant

`func_802D7FCC_1F0CDC` (java `1ED9E0.c`) from donor `func_802D775C_19026C` (greece `18D7E0.c`, matched). The wrapped guess was poor (a large `CURRENT(n)`, 22434 over 363 instructions). The normalised `.s` diff was **5 lines**: the glabel name, `jal func_802D763C_19014C` -> `jal func_802D7EAC_1F0BBC`, and `0x49 -> 0x4B` / `0x48 -> 0x4A` (three sites). Rebuilding the body from the donor's *source* with exactly those substitutions reached `check` **0** on the first compile, gate PASSED. Do not trust the profile's `diff` column as the discriminator: the same board shows `func_80087A40_16FB00` (0.98x, `graftable`, profile `diff 82`) whose raw normalised diff is **159 lines** - a real logic difference, not a constant swap. The raw `diff | wc -l` of the two `.s` files is the cheap decision: ~10 lines is a transplant, >50 is a reconstruction.

Mechanical-rebuild notes:

- Generate the body by script from the donor's source (extract the donor's definition block to its closing `}`), not by retyping - 363 instructions of C is where typos come from.
- Take the donor's **parameter types** with the body. The donor was `u8 arg0`; the java overlay's own header declared the target `(s32 arg0)` while every neighbouring declaration was `u8` - the header had to be corrected or the TU fails with `conflicting types`.
- The donor's stale `CURRENT(n)` marker line above the target's block must be deleted.
- `include/common.us.h` includes every overlay header, so an overlay-`.h` retype looks like a tree-wide header edit. Only the two TUs that name the function need a rebuild (`1ED9E0.c` + the overlay's `alien_types.c` table); `touch` those, then gate.

## A cross-overlay donor outside the level overlays

`func_800C8C7C_D7C2C` (`overlay_gameplay/outside/CFE30.c`, 101 instr) matched by grafting the **frontend** twin `func_800891F8_596A8` (`overlay_gameplay/frontend/52690.c`) - a different subsystem, not a level overlay, so the function never appears in the `greece -> {java, comet, america, siberia}` transplant queue. The seam board named exactly that donor (78% lift, 1.01x, 2 gaps); the raw normalised `.s` diff was **43 lines** - the glabel, three `jal` counterparts, five per-overlay data symbols and one immediate. The same function, so the graft is a rename plus symbol substitution. Two measured caveats:

- **`donor_patch.py`'s "NO DRAFT, the existing guess is closer" verdict can be wrong.** Its aligner folds registers *and* immediates and collapses branch labels, so it reported donor and target as 2 trivial gaps apart while the real residual was 12 instructions: (a) `idx == 0xFB` in the donor vs `idx == -3` in the target, and (b) a tail-scheduling difference. The recorded marker was **663 over 101 instructions** (6.6/instr) - *below* the 10/instr "guess is already closer" threshold - and the donor's body still reached 0 on the first compile. The marker is a proxy; the raw `.s` diff and a direct `check` are the measurements.
- **The scheduling residual was an expression form, not logic.** The guess wrote `sfx = &D_80154088[effect]; sfx->unk2 = arg3;` (pointer local); the donor wrote `((s16 *)(&D_80154088[allocId]))[1] = arg3;` (direct). The direct form reproduces the target tail: the address goes into `$at` for `sh $t2,%lo(D_8015408A)($at)`, and the four argument-halfword reloads are hoisted ahead of the shift chain. Same family as `direct-array-access-effect-call-scheduling.md` and `global-address-and-constant-materialisation.md`.

Method: build the body by script from the donor's **source** - extract the definition block, then substitute the sites read off the raw `.s` diff (`func_80083A58_53F08(4)` -> `func_800C14D4_D0484(3)`, `func_80083B7C_5402C(i)` -> `func_800C17B4_D0764(i, 0)`, `func_80083B14_53FC4` -> `func_800C1384_D0334`, `D_800DE840` -> `D_80154318`, `D_800DE130` -> `D_80154088`, `idx == 0xFB` -> `idx == -3`) - never retype the C. Then `unwrap_guard.py` + `splice_body.py`: `check` 0 on the first compile, `gate` PASSED.

## The alien on-death handler clone family across level overlays

Every level overlay's `alien_types.c` registers a per-type on-death handler at `AlienType.unk5C` (offset `0x5C`, `void (*)(u8)`). The *same table row* holds the *same handler* in each overlay, so a handler matched in one overlay is a near-verbatim donor for its siblings. Measured (2026-10-07):

- donor `func_802D8898_1913A8` (greece, `18D7E0.c`) - already matched.
- `func_802DBF34_1F4C44` (java, `1ED9E0.c`, 191 instr) - **matched at 0** by copying the greece body verbatim.
- `func_802D9658_31D7A8` (comet, `318E20.c`, 201 instr) - **matched at 0** with the greece body plus the two comet-only `func_80137468_146418` calls (see below).

Two things decided both matches:

1. **The existing guess's pointer local was the only real error.** Both targets were wrapped with a body using `AlienInstance *alien = &alienInstances[arg0];` and a cached `flags`; the matched donor reads `alienInstances[arg0].xxx` directly at every use. Take the donor's direct-access form (same family as `global-address-and-constant-materialisation.md`). The java guess was *also* missing the `if (alienInstances[arg0].unk20 & 0x40000000)` guard entirely.
2. **Copy the donor's shape, then read the target's own `.s` for the level's extras.** The three overlays' handlers are NOT identical: greece/java call only `func_800DF848_EE7F8` (+ the `func_800DEA08_ED9B8` / `func_8008AAFC_99AAC` tail), while comet additionally calls `func_80137468_146418(arg0, 0xF)` (after the inner `func_800DF848` block, before the `return`) and `func_80137468_146418(arg0, 0x66)` (the `else` arm of the range test). A verbatim greece copy would have failed comet; the differences are exactly what the target `.s` shows.

Finding the twins: `grep -n "unk5C" src.us/overlay_level/*/alien_types.c` and compare the handler named at the same table row across overlays. America's counterpart (`func_8008C0F8_9B0A8`) was already matched and siberia's row is `NULL`, so no further sibling exists for this handler. The same grep works for any other `void (*)(u8)` slot in `AlienType` (e.g. `unk48`).

## Same-file twin: the residual is expression *spelling*

Symptom: a function sharing an unbroken instruction run with a *matched* function in the **same file** scores in the hundreds, yet `ins_diff -noregs` shows the count off by one and every block a reorder or a constant difference - no missing logic.

`func_8009C4F8_AB4A8` (`overlay_gameplay/outside/AAA70.c`, 117 instr, marker `CURRENT(1224)` -> 0, `Match func_8009C4F8_AB4A8`): `asm_chunks.py` found a **72-instruction run identical to the matched `func_8009BDB8_AAD68`** (`AAA70.c:231`, the next function above it) - the whole tile-setup head, same registers and immediates. Two levers, both measured:

1. **Unused locals cost frame, not just warnings.** The guess declared `Gfx *dl; s32 pad0..pad9;` and never used any of them: frame `0x60` vs the target's `0x30`, and the parameter homes at `0x60/0x64` where the target has `0x30/0x34`. Deleting all eleven: **1224 -> 1110**. The twin has *no* locals at all and still emits its `0x30` frame and the `sp+0`/`sp+0xC` scratch slots, so an identical body needs none here either.
2. **`* 4` and `<< 2` are not the same expression to IDO.** Rectangle args spelled `arg0 * 4`, `(D_80068088 - 0x24) * 4`, `(arg0 + 0xB) * 4`, `(D_80068088 - 0x19) * 4` (**116** instructions, score **1110**): IDO strength-reduces and *distributes* the difference - `addiu t6,t9,-0x19; sll t7,t6,2` becomes `sll t6,t9,2; addiu t7,t6,-100` - and CSEs `arg0*4` with `(arg0+0xB)*4`, so it computes `xl` first and spills the **product** to `sp+0`. Respelling as `(s32)arg0 * 4` and `(X - k) << 2` (**117** instructions, score **0**): the shift applies to the *difference* (`addiu t6,t9,-0x19; sll t7,t6,2`), `xh` is computed first as the target does, and the **raw parameter** is what gets spilled to `sp+0`. Both spellings are legal and compute the same value; only one reproduces the schedule.

Recipe: rank the target's own file for a matched twin with `asm_chunks.py <target>.s --corpus asm` - a same-file twin means the data symbols, macros and declaration context are already right, so the residual is nearly always spelling or allocation. Copy the twin's statement *spellings*, not just its statement order, then take every literal from the target's own `.s`.

## The CFE30 `.c` <-> 52690 `.c` pair is its own clone family

`src.us/overlay_gameplay/outside/CFE30.c` and `src.us/overlay_gameplay/frontend/52690.c` carry the *same
logical functions*, so a match in one is a donor for the other in **either** direction. The
`func_800C8C7C_D7C2C` (CFE30) <- `func_800891F8_596A8` (52690) graft above is one direction; the reverse
landed `func_800870AC_5755C` (52690, 510 instr) from `func_800C6558_D5508` (CFE30, 522 instr) - raw
normalised `.s` diff **51 lines**, board `graftable` 0.98x, recorded marker `CURRENT(13418)` (26/instr,
i.e. poor). The seam board lists them as unrelated rows because it names only the *best* donor per target;
when either file has a match, grep the other for the counterpart before sweeping markers.

The three levers, each measured (13428 -> 200 -> 0):

1. **The guess's declaration set, not its logic, was the whole score.** The wrapped guess was logically
   faithful - right symbols, right callee - but declared its temporaries *inside* the loop body and viewed
   the record through `u8 *` plan pointers; it compiled to frame `0x60` with a 486-instruction body against
   the target's `0x40` / 510. Taking the donor's declaration set at **function scope** (`s16 idx;` plus typed
   `EffectInterpolationState *` views, in the donor's order) and its statement order took **13428 -> 200** on
   the first compile. Symptom to look for: `addiu sp,sp,-0x60` where the target has `-0x40`.
2. **A field can be a different width in the donor's struct than in the target's.** The donor's
   `Unk80154318Entry.unk14` is a `u8` (union with `s16 radialRadius`), so `D_80154318[idx].unk14 >= x` reads
   a byte; the target's `Unk800DE840.unk14` is declared `s16`, so the direct translation
   `D_800DE840[idx].unk14 >= x` emits `lh` where the target has `lbu`. Reading the same byte through the byte
   view (`entryBytes->bytes[0xC]`) took **200 -> 0** - same offset `0x14`, only the load width differs. When
   a transplant has one stubborn row, check whether that address is reached through a wider-typed field on
   the target side.
3. **Take the donor's shape but the target's call set.** The donor opens with
   `if ((idx == -5) || (idx == -6)) { func_800C1418_D03C8(1, 1); return; }` and calls
   `func_800C1D40_D0CF0(idx, 1, 1)` in the loop; the target has only the `while` guard (no early call) and
   calls `func_80083F8C_5443C(idx, 0x95)`. Both come straight off the target's own `.s`.

`EffectInterpolationState` (`union { u16 size; u8 bytes[14]; }`) is a **shared** type in
`include/structs.us.h`, so both overlays' records can be viewed through it: the donor uses it directly, the
target casts `(EffectInterpolationState *)&D_800DE840[i].unk8`. That keeps the byte arithmetic typed and
avoids `*(u16 *)` casts at every site.

`Match func_800870AC_5755C`, gate PASSED.

### Second family win: the same pair of files, a 2-line `.s` diff (`Match func_8008EDB4_5F264`)

`func_8008EDB4_5F264` (52690, 75 instr) <- `func_800DFA98_EEA48` (CFE30, 75 instr, already matched) is
the cheapest pair in the area: with `.L<addr>_<off>` labels normalised away, the two `.s` files differ
in **three lines only** - the `glabel` name and the two `%hi`/`%lo` references to the one data symbol
the pair reads (`D_8013DF84_14CF34` -> `D_800AA688_7AB38`). Rank the transplant queue with labels
normalised as well as addresses: un-normalised this pair reads 17 diff lines, 9 of them pure label
churn, and it is easy to skip a perfect graft on that number.

Three rules from it:

1. **A flattened `do/while` guess is the nested-loop donor's signal.** The wrapped body walked the 4x3
   table with one `do/while` and running `var_s4`/`var_s0` counters plus `u8 *var_s1` / `s8 *var_s2`
   pointer locals (`(i * 4) - i` index arithmetic); the donor's `for (i...) { for (j...) { ...
   arg0[i][j] = ... } }` with `table[(i * 3) + j]` reproduces the target's two nested loops and the
   target's `sll`/`subu` pair exactly. Take the donor's loop spelling *and* its parameter type with the
   body (`s8 arg0[][3]` here, not the guess's `s32 arg0`).
2. **A transplanted body can name a data symbol the tree never declared.** The guess's `D_800AA688`
   exists nowhere in `include/` - the target's own `.s` is the authority for both the name
   (`addiu $t7,$t7,%lo(D_800AA688_7AB38)`) and the width (its `lbu` proves `u8`, so
   `extern u8 D_800AA688_7AB38[];` next to its address neighbours in `include/variables.us.h`). Grep the
   symbol as written in the `.s` before assuming a declaration in the file names the same object.
3. **`include/variables.us.h` is a make prerequisite, so one declaration line forces a *full* rebuild**
   (minutes at `--jobs=8`, not seconds). Start `make --jobs=8` in the background first and only then run
   `check`, which is then a differ-only run; a foreground `check` straight after a header edit times out.
   `nm build/<path>.c.o` showing `T <func>` plus `check` 0 is the compiled-C proof - a sha1 match alone
   would also be produced by a stale object.

`Match func_8008EDB4_5F264` (75 instructions, `check` 0, gate PASSED).
