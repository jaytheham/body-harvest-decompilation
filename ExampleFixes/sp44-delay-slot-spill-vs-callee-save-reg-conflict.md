### sp44 delay-slot spill vs callee-save register conflict

**Context:** A function ends with two references to the same struct field (`var_s0->unk10`)
across a `jal` function call that clobbers caller-save registers. The target assembly uses a
delay-slot save pattern to preserve the value, while an intermediate variable is kept in a
callee-save register.

**Target pattern:**
```
andi    s1, a3, 0x1          # temp_s1 = arg0 & 1   (in callee-save s1)
...
lw      t0, 0x10(s0)         # t0 = var_s0->unk10
...
sw      t0, 0x10(sp)         # pass as 5th arg to osPiStartDma
jal     osPiStartDma
sw      t0, 0x44(sp)         # DELAY SLOT: save t0 to sp+0x44
...
lw      a0, 0x44(sp)         # reload from sp44 for final osVirtualToPhysical
jal     osVirtualToPhysical
addu    v0, v0, s1           # return + temp_s1 (from s1)
```

**The conflict:** Two variables need to survive function calls after `s1` becomes available:
1. `temp_s1 = arg0 & 1` — computed FIRST, shorter declaration, lives across 3 calls
2. `sp44 = var_s0->unk10` — computed SECOND, lives across 2 calls

Both compete for the only free callee-save register (s0 is occupied by var_s0). When `void *sp44`
is **declared** as a local variable (especially 1st), IDO pre-allocates s1 to sp44 based on
declaration order, causing temp_s1 to spill.

**Key insight — declaration causes pre-allocation conflict:**
- With `void *sp44` declared: IDO pre-allocates s1 to sp44 (even if sp44 is assigned AFTER temp_s1
  in code). temp_s1 is forced to v0 and spills to stack.
- Without `void *sp44` declared: IDO allocates s1 to temp_s1 (computed first in code), and
  re-reads `var_s0->unk10` directly from the struct after the function call (relies on s0 callee-
  save being valid).

**Stack layout:**
The target has 6 declared local vars, where the FIRST declared = HIGHEST slot (sp+0x44 for sp44),
and the LAST declared (var_a2) = LOWEST slot (sp+0x30). 4 holes at sp+0x34-0x40 are from declared
vars in callee-save registers (s0, s1) or temp registers.

**Why the pattern is hard to reproduce:**
IDO appears to perform declaration-order-based pre-allocation of callee-save registers. To get
`sp44` in t0 (delay-slot pattern) AND `temp_s1` in s1, the original source likely had `sp44` as
a 1st-declared local (giving it slot sp+0x44) but somehow the register allocator still preferred
temp_s1 for s1. This might be because the original used a specific variable ordering that
triggered code-order vs declaration-order nuances in IDO's register allocator.

**Status:** The function logic is correctly decompiled. The stack layout difference (frame 0x38
vs target 0x48, sp44 re-read vs delay-slot-saved) remains unresolved. The function scores 1042
on the diff. To achieve a full match, the declaration ordering of sp44/temp_s1 and the triggering
of IDO's delay-slot spill optimization needs further investigation.
