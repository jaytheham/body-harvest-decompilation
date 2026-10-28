# Comet effect frame padding

## Incorrect ASM

`func_802DBDD0_31FF20` had matching instructions but a smaller frame and the wrong cached instance pointer slot:

```asm
addiu sp,sp,-0x30
sw v0,0x20(sp)
lw v0,0x20(sp)
```

## Code changed

Added three unused `s32` padding declarations after the existing two padding words, before the two `s16` locals. IDO retains the local frame reservation and places its generated pointer spill after it.

## Correct ASM

```asm
addiu sp,sp,-0x40
sw v0,0x24(sp)
lw v0,0x24(sp)
```
