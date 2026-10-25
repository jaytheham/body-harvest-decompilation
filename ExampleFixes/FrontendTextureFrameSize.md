```asm
lw      t2,0(v1)
move    a1,v0
multu   t7,t8
mflo    t9
```
->
```c
/* func_80081A50_51F00: calculate the frame size before passing img to gDPLoadTextureBlock_4b. */
u8 *img;
s32 size;

size = arg0->unk14 * arg0->unk15;
size /= 2;
img = &arg0->img[arg0->unk10 * size];
```
->
```asm
lw      t3,0(v1)
lw      t6,0(a0)
multu   t7,t8
lhu     t7,0x10(a0)
move    a1,v0
li      a1,0x7ff
mflo    t0
```
