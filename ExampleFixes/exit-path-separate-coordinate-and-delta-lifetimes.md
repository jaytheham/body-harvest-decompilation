# Separate coordinate and delta lifetimes (partial)

In `func_800EBE74_FAE24`, reusing the full-word world coordinates as signed-short differences gives the wrong integer allocation:

```asm
lw    a2,0x64(sp)
subu  v0,t4,v0
subu  a1,t7,t3
mtc1  a1,$f4
mtc1  v0,$f16
```

-> Keep the stored Z coordinate in an `s16` immediately after `rotatedX` (using the existing halfword alignment gap). Give the two differences separate `s32` locals, and repeat the X position expression in the subtraction so IDO can cache it independently:

```c
s16 rotatedX;
s16 z;
s32 deltaX;
s32 deltaZ;
/* ... */
D_801575E0.unk6 = vehicleInstances[arg1].unk0 + rotatedX;
/* ... */
z = vehicleInstances[arg1].unk4 + (s32)(cosYaw * zOff + xOff * temp_f0);
D_801575E0.unkE = z;
deltaX = (s16)(arg3->unk0 - (vehicleInstances[arg1].unk0 + rotatedX));
deltaZ = (s16)(arg3->unk4 - z);
D_801575E0.unk12 = func_80003824_4424(deltaX, deltaZ) + 0x8000;
```

-> The argument pointer and difference registers now agree with the target, without increasing the `0x58` frame or changing the floating-point sequence:

```asm
lw    a3,0x64(sp)
subu  a1,t4,v0
subu  a2,t7,t3
sll   t5,a1,0x10
sll   t8,a2,0x10
sra   a1,t5,0x10
sra   a2,t8,0x10
mtc1  a2,$f4
mtc1  a1,$f16
```

The temporary `t` registers and one addition's scheduling still differ. This is a partial correction, not a complete match; the function retains its `NON_MATCHING` wrapper.
