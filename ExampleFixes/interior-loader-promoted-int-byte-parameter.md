# C89 promoted int call with a byte parameter in the callee

Matched `func_8007290C_15A9CC`, the interior game loop. Its initial loader call passes `currentLevel` with `lw`, but the already matched `func_80011858_12458` stores its argument and reads its low byte with `lbu`. A modern `u8` prototype changes the caller to `lbu`, leaving one incorrect instruction.

Use a C89 identifier-list definition for the loader and its promoted argument type in `include/functions.us.h`:

```c
/* Header */
void func_80011858_12458(int arg0, s32 arg1);

/* Definition */
void func_80011858_12458(arg0, arg1)
u8 arg0;
s32 arg1;
{
    /* Existing loader body. */
}
```

`u8` promotes to `int` under C89. Use `int`, not `s32`: this project typedefs `s32` as `long`, which is a different C type even though both are 32 bits on the target. A `s32` first-argument prototype conflicts with the identifier-list definition. Casting the call through an unprototyped function pointer produces `jalr`, so it does not match the direct `jal`.

The loader body and machine code stay unchanged. The caller now uses the target full-word load. Its building-visit bitmask pointers can also be written as `&D_80047F40[index / 32]`, replacing byte pointer arithmetic without changing code generation. The complete ROM checksum verifies both functions together.
