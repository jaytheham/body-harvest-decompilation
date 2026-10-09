# Interior save: unsigned halfword converted to byte

In `func_8007356C_15B62C`, the runtime `unk10` field is signed for animation logic, but the room save copies it with `lhu` before `sb`. Cast that source field to `u16` at this conversion. Casting only to the destination byte type retains `lh`. The cast generates no separate mask and matches all four copies in IDO's unrolled loop. Full ROM and diff score 0 verified.

The inverse `func_8007343C_15B4FC` matches with the same indexed for loop copying the six floats and saved axis byte back to each runtime object. It deliberately does not restore the saved flags byte. Explicitly expanded four-entry pointer blocks and manual byte offsets are unnecessary; IDO generates the target unrolling from the simple loop.
