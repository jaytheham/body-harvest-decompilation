`incorrect ASM`: In `func_800ED78C_FC73C`, the exit Y setter loaded the waypoint index through the absolute address after `0xFD228`, and used a separate base for the coordinate load.

-> `code changed`: Read the following Z setter's index as `D_801575E0.unk4` through the waypoint struct.

-> `correct ASM`: The Y setter emits `lui v0,0x8015`, `addiu v0,v0,0x75e0`, then `lh t1,4(v0)`. The first two words match exactly, and the third uses the target base and offset. The later Z setter retains its absolute loads.
