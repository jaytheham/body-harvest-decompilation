# Incorrect ASM

The map marker loops shared saved instance pointers. The display-list
pointer was assigned to `s3`, and each texture block loaded the command
constant again.

```asm
addiu   s3,s3,%lo(D_8005BB2C)
...
lui     t8,0xf300
...
lui     t8,0xf300
```

# Code changed

Retain the instance index in the vehicle and alien loops. Access each
instance through its array rather than keeping a pointer in the shared
scratch union. Use indices in the vehicle model paths as well.

```c
temp_t3 = D_80158E80[var_s1];
if ((&vehicleInstances[temp_t3] != D_80052B34) &&
    ((currentLevel != LEVEL_GREECE) || (vehicleInstances[temp_t3].unk1A != 0x12))) {
    func_80095D4C_A4CFC(vehicleInstances[temp_t3].unk0, vehicleInstances[temp_t3].unk4,
                         0xF, 0xE6, 0xF);
}
```

# Correct ASM

The display-list pointer and texture command use the target saved
registers, with one command load before the frame loop.

```asm
addiu   s2,s2,%lo(D_8005BB2C)
...
lui     s8,0xf300
...
sw      s8,0(v1)
```
