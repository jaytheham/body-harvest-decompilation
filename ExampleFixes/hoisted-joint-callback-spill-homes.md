incorrect ASM (`func_802DC4D0_2BE900`, callback nested in the effect-spawn arguments):

```asm
sw      t1,0x3c(sp)
...
jal     sins
 sw     a0,0x40(sp)
```

-> code changed:

```c
s32 limbFlags;
/* Use an existing word home instead of a new nested-call temporary. */
limbFlags = func_8008916C_9811C(arg0, leftLimb);
effectIndex = func_800C7924_D68D4((s16)worldX, (s16)worldY,
    (s16)worldZ, 0x40, -8, alienTypes[alien->typeIndex].unkC,
    limbFlags, 1);
```

Apply the same hoist to the second limb. The callback already executes
before the type-field read in the nested form. Hoisting into the existing
word removes a frontend temporary without changing any instructions;
the two compiler spill homes move up four bytes while the 0x98 frame and
all source-local offsets stay fixed.

-> correct ASM:

```asm
sw      t1,0x40(sp)
...
jal     sins
 sw     a0,0x44(sp)
```
