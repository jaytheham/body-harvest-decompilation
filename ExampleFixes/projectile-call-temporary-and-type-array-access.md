```asm
/* Incorrect ASM, func_800865F4_955A4, ROM 0x956C0 onward:
 * A cached AlienType pointer permits different call preparation. */
lh    a1,0x20(s0)
lh    a2,0x22(s0)
lh    a3,0x24(s0)
negu  a1,a1
sll   t6,a1,0x10
addiu t0,sp,0x40
sw    t0,0x18(sp)
sra   a1,t6,0x10
```

```c
/* Code changed: retain the type index and access the array directly. */
/* Before */
type = &alienTypes[typeIndex];
func_80128428_1373D8(alien, -type->unk20, type->unk22, type->unk24,
                     &otherX, &otherY, &otherZ);
/* After: use direct array access throughout the function, including stores. */
func_80128428_1373D8(&alienInstances[arg0],
                     -alienTypes[typeIndex].unk20,
                     alienTypes[typeIndex].unk22,
                     alienTypes[typeIndex].unk24,
                     &otherX, &otherY, &otherZ);
```

```asm
/* Correct ASM: also restores the late counter/type-store scheduling. */
lh    a1,0x20(s0)
addiu t0,sp,0x40
sw    t0,0x18(sp)
negu  a1,a1
sll   t6,a1,0x10
sra   a1,t6,0x10
lh    a2,0x22(s0)
lh    a3,0x24(s0)
```

```asm
/* Incorrect ASM: the remaining two offsets differ by four bytes. */
/* 0x95680 */ sw a0,0x30(sp)
/* 0x956F4 */ lw a0,0x30(sp)
/* CFE reserves an anonymous word at local offset -36 for nested call results. */
```

```c
/* Code changed: replace the flags local with a typed projectile local.
 * All three nested calls must be separated; leaving any one nested retains
 * the anonymous CFE word. Direct array accesses let IDO cache the flags itself.
 * Keep declarations: originX/Y/Z, projectile, typeIndex, otherX/Y/Z. */
/* Before */
s32 instanceFlags;
func_80086270_95220(func_80129354_138304(entity, weapon, x, y, z));
/* After */
Projectile *projectile;
projectile = func_80129354_138304(entity, weapon, x, y, z);
func_80086270_95220(projectile);
/* Replace the explicit flags local with alienInstances[arg0].unk20 reads
 * in the flag test and XOR assignment. */
```

```asm
/* Correct ASM: the anonymous word is removed, the unused spill reservations
 * shift by four bytes, and the existing 0x60 frame and coordinate homes remain. */
/* 0x95680 */ sw a0,0x34(sp)
/* 0x956F4 */ lw a0,0x34(sp)
```
