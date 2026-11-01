```asm
lbu     t8,0x426(a1)
lbu     t0,0x425(a1)
sll     t9,t8,0x2
subu    t9,t9,t8
```
->
```c
/* func_8007F878_167938: name both table indices before the call. */
u8 category;
u8 model;
category = D_800E6AD8.unk426;
model = D_800E6AD8.unk425;
func_8000CF4C_DB4C(temp, ptr,
    D_8009E4C8_186588[category][model].unkC,
    *(s32 *)&D_800E6AD8.unk410);
```
->
```asm
lbu     v0,0x426(a1)
lbu     v1,0x425(a1)
sll     t8,v0,0x2
subu    t8,t8,v0
```
