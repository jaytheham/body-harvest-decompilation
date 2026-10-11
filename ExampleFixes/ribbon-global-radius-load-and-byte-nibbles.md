# Ribbon renderer: global field reads, byte nibbles, and vector stack layout

`func_800CF2E0_DE290` recovers its target radius-load sequence with direct array references for these two statements:

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

## Current file setup (2026-10-11)

The guarded current body scores 280 against actual next CF80C. All instructions, registers, stack offsets, and frame 0x110 agree except the six constant-loading instructions at DE344..DE358: the named scale constant loads before 3.0/4.0, rather than afterward. The existing D_80144008_152FB8 definition was kept intact; no literal substitution, rodata change, header change, or new file was attempted.

Ten scale-cache placements/forms score 346/480/475/480/3248/3248/1654/1654/1353/346. These move the assignment into the function, loop, radius/vector calculations, or replace the cache with repeated array reads or a declaration initializer. Twelve further probes score 280/280/280/280/280/280/461/280/461/280/280/280. Dead 3.0/4.0 initializations do not affect hoisting. Replacing the two unused words with a named double 3.0 increases differences; a named float 4.0 is neutral. Explicit double casts and array dereference spelling are neutral. Restore the original guarded constant-cache body. Search DE344 count 6 finds only unmatched donors; adjacent matched CF174/CF80C source was inspected.
