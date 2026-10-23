`incorrect ASM`: In `func_800E3928_F28D8`, an inline short difference creates a promoted expression temporary. Case 4 emits `sll t8,v0,16; sra t9,t8,16; move v0,t9`; cases 5 and 6 also allocate or schedule their differences differently.
-> `code changed`: Use one `s32 difference`. At the start of each of cases 4, 5 and 6, assign `difference = arg7` and compare that word against the lifetime threshold. In the fading branch, update the same variable with `difference = (s16)(threshold - difference)`, then use it in the color calculations. Keep the original `arg7` for alpha and geometry.
-> `correct ASM`: The subtraction uses `v0`, its short conversion stays in place (`sll t9,v0,16; sra v0,t9,16` in case 4), and the extra move disappears. The remaining color instructions and register allocation match too.

`incorrect ASM`: With those instructions matched, the effect-type save/reload around `func_80135D44_144CF4` uses `sp+0x1C`; the target uses `sp+0x18`. The lifetime-table pointer already has the correct home at `sp+0x24`.
-> `code changed`: Remove the named `u8 maxStep` cache and read `D_8013DD18_14CCC8[arg8]` directly at its uses. Retain one unused byte in the declaration block so the other local homes remain fixed. Keep the shared word difference and separate word alpha-clamp result; inline the three floating clamp expressions rather than adding another float local.
-> `correct ASM`: ROM offsets `0xF2C28` and `0xF2C38` become `sw t2,0x18(sp)` and `lw t2,0x18(sp)`, while the table pointer remains at `sp+0x24`. All 1265 instructions match, and both US and EU ROM checksums pass.

`incorrect ASM`: Writing the perpendicular offsets as the trig ratio multiplied by the integer width changes the floating evaluation order and spill layout.
-> `code changed`: Write `(size + D_8013DD18_14CCC8[arg8] - arg7) * ((f32)coss((u16)rot) / 32768.0)` and the corresponding sine expressions.
-> `correct ASM`: The trig result is converted and divided in double precision before the width is converted and multiplied, preserving the target floating registers and offset spills.
