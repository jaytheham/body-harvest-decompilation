`incorrect ASM`: In `func_800B5090_C4040`, the repeated material-2 wave phase used `MFLO A1; MOVE S0,A1` instead of placing the shared product directly in S0.

-> `code changed`: Before selecting the material amplitude, reuse the existing `cellH` word for `((scrollX >> 8) + ringCol) * 0x58AC`, then use that value in both the cosine and sine angle sums. Its earlier terrain-height value is dead after edge clipping. Computing the product after the amplitude selection preserves the unwanted copy; adding a new local grows the frame.

-> `correct ASM`: The product uses `MFLO S0` directly. The D8 frame is preserved and the function has one extra instruction instead of two; the comparison improves from 10021 to 9781. Other differences remain, so the function stays NON_MATCHING.
