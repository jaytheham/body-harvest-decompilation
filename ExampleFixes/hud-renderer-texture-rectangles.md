# HUD texture rectangles and command ordering

These changes to `func_8013A764_149714` produced the exact target instructions from ROM `0x149808` through the return.

- `D_8014F1FA` is the horizontal HUD offset. `hudWeaponItems[arg0].yPosition` is the vertical coordinate. The initial approximate implementation had these axes exchanged in all three rectangles.
- Use `<< 2` for the four coordinates of the first two rectangles. IDO distributes multiplication by four over expressions such as `(y + 3) * 4`, producing a shift followed by an addition. `(y + 3) << 2` preserves the target's addition followed by a shift.
- Assign the ammunition-text `yPos` after the corresponding icon rectangle. The target reloads the item's Y field for this assignment.
- Calculate the weapon texture index in a separate statement before `gDPLoadTextureBlock`. Putting the lookup directly in the texture macro moves it after the display-list pointer load.
- Apply `K0_TO_PHYS` to the icon image and the ammunition-background image. The TLUT command uses `D_80260500` directly.
- The first combine command uses `PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE` for both cycles, yielding the target's `0xFFFFF7FB` second word.
- For the ammunition-background rectangle, preserve the signed-short casts and the correction expressions' `<< 10` followed by `>> 7`. The small digit helper uses a different correction scale (`<< 11`).
- The upper-right `MAX` coordinates use short locals initialized to zero before the background texture macro. Replacing these locals with literal zero introduces additional zero assignments. The lower-left `MAX` coordinates still use literal zero.

When restoring experimental source with PowerShell `Copy-Item`, ensure the source modification time is updated before building. Copying an older checkpoint can preserve a timestamp older than the object file and leave stale assembly in the next diff. Rewriting with `Set-Content` forces the expected rebuild.
