# Incorrect ASM

In the stage-selection transition of `func_8009811C_A70CC`, keeping the source camera's Z coordinate in the shared float scratch put the load and store in `$f2`.

```asm
lwc1    $f2,0x10(s3)
...
jal     func_800153D8_15FD8
 swc1   $f2,0x33c(sp)
```

# Code changed

Copy Z directly after X and Y, before changing the active camera pointer.

```c
cam32C.targetX = var_s3->targetX;
cam32C.targetY = var_s3->targetY;
cam32C.targetZ = var_s3->targetZ;
```

# Correct ASM

IDO uses the temporary `$f10` and leaves the store in the call delay slot. The load at `0xA7950` and store at `0xA7984` match the target words.

```asm
lwc1    $f10,0x10(s3)
...
jal     func_800153D8_15FD8
 swc1   $f10,0x33c(sp)
```
