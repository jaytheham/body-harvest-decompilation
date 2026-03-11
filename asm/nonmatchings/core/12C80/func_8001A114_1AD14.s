nonmatching func_8001A114_1AD14, 0x1C

glabel func_8001A114_1AD14
    /* 1AD14 8001A114 3C0E8007 */  lui        $t6, %hi(D_8006C558)
    /* 1AD18 8001A118 3C0F8003 */  lui        $t7, %hi(D_80034468)
    /* 1AD1C 8001A11C 8DEF4468 */  lw         $t7, %lo(D_80034468)($t7)
    /* 1AD20 8001A120 85CEC558 */  lh         $t6, %lo(D_8006C558)($t6)
    /* 1AD24 8001A124 01CFC021 */  addu       $t8, $t6, $t7
    /* 1AD28 8001A128 03E00008 */  jr         $ra
    /* 1AD2C 8001A12C 93020000 */   lbu       $v0, 0x0($t8)
endlabel func_8001A114_1AD14
