nonmatching func_802E3E30_327F80, 0x34

glabel func_802E3E30_327F80
    /* 327F80 802E3E30 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 327F84 802E3E34 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 327F88 802E3E38 AFA40018 */  sw         $a0, 0x18($sp)
    /* 327F8C 802E3E3C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 327F90 802E3E40 01C02025 */  or         $a0, $t6, $zero
    /* 327F94 802E3E44 24050091 */  addiu      $a1, $zero, 0x91
    /* 327F98 802E3E48 2406FFDB */  addiu      $a2, $zero, -0x25
    /* 327F9C 802E3E4C 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 327FA0 802E3E50 240700BB */   addiu     $a3, $zero, 0xBB
    /* 327FA4 802E3E54 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 327FA8 802E3E58 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 327FAC 802E3E5C 03E00008 */  jr         $ra
    /* 327FB0 802E3E60 00000000 */   nop
endlabel func_802E3E30_327F80
