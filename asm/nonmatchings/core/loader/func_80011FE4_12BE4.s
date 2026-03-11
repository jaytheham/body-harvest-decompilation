nonmatching func_80011FE4_12BE4, 0x1C

glabel func_80011FE4_12BE4
    /* 12BE4 80011FE4 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
    /* 12BE8 80011FE8 3C0F8007 */  lui        $t7, %hi(D_8006AA74)
    /* 12BEC 80011FEC 8DEFAA74 */  lw         $t7, %lo(D_8006AA74)($t7)
    /* 12BF0 80011FF0 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
    /* 12BF4 80011FF4 00817024 */  and        $t6, $a0, $at
    /* 12BF8 80011FF8 03E00008 */  jr         $ra
    /* 12BFC 80011FFC 01CF1021 */   addu      $v0, $t6, $t7
endlabel func_80011FE4_12BE4
