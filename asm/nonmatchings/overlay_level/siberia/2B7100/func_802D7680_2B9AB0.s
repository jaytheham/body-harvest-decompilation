nonmatching func_802D7680_2B9AB0, 0x1C

glabel func_802D7680_2B9AB0
    /* 2B9AB0 802D7680 3C02802E */  lui        $v0, %hi(D_802E3100)
    /* 2B9AB4 802D7684 24423100 */  addiu      $v0, $v0, %lo(D_802E3100)
    /* 2B9AB8 802D7688 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 2B9ABC 802D768C AFA40000 */  sw         $a0, 0x0($sp)
    /* 2B9AC0 802D7690 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* 2B9AC4 802D7694 03E00008 */  jr         $ra
    /* 2B9AC8 802D7698 AC4F0000 */   sw        $t7, 0x0($v0)
endlabel func_802D7680_2B9AB0
