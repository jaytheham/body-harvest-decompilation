nonmatching func_800DDE1C_ECDCC, 0x38

glabel func_800DDE1C_ECDCC
    /* ECDCC 800DDE1C 308E00FF */  andi       $t6, $a0, 0xFF
    /* ECDD0 800DDE20 240100FF */  addiu      $at, $zero, 0xFF
    /* ECDD4 800DDE24 AFA40000 */  sw         $a0, 0x0($sp)
    /* ECDD8 800DDE28 AFA50004 */  sw         $a1, 0x4($sp)
    /* ECDDC 800DDE2C 11C10007 */  beq        $t6, $at, .L800DDE4C_ECDFC
    /* ECDE0 800DDE30 30AF00FF */   andi      $t7, $a1, 0xFF
    /* ECDE4 800DDE34 000EC080 */  sll        $t8, $t6, 2
    /* ECDE8 800DDE38 030EC021 */  addu       $t8, $t8, $t6
    /* ECDEC 800DDE3C 0018C080 */  sll        $t8, $t8, 2
    /* ECDF0 800DDE40 3C018015 */  lui        $at, %hi(D_80156EFD)
    /* ECDF4 800DDE44 00380821 */  addu       $at, $at, $t8
    /* ECDF8 800DDE48 A02F6EFD */  sb         $t7, %lo(D_80156EFD)($at)
  .L800DDE4C_ECDFC:
    /* ECDFC 800DDE4C 03E00008 */  jr         $ra
    /* ECE00 800DDE50 00000000 */   nop
endlabel func_800DDE1C_ECDCC
