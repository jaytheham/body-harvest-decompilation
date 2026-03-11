nonmatching func_802DDA64_25D1A4, 0x34

glabel func_802DDA64_25D1A4
    /* 25D1A4 802DDA64 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 25D1A8 802DDA68 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 25D1AC 802DDA6C AFA40018 */  sw         $a0, 0x18($sp)
    /* 25D1B0 802DDA70 308E00FF */  andi       $t6, $a0, 0xFF
    /* 25D1B4 802DDA74 01C02025 */  or         $a0, $t6, $zero
    /* 25D1B8 802DDA78 2405FF84 */  addiu      $a1, $zero, -0x7C
    /* 25D1BC 802DDA7C 24060012 */  addiu      $a2, $zero, 0x12
    /* 25D1C0 802DDA80 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 25D1C4 802DDA84 24070015 */   addiu     $a3, $zero, 0x15
    /* 25D1C8 802DDA88 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 25D1CC 802DDA8C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 25D1D0 802DDA90 03E00008 */  jr         $ra
    /* 25D1D4 802DDA94 00000000 */   nop
endlabel func_802DDA64_25D1A4
