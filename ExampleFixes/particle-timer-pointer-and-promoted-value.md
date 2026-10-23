# Particle timer pointer and promoted timer value

Incorrect ASM (`func_800E2830_F17E0`): direct repeated scalar access keeps the timer address in `s0` over the particle initializer call.

```asm
sw    s0,0x20(sp)
lui   s0,%hi(D_8013E408_14D3B8)
addiu s0,s0,%lo(D_8013E408_14D3B8)
lbu   v0,0(s0)
...
sb    zero,0(s0)
```

-> Code changed:

```c
u8 i;
s16 value;
s32 velocity;
s16 didShrink;
s32 xOffset;
u8 *timer;

didShrink = 0;
timer = &D_8013E408_14D3B8;
value = *timer;
if (value == 5) {
    if (D_80154300 < D_80154308) {
        func_800E2750_F1700(D_80154300);
        D_80154300++;
    }
    *timer = 0;
} else {
    *timer = value + 1;
}
```

Use a separate promoted value instead of reusing the particle index: the byte index retains the initial address high half in `s1`. A separate byte timer local puts the loaded value in `v1`; a short or word local puts it in the target `v0`. The final declaration order retains the shrink flag at `sp+0x4E` and the `0x58` frame. The short scratch can also hold the later `sins` result.

-> Correct ASM:

```asm
lui v0,%hi(D_8013E408_14D3B8)
lbu v0,%lo(D_8013E408_14D3B8)(v0)
...
lui at,%hi(D_8013E408_14D3B8)
sb zero,%lo(D_8013E408_14D3B8)(at)
```
