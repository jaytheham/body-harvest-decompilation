### Halfword parameter, byte result, and parent pointer stack layout

In unc_802E22A4_3263F4, declaring s16 val, then s8 result, then the parent AlienInstance * produces the target 0x30-byte frame: val at 0x2E, parent pointer at 0x28, and the compiler-cached instance pointer at 0x24. A word-sized result or an additional explicit instance pointer grows the frame by eight bytes. Use direct instance array accesses and preserve the parent pointer before the call.

Keep the final return 1 outside the parent branch. A redundant return 1 inside the branch adds an extra unconditional branch. The result can be assigned inside its comparison with 2, followed by the separate comparison with 3.
