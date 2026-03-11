nonmatching func_8001A130_1AD30, 0x30

glabel func_8001A130_1AD30
    /* 1AD30 8001A130 3C0E8003 */  lui        $t6, %hi(D_80034478)
    /* 1AD34 8001A134 8DCE4478 */  lw         $t6, %lo(D_80034478)($t6)
    /* 1AD38 8001A138 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1AD3C 8001A13C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1AD40 8001A140 51C00004 */  beql       $t6, $zero, .L8001A154_1AD54
    /* 1AD44 8001A144 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1AD48 8001A148 0C0066AF */  jal        func_80019ABC_1A6BC
    /* 1AD4C 8001A14C 00000000 */   nop
    /* 1AD50 8001A150 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8001A154_1AD54:
    /* 1AD54 8001A154 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1AD58 8001A158 03E00008 */  jr         $ra
    /* 1AD5C 8001A15C 00000000 */   nop
endlabel func_8001A130_1AD30
