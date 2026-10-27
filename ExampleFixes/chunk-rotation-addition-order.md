# Interleaving unsigned rotation and signed angular velocity

incorrect ASM:
```asm
lb  t2, 6(v1)
lbu t3, 3(v1)
lb  t5, 7(v1)
lbu t9, 4(v1)
```

code changed:
```c
motion->rotation[0] += motion->angularVelocity[0];
motion->rotation[1] += motion->angularVelocity[1];
motion->rotation[2] += motion->angularVelocity[2];
```

correct ASM:
```asm
lbu t3, 3(v1)
lb  t4, 6(v1)
lbu t9, 4(v1)
lb  t8, 7(v1)
```
