`incorrect ASM` → In `func_800F554C_1044FC`, IDO emitted `addiu sp,sp,-0x140` and saved the fourth argument with `sw a3,0x14C(sp)`. It stored the radius at `0x108(sp)` and the first palette channel at `0x10C(sp)`.

`code changed` → Pass `angleA + 0x4000` directly to the first sine and cosine calls. After the last use of the angle, reuse its word for `coss(angleA)`. Remove the separate cosine word, move the texture T declaration after the color locals, and declare the radius before the opacity, lateral sine offset, and first palette channel.

`correct ASM` → At US ROM offset `0x104520`, IDO emits `addiu sp,sp,-0x138`. The fourth argument, radius, and first palette channel use `sw a3,0x144(sp)`, `swc1 $f16,0x10C(sp)`, and `sh t9,0x106(sp)`. The return delay slot restores the frame with `addiu sp,sp,0x138`.

`incorrect ASM` → With the frame size correct, IDO still saved the unsigned angle passed to the last two trig calls with `sw a0,0x50(sp)` and reloaded it with `lw a0,0x50(sp)`.

`code changed` → Use `Vec2_S16` for the two forward offsets and move the `s32 baseBlue` declaration directly after `textureS`, ahead of the three top-color channels.

`correct ASM` → The store at `0x104600` and reload at `0x10462C` both use `0x54(sp)`. The first 88 instructions match the US and EU reference ROMs.

`incorrect ASM` → With `u16 baseBlue` and the three top-color locals declared before `u8 cR`, IDO emitted `sh t8,0xF0(sp)`, `sh t9,0xEE(sp)`, and `sh t6,0xEC(sp)` for the top palette row.

`code changed` → Move the declaration of `u8 cR` immediately before `baseBlue`.

`correct ASM` → At US ROM offsets `0x1046E0`, `0x1046E8`, and `0x1046EC`, the stores become `sh t8,0xEE(sp)`, `sh t9,0xEC(sp)`, and `sh t6,0xEA(sp)`.
