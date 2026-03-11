nonmatching func_802E3550_3276A0, 0x34

glabel func_802E3550_3276A0
    /* 3276A0 802E3550 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 3276A4 802E3554 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 3276A8 802E3558 AFA40018 */  sw         $a0, 0x18($sp)
    /* 3276AC 802E355C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 3276B0 802E3560 01C02025 */  or         $a0, $t6, $zero
    /* 3276B4 802E3564 2405FFC5 */  addiu      $a1, $zero, -0x3B
    /* 3276B8 802E3568 24060117 */  addiu      $a2, $zero, 0x117
    /* 3276BC 802E356C 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 3276C0 802E3570 240700A9 */   addiu     $a3, $zero, 0xA9
    /* 3276C4 802E3574 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 3276C8 802E3578 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 3276CC 802E357C 03E00008 */  jr         $ra
    /* 3276D0 802E3580 00000000 */   nop
endlabel func_802E3550_3276A0
