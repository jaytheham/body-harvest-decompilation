nonmatching func_800A140C_B03BC, 0x358

glabel func_800A140C_B03BC
    /* B03BC 800A140C 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* B03C0 800A1410 3C0E8004 */  lui        $t6, %hi(D_80047720)
    /* B03C4 800A1414 85CE7720 */  lh         $t6, %lo(D_80047720)($t6)
    /* B03C8 800A1418 AFBF003C */  sw         $ra, 0x3C($sp)
    /* B03CC 800A141C AFBE0038 */  sw         $fp, 0x38($sp)
    /* B03D0 800A1420 AFB70034 */  sw         $s7, 0x34($sp)
    /* B03D4 800A1424 AFB60030 */  sw         $s6, 0x30($sp)
    /* B03D8 800A1428 AFB5002C */  sw         $s5, 0x2C($sp)
    /* B03DC 800A142C AFB40028 */  sw         $s4, 0x28($sp)
    /* B03E0 800A1430 AFB30024 */  sw         $s3, 0x24($sp)
    /* B03E4 800A1434 AFB20020 */  sw         $s2, 0x20($sp)
    /* B03E8 800A1438 AFB1001C */  sw         $s1, 0x1C($sp)
    /* B03EC 800A143C 11C000BD */  beqz       $t6, .L800A1734_B06E4
    /* B03F0 800A1440 AFB00018 */   sw        $s0, 0x18($sp)
    /* B03F4 800A1444 0C00224E */  jal        debug_drawTimingGraphBars
    /* B03F8 800A1448 00000000 */   nop
    /* B03FC 800A144C 3C118006 */  lui        $s1, %hi(D_8005BB2C)
    /* B0400 800A1450 2631BB2C */  addiu      $s1, $s1, %lo(D_8005BB2C)
    /* B0404 800A1454 8E220000 */  lw         $v0, 0x0($s1)
    /* B0408 800A1458 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
    /* B040C 800A145C 3C19BA00 */  lui        $t9, (0xBA001402 >> 16)
    /* B0410 800A1460 244F0008 */  addiu      $t7, $v0, 0x8
    /* B0414 800A1464 AE2F0000 */  sw         $t7, 0x0($s1)
    /* B0418 800A1468 AC400004 */  sw         $zero, 0x4($v0)
    /* B041C 800A146C AC4A0000 */  sw         $t2, 0x0($v0)
    /* B0420 800A1470 8E220000 */  lw         $v0, 0x0($s1)
    /* B0424 800A1474 37391402 */  ori        $t9, $t9, (0xBA001402 & 0xFFFF)
    /* B0428 800A1478 3C0B0030 */  lui        $t3, (0x300000 >> 16)
    /* B042C 800A147C 24580008 */  addiu      $t8, $v0, 0x8
    /* B0430 800A1480 AE380000 */  sw         $t8, 0x0($s1)
    /* B0434 800A1484 AC4B0004 */  sw         $t3, 0x4($v0)
    /* B0438 800A1488 AC590000 */  sw         $t9, 0x0($v0)
    /* B043C 800A148C 8E220000 */  lw         $v0, 0x0($s1)
    /* B0440 800A1490 3C0DB900 */  lui        $t5, (0xB900031D >> 16)
    /* B0444 800A1494 3C0E0F0A */  lui        $t6, (0xF0A4000 >> 16)
    /* B0448 800A1498 244C0008 */  addiu      $t4, $v0, 0x8
    /* B044C 800A149C AE2C0000 */  sw         $t4, 0x0($s1)
    /* B0450 800A14A0 35CE4000 */  ori        $t6, $t6, (0xF0A4000 & 0xFFFF)
    /* B0454 800A14A4 35AD031D */  ori        $t5, $t5, (0xB900031D & 0xFFFF)
    /* B0458 800A14A8 24040020 */  addiu      $a0, $zero, 0x20
    /* B045C 800A14AC 2410001F */  addiu      $s0, $zero, 0x1F
    /* B0460 800A14B0 AC4D0000 */  sw         $t5, 0x0($v0)
    /* B0464 800A14B4 10800065 */  beqz       $a0, .L800A164C_B05FC
    /* B0468 800A14B8 AC4E0004 */   sw        $t6, 0x4($v0)
    /* B046C 800A14BC 3C128015 */  lui        $s2, %hi(D_8014F5F0)
    /* B0470 800A14C0 3C158004 */  lui        $s5, %hi(D_80047722)
    /* B0474 800A14C4 26B57722 */  addiu      $s5, $s5, %lo(D_80047722)
    /* B0478 800A14C8 2652F5F0 */  addiu      $s2, $s2, %lo(D_8014F5F0)
    /* B047C 800A14CC 241300D3 */  addiu      $s3, $zero, 0xD3
    /* B0480 800A14D0 241400CF */  addiu      $s4, $zero, 0xCF
    /* B0484 800A14D4 3C1E0008 */  lui        $fp, (0x80000 >> 16)
    /* B0488 800A14D8 3C17F600 */  lui        $s7, (0xF6000000 >> 16)
    /* B048C 800A14DC 3C16F700 */  lui        $s6, (0xF7000000 >> 16)
  .L800A14E0_B0490:
    /* B0490 800A14E0 24180000 */  addiu      $t8, $zero, 0x0
    /* B0494 800A14E4 24190000 */  addiu      $t9, $zero, 0x0
    /* B0498 800A14E8 AFB90044 */  sw         $t9, 0x44($sp)
    /* B049C 800A14EC AFB80040 */  sw         $t8, 0x40($sp)
    /* B04A0 800A14F0 24020007 */  addiu      $v0, $zero, 0x7
    /* B04A4 800A14F4 2643001C */  addiu      $v1, $s2, 0x1C
  .L800A14F8_B04A8:
    /* B04A8 800A14F8 8C6D0000 */  lw         $t5, 0x0($v1)
    /* B04AC 800A14FC 8FAF0044 */  lw         $t7, 0x44($sp)
    /* B04B0 800A1500 8FAE0040 */  lw         $t6, 0x40($sp)
    /* B04B4 800A1504 240C0000 */  addiu      $t4, $zero, 0x0
    /* B04B8 800A1508 01AFC821 */  addu       $t9, $t5, $t7
    /* B04BC 800A150C 032F082B */  sltu       $at, $t9, $t7
    /* B04C0 800A1510 002CC021 */  addu       $t8, $at, $t4
    /* B04C4 800A1514 00402025 */  or         $a0, $v0, $zero
    /* B04C8 800A1518 030EC021 */  addu       $t8, $t8, $t6
    /* B04CC 800A151C AFB80040 */  sw         $t8, 0x40($sp)
    /* B04D0 800A1520 AFB90044 */  sw         $t9, 0x44($sp)
    /* B04D4 800A1524 2463FFFC */  addiu      $v1, $v1, -0x4
    /* B04D8 800A1528 1440FFF3 */  bnez       $v0, .L800A14F8_B04A8
    /* B04DC 800A152C 2442FFFF */   addiu     $v0, $v0, -0x1
    /* B04E0 800A1530 86A70000 */  lh         $a3, 0x0($s5)
    /* B04E4 800A1534 8FA40040 */  lw         $a0, 0x40($sp)
    /* B04E8 800A1538 8FA50044 */  lw         $a1, 0x44($sp)
    /* B04EC 800A153C 0C007468 */  jal        func_8001D1A0_1DDA0
    /* B04F0 800A1540 000737C3 */   sra       $a2, $a3, 31
    /* B04F4 800A1544 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
    /* B04F8 800A1548 AFA20040 */  sw         $v0, 0x40($sp)
    /* B04FC 800A154C AFA30044 */  sw         $v1, 0x44($sp)
    /* B0500 800A1550 00406025 */  or         $t4, $v0, $zero
    /* B0504 800A1554 00606825 */  or         $t5, $v1, $zero
    /* B0508 800A1558 15800003 */  bnez       $t4, .L800A1568_B0518
    /* B050C 800A155C 32180002 */   andi      $t8, $s0, 0x2
    /* B0510 800A1560 2DA100C9 */  sltiu      $at, $t5, 0xC9
    /* B0514 800A1564 14200004 */  bnez       $at, .L800A1578_B0528
  .L800A1568_B0518:
    /* B0518 800A1568 240E0000 */   addiu     $t6, $zero, 0x0
    /* B051C 800A156C 240F00C8 */  addiu      $t7, $zero, 0xC8
    /* B0520 800A1570 AFAF0044 */  sw         $t7, 0x44($sp)
    /* B0524 800A1574 AFAE0040 */  sw         $t6, 0x40($sp)
  .L800A1578_B0528:
    /* B0528 800A1578 13000003 */  beqz       $t8, .L800A1588_B0538
    /* B052C 800A157C 32190001 */   andi      $t9, $s0, 0x1
    /* B0530 800A1580 10000002 */  b          .L800A158C_B053C
    /* B0534 800A1584 240803C0 */   addiu     $t0, $zero, 0x3C0
  .L800A1588_B0538:
    /* B0538 800A1588 00004025 */  or         $t0, $zero, $zero
  .L800A158C_B053C:
    /* B053C 800A158C 13200003 */  beqz       $t9, .L800A159C_B054C
    /* B0540 800A1590 320B0004 */   andi      $t3, $s0, 0x4
    /* B0544 800A1594 10000002 */  b          .L800A15A0_B0550
    /* B0548 800A1598 2409001E */   addiu     $t1, $zero, 0x1E
  .L800A159C_B054C:
    /* B054C 800A159C 00004825 */  or         $t1, $zero, $zero
  .L800A15A0_B0550:
    /* B0550 800A15A0 11600003 */  beqz       $t3, .L800A15B0_B0560
    /* B0554 800A15A4 2652FFE0 */   addiu     $s2, $s2, -0x20
    /* B0558 800A15A8 10000002 */  b          .L800A15B4_B0564
    /* B055C 800A15AC 24047800 */   addiu     $a0, $zero, 0x7800
  .L800A15B0_B0560:
    /* B0560 800A15B0 00002025 */  or         $a0, $zero, $zero
  .L800A15B4_B0564:
    /* B0564 800A15B4 8E250000 */  lw         $a1, 0x0($s1)
    /* B0568 800A15B8 00897021 */  addu       $t6, $a0, $t1
    /* B056C 800A15BC 01C81821 */  addu       $v1, $t6, $t0
    /* B0570 800A15C0 24AC0008 */  addiu      $t4, $a1, 0x8
    /* B0574 800A15C4 AE2C0000 */  sw         $t4, 0x0($s1)
    /* B0578 800A15C8 ACA00004 */  sw         $zero, 0x4($a1)
    /* B057C 800A15CC ACAA0000 */  sw         $t2, 0x0($a1)
    /* B0580 800A15D0 8E260000 */  lw         $a2, 0x0($s1)
    /* B0584 800A15D4 00037C00 */  sll        $t7, $v1, 16
    /* B0588 800A15D8 01E3C025 */  or         $t8, $t7, $v1
    /* B058C 800A15DC 24CD0008 */  addiu      $t5, $a2, 0x8
    /* B0590 800A15E0 AE2D0000 */  sw         $t5, 0x0($s1)
    /* B0594 800A15E4 ACD80004 */  sw         $t8, 0x4($a2)
    /* B0598 800A15E8 ACD60000 */  sw         $s6, 0x0($a2)
    /* B059C 800A15EC 8FAD0044 */  lw         $t5, 0x44($sp)
    /* B05A0 800A15F0 8E220000 */  lw         $v0, 0x0($s1)
    /* B05A4 800A15F4 328B03FF */  andi       $t3, $s4, 0x3FF
    /* B05A8 800A15F8 25AF0020 */  addiu      $t7, $t5, 0x20
    /* B05AC 800A15FC 24590008 */  addiu      $t9, $v0, 0x8
    /* B05B0 800A1600 AE390000 */  sw         $t9, 0x0($s1)
    /* B05B4 800A1604 31F803FF */  andi       $t8, $t7, 0x3FF
    /* B05B8 800A1608 0018CB80 */  sll        $t9, $t8, 14
    /* B05BC 800A160C 03376025 */  or         $t4, $t9, $s7
    /* B05C0 800A1610 326D03FF */  andi       $t5, $s3, 0x3FF
    /* B05C4 800A1614 000D7080 */  sll        $t6, $t5, 2
    /* B05C8 800A1618 000BC080 */  sll        $t8, $t3, 2
    /* B05CC 800A161C 2DE10020 */  sltiu      $at, $t7, 0x20
    /* B05D0 800A1620 02002025 */  or         $a0, $s0, $zero
    /* B05D4 800A1624 018E7825 */  or         $t7, $t4, $t6
    /* B05D8 800A1628 031EC825 */  or         $t9, $t8, $fp
    /* B05DC 800A162C 2673FFFA */  addiu      $s3, $s3, -0x6
    /* B05E0 800A1630 2694FFFA */  addiu      $s4, $s4, -0x6
    /* B05E4 800A1634 AC590004 */  sw         $t9, 0x4($v0)
    /* B05E8 800A1638 AC4F0000 */  sw         $t7, 0x0($v0)
    /* B05EC 800A163C 00403825 */  or         $a3, $v0, $zero
    /* B05F0 800A1640 1600FFA7 */  bnez       $s0, .L800A14E0_B0490
    /* B05F4 800A1644 2610FFFF */   addiu     $s0, $s0, -0x1
    /* B05F8 800A1648 2410001F */  addiu      $s0, $zero, 0x1F
  .L800A164C_B05FC:
    /* B05FC 800A164C 8E220000 */  lw         $v0, 0x0($s1)
    /* B0600 800A1650 3C0EBA00 */  lui        $t6, (0xBA001402 >> 16)
    /* B0604 800A1654 35CE1402 */  ori        $t6, $t6, (0xBA001402 & 0xFFFF)
    /* B0608 800A1658 244D0008 */  addiu      $t5, $v0, 0x8
    /* B060C 800A165C AE2D0000 */  sw         $t5, 0x0($s1)
    /* B0610 800A1660 AC400004 */  sw         $zero, 0x4($v0)
    /* B0614 800A1664 AC4A0000 */  sw         $t2, 0x0($v0)
    /* B0618 800A1668 8E220000 */  lw         $v0, 0x0($s1)
    /* B061C 800A166C 24090001 */  addiu      $t1, $zero, 0x1
    /* B0620 800A1670 3C0BB700 */  lui        $t3, (0xB7000000 >> 16)
    /* B0624 800A1674 244C0008 */  addiu      $t4, $v0, 0x8
    /* B0628 800A1678 AE2C0000 */  sw         $t4, 0x0($s1)
    /* B062C 800A167C AC400004 */  sw         $zero, 0x4($v0)
    /* B0630 800A1680 AC4E0000 */  sw         $t6, 0x0($v0)
    /* B0634 800A1684 8E220000 */  lw         $v0, 0x0($s1)
    /* B0638 800A1688 3C0D0055 */  lui        $t5, (0x552078 >> 16)
    /* B063C 800A168C 3C19B900 */  lui        $t9, (0xB900031D >> 16)
    /* B0640 800A1690 244F0008 */  addiu      $t7, $v0, 0x8
    /* B0644 800A1694 AE2F0000 */  sw         $t7, 0x0($s1)
    /* B0648 800A1698 AC490004 */  sw         $t1, 0x4($v0)
    /* B064C 800A169C AC4B0000 */  sw         $t3, 0x0($v0)
    /* B0650 800A16A0 8E220000 */  lw         $v0, 0x0($s1)
    /* B0654 800A16A4 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
    /* B0658 800A16A8 35AD2078 */  ori        $t5, $t5, (0x552078 & 0xFFFF)
    /* B065C 800A16AC 24580008 */  addiu      $t8, $v0, 0x8
    /* B0660 800A16B0 AE380000 */  sw         $t8, 0x0($s1)
    /* B0664 800A16B4 3C088015 */  lui        $t0, %hi(D_8014F610)
    /* B0668 800A16B8 AC4D0004 */  sw         $t5, 0x4($v0)
    /* B066C 800A16BC AC590000 */  sw         $t9, 0x0($v0)
    /* B0670 800A16C0 2508F610 */  addiu      $t0, $t0, %lo(D_8014F610)
    /* B0674 800A16C4 8D030000 */  lw         $v1, 0x0($t0)
    /* B0678 800A16C8 3C0E8014 */  lui        $t6, %hi(D_8013D760)
    /* B067C 800A16CC 3C0C8014 */  lui        $t4, %hi(D_8013D764)
    /* B0680 800A16D0 8D8CD764 */  lw         $t4, %lo(D_8013D764)($t4)
    /* B0684 800A16D4 8DCED760 */  lw         $t6, %lo(D_8013D760)($t6)
    /* B0688 800A16D8 3C018015 */  lui        $at, %hi(D_8014F210)
    /* B068C 800A16DC 00035880 */  sll        $t3, $v1, 2
    /* B0690 800A16E0 002B0821 */  addu       $at, $at, $t3
    /* B0694 800A16E4 018E7823 */  subu       $t7, $t4, $t6
    /* B0698 800A16E8 AC2FF210 */  sw         $t7, %lo(D_8014F210)($at)
    /* B069C 800A16EC 24780001 */  addiu      $t8, $v1, 0x1
    /* B06A0 800A16F0 2F010008 */  sltiu      $at, $t8, 0x8
    /* B06A4 800A16F4 AD180000 */  sw         $t8, 0x0($t0)
    /* B06A8 800A16F8 14200003 */  bnez       $at, .L800A1708_B06B8
    /* B06AC 800A16FC 03001825 */   or        $v1, $t8, $zero
    /* B06B0 800A1700 AD000000 */  sw         $zero, 0x0($t0)
    /* B06B4 800A1704 00001825 */  or         $v1, $zero, $zero
  .L800A1708_B06B8:
    /* B06B8 800A1708 3C0D8015 */  lui        $t5, %hi(D_8014F5F0)
    /* B06BC 800A170C 25ADF5F0 */  addiu      $t5, $t5, %lo(D_8014F5F0)
    /* B06C0 800A1710 0003C880 */  sll        $t9, $v1, 2
    /* B06C4 800A1714 032D1021 */  addu       $v0, $t9, $t5
  .L800A1718_B06C8:
    /* B06C8 800A1718 02002025 */  or         $a0, $s0, $zero
    /* B06CC 800A171C AC400000 */  sw         $zero, 0x0($v0)
    /* B06D0 800A1720 2442FFE0 */  addiu      $v0, $v0, -0x20
    /* B06D4 800A1724 1600FFFC */  bnez       $s0, .L800A1718_B06C8
    /* B06D8 800A1728 2610FFFF */   addiu     $s0, $s0, -0x1
    /* B06DC 800A172C 3C018015 */  lui        $at, %hi(D_8014F20C)
    /* B06E0 800A1730 AC29F20C */  sw         $t1, %lo(D_8014F20C)($at)
  .L800A1734_B06E4:
    /* B06E4 800A1734 8FBF003C */  lw         $ra, 0x3C($sp)
    /* B06E8 800A1738 8FB00018 */  lw         $s0, 0x18($sp)
    /* B06EC 800A173C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* B06F0 800A1740 8FB20020 */  lw         $s2, 0x20($sp)
    /* B06F4 800A1744 8FB30024 */  lw         $s3, 0x24($sp)
    /* B06F8 800A1748 8FB40028 */  lw         $s4, 0x28($sp)
    /* B06FC 800A174C 8FB5002C */  lw         $s5, 0x2C($sp)
    /* B0700 800A1750 8FB60030 */  lw         $s6, 0x30($sp)
    /* B0704 800A1754 8FB70034 */  lw         $s7, 0x34($sp)
    /* B0708 800A1758 8FBE0038 */  lw         $fp, 0x38($sp)
    /* B070C 800A175C 03E00008 */  jr         $ra
    /* B0710 800A1760 27BD0058 */   addiu     $sp, $sp, 0x58
endlabel func_800A140C_B03BC
