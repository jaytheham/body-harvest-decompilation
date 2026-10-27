`incorrect ASM`: In `func_8007C1DC_16429C`, caching the starting Z and direction X leaves the quotient in a scratch register and swaps several floating registers before the boundary comparisons.

-> `code changed`: Cache the boundary Z in `ratio`, compute `deltaZ = ratio - D_800E6660.z` on the same physical source line, then reuse `ratio` for the division. Read direction X directly in the intersection expression. Retain the existing code-free double comparison after the distance sum.

-> `correct ASM`: The starting Z loads into `f18` before boundary Z loads into `f14`; the difference uses `f0`, and the quotient uses `f12`. All instructions through the distance multiplications match. This restores every instruction through the two distance multiplications.


`incorrect ASM`: The final sum in `func_8007C1DC_16429C` uses `add.s f16,f6,f8`, `c.le.s f16,f4`, and `swc1 f16,0x10(v1)`; all other instructions already match.

-> `code changed`: Keep the cached direction Z live until after assigning the distance sum, with both code-free uses on the same physical line as the sum: `distanceSquared = (deltaX * deltaX) + (deltaZ * deltaZ); if ((f64)distanceSquared != 0.0) {} if ((f64)D_800E6680.z != 0.0) {}`. The direction Z remains in `f16` during the sum, so IDO chooses `f18` for the result.

-> `correct ASM`: `add.s f18,f6,f8` -> `c.le.s f18,f4` -> `swc1 f18,0x10(v1)`. All 61 instructions match, and `tools/make.ps1` reports `build/bh.us.z64: OK`.
