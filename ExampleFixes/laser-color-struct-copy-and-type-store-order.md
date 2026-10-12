# Three-byte RGB copy and delayed type constant

`func_800E52E8_F4298` copies a three-byte color into a stack local with
`lwr`/`swr`. Use the existing `EffectRgb` struct and a struct assignment,
with `Vec2_S16` structs for the two positions passed to
`func_800B1A68_C0A18`. The original four-byte color array includes one
alignment byte; an initialized three-byte struct retains that data layout.

The minimum-lifetime loop follows the neighboring matched laser allocator:
load the signed halfword timer into a local before comparing it to the
unsigned byte minimum. Repeating the field expression changes codegen.

For the final slot stores, read and assign the timer before writing the
color index. Those byte objects can alias, so the source order affects when
IDO loads the timer table. Assign the type constant after the six position
fields. IDO schedules its store earlier, but creates the constant after the
six argument loads, matching the target temporary registers.

Verified with function diff score 0 and `build/bh.us.z64: OK`.
