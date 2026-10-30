`incorrect ASM`: In `func_80077CE0_48190`, assigning `D_800D74A6` directly in the two branches duplicated its address calculation and halfword store. The previous three-case switch also emitted comparisons instead of the target eight-entry jump table, with incorrect exit actions.

-> `code changed`: Select `arg0 + 7` or `8` into a signed-word local with a conditional expression, then assign that local to `D_800D74A6` after the join. Order the exit switch bodies as case `3` (clear frontend state), cases `0` and `2` (close frontend state), and cases `4` through `7` (confirmation sound), leaving case `1` unhandled. Delete the corresponding US and PAL placeholder tables from the late-rodata support assembly.

-> `correct ASM`: The conditional produces `b` with `addiu v0,s2,7` in its delay slot, followed by one shared `sh` and the required `lh` reload. IDO generates the exact jump table and exit bodies. Both complete US and PAL ROMs pass their checksums.
