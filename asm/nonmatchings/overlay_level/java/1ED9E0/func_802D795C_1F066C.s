nonmatching func_802D795C_1F066C, 0x24

glabel func_802D795C_1F066C
    /* 1F066C 802D795C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1F0670 802D7960 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F0674 802D7964 3C04802D */  lui        $a0, %hi(func_802D6E70_1EFB80)
    /* 1F0678 802D7968 0C001D2F */  jal        func_800074BC_80BC
    /* 1F067C 802D796C 24846E70 */   addiu     $a0, $a0, %lo(func_802D6E70_1EFB80)
    /* 1F0680 802D7970 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F0684 802D7974 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1F0688 802D7978 03E00008 */  jr         $ra
    /* 1F068C 802D797C 00000000 */   nop
endlabel func_802D795C_1F066C
