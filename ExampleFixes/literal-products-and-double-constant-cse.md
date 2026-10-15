# Literal products can preserve separate double constants in IDO

During comet joint animation matching, replacing all seven double array reads with decimal literals caused equal divisors to merge.

Using literal products for the speed circumferences while retaining decimal literals for the turn circumferences produced separate constants and much closer scheduling:

```c
rotation = (f32)((speed / (200.0 * 3.141592654)) * 65536.0);
offset0 = (f32)((turn / 628.3185308) * 65536.0);
```

Likewise128.0*pi equals402.123859712, and86.0*pi equals270.176968244. Their resulting double bit patterns were verified equal. In this function, the expression form matters even when the final constant bits agree.
