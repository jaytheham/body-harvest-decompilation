nonmatching func_80011FAC_12BAC, 0x1C

glabel func_80011FAC_12BAC
    /* 12BAC 80011FAC 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
    /* 12BB0 80011FB0 3C0F8003 */  lui        $t7, %hi(__printfunc)
    /* 12BB4 80011FB4 8DEF1C84 */  lw         $t7, %lo(__printfunc)($t7)
    /* 12BB8 80011FB8 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
    /* 12BBC 80011FBC 00817024 */  and        $t6, $a0, $at
    /* 12BC0 80011FC0 03E00008 */  jr         $ra
    /* 12BC4 80011FC4 01CF1021 */   addu      $v0, $t6, $t7
endlabel func_80011FAC_12BAC
