## incorrect ASM

In `func_800878A4_57D54`, redundant full-node pointers and the original vector declaration order produced a `0x1F8` frame and incorrect vector homes.

```asm
addiu sp,sp,-0x1f8
/* position used sp+0x1c4 instead of sp+0x1b8 */
```

## code changed

Use indexed `D_800DE840` accesses instead of three additional node-pointer locals. Keep the typed payload pointers. Declare the required padding, parent index, scale union, secondary rotation, rotation, position, and child index in this order. Remove the unused distance floats after inlining the squared differences.

```c
s32 padScale[3];
s32 parentIndex;
union { s16 array[3]; Unk80052B40 value; } scale;
Unk80052B40 zeroVec;
Unk80052B40 rot;
Unk80052B40 pos;
s32 childIndex;
```

## correct ASM

```asm
addiu sp,sp,-0x1e8
/* ... */
addiu a0,sp,0x1b8
addiu a1,sp,0x1c0
addiu a2,sp,0x1d0
/* the second transform uses sp+0x1c8 */
```

Position, rotation, secondary rotation, and scale now use the target homes. The final stock US ROM checksum verifies the match.
