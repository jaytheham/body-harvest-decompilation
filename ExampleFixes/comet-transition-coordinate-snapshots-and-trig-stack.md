`func_802DF940_323A90`: a cached alien index reserved `v1`, the `s16` spawn result added `sll/sra`, and early coordinate caches replaced the target's six word reloads with saved-register stores.

-> Index the starting instance directly with `D_8014D17E`; keep the spawn result as `s32`. Copy the six new-instance coordinates from the original word snapshots before assigning state/flags, and defer the short Y cache until after `func_800E35E0_F2590`. Let the `u16` parameter of `func_800D0FE0_DFF90` narrow the scale instead of explicitly masking it.

-> The index load uses `t6`, the spawn comparison uses `v0` directly, six `lw` coordinate snapshots precede the `sb/sw/sh` stores, and the scratch-register sequence remains exact through the function.

`func_802DF940_323A90`: four trig spills occupied `sp+0x80..0x86` instead of `sp+0x6E..0x74`, normalized angle spills were four bytes low, and the Z effect expression omitted a fifth cosine call.

-> Declare the four short trig results after the coordinate caches and remove the unused short alien index. Use a fresh `coss` of the second angle for the Z expression's first factor.

-> Trig results use `sh/lh` at `sp+0x6E/0x70/0x72/0x74`; normalized angle words use `sp+0x58/0x54`; the fifth cosine supplies `v0`.

Inline radius literals placed after the later placeholder doubles produce loads from the wrong addresses. Named radius accesses can also change floating allocation and load order.

-> Keep all function bodies in `318E20.c` and move only the explicit prefix constants to `318E20_rodata.c`. Attach the skipped function's seven placeholder doubles through a second `GLOBAL_ASM` input in `asm/late_rodata/func_802E0588_3246D8.s`. The asm processor reserves those constants at that function's position, leaving generated literals inline in the C bodies. Record the prefix/main rodata ranges in both version layouts.

-> The two radius literals occupy `0x802E7B90` and `0x802E7B98`; all 512 bytes of Comet rodata match. The previously matched later functions retain zero function diffs, including `func_802E3A4C_327B9C`. A full ROM comparison leaves differences only inside the currently unmatched `func_802DF290_3233E0`.

Deferring `func_802DF290_3233E0` behind `NON_MATCHING` removes its generated radius literal, leaving the target assembly's `ldc1` reference to `D_802E7B90_32BCE0` undefined and moving the following function's radius eight bytes earlier.

-> Preserve the best C body inside the wrapper and attach `asm/late_rodata/func_802DF290_3233E0.s` as a second assembly input. That sidecar defines the function's original `1000.0` double in `.late_rodata`.

-> The deferred function's radius resolves to `0x802E7B90`, the following function's generated radius remains at `0x802E7B98`, and the full US ROM reports `build/bh.us.z64: OK`.
