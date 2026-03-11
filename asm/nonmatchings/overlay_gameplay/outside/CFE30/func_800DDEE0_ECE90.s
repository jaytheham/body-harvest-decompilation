nonmatching func_800DDEE0_ECE90, 0x38

glabel func_800DDEE0_ECE90
    /* ECE90 800DDEE0 308E00FF */  andi       $t6, $a0, 0xFF
    /* ECE94 800DDEE4 240100FF */  addiu      $at, $zero, 0xFF
    /* ECE98 800DDEE8 AFA40000 */  sw         $a0, 0x0($sp)
    /* ECE9C 800DDEEC AFA50004 */  sw         $a1, 0x4($sp)
    /* ECEA0 800DDEF0 11C10007 */  beq        $t6, $at, .L800DDF10_ECEC0
    /* ECEA4 800DDEF4 30AF00FF */   andi      $t7, $a1, 0xFF
    /* ECEA8 800DDEF8 000EC080 */  sll        $t8, $t6, 2
    /* ECEAC 800DDEFC 030EC021 */  addu       $t8, $t8, $t6
    /* ECEB0 800DDF00 0018C080 */  sll        $t8, $t8, 2
    /* ECEB4 800DDF04 3C018015 */  lui        $at, %hi(D_80156EFF)
    /* ECEB8 800DDF08 00380821 */  addu       $at, $at, $t8
    /* ECEBC 800DDF0C A02F6EFF */  sb         $t7, %lo(D_80156EFF)($at)
  .L800DDF10_ECEC0:
    /* ECEC0 800DDF10 03E00008 */  jr         $ra
    /* ECEC4 800DDF14 00000000 */   nop
endlabel func_800DDEE0_ECE90
