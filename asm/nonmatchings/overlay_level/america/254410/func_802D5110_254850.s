nonmatching func_802D5110_254850, 0x38

glabel func_802D5110_254850
    /* 254850 802D5110 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 254854 802D5114 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 254858 802D5118 3C01802E */  lui        $at, %hi(D_802E0E34)
    /* 25485C 802D511C 3C04802D */  lui        $a0, %hi(func_802D4FBC_2546FC)
    /* 254860 802D5120 A4200E34 */  sh         $zero, %lo(D_802E0E34)($at)
    /* 254864 802D5124 0C001D04 */  jal        func_80007410_8010
    /* 254868 802D5128 24844FBC */   addiu     $a0, $a0, %lo(func_802D4FBC_2546FC)
    /* 25486C 802D512C 3C04802D */  lui        $a0, %hi(func_802D5044_254784)
    /* 254870 802D5130 0C001D04 */  jal        func_80007410_8010
    /* 254874 802D5134 24845044 */   addiu     $a0, $a0, %lo(func_802D5044_254784)
    /* 254878 802D5138 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 25487C 802D513C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 254880 802D5140 03E00008 */  jr         $ra
    /* 254884 802D5144 00000000 */   nop
endlabel func_802D5110_254850
