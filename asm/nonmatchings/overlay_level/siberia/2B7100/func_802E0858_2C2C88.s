nonmatching func_802E0858_2C2C88, 0x34

glabel func_802E0858_2C2C88
    /* 2C2C88 802E0858 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2C2C8C 802E085C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2C2C90 802E0860 AFA40018 */  sw         $a0, 0x18($sp)
    /* 2C2C94 802E0864 308E00FF */  andi       $t6, $a0, 0xFF
    /* 2C2C98 802E0868 01C02025 */  or         $a0, $t6, $zero
    /* 2C2C9C 802E086C 2405011A */  addiu      $a1, $zero, 0x11A
    /* 2C2CA0 802E0870 2406FFE3 */  addiu      $a2, $zero, -0x1D
    /* 2C2CA4 802E0874 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 2C2CA8 802E0878 2407014E */   addiu     $a3, $zero, 0x14E
    /* 2C2CAC 802E087C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2C2CB0 802E0880 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2C2CB4 802E0884 03E00008 */  jr         $ra
    /* 2C2CB8 802E0888 00000000 */   nop
endlabel func_802E0858_2C2C88
