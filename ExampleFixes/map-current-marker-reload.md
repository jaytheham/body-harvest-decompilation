Incorrect ASM. The selected marker test reused the pointer from earlier in the frame and emitted a branch without reloading its stack slot.

-> Code changed. Keep the current label width in var_s1 through the interpolation and subsequent marker draw.

    var_s1 = func_8000A2B8_AEB8(sp30C->name, 0) + 0x20;

-> Correct ASM. IDO reloads the selected marker pointer immediately before the branch-likely, which still loads the brightness accumulator in its delay slot.

    lw      t9,0x30c(sp)
    beqzl   t9,aa800
     lw     t8,0x2e4(sp)
