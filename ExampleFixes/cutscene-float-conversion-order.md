`incorrect ASM`: In `func_800F066C_FF61C` at US offset `0xFFE84`, `mtc1 s1,$f6` converted Z ahead of Y. The matching conversions use the same scratch registers as the following three scaled camera coordinates.

-> `code changed`: Store each scaled camera coordinate with a direct integer-to-float conversion. In the preceding target-coordinate group, store X and Y directly, then load the Z local immediately before storing it as a float. The X and Z locals also supply the halfword stores.

-> `correct ASM`: The target-coordinate loads and conversions use `mtc1 s0,$f8`, `mtc1 t6,$f6`, and `mtc1 s1,$f4` in order. Both groups convert to `$f16`, `$f18`, and `$f10`, respectively.
