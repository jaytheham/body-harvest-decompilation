Incorrect ASM: the DMA logo's phase-4 depth computation uses the multiply-by-332 chain, and its vertical motion multiplies by 110 before adding 1.8.

-> Code changed: use `posZ = -D_800D7960 * 300; rotX = -45; posX = 250 - D_800D7960; posY = D_800D7960 * 1.8 + 110.0;` in that order. Put phase 3's integer blend assignment before its three floating-point assignments, and initialize phase 5's depth before its rotation calculation.

-> Correct ASM: phase 4 computes the signed multiply-by-300 chain and `mul.d timer,1.8; add.d ...,110.0`, with the target's narrowing and timer-store scheduling. The complete switch matches.

Incorrect ASM: assigning signed intermediates to `D_80052B48.unk0` emits `trunc.w.d`, omitting the unsigned conversion fallback. Reusing the global's cached address for its reset and for the final frame-counter update also omits target address instructions.

-> Code changed: assign the double expression directly to the existing `u16` field. Use the `D_80052B48_Reset` struct view for the first zero branch and `D_800948E0_Write` for the counter store.

-> Correct ASM: the two unsigned field assignments emit the target `cfc1/ctc1/cvt.w.d` sequences; the reset emits `lui at; sh zero,...(at)` and the frame counter uses separate folded load/store addresses.

Incorrect ASM: compiling PAL's generated table and floating constants after the old rodata prefix duplicates the original constants. Starting the C section at the table itself misaligns the following doubles.

-> Code changed: end the extracted prefix at ROM `0x7F860` and retain its last table word as `const u32 D_800AF3B0_7F860[1]`. Remove the logo's placeholder table and floating constants so IDO emits them in function order. A scalar const would go into `.data`; the one-element array goes into `.rodata`.

-> Correct ASM: the generated PAL table begins at `0x800AF3B4`, its first double at `0x800AF3D0`, and the inventory table remains at `0x800AF428`. Both complete ROMs match.
