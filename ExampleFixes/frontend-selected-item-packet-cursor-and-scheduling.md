# Selected-item packet cursor and scheduling

`func_80072B68_43018` in `src.us/overlay_gameplay/frontend/40720.c`.

Incorrect ASM: three separate initial graphics macro cursors consumed `t3`, placing the display list in `t4`; the rotation load reused `t8`, shifting all subsequent scratch registers. Vector homes were eight bytes below the target.

Code changed: reuse one named `Gfx *packet` for the initial PipeSync and TextureOff packets, retain the combine macro, and reserve two words after the display-list declaration. Store `itemRotation & 0xFFFF` into the halfword rotation field. Keep the scale assignment in a constant-true `if` condition and put its closing brace and the rotation increment on the same physical source line:

```c
if ((arg3 = (itemEntry->scale * 2) * arg3, 1)) {} itemRotation = itemRotation + 0x16C;
```

Correct ASM: display list uses `t3`, rotation uses `lw t9,0x484c(t8)`, vectors use `sp+0x60`, `sp+0x58`, and `sp+0x50`, and frame size is `0x78`. The same-line statements order `lui at,0x8009` before `lui v1,0x8006` and place the display-head `addiu` after the rotation store. The entire function matches byte for byte.
