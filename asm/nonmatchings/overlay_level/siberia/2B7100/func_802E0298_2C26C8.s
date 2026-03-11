nonmatching func_802E0298_2C26C8, 0x34

glabel func_802E0298_2C26C8
    /* 2C26C8 802E0298 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2C26CC 802E029C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2C26D0 802E02A0 AFA40018 */  sw         $a0, 0x18($sp)
    /* 2C26D4 802E02A4 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2C26D8 802E02A8 01C02025 */  or         $a0, $t6, $zero
    /* 2C26DC 802E02AC 2405FFF5 */  addiu      $a1, $zero, -0xB
    /* 2C26E0 802E02B0 240600B6 */  addiu      $a2, $zero, 0xB6
    /* 2C26E4 802E02B4 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 2C26E8 802E02B8 2407FED5 */   addiu     $a3, $zero, -0x12B
    /* 2C26EC 802E02BC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2C26F0 802E02C0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2C26F4 802E02C4 03E00008 */  jr         $ra
    /* 2C26F8 802E02C8 00000000 */   nop
endlabel func_802E0298_2C26C8
