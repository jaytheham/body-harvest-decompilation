`incorrect ASM`

In `func_800E5E3C_F4DEC`, using `arg1` directly gave otherwise identical instructions, but saved and reloaded its normalized value at `sp+0x44` instead of `sp+0x4c`. A scalar copy still became a compiler temporary.

`code changed`

```c
s16 i;
s16 j;
s16 newCount;
s16 count;
s32 id[1];
s32 type;

osSyncPrintf(&D_80143F7C_152F2C, id[0] = arg1);
/* Compare id[0] against the shield entry's ID inside the search loop. */
```

Replace the word-sized `newCount` with a halfword and retain the ID in a one-element word array. Assign the array element inside the printf argument: assigning it separately changes the initial register choice and store scheduling. No padding declarations are required.

`correct ASM`

```asm
addiu sp,sp,-0x58
/* ... */
andi  a2,a1,0xff
/* ... */
move  a1,a2
jal   osSyncPrintf
sw    a2,0x4c(sp)
/* ... */
lw    t7,0x4c(sp)
```

The type spill remains at `sp+0x40`. The complete function diff is zero and the US ROM checksum passes.
