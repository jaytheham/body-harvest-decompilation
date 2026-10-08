# Literal products can preserve separate double constants in IDO

During comet joint animation matching, replacing all seven double array reads with decimal literals caused equal divisors to merge. Retaining arrays prevented that merge but changed integer and floating-point register allocation substantially.

Using literal products for the speed circumferences while retaining decimal literals for the turn circumferences produced separate constants and much closer scheduling:

```c
rotation = (f32)((speed / (200.0 * 3.141592654)) * 65536.0);
offset0 = (f32)((turn / 628.3185308) * 65536.0);
```

Likewise128.0*pi equals402.123859712, and86.0*pi equals270.176968244. Their resulting double bit patterns were verified equal. In this function, the expression form matters even when the final constant bits agree. Multiplication involving an integer local does not produce the same result: it emits runtime double multiplication. Identical decimal literals, redundant double casts, and long-double suffixes also failed to preserve the desired source shape.

This is a partial matching insight: func_802E0588_3246D8 remains unmatched. The product candidate improved the ordinary array baseline score6032 to2611; stack spills still differ. Check full assembly and actual generated constant loads rather than interpreting the score alone or confusing shifted rodata addresses with constant merging.
