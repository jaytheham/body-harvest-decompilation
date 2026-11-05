`incorrect ASM`: In `drawText`, a cached preprocessing character adds `move v0,t9`; the formatting preheader lacks `lbu v0,0(s3)`; percent tests emit `beq v0,s6` / `bnel v0,s6` instead of the target operand order.

-> `code changed`: Initialize the output pointer and text cursor before loading the initial character. Preprocess with `do { if ((u8)*text++ == 0x25U) { ... } } while ((u8)*text != 0)`. Format with `while ((value = (u8)*text) != 0) { value = (u8)*text; ... }`. Use `(value ^ 0) != 0x25U` and `(value ^ 0) == 0x25U` for the percent tests.

-> `correct ASM`: The preprocessing loop uses `andi v0,v0,0xff` without a copy, the formatting preheader retains its separate `lbu v0,0(s3)`, and the tests emit `beq s6,v0` / `bnel s6,v0`.

`incorrect ASM`: A directly passed `va_arg(args, double)` uses `ldc1 f4,-8(a0)`; integer/fraction output addresses and saved precision/divisor slots differ from the target.

-> `code changed`: Assign the variadic double to a named `f64` local before conversion. Declare that local before `va_list`, then declare the working value, signed decimal base, unsigned digit flag, unsigned decimal base, specifier, integer output, fractional output, and precision in that order. Reuse the unsigned flag for the digit test. Write control-code arguments directly with `*out++ = va_arg(args, s32)` rather than retaining them in specifier locals.

-> `correct ASM`: `ldc1 f0,-8(a0)` feeds `cvt.s.d f12,f0`; integer/fraction outputs occupy `sp+0x64` / `sp+0x60`, precision is saved at `sp+0x5c`, the divisor at `sp+0x78`, and control bytes use target temporary registers. The complete US and EU ROM comparisons pass.
