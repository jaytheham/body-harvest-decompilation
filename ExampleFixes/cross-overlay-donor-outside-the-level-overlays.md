# A cross-overlay donor outside the level overlays: rank by the `.s` diff, not the clone family

`func_800C8C7C_D7C2C` (`overlay_gameplay/outside/CFE30.c`, 101 instr) matched by grafting the
**frontend** twin `func_800891F8_596A8` (`overlay_gameplay/frontend/52690.c`) - a different subsystem,
not a level overlay, so the function never appears in the `greece -> {java, comet, america, siberia}`
transplant queue. The seam board named exactly that donor (78% lift, 1.01x, 2 gaps); the raw
normalised `.s` diff was 43 lines - the glabel, three `jal` counterparts, five per-overlay data
symbols and one immediate. The same function, so the graft is a rename plus symbol substitution.

Two measured caveats:

- **`donor_patch.py`'s "NO DRAFT, the existing guess is closer" verdict can be wrong.** Its aligner
  folds registers *and* immediates and collapses branch labels, so it reported donor and target as 2
  trivial gaps apart while the real residual was 12 instructions: (a) `idx == 0xFB` in the donor vs
  `idx == -3` in the target, and (b) a tail-scheduling difference. The recorded marker was 663 over
  101 instructions (6.6/instr) - *below* the 10/instr "guess is already closer" threshold - and the
  donor's body still reached 0 on the first compile. The marker is a proxy; the raw `.s` diff and a
  direct `check` are the measurements.
- **The scheduling residual was an expression form, not logic.** The guess wrote
  `sfx = &D_80154088[effect]; sfx->unk2 = arg3;` (pointer local); the donor wrote
  `((s16 *)(&D_80154088[allocId]))[1] = arg3;` (direct). The direct form reproduces the target tail:
  the address goes into `$at` for `sh $t2,%lo(D_8015408A)($at)`, and the four argument-halfword
  reloads are hoisted ahead of the shift chain. Same family as
  `direct-array-access-effect-call-scheduling.md` and
  `direct-global-access-vs-pointer-local-address-rematerialization.md`.

Method: build the body by script from the donor's **source** - extract the definition block, then
substitute the sites read off the raw `.s` diff (`func_80083A58_53F08(4)` ->
`func_800C14D4_D0484(3)`, `func_80083B7C_5402C(i)` -> `func_800C17B4_D0764(i, 0)`,
`func_80083B14_53FC4` -> `func_800C1384_D0334`, `D_800DE840` -> `D_80154318`, `D_800DE130` ->
`D_80154088`, `idx == 0xFB` -> `idx == -3`) - never retype the C. Then `unwrap_guard.py` +
`splice_body.py`: `check` 0 on the first compile, `gate` PASSED.
