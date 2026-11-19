`incorrect ASM`: In the enter-vehicle blend, placing the Y delta assignment before the Z delta assignment gives `subu t2,t6,a3` at US ROM offset `0xFCC44`. The Z subtraction at `0xFCC58` then uses `a2`.

-> `code changed`: Keep the player-coordinate reads in X, Y, Z order. Assign the two signed differences in the opposite order using the cached player coordinates.

-> `correct ASM`: The subtractions use the target operands `subu t2,t6,a2` and `subu t4,t3,a3` at those offsets.

`incorrect ASM` — In the exit-vehicle blend, the current Z read used `lh a2,4(a0)` at `0xFCFF0`, followed by `subu t8,t1,a2` at `0xFD000`.

-> `code changed` — Save the current X, Y, and Z as `temp_a3`, `temp_v1`, and `temp_v1_6`, respectively. Read X in a separate statement and use `(*arg0).unk2` for the Y read. Reuse the saved values in the coordinate sums.

-> `correct ASM` — The current Z read is `lh a3,4(a0)`, and the difference uses `subu t8,t1,a3` at the target offsets.
