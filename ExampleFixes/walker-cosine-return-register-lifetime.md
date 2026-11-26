`incorrect ASM` → In `func_800F554C_1044FC`, the middle lateral X and forward Z offsets use `mfc1 t0,$f10` and `mfc1 a2,$f4`. The IDO trace shows an integer return web reserving `v0` through the geometry blocks after the emitted code converts the return to floating point.

`code changed` → Store the last `coss(angleA)` return in an `f32` declared in the former `textureS` slot. Use the existing double-precision divisor at both forward-Z uses and write the texture coordinate as `0x400`. Use an `s16` for the later lateral Z offset. Reuse the expired angle word for the saved middle-palette blue byte. Place the green palette address check after vertex 12's Z store.

`correct ASM` → The linked US build emits `mfc1 a2,$f10` at `0x104950`, `mfc1 a0,$f8` at `0x104970`, `mfc1 a3,$f8` at `0x1049CC`, and `mfc1 v0,$f4` at `0x1049D0`. All four instruction words match. The saved palette copies, terminal loads, and spill placement still differ.

`incorrect ASM` → The final palette sequence loads green early and loads blue with `lh v0,0x102(sp)`, followed by a copy to `t5`.

`code changed` → In a comparison build, make `baseRed` signed and assign the final red and green values inside their first vertex color stores. After the last clipped-blue store, reuse `component.shadeBlue` for the final signed blue value.

`correct ASM` → The comparison emits `lh t3,0x104(sp)` followed by `lh s1,0x102(sp)` for the final green and blue loads. They occur at `0x104E30` and `0x104E40`, after their target positions. The final red register and a subsequent blue copy still differ.

`incorrect ASM` → The geometry candidate holds the saved middle-palette blue in `t0`. Its build omits the target blue copy at `0x104748`.

`code changed` → Share the early palette row pointer and a later `Vtx *vertex` in a typed union. After the palette pointer's last use, assign the global cursor to the vertex pointer in a separate statement immediately before writing vertex 11's T coordinate through that pointer.

`correct ASM` → The linked build emits `move t2,t5` at `0x104748` and retains the four matching geometry transfers at their original offsets. The optimizer trace shows the late cursor assignment changes where it splits the straight-line vertex stores. The saved red byte still spills.
