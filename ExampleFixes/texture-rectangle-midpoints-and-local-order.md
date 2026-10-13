# Texture rectangle midpoints and local order

`func_800092B8_9EB8` in `src.us/core/53F0.c` draws four RGBA texture quadrants and an optional intensity overlay. Matching required `u32` screen coordinates, `s16` midpoint locals assigned before the texture-selection switch, and a separate overlay texture pointer declared before the midpoints. The midpoint calculations are nevertheless scheduled at the first rectangle by IDO.

Computing the midpoints immediately before drawing produced extensive differences. Moving them before the switch reduced these, and changing both midpoint locals from `u16` to `s16` matched the instruction sequence. Reusing the base texture pointer for the overlay still selected the wrong register; declaring a distinct overlay pointer before the midpoint locals matched both that register and the stack layout. An unused padding local matched the stack offsets but was unnecessary once the meaningful overlay pointer was restored.

The first rectangle in each pass starts at texture coordinates `(0, 0)`. Texture offsets use array access (`&texture[0x400]`, etc.). Final verification: diff score 0 and `build/bh.us.z64: OK`.
