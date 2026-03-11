nonmatching func_8012FFB0_13EF60, 0x6C

glabel func_8012FFB0_13EF60
    /* 13EF60 8012FFB0 3C0E8005 */  lui        $t6, %hi(D_80052B2C)
    /* 13EF64 8012FFB4 8DCE2B2C */  lw         $t6, %lo(D_80052B2C)($t6)
    /* 13EF68 8012FFB8 3C188004 */  lui        $t8, %hi(currentLevel)
    /* 13EF6C 8012FFBC 8F187F90 */  lw         $t8, %lo(currentLevel)($t8)
    /* 13EF70 8012FFC0 8DCF0030 */  lw         $t7, 0x30($t6)
    /* 13EF74 8012FFC4 3C058005 */  lui        $a1, %hi(D_80052A98)
    /* 13EF78 8012FFC8 24A52A98 */  addiu      $a1, $a1, %lo(D_80052A98)
    /* 13EF7C 8012FFCC 0018C8C0 */  sll        $t9, $t8, 3
    /* 13EF80 8012FFD0 00B94021 */  addu       $t0, $a1, $t9
    /* 13EF84 8012FFD4 24020002 */  addiu      $v0, $zero, 0x2
    /* 13EF88 8012FFD8 AD0FFFF8 */  sw         $t7, -0x8($t0)
    /* 13EF8C 8012FFDC 3C038005 */  lui        $v1, %hi(D_80052A98)
    /* 13EF90 8012FFE0 3C098005 */  lui        $t1, %hi(D_80052AA0)
    /* 13EF94 8012FFE4 000250C0 */  sll        $t2, $v0, 3
    /* 13EF98 8012FFE8 8D292AA0 */  lw         $t1, %lo(D_80052AA0)($t1)
    /* 13EF9C 8012FFEC 8C632A98 */  lw         $v1, %lo(D_80052A98)($v1)
    /* 13EFA0 8012FFF0 00AA2021 */  addu       $a0, $a1, $t2
    /* 13EFA4 8012FFF4 8C8B0000 */  lw         $t3, 0x0($a0)
    /* 13EFA8 8012FFF8 8C8C0008 */  lw         $t4, 0x8($a0)
    /* 13EFAC 8012FFFC 8C8D0010 */  lw         $t5, 0x10($a0)
    /* 13EFB0 80130000 00691821 */  addu       $v1, $v1, $t1
    /* 13EFB4 80130004 006B1821 */  addu       $v1, $v1, $t3
    /* 13EFB8 80130008 8C8E0018 */  lw         $t6, 0x18($a0)
    /* 13EFBC 8013000C 006C1821 */  addu       $v1, $v1, $t4
    /* 13EFC0 80130010 006D1821 */  addu       $v1, $v1, $t5
    /* 13EFC4 80130014 03E00008 */  jr         $ra
    /* 13EFC8 80130018 006E1021 */   addu      $v0, $v1, $t6
endlabel func_8012FFB0_13EF60
