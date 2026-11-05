`incorrect ASM`

In `func_800C613C_D50EC`, the motion pointer spilled through its named local at `0x44(sp)` rather than the target anonymous slot `0x24(sp)`. Masking its repeated accesses and observing the same pointer before the first color store in both branches fixed those homes, but an extra `if (1)` scope in the supplied-color branch left the input colors in `a1` and the motion pointer in `a0`:

```asm
lw a1,0x60(sp)
/* Motion pointer formation: */
addiu a0,a2,8
```

-> `code changed`

Use the same opaque identity for the typed motion accesses and the early observer in each color branch:

```c
#define MOTION_STATE ((EffectInterpolationState *)((u32)motion & -1U))
motion = (EffectInterpolationState *)(s32)&((Unk80154318Entry *)linkedAddress)->interpolation; linkedAddress = (s32)motion;
if (MOTION_STATE) {}
/* Root colors, then MOTION_STATE->bytes[] colors. */
```

Remove the additional `if (1) { ... }` around the pointer definition, address overwrite, and observer in the supplied-color branch. Preserve the two assignments on the same physical source line. Keep both early observers and the later masked accesses.

The diagnostic UOPT output is identical to the native build. Removing that region changes the input-color web's priority from `save=4, nocs=3` to `save=6, nocs=2`; its total remains 12. The motion-expression web remains `save=4.8, nocs=5`. The input pointer now receives `a0` before the motion expression receives `a1`. No emitted condition is needed for the early observer.

-> `correct ASM`

```asm
lw a0,0x60(sp)
/* Motion pointer formation: */
addiu a1,a2,8
/* Motion pointer survives the random-number calls at 0x24(sp). */
```

All 263 instructions match, including the `0x50` frame, every register, and every stack offset. The full native US ROM checksum passes.
