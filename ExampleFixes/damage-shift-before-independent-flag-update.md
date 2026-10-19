## Incorrect ASM

In `func_8012B26C_13A21C`, multiplying damage, setting the alien flag, and then shifting damage produced six register differences at ROM offsets `0x13B334` through `0x13B364`:

```asm
lw    t4,0x20(s3)
...
or    t5,t4,at
multu v0,t2
sw    t5,0x20(s3)
mflo  v0
sra   t3,v0,8
sw    t3,0x13c(sp)
```

## Code changed

Keep multiplication and shifting as separate assignments, and move the shift before the independent flag update. Combining multiplication and shifting into one assignment changes the product's register ownership and does not produce this result.

```c
/* Before: */
impactDamage *= D_80147090_156040[alienTypes[entity.alien->typeIndex].unk5A].damageScale;
entity.alien->unk20 |= ALIEN_FLAG_W;
impactDamage >>= 8;

/* After: */
impactDamage *= D_80147090_156040[alienTypes[entity.alien->typeIndex].unk5A].damageScale;
impactDamage >>= 8;
entity.alien->unk20 |= ALIEN_FLAG_W;
```

## Correct ASM

The assembler schedules the flag update during multiplication. The shift's temporary is now allocated before the flag temporaries, closing the final six differences. The project build reports `build/bh.us.z64: OK`.

```asm
lw    t5,0x20(s3)
...
or    t3,t5,at
multu v0,t2
sw    t3,0x20(s3)
mflo  v0
sra   t4,v0,8
sw    t4,0x13c(sp)
```
