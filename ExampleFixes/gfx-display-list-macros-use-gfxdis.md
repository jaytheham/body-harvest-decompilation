### GFX display list macros: use `gfxdis.ps1` to decode raw word writes

When you see raw word writes to a display list pointer:
```c
temp_v0 = D_8005BB2C++;
temp_v0->words.w0 = 0xBC00000E;
temp_v0->words.w1 = (s32) D_801493D6;
```
Run `.\tools\gfxdis.ps1 -w BC00000E 00000000` to get `gsSPPerspNormalize(0)`, then use the macro form:
```c
gSPPerspNormalize(D_8005BB2C++, D_801493D6);
```
This eliminates the temp pointer variables and often improves register allocation.