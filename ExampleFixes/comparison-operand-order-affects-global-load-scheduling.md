### Comparison operand order affects global load scheduling

When a comparison involves a struct-field access on one side and a global expression on the other, the **order of operands** in the comparison operator determines which subexpression is evaluated first — and therefore how the compiler schedules the global load relative to the struct pointer computation.

**Example:** `func_802DACA0_2BD0D0` compared `alien->unk2` against `(D_80222A70 - 0x28)`.

```c
// WRONG — loads D_80222A70 too early (lui v0 hoisted before addiu t8)
if ((D_80222A70 - 0x28) < alienInstances[arg0].unk2) { ... }

// CORRECT — loads D_80222A70 interleaved with pointer computation
if (alienInstances[arg0].unk2 > (D_80222A70 - 0x28)) { ... }
```

**Why this works:** With `<`, IDO evaluates the left operand first (`D_80222A70 - 0x28`), hoisting the `lui`/`lw` of the global before the struct pointer arithmetic. With `>` (operands reversed), IDO evaluates the left operand first (`alienInstances[arg0].unk2`), computing the struct pointer first and deferring the global load — which matches the original ROM's scheduling.

**Register allocation bonus:** Getting the scheduling right also helped fix register allocation. When the global load was hoisted, the compiler used different temporary registers (`v1`/`a1` instead of `v0`/`v1`).

### Counter-instance: operand order is neutral when the same expression also feeds the return value

`func_80080FD8_169098` (`overlay_gameplay/inside/167C90.c`, 129 instr) reaches the same comparison from
the other side: its condition term `(s16) (0x4000 - D_800E6A86) == D_800E73E0` puts the global expression
on the left (the WRONG form above), yet the target ROM does hoist the `lh D_800E6A86` + `subu $v0`
to the very top of the function, ahead of the frame setup, while our body evaluates it inline inside the
`&&` chain near the end.

Swapping the operands (`D_800E73E0 == (s16) (0x4000 - D_800E6A86)`) measured neutral at 5524, so the
lever does not transfer here. The reason: the identical expression also appears in the function tail,
`return (s16) (0x4000 - D_800E6A86);`, so IDO CSEs the load and the target recomputes it at the tail
anyway - the head placement is pure scheduling, not operand order, and the two occurrences cannot be
ordered independently from the source.

Measured: control 5524; operand swap 5524; `sp24` cast dropped 5524; `sp24 = (s16) ...` 5524; the yaw
comparison moved first in the `&&` chain 6804; a named `s16 yaw = (s16) (0x4000 - D_800E6A86);` local
used in both places 4507. The body is otherwise structurally faithful (`ins_diff -noregs` 129 vs 128,
delta -1); the 5524 is a misalignment plateau (four variants sat at exactly 5524), so judge this function
by `ins_diff`, not the score. Do not re-tread operand order or declaration order here.
