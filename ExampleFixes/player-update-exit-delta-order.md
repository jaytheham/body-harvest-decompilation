`incorrect ASM`: The exit interpolation in `func_800ED78C_FC73C` emitted its first `mul.s` at `0xFD010` before converting the next integer delta with `cvt.s.w`.

-> `code changed`: In the exit interpolation block, compute the Z delta after X and before Y. Keep the floating-point arithmetic and setter calls in X, Y, Z order.

-> `correct ASM`: The `cvt.s.w` now precedes the first `mul.s`, as it does in the target. Two instruction-sequence differences are removed. The register choices and precise instruction positions still differ.
