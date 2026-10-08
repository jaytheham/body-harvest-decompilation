# Reuse a horizontal squared-distance local

`func_80102A0C_1119BC` computes a full three-dimensional magnitude, followed by a horizontal magnitude, before updating either vehicle angle. Repeating the horizontal squared-distance expression in the two sqrtf calls produced the right instructions but assigned the first result f20 and the second f22, reversing the target.

Assign the horizontal sum to a float local before the first sqrtf call, then overwrite that local with its own square root:

```c
horizontalLength = x * x + z * z;
magnitude = sqrtf(y * y + horizontalLength);
horizontalLength = sqrtf(horizontalLength);
```

This gives the horizontal result f20 and the full magnitude f22, while preserving the target f14 spill of the sum across the first call. It also reproduces the intended local frame when paired with three reused s16 trig caches. The whole-ROM checksum passed.
