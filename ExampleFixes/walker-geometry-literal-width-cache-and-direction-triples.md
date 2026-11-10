`incorrect ASM`: `func_800F63D0_105380` kept a single named width float across the normalization and trigonometric helpers. It omitted the target's `swc1 f0,0x54(sp)` and reused a narrowed Z offset where the target reloads the named width at `sp+0x13C` and truncates a full word.

-> `code changed`: Compute the named width with the inline double literal `1.2`, mark that named float addressable, and repeat the same literal expression in the first two width products. Use the named width for the later negative Z product. Keep the cosine conversion inline at each product. Let the compiler emit the literal before the remaining late-rodata placeholders; supply its original symbol through a separate assembly fragment only when the function uses its assembly fallback.

-> `correct ASM`: The initial conversion is `cvt.s.d f0,f4`. The named float is stored at `sp+0x13C`, the common expression is separately spilled at `sp+0x54` before the helper, the first products load `sp+0x54`, and the negative Z product reloads `sp+0x13C` before `mul.s` and `trunc.w.s`. The function still has other scheduling and allocation differences.

`incorrect ASM`: The later X and Z direction offsets in `func_800F63D0_105380` used signed division by two, with `bgez`/`sra` correction sequences.

-> `code changed`: Use the signed word expressions `temp_f6 * 3` and `temp_f10 * 3` directly in the vertex coordinates. Retain the signed-halfword component conversions before multiplying. Compute palette clamps directly from the palette halfwords, leaving the later geometric halfword temporaries out of the clamp calculations.

-> `correct ASM`: The direction offsets use `sll reg,component,2` followed by `subu reg,reg,component`, without a second halfword narrowing or division-by-two branches. The palette clamp comparisons also omit the extra `sll`/`sra` pairs.

`incorrect ASM` → Reusing the later integer scratch for the angle gives a `0x160` frame. The first trig call stores the angle at `0x148(sp)` in its delay slot, and the second call reloads it through `v1`.

→ `code changed` → Give the angle its own signed word at the old scratch declaration site and move the scratch declaration after the halfword locals. Pass `angle + 0x4000` to each trig function and let its parameter type narrow the argument.

→ `correct ASM` → The `0x168` frame, named width at `0x13C(sp)`, and width cache at `0x54(sp)` match. The angle store uses `0x150(sp)` before the first `jal`, its delay slot moves `t9` to `a0`, and the second call reloads the angle into `a0`. The first 118 words differ only at two relocated data references in the linked candidate. Its diff score improves from 22998 to 22109, with the assembly fallback still selected.

`incorrect ASM` → The Z coordinate loads and subtraction are delayed until after the midpoint X product and store.

→ `code changed` → Start the Z difference before the X product and keep the absolute Z distance in its own signed word, using the declaration slot of the unused float.

→ `correct ASM` → The Z loads and subtraction occur at the target positions starting at `0x105CB4`, while the X calculation is still in progress. The frame stays at `0x168`, and the width cache stays at `0x54(sp)`. The linked diff score improves from 21843 to 21608. Other instruction and register differences remain.

`incorrect ASM` → The two signed divisions by literal `3` leave a register holding the constant. IDO reuses it for three `multu`/`mflo` pairs in the subsequent vertex offsets, where the target uses shifts and subtractions.

→ `code changed` → Store `3` in the existing signed scratch and use `(s32)(s64)temp_v0` as both divisors. A plain scratch read or a single cast to `s32` gives the original multiplication sequence.

→ `correct ASM` → The divisions remain signed, and the later tripled offsets use `sll` by two followed by `subu`. The X sequence still repeats for the second vertex. The linked diff score improves from 21608 to 21129 while retaining the `0x168` frame and `0x54(sp)` width cache.

`incorrect ASM`: In the middle vertex setup, the X direction product loads its component into `$f6` and computes the product in `$f4`. The target uses `$f10` and `$f8` at those sites.

-> `code changed`: Compute the signed X and Z width offsets together, before the three direction products. Keep the casts and the order of the direction products.

-> `correct ASM`: The X product uses `mul.s $f8,$f10,$f2`, the Y product uses `mul.s $f10,$f4,$f16`, and the Z product uses `mul.s $f4,$f6,$f2`. Their registers match the target, with scheduling differences still present. The linked diff score falls from 21129 to 20269.

`incorrect ASM`: The cursor advance before the middle vertices uses `sw $t8,0($a0)`. A halfword stack store appears between the X direction product and the cursor advance.

-> `code changed`: Compute the next Z width before the preceding vertex's alpha store, and compute the next X width immediately before advancing the vertex cursor.

-> `correct ASM`: The cursor advance uses the target's `sw $t7,0($a0)` and follows the X direction product directly. The halfword stack store moves earlier than both. The linked diff score falls from 20269 to 20219.

`incorrect ASM`: Earlier drafts needed an empty `if (&temp_f0)` to preserve the width's stack home at `sp+0x13C`.

-> `code changed`: Remove the empty address check after separating the middle width conversions. Keep the named width assignment and its use in the negative Z product.

-> `correct ASM`: The linked function is byte-identical to the preceding draft. The named width at `sp+0x13C` and the separate width cache at `sp+0x54` are both preserved.
