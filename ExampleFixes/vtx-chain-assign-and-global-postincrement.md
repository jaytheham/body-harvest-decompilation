### Vtx chain assignments + global pointer post-increment pattern

When a function creates multiple vertices via `D_8005BB34` and sets the same RGBA values on all of them:

**Problem:** Using `D_8005BB34 += 1; vtx = D_8005BB34;` generates different register allocation (address in v-register instead of t-register) and the `lui at, 0x1fff` mask loads at the wrong place. Using `vtx = vtx0 + 1; D_8005BB34 = vtx;` causes dead store elimination (3 stores become 1) and loses the stack frame.

**Solution:** Use `D_8005BB34++` post-increment for vertex pointer advancement and **chain assignments** for setting identical color values across vertices:

```c
vtx0 = D_8005BB34++;
vtx1 = D_8005BB34++;
vtx2 = D_8005BB34++;

vtx0->v.cn[0] = vtx1->v.cn[0] = vtx2->v.cn[0] = arg6;
vtx0->v.cn[1] = vtx1->v.cn[1] = vtx2->v.cn[1] = arg7;
vtx0->v.cn[2] = vtx1->v.cn[2] = vtx2->v.cn[2] = arg8;
vtx0->v.cn[3] = vtx1->v.cn[3] = vtx2->v.cn[3] = arg9;
```

**Why it works:**
1. `D_8005BB34++` post-increment creates cfe temps that preserve the 3 dead stores to the global and produce correct register allocation (address in t-register, vtx0 in v0).
2. Chain assignments (`a = b = c = val`) create cfe temps for the intermediate values. For arg9 (the last stack parameter), this causes a spill to `sp+4` matching the target's stack layout.
3. Chain assignment evaluation is right-to-left: stores to vtx2 first, then vtx1, then vtx0 — matching the target instruction order.
4. The combination of `D_8005BB34++` cfe temps and chain assignment cfe temps produces the correct 0x20 stack frame without needing pad variables.

**For the gSPVertex address:** `(u32)(D_8005BB34 - 3) & 0x1FFFFFFF` works because `D_8005BB34 - 3` is Vtx pointer arithmetic (subtracts 3 * sizeof(Vtx) = 48 = 0x30 bytes).
