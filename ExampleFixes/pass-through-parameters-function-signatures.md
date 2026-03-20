### Pass-through parameters and function signatures

When a function passes its incoming arguments directly to another function without modification, the type declaration of the called function matters for code generation:

- If the called function is declared with `s16` parameters but receives values already in 32-bit registers, the compiler may generate `sll`/`sra` sign-extension code
- Declaring the called function with `s32` parameters for pass-through values avoids this extra sign extension
- This typically applies to the first parameters (a0, a1) that are passed through untouched while later parameters are extracted from structs

Example: `func_8012B150_13A100` passes a0 and a1 through while extracting s16 values from a struct for the remaining args. Declaring the callee as `func(s32, s32, s16, s16, s16)` matches, while `func(s16, s16, s16, s16, s16)` generates extra sign-extension for the first two parameters.
