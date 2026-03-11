nonmatching func_80011FC8_12BC8, 0x1C

glabel func_80011FC8_12BC8
    /* 12BC8 80011FC8 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
    /* 12BCC 80011FCC 3C0F8007 */  lui        $t7, %hi(D_8006AA6C)
    /* 12BD0 80011FD0 8DEFAA6C */  lw         $t7, %lo(D_8006AA6C)($t7)
    /* 12BD4 80011FD4 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
    /* 12BD8 80011FD8 00817024 */  and        $t6, $a0, $at
    /* 12BDC 80011FDC 03E00008 */  jr         $ra
    /* 12BE0 80011FE0 01CF1021 */   addu      $v0, $t6, $t7
endlabel func_80011FC8_12BC8
