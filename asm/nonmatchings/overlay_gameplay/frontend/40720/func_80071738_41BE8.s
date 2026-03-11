nonmatching func_80071738_41BE8, 0x28

glabel func_80071738_41BE8
    /* 41BE8 80071738 3C04800D */  lui        $a0, %hi(D_800D747A)
    /* 41BEC 8007173C 2484747A */  addiu      $a0, $a0, %lo(D_800D747A)
    /* 41BF0 80071740 24030029 */  addiu      $v1, $zero, 0x29
  .L80071744_41BF4:
    /* 41BF4 80071744 00601025 */  or         $v0, $v1, $zero
    /* 41BF8 80071748 A0800016 */  sb         $zero, 0x16($a0)
    /* 41BFC 8007174C 2484FFD6 */  addiu      $a0, $a0, -0x2A
    /* 41C00 80071750 1460FFFC */  bnez       $v1, .L80071744_41BF4
    /* 41C04 80071754 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 41C08 80071758 03E00008 */  jr         $ra
    /* 41C0C 8007175C 00000000 */   nop
endlabel func_80071738_41BE8
