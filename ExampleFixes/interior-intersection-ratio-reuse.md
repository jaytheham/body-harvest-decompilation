`incorrect ASM`: In `func_8007C1DC_16429C`, caching the starting Z and direction X leaves the quotient in a scratch register and swaps several floating registers before the boundary comparisons.

-> `code changed`: Cache the boundary Z in `ratio`, compute `deltaZ = ratio - D_800E6660.z` on the same physical source line, then reuse `ratio` for the division. Read direction X directly in the intersection expression. Retain the existing code-free double comparison after the distance sum.

-> `correct ASM`: The starting Z loads into `f18` before boundary Z loads into `f14`; the difference uses `f0`, and the quotient uses `f12`. All instructions through the distance multiplications match. The function remains `NON_MATCHING`: only the final distance result still uses `f16` instead of target `f18` in three instructions (diff score 15).
