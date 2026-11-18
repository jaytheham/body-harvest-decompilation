`incorrect ASM`: In `func_800ED78C_FC73C`, the vehicle index load at `0xFCCE4` emitted `lui t4,0x8015` and `lh t4,0x7E82(t4)`.

-> `code changed`: Access the waypoint index and the X and Y coordinates through a local `Unk801575E0 *path = &D_801575E0` base. Keep the Z lookup on the global struct.

-> `correct ASM`: The vehicle index load emits `lui t9,0x8015` and `lh t9,0x7E82(t9)`, matching both target words. The function keeps the same size and has six fewer mismatched words overall.
