`incorrect ASM`: `func_8008D98C_5DE3C` emits an extra signed range guard, writes `0x32000` as the cycle payload, and assigns the loop base/stride/inactive constant to `s1/s2/s3`. A named unused parameter also adds an argument spill.

-> `code changed`: Use `G_CYC_1CYCLE`, remove the redundant `entryType < 11` check, and dispatch effect IDs 0, 4, 5, 6, 7, and 9. Remove the placeholder jump table so the switch generates its own eleven entries. Read `D_800DE130[i].unk0` directly in both the inactive check and switch instead of caching it. Use a byte counter with `i++`. Correct this dispatcher and its wrapper to `void` functions without parameters; add the called-function prototypes.

-> `correct ASM`: There is one unsigned switch guard, the cycle payload is zero, and the inactive constant/base/stride use `s1/s2/s3`. The dispatcher and its existing wrapper both score zero, and the full US ROM checksum passes.
