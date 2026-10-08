# Reuse the horizontal magnitude before and after sqrtf

Matched func_80102A0C_1119BC calls sqrtf for total magnitude, then horizontal magnitude, before updating vehicle angles. Computing both square sums inline assigned the total magnitude to f20 and horizontal magnitude to f22; the target uses the opposite registers.

Use a single horizontal variable for the squared magnitude and its square root:

```c
horizontal = x * x + z * z;
magnitude = sqrtf(y * y + horizontal);
horizontal = sqrtf(horizontal);
```

This preserves the shared squared sum spill and call order, while allocating horizontal to f20 and magnitude to f22. Merely swapping declarations or copying the incoming magnitude did not fix the registers. Three reused s16 trig locals, declared in reverse call order, reproduce the contiguous halfword spill slots. Full ROM verification passed.
