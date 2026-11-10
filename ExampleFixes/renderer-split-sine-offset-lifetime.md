`incorrect ASM` in `func_800F554C_1044FC` → The later cosine offset uses `mfc1 t0,$f8` and `sra t0,t6,0x10`. The target uses `a3` for the sign extension and the coordinate calculations that follow.

→ `code changed` → Keep the initial sine component in its signed word local. Put the later signed halfword sine offset in a separate `s16` local, and declare the initial green palette channel as `u8`.

→ `correct ASM` → The cosine offset uses `mfc1 a3,$f8` and `sra a3,t6,0x10`, and the middle vertices use `a3` for their Z offsets. The green declaration preserves the trig argument's `0x54(sp)` slot in the `0x138` frame. The linked diff score improves from 5245 to 5195. The function still uses its assembly fallback.
