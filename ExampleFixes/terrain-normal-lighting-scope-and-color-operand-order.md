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
