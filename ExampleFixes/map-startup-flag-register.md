Incorrect ASM in the map startup in func_8009811C_A70CC. The startup flag used t3, and the camera initializer's later reuse of a1 overlapped it.

    move    t3,zero
    ...
    li      t3,0x20

-> Code changed. Use the frame countdown scratch for the movement tests and texture-strip offset after the countdown checks. Use the camera index scratch for the initializer, the bound scratch for the distance clamps, and var_t0 for the alien animation loop limit. These assignments leave the startup flag's original variable available for the compiler to assign a1.

    for (var_s0 = 0; var_s0 < 5; stage = &stageTable[++var_s0 - 5]) {
        /* Initialize the camera fields. */
    }
    ...
    var_t0 = D_8014D50A;

-> Correct ASM. The startup flag instructions match byte-for-byte at A7168 and A71F4. The camera iterator also loads its first nonzero value into s0.

    move    a1,zero
    ...
    li      a1,0x20
    ...
    li      s0,1

The full function still differs, including the later flag-store position.