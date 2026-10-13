### Terrain normal lighting: scoped scale and color operand order

`func_800B2CF0_C1CA0` matches with a signed byte normal array and three float color factors. The height samples and RGB inputs/output are unsigned bytes. Five per-level RGB float entries replace byte-offset pointer arithmetic without changing the table bytes.

Keep the normalization scale in a block containing only the three normal assignments. A separate outer interpolation factor is needed for the target floating-point allocation; declaring both floats in the outer scope enlarges the frame. Declare the dot product and interpolation factor before the two slope floats, color factor array, and normal array to obtain slope homes at 0x2C/0x28, RGB factors at 0x1C/0x20/0x24, and normal bytes at 0x18..0x1A in the 0x38 frame.

Index the tint tables directly with `currentLevel - 1`. Naming an intermediate level changes the integer allocation and hoists its address load into the normal calculation. Write interpolation as `factor * (bright - base) + base`; the algebraically equivalent `base + factor * (bright - base)` reverses the table bases and floating-point operands.

The output multiplication must be `colorFactors[i] * (f32)rgb[i]`. Reversing these C operands changes floating-point allocation throughout the unsigned conversion sequences. Retain the `(u32)` conversion before storing each byte: the target includes the complete unsigned conversion sequence.

Verified with the function diff at zero and `tools/make.ps1` reporting `build/bh.us.z64: OK`, including all four matched scrolling callers.

## Radial-light checkpoint in BF9C0

func_800B2354_C1304 improves from 4712 to 2570 but remains NON_MATCHING. Use a byte radius assigned from the unsigned float conversion, increment it directly, and use nested for loops with limits radius + 1. This removes the separate raw-radius and start/end locals. The declaration order in the retained body gives exact tile-X/Y spills at 0x70/0x6C, fraction X at 0x68, and ring-X/Y halfwords at 0x62/0x60. The frame is still 0x98 rather than 0x90, and the private loop-bound save is 0x48 rather than 0x4C.

Interpret the 19x19 buffer as EffectRgb cells using typed grid indexing and r/g/b field accesses. This improves allocation without changing buffer layout; the raw-byte pointer and typed-grid forms otherwise generate the same address arithmetic. Keep the integer truncation before subtracting arg2 from sqrtf. Removing the redundant outer s32 cast from the falloff's float-to-s16 conversion is neutral, as is using compound subtraction for baseX.

Cached raw coordinate locals, raw ring-word intermediates, a named floating extent, signed/byte fraction changes, a short intensity local, native int permutations, reuse of the distance as the RGB accumulator, and an integer return type did not close the residual. Search-AsmPattern finds only the other NON_MATCHING radial-light function for the setup fragments; its C is not a matched donor. The retained candidate still has setup scheduling differences and the distance/intensity/pixel register permutation. Wrapped ROM verification is OK.

## Ground tile renderer checkpoint (not matched)

BF9C0 func_800B9DB8_C8D68 retains score 5536 from baseline 5753. Move
the vertices[2] declaration after map[2], reverse the origin assignments
(X before Y), and consistently swap firstTile array indices and map
array indices. These source-shape changes preserve the logical X/Y use
and restore the target light-command store order. Separate word origins
score 6678 and grow the frame to 0x128; keep word array origins.
Moving the tileSize assignment around the TLUT load/sync or initializing
it in its declaration is neutral. Halfword origins score 5487 but are
not retained because SH/LH replace the target SW/LW. Word map coordinates
score 6579; halfword worldZ scores 5550. Remaining frame is 0x120 versus
target 0x118, map and vertex homes differ, and loop origin spills and
coordinate reload/scheduling need work. The restored wrapped ROM is OK.

The ground renderer now retains 5228. Declare the word origin array in
a new scope after the lighting commands (5260), and move worldZ, tileZ,
bottom, left, top, right, column, palette, tileX and tile into that scope
(5228). Origin homes move from the original high region to 0x98/0x9C;
the target uses 0x6C/0x68. Named scoped origins score 6270. Fully inline
map divisions score 7529: they remain inside loops rather than producing
the target pre-loop stores, despite the frame becoming correct. Plain
if/else edge assignments are neutral; copying map coordinates to right
and top before modulo scores 6313, all four edges 7563. Explicit word
casts in origin division are neutral. Preserve the scoped array version
under NON_MATCHING; wrapped ROM checksum remains OK.

