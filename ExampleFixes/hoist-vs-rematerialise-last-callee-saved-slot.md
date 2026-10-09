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
`register-band-and-temp-bank-rotation.md` (all values permuted, none missing).

## Same family: a loop-carried hoist of a global address (func_8007343C_15B4FC)

`func_8007343C_15B4FC` (`src.us/overlay_gameplay/inside/158330.c`, 76 instructions, SEAM2, 2026-10-09).
After the logic was made instruction-for-instruction faithful (`ins_diff -noregs` delta +0, the loop
copy and every struct field offset aligned), the whole residual was ONE hoist:

- the target materialises `&D_80047B70` a second time *after* the loop (`lui v1` / `addiu v1`, then
  `lw 0x1C4(v1)`), reusing the register the exhausted destination pointer had occupied;
- ours kept that address live across the loop in a fresh temp (`lui t1` / `addiu t1` before the loop,
  then `move a0,t1`) and read the post-loop fields through it. Cost: delta -1.

**Cause: a shared constant expression.** The loop pointer was initialised with `&D_80047B70` and the
post-loop statements read `D_80047B70.unk1C4` and friends. Both reduce to the same `lui`+`addiu`
constant, so cfe CSE'd it into one register live across the loop instead of rematerialising at each use.

**Lever (measured): give the two uses different source expressions.** Replacing the loop-pointer init
with one derived from a *related* symbol - `src = (Unk158330SrcState *) ((u8 *) srcEnd - 0x1C0);`
where `srcEnd` is `&D_80047D30`, the loop bound - removed the shared literal and let cfe rematerialise:
**875 -> 265**, and the instruction count became exactly the target's 76 (delta +0). The same edit with
the loop pointer still spelled `&D_80047B70` measured 875 (unchanged), and expressing the post-loop
reads through `&D_80047D30 + n` measured 1200 - so the win is specifically removing the duplicate
constant, not the arithmetic. (Never `open(F,"w")` before the new text is computed - a compute that
raises truncates the source.)

**Also measured: the ORDER of the three pointer-init statements sets their registers.** With `srcEnd`
assigned first, then `dst`, then `src`, the map became exactly the target's (`src`->a0, `dst`->v1,
`srcEnd`->v0). All six permutations: `srcEnd,dst,src` = **875** (best), `dst,srcEnd,src` = 1035,
`src,dst,srcEnd` = 1050, `srcEnd,src,dst` = 1175, `dst,src,srcEnd` = 1190, `src,srcEnd,dst` = 1195.

**Wrong struct offsets cost most of the opening score.** The wrapped body's `Unk158330DstState` had its
four byte fields at placeholder offsets (0xD0/0x102/0x132 for three of them, struct size 0x134) while
the target stores them at 0x40/0x70/0xA0/0x10 in a 0xC0 record; `Unk158330SrcState` had `pad1C[0x04]`
where the target does `lbu 0x1C`. Correcting both types to the offsets the asm proves (both types are
used by this one function only) plus the four destination names took the measured score 1240 -> 1190;
the init-order and constant-sharing levers then took it to 265. Committed as
`imp func_8007343C_15B4FC: 1240 -> 265` (body re-wrapped at `CURRENT(265)`).

**Remaining residual (parked, no further lever found):** 265, delta +0, every differing row a
temp-bank name - the six float copy temps land in `{f0,f2,f12,f14,f16,f18}` where the target uses
`{f4,f6,f8,f10,f16,f18}`, and the four byte temps in `{a1,a2,a3,t0}` where the target uses
`{t7,t8,t9,t6}`. Reversing the `tempF*` declaration order (265) and adding two unused `f32` locals
(265) were both neutral, `f64` temps cost 3670, and a pad local was neutral - the FP bank is not
reachable from the declaration set alone.
