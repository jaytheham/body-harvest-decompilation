`incorrect ASM`: `func_80077B94_15FC54` repeatedly accesses the first room rather than advancing through the room array. Repeated catalog-symbol accesses save an extra address register, shared signed constants save another register, and function-scope grid locals enlarge the frame.

-> `code changed`: Advance a typed room pointer, cache the catalog-pointer address, and keep the grid locals inside their query block. Declare the float spill before the loop-bound and event locals, retain the preceding four-byte local area, and use an unsigned phase comparison. Keep each early spawn call and catalog refresh on one physical line, update the angle before decrementing the transition timer, and retain the empty level-address test.

-> `correct ASM`: The frame is `0x58`, the paired grid conversions and call reload order match, the extra saved registers disappear, and the visited-state branch retains its target `nop`.

`incorrect ASM`: Sharing the catalog base and selected-entry pointer gives the early base register `t0` instead of `v0`. Separating them leaves an extra `move t0,v1` after the selected-entry address calculation.

-> `code changed`: Use separate typed base and entry pointers. Initialize the selected entry through the record's first byte-array view, `objectEntry = (void *)objectBase[typeId].pad0`, then assign `objectBase = NULL` to end the old base value's lifetime before reading entry fields. Refresh the selected entry after animation calls.

-> `correct ASM`: The dead base assignment emits no instruction and prevents address copy propagation across the lifetime boundary. The early base stays in `v0`, the selected entry is computed directly by `addu t0,v0,s4`, its flags use `v1`, and the animation switch and its reloads match.

`incorrect ASM`: The later visited-byte load is cached in `v0` instead of using the target temporary `t4`. Keeping the selected-entry local through the final callbacks also forces later address calculations into `t0`.

-> `code changed`: Use `(u8)(s8)room->unk2E & 1` only for the visited-state condition. After the later increment and callback, read `(*catalog)[typeId].unk16` and `(*catalog)[typeId].unk40` directly rather than refreshing the selected-entry local.

-> `correct ASM`: The conversion emits the original `lbu` while separating this value from later byte reads. The early level-address `lui t7` and branch-delay `nop` remain, the later catalog bases and entry addresses use the target temporary registers, all instructions match, and the full US ROM checksum passes.
