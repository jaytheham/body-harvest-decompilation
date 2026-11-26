# Incorrect ASM

Reusing one stage pointer during startup and interactive movement made
IDO hold the startup pointer in `t4`.

```asm
addu    t4,t2,t7
lh      t6,-0x2a(t4)
```

# Code changed

Use the existing `stageTable` pointer for startup and the five camera
initializers. Use `stage` for the movement bounds.

```c
stageTable = &D_8013D2D0_14C280.entries[currentLevel * 5 + D_80047F94 - 5];
cam3CC.distance = stageTable->unk8;
```

# Correct ASM

```asm
addu    a3,t2,t7
lh      t6,-0x2a(a3)
```
