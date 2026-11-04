`incorrect ASM`: `func_800F7790_106740` omitted the target's four endpoint loads, X subtraction, negation, and Z subtraction before halving the geometry offsets. Ordinary unused scalar assignments and a single check of the negated value removed the first subtraction and negation.

-> `code changed`: Reuse the completed triple-X scratch for the live center-X snapshot. Assign the X difference to `phase` and its negation to `angle`; retain `if (angle + angle) {}`. Then overwrite `phase` with the Z difference and retain `if (phase) {}`. Use the center-X snapshot for the following vertex's X store.

-> `correct ASM`: Four loads are followed by `subu`, `negu`, and `subu`, with no add or branch from the discarded checks. Referencing the negation twice preserves its shared child expression through late cleanup. The instruction sequence matches structurally; the complete function still has register-allocation differences.

`incorrect ASM`: The renderer's top palette halfwords occupied `sp+0xCC`, `sp+0xCA`, and `sp+0xC8`, and the first two palette loads were reversed.

-> `code changed`: Move the late `baseRed` and `baseGreen` declarations after `baseBlue`. Initialize `spD2` before `spD0`, then `spCE`, keeping those assignments on one physical line.

-> `correct ASM`: The palette loads use offsets `-2`, `-3`, and `-1`, followed by halfword stores at `sp+0xD0`, `sp+0xD2`, and `sp+0xCE`, respectively. The `0x138` frame and the earlier palette homes remain correct.
