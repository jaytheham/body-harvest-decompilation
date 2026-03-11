nonmatching func_802DEE18_1F7B28, 0x34

glabel func_802DEE18_1F7B28
    /* 1F7B28 802DEE18 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1F7B2C 802DEE1C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F7B30 802DEE20 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1F7B34 802DEE24 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F7B38 802DEE28 01C02025 */  or         $a0, $t6, $zero
    /* 1F7B3C 802DEE2C 00002825 */  or         $a1, $zero, $zero
    /* 1F7B40 802DEE30 2406FFFF */  addiu      $a2, $zero, -0x1
    /* 1F7B44 802DEE34 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 1F7B48 802DEE38 240700C6 */   addiu     $a3, $zero, 0xC6
    /* 1F7B4C 802DEE3C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F7B50 802DEE40 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1F7B54 802DEE44 03E00008 */  jr         $ra
    /* 1F7B58 802DEE48 00000000 */   nop
endlabel func_802DEE18_1F7B28
