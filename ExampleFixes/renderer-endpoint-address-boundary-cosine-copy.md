`incorrect ASM`: In `func_800F7790_106740`, the cosine conversion at ROM `0x106A9C` lacked the target's following `move a3,t0`; ordinary short-variable copies disappeared during optimization.

-> `code changed`: After the first endpoint vertex's green color store, retain `if (((&direction) != NULL) & ((&D_8005BB2C) != NULL)) {}`. `direction` is already passed by address to the normalization helper, so this boundary does not force an additional scalar stack home. The same boundary with the already allocated `sp120` array produces identical instructions.

-> `correct ASM`: `mfc1 t0,$f4`, `mul.s $f4,$f18,$f2`, and `move a3,t0` appear at `0x106A9C`, `0x106AA0`, and `0x106AA4`, respectively, with no preceding named-short shift pair. This matches the target conversion sequence; the full renderer remains unmatched.
