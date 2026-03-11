nonmatching func_802D9FB4_2BC3E4, 0x30

glabel func_802D9FB4_2BC3E4
    /* 2BC3E4 802D9FB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2BC3E8 802D9FB8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2BC3EC 802D9FBC AFA40018 */  sw         $a0, 0x18($sp)
    /* 2BC3F0 802D9FC0 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 2BC3F4 802D9FC4 0C04DD1A */  jal        func_80137468_146418
    /* 2BC3F8 802D9FC8 2405026A */   addiu     $a1, $zero, 0x26A
    /* 2BC3FC 802D9FCC 0C021CD7 */  jal        func_8008735C_9630C
    /* 2BC400 802D9FD0 93A4001B */   lbu       $a0, 0x1B($sp)
    /* 2BC404 802D9FD4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2BC408 802D9FD8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2BC40C 802D9FDC 03E00008 */  jr         $ra
    /* 2BC410 802D9FE0 00000000 */   nop
endlabel func_802D9FB4_2BC3E4
