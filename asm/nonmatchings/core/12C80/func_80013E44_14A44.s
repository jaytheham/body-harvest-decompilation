nonmatching func_80013E44_14A44, 0x20

glabel func_80013E44_14A44
    /* 14A44 80013E44 3C0E8007 */  lui        $t6, %hi(D_8006AB88)
    /* 14A48 80013E48 8DCEAB88 */  lw         $t6, %lo(D_8006AB88)($t6)
    /* 14A4C 80013E4C 240F0001 */  addiu      $t7, $zero, 0x1
    /* 14A50 80013E50 11C00002 */  beqz       $t6, .L80013E5C_14A5C
    /* 14A54 80013E54 00000000 */   nop
    /* 14A58 80013E58 AC8F0008 */  sw         $t7, 0x8($a0)
  .L80013E5C_14A5C:
    /* 14A5C 80013E5C 03E00008 */  jr         $ra
    /* 14A60 80013E60 00000000 */   nop
endlabel func_80013E44_14A44
