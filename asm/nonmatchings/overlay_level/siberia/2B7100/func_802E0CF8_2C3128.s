nonmatching func_802E0CF8_2C3128, 0x28

glabel func_802E0CF8_2C3128
    /* 2C3128 802E0CF8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2C312C 802E0CFC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2C3130 802E0D00 AFA40018 */  sw         $a0, 0x18($sp)
    /* 2C3134 802E0D04 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2C3138 802E0D08 0C0B82C2 */  jal        func_802E0B08_2C2F38
    /* 2C313C 802E0D0C 01C02025 */   or        $a0, $t6, $zero
    /* 2C3140 802E0D10 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2C3144 802E0D14 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2C3148 802E0D18 03E00008 */  jr         $ra
    /* 2C314C 802E0D1C 00000000 */   nop
endlabel func_802E0CF8_2C3128
