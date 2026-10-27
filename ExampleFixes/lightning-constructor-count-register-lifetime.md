`incorrect ASM`: In `func_800D16BC_E066C`, dividing all three deltas by the saved count removes the target `li v1, 0xf`; dividing by the other count retains that instruction but uses `v1` instead of `s1` for the divide and its two checks. Without the empty count test after allocation, IDO also spills the word count instead of the halfword Z step.

-> `code changed`: Keep the two count locals and divide the first delta by `(var_v1 ? var_s1 : var_s1)`, then divide the other deltas by `var_s1`. Place `if (var_s1) {}` immediately after the allocation call.

-> `correct ASM`: IDO keeps both `li v1, 0xf` and `li s1, 0xf`, uses `s1` for all divisions and checks, and spills the Z step with `sh a1, 0x50(sp)` and `lh a1, 0x50(sp)`. The full ROM checksum matches.
