`incorrect ASM`: In `func_800970C0_A6070`, deriving all four vertex cursor updates from the captured pointers leaves the cursor in `t4` and the column in `t5`. The right-edge addition uses `t2`, and the first vertex uses `a0`.

-> `code changed`: Capture the fourth vertex with `vtx3 = D_8005BB34++`, keeping the first three derived cursor assignments. Declare the shifted left coordinate `x0` as `s32`. Reuse one `Gfx *gfx` in the packet arguments of the vertex and first triangle macros:

```c
gSPVertex(gfx = D_8005BB2C++, K0_TO_PHYS(vtx0), 4, 0);
gSP1Triangle(gfx = D_8005BB2C++, 0, 1, 2, 0);
```

-> `correct ASM`: The cursor uses `t5`, the column uses `s0`, the first vertex uses `a1`, and the right-edge addition uses `t1`, with the target instruction order and `0x48` frame:

```asm
lui     t5,0x8006
addiu   t5,t5,-0x44cc
...
move    s0,zero
...
lw      a1,0(t5)
...
addiu   t1,t9,0x100
```

The complete function remains NON_MATCHING: its enabled C score improves from 160 to 50, with ten register-only word differences remaining in the displacement and second-vertex webs. No compiler forcing is used.


`incorrect ASM`: The fourth-postincrement draft above still assigns the second vertex and coordinate displacement to the wrong registers (ten word differences).

-> `code changed`: Restore all four derived cursor updates. Expand `gDPLoadTextureBlock` into its seven standard gfx macros, capturing only the texture-image packet in the same `gfx` local used by the vertex and first triangle packets. Keep the other six texture macros on `D_8005BB2C++`. With this shape, `x0` must be `u32` to retain the target right-edge register.

```c
gfx = D_8005BB2C++;
gDPSetTextureImage(gfx, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, image);
/* The remaining six standard texture-loading macros use D_8005BB2C++. */
gSPVertex(gfx = D_8005BB2C++, K0_TO_PHYS(vtx0), 4, 0);
gSP1Triangle(gfx = D_8005BB2C++, 0, 1, 2, 0);
```

-> `correct ASM`: The second vertex now uses `a2`, while the first vertex stays in `a1`, the cursor in `t5`, column in `s0`, and right-edge coordinate in `t1`. Enabled score improves from50 to10: all but two of225 instruction words match. The remaining `addiu`/`sll` pair uses `v0` instead of target `a0`; this is still a partial result. Native, UOPT diagnostic, and UGEN diagnostic builds reproduce the same linked bytes, with diagnostic object fidelity checked separately against the native object.
