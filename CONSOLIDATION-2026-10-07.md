# Consolidation, 2026-10-07

The first parallel window (three workers, ~08:00-14:05) was frozen and integrated here. This branch is the
base for the second window.

## What is in this branch

- upstream `origin/master` merged (PRs #384, #388 and the surrounding upstream work).
- the batch branch `decomp-2026-10-06-14-43` (worker "main", overlay_gameplay).
- `decomp-par1-20261007` (worker 1, core).
- the scratch line, which already carried `decomp-par2-20261007` (worker 2, overlay_level) and this
  session's own two conversions.
- 13 matches ahead of upstream master (12 surviving: one was matched, reverted, then re-landed), plus the
  window's 20 `ExampleFixes` notes and 2 `imp` commits.

## Merge record

- **merge 1** (`decomp-2026-10-06-14-43`): clean, no conflicts.
- **merge 2** (`decomp-par1-20261007`): one conflict, `src.us/core/loader.c`.
  Resolution (user decision): keep worker 1's side - the block-scope `extern s32 osRecvMesg();` and its
  comment recording that `include/2.0I/PR/os.h` types that flag `s32`, which coerces the `1U` argument to
  a signed node and merges it with the `case 1:` constant, and that retyping the shared header instead
  breaks `func_800720F4_810A4`. Fallback if the gate failed: `git checkout HEAD -- src.us/core/loader.c`
  drops that match back to the reverted state.
- No conflict markers remain anywhere in the tree.

## Verification

From-scratch gate: `build/` wiped, `make extract`, full rebuild, sha1 compare - deliberately not
incremental, because the merge moved a shared header (`include/variables.us.h`) and this build has no
`-MMD` dependency tracking, so an incremental gate would not prove the header change.

Result: **GATE PASSED - the ROM matches.** `build/bh.us.z64: OK` on the sha1 compare, full rebuild from a
wiped `build/` with a fresh `make extract`. Worker 1's `loader.c` resolution therefore stands on its own
evidence and the fallback was not needed.

## Metrics from the first window (measured, not estimated)

```
37 agent runs - 0 errors, 0 incidents        cadence: 15m scheduled, 25-45m real (run holds the lock 12-23m)
own commits since 08:00: 30 = 6 matches, 1 imp, 20 ExampleFixes notes, 2 merges, 1 revert
matches per run     0.17        notes per match     3.3
window matches      6 (+1 from the main session)     wishlist items landed  1 of ~24
matches by hour     4 in the first hour, 2 in the next three and a half
per worker          w2 4 matches/9 notes - main 1/5 - w1 1/6
```

The one wishlist item was `core/loader.c` (port-oth-3), which is also the merge conflict above. Worker 2's
best-placed unfinished item is `func_800E95BC_F856C` (port-dd-1, 171 instructions): two notes, no match.

The metric error is worth recording: notes-per-run was the *measured* lever in the 10:44 velocity
assessment (0.25 -> 0.92) and the fleet duly produced inventory. The binding metric is now matches per run
plus **earned** parks.

## Decisions for the second window (user, 14:20)

| decision | answer |
|---|---|
| allocation | one worker on the wishlist (`AAA70.c` + `7F220.c`), one on the chunk-matching seam |
| push policy | push this branch to the LunarLaurus fork once the gate passes - no PR |
| window | 12 fires each at a 15m schedule (~3h), then reassess |
| `loader.c` conflict | keep worker 1's version; the gate is the judge, revert if it fails |
| metric | matches per run plus earned parks (exact score, file:line, what failed). A note is not output. |

## Second window

- **worker A** - job `e7c32b7c62f9`, branch `decomp-2026-10-07-A`, tree `~/bh-decomp-par2` - the wishlist
  HUD and reticle shelf, smallest first: `func_800A2D98_B1D48` (446), `func_800A2260_B1210` (522),
  `func_800A03FC_AF3AC` (986), `func_8009D96C_AC91C` (1034), `func_8009C6CC_AB67C` (1165).
- **worker B** - job `3dcb2e84055f`, branch `decomp-2026-10-07-B`, tree `~/bh-decomp-par1` - the
  chunk-matching seam, small end first, excluding A's two files.
- Both armed **paused** and resume when this branch's gate passes. The old fleet was removed (jobs
  `2d9bb787f71c`, `071afe208b1e`, `020c2b21905e`); worker 2 had to be *deleted* rather than paused because
  the pause path tried to activate it instead.
