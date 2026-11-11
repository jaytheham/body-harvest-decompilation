# Incorrect ASM

In `func_8009811C_A70CC`, multiplying the stage's Z coordinate by
`-2` emitted a negation through `at`. The IDO scheduler loaded Z ahead
of X and delayed the X conversion.

```asm
lb      t6,1(s0)
lb      t7,0(s0)
negu    at,t6
sll     t9,at,1
sll     t8,t7,1
```

# Code changed

Negate the coordinate before doubling it. Compute both float values
before storing the camera coordinates.

```c
temp_f0 = drawItem.stage->x * 2;
temp_f2 = (-drawItem.stage->z * 2) - 0x2E;
cam3A4.targetX = temp_f0;
cam3A4.targetY = temp_f2;
```

# Correct ASM

The target sequence loads X first and moves its integer result to
the FPU before the Z offset calculation.

```asm
lb      t9,0(s0)
lb      t8,1(s0)
sll     t6,t9,1
negu    t7,t8
mtc1    t6,$f6
sll     t9,t7,1
addiu   t6,t9,-0x2e
```
