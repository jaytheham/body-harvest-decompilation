# Particle slot initialization and allocator scheduling

`func_800B99A8_C8958` matches with direct `D_80152B80[D_8013DAE4_14CA94]` accesses, not a named entry pointer. Direct indexing lets IDO reuse the array base and stride constant in the final allocator loop and reload the halfword parameters from their incoming stack homes.

The brightness parameter is `u8`: the target reloads it with `lbu` from the incoming argument home. Keeping it `s32` generates `lw` and changes scheduling.

Initialize fields in ascending memory order: both position coordinates first, then radius/brightness fields, RGB bytes, and the final halfwords. Increment the active count after all fields. Moving that increment before the final halfwords leaves the instructions correctly positioned but rotates their temporary registers: the count increment claims `t3` before the three halfword arguments. Moving it afterward gives the target `t3`, `t4`, `t5` for those arguments and `t6` for the increment.

Use `for (i = allocatorIndex; i < 15; i++)` with a `u8 i`, breaking when an unused entry is found. An infinite loop with explicit masking generates a different byte-wrap schedule.

Full ROM verification: `build/bh.us.z64: OK`; function diff: `CURRENT (0)`.
