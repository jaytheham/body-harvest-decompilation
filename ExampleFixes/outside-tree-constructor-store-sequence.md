incorrect ASM (`func_80076A10_859C0`, partial checkpoint):

```asm
sh      s2,0xa8(sp)
sh      t5,0xac(sp)
move    a0,t7
move    a1,t4
```

-> code changed:

```c
spA8.unk0 = x, spA8.unk4 = z,
spA8.unk2 = (s16)(func_800B84D0_C7480_4Args(x, z, zOff, z) >> 8);
```

-> correct ASM for the argument/store ordering:

```asm
move    a0,t7
move    a1,t4
sh      s1,0xa8(sp)
sh      t5,0xac(sp)
```

This groups position setup and the call on one source statement. The function remains guarded because other differences remain.

`incorrect ASM`:

```asm
lw      t5,0(s1)       # 0x85d94
sll     t8,t3,2
addu    t8,t8,t3
```

-> `code changed`:

```c
entry = &D_80259D90[obj];
entry->unk8 = (void *)tempTable->texture;
vertexX = D_801416B0_150660[inner][0] + xOff;
vertexZ = D_801416C0_150670[inner][0] + zOff;
```

-> `correct ASM`:

```asm
sll     t9,t3,2        # 0x85d94
lw      t6,0(s1)
addu    t9,t9,t3
```

`incorrect ASM` for the model X store:

```asm
addiu   t7,sp,0xa8
sh      s1,0(t7)
```

-> `code changed`: Add a signed halfword array view to the position union and write the model X and height through its constant indices.

```c
spA8.halfwords[0] = x,
spA8.plain.unk4 = z,
spA8.halfwords[1] = func_800B84D0_C7480(x, z) >> 8;
```

-> `correct ASM` for the direct store encoding:

```asm
sh      s1,0xa8(sp)
```

The direct store still needs to move into the height call's delay slot.

`incorrect ASM` for the model X store position:

```asm
85bd0: sh      s1,0xa8(sp)
```

-> `code changed`: Capture the scaled terrain height, then assign the X and height halfwords in the same comma expression.

```c
spA8.plain.unk4 = z,
temp = func_800B84D0_C7480(x, z) >> 8,
spA8.halfwords[0] = x,
spA8.halfwords[1] = temp;
```

-> `correct ASM` for the X store's instruction word and address:

```asm
85bdc: sh      s1,0xa8(sp)
```

The object-index spill still occupies the generated call's delay slot.

`incorrect ASM` for the second billboard vertex's store order:

```asm
85e74: sh      t9,0x2a(s0)
85e78: sb      t8,0x2f(s0)
```

-> `code changed`: Keep the texture-coordinate and alpha assignments on the same physical C line so the assembler sees the same line priority for both stores.

```c
entry->vertices[1].v.tc[1] = (tempTable->scale << 0xB) - 0x20; entry->vertices[1].v.cn[3] = 0xFF;
```

-> `correct ASM` for store order, with temporary registers still differing:

```asm
85e74: sb      t8,0x2f(s0)
85e78: sh      t9,0x2a(s0)
```

`incorrect ASM` for the model height call:

```asm
85bd4: jal     func_800B84D0_C7480
85bd8: sw      v0,0x90(sp)
85bdc: sh      s1,0xa8(sp)
```

-> `code changed`: Write both position halfwords before the call. Give the Z store and call the same logical source line, and give the X store the next logical line. The assembler trace shows that a source-level X store after the call enters a separate scheduling block.

```c
#line 177
spA8.plain.unk4 = z;
spA8.halfwords[0] = x;
#line 177
spA8.halfwords[1] = func_800B84D0_C7480(x, z) >> 8;
```

-> `correct ASM` at all three addresses:

```asm
85bd4: sw      v0,0x90(sp)
85bd8: jal     func_800B84D0_C7480
85bdc: sh      s1,0xa8(sp)
```
