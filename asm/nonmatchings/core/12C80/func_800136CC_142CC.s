nonmatching func_800136CC_142CC, 0x24

glabel func_800136CC_142CC
    /* 142CC 800136CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 142D0 800136D0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 142D4 800136D4 24040023 */  addiu      $a0, $zero, 0x23
    /* 142D8 800136D8 0C005725 */  jal        func_80015C94_16894
    /* 142DC 800136DC 24050010 */   addiu     $a1, $zero, 0x10
    /* 142E0 800136E0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 142E4 800136E4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 142E8 800136E8 03E00008 */  jr         $ra
    /* 142EC 800136EC 00000000 */   nop
endlabel func_800136CC_142CC
