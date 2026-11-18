```asm
sw      t7,8(s0)
# argument setup and offset spills
jal     func_800B84D0_C7480
sw      a3,0x5c(sp)
lw      a3,0x5c(sp)
lw      t0,0x58(sp)
```

->

```c
/* Before */
entry = (Unk857E0Obj*)(s32)&D_80259D90[obj];
/* After */
entry = (Unk857E0Obj*)&D_80259D90[obj];
entry->unk8 = (u32)tempTable->texture;
temp = func_800B84D0_C7480(vertexX, vertexZ) >> 8;
```

->

```asm
# argument setup and offset spills
jal     func_800B84D0_C7480
sw      t7,8(s0)
sh      s2,0x10(s0)
lh      t8,4(s1)
# Offset reloads remain after the first vertex writes.
```