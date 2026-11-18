`incorrect ASM`: The exit progress update in `func_800ED78C_FC73C` emitted `mtc1 zero,$f8` at `0xFD380` while preparing the vehicle field clears.

-> `code changed`: Increment `temp_f18` between the `unk34` and `unk38` clears. Store the incremented value in `D_801575C4` after all three clears.

-> `correct ASM`: The instruction at `0xFD380` emits `mtc1 zero,$f10`, matching the target word.
