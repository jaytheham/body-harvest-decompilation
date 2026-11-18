`incorrect ASM` → Taking a local packet pointer for triangle `(11, 10, 7)` produced `lw v0,0(a0)` at US ROM offset `0x105338`, followed by `sw v1,0(v0)` and `sw t7,4(v0)`.

`code changed` → Move the existing `if (&colorB) {}` immediately before `gSP1Triangle(D_8005BB2C++, 11, 10, 7, 0)`. For the final triangle `(11, 10, 13)`, initialize a block-local `Gfx *packet = D_8005BB2C++` and pass it to the macro.

`correct ASM` → Triangle `(11, 10, 7)` starts with `lw a1,0(a0)` at `0x105338`. Its stores are `sw t7,4(a1)` at `0x105344` and `sw v1,0(a1)` at `0x105348`.
