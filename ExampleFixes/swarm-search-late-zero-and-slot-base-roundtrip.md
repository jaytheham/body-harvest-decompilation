`incorrect ASM`: In `func_800E614C_F50FC`, a plain zero-initialized search counter produces a strength-reduced pointer walk instead of the target's initial `multu zero,a1` and repeated `multu v0,a1`. Preincrement from literal `-1` restores the repeated multiplication but folds away the initial multiplication. A directly indexed final slot pointer keeps the array base in `s8`, enlarging the frame to `0x40`. Round-tripping the final element address through `s32` restores the frame and search setup but introduces `move s0,s1` after the RNG call that chooses the slot angle: IDO keeps overlapping integer-address and typed-pointer values.

-> `code changed`: Retain the zero dependency until IDO's later optimization passes. Give the final lookup a distinct symbol for the same storage, and keep its typed pointer live with an empty test before the RNG call. Declare `D_80153300_slotView` as the same four-element struct array in `variables.us.h`; define `D_80153300_slotView = D_80153300` in both version linker-symbol files. The alias allocates no new storage, and the EU alias follows the existing shifted symbol automatically. Both lookups remain typed struct-array accesses:

```c
slotIdx = arg3 * 0 - 1;
while (D_80153300[++slotIdx].unk1E6 != 0) {}

/* Initialize the selected slot's entries here. */

slot = (Unk800E614CFxSlot *)(s32)&D_80153300_slotView[slotIdx];
if (slot) {}
angle = func_800038E0_44E0();
```

-> `correct ASM`: The search uses `li a1,0x1ec; multu zero,a1`, updates the `s4` index with `move s4,v0`, and repeats `multu v0,a1`. The entry-loop base uses `t0`. The final lookup becomes `addu s0,t8,t9` before the RNG call, with no later pointer copy. All 218 instructions match in the `0x38` frame. Full US and EU ROM comparisons pass.
