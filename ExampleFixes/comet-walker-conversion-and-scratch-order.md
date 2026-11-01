# Comet walker conversion and temporary order

`func_802D7F10_31C060`:

- Signed joint-angle loads and signed float-to-integer conversion -> use `unkAUnsigned`, convert its input through `u32`, and cast the resulting sum to `u32` -> target `lhu`, unsigned integer-to-float adjustment, and FCSR-controlled unsigned conversion.
- `add.s` doubling and a misplaced 5000 constant -> spell the multiplier `5000.0f * 2`, using an integer second literal -> target `mul.s` and the original constant pool layout.
- Type-table address uses `t4` and the initial joint load uses `t9` -> calculate the rotation step before loading the joint index -> type address uses `t9`, joint index uses `t6`, and the complete prefix matches after scheduling.
- Speed difference shares a register family with a later flag temporary -> capture the difference in its own existing word local and update later flags directly -> speed difference uses `v0`, maximum speed uses `v1`, and the coefficient/terrain/type pointer occupy the target registers.
- `bne a2,t8` and the following frame-counter load uses `t9` -> write `(inst->unk2 - a2) == 0` -> target `bne t8,a2` and frame-counter load in `t2`, without a subtraction instruction; subsequent temporary registers match.
- Second flag OR uses `t4`, timer 80 uses `t6` -> put the timer-80 assignment between the first and second flag OR assignments -> second OR uses `t3`, timer uses `t8`, while scheduling retains the target stores.
- Timer 25 uses `t7` and later flag temporaries differ -> assign timer 25 after the three flag updates -> timer uses `t3`, the flag values use `t9`/`t8`/`t5`, and the target scheduled order is retained.
- Missing in-range clamp stores -> retain explicit self-assignment arms for both angle clamps -> target branch-likely instructions and self stores.
