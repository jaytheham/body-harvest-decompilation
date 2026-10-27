incorrect ASM
```asm
sw      v0,0x54(sp)
andi    a0,s0,0xffff
sw      v1,0x4c(sp)
jal     sins
```
-> code changed
```c
/* Before */
entry[0] = &D_80154318[arg0];
dist = arg1;
scaleSin = (f32)(((f32)sins(angleX) / 32768.0) * dist);
/* After: func_800D5760_E4710 */
dist = arg1;
scaleSin = (entry[0] = &D_80154318[arg0],
            (f32)(((f32)sins(angleX) / 32768.0) * dist));
```
-> correct ASM
```asm
andi    a0,s0,0xffff
sw      v0,0x54(sp)
sw      v1,0x4c(sp)
jal     sins
```
