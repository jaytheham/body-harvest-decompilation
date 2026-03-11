nonmatching func_800DDDE4_ECD94, 0x38

glabel func_800DDDE4_ECD94
    /* ECD94 800DDDE4 308E00FF */  andi       $t6, $a0, 0xFF
    /* ECD98 800DDDE8 240100FF */  addiu      $at, $zero, 0xFF
    /* ECD9C 800DDDEC AFA40000 */  sw         $a0, 0x0($sp)
    /* ECDA0 800DDDF0 AFA50004 */  sw         $a1, 0x4($sp)
    /* ECDA4 800DDDF4 11C10007 */  beq        $t6, $at, .L800DDE14_ECDC4
    /* ECDA8 800DDDF8 30AF00FF */   andi      $t7, $a1, 0xFF
    /* ECDAC 800DDDFC 000EC080 */  sll        $t8, $t6, 2
    /* ECDB0 800DDE00 030EC021 */  addu       $t8, $t8, $t6
    /* ECDB4 800DDE04 0018C080 */  sll        $t8, $t8, 2
    /* ECDB8 800DDE08 3C018015 */  lui        $at, %hi(D_80156EFA)
    /* ECDBC 800DDE0C 00380821 */  addu       $at, $at, $t8
    /* ECDC0 800DDE10 A42F6EFA */  sh         $t7, %lo(D_80156EFA)($at)
  .L800DDE14_ECDC4:
    /* ECDC4 800DDE14 03E00008 */  jr         $ra
    /* ECDC8 800DDE18 00000000 */   nop
endlabel func_800DDDE4_ECD94
