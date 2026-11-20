Incorrect ASM in the map frame loop. The timer load occupied s1.

    lw      s1,0x31c(sp)
    bne     s1,s5,first_frame_done

-> Code changed. Use the existing var_a1 scratch for the timer at both ends of the loop and keep its value for the non-exit write-back.

    var_a1 = frameCount;
    /* Frame processing */
    var_a1 = frameCount;
    if (var_a1 != 0) {
        var_a1 -= 1;
    }
    /* When the map remains open */
    frameCount = var_a1;

-> Correct ASM register and stack slot.

    lw      s0,0x31c(sp)
    bne     s0,s5,first_frame_done

The loop backedge reaches the test of s0. The initial load still appears earlier in the preheader than in the target.
