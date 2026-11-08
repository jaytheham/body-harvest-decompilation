`incorrect ASM`: The target loads halfX with `lh $s2, 0x34($v0)` and halfZ with `lh $s4, 0x36($v0)`, adds `0xC8` to both, and emits halfX's integer division by two as `bgez $s2` followed by `sra $t2, $s2, 1`. The corner expressions must also produce the `coss`/`sins`, `cvt.d.s`, `div.d`, `mul.d`, `add.d`/`sub.d`, and `trunc.w.d`/`mfc1` chains in the target order.

-> `code changed`: halfZ is assigned before halfX, and halfX is a single s32 initializer, `(vehicleTypes[vehicleInstances[arg2].unk1A].unk34 + 0xC8) / 2`, instead of a separate assignment followed by `halfX /= 2`. Parentheses are removed from the four corner expressions so they evaluate left-to-right as `centerX + halfZ * sin + cos * halfX` and the corresponding centerZ forms.

-> `correct ASM`: The function compiles to the target, and the US and EU ROMs both match.
