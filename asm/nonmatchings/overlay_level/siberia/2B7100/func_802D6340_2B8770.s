nonmatching func_802D6340_2B8770, 0x24

glabel func_802D6340_2B8770
    /* 2B8770 802D6340 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B8774 802D6344 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B8778 802D6348 3C04802D */  lui        $a0, %hi(func_802D62E4_2B8714)
    /* 2B877C 802D634C 0C001D04 */  jal        func_80007410_8010
    /* 2B8780 802D6350 248462E4 */   addiu     $a0, $a0, %lo(func_802D62E4_2B8714)
    /* 2B8784 802D6354 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B8788 802D6358 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B878C 802D635C 03E00008 */  jr         $ra
    /* 2B8790 802D6360 00000000 */   nop
endlabel func_802D6340_2B8770
