### Integer two preserves float multiplication

In `func_8010F834_11E7E4`, `y *= 2` emits the target `mul.s` with a loaded 2.0 constant. `y *= 2.0f` becomes `add.s`, while `y *= 2.0` introduces double arithmetic. Keeping x, y, and z in place while dividing by the length reproduces the target floating-point registers and spills. Reset the three velocity fields to zero before applying the impulse. Full ROM checksum verified OK.
