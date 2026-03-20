### Small integer parameter types and argument save stores

When a function has \andi\ instructions to mask parameters to 0xFF or 0xFFFF, the correct C code should use \u8\/\s8\ or \u16\/\s16\ parameter types instead of \s32\ with manual masking.