Further ground-loop trials retain 5228. Word tileX scores 7576, byte
tileZ 5324, word tile 5358, and word bottom 6803. A halfword worldZ
with implicit destination narrowing is neutral, as are halfword/byte
tileSize, unsigned palette, and native-int word origins. A named tile
entry pointer for palette load, byte reload and saturating tile update
scores 7911 and grows the frame to 0x128. The target update pattern at
C92D0 has no matched donor from Search-AsmPattern. Restored the scoped
array candidate under NON_MATCHING and verified the full ROM OK.

Ground loop-shape trials also retain 5228. Early row initialization scores
6198. While/do outer loops score 5657, inner loops 6251, both do loops
6680. A word row with explicit byte mask scores 6671. Unsigned origins
and division by named tileSize are neutral. Literal tile size scores
5312; declaring origins first in the loop scope scores 5304; moving map
before row scores 5260. Volatile map scores 8772 and introduces an extra
saved coordinate-address register, so it is not a useful reload remedy.
Restored the best scoped for-loop candidate; wrapped full ROM is OK.

The ground renderer now retains 5210 by placing visibleCount and
culledCount after vertices[2]. Splitting origins into X/Y one-element
arrays is neutral (reverse declaration order 5232); same-line origin
assignments are neutral. Moving row after vertices scores 5338, map
first 5300, vertices first 5392. Current count homes are 0x106/0x104,
vertex homes 0x108/0x10C, map homes 0x110/0x112; target count homes are
0xF4/0xF2, vertices 0xF8/0xFC, map 0x10C/0x10A. Show-StackLayout picks
the caller file 7F220.c and cannot connect to Docker here; use the
compiled assembly's direct stack operands as evidence. Wrapped ROM OK.

Ground renderer improves 5210 to 4538 by expressing each tile-byte access
as ((u8 (*)[64])D_8021EA30)[tileZ][tileX]. This restores the shared tile
address in t2 for the palette read, post-command byte reload, and update.
Multiplying row by 64 is neutral; unsigned row shift scores 5485; named
linear index 8267. With the 2D view, Y-first origins score 4703, scalar
origins 7197, swapped origin indices 4542, word tileX 7558. Retain the
2D view and original word origin array. Edge coordinate casts remain
neutral; masking origins scores 5220 in the earlier 5210 candidate.
Frame and spills still differ; wrapped ROM is OK.

Ground renderer now retains 4458 with target frame 0x118. Reuse the
expired u8 render-mode parameter as row after the vertex builder call
(4460), then swap map array indices consistently (4458). Row byte home
is now the argument at 0x11B rather than target 0x117, so more work remains.
Reusing the parameter for column/tile/tileX scores 4746/6284/5035.
Pointer addition or += vertex advancement and postfix counters are
neutral; shifts in draw-index calculation score 5009. Vec2_S16 map
scores 4467; map after vertices 4512; counts before map 4488.
The candidate remains NON_MATCHING and the restored ROM is OK.

Ground candidate improves 4458 to 4437 by keeping visibleCount += 1
and func_800B604C on the same physical source line. The count addiu
returns to target position; argument normalization still starts with
a1 rather than a2. A named draw-index word scores 4648. Explicit u16
or u16/s16 index narrowing is neutral; signed-word argument casts are
neutral, an unsigned-halfword left argument scores 4808, prefix count
increment is neutral. The C932C argument-normalization pattern has no
matched donor. Preserve the same-line call under NON_MATCHING; ROM OK.

Ground renderer improves 4437 to 3964 by declaring palette u8 and
removing its redundant & 0xF from the TLUT index (the load assignment
already masks to 15). Together these restore palette s1, tileX s2,
and bottom s3. Either alone is worse: byte palette 4754, no second
mask 4757. Halfword palette 4673, halfword without second mask 4753,
separate load/mask 4692. Word left/top/right/all edges score
5490/5287/5715/6514; copying bottom before modulo scores 5448.
The retained byte/single-mask candidate still differs in coordinate
reloads, spills and scheduling; wrapped full ROM remains OK.

