nonmatching func_800056A8_62A8, 0x28

glabel func_800056A8_62A8
    /* 62A8 800056A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 62AC 800056AC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 62B0 800056B0 00002025 */  or         $a0, $zero, $zero
    /* 62B4 800056B4 00002825 */  or         $a1, $zero, $zero
    /* 62B8 800056B8 0C001595 */  jal        func_80005654_6254
    /* 62BC 800056BC 00003025 */   or        $a2, $zero, $zero
    /* 62C0 800056C0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 62C4 800056C4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 62C8 800056C8 03E00008 */  jr         $ra
    /* 62CC 800056CC 00000000 */   nop
endlabel func_800056A8_62A8
