`func_802D68F4_1EF604`: incorrect ASM -> code changed -> correct ASM

```asm
andi a0,rawColor,0xf800
# Red extraction is tied directly to the first argument register.
```
-> Extract the three channels into shared word locals, overwrite the packed-color local with 12 before the first blend, and pass `red >> 0` as that blend's first argument.
->
```asm
andi v1,rawColor,0xf800
# RGB extraction and all three blend argument webs now match.
```

```asm
addiu v0,v0,0x7f8c
sh zero,0x7f8e(at)
```
-> Keep each complete counter update on one physical source line:
```c
if (D_80157F8E++ >= 161) { D_80157F8E = 0; D_80157F8C += 1; }
```
Apply the same grouping to the threshold-101 update.
->
```asm
sh zero,0x7f8e(at)
addiu v0,v0,0x7f8c
```
