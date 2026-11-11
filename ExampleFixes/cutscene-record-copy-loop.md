`incorrect ASM`: The 2-byte-aligned cutscene record used `lwl/lwr` and `swl/swr` for each copied word. A constant `i < 5` loop with a post-incremented destination eliminated the loop branches.

-> `code changed`: Give the 24-byte record a word-aligned union view. Assign `count = 5` and copy with `for (i = 0; i != count; i++) { *arg0++ = D_80157E90[i]; }`, then return `count`.

-> `correct ASM`: IDO emits aligned `lw/sw` pairs, alternating `at` and a scratch register. The entry `beqz a2` leads to a one-record loop with `bne a2,v1`. The four-record loop advances the source and destination by `0x60` and ends with `bne t0,t1`. `func_800EFCC0_FEC70` has diff score 0, and both ROM checksums pass.
