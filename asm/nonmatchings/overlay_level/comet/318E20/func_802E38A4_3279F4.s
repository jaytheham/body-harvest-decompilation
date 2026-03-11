nonmatching func_802E38A4_3279F4, 0x34

glabel func_802E38A4_3279F4
    /* 3279F4 802E38A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 3279F8 802E38A8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 3279FC 802E38AC AFA40018 */  sw         $a0, 0x18($sp)
    /* 327A00 802E38B0 308E00FF */  andi       $t6, $a0, 0xFF
    /* 327A04 802E38B4 01C02025 */  or         $a0, $t6, $zero
    /* 327A08 802E38B8 24050091 */  addiu      $a1, $zero, 0x91
    /* 327A0C 802E38BC 2406FFDB */  addiu      $a2, $zero, -0x25
    /* 327A10 802E38C0 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 327A14 802E38C4 240700BB */   addiu     $a3, $zero, 0xBB
    /* 327A18 802E38C8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 327A1C 802E38CC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 327A20 802E38D0 03E00008 */  jr         $ra
    /* 327A24 802E38D4 00000000 */   nop
endlabel func_802E38A4_3279F4
