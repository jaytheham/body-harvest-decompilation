`incorrect ASM`: In `func_802DE0F4_322244`, three successive assignments to the same joint scratch put the table base in `v1` and the first containing node in `a0`.

-> `code changed`: Replace those assignments with `D_8014DD50[D_8014DD50[D_8014DD50[D_8014DD50[sp98].unkD].unkD].unkD].unkD`.

-> `correct ASM`: The table base uses `v0` and the first containing node uses `v1`, preserving the instruction sequence and frame size.

`incorrect ASM`: The player pointer uses `v0`, the X difference uses `a0`, and the Z difference uses `v1`; the later flags word also uses `v0` and its masked bit uses `a0`.

-> `code changed`: Reuse the final timer scratch `temp` for the shifted X difference and its square instead of `temp_v0`.

-> `correct ASM`: The player pointer uses `v1`, the X difference uses `v0`, the Z difference uses `a0`, and the later flags word and masked bit use `v1` and `v0` respectively.
