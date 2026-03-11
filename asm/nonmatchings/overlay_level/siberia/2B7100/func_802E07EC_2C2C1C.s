nonmatching func_802E07EC_2C2C1C, 0x34

glabel func_802E07EC_2C2C1C
    /* 2C2C1C 802E07EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2C2C20 802E07F0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2C2C24 802E07F4 AFA40018 */  sw         $a0, 0x18($sp)
    /* 2C2C28 802E07F8 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2C2C2C 802E07FC 01C02025 */  or         $a0, $t6, $zero
    /* 2C2C30 802E0800 2405FEDF */  addiu      $a1, $zero, -0x121
    /* 2C2C34 802E0804 2406FFE6 */  addiu      $a2, $zero, -0x1A
    /* 2C2C38 802E0808 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 2C2C3C 802E080C 24070144 */   addiu     $a3, $zero, 0x144
    /* 2C2C40 802E0810 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2C2C44 802E0814 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2C2C48 802E0818 03E00008 */  jr         $ra
    /* 2C2C4C 802E081C 00000000 */   nop
endlabel func_802E07EC_2C2C1C