Ground candidate now retains 3420. Use existing Vec2_S16 map with x
for mapPosX and z for mapPosY instead of the halfword array. This
scores 3418 with the reused argument row, but shrinks frame to 0x110.
Restore a local u8 row (3444, target frame 0x118) and declare row first
(3420). This also restores coordinate reloads in edge branches. Swapping
the vector fields scores 3420 with parameter row, 3446 with local row.
Map before startVertices scores 3488; delaying counter declarations and
initialization until the loop scope scores 4384 and loses target initial
stores. Preserve the local-row typed-map version; wrapped ROM OK.

Typed-map origin trials retain 3420. Vec3i or scalar origins score 6717;
origins declared first in the loop scope 3492; Y-first assignments 3555.
The generic gDPLoadTLUT with count/tmem 256 is neutral. Expanding the
initial, loop, or both pal256 helpers into their six SDK commands is
also neutral, so outer helper scope does not account for origin spills.
Restored the compact SDK helper version; wrapped ROM remains OK.

Typed-map candidate improves 3420 to 3165 with u8 tileZ; the assignment
already masks to 255, and a redundant word spill disappears while frame
stays 0x118. Halfword worldZ is neutral, word palette scores 4519, bottom
in outer scope 3388. Individual right/bottom coordinate copies are neutral
in this candidate, swapped map fields 3167. Scoped volatile right read
scores 3973, right/bottom reads 3215, halfword tileSize 3233. Casting
origin coordinates to u8 scores 2843 but is not retained because it
removes the target signed-division checks. Preserve signed origins with
byte tileZ under NON_MATCHING; wrapped full ROM verifies OK.

Ground candidate improves 3165 to 3115 with firstTile[1] ^= 0 after
its X-origin division. This emits no additional instruction but changes
allocation. Y-origin XOR is neutral alone; both XORs also score 3115,
so retain X only. Explicit s16 origin casts and putting worldZ assignment
on the same line as inner for are neutral. A named word draw index
scores 3346; word tileX with XOR scores 6352. Signed division checks
remain intact; candidate stays NON_MATCHING and wrapped ROM is OK.

Ground origin/scope trials retain 3115. Moving origins to outer scope
scores 3415, column first in the loop scope 3305, map after counts 3267.
Split one-element origin arrays are neutral. An if(1) around loop locals
or lighting, or a plain scope around render setup, is neutral. Explicit
byte-masked row increment scores 3970. Keep ordinary u8 row++ and the
existing scopes; restored wrapped ROM is OK.

## Terrain color renderer checkpoint (not matched)

func_800B345C_C240C improves 7341 to 5653 by chaining its level-4 zero
colors as spA0[0] = spA0[1] = spA0[2] = 0. This reproduces ANDI s7,zero,
255 and ANDI s6,zero,255 before the byte stores, and also restores RGB
saved-register allocation across the earlier helper calls. Reverse
chain scores 6629, G/R/B chain 5675; byte final index 7480; removing
unused mode is neutral. Array declarations first/reverse/both score
6409/5987/6085; word X coordinate 6257. Caching the flash timer in the
existing word i is neutral. Zero-color target pattern has no matching
donor. Current frame 0xC0 versus target 0xB8; flash timer allocation,
neighbor/output array homes and later instruction scheduling remain.
Retained chained assignment under NON_MATCHING; full wrapped ROM OK.

Terrain color candidate improves 5653 to 5608 with signed-word row
offset (5613) and halfword baseY (5608). Byte final-loop i scores 5754,
scoping i to its final-loop block 5719, word mapIndex with narrowing
only before neighbor offsets 6319. Do not narrow the entire neighbor
index after +/-1 or +/-256: that changes boundary wrap behavior; the
original narrows the center before adding a signed offset. Removing
unused mode is neutral. Preserve valid neighbor indexing and the signed
row/halfword-base candidate under NON_MATCHING; wrapped ROM is OK.
