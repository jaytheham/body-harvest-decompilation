# Crater height writes, post-decrement loops, and compound growth

Matched `func_800B879C_C774C` in `BF9C0.c` with IDO 5.3 -O2 -mips2 -32.
The function diff is 0 and the full ROM checksum is OK.

Use the existing `TerrainCell.height` bitfield for six-bit height updates.
Assign directly in each branch: an intermediate byte followed by a shared
store introduced masks and copies. The bitfield preserves the flag bits with
the target `lbu; andi 0xffc0; or; sb` sequence. Read the old height into an
`s32` before subtracting its arithmetic right shift by two.

The three loops use `count = limit; if (count--) { do { ... } while (count--); }`.
Writing `while (count-- != 0)` introduced boolean temporaries and allowed the
vehicle loop counter to be replaced by a pointer comparison. Reuse the same
counter for the vehicle loop and the terrain columns. Index the vehicle list
directly in the vehicle array expression; caching its byte changed registers.

Assign the unsigned interpolated height directly to the bitfield. A separate
`u32` temporary selected `v1` for the float-to-unsigned conversion instead of
the target `t0` and changed nearby scheduling.

`D_8014F850 *= D_80142E40_151DF0[0]` reproduces the target double multiply.
An ordinary assignment with the same operands selected the opposite floating
registers for the conversion and constant load. An inline `1.022` restored
those registers but placed the generated constant after the explicit rodata,
so its address and the complete ROM were wrong. Keep the existing constant.

Two apparently redundant casts remain necessary for exact operand order:
the unsigned outer count in the crater coordinate addition, and the same-type
`TerrainCell *` cast in `tile = &((TerrainCell *)tile)[rowSkip]`. Removing the
latter reversed the operands of the row-pointer `addu`. Indexed advancement
by one needs no cast. Explicit narrowing casts at the lookup call and the
intermediate cast in the radius assignment were removed without differences.
