nonmatching func_802D6A4C_2B8E7C, 0x24

glabel func_802D6A4C_2B8E7C
    /* 2B8E7C 802D6A4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B8E80 802D6A50 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B8E84 802D6A54 3C048016 */  lui        $a0, %hi(D_801591C4)
    /* 2B8E88 802D6A58 0C02B864 */  jal        func_800AE190_BD140
    /* 2B8E8C 802D6A5C 848491C4 */   lh        $a0, %lo(D_801591C4)($a0)
    /* 2B8E90 802D6A60 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B8E94 802D6A64 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B8E98 802D6A68 03E00008 */  jr         $ra
    /* 2B8E9C 802D6A6C 00000000 */   nop
endlabel func_802D6A4C_2B8E7C
