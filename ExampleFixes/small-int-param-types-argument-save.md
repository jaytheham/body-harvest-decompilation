### Small integer parameter types and argument save stores

When a function has \andi\ instructions to mask parameters to 0xFF or 0xFFFF, the correct C code should use \u8\/\s8\ or \u16\/\s16\ parameter types instead of \s32\ with manual masking.

### Corollary: do not re-narrow a small parameter into a same-width local

Measured on `func_800B960C_C85BC` (`overlay_gameplay/outside/BF9C0.c`, 210 instructions). The body
declared `u16 rangeX; u16 rangeZ;`, assigned the two `u16` parameters into them, and read the locals
everywhere. Asm-differ **2643**. The target's own prologue shows the cost: our build keeps the masked
value live for the whole function, so it spends a **tenth** callee-saved register (`$s8`, saved at
`0x40($sp)`) and the frame grows `0x50 -> 0x60`, where the target's `andi $t8,$a2,0xFFFF` /
`or $a2,$t8,$zero` re-forms `$a2` in place and copies once into `$s6`.

Deleting the two locals and their `rangeX = arg2; rangeZ = arg3;` copies, so every use reads the `u16`
parameter directly, gives **1716** (2643 -> 1716, 35%) with no other edit.

The measurement is independent of declaration order: 15 declaration permutations all scored **2589**
with the locals present, and the same **1716** without them (committed order, reversed order, and
`angleOffset` first). Widening the locals to `u32` is much worse (**5954**), as are `hit`/`i` as `s32`
(**4659** / **5454**) - the small width is what the asm wants, only the extra local is not.

Rule: a parameter already of width `u8`/`u16` is free to re-read. Copying it into a same-width local
buys nothing and can cost one callee-saved register plus a frame step.
