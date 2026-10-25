`incorrect ASM`

In `func_80121EB4_130E64`, assigning the signed short angle to `D_80052B48.unk2` omitted `move s0,s1` before the second sine call and shortened the function by one instruction. Keeping a separate unsigned temporary added the copy but also rematerialized the rotation field address with `lui at`.

-> `code changed`

Keep the angle as `s16` and assign it directly to `D_80052B48.unk2Unsigned`. Declare the two float position locals immediately after the angle, before the other short coordinates, to place them at sp+0x38 and sp+0x34. Replace the five final double placeholders with literals in calculation order. Use `D_8005BB38` for the alignment and scale matrix outputs and advance it after each submitted matrix.

-> `correct ASM`

The angle uses s1 across the cosine call, then `move s0,s1` preserves it before `andi a0,s1,0xffff` and the sine call. The rotation store is `sh s0,2(a1)`, with no separate address load. The position spills use sp+0x38 and sp+0x34. `tools/make.ps1` reports `build/bh.us.z64: OK`.
