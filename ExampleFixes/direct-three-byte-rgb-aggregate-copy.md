# Direct three-byte RGB aggregate copies

`func_800B9C28_C8BD8` copies five colors to its stack before spawning five effect rings. The target uses `lwr at, 2(source)` and `swr at, 2(destination)` for each color.

Define the globals and locals directly as a three-byte struct with named RGB byte fields, then assign each complete global to its local. IDO preserves the original four-byte spacing between initialized globals and emits the partial-word copies. Copying a three-byte member of a four-byte wrapper or union generated three separate byte loads/stores instead. Individual byte assignments also miss the target.

Use the existing `Vec2_S16` for the position and correct the called spawn routine's position parameter to that type. It reads only the two adjacent halfwords, not an entire effect entry.

Verified with the project build: `build/bh.us.z64: OK`; function diff: `CURRENT (0)`.
