nonmatching func_80011F90_12B90, 0x1C

glabel func_80011F90_12B90
    /* 12B90 80011F90 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
    /* 12B94 80011F94 3C0F8007 */  lui        $t7, %hi(D_8006AA70)
    /* 12B98 80011F98 8DEFAA70 */  lw         $t7, %lo(D_8006AA70)($t7)
    /* 12B9C 80011F9C 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
    /* 12BA0 80011FA0 00817024 */  and        $t6, $a0, $at
    /* 12BA4 80011FA4 03E00008 */  jr         $ra
    /* 12BA8 80011FA8 01CF1021 */   addu      $v0, $t6, $t7
endlabel func_80011F90_12B90
