nonmatching func_80008C18_9818, 0x2C

glabel func_80008C18_9818
    /* 9818 80008C18 3C048004 */  lui        $a0, %hi(D_80047F7E)
    /* 981C 80008C1C 24847F7E */  addiu      $a0, $a0, %lo(D_80047F7E)
    /* 9820 80008C20 2403000F */  addiu      $v1, $zero, 0xF
    /* 9824 80008C24 2405FFFF */  addiu      $a1, $zero, -0x1
  .L80008C28_9828:
    /* 9828 80008C28 00601025 */  or         $v0, $v1, $zero
    /* 982C 80008C2C A4850000 */  sh         $a1, 0x0($a0)
    /* 9830 80008C30 2484FFFE */  addiu      $a0, $a0, -0x2
    /* 9834 80008C34 1460FFFC */  bnez       $v1, .L80008C28_9828
    /* 9838 80008C38 2463FFFF */   addiu     $v1, $v1, -0x1
    /* 983C 80008C3C 03E00008 */  jr         $ra
    /* 9840 80008C40 00000000 */   nop
endlabel func_80008C18_9818
