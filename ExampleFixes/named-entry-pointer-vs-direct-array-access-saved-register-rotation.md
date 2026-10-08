# A named entry pointer can rotate the whole saved-register band; direct array access fixes it

Observed while advancing `func_80088B9C_170C5C` (`src.us/overlay_gameplay/inside/16AF30.c`,
152 instructions, marker `CURRENT(3176)`, re-measured **3176**), 2026-10-07 worker B.

## Symptom

`check` reported 3176 with the **entire** instruction table carrying the `r` marker - same mnemonics,
same order, same immediates, same frame (`0x40`) and the same save set (`s0..s8, ra`), but four
callee-saved registers permuted in a ring:

| role | target | ours |
|---|---|---|
| `&D_8005BB2C` | `s3` | `s2` |
| `effect` | `s2` | `s1` |
| `&D_800FB6D0` | `s1` | `s0` |
| loop `entry` | `s0` | `s3` |

(`s4`-`s8` agreed.) The loop also carried four extra `nop`s because our scheduler did not hoist the
field loads: ours emitted `lh/mtc1/nop/cvt.s.w/swc1` per field, the target issues the loads first.

## What fixed it (measured, in order)

Both levers are needed; each alone is worse than both.

1. **Read the five fields into named locals before the stores** so the loads batch:
   `posX = D_800FB7B0[effect].unk8; ... alpha = D_800FB7B0[effect].unk12;` then the six stores.
   `entry = &D_800FB7B0[effect]` + named locals -> **571**.
2. **Drop the named `entry` pointer and index the array directly at every use**
   (`D_800FB6D0.x = D_800FB7B0[effect].unk8;`, `D_800FB6DC = &D_800FB7B0[effect].unkE;`, ...).
   **571 -> 110.** The whole `s0..s3` rotation disappears: the compiler makes the array element the
   CSE temp (target `s0`) instead of a source-level local, and the "save as first used" order then
   matches the target's (`&gfx, effect, &D_800FB6D0, entry`).

The named-locals-only shape with a named `entry` still measured 571; the direct-store shape with no
named locals (`D_800FB6D0.x = D_800FB7B0[effect].unk8;` + `D_800FB6DC = &D_800FB7B0[effect].unkE;`)
measured **480**. So: named locals *and* direct array access.

## Residual (110, parked)

22 rows, all caller-saved temp choice: the `0x20` byte constant lands in `t4` where the target has
`t5`, `0xE7000000` in `t5`/`t6` where the target has `a0`/`a0`, the loop's five field loads in
`a0-a3`/`t0` where the target has `t7/t8/t9/t7/t8`, and `mflo` in `t7` vs `t6`. Nothing structural is
left; it is the temp-bank family (see `epilogue-reload-register-temp-bank.md`).

## Not the lever

Declaration order of the loop locals (`entry` first vs last) and hoisting them to function scope both
re-measured **571** - byte-neutral. Do not re-tread declaration permutations on this residual.
