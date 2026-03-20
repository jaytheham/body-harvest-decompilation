### Named `s32` locals cause phantom stack homes (like pointer locals)

Named `s32` local variables (not just pointer types) can cause IDO to allocate a 4-byte "home" slot on the stack. With 8-byte frame alignment, even ONE named `s32` phantom can inflate the frame by 8 bytes (0x3C → 0x40). Two named `s32` phantoms together are exactly 8 bytes extra (0x38 → 0x40).

When a function uses `s32 flags = struct->unk20 & 0x600` followed by `s32 spec_idx = struct->specIndex` as the first two local declarations, this causes:
- Each variable creates a 4-byte phantom slot
- Frame inflates from 0x38 to 0x40
- v0/t0 spill offsets shift away from target positions

The phantom locals ALSO cause IDO to eagerly commit the computed value (`move a1, t8`) BEFORE the beqz branch, whereas without named locals IDO lazily commits it in the beqz delay slot.

**Trade-off**: Declaring `flags` and `spec_idx` as named `s32` gives the correct register assignment (`a2=index`, `a1=unk20/flags`, `a3=specIndex` early load), which enables `beq`/`bne` (not likely branches) and correct instruction patterns — DESPITE the phantom slots.

Without the named variables (inlining everything), the frame is correct (0x38) but register assignment is wrong (`a1=index` instead of `a2`) AND `beql`/`bnel` (branch-likely) instructions appear instead of `beq`/`bne`.

When you see this trade-off, using named locals with wrong frame is often preferred (fewer total differences) over inline with wrong registers and likely branches.
