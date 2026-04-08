### gDPSetPrimColor alpha: don't add explicit `& 0xFF`

When calling `gDPSetPrimColor`, the `a` (alpha) parameter goes through `_SHIFTL(a, 0, 8)` inside the macro, which already masks the value to 8 bits. Writing an explicit `& 0xFF` on the expression changes the sub-expression evaluation order and causes register allocation differences.

**Wrong (causes register swap mismatch):**
```c
gDPSetPrimColor(D_8005BB2C++, 0, 0, r, g, b, (arg4 * 2) & 0xFF);
```

**Correct (matches target assembly):**
```c
gDPSetPrimColor(D_8005BB2C++, 0, 0, r, g, b, arg4 * 2);
```

**Rule:** Let the macro's own `_SHIFTL` do the masking. Adding a redundant `& 0xFF` outside the macro call shifts when the `andi` instruction is emitted, which changes the temp register allocation order and causes cascading register name mismatches throughout the function.

This pattern applies to ALL gDP macro parameters that internally use `_SHIFTL` with an 8-bit width (color components r/g/b/a, etc.). Only add explicit masking if the macro truly requires it and the target assembly shows the andi at a specific position.
