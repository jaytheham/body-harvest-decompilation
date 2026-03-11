nonmatching func_802D72A0_2B96D0, 0x24

glabel func_802D72A0_2B96D0
    /* 2B96D0 802D72A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B96D4 802D72A4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B96D8 802D72A8 90850009 */  lbu        $a1, 0x9($a0)
    /* 2B96DC 802D72AC 0C001CB3 */  jal        func_800072CC_7ECC
    /* 2B96E0 802D72B0 24040000 */   addiu     $a0, $zero, 0x0
    /* 2B96E4 802D72B4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B96E8 802D72B8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B96EC 802D72BC 03E00008 */  jr         $ra
    /* 2B96F0 802D72C0 00000000 */   nop
endlabel func_802D72A0_2B96D0
