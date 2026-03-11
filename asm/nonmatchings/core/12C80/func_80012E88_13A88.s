nonmatching func_80012E88_13A88, 0x3C

glabel func_80012E88_13A88
    /* 13A88 80012E88 3C188007 */  lui        $t8, %hi(D_8006AB88)
    /* 13A8C 80012E8C 8F18AB88 */  lw         $t8, %lo(D_8006AB88)($t8)
    /* 13A90 80012E90 AFA40000 */  sw         $a0, 0x0($sp)
    /* 13A94 80012E94 00047600 */  sll        $t6, $a0, 24
    /* 13A98 80012E98 17000003 */  bnez       $t8, .L80012EA8_13AA8
    /* 13A9C 80012E9C 000E2603 */   sra       $a0, $t6, 24
    /* 13AA0 80012EA0 03E00008 */  jr         $ra
    /* 13AA4 80012EA4 00001025 */   or        $v0, $zero, $zero
  .L80012EA8_13AA8:
    /* 13AA8 80012EA8 0004C880 */  sll        $t9, $a0, 2
    /* 13AAC 80012EAC 3C088007 */  lui        $t0, %hi(D_8006AB18)
    /* 13AB0 80012EB0 01194021 */  addu       $t0, $t0, $t9
    /* 13AB4 80012EB4 8D08AB18 */  lw         $t0, %lo(D_8006AB18)($t0)
    /* 13AB8 80012EB8 8D02002C */  lw         $v0, 0x2C($t0)
    /* 13ABC 80012EBC 03E00008 */  jr         $ra
    /* 13AC0 80012EC0 00000000 */   nop
endlabel func_80012E88_13A88
