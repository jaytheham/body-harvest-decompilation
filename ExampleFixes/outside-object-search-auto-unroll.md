Incorrect ASM: `func_80078BC8_87B78` manually peeled entries 0 and 1 and expanded the remaining search four times, producing different register allocation and scheduling.

Code changed: replace the expanded search with `for (i = 0; i != 0x96; i++)`, load `x` and `z` as `s32` from `D_80259D90[i]`, then compare both shifted coordinates inside the active-entry guard.

Correct ASM: IDO peels the first two entries and generates the four-entry loop itself, including the target branch-likely delay-slot loads and 0x140-byte pointer step. Function diff score 0; `build/bh.us.z64: OK`.
