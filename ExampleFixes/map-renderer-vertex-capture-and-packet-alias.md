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
