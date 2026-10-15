# Texture row indexing preserves an IDO copy

`func_80008CA8_98A8` matched with a full ROM checksum of OK using IDO 5.3 `-O2 -mips2 -32`.

The last mismatch was a missing `move` immediately after signed remainder by eight. Treating each 256-byte animation frame as one array element emitted the remainder followed directly by a shift.

Represent the IA8 texture as 16-byte rows and explicitly select the first row of each 16-row frame:

```c
extern u8 D_1003990[][16];

/* Each animation frame contains sixteen 16-byte rows. */
gDPLoadTextureBlock(D_8005BB2C++,
    K0_TO_PHYS(D_1003990[((frame / 5) % 8) * 16]),
    G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0,
    G_TX_WRAP, G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD);
```

The explicit integer multiply and implicit array stride still combine into a shift by eight, but IDO retains a copy between the remainder and the shift. This also prevents the assembler from scheduling the texture base load ahead of the remainder. A 128-byte row type with an explicit multiply by two produced the same code, confirming that the split scaling matters.

Other matching details in this function:

- Use native `int` for the cached frame. The project's `s32` is `long`; switching to it changed temporary register allocation despite the same width.
- Store the environment command opcode before loading the frame counter. Expanding that packet preserves the target's load order.
- Share one primitive packet pointer between the two color branches. Separate macro-local pointers enlarged the stack when the final `u16` counter temporary was added.
- Keep the final increment in a `u16` temporary, with distinct linker aliases for its write and conditional reset. This prevents address CSE while preserving the halfword truncation and comparison. See [frontend-logo-counter-write-alias.md](frontend-logo-counter-write-alias.md).
- Literal orthographic bounds generate the required late rodata; remove the obsolete renderer support assembly and float aliases when enabling the C function.
