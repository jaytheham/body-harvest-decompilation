```asm
addiu   sp,sp,-0x28
sw      a2,0x20(sp)
lw      t8,0x20(sp)
```
->
```c
/* func_8007F668_167728: remove the s32 copy of the u8 argument
   and the temporary Unk8009E4C8 pointer; index the table directly. */
D_800E6AD8.unk425 = arg1;
D_800E6AD8.unk426 = arg0 - 1;
osSyncPrintf(D_800A4CE8_18CDA8);
D_800E6AD8.unk404 = func_8000C6F4_D2F4();
D_800E6AD8.unk408 = func_8000C6F4_D2F4();
D_800E6AD8.unk410 = 1.0f;
func_8000C790_D390(&D_800E6AD8,
    D_8009E4C8_186588[arg0 - 1][arg1].unk4,
    D_8009E4C8_186588[arg0 - 1][arg1].unkC);
```
->
```asm
addiu   sp,sp,-0x28
sw      a2,0x24(sp)
lw      t8,0x24(sp)
```
