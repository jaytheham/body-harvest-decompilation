# Animation-state base register in `func_8007DDA0_165E60`

**Incorrect ASM**

```asm
lui     at,0x800e
lwc1    f10,0x6f1c(at)
```

**Code changed**

Cast `D_800E6F00` through `u32` when assigning the animation-state pointer. A direct pointer cast let IDO fold the float access into a separate symbolic address. The unsigned word cast retained the pointer used for the integer fields.

**Correct ASM addressing**

```asm
lwc1    f10,0x1c(stateBase)
```

The float load now uses the existing state base and the same displacement as the target. The base register allocation still differs.
