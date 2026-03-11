nonmatching func_80018AA0_196A0, 0x28

glabel func_80018AA0_196A0
    /* 196A0 80018AA0 3C0E8003 */  lui        $t6, %hi(D_8003449C)
    /* 196A4 80018AA4 8DCE449C */  lw         $t6, %lo(D_8003449C)($t6)
    /* 196A8 80018AA8 24010018 */  addiu      $at, $zero, 0x18
    /* 196AC 80018AAC 00001025 */  or         $v0, $zero, $zero
    /* 196B0 80018AB0 15C10003 */  bne        $t6, $at, .L80018AC0_196C0
    /* 196B4 80018AB4 00000000 */   nop
    /* 196B8 80018AB8 03E00008 */  jr         $ra
    /* 196BC 80018ABC 24020001 */   addiu     $v0, $zero, 0x1
  .L80018AC0_196C0:
    /* 196C0 80018AC0 03E00008 */  jr         $ra
    /* 196C4 80018AC4 00000000 */   nop
endlabel func_80018AA0_196A0
