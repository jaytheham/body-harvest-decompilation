# Tile-buffer palette byte and geometry write order

`func_800B9DB8_C8D68` remains `NON_MATCHING`; this is a partial improvement.

## Incorrect ASM

```asm
andi    s3,t8,0xf
/* Palette lives in s3; the bottom edge lives in s2. */
lui     t7,0x2
lui     t8,0xb600
sw      t8,0(v0)
sw      t7,4(v0)
```

## Code changed

```c
palette = ((u8 (*)[64])D_8021EA30)[tileZ][tileX];
palette &= 0xF;
/* ... */
gfx = D_8005BB2C++;
gfx->words.w0 = G_CLEARGEOMETRYMODE << 24;
gfx->words.w1 = G_LIGHTING;
```

Splitting the byte read from its mask changes the promoted palette cache: the palette uses `s1`, the tile X cache uses `s2`, and the bottom edge uses `s3`. Writing the opcode before the payload changes temporary allocation and lets IDO schedule the two stores in the required order. The standard geometry macro introduces a block-scoped pointer with a different stack footprint here; the explicit existing pointer preserves the target frame and local homes.

## Correct ASM

```asm
andi    s1,t8,0xf
/* The bottom edge now lives in s3. */
lui     t7,0xb600
lui     t8,0x2
sw      t8,4(v0)
sw      t7,0(v0)
```
