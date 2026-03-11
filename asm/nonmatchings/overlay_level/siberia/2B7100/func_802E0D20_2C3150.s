nonmatching func_802E0D20_2C3150, 0x28

glabel func_802E0D20_2C3150
    /* 2C3150 802E0D20 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2C3154 802E0D24 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2C3158 802E0D28 AFA40018 */  sw         $a0, 0x18($sp)
    /* 2C315C 802E0D2C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2C3160 802E0D30 0C0B82C2 */  jal        func_802E0B08_2C2F38
    /* 2C3164 802E0D34 01C02025 */   or        $a0, $t6, $zero
    /* 2C3168 802E0D38 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2C316C 802E0D3C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2C3170 802E0D40 03E00008 */  jr         $ra
    /* 2C3174 802E0D44 00000000 */   nop
endlabel func_802E0D20_2C3150
