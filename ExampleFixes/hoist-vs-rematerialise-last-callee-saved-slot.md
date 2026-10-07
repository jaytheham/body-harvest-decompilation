# Hoist-vs-rematerialise: which value wins the last callee-saved slot

Observed while attempting `func_80000730_1330` (`src.us/core/1050.c`, 123 instructions, marker
`CURRENT(1172)`), 2026-10-07 worker 1. **Not matched**; this is the triage rule and the two negative
results for the family.

## Symptom

`check` reports a large score (1172) and `ins_diff -noregs` reports **target 123 / ours 123, delta +0**
with every opcode block aligned. The saved-register *set size* is also identical, and the frame and
every home offset are byte-identical (`sw ra,0x4C`, `sw s0,0x28`, `sdc1 f20,0x18`, `sdc1 f22,0x20`,
`sw a0,0x70` all at the same rows). Only the **membership** of the callee-saved band differs:

| slot | target | ours |
|---|---|---|
| s0 | audioBuf | audioBuf |
| s1 | `&sp64` | `&sp64` |
| s2 | `&D_800431A0` | `&D_800312FC` |
| s3 | `&D_800312FC` | `&D_800431B4` |
| s4 | `&D_800431B4` | `&D_80031300` |
| s5 | `&D_80031300` | loop-stop flag |
| s6 | loop-stop flag | constant `1` |
| s7 | constant `1` | constant `4` |
| fp/s8 | constant `4` | constant `10` |

Both builds hoist exactly nine values; the target spends its last slot on the **address of a global**
and leaves the case constant `10` to be rematerialised in `$at` (in the delay slot of the previous
compare), while ours hoists `10` and recomputes the address with `lui`+`lw` inside the loop. The
instruction *count* still matches, because the two placements cost the same number of instructions —
which is why `ins_diff` reports delta +0 and the differ table is dominated by `r` rows.

## How to tell this family from a real diff

1. `ins_diff.py <func> <module/file> -noregs` -> delta +0 and no structural block.
2. `mips-linux-gnu-objdump -d --no-show-raw-insn build/src.us/<rel>.c.o`, take the prologue, and
   compare the **save list and home offsets** against the target `.s`. If the offsets match row for
   row and the register *count* matches, the residual is one hoisting decision, not a frame problem.
3. Then compare the *in-loop* materialisation of the disputed value: hoisted (one instruction per
   iteration) vs rematerialised in `$at` (one instruction per iteration, often in a branch delay
   slot). The two are cost-identical to IDO's model, so the choice is a tie-break.

## Measured, both negative (do not re-tread)

| lever | result |
|---|---|
| `case 10U:` (the unsigned-literal typing lever that took `func_8000FFC0_10BC0` 1707 -> 448 by giving a constant a distinct node) | **1172** - neutral here; the tie-break is not driven by the literal's type |
| `s32 pad0[2];` first + `s32 pad1;` before the struct local (phantom-home recipe, cf. `func_800FD510_10C4C0`) | **1222** - frame `0x70 -> 0x80`; IDO packs new locals at the *top*, so `sp58`/`sp64` move **up** (`0x64 -> 0x68`, `0x6C -> 0x74`) |
| `u32 *pCounter = &D_800431A0;` (pointer local, previous run) | **1214** - frame grew, band did not move |

The target's own locals sit 8-12 bytes *lower* in the same `0x70` frame than ours, so its missing
declarations cannot be recovered by adding pads: with IDO's top-down packing any added local grows the
frame and pushes the existing homes up, away from the target.

## Rule

A residual whose *only* difference is which value occupies the last callee-saved register is a
compiler tie-break. Stop after the three levers above are measured; do not iterate on declaration
order, literal suffixes, or pads expecting the band to move. Sibling family:
`whole-function-register-permutation-identical-opcodes.md` (all values permuted, none missing).
