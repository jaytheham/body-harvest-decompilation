incorrect ASM (`func_8008AC5C_99C0C`):

```asm
sw      v0,0x5c(sp)      # target 0x60
sw      t2,0x64(sp)      # target 0x68
beql    s4,s3,end        # target s3,s4
```

-> code changed:

```c
s32 x, y, z;
s16 velocityX, velocityZ;
s16 effect;
s8 joint;
s32 callbackResult;
s32 sign;
s32 spin;
s32 iteration;

/* Assign the root before spin initialization for the target scratch order. */
joint = D_8014DD50[alienInstances[arg0].unkC].unkC;
spin = 15;
/* Signed comparison, unsigned products retain multu. */
spin *= (u32)sign;
if (joint == sign) { break; }
```

Grouping the byte and halfword locals before the words removes a declaration
alignment gap. Keep the callback result as a word and the effect as a separate
halfword so IDO retains the required sign extensions. Reading the joint array
directly lets IDO own the common joint pointer and allocate it to s0.

-> correct ASM:

```asm
sw      v0,0x60(sp)
sw      t2,0x68(sp)
beql    s3,s4,end
```
