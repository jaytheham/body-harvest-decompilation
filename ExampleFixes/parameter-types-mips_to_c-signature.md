### Parameter types

- If the assembly at function entry shows a plain `move reg, arg` (or `or reg, a0, zero`) without sign-extension (`sll/sra` pair), declare the parameter as `s32` not `s16`, even if the values are conceptually 16-bit. Using `s16` parameters causes IDO to emit a sign-extension sequence at the prologue.

### mips_to_c function signature inference

mips_to_c may incorrectly infer function parameters based on register setup in the assembly. If registers like `$a0` and `$a1` are set up before a function call but the actual function definition takes no parameters, the register setup might be for saving/preserving values rather than passing arguments.

Always verify function signatures by checking the actual function definition or examining what the function does with the registers. If a function accesses globals directly rather than using argument registers, it likely takes no parameters.
