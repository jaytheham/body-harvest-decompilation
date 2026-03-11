nonmatching func_800C2554_D1504, 0xA4

glabel func_800C2554_D1504
    /* D1504 800C2554 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* D1508 800C2558 30A700FF */  andi       $a3, $a1, 0xFF
    /* D150C 800C255C AFA40018 */  sw         $a0, 0x18($sp)
    /* D1510 800C2560 00047400 */  sll        $t6, $a0, 16
    /* D1514 800C2564 28E1001E */  slti       $at, $a3, 0x1E
    /* D1518 800C2568 000E2403 */  sra        $a0, $t6, 16
    /* D151C 800C256C AFBF0014 */  sw         $ra, 0x14($sp)
    /* D1520 800C2570 1020000A */  beqz       $at, .L800C259C_D154C
    /* D1524 800C2574 AFA5001C */   sw        $a1, 0x1C($sp)
    /* D1528 800C2578 0007C080 */  sll        $t8, $a3, 2
    /* D152C 800C257C 0307C023 */  subu       $t8, $t8, $a3
    /* D1530 800C2580 3C198015 */  lui        $t9, %hi(D_80154088)
    /* D1534 800C2584 27394088 */  addiu      $t9, $t9, %lo(D_80154088)
    /* D1538 800C2588 0018C080 */  sll        $t8, $t8, 2
    /* D153C 800C258C 03191021 */  addu       $v0, $t8, $t9
    /* D1540 800C2590 90480000 */  lbu        $t0, 0x0($v0)
    /* D1544 800C2594 51000007 */  beql       $t0, $zero, .L800C25B4_D1564
    /* D1548 800C2598 8449000A */   lh        $t1, 0xA($v0)
  .L800C259C_D154C:
    /* D154C 800C259C 3C048014 */  lui        $a0, %hi(D_80143390)
    /* D1550 800C25A0 0C00731B */  jal        osSyncPrintf
    /* D1554 800C25A4 24843390 */   addiu     $a0, $a0, %lo(D_80143390)
    /* D1558 800C25A8 10000010 */  b          .L800C25EC_D159C
    /* D155C 800C25AC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* D1560 800C25B0 8449000A */  lh         $t1, 0xA($v0)
  .L800C25B4_D1564:
    /* D1564 800C25B4 30E500FF */  andi       $a1, $a3, 0xFF
    /* D1568 800C25B8 14890009 */  bne        $a0, $t1, .L800C25E0_D1590
    /* D156C 800C25BC 00000000 */   nop
    /* D1570 800C25C0 30E400FF */  andi       $a0, $a3, 0xFF
    /* D1574 800C25C4 00002825 */  or         $a1, $zero, $zero
    /* D1578 800C25C8 0C030506 */  jal        func_800C1418_D03C8
    /* D157C 800C25CC A3A7001F */   sb        $a3, 0x1F($sp)
    /* D1580 800C25D0 0C0304E1 */  jal        func_800C1384_D0334
    /* D1584 800C25D4 93A4001F */   lbu       $a0, 0x1F($sp)
    /* D1588 800C25D8 10000004 */  b          .L800C25EC_D159C
    /* D158C 800C25DC 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800C25E0_D1590:
    /* D1590 800C25E0 0C030693 */  jal        func_800C1A4C_D09FC
    /* D1594 800C25E4 00003025 */   or        $a2, $zero, $zero
    /* D1598 800C25E8 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800C25EC_D159C:
    /* D159C 800C25EC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* D15A0 800C25F0 03E00008 */  jr         $ra
    /* D15A4 800C25F4 00000000 */   nop
endlabel func_800C2554_D1504
