## incorrect ASM

Repeated, separate HUD vertex color assignments kept the vertex-cursor address and color constants in saved registers:

```mips
addiu   sp,sp,-0x108
sw      ra,0x24(sp)
lui     s0,0x8006
addiu   s0,s0,-0x44cc
```

->

## code changed

Use complete chained assignments for shared byte colors, preserving right-to-left store order. In particular, chain both icon color channels in one expression rather than eight separate constant assignments:

```c
vtx0->v.cn[0] = vtx3->v.cn[0] = 0xFF;
vtx2->v.cn[0] = vtx1->v.cn[0] = 0xFF;

vtx0->v.cn[2] = vtx1->v.cn[2] = vtx3->v.cn[2] = vtx2->v.cn[2] =
    vtx0->v.cn[1] = vtx1->v.cn[1] = vtx3->v.cn[1] = vtx2->v.cn[1] = 0xFF;
```

This restores the frame and removes the unwanted saved-register pressure. It is a verified partial fix in `func_8008BD18_173DD8`; remaining color-value register allocation still requires matching.

->

## correct ASM

```mips
addiu   sp,sp,-0x100
sw      ra,0x1c(sp)
lui     ra,0x8006
addiu   ra,ra,-0x44cc
```
