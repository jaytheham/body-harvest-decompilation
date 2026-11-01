`func_80003DE8_49E8` — incorrect ASM -> code changed -> correct ASM

```asm
negu    t4,t0
sll     t5,t4,1
sw      t5,8(s0)
negu    t5,a2
mflo    t6
sra     t7,t6,15
sll     t8,t7,1
```
-> Keep the independent stores in row order: calculate both cosine elements before the sine negation.
```c
D_800476C8[0].unk0 = ((sp3C * sp2C) >> 15) * 2;
D_800476C8[0].unk4 = ((sp3C * temp1) >> 15) * 2;
D_800476C8[0].unk8 = (-sp38[0]) * 2;
```
-> UGEN allocates the cosine results in t4 through t9, then the negation in t2/t3. Scheduling still hoists the negation before the first MFLO, filling multiply latency.
```asm
negu    t2,t0
sll     t3,t2,1
sw      t3,8(s0)
mflo    t4
sra     t5,t4,15
sll     t6,t5,1
multu   t1,v0
negu    t5,a2
sw      t6,0(s0)
```
