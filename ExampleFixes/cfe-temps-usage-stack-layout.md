### Cached ring offsets: one struct and a comma conversion

`func_800853A8_55858` matches with a `u16` scale parameter and six cached float offsets grouped in `FrontendRingOffsets`. Six independent float locals reserve a 0x18 frame; the non-addressed struct produces the target 0x08 frame and its sole float spill at sp+0x04. Multiply each basis entry by `((void)0, (f32)arg3)`: the comma creates the converted-scale temporary that restores scale-first MUL.S operands. Full ROM checksum and function diff pass. No rodata moved.
