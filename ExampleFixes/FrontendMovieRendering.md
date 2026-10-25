## Frontend movie rendering: byte argument and flags reload

Incorrect ASM: the `s32` movie-mode argument plus `arg0 &= 0xFF` omitted `sw a0,0x60(sp)`; reloading object flags inside the reflection branch placed `move s6,t5` before the flags load; a direct three-case switch loaded the final fade mode into `v0`.

Code changed: in `func_8007D91C_4DDCC`, declare the argument `u8`, reload object flags after the reflection branch, and guard the cases 1/2 fade switch with `if (D_800D7970 != 0)`.

Correct ASM: `sw a0,0x60(sp)` followed by `andi t6,a0,0xFF`; reflection counter update ends with `lw a0,0x20(t8)` then `move s6,t5`; fade dispatch uses `v1` with the zero check and shared cases 1/2 call. Complete US and EU ROMs match.
