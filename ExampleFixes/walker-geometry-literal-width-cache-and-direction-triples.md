`incorrect ASM`: `func_800F63D0_105380` kept a single named width float across the normalization and trigonometric helpers. It omitted the target's `swc1 f0,0x54(sp)` and reused a narrowed Z offset where the target reloads the named width at `sp+0x13C` and truncates a full word.

-> `code changed`: Compute the named width with the inline double literal `1.2`, mark that named float addressable, and repeat the same literal expression in the first two width products. Use the named width for the later negative Z product. Keep the cosine conversion inline at each product. Let the compiler emit the literal before the remaining late-rodata placeholders; supply its original symbol through a separate assembly fragment only when the function uses its assembly fallback.

-> `correct ASM`: The initial conversion is `cvt.s.d f0,f4`. The named float is stored at `sp+0x13C`, the common expression is separately spilled at `sp+0x54` before the helper, the first products load `sp+0x54`, and the negative Z product reloads `sp+0x13C` before `mul.s` and `trunc.w.s`. The function still has other scheduling and allocation differences.

`incorrect ASM`: The later X and Z direction offsets in `func_800F63D0_105380` used signed division by two, with `bgez`/`sra` correction sequences.

-> `code changed`: Use the signed word expressions `temp_f6 * 3` and `temp_f10 * 3` directly in the vertex coordinates. Retain the signed-halfword component conversions before multiplying. Compute palette clamps directly from the palette halfwords, leaving the later geometric halfword temporaries out of the clamp calculations.

-> `correct ASM`: The direction offsets use `sll reg,component,2` followed by `subu reg,reg,component`, without a second halfword narrowing or division-by-two branches. The palette clamp comparisons also omit the extra `sll`/`sra` pairs.
