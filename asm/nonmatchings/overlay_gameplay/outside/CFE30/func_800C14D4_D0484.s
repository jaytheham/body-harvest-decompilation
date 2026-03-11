nonmatching func_800C14D4_D0484, 0xC4

glabel func_800C14D4_D0484
    /* D0484 800C14D4 3C028005 */  lui        $v0, %hi(gameplayMode)
    /* D0488 800C14D8 8C422ADC */  lw         $v0, %lo(gameplayMode)($v0)
    /* D048C 800C14DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* D0490 800C14E0 24010002 */  addiu      $at, $zero, 0x2
    /* D0494 800C14E4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* D0498 800C14E8 AFA40020 */  sw         $a0, 0x20($sp)
    /* D049C 800C14EC 10410003 */  beq        $v0, $at, .L800C14FC_D04AC
    /* D04A0 800C14F0 308700FF */   andi      $a3, $a0, 0xFF
    /* D04A4 800C14F4 24010009 */  addiu      $at, $zero, 0x9
    /* D04A8 800C14F8 14410005 */  bne        $v0, $at, .L800C1510_D04C0
  .L800C14FC_D04AC:
    /* D04AC 800C14FC 3C048014 */   lui       $a0, %hi(D_80142F44)
    /* D04B0 800C1500 24842F44 */  addiu      $a0, $a0, %lo(D_80142F44)
    /* D04B4 800C1504 0C00731B */  jal        osSyncPrintf
    /* D04B8 800C1508 A3A70023 */   sb        $a3, 0x23($sp)
    /* D04BC 800C150C 93A70023 */  lbu        $a3, 0x23($sp)
  .L800C1510_D04C0:
    /* D04C0 800C1510 28E1000A */  slti       $at, $a3, 0xA
    /* D04C4 800C1514 14200003 */  bnez       $at, .L800C1524_D04D4
    /* D04C8 800C1518 00E02825 */   or        $a1, $a3, $zero
    /* D04CC 800C151C 10000002 */  b          .L800C1528_D04D8
    /* D04D0 800C1520 24020001 */   addiu     $v0, $zero, 0x1
  .L800C1524_D04D4:
    /* D04D4 800C1524 00001025 */  or         $v0, $zero, $zero
  .L800C1528_D04D8:
    /* D04D8 800C1528 10400006 */  beqz       $v0, .L800C1544_D04F4
    /* D04DC 800C152C 3C0E8015 */   lui       $t6, %hi(D_80154304)
    /* D04E0 800C1530 3C048014 */  lui        $a0, %hi(D_80142F68)
    /* D04E4 800C1534 0C00731B */  jal        osSyncPrintf
    /* D04E8 800C1538 24842F68 */   addiu     $a0, $a0, %lo(D_80142F68)
    /* D04EC 800C153C 10000012 */  b          .L800C1588_D0538
    /* D04F0 800C1540 240200FB */   addiu     $v0, $zero, 0xFB
  .L800C1544_D04F4:
    /* D04F4 800C1544 91CE4304 */  lbu        $t6, %lo(D_80154304)($t6)
    /* D04F8 800C1548 3C048015 */  lui        $a0, %hi(D_8015430C)
    /* D04FC 800C154C 00003025 */  or         $a2, $zero, $zero
    /* D0500 800C1550 29C1001E */  slti       $at, $t6, 0x1E
    /* D0504 800C1554 14200006 */  bnez       $at, .L800C1570_D0520
    /* D0508 800C1558 00000000 */   nop
    /* D050C 800C155C 3C048014 */  lui        $a0, %hi(D_80142F98)
    /* D0510 800C1560 0C00731B */  jal        osSyncPrintf
    /* D0514 800C1564 24842F98 */   addiu     $a0, $a0, %lo(D_80142F98)
    /* D0518 800C1568 10000006 */  b          .L800C1584_D0534
    /* D051C 800C156C 240400FB */   addiu     $a0, $zero, 0xFB
  .L800C1570_D0520:
    /* D0520 800C1570 9084430C */  lbu        $a0, %lo(D_8015430C)($a0)
    /* D0524 800C1574 30E500FF */  andi       $a1, $a3, 0xFF
    /* D0528 800C1578 0C0304A2 */  jal        func_800C1288_D0238
    /* D052C 800C157C A3A4001F */   sb        $a0, 0x1F($sp)
    /* D0530 800C1580 93A4001F */  lbu        $a0, 0x1F($sp)
  .L800C1584_D0534:
    /* D0534 800C1584 00801025 */  or         $v0, $a0, $zero
  .L800C1588_D0538:
    /* D0538 800C1588 8FBF0014 */  lw         $ra, 0x14($sp)
    /* D053C 800C158C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* D0540 800C1590 03E00008 */  jr         $ra
    /* D0544 800C1594 00000000 */   nop
endlabel func_800C14D4_D0484
