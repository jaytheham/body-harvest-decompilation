incorrect ASM
```asm
lw      s2,0x54(sp)
lui     t8,0x800b
addiu   t8,t8,-0x1278
sll     t7,t6,0xb
lw      s1,0x58(sp)
addu    t5,t7,t8
sll     t7,s2,0x2
addiu   s2,t7,-1
```
-> code changed
```c
/* func_80075710_45BC0, src.us/overlay_gameplay/frontend/40720.c */
/* Before: precomputing both invariant bounds gives the top mask s1. */
rowTop = rowTopY << 2;
rowBottom = (rowBottomY << 2) - 1;
gSPTextureRectangle(D_8005BB2C++, rowTextureOffset << 2, rowTop,
                    (right << 2) - 1, rowBottom,
                    G_TX_RENDERTILE, 0, 0, 0x1000, 0x400);

/* After: the macro owns both expressions, evaluating bottom before top. */
right = (s16)rowTextureOffset + 0x20;
gDPSetTileSize(D_8005BB2C++, G_TX_RENDERTILE, 0, 0, 0x7C, 0x7C);
gSPTextureRectangle(D_8005BB2C++, rowTextureOffset << 2, rowTopY << 2,
                    (right << 2) - 1, (rowBottomY << 2) - 1,
                    G_TX_RENDERTILE, 0, 0, 0x1000, 0x400);
```
-> correct ASM
```asm
lw      s1,0x54(sp)
lw      s2,0x58(sp)
lui     t8,0x800b
sll     t7,t6,0xb
addiu   t8,t8,-0x1278
sll     t9,s1,0x2
addiu   s1,t9,-1
addu    t5,t7,t8
```
