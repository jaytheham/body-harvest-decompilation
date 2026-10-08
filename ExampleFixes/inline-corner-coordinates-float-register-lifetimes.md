# Inline corner coordinates to match floating-point allocation

func_8010E684_11D634 matched after removing the valueX and valueZ f32 locals and directly converting each coordinate difference:

```c
deltaX = (s32)((D_80159D78[i] + playerX) - alienX);
deltaZ = (s32)((D_80159D98[i] + playerZ) - alienZ);
```

The named intermediate coordinate assignments produced the correct arithmetic but assigned the four cached input coordinates to f12, f14, f16, and f18 instead of the target f0, f2, f12, and f14. They also changed register allocation and scheduling throughout the later trig expressions. Inlining the intermediates fixed the whole function without changing the frame or loop structure. Full ROM verification passed.
