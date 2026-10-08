# Scheduler minimum in the byte parameter

`func_800E74DC_F648C` saves the original byte count to `D_80157532`, then replaces `arg3` with `arg4` when `arg4` is smaller. Divide `arg4 / arg3` directly. Using separate word locals for the count and minimum changed the division registers, the base register for the output byte, and the scheduling of the parameter home store.

Reusing `arg3` resolved most differences, but assigning the original count through a named `s32 count` still changed temporary allocation. Writing `D_80157532 = arg3` directly resolved the final differences. The two unused word declarations could then be removed without affecting code generation.

The cleaned function passed full-ROM verification with the original six parameter types.
