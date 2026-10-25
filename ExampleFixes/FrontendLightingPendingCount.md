```asm
/* func_8007F580_4FA30: incrementing the byte count before the color stores
   consumes t9 for truncation, shifting the six color-load temporaries. */
addiu   s4,s4,1
andi    t9,s4,0xff
addu    v0,s1,s2
lbu     t0,0x14(v0)
move    s4,t9
sb      t0,8(s0)
```
->
```c
/* Replace lightCount++ before the stores with a pending byte count.
   Both lightCount and nextCount are u8. Commit it after the six stores. */
nextCount = lightCount;
nextCount++;
light->l[0].l.col[0] = sourceList[iter].unk14;
light->l[0].l.colc[0] = sourceList[iter].unk14;
light->l[0].l.col[1] = sourceList[iter].unk15;
light->l[0].l.colc[1] = sourceList[iter].unk15;
light->l[0].l.col[2] = sourceList[iter].unk16;
light->l[0].l.colc[2] = sourceList[iter].unk16;
lightCount = nextCount;
```
->
```asm
/* IDO keeps the pending count in t5, leaving t9 for the first color load.
   The resulting function matches in both US and EU builds. */
addiu   s4,s4,1
andi    t5,s4,0xff
addu    v0,s1,s2
lbu     t9,0x14(v0)
lui     v1,0x800d
move    s4,t5
sb      t9,8(s0)
```
