### Incorrect ASM

In `func_80082CBC_5316C`, a named midpoint local used the correct
`sp+0x88` home but also left an unused optimizer home for its division.
The transition otherwise matched, with these six stack operands differing:

```asm
sw      t2,0x70(sp)     # lower clamp threshold
sw      t3,0x6c(sp)     # distance scaled by four
lw      t8,0x6c(sp)
lw      t6,0x70(sp)     # three control-flow paths
lw      t6,0x70(sp)
lw      t6,0x70(sp)
```

### Code changed

Delete the named midpoint local and its initial store. Reduce the final unused
padding array from four words to three, and repeat the average expression in
the two selection branches:

```c
if (varS4 < tempS6) {
    varV0_2 = sp100;
    varS1 = (spFC + sp100 + 1) / 2;
} else {
    varV0_2 = (spFC + sp100 + 1) / 2;
    varS1 = spFC;
}
```

Initialize the end bound after the complete center calculation, keeping these
statements and the loop header on one physical source line:

```c
tempS6 = tempS6 * 10 + 0x10; sp80 = ((spFC - sp100) * 0xA) + 0xA; do {
```

The repeated average becomes a real division spill at source displacement 184
(`sp+0x88`) rather than occupying both a named-local home and a reserved
expression home. The unchanged switches still share their CFE temporary.
Ordering the center calculation before the end bound places that bound at
source displacement 192 (`sp+0x80`). No volatile midpoint or empty center guard
is needed. Preserve the existing footer line directives: removing them swaps
the independent upper-threshold calculation and frame-counter increment.

### Correct ASM

```asm
sw      t9,0x80(sp)     # end bound
sw      t2,0x74(sp)     # lower clamp threshold
sw      t5,0x88(sp)     # compiler-generated division spill
...
sw      t3,0x70(sp)
...
lw      t8,0x70(sp)
...
lw      t6,0x74(sp)     # all three paths
```

All 597 instructions match, and `tools/make.ps1` verifies the full US ROM.
