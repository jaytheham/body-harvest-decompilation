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
