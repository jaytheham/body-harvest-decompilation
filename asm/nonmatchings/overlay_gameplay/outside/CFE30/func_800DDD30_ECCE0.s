nonmatching func_800DDD30_ECCE0, 0x60

glabel func_800DDD30_ECCE0
    /* ECCE0 800DDD30 308E00FF */  andi       $t6, $a0, 0xFF
    /* ECCE4 800DDD34 00057C00 */  sll        $t7, $a1, 16
    /* ECCE8 800DDD38 0006CC00 */  sll        $t9, $a2, 16
    /* ECCEC 800DDD3C 00074C00 */  sll        $t1, $a3, 16
    /* ECCF0 800DDD40 240100FF */  addiu      $at, $zero, 0xFF
    /* ECCF4 800DDD44 00095403 */  sra        $t2, $t1, 16
    /* ECCF8 800DDD48 00194403 */  sra        $t0, $t9, 16
    /* ECCFC 800DDD4C 000FC403 */  sra        $t8, $t7, 16
    /* ECD00 800DDD50 AFA40000 */  sw         $a0, 0x0($sp)
    /* ECD04 800DDD54 AFA50004 */  sw         $a1, 0x4($sp)
    /* ECD08 800DDD58 AFA60008 */  sw         $a2, 0x8($sp)
    /* ECD0C 800DDD5C 11C1000A */  beq        $t6, $at, .L800DDD88_ECD38
    /* ECD10 800DDD60 AFA7000C */   sw        $a3, 0xC($sp)
    /* ECD14 800DDD64 000E5880 */  sll        $t3, $t6, 2
    /* ECD18 800DDD68 016E5821 */  addu       $t3, $t3, $t6
    /* ECD1C 800DDD6C 3C0C8015 */  lui        $t4, %hi(D_80156EF0)
    /* ECD20 800DDD70 258C6EF0 */  addiu      $t4, $t4, %lo(D_80156EF0)
    /* ECD24 800DDD74 000B5880 */  sll        $t3, $t3, 2
    /* ECD28 800DDD78 016C1021 */  addu       $v0, $t3, $t4
    /* ECD2C 800DDD7C A4580000 */  sh         $t8, 0x0($v0)
    /* ECD30 800DDD80 A4480002 */  sh         $t0, 0x2($v0)
    /* ECD34 800DDD84 A44A0004 */  sh         $t2, 0x4($v0)
  .L800DDD88_ECD38:
    /* ECD38 800DDD88 03E00008 */  jr         $ra
    /* ECD3C 800DDD8C 00000000 */   nop
endlabel func_800DDD30_ECCE0
