# Nested float clamp branch layout

For a floating-point value that must be clamped to `[0, max]`, IDO 5.3 may need
the clamp expressed as a nested conditional operator to reproduce the target's
branch-likely layout and floating-point register lifetimes:

```c
result = (value <= 0.0f) ? 0.0f : ((value >= max) ? max : value);
```

In `func_8007C96C_164A2C`, equivalent nested `if` statements produced different
register assignments and branch flow. The conditional expression matched the
target. The later double-precision absolute value remained an explicit sign
test; replacing it with `ABSD` changed the comparison and branch layout.
