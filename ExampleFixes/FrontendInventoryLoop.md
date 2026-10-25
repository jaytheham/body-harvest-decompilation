Incorrect ASM: `func_8007D2B0_4D760` caches the frame-counter address in a saved register. Splitting accesses into linker views removes that cache, but direct repeated reads still use `v0`, shifting the later temporary registers.

-> Code changed: use separate counter views at the menu call boundaries, and reuse one `u32 *frameCounter` local for the introductory range test and the final increment's read. Keep the increment's store through the write view.

-> Correct ASM: the first range test loads the counter into `t9`; the final update loads it into `t7`, computes `t8 = t7 + 1`, and stores through `at`. No saved counter-address register remains.

Incorrect ASM: a flattened level/item index puts the final scale in a new temporary; the target keeps the complete multiply-by-104 chain in `t3`.

-> Code changed: read the display-list field through a `FrontendItemRenderData (*)[13]` view of the original table base, indexed by `[currentLevel][i]`.

-> Correct ASM: `sll t3,t2,2; subu t3,t3,t2; sll t3,t3,2; addu t3,t3,t2; sll t3,t3,3`, followed by the separately scaled item index.

Incorrect ASM: compiling the inventory jump table and movie event interpreter in one translation unit places the inventory table after the movie diagnostics, changing its load address. An EU table-only object also adds eight bytes of trailing alignment.

-> Code changed: split the movie initializer and subsequent code into `4DC90.c`, place its data and rodata at their original locations, and compile the existing final `2000.0` double before the inventory table in both versions. Keep the earlier EU rodata prefix ending before that double.

-> Correct ASM: the inventory dispatch loads the table at `0x800AE8C0` in US and `0x800AF428` in EU; the movie diagnostics and event table retain their original addresses. Both complete ROMs match.
