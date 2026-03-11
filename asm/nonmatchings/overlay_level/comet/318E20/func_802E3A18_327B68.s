nonmatching func_802E3A18_327B68, 0x34

glabel func_802E3A18_327B68
    /* 327B68 802E3A18 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 327B6C 802E3A1C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 327B70 802E3A20 AFA40018 */  sw         $a0, 0x18($sp)
    /* 327B74 802E3A24 308E00FF */  andi       $t6, $a0, 0xFF
    /* 327B78 802E3A28 01C02025 */  or         $a0, $t6, $zero
    /* 327B7C 802E3A2C 2405FF6A */  addiu      $a1, $zero, -0x96
    /* 327B80 802E3A30 2406FFDB */  addiu      $a2, $zero, -0x25
    /* 327B84 802E3A34 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 327B88 802E3A38 240700D4 */   addiu     $a3, $zero, 0xD4
    /* 327B8C 802E3A3C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 327B90 802E3A40 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 327B94 802E3A44 03E00008 */  jr         $ra
    /* 327B98 802E3A48 00000000 */   nop
endlabel func_802E3A18_327B68
