Incorrect ASM: `func_80078FE0_87F90` returns from each nested threshold branch separately, adding two instructions; reusing the initial scaled force loads it into `v0` and reverses the final `mul.d` inputs.

Code changed: combine the two accepted object-type/force thresholds with `||` and a common return 1. Keep a separate integer result, and assign the initial force into an explicit `f64` local before multiplying by the direction coefficient.

Correct ASM: the accepted conditions share `.L800792C0`, the initial force reload uses `t4`, and the final projection is `mul.d $f6,$f0,$f4`; function diff score 0 and full US ROM checksum OK.
