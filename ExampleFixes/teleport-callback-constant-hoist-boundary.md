## Incorrect ASM

In `func_800A9F34_B8EE4`, the reconstructed callback setup scored 284. IDO hoisted `lw t0,0x64(sp)` to ROM offset B9198 and delayed `li t5,2` until B91CC. The target loads the callback type at B9198, before the parent flag store, and reloads the X coordinate at B91BC. A plain brace block retained the same incorrect schedule.

## Code changed

Keep the parent flag and velocity reset before an explicit constant conditional. Enclose both the child's invincibility flag and the entire callback builder:

```c
alienInstances[parentIndex].unk20 |= ALIEN_FLAG_UNKH;
alien->unk12 = 0;
if (1) {
    alien->unk20 |= ALIEN_FLAG_INVINCIBLE;
    callback.unk1 = rndX >> 8;
    callback.unk2 = rndZ >> 8;
    callback.unk8 = arg0;
    callback.unk0 = 2;
    callback.unk4 = D_8014F820 + 8;
    callback.unkC = func_800A9E1C_B8DCC;
    func_800AE454_BD404(&callback);
}
```

Enclosing only the callback assignments does not reproduce the target.

## Correct ASM

```asm
lw    t6,0x20(v0)
lui   at,0x1
li    t5,2
or    t7,t6,at
sw    t7,0x20(v0)
```

The X and Z reloads remain at B91BC and B91C0. All 259 instructions match, and both native US and EU ROM checks pass.
