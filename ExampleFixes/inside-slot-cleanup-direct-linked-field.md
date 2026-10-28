`incorrect ASM`: In `func_80086E90_16EF50`, a volatile slot-pointer local saved the byte parameter from `a0` instead of `t6`. Replacing it with direct array access but keeping a named linked-slot local put the cached address at `sp+0x18` instead of `sp+0x1C`.

-> `code changed`: Remove the pointer aliases, volatile pointer, and linked-slot temporary. Read `D_800FB6F8[arg0].unk2` directly both in the sentinel test and as the index of the linked slot to update.

-> `correct ASM`: IDO caches the slot address at `sp+0x1C`, loads its link once into `v1`, and saves the masked byte parameter with `sb t6,0x23(sp)` in the first call's delay slot. All 37 instructions and the complete ROM match.
