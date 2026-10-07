# Floating literals versus placeholder arrays

In `func_800C0678_CF628`, the sound volume calculation originally referenced
one-element `const f64` arrays containing `0.2` and `0.1`. These arrays preserved
the original rodata while the function used assembly.

With C enabled, the array expressions produced different multiplication operand
orders from the target, even after reversing the multiplication in the source.
Replacing the references with literals and removing the five associated array
definitions restored the target operand orders. IDO emitted the constants at
the same addresses, including separate copies for the two branches.

The expression form that also preserved the target floating-point registers was:

```c
(f32)(0.1 + (0.2 - ((f64)factor * 0.2)))
```

The mathematically equivalent outer addition `(0.2 - product) + 0.1` produced
different registers. Check both the instructions and generated rodata after
changing placeholder constants; equivalent arithmetic alone is insufficient.

This fixes the floating-point sound section. The enclosing function remains
unmatched at the time this note was written.
