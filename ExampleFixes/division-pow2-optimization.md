### Division

`x / 8` is rewritten as `(x < 0 ? (x + 7) >> 3 : x >> 3)`, `x / 1` as `x`. Modulo is done by `y = x & 7; (x < 0 && y != 0 ? y - 8 : y)`. Only powers of two are optimized.

When dividing a floating point number with a float constant which is a power of two, the compiler will convert the divide into a multiply by the constant's reciprocal: `float_var /= 64.0f` -> `float_var *= 0.015625f`. This is not done when the constant is an integer (e.g. 64 instead of 64.0f). If you see a `div.s` with a constant, then that constant is an integer.
