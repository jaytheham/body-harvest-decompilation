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

`incorrect ASM`

The first texture packet stores its scale word before its opcode. The ROM writes the opcode at offset 0 before the scale at offset 4.

-> `code changed`

Assign `gfx->words.w1 = 0x80008000` before the opcode assignment for the first texture packet. Keep the order of the second packet, whose scale word is stored first in the ROM.

-> `correct ASM`

The first packet now emits `sw ra,0(v0)` followed by `sw t5,4(v0)`. Both store offsets and their order agree with the target. The ROM uses `s1` and `s2` for these words.

`incorrect ASM`

Narrowing both ending texture coordinates before assigning their word locals puts the end-S vertex-pointer load after the delta conversion and uses `sh a2,0x28(t9)`.

-> `code changed`

Keep the ending S and T results as signed words and let the vertex stores narrow them. Remove the separate discarded tests of `minY` and `texEndT`. Keep the combined test of the texture values and alpha.

-> `correct ASM`

The end-S vertex-pointer load moves ahead of the delta conversion and its store uses `sh a2,0x28(t6)`. Removing the two discarded tests leaves the emitted bytes identical. The frame remains `0x160` and the C body has 839 instruction words against the ROM's 838. The store-order corrections are retained with the assembly fallback.
