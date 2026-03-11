nonmatching func_8008B020_1730E0, 0x38

glabel func_8008B020_1730E0
    /* 1730E0 8008B020 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1730E4 8008B024 240100FF */  addiu      $at, $zero, 0xFF
    /* 1730E8 8008B028 AFA40000 */  sw         $a0, 0x0($sp)
    /* 1730EC 8008B02C AFA50004 */  sw         $a1, 0x4($sp)
    /* 1730F0 8008B030 11C10007 */  beq        $t6, $at, .L8008B050_173110
    /* 1730F4 8008B034 30AF00FF */   andi      $t7, $a1, 0xFF
    /* 1730F8 8008B038 000EC080 */  sll        $t8, $t6, 2
    /* 1730FC 8008B03C 030EC021 */  addu       $t8, $t8, $t6
    /* 173100 8008B040 0018C080 */  sll        $t8, $t8, 2
    /* 173104 8008B044 3C018010 */  lui        $at, %hi(D_800FC8F7)
    /* 173108 8008B048 00380821 */  addu       $at, $at, $t8
    /* 17310C 8008B04C A02FC8F7 */  sb         $t7, %lo(D_800FC8F7)($at)
  .L8008B050_173110:
    /* 173110 8008B050 03E00008 */  jr         $ra
    /* 173114 8008B054 00000000 */   nop
endlabel func_8008B020_1730E0
