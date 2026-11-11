# Incorrect ASM

In the simple vehicle marker loop in `func_8009811C_A70CC`,
repeating the vehicle array access scheduled the coordinates and
fifth argument differently from the target.

```asm
sw      t7,0x10(sp)
lh      a0,0(v0)
lh      a1,4(v0)
li      a2,0xf
```

# Code changed

Keep the vehicle instance pointer in the existing pointer union for
this loop and use it in the player-vehicle check, type check and draw
call.

```c
scratch.vehicle = &vehicleInstances[temp_t3];
if ((scratch.vehicle != D_80052B34) &&
    ((currentLevel != LEVEL_GREECE) || (scratch.vehicle->unk1A != 0x12))) {
    func_80095D4C_A4CFC(scratch.vehicle->unk0, scratch.vehicle->unk4,
        0xF, 0xE6, 0xF);
}
```

# Correct ASM

```asm
lh      a0,0(v0)
lh      a1,4(v0)
li      t9,0xf
sw      t9,0x10(sp)
li      a2,0xf
jal     func_80095D4C_A4CFC
 li     a3,0xe6
```
