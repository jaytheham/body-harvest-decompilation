```asm
lhu     a0,0x122(sp)
# first sins call
lhu     a0,0x122(sp)
# later coss call
```
->
```c
/* func_800F554C_1044FC: keep the s32 angleA local, but remove:
 * if (&angleA) {}
 */
sinB = (f32)((f64)(f32)sins(angleA) / 32768.0);
cosBValue = coss(angleA);
```
->
```asm
lhu     a0,0x122(sp)
sw      a0,0x54(sp)
# first sins call
lw      a0,0x54(sp)
# later coss call
```
