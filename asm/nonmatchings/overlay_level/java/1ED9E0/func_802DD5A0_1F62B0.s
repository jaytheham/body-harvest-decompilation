nonmatching func_802DD5A0_1F62B0, 0x2C

glabel func_802DD5A0_1F62B0
    /* 1F62B0 802DD5A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1F62B4 802DD5A4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F62B8 802DD5A8 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1F62BC 802DD5AC 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F62C0 802DD5B0 01C02025 */  or         $a0, $t6, $zero
    /* 1F62C4 802DD5B4 0C0B7450 */  jal        func_802DD140_1F5E50
    /* 1F62C8 802DD5B8 24050004 */   addiu     $a1, $zero, 0x4
    /* 1F62CC 802DD5BC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F62D0 802DD5C0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1F62D4 802DD5C4 03E00008 */  jr         $ra
    /* 1F62D8 802DD5C8 00000000 */   nop
endlabel func_802DD5A0_1F62B0
