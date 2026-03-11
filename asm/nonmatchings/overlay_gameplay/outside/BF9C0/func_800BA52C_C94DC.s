nonmatching func_800BA52C_C94DC, 0x84

glabel func_800BA52C_C94DC
    /* C94DC 800BA52C 00047400 */  sll        $t6, $a0, 16
    /* C94E0 800BA530 000E7C03 */  sra        $t7, $t6, 16
    /* C94E4 800BA534 01EF0019 */  multu      $t7, $t7
    /* C94E8 800BA538 0005C400 */  sll        $t8, $a1, 16
    /* C94EC 800BA53C 0018CC03 */  sra        $t9, $t8, 16
    /* C94F0 800BA540 3C010001 */  lui        $at, (0x124F8 >> 16)
    /* C94F4 800BA544 342124F8 */  ori        $at, $at, (0x124F8 & 0xFFFF)
    /* C94F8 800BA548 240F00C8 */  addiu      $t7, $zero, 0xC8
    /* C94FC 800BA54C 30EA00FF */  andi       $t2, $a3, 0xFF
    /* C9500 800BA550 AFA60008 */  sw         $a2, 0x8($sp)
    /* C9504 800BA554 30C900FF */  andi       $t1, $a2, 0xFF
    /* C9508 800BA558 01203025 */  or         $a2, $t1, $zero
    /* C950C 800BA55C 00005812 */  mflo       $t3
    /* C9510 800BA560 AFA40000 */  sw         $a0, 0x0($sp)
    /* C9514 800BA564 AFA50004 */  sw         $a1, 0x4($sp)
    /* C9518 800BA568 03390019 */  multu      $t9, $t9
    /* C951C 800BA56C AFA7000C */  sw         $a3, 0xC($sp)
    /* C9520 800BA570 00006012 */  mflo       $t4
    /* C9524 800BA574 016C6821 */  addu       $t5, $t3, $t4
    /* C9528 800BA578 00000000 */  nop
    /* C952C 800BA57C 01A1001A */  div        $zero, $t5, $at
    /* C9530 800BA580 00007012 */  mflo       $t6
    /* C9534 800BA584 01EE1823 */  subu       $v1, $t7, $t6
    /* C9538 800BA588 0143082A */  slt        $at, $t2, $v1
    /* C953C 800BA58C 50200003 */  beql       $at, $zero, .L800BA59C_C954C
    /* C9540 800BA590 0066082A */   slt       $at, $v1, $a2
    /* C9544 800BA594 01401825 */  or         $v1, $t2, $zero
    /* C9548 800BA598 0066082A */  slt        $at, $v1, $a2
  .L800BA59C_C954C:
    /* C954C 800BA59C 10200002 */  beqz       $at, .L800BA5A8_C9558
    /* C9550 800BA5A0 00000000 */   nop
    /* C9554 800BA5A4 00C01825 */  or         $v1, $a2, $zero
  .L800BA5A8_C9558:
    /* C9558 800BA5A8 03E00008 */  jr         $ra
    /* C955C 800BA5AC 00601025 */   or        $v0, $v1, $zero
endlabel func_800BA52C_C94DC
