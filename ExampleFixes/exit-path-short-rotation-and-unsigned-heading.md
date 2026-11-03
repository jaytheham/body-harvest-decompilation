# Exit path: short rotation and unsigned heading

`func_800EBE74_FAE24` had matching arithmetic but incorrect anonymous integer registers and a shifted coordinate addition:

```asm
lh    t5,2(s0)
lh    t6,0x4e(sp)
lh    t1,4(s0)
addu  v0,t3,t4
addu  t8,t5,t6
/* ... */
mfc1  t0,$f10
addu  t3,t1,t0
```

-> Capture X as a signed halfword in a word local, keep separate halfword deltas, and narrow the rotated Z displacement before adding the vehicle position. Declare `x` first; put `cosYaw` after the two short deltas and before the shared trig local. This preserves the `0x58` frame and the existing offset/trig spill homes.

```c
s32 x;
s16 y;
s16 xOff, yOff, zOff, rotatedX, z;
s16 deltaX, deltaZ;
f32 cosYaw;
f32 trigValue;
/* ... */
x = (s16)(vehicleInstances[arg1].unk0 + rotatedX);
D_801575E0.unk6 = x;
y = vehicleInstances[arg1].unk2 + yOff;
D_801575E0.unkA = y;
z = vehicleInstances[arg1].unk4 + (s16)(cosYaw * zOff + xOff * trigValue);
D_801575E0.unkE = z;
deltaX = arg3->unk0 - x;
deltaZ = arg3->unk4 - z;
```

-> The signed-short conversions disappear from the emitted arithmetic, but their compiler temporaries restore the target's addition scheduling and register sequence:

```asm
lh    t7,2(s0)
lh    t8,0x4e(sp)
addu  v0,t3,t4
lh    t5,4(s0)
lw    a3,0x64(sp)
addu  t0,t7,t8
/* ... */
mfc1  t4,$f10
addu  t7,t5,t4
```

The remaining final-store mismatch was:

```asm
lh    t4,0x5a(sp)
addu  t5,v0,at
lh    t6,0x5e(sp)
sh    t5,0x12(s1)
```

-> Interpret the angle return as an unsigned halfword before applying the half-turn:

```c
D_801575E0.unk12 = (u16)func_80003824_4424(deltaX, deltaZ) + 0x8000;
```

-> No mask instruction remains, but the late conversion changes the temporary allocation to the exact target:

```asm
lh    t6,0x5a(sp)
addu  t4,v0,at
lh    t7,0x5e(sp)
sh    t4,0x12(s1)
```

The complete function has diff score 0 and the full US ROM checksum passes with its C implementation enabled.
