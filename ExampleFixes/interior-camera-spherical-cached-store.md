`func_80080190_168250`:

```asm
# Incorrect inline update: rematerializes a global store address.
lui at,0x800e
div.s f4,f10,f14
add.s f6,f12,f4
swc1 f6,0x7430(at)
```

-> Cache the source X coordinate in the existing float temporary, use that cached value throughout the recovery comparison, and retain the integer roundtrip on the typed destination pointer:

```c
temp_f0 = D_800E73F0.x;
((Vec3f *)(s32)&D_800E7430)->x = D_800E7430.x * 1.0f +
    (temp_f0 - D_800E7430.x) / divisor;
```

The integer roundtrip retains an indirect store through the existing address register. Caching the source avoids an alias-induced reload. The identity multiply emits no instruction but preserves the target ADD.S operand order; removing either the cast or identity changes the generated code.

->

```asm
# Correct: anonymous quotient f4, cached destination v0, early threshold f18.
lui at,0x3f80
mtc1 at,f18
div.s f4,f10,f14
add.s f6,f12,f4
swc1 f6,0(v0)
```