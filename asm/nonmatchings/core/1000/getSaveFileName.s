nonmatching getSaveFileName, 0x6C

glabel getSaveFileName
    /* 36B4 80002AB4 00041100 */  sll        $v0, $a0, 4
    /* 36B8 80002AB8 00441023 */  subu       $v0, $v0, $a0
    /* 36BC 80002ABC 00021080 */  sll        $v0, $v0, 2
    /* 36C0 80002AC0 00441021 */  addu       $v0, $v0, $a0
    /* 36C4 80002AC4 00021040 */  sll        $v0, $v0, 1
    /* 36C8 80002AC8 3C088004 */  lui        $t0, %hi(D_800431C0)
    /* 36CC 80002ACC 250831C0 */  addiu      $t0, $t0, %lo(D_800431C0)
    /* 36D0 80002AD0 24420089 */  addiu      $v0, $v0, 0x89
    /* 36D4 80002AD4 01023821 */  addu       $a3, $t0, $v0
    /* 36D8 80002AD8 90EE0000 */  lbu        $t6, 0x0($a3)
    /* 36DC 80002ADC 24030002 */  addiu      $v1, $zero, 0x2
    /* 36E0 80002AE0 0103C021 */  addu       $t8, $t0, $v1
    /* 36E4 80002AE4 A0AE0000 */  sb         $t6, 0x0($a1)
    /* 36E8 80002AE8 90EF0001 */  lbu        $t7, 0x1($a3)
    /* 36EC 80002AEC 03023021 */  addu       $a2, $t8, $v0
    /* 36F0 80002AF0 00A32021 */  addu       $a0, $a1, $v1
    /* 36F4 80002AF4 A0AF0001 */  sb         $t7, 0x1($a1)
    /* 36F8 80002AF8 90D90000 */  lbu        $t9, 0x0($a2)
    /* 36FC 80002AFC A0990000 */  sb         $t9, 0x0($a0)
    /* 3700 80002B00 90C90001 */  lbu        $t1, 0x1($a2)
    /* 3704 80002B04 A0890001 */  sb         $t1, 0x1($a0)
    /* 3708 80002B08 90CA0002 */  lbu        $t2, 0x2($a2)
    /* 370C 80002B0C A08A0002 */  sb         $t2, 0x2($a0)
    /* 3710 80002B10 90CB0003 */  lbu        $t3, 0x3($a2)
    /* 3714 80002B14 A08B0003 */  sb         $t3, 0x3($a0)
    /* 3718 80002B18 03E00008 */  jr         $ra
    /* 371C 80002B1C A0A00006 */   sb        $zero, 0x6($a1)
endlabel getSaveFileName
