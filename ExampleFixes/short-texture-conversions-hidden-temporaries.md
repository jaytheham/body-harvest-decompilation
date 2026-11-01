`incorrect ASM`

In `func_80125D70_134D20`, casting both texture coordinates to `s32` emitted the right instruction sequence but selected `mfc1 t9,$f4` and `mfc1 t2,$f8` at ROM `0x135100`, then rotated the remaining anonymous integer registers.

-> `code changed`

Narrow the texture Y coordinate before shifting and the texture X coordinate before wrapping:

```c
texture[(s16)((((s16)textureY << 5) - ((s16)textureX & 0x1F)) + 0x1F)]
```

-> `correct ASM`

The redundant sign extensions disappear through the final signed-short index and the `& 0x1F` mask, preserving the emitted operations. The conversions become `mfc1 t0,$f4` and `mfc1 t6,$f8`, and every subsequent instruction matches. The remaining multiplication-operand mismatch is resolved in `struct-member-read-interpolation-multiply-order.md`; full US and EU ROM checks pass.
