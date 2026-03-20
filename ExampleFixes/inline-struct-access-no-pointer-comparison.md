### Inlining struct access avoids pointer-comparison substitution

When `temp_v0 = some_struct->field` is declared as a local variable, IDO may optimise `temp_v0 < N` into a pointer comparison: `&D_array[temp_v0] < &D_array[N]`, producing `lui+addiu+sltu` instead of `slti`. This also forces the "eager" `lui+addiu` base-address pattern for D_array, prevents deferred `lw lo(D)(hi+stride)`, and displaces the `mtc1 a3, f12` scheduling to after the array load.

Fix: inline `some_struct->field` directly in every use (no local variable). IDO then keeps only the `%hi` part of the base register, uses `lw %lo(D)(hi+stride)` deferred load, fills the `lui` delay slot with `mtc1 a3, f12`, and uses a plain `slti` for the bound check — exactly matching the original code.

### f32 in position 4 (a3 slot) stays in a3 with IDO O32

For a prototyped function with signature `(ptr, s32, s32, f32)`, the f32 fourth argument arrives in integer register `$a3` (not in `$f12`). The function prologue emits `mtc1 $a3, $f12` to move it to a float register. This is standard IDO -O2 -mips2 -32 behaviour: only the first two float arguments (positions 1 and 2) use the float registers `$f12`/`$f14`; later positions use the corresponding integer registers (`$a2`, `$a3`).
