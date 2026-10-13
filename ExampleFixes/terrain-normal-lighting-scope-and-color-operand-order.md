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
