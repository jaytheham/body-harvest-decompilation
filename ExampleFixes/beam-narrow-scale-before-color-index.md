`incorrect ASM`: In `func_800DC5B8_EB568`, a word-sized loop scale narrowed only at the final float conversion keeps its temporary alive while the color-array index is computed. The loop uses different temporary registers from the target.

-> `code changed`: Declare the loop scale as `u16 scale = (u32)(D_8013DFB4_14CF64[i] * phase)` instead of `u32 scale`, keeping the narrowing at the assignment.

-> `correct ASM`: The scale narrowing completes before the color-index work, and the loop matches the target instruction order and registers. The complete function drops from 21 differing bytes to three, all in the earlier pipe-sync constant register.
