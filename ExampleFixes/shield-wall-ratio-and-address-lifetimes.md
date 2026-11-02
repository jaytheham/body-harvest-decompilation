`incorrect ASM`: In `func_800B1028_BFFD8`, sharing the outer-wall and sub-wall ratio local made the main clip multiply its Y delta in f2, and the main bounds address occupied a0 instead of t4.

-> `code changed`: Keep an outerScale local separate from the loop scale. Retain discarded zero-product checks at the outer X ratio assignment, after the outer Z Y-delta update, and at the end of each outer Z branch. Retain a discarded `(u32)&D_8014FD30 * 0` check immediately after initializing the return flag.

-> `correct ASM`: The complete instruction sequence and stack layout match structurally, the main Y product uses f0, and the main bounds address uses t4. Only six instruction words remain different: four temporary GPR names on two final Z-bound loads/stores and two original-quotient versus saved-alias floating-point operands. This is a partial checkpoint; the NON_MATCHING wrapper remains.
