Incorrect ASM: `func_8000345C_405C` manually expands four controller cases, retaining button-array bases in registers and moving the complemented mask before the target's first case.

-> Code changed: use `for (i = 0; i < 4; i++)`, test both button-history arrays at index `i`, and clear `currentControllerStates[i].button` with `~buttonMask`. Clear the combined button state after the loop.

-> Correct ASM: IDO unrolls all four iterations into the target's absolute halfword loads/stores, keeps the first complemented mask in a temporary, and shares the later complemented mask through `v1` without cached array-base registers.