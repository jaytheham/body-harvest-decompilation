nonmatching func_802D5FBC_1EECCC, 0x28

glabel func_802D5FBC_1EECCC
    /* 1EECCC 802D5FBC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EECD0 802D5FC0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EECD4 802D5FC4 00002025 */  or         $a0, $zero, $zero
    /* 1EECD8 802D5FC8 2405000F */  addiu      $a1, $zero, 0xF
    /* 1EECDC 802D5FCC 0C03BFAD */  jal        func_800EFEB4_FEE64
    /* 1EECE0 802D5FD0 00003025 */   or        $a2, $zero, $zero
    /* 1EECE4 802D5FD4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EECE8 802D5FD8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EECEC 802D5FDC 03E00008 */  jr         $ra
    /* 1EECF0 802D5FE0 00000000 */   nop
endlabel func_802D5FBC_1EECCC
