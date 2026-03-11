nonmatching func_802DF8A8_1F85B8, 0x34

glabel func_802DF8A8_1F85B8
    /* 1F85B8 802DF8A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1F85BC 802DF8AC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F85C0 802DF8B0 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1F85C4 802DF8B4 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F85C8 802DF8B8 01C02025 */  or         $a0, $t6, $zero
    /* 1F85CC 802DF8BC 240500AE */  addiu      $a1, $zero, 0xAE
    /* 1F85D0 802DF8C0 2406007E */  addiu      $a2, $zero, 0x7E
    /* 1F85D4 802DF8C4 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 1F85D8 802DF8C8 24070183 */   addiu     $a3, $zero, 0x183
    /* 1F85DC 802DF8CC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F85E0 802DF8D0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1F85E4 802DF8D4 03E00008 */  jr         $ra
    /* 1F85E8 802DF8D8 00000000 */   nop
endlabel func_802DF8A8_1F85B8
