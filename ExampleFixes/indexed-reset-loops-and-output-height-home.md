Incorrect ASM in `func_80112A98_121A48`: explicit decrementing pointers assign
the full-reset vehicle to `s0`, spawn data to `s1`, and the boundary to `s3`.

```asm
lui       s0,0x8005
lui       s1,0x8026
lui       s3,0x8026
...
lh        s2,2(s1)
```

→ Code changed: express the reset as an indexed reverse loop, retaining the
post-decrement comparison. This visits slots 127 through 1.

```c
i = 127;
do {
    vehicle = &vehicleInstances[i];
    spawnData = &D_80259490[i];
    /* Existing reset body. */
} while (i-- > 1);
```

→ Correct ASM: IDO chooses the spawn-data pointer as the primary induction
variable and reproduces the target register assignments and pointer bound.

```asm
lui       s1,0x8005
lui       s0,0x8026
lui       s2,0x8026
...
lh        s3,2(s0)
...
sltu      v0,s0,s2
addiu     s0,s0,-0x12
beqz      v0,loop
addiu     s1,s1,-0x5c
```

Incorrect ASM in the range-limited branch: a named list cursor puts its
initialization before the constant-address and mask initializations.

```asm
addu      s5,s4,t1
addiu     s6,s6,0x7a00
ori       s7,s7,0x7fff
```

→ Code changed: remove the cursor and index the vehicle list directly.

```c
vehicle = &vehicleInstances[D_80158E80[i]];
```

→ Correct ASM:

```asm
addiu     s6,s6,0x7a00
ori       s7,s7,0x7fff
addu      s5,s4,t1
```

Incorrect ASM after removing the cursor declaration: the output halfword is
at `sp+0x62` instead of `sp+0x5E`.

```asm
addiu     s8,sp,0x62
...
lh        t8,0x62(sp)
```

→ Code changed: move the existing quarter-range word declaration out of the
inner block and immediately before the output halfword. Keep its assignment
in the range check. No additional local is needed.

```c
s32 i;
s32 quarterRange;
s16 groundHeight;
```

→ Correct ASM, with the same `0x78` frame and a passing full US ROM checksum:

```asm
addiu     s8,sp,0x5e
...
lh        t8,0x5e(sp)
```
