nonmatching func_802D9100_31D250, 0x28

glabel func_802D9100_31D250
    /* 31D250 802D9100 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 31D254 802D9104 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 31D258 802D9108 AFA40018 */  sw         $a0, 0x18($sp)
    /* 31D25C 802D910C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 31D260 802D9110 0C021CD7 */  jal        func_8008735C_9630C
    /* 31D264 802D9114 01C02025 */   or        $a0, $t6, $zero
    /* 31D268 802D9118 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 31D26C 802D911C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 31D270 802D9120 03E00008 */  jr         $ra
    /* 31D274 802D9124 00000000 */   nop
endlabel func_802D9100_31D250
