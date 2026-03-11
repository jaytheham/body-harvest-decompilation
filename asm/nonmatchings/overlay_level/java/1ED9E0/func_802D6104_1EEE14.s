nonmatching func_802D6104_1EEE14, 0x24

glabel func_802D6104_1EEE14
    /* 1EEE14 802D6104 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EEE18 802D6108 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EEE1C 802D610C 3C04802D */  lui        $a0, %hi(func_802D60DC_1EEDEC + 0x20)
    /* 1EEE20 802D6110 0C001D04 */  jal        func_80007410_8010
    /* 1EEE24 802D6114 248460FC */   addiu     $a0, $a0, %lo(func_802D60DC_1EEDEC + 0x20)
    /* 1EEE28 802D6118 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EEE2C 802D611C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EEE30 802D6120 03E00008 */  jr         $ra
    /* 1EEE34 802D6124 00000000 */   nop
endlabel func_802D6104_1EEE14
