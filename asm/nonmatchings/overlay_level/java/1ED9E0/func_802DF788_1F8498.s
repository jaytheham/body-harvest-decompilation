nonmatching func_802DF788_1F8498, 0x34

glabel func_802DF788_1F8498
    /* 1F8498 802DF788 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1F849C 802DF78C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F84A0 802DF790 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1F84A4 802DF794 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F84A8 802DF798 01C02025 */  or         $a0, $t6, $zero
    /* 1F84AC 802DF79C 2405FF52 */  addiu      $a1, $zero, -0xAE
    /* 1F84B0 802DF7A0 2406007E */  addiu      $a2, $zero, 0x7E
    /* 1F84B4 802DF7A4 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 1F84B8 802DF7A8 24070183 */   addiu     $a3, $zero, 0x183
    /* 1F84BC 802DF7AC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F84C0 802DF7B0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1F84C4 802DF7B4 03E00008 */  jr         $ra
    /* 1F84C8 802DF7B8 00000000 */   nop
endlabel func_802DF788_1F8498
