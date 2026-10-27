`incorrect ASM`: In `func_8007774C_15F80C`, explicit no-op cases 4 and 5 make IDO keep the room pointer in `t0` and spill/reload it around every spawn call. The frame grows from the target `0x50` to `0x68`. A controlled allocator trace prices the caller register at 6.0 and `s0` at 6.25.

-> `code changed`: Omit cases 4 and 5 so they use the implicit switch default. Assign each active spawn result directly to the room handle. Access the object catalog directly and retain a typed room pointer. Declare the unused word between `x` and `z`, rather than before both. Correct the type groups to 1, 2, 6, 3, 7, 8 in code order. For the companion despawn routine, use the same groups and a union containing the signed halfword handle and its two bytes; the low byte is `handleBytes[1]`.

-> `correct ASM`: IDO now prices `s0` at 5.75 and saves the room pointer there, removing every call-site pointer spill. The target `0x50` frame, default-path loads at `sp+0x40` and `sp+0x48`, all 196 spawn instructions, all 57 despawn instructions, and both generated jump tables match. Both helpers now compile as C, and `tools/make.ps1` reports `build/bh.us.z64: OK` with the adjacent event handler still using its assembly fallback.


`incorrect ASM`: The matched helpers generate their jump tables after the C rodata constants, so retaining `jtbl_800A4B08_18CBC8` and the event handler's two float placeholders in C puts them before the helpers' generated tables and shifts every table reference.

-> `code changed`: Remove the two helpers' placeholder tables. Move the still-unmatched event handler's table and two float definitions into `.late_rodata` in `158330_event_late_rodata.s`, followed by an unchanged copy of its reference instructions. Point only that handler's fallback at this wrapper, following the existing `101840_late_rodata.s` pattern. Keep the original files under `asm/` unchanged.

-> `correct ASM`: The compiled helpers' tables occupy `0x18CB88` and `0x18CBA8`; the fallback event table follows at `0x18CBC8`, with its floats at `0x18CC14` and `0x18CC18`. All 196 spawn instructions and 57 despawn instructions match, and the full US ROM checksum is correct.
