# Ribbon renderer: global field reads, byte nibbles, and vector stack layout

`func_800CF2E0_DE290` matches with direct array references for these two statements:

```c
D_80153BC8 = (f32)D_80154318[index].unk2;
extent = (f32)(D_80154318[index].unk2 * 3.0);
```

Reading through the local entry pointer made IDO reload the radius after the global float store. An explicit integer cache removed the reload but allocated A0 instead of target V1. Direct pool accesses exposed the distinct global objects to alias analysis, allowing one LH in V1 with the target paired float/double conversions.

For packed texture selectors, keep byte variables and reuse each packed byte for its low nibble. Extract high nibbles through byte assignment without explicit `& 0xFF`, in this order:

```c
firstHigh = firstTexture >> 4;
firstTexture &= 15;
lastHigh = lastTexture >> 4;
lastTexture &= 15;
```

The u8 assignments generate the target FF masks and register-copy instructions. Explicit masks changed expression classes and let IDO omit a required copy; separate low-nibble variables kept the packed bytes live across calls and recomputed selectors. The source assignment order also controls T4/T6 and the S2/S3 copy order.

Convert the signed coordinate to f32 before adding it to double-precision half-vector calculations. The target uses CVT.S.W then CVT.D.S; direct integer addition uses CVT.D.W.

The double factor is the literal `0.33333`; remove its old rodata placeholder so the generated constant occupies the same position. The list-index declaration belongs between the first two and remaining vector declarations. Two unused s32 slots after the final vector preserve the 0x110 frame and all vector offsets; the non-last padding behavior is documented in DecompHints.md.
