```asm
addiu   sp,sp,-0x70
lbu     t3,0x53(sp)
lbu     t5,0x52(sp)
sw      t1,0x24(sp)
```
->
```c
/* func_8007F8F4_1679B4: declare position, scale, rotation, category,
   model, translation in that order. Use existing vector structs.
   Remove the table-entry pointer and repeat direct indexed fields. */
category = D_800E6AD8.unk426;
model = D_800E6AD8.unk425;
position.unk0 = arg0 << 16;
position.unk4 = arg1 << 16;
position.unk8 = arg2 << 16;
/* ... */
func_8000CC3C_D83C(&D_800E6AD8,
    D_8009E4C8_186588[category][model].unkC);
gSPDisplayList(D_8005BB2C++, K0_TO_PHYS(
    D_8009E4C8_186588[category][model].unk0));
```
->
```asm
addiu   sp,sp,-0x68
lbu     t3,0x4B(sp)
lbu     t5,0x4A(sp)
sw      t1,0x20(sp)
```
