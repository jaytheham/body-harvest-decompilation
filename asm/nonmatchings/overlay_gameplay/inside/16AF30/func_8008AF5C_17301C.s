nonmatching func_8008AF5C_17301C, 0x38

glabel func_8008AF5C_17301C
    /* 17301C 8008AF5C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 173020 8008AF60 240100FF */  addiu      $at, $zero, 0xFF
    /* 173024 8008AF64 AFA40000 */  sw         $a0, 0x0($sp)
    /* 173028 8008AF68 AFA50004 */  sw         $a1, 0x4($sp)
    /* 17302C 8008AF6C 11C10007 */  beq        $t6, $at, .L8008AF8C_17304C
    /* 173030 8008AF70 30AF00FF */   andi      $t7, $a1, 0xFF
    /* 173034 8008AF74 000EC080 */  sll        $t8, $t6, 2
    /* 173038 8008AF78 030EC021 */  addu       $t8, $t8, $t6
    /* 17303C 8008AF7C 0018C080 */  sll        $t8, $t8, 2
    /* 173040 8008AF80 3C018010 */  lui        $at, %hi(D_800FC8F5)
    /* 173044 8008AF84 00380821 */  addu       $at, $at, $t8
    /* 173048 8008AF88 A02FC8F5 */  sb         $t7, %lo(D_800FC8F5)($at)
  .L8008AF8C_17304C:
    /* 17304C 8008AF8C 03E00008 */  jr         $ra
    /* 173050 8008AF90 00000000 */   nop
endlabel func_8008AF5C_17301C
