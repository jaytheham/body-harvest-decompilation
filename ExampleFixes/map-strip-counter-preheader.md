Incorrect ASM in the second texture strip's preheader in func_8009811C_A70CC. The counter constant arrived before the copy used for the strip's column offset.

    move    v1,t9
    li      s0,7
    move    a1,t8

-> Code changed. Keep the scaled offsets on their own lines. Assign the counter on the same physical line as the loop header.

    var_a1 <<= 13;
    var_s0 = 7; do {

-> Correct ASM order. The offset copy now precedes the counter load, as it does in the target.

    move    v1,t9
    move    a1,t6
    li      s0,7

The current offset copy uses t8. The counter load and its placement match, and register allocation still differs nearby.