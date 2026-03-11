nonmatching func_800074BC_80BC, 0x38

glabel func_800074BC_80BC
    /* 80BC 800074BC 3C058005 */  lui        $a1, %hi(D_8004DC74)
    /* 80C0 800074C0 24A5DC74 */  addiu      $a1, $a1, %lo(D_8004DC74)
    /* 80C4 800074C4 24030003 */  addiu      $v1, $zero, 0x3
  .L800074C8_80C8:
    /* 80C8 800074C8 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 80CC 800074CC 00601025 */  or         $v0, $v1, $zero
    /* 80D0 800074D0 548E0004 */  bnel       $a0, $t6, .L800074E4_80E4
    /* 80D4 800074D4 24A5FFFC */   addiu     $a1, $a1, -0x4
    /* 80D8 800074D8 03E00008 */  jr         $ra
    /* 80DC 800074DC ACA00000 */   sw        $zero, 0x0($a1)
    /* 80E0 800074E0 24A5FFFC */  addiu      $a1, $a1, -0x4
  .L800074E4_80E4:
    /* 80E4 800074E4 1460FFF8 */  bnez       $v1, .L800074C8_80C8
    /* 80E8 800074E8 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 80EC 800074EC 03E00008 */  jr         $ra
    /* 80F0 800074F0 00000000 */   nop
endlabel func_800074BC_80BC
