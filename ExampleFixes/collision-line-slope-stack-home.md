`incorrect ASM`: In the first corner scan of `func_8010D4EC_11C49C`, a scalar `f32 slopeMain` stayed in a floating register across iterations. The target stores the main slope at `sp+0xE4` and reloads it inside that scan.

-> `code changed`: Use `f32 slopeMain[1]` and access `slopeMain[0]`. Keep the side test as the direct expression `interceptMain < ((D_80159D5C->unk54 + D_80159D98[i]) - ((D_80159D78[i] + D_80159D5C->unk4C) * slopeMain[0]))`. Use the original integer parameters directly in floating expressions rather than retaining separate `xArg`/`zArg` float locals.

-> `correct ASM`: The slope path contains `div.s $f2,$f4,$f6`, `swc1 $f2,0xE4($sp)`, and the corner-loop `lwc1 $f8,0xE4($sp)`. This matches that storage/reload pattern; the complete function remains unmatched.
