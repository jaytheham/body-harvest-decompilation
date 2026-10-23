`incorrect ASM`

In `func_800E5538_F44E8`, every instruction, register, and instruction position matched except the frame and transform offsets:

```asm
addiu sp,sp,-0xe0
sh    t5,0xc0(sp)
/* Rotation at sp+0xc8; position at sp+0xd0. */
```

`code changed`

Declare `Gfx *gfx` after the timer local. Reuse it for the initial pipe sync, initial geometry command, and pipe sync following `gSPTexture`:

```c
gfx = D_8005BB2C++;
gfx->words.w0 = _SHIFTL(G_RDPPIPESYNC, 24, 8); gfx->words.w1 = 0;
/* Existing render-mode command. */
gfx = D_8005BB2C++;
gfx->words.w0 = _SHIFTL(G_SETGEOMETRYMODE, 24, 8); gfx->words.w1 = G_LIGHTING;
/* Existing loop, texture load, and gSPTexture command. */
gfx = D_8005BB2C++;
gfx->words.w0 = _SHIFTL(G_RDPPIPESYNC, 24, 8); gfx->words.w1 = 0;
```

Keep each pointer assignment on its own source line and each pair of word writes together on the following physical line, as in matched `func_800A70B8_B6068`. Putting the pointer assignment and both word writes on one line changes scheduling. Sharing only the first two packets preserves all instructions but leaves the excess frame; sharing all three removes it.

`correct ASM`

```asm
addiu sp,sp,-0xd8
sh    t5,0xb8(sp)
/* Rotation at sp+0xc0; position at sp+0xc8. */
```

The full function diff is zero. Both `build/bh.us.z64` and `build.eu/bh.eu.z64` report `OK`.
