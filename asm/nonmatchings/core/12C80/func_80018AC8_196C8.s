nonmatching func_80018AC8_196C8, 0x24

glabel func_80018AC8_196C8
    /* 196C8 80018AC8 3C0E8003 */  lui        $t6, %hi(D_8003449C)
    /* 196CC 80018ACC 8DCE449C */  lw         $t6, %lo(D_8003449C)($t6)
    /* 196D0 80018AD0 00001025 */  or         $v0, $zero, $zero
    /* 196D4 80018AD4 11C00003 */  beqz       $t6, .L80018AE4_196E4
    /* 196D8 80018AD8 00000000 */   nop
    /* 196DC 80018ADC 03E00008 */  jr         $ra
    /* 196E0 80018AE0 24020001 */   addiu     $v0, $zero, 0x1
  .L80018AE4_196E4:
    /* 196E4 80018AE4 03E00008 */  jr         $ra
    /* 196E8 80018AE8 00000000 */   nop
endlabel func_80018AC8_196C8
