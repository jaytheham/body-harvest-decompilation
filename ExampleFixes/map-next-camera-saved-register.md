# Incorrect ASM

In `func_8009811C_A70CC`, the next camera shared a union with the
stage entries and texture pointer. IDO spilled the camera across the
interpolation call.

```asm
sw      a1,0x268(sp)
jal     func_80097CB4_A6C64
...
lw      a1,0x268(sp)
```

# Code changed

Give the destination camera its own `OrbitCam *nextCamera` local.
Load it from `sp320[0]` and use it for the interpolation and the
subsequent transition.

# Correct ASM

```asm
move    a1,s0
...
jal     func_80097CB4_A6C64
...
bne     s0,t6,.L80098858_A7808
 move   s3,s0
```
