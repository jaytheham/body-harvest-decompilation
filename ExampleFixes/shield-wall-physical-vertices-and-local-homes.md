`incorrect ASM`

In `func_800BB5E0_CA590`, the vertex packet stores a virtual pointer directly, omitting the target physical-address addition. The wall origins use homes `0x126/0x124` instead of `0x12A/0x128`; the light vectors and color also sit four bytes too low. Origin loads occur inside the vertex stores rather than being cached ahead of them.

-> `code changed`

Use `gSPVertex(D_8005BB2C++, OS_K0_TO_PHYSICAL(D_8005BB34), 8, 0)`. Keep the existing double texture scale, but place the expired `colorEnd` halfword and `p1Index` byte before it to fill its alignment gap. Declare segment-start coordinates, wall origins, and segment-end coordinates in that order. Put `scrollT`, then `scrollS`, after those coordinates and before the light vectors. Use the existing `EffectRgb` structure and pass `&color` to the typed lighting helper. Declare the runtime link table as `ShieldWallLink[][64]` and use its endpoint fields directly; the previously matched table users remain byte-identical. Before the vertex stores, two copies of `if (baseX) {} if (baseZ) {}` on one physical line raise the two origin reloads into local register caches. Repeat one origin pair after vertex 2. Two empty `segEndX` reads before preparing the light vectors restore the target segment-end and constant-color register priorities. Empty `minY` and `texEndT` reads immediately before the vertex packet defer the graphics-pointer cache and improve endpoint scheduling. Let the double multiply and addition perform the integer-to-double conversions without redundant casts.

When testing the C body, inline the double `0.4` and let the compiler emit its literal. Move the existing late-rodata helper from the water fallback to the shield-wall fallback: the intervening integer rectangle helper emits no float pool, and the normal fallback ROM checksum remains exact.

-> `correct ASM`

The vertex address now uses the target physical conversion pattern:

```asm
lui at,0x8000
addu physical,vertex,at
sw physical,4(packet)
```

The `0x160` frame and addressed homes match: start/end coordinates at `0x142/0x140/0x13E/0x13C`, wall origins at `0x12A/0x128`, scroll values at `0x11C/0x120`, light vectors at `0x118/0x114`, and RGB at `0x110`. The origin reloads precede the first vertex store and remove two repeated loads. Enabled diff improves from 9192 to 3835; structural rows fall from 69 to 33 after the physical conversion and local-layout corrections. The function remains `NON_MATCHING`: 841 instructions versus target 838, with remaining instruction-order and register differences. The three extra instructions are one origin reload and repeated loads of the blue and upper-height constants.

`incorrect ASM`

The starting texture conversions write `a2` and `a3`. The ending S conversion writes `a1`, and the ending alpha leaves `v0` too late.

```asm
mfc1 a2,$f6
mfc1 a3,$f10
move a0,v0
mfc1 a1,$f6
mfc1 v1,$f8
```

-> `code changed`

Compute the integer ending T delta before the first vertex. Reuse its local for the scaled texture coordinate at vertex 2. After the last vertex, include the two starting coordinates, ending T, and ending alpha in one discarded condition before the existing `minY` and `texEndT` conditions.

```c
texEndT = baseZ - segEndZ;
/* Set the starting vertices and begin vertex 2. */
D_8005BB34[2].v.tc[1] = texEndT = (s16)(texEndT * texScale + scrollT);
/* Finish setting the vertices. */
if (alphaEnd | texStartS | texStartT | texEndT) {}
```

-> `correct ASM`

The starting conversions use `a0` and `a1`. The ending conversions use `a2` and `v1`, and the alpha move occurs before the second blue constant load, as in the ROM.

```asm
mfc1 a0,$f6
move a3,v0
li   v0,0x96
mfc1 a1,$f10
mfc1 a2,$f6
mfc1 v1,$f8
```

The conversion and store schedules still differ, including the position of the ending T integer delta and the reloads of the origin and vertex constants.
