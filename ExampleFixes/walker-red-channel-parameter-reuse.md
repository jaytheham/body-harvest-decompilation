`incorrect ASM` → In `func_800F554C_1044FC`, IDO loads the middle palette's red byte with `lbu t3,0x27(t2)` and materializes the texture coordinate with `li t4,0x80`.

`code changed` → After the radius lookup consumes the `u8 arg3` index, reuse that parameter for the middle palette's red byte. Save its value in `cR` for vertex 9. Assign the clamped red value back to `arg3` at vertex 6 and use it again at vertex 10.

`correct ASM` → The linked US build emits `lbu t4,0x27(t2)` at `0x1046F8` and `sh t3,0xA(t6)` at `0x104828`.

`incorrect ASM` → With `cR = baseRed` at vertex 2 and `cn[0] = cR` at vertex 9, IDO emits `sb t4,0xF3(sp)` and later `lbu t8,0xF3(sp)`.

`code changed` → In a comparison build, store the signed return from `coss(angleA)` in an `f32 cosB` and use it for the two forward Z offsets. After writing vertex 3's texture coordinates, assign the middle red byte from `arg3` to the now-unused `s32 angleA`. Use that word for vertex 9's red channel. Keep using `arg3` for the middle red at vertices 3–5 and the clamped red at vertices 6 and 10.

`correct ASM` → The linked comparison build emits `move t0,t4` at `0x104894` and `sb t0,0xC(t8)` at `0x104D20`. Both instructions are four bytes later than the target because the third trig call still uses `lw` and `andi` to prepare its argument.
