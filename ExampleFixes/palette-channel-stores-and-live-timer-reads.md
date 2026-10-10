# Palette channel stores and live timer reads

Matched `func_800BE5C0_CD570` in `BF9C0.c`.

When the target stores a packed color between interpolation calls, assign the red component first, then use `+=` for green and blue. A single combined expression delays the store and removes the intervening halfword loads. The same compound assignments on `u16` locals reproduce truncation after each component.

Read the global timer directly for each interpolation call. Caching it across calls removes reloads present in the target.

Declare the three `u8` RGB outputs before the `s16` loop index to reproduce their stack locations. Pass the index directly to the palette lookup: its `u8` parameter already supplies the mask; an explicit `i & 0xFF` adds extra moves.

The palette is a `u16[256]` array. Correcting its declaration permits indexed access without byte pointer arithmetic. Explicit `(s32)` casts on the byte color values and lighting values were redundant and were removed; the full ROM still matched.

Validation: `tools/make.ps1` reported `build/bh.us.z64: OK`; the function diff reported `CURRENT (0)`.

### Siberia palette initialization

func_802D4F1C_2B734C uses chained assignments such as D_800313E8 = D_80047743 = 0x2F to retain the destination byte address in a register. Separate assignments with equal constants instead keep the constant in that register and omit the address calculation. The palette loop requires three updates: assign the red shift, add the green shift, then add (blue - 12) << 1. Repeating the whole sum removes intermediate stores; multiplying the final difference by two distributes the subtraction and changes scheduling. A for loop, rather than an explicitly initialized do loop, places the zero initialization after the palette base addresses.
