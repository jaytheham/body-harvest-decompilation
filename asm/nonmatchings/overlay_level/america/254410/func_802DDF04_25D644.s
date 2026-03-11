nonmatching func_802DDF04_25D644, 0x4C

glabel func_802DDF04_25D644
    /* 25D644 802DDF04 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 25D648 802DDF08 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 25D64C 802DDF0C AFA40018 */  sw         $a0, 0x18($sp)
    /* 25D650 802DDF10 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 25D654 802DDF14 2405FFFA */  addiu      $a1, $zero, -0x6
    /* 25D658 802DDF18 2406FF8D */  addiu      $a2, $zero, -0x73
    /* 25D65C 802DDF1C 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 25D660 802DDF20 24070013 */   addiu     $a3, $zero, 0x13
    /* 25D664 802DDF24 93AF001B */  lbu        $t7, 0x1B($sp)
    /* 25D668 802DDF28 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 25D66C 802DDF2C 3C018005 */  lui        $at, %hi(D_800481C4)
    /* 25D670 802DDF30 000FC080 */  sll        $t8, $t7, 2
    /* 25D674 802DDF34 030FC021 */  addu       $t8, $t8, $t7
    /* 25D678 802DDF38 0018C100 */  sll        $t8, $t8, 4
    /* 25D67C 802DDF3C 00380821 */  addu       $at, $at, $t8
    /* 25D680 802DDF40 240E0100 */  addiu      $t6, $zero, 0x100
    /* 25D684 802DDF44 A42E81C4 */  sh         $t6, %lo(D_800481C4)($at)
    /* 25D688 802DDF48 03E00008 */  jr         $ra
    /* 25D68C 802DDF4C 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_802DDF04_25D644
