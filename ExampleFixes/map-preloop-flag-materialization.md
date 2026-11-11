# Incorrect ASM

The initial map flag and later frame-loop flag shared a saved immediate.
The first camera-motion flag store consequently reused the loop register.

```asm
jal     func_8000AFDC_BBDC
 sw     s5,0x284(sp)
```

# Code changed

Write the initial map flag through its corresponding unsigned word type.
The flag value and destination stay the same.

```c
*(u32 *)&D_8014ED34 = 1;
```

# Correct ASM

IDO materializes the camera-motion flag separately for the pre-loop store.

```asm
li      t9,1
jal     func_8000AFDC_BBDC
 sw     t9,0x284(sp)
```
