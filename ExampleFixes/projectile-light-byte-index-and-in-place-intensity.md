`incorrect ASM` — In `func_80124D60_133D10`, narrowing the masked value directly in the array subscript gave the palette index to `t8` in all three instructions.

```asm
andi t8,t0,7
sll  t5,t8,2
subu t5,t5,t8
```

-> `code changed` — Save the low three bits in a `u8 paletteIndex` local before clearing them from `lightFlags`. Narrow the remaining flags to `u8` when multiplying each color component. The three bits select the palette entry and the remaining five bits encode its intensity.

```c
paletteIndex = lightFlags & 7;
lightFlags &= ~7;
lightColor = &D_80140B7C_14FB2C[paletteIndex];
color[0] = (lightColor->r * (u8)lightFlags) >> 9;
```

-> `correct ASM` — The two assignments give IDO separate temporaries for the palette index and the in-place intensity update. AS1 folds the byte conversions and moves, leaving the required index register and the original stride register. The function diff scores zero and the normal US and EU ROM checksums pass.

```asm
andi t9,t0,7
sll  t5,t9,2
subu t5,t5,t9
```
