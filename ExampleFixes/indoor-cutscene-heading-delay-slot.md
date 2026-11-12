# Heading branch delay slot in `func_8007DDA0_165E60`

**Incorrect ASM**

```asm
beq     v0,at,headingDone
 nop
# At headingDone:
lui     v0,0x800a
lw      v0,0x908(v0)
```

**Code changed**

Read the path heading into the existing `targetYaw` local instead of declaring a separate `heading` local. Use `targetYaw` for the sentinel check and yaw conversion.

**Correct ASM order**

```asm
beq     headingReg,at,headingDone
 lui    stepReg,0x800a
# At headingDone:
lw      stepReg,0x908(stepReg)
```

IDO assigns separate registers to the heading and timeline step, which puts the address load in the existing delay slot and removes the extra instruction. The registers still differ from the original.
