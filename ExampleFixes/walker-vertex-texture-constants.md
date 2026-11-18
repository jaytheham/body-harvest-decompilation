`incorrect ASM` → Mixing a `u32 textureS` assignment at vertex 3 with literal `0x400` stores produced three loads of `0x400` in `func_800F554C_1044FC`. IDO loaded the same value into `t3`, `t1`, and `t2` at different vertices.

`code changed` → Set `textureS = 0x400` once during palette setup and use it for every texture coordinate with that value, including the T coordinates of the last three vertices. Use the literal `0x80` for the smaller T coordinate. Save the red and blue palette channels while writing vertex 2 and the green channel while writing vertex 3. Use `baseBlue` for the blue channel at vertices 4 and 5.

`correct ASM` → US ROM offset `0x104724` loads `li t1,0x400` and `0x104744` loads `li t3,0x80`. Each immediate is loaded once across all 14 vertices. Both instructions also match in the EU ROM.
