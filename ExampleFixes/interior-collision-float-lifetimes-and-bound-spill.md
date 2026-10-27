`incorrect ASM`: In `func_8007B65C_16371C`, sharing the minimum grid Z and later object height put the grid minimum in `f0` instead of `f12`. Explicit exclusive-limit locals also placed the outer-loop limit above the target `sp+0x68`.

-> `code changed`: Give object height its own float local. Keep the grid minimum/result scratch and object height before the four float bounds; declare minimum grid Z, maximum grid Z, then object Z. Use a guarded outer do-loop with `x <= maxGridX` and an inner for-loop so IDO generates the exclusive limits. Keep the object pointer local to the object loop. Reserve one unused word immediately before the cached byte object type.

-> `correct ASM`: The Z-coordinate load uses `f0`, the minimum-Z subtraction uses `f12`, and the generated outer-loop limit stores and reloads at `sp+0x68`. The frame remains `0xC0`; every instruction matches and the full US ROM checksum reports `OK`.
