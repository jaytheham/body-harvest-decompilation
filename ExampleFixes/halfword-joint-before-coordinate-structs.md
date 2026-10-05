### Halfword joint before coordinate structures

In func_802E205C_3261AC, declare the locals in this order: byte type index, three-word output array, halfword root, halfword child joint, then the two Unk802E71B8 coordinate structures. This puts the output at 0x38, root at 0x36, and coordinate structures at 0x2C and 0x24 in the target 0x48-byte frame.

Leaving the child joint last places both coordinate structures four bytes too high. Making the child joint word-sized before the structures increases the frame by eight bytes. A halfword child joint preserves the target byte-narrowing instructions when passed to func_800A931C_B82CC.

Copy each complete coordinate structure from its constant. Access coordinates through its array, and read the child joint through D_8014DD5C[root].unk0. This avoids raw pointer arithmetic and reproduces the target word-plus-halfword copies.
