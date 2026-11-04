`incorrect ASM`: In `drawText` decimal formatting, loading the variadic integer before initializing the divisor leaves the divisor ORI in the sign branch delay slot and advances the argument pointer earlier.

-> `code changed`: Initialize `v0 = 1000000` before `v1 = va_arg(s2, s32)`.

-> `correct ASM`: The divisor LUI/ORI pair precedes the sign branch, and the argument pointer increment occupies its delay slot. Other differences remain in the complete function.
