# Handwritten-assembly functions cannot be matched from C (IDO never emits the trap-variant ops)

## Symptom

A `bh.sh check` gives a large, structurally-different score with an **instruction-count delta** and the
target's first block contains `add`/`addi`/`sub` where ours has `addu`/`addiu`/`subu`. The target's
`.s` file even starts with a `/* Handwritten function */` marker.

Observed on `func_8001A460_1B060` (`core/1B060.c`, LZSS decompressor): unwrapped it measures **8285**,
`ins_diff -noregs` reports target **40** vs ours **58** (delta **+18**), and the diverging opcodes are the
**trap-on-overflow** forms:

```
target:  add  $a3,$a3,$a0   add  $t9,$t9,$a0   addi $a0,$a0,0x14   add  $t8,$t8,$a1
ours:    addu ...           addu ...           addiu ...            addu ...
```

The function's own source comment already said so: *"the original was hand-written assembly using addi,
add, and sub instructions (trap-on-overflow variants) that IDO 5.3 never generates"*.

## Rule

An `add`/`addi`/`sub` (trap-variant) sequence in the **target** cannot be produced by IDO 5.3 from any C
source — IDO 5.3 emits only the non-trapping `addu`/`addiu`/`subu` for `+`/`-`. When the target's count and
opcode stream differ from the start in exactly this way, it is **not** a C-shape or regalloc question; the
original function was hand-written assembly and this item is **unmatchable from C**. Park it immediately
with the `ins_diff -noregs` delta and the annotated `.s` as the evidence, and do not spend the 50-attempt
budget.

## How to confirm cheaply

```bash
head -3 asm/nonmatchings/<module>/<file>/<func>.s           # look for "/* Handwritten function */"
grep -nE '\b(add|addi|sub|subi)\b ' <func>.s | head          # trap variants the C cannot emit
ins_diff.py <func> <module/file> -noregs                     # a large +delta that starts at instruction 0
```

If all three line up, park. (The tree contained exactly one such annotated function at the 2026-10-07
checkout — it is rare, but it is a dead end, not a target.)
