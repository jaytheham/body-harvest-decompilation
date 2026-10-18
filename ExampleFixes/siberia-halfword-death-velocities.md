`incorrect ASM`: In `func_802D8930_2BAD60`, float velocity locals introduce `cvt.s.d` and `swc1` instructions. The target instead uses `trunc.w.d`, `mfc1`, and `sh`, with the two velocities at `sp+0x7A` and `sp+0x78`.

-> `code changed`: Adapt the matched `func_802D86D8_257E18` scalar-joint and eleven-element animation-array implementation to the Siberia animation data. Omit the America-only sound call. Use signed halfword velocity locals, narrow sine expressions directly from double to s16, convert the cosine expressions directly from double to s32, and multiply the halfword particle velocities by integer 128. Correct the handler parameter to u8.

-> `correct ASM`: Velocity calculations use `trunc.w.d`, `mfc1`, and `sh`; particle velocity scaling becomes integer shifts. The full function diff is clean and the complete US ROM checksum passes.
