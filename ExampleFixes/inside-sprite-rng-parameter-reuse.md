`incorrect ASM`: In `func_8008AD40_172E00`, the inline RNG expression reserves a word temporary and produces `addiu sp,sp,-0x28`, with the configuration pointer saved at `sp+0x18` and parameters eight bytes above their target offsets.

-> `code changed`: Use the existing `EffectParticleConfig` and `EffectParticleColor` arrays directly. After storing the initial size, reuse `u16 arg4` for `arg4 = func_800038E0_44E0_U16();`, then assign the initial frame with `arg4 % D_800A2690_18A750[arg3].phaseCount`. The existing halfword return view preserves the RNG's entire 0..65535 range and avoids an anonymous word temporary. Keep the initial type, delay, and size assignments in that source order.

-> `correct ASM`: `addiu sp,sp,-0x20`; the configuration pointer is saved and reloaded at `sp+0x18`, the original size uses `lhu ...,0x32(sp)`, and the random sample is divided directly from `v0` using the target signed remainder sequence. Every function instruction and the full US ROM match.
