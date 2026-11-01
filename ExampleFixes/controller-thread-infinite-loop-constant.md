Incorrect ASM: `func_80002EF8_3AF8` uses `while ((u64)1)` and omits the target's NOP at ROM `0x3C3C`, moving its unreachable epilogue and every following function four bytes early.

-> Code changed: use the ordinary infinite loop `while (1)` and remove the placeholder `jtbl_80036C8C_3788C` constant so IDO generates the switch table.

-> Correct ASM: the loop branch and delay-slot queue argument remain at `0x3C34`/`0x3C38`; IDO emits the NOP at `0x3C3C` and begins the epilogue at `0x3C40`. The next function starts at `0x3C64`.