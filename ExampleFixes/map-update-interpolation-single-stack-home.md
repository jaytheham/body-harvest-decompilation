Incorrect ASM: `var_f28 = sp2B8` at loop setup creates a separate float local; the interpolation cache uses `f26`, and the shared double one uses `f28/f29`.

Code changed: remove `var_f28` and its initialization, and use the existing `sp2B8` float directly for every interpolation assignment and read. The now-unused old declaration can be removed without changing any stack offset.

Correct ASM: loop setup loads the original slot with `lwc1 f28,0x2B8(sp)` and the double-one cache uses `f26/f27`. The instruction sequence, 0x3E8 frame and 0x3970 current payload size are unchanged. Function score improves 43143 -> 42838; the enclosing function remains NON_MATCHING. US and EU ROMs verify with its wrapper retained.
