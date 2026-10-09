# Interior save: unsigned halfword converted to byte

In `func_8007356C_15B62C`, the runtime `unk10` field is signed for animation logic, but the room save copies it with `lhu` before `sb`. Cast that source field to `u16` at this conversion. Casting only to the destination byte type retains `lh`. The cast generates no separate mask and matches all four copies in IDO's unrolled loop. Full ROM and diff score 0 verified.
