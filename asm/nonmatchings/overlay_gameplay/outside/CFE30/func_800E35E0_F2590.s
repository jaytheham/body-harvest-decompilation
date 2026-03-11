nonmatching func_800E35E0_F2590, 0x2C

glabel func_800E35E0_F2590
    /* F2590 800E35E0 3C028014 */  lui        $v0, %hi(D_8013E344)
    /* F2594 800E35E4 2442E344 */  addiu      $v0, $v0, %lo(D_8013E344)
    /* F2598 800E35E8 904F0000 */  lbu        $t7, 0x0($v0)
    /* F259C 800E35EC 308E00FF */  andi       $t6, $a0, 0xFF
    /* F25A0 800E35F0 AFA40000 */  sw         $a0, 0x0($sp)
    /* F25A4 800E35F4 01EE082A */  slt        $at, $t7, $t6
    /* F25A8 800E35F8 10200002 */  beqz       $at, .L800E3604_F25B4
    /* F25AC 800E35FC 00000000 */   nop
    /* F25B0 800E3600 A04E0000 */  sb         $t6, 0x0($v0)
  .L800E3604_F25B4:
    /* F25B4 800E3604 03E00008 */  jr         $ra
    /* F25B8 800E3608 00000000 */   nop
endlabel func_800E35E0_F2590
