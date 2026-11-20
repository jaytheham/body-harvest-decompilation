Incorrect ASM in func_8009811C_A70CC. The enabled C emitted a second set of the five double constants defined for the assembly fallback.

    ldc1    $f22,0x2510($at)

-> Code changed. Remove the fallback definitions and their unused declarations. Keep the double literals in the C function so IDO emits the original pool.

    temp_f22 = 0.1;

-> Correct ASM. The emitted pool starts at 0x801424E8 and the following read-only data starts at 0x80142510.

    ldc1    $f22,0x24e8($at)
