nonmatching func_800DDE54_ECE04, 0x3C

glabel func_800DDE54_ECE04
    /* ECE04 800DDE54 308E00FF */  andi       $t6, $a0, 0xFF
    /* ECE08 800DDE58 00057E00 */  sll        $t7, $a1, 24
    /* ECE0C 800DDE5C 240100FF */  addiu      $at, $zero, 0xFF
    /* ECE10 800DDE60 000FC603 */  sra        $t8, $t7, 24
    /* ECE14 800DDE64 AFA40000 */  sw         $a0, 0x0($sp)
    /* ECE18 800DDE68 11C10007 */  beq        $t6, $at, .L800DDE88_ECE38
    /* ECE1C 800DDE6C AFA50004 */   sw        $a1, 0x4($sp)
    /* ECE20 800DDE70 000EC880 */  sll        $t9, $t6, 2
    /* ECE24 800DDE74 032EC821 */  addu       $t9, $t9, $t6
    /* ECE28 800DDE78 0019C880 */  sll        $t9, $t9, 2
    /* ECE2C 800DDE7C 3C018015 */  lui        $at, %hi(D_80156F02)
    /* ECE30 800DDE80 00390821 */  addu       $at, $at, $t9
    /* ECE34 800DDE84 A0386F02 */  sb         $t8, %lo(D_80156F02)($at)
  .L800DDE88_ECE38:
    /* ECE38 800DDE88 03E00008 */  jr         $ra
    /* ECE3C 800DDE8C 00000000 */   nop
endlabel func_800DDE54_ECE04
