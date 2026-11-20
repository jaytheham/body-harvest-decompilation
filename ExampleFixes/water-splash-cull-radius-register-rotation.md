`incorrect ASM`: In `func_800C978C_D873C`, the direct unsigned radius argument placed the culling limit in `t8` at `0xD8A38` and the first corner sign extension in `t7` at `0xD8B90`.

-> `code changed`: Pass `(u16)(((u16)D_80154318[unitId].unk2) ^ 0)` as the third argument to `func_800B93AC_C835C`. The identity operation keeps an intermediate available during register allocation.

-> `correct ASM`: The final code has no XOR instruction. It emits `addiu t9,zero,0x4000` at `0xD8A38` and `sra t9,s5,16` at `0xD8B90`. The loop instructions match through `0xD90C0`.

`incorrect ASM`: The pipe-sync word started in a caller-saved register, and an extra load appeared before the last non-water pipe sync when the setup and cleanup were made to share the unsigned word.

-> `code changed`: Keep the pipe-sync word live in an empty comparison with `splash->onWater` after the last non-water pipe sync. Use signed comparisons with the list index around the texture setup. Narrow `unitId ^ 0` to `s16` in the second comparison to preserve the entry index's register.

-> `correct ASM`: The prologue retains `lh ra` for the initial index. The setup and cleanup materialize the pipe-sync word in `s0` at `0xD8788` and `0xD90C8`. Each render-mode branch keeps one materialization in `a3`. The comparisons emit no branches.
