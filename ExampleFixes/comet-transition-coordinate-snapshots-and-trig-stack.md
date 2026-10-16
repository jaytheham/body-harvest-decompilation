`func_802DF940_323A90`: a cached alien index reserved `v1`, the `s16` spawn result added `sll/sra`, and early coordinate caches replaced the target's six word reloads with saved-register stores.

-> Index the starting instance directly with `D_8014D17E`; keep the spawn result as `s32`. Copy the six new-instance coordinates from the original word snapshots before assigning state/flags, and defer the short Y cache until after `func_800E35E0_F2590`. Let the `u16` parameter of `func_800D0FE0_DFF90` narrow the scale instead of explicitly masking it.

-> The index load uses `t6`, the spawn comparison uses `v0` directly, six `lw` coordinate snapshots precede the `sb/sw/sh` stores, and the scratch-register sequence remains exact through the function.

`func_802DF940_323A90`: four trig spills occupied `sp+0x80..0x86` instead of `sp+0x6E..0x74`, normalized angle spills were four bytes low, and the Z effect expression omitted a fifth cosine call.

-> Declare the four short trig results after the coordinate caches and remove the unused short alien index. Use a fresh `coss` of the second angle for the Z expression's first factor.

-> Trig results use `sh/lh` at `sp+0x6E/0x70/0x72/0x74`; normalized angle words use `sp+0x58/0x54`; the fifth cosine supplies `v0`.

An explicit radius array changes floating evaluation order; a one-member struct preserves that order but swaps the divisor and radius between `f0` and `f2`. An inline `1000.0` fixes all instructions but places its load at `0x802E7BD0` instead of `0x802E7B98`, after the later placeholder constants.

-> Remove the radius placeholder and use literal `1000.0`. Split C at the aligned boundaries `func_802DF940_323A90` and `func_802E00D0_324220`: `318E20.c` retains the prefix, `323A90.c` contains the transition and its following helpers, and `324220.c` contains the unchanged tail. Keep the preceding `D_802E7B90_32BCE0` definition in `323A90.c`, so its eight bytes precede the compiler's radius literal. Put the following seven double definitions in `324220.c`, ahead of that file's generated literals. Add the two files and their text/rodata ranges to both version layouts and `shared_overlay_files.txt`.

-> `32768.0` occupies `f0`, the radius loads from `0x802E7B98` into `f2`, and the following seven named constants retain their original addresses. Function diff is zero and the full US ROM checksum matches. The 16-byte-aligned text boundaries also preserve every moved function's address without object-tail padding.
