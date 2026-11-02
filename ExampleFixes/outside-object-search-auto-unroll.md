Incorrect ASM: `func_80078BC8_87B78` manually peeled entries 0 and 1 and expanded the remaining search four times, producing different register allocation and scheduling.

Code changed: replace the expanded search with `for (i = 0; i != 0x96; i++)`, load `x` and `z` as `s32` from `D_80259D90[i]`, then compare both shifted coordinates inside the active-entry guard.

Correct ASM: IDO peels the first two entries and generates the four-entry loop itself, including the target branch-likely delay-slot loads and 0x140-byte pointer step. Function diff score 0; `build/bh.us.z64: OK`.

Incorrect ASM: `func_80078D64_87D14` with casts from unsigned byte members unrolls only twice and omits the target peeled pair.

Code changed: access the existing `Unk857E0Obj` signed-byte struct instead of casting unsigned `Unk80259D90` fields to `s8`; retain the ordinary indexed loop and `s32` coordinate locals.

Correct ASM: removing the byte conversions from the optimizer input permits four-way unrolling with two peeled entries, reproducing all target instructions. Function diff score 0; `build/bh.us.z64: OK`.
