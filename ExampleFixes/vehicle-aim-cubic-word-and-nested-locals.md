## Incorrect ASM

In the partial `func_800FB504_10A4B4`, the first cubic stick calculation ended with `mflo t9; sra t2,t9,8`. With the saved-register lifetime reproduced, the frame was `addiu sp,sp,-0xA0` and the cosine spill used `sh v0,0x38(sp)`.

## Code changed

Use `diff = diff * diff * diff; pitchClamp -= diff >> 8;` to give the product a word destination. Replace the nested `hasPitch` word with the existing `selectedInput` word, and reuse `cosVal` for the nested `angleDiff` halfword; these lifetimes do not overlap. Keep the heading differences in the existing `diff` word before the X and Z trig expressions.

## Correct ASM

The cubic product stays in its named value register, followed by a separate shifted temporary, matching the target instruction shape. Removing the two nested homes restores `addiu sp,sp,-0x98` and `sh v0,0x3A(sp)`. The heading calls regain `subu a0,...; andi tN,a0,0xFFFF; jal coss/sins; move a0,tN`. These sections match in the preserved partial; the whole function remains NON_MATCHING.
