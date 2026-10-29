# Inside effect list removal: direct access and constant-first comparisons

Incorrect ASM:
```asm
addiu sp,sp,-0x40
sw v1,0x18(sp)
bnel a0,t1,...
```

Code changed in `func_800835F0_16B6B0`: replace cached parent, count, neighbor and link locals with direct struct/array accesses. Replace named head/tail sentinel locals with signed constants on the left of comparisons: `if ((-4) == D_800FB7B0[arg0].unk6)` and `if ((-5) == D_800FB7B0[arg0].unk4)`. Store the same signed literals directly in the links.

Correct ASM:
```asm
addiu sp,sp,-0x28
sw v1,0x1c(sp)
bnel t1,a0,...
```
