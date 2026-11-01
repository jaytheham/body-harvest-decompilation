`func_8008247C_16A53C`:

```asm
# Incorrect: assign to s16 first, reload the already-narrowed yaw,
# then optimize away the manual sign/mask adjustment.
sh t4,0(t0)
lh a1,0(t0)
bgez a1,printYaw
move v0,a1
```

-> Use `inWallYaw = (cameraYaw + 0x4000) % 0x10000;` and pass both `inWallYaw` and `cameraYaw` to the diagnostic print. The remainder must operate on the full sum before storing the halfword.

->

```asm
# Correct: signed remainder of the full sum before the halfword store.
lh a2,0(a3)
addiu t6,a2,0x4000
ori at,zero,0xffff
bgez t6,storeYaw
and t4,t6,at
beqz t4,storeYaw
addiu at,at,1
subu t4,t4,at
storeYaw:
sh t4,0(t0)
lh a1,0(t0)
```
