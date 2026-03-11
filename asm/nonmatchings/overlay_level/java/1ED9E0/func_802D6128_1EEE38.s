nonmatching func_802D6128_1EEE38, 0x24

glabel func_802D6128_1EEE38
    /* 1EEE38 802D6128 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EEE3C 802D612C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EEE40 802D6130 3C04802D */  lui        $a0, %hi(func_802D60DC_1EEDEC + 0x20)
    /* 1EEE44 802D6134 0C001D2F */  jal        func_800074BC_80BC
    /* 1EEE48 802D6138 248460FC */   addiu     $a0, $a0, %lo(func_802D60DC_1EEDEC + 0x20)
    /* 1EEE4C 802D613C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EEE50 802D6140 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EEE54 802D6144 03E00008 */  jr         $ra
    /* 1EEE58 802D6148 00000000 */   nop
endlabel func_802D6128_1EEE38
