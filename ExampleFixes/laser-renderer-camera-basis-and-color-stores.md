`incorrect ASM`: In the camera-facing path of `func_800E3928_F28D8`, accessing `D_80153AC4.x` and `.z` introduces a separate address load for the second direction vector.
-> `code changed`: Access the existing `CameraBasis` as `D_80153AB8.rightX` and `.rightZ`.
-> `correct ASM`: The second direction uses `lwc1 ...,0xC(v0)` and `lwc1 ...,0x14(v0)` through the same basis pointer as the first direction.

`incorrect ASM`: Case 3 stores its first two 255 constants to `0x71(sp)` and `0x6E(sp)`, and loads the outer green constant before the outer red constant.
-> `code changed`: Put `red0 = 0xFF; green0 = 0xFF; blue0 = 0x78; alpha0 = 0xFF;` on one line, followed by `red1 = 0xFF; alpha1 = 0x64; green1 = 0x64; blue1 = 0x32;` on the next line.
-> `correct ASM`: ROM offsets `0xF2D28` and `0xF2D2C` store to `0x70(sp)` and `0x71(sp)`; `li t5,0xFF` precedes `li ra,0x64`, and the alpha store to `0x6E(sp)` follows the blue constant setup.
