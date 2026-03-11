nonmatching func_802D5F98_1EECA8, 0x24

glabel func_802D5F98_1EECA8
    /* 1EECA8 802D5F98 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EECAC 802D5F9C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EECB0 802D5FA0 3C04802D */  lui        $a0, %hi(func_802D5E98_1EEBA8)
    /* 1EECB4 802D5FA4 0C001D04 */  jal        func_80007410_8010
    /* 1EECB8 802D5FA8 24845E98 */   addiu     $a0, $a0, %lo(func_802D5E98_1EEBA8)
    /* 1EECBC 802D5FAC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EECC0 802D5FB0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EECC4 802D5FB4 03E00008 */  jr         $ra
    /* 1EECC8 802D5FB8 00000000 */   nop
endlabel func_802D5F98_1EECA8
