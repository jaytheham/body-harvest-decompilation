nonmatching func_80073B30_82AE0, 0x48

glabel func_80073B30_82AE0
    /* 82AE0 80073B30 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 82AE4 80073B34 AFA40018 */  sw         $a0, 0x18($sp)
    /* 82AE8 80073B38 24840077 */  addiu      $a0, $a0, 0x77
    /* 82AEC 80073B3C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 82AF0 80073B40 00047400 */  sll        $t6, $a0, 16
    /* 82AF4 80073B44 0C006994 */  jal        func_8001A650_1B250
    /* 82AF8 80073B48 000E2403 */   sra       $a0, $t6, 16
    /* 82AFC 80073B4C 8FB80018 */  lw         $t8, 0x18($sp)
    /* 82B00 80073B50 3C018014 */  lui        $at, %hi(D_8013B94C)
    /* 82B04 80073B54 0018C900 */  sll        $t9, $t8, 4
    /* 82B08 80073B58 00390821 */  addu       $at, $at, $t9
    /* 82B0C 80073B5C 8C39B94C */  lw         $t9, %lo(D_8013B94C)($at)
    /* 82B10 80073B60 0320F809 */  jalr       $t9
    /* 82B14 80073B64 00000000 */   nop
    /* 82B18 80073B68 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 82B1C 80073B6C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 82B20 80073B70 03E00008 */  jr         $ra
    /* 82B24 80073B74 00000000 */   nop
endlabel func_80073B30_82AE0
