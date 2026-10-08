# Hoisting a global load to the first statement fills the `lw` delay slot; array re-expression shifts a pointer's live range

Two source-shape levers found on `func_800881C0_170280` (`overlay_gameplay/inside/16AF30.c`, 293 instr,
port *Crashes*), measured with `bh.sh check` (asm-differ). Both are `delta +0` (`ins_diff` 293 = 293)
and both move the score by large amounts because the function's instruction stream, once re-ordered,
misaligns the whole tail.

## 1. Re-express a field read through its array expression (987 -> 452)

A field read through a named pointer local (`s1->unkC`) and the same read written through the array
expression (`(&D_800FB7B0[var_t2])->unkC`) compile to the same opcodes but give the pointer's live
range a different endpoint, which shifts the caller-saved allocation. On this function:

| expression | score |
|---|---|
| `sp9C.x`/`.y`/`.z` all via `s1->unkN` | 987 |
| `sp9C.x` via `(&D_800FB7B0[var_t2])->unk8` only | 792 |
| `sp9C.y` via `(&D_800FB7B0[var_t2])->unkA` only | 792 |
| **both x and y re-expressed** (z was already) | **452** |

The two single-component edits are each worth ~195 and are **additive** - the same construct applied
to a second component. This is the same family as the permuter's empty-`if`/self-assignment
live-range constructs, but here it is the *operand spelling* that moves it, which a plain
`pattern_probe` run does not try. When a permuter output is an operand re-expression, apply it to
**every** component that uses the same pointer, not just the one the output showed.

## 2. Hoist a global load to the first statement (452 -> 40)

The target loads `D_800FB79A` at instruction 5, i.e. **in the delay slot of the preceding `lw`**,
before the callee-saved register saves:

    lw   v0,0(s0)              # D_8005BB2C
    lui  t2,%hi(D_800FB79A)    <-- the load, hoisted
    lh   t2,%lo(D_800FB79A)(t2)
    sw   s4,0x30(sp)
    addiu t6,v0,8
    sw   ra,0x44(sp)           # ... saves follow

In the previous body the same `s16 var_t2 = D_800FB79A;` read sat *after* the four GBI setup
statements, so IDO scheduled it at instruction 32 and the whole register-map/ordering fell one slot
out. Moving the assignment to the **first statement of the function body** (above `gDPPipeSync`)
reproduces the target's schedule: **452 -> 40**. An initialiser at the declaration
(`s16 var_t2 = D_800FB79A;`) measures the **same 40**.

Lever to reach for: when the target reads a global very early and ours reads it late, and the target's
read sits in a load-delay slot, the *statement position* of the read is the lever - not the
declaration order, not a cast. Moving only the read (leaving the GBI statements in place) is what
works; moving the GBI statements after it measured **4981**.

## Residual and what is refuted

40 is `delta +0` with the table reading identically in both columns (the documented
content-invisible-table case); `allblocks` shows only encoding-equivalent rows (`addiu sp,sp,-N` vs
`+N`, `addiu r,r,-N` vs `li r,N`, an `lh`/`lui` pair re-ordered around the prologue) plus one extra
`move`. Measured refuted on the 40 body: drop `spAC = s1;` **445**; drop the first or the second
`s1 = &D_800FB7B0[var_t2];` re-establish **270**; write the `D_800FB6D0` triplet through the array
form **1845**. Do not re-tread those, or the declaration order.

Note also: `ins_diff`'s difflib alignment reported three `lh` vs `lb` rows (`REPLACE target[184]`
etc.) here; the disassembly shows our reads **are** `lh` (`lh t6,8(s1)`), so those rows were an
alignment artifact of the shifted stream - verify an apparent width difference against `objdump`
before chasing it (`ExampleFixes/struct-field-u8-vs-s16-same-offset-register-shift.md` is the real
pattern, and it is not this).
