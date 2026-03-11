nonmatching func_802DEFB4_2C13E4, 0x514

glabel func_802DEFB4_2C13E4
    /* 2C13E4 802DEFB4 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* 2C13E8 802DEFB8 AFA40080 */  sw         $a0, 0x80($sp)
    /* 2C13EC 802DEFBC 93AE0083 */  lbu        $t6, 0x83($sp)
    /* 2C13F0 802DEFC0 24090050 */  addiu      $t1, $zero, 0x50
    /* 2C13F4 802DEFC4 3C088005 */  lui        $t0, %hi(alienInstances)
    /* 2C13F8 802DEFC8 01C90019 */  multu      $t6, $t1
    /* 2C13FC 802DEFCC 25088198 */  addiu      $t0, $t0, %lo(alienInstances)
    /* 2C1400 802DEFD0 AFB00040 */  sw         $s0, 0x40($sp)
    /* 2C1404 802DEFD4 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 2C1408 802DEFD8 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 2C140C 802DEFDC AFBF0044 */  sw         $ra, 0x44($sp)
    /* 2C1410 802DEFE0 00007812 */  mflo       $t7
    /* 2C1414 802DEFE4 010F8021 */  addu       $s0, $t0, $t7
    /* 2C1418 802DEFE8 92180025 */  lbu        $t8, 0x25($s0)
    /* 2C141C 802DEFEC 860B000C */  lh         $t3, 0xC($s0)
    /* 2C1420 802DEFF0 03090019 */  multu      $t8, $t1
    /* 2C1424 802DEFF4 000B6100 */  sll        $t4, $t3, 4
    /* 2C1428 802DEFF8 006C6821 */  addu       $t5, $v1, $t4
    /* 2C142C 802DEFFC 81A2000C */  lb         $v0, 0xC($t5)
    /* 2C1430 802DF000 00027100 */  sll        $t6, $v0, 4
    /* 2C1434 802DF004 006E2821 */  addu       $a1, $v1, $t6
    /* 2C1438 802DF008 80AA000C */  lb         $t2, 0xC($a1)
    /* 2C143C 802DF00C 0000C812 */  mflo       $t9
    /* 2C1440 802DF010 000A7900 */  sll        $t7, $t2, 4
    /* 2C1444 802DF014 01193021 */  addu       $a2, $t0, $t9
    /* 2C1448 802DF018 006FC021 */  addu       $t8, $v1, $t7
    /* 2C144C 802DF01C 8319000D */  lb         $t9, 0xD($t8)
    /* 2C1450 802DF020 314400FF */  andi       $a0, $t2, 0xFF
    /* 2C1454 802DF024 A7B9007A */  sh         $t9, 0x7A($sp)
    /* 2C1458 802DF028 8CC70020 */  lw         $a3, 0x20($a2)
    /* 2C145C 802DF02C 30EB8000 */  andi       $t3, $a3, 0x8000
    /* 2C1460 802DF030 11600115 */  beqz       $t3, .L802DF488_2C18B8
    /* 2C1464 802DF034 00000000 */   nop
    /* 2C1468 802DF038 86020048 */  lh         $v0, 0x48($s0)
    /* 2C146C 802DF03C 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
    /* 2C1470 802DF040 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
    /* 2C1474 802DF044 1040010D */  beqz       $v0, .L802DF47C_2C18AC
    /* 2C1478 802DF048 00E15824 */   and       $t3, $a3, $at
    /* 2C147C 802DF04C 284100A1 */  slti       $at, $v0, 0xA1
    /* 2C1480 802DF050 14200039 */  bnez       $at, .L802DF138_2C1568
    /* 2C1484 802DF054 240C00C8 */   addiu     $t4, $zero, 0xC8
    /* 2C1488 802DF058 01821823 */  subu       $v1, $t4, $v0
    /* 2C148C 802DF05C 00032380 */  sll        $a0, $v1, 14
    /* 2C1490 802DF060 24010028 */  addiu      $at, $zero, 0x28
    /* 2C1494 802DF064 0081001A */  div        $zero, $a0, $at
    /* 2C1498 802DF068 00006812 */  mflo       $t5
    /* 2C149C 802DF06C 31A4FFFF */  andi       $a0, $t5, 0xFFFF
    /* 2C14A0 802DF070 AFA50054 */  sw         $a1, 0x54($sp)
    /* 2C14A4 802DF074 0C007660 */  jal        sins
    /* 2C14A8 802DF078 A7AA007C */   sh        $t2, 0x7C($sp)
    /* 2C14AC 802DF07C 44822000 */  mtc1       $v0, $f4
    /* 2C14B0 802DF080 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C14B4 802DF084 44815800 */  mtc1       $at, $f11
    /* 2C14B8 802DF088 468021A0 */  cvt.s.w    $f6, $f4
    /* 2C14BC 802DF08C 44805000 */  mtc1       $zero, $f10
    /* 2C14C0 802DF090 3C014024 */  lui        $at, (0x40240000 >> 16)
    /* 2C14C4 802DF094 44819800 */  mtc1       $at, $f19
    /* 2C14C8 802DF098 44809000 */  mtc1       $zero, $f18
    /* 2C14CC 802DF09C 8FA50054 */  lw         $a1, 0x54($sp)
    /* 2C14D0 802DF0A0 46003221 */  cvt.d.s    $f8, $f6
    /* 2C14D4 802DF0A4 34028000 */  ori        $v0, $zero, 0x8000
    /* 2C14D8 802DF0A8 462A4403 */  div.d      $f16, $f8, $f10
    /* 2C14DC 802DF0AC 94A30006 */  lhu        $v1, 0x6($a1)
    /* 2C14E0 802DF0B0 0062082A */  slt        $at, $v1, $v0
    /* 2C14E4 802DF0B4 46328102 */  mul.d      $f4, $f16, $f18
    /* 2C14E8 802DF0B8 4620218D */  trunc.w.d  $f6, $f4
    /* 2C14EC 802DF0BC 44183000 */  mfc1       $t8, $f6
    /* 2C14F0 802DF0C0 10600010 */  beqz       $v1, .L802DF104_2C1534
    /* 2C14F4 802DF0C4 A618004C */   sh        $t8, 0x4C($s0)
    /* 2C14F8 802DF0C8 10200009 */  beqz       $at, .L802DF0F0_2C1520
    /* 2C14FC 802DF0CC 246C01F4 */   addiu     $t4, $v1, 0x1F4
    /* 2C1500 802DF0D0 2479FE0C */  addiu      $t9, $v1, -0x1F4
    /* 2C1504 802DF0D4 332BFFFF */  andi       $t3, $t9, 0xFFFF
    /* 2C1508 802DF0D8 34018001 */  ori        $at, $zero, 0x8001
    /* 2C150C 802DF0DC 0161082A */  slt        $at, $t3, $at
    /* 2C1510 802DF0E0 14200008 */  bnez       $at, .L802DF104_2C1534
    /* 2C1514 802DF0E4 A4B90006 */   sh        $t9, 0x6($a1)
    /* 2C1518 802DF0E8 10000006 */  b          .L802DF104_2C1534
    /* 2C151C 802DF0EC A4A00006 */   sh        $zero, 0x6($a1)
  .L802DF0F0_2C1520:
    /* 2C1520 802DF0F0 318DFFFF */  andi       $t5, $t4, 0xFFFF
    /* 2C1524 802DF0F4 01A2082A */  slt        $at, $t5, $v0
    /* 2C1528 802DF0F8 10200002 */  beqz       $at, .L802DF104_2C1534
    /* 2C152C 802DF0FC A4AC0006 */   sh        $t4, 0x6($a1)
    /* 2C1530 802DF100 A4A00006 */  sh         $zero, 0x6($a1)
  .L802DF104_2C1534:
    /* 2C1534 802DF104 860E0048 */  lh         $t6, 0x48($s0)
    /* 2C1538 802DF108 240100C8 */  addiu      $at, $zero, 0xC8
    /* 2C153C 802DF10C 93A4007D */  lbu        $a0, 0x7D($sp)
    /* 2C1540 802DF110 15C100D6 */  bne        $t6, $at, .L802DF46C_2C189C
    /* 2C1544 802DF114 3C05802E */   lui       $a1, %hi(D_802E2E48)
    /* 2C1548 802DF118 0C020721 */  jal        func_80081C84_90C34
    /* 2C154C 802DF11C 24A52E48 */   addiu     $a1, $a1, %lo(D_802E2E48)
    /* 2C1550 802DF120 3C05802E */  lui        $a1, %hi(D_802E2E68)
    /* 2C1554 802DF124 24A52E68 */  addiu      $a1, $a1, %lo(D_802E2E68)
    /* 2C1558 802DF128 0C020721 */  jal        func_80081C84_90C34
    /* 2C155C 802DF12C 93A4007B */   lbu       $a0, 0x7B($sp)
    /* 2C1560 802DF130 100000CF */  b          .L802DF470_2C18A0
    /* 2C1564 802DF134 86180048 */   lh        $t8, 0x48($s0)
  .L802DF138_2C1568:
    /* 2C1568 802DF138 28410029 */  slti       $at, $v0, 0x29
    /* 2C156C 802DF13C 10200018 */  beqz       $at, .L802DF1A0_2C15D0
    /* 2C1570 802DF140 240C00A0 */   addiu     $t4, $zero, 0xA0
    /* 2C1574 802DF144 00022380 */  sll        $a0, $v0, 14
    /* 2C1578 802DF148 24010028 */  addiu      $at, $zero, 0x28
    /* 2C157C 802DF14C 0081001A */  div        $zero, $a0, $at
    /* 2C1580 802DF150 00007812 */  mflo       $t7
    /* 2C1584 802DF154 31E4FFFF */  andi       $a0, $t7, 0xFFFF
    /* 2C1588 802DF158 0C007660 */  jal        sins
    /* 2C158C 802DF15C 00000000 */   nop
    /* 2C1590 802DF160 44824000 */  mtc1       $v0, $f8
    /* 2C1594 802DF164 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C1598 802DF168 44819800 */  mtc1       $at, $f19
    /* 2C159C 802DF16C 468042A0 */  cvt.s.w    $f10, $f8
    /* 2C15A0 802DF170 44809000 */  mtc1       $zero, $f18
    /* 2C15A4 802DF174 3C014024 */  lui        $at, (0x40240000 >> 16)
    /* 2C15A8 802DF178 44814800 */  mtc1       $at, $f9
    /* 2C15AC 802DF17C 44804000 */  mtc1       $zero, $f8
    /* 2C15B0 802DF180 46005421 */  cvt.d.s    $f16, $f10
    /* 2C15B4 802DF184 46328103 */  div.d      $f4, $f16, $f18
    /* 2C15B8 802DF188 46202187 */  neg.d      $f6, $f4
    /* 2C15BC 802DF18C 46283282 */  mul.d      $f10, $f6, $f8
    /* 2C15C0 802DF190 4620540D */  trunc.w.d  $f16, $f10
    /* 2C15C4 802DF194 440B8000 */  mfc1       $t3, $f16
    /* 2C15C8 802DF198 100000B4 */  b          .L802DF46C_2C189C
    /* 2C15CC 802DF19C A60B004C */   sh        $t3, 0x4C($s0)
  .L802DF1A0_2C15D0:
    /* 2C15D0 802DF1A0 01821823 */  subu       $v1, $t4, $v0
    /* 2C15D4 802DF1A4 24010014 */  addiu      $at, $zero, 0x14
    /* 2C15D8 802DF1A8 0061001A */  div        $zero, $v1, $at
    /* 2C15DC 802DF1AC 00006810 */  mfhi       $t5
    /* 2C15E0 802DF1B0 27AE006C */  addiu      $t6, $sp, 0x6C
    /* 2C15E4 802DF1B4 27AF0068 */  addiu      $t7, $sp, 0x68
    /* 2C15E8 802DF1B8 27B80064 */  addiu      $t8, $sp, 0x64
    /* 2C15EC 802DF1BC AFB80018 */  sw         $t8, 0x18($sp)
    /* 2C15F0 802DF1C0 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 2C15F4 802DF1C4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2C15F8 802DF1C8 AFAD0070 */  sw         $t5, 0x70($sp)
    /* 2C15FC 802DF1CC 02002025 */  or         $a0, $s0, $zero
    /* 2C1600 802DF1D0 2405FFF1 */  addiu      $a1, $zero, -0xF
    /* 2C1604 802DF1D4 2406FF92 */  addiu      $a2, $zero, -0x6E
    /* 2C1608 802DF1D8 2407FFE2 */  addiu      $a3, $zero, -0x1E
    /* 2C160C 802DF1DC 0C04A10A */  jal        func_80128428_1373D8
    /* 2C1610 802DF1E0 A7AA007C */   sh        $t2, 0x7C($sp)
    /* 2C1614 802DF1E4 86040006 */  lh         $a0, 0x6($s0)
    /* 2C1618 802DF1E8 24844000 */  addiu      $a0, $a0, 0x4000
    /* 2C161C 802DF1EC 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* 2C1620 802DF1F0 0C007660 */  jal        sins
    /* 2C1624 802DF1F4 03202025 */   or        $a0, $t9, $zero
    /* 2C1628 802DF1F8 44829000 */  mtc1       $v0, $f18
    /* 2C162C 802DF1FC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C1630 802DF200 44814800 */  mtc1       $at, $f9
    /* 2C1634 802DF204 46809120 */  cvt.s.w    $f4, $f18
    /* 2C1638 802DF208 44804000 */  mtc1       $zero, $f8
    /* 2C163C 802DF20C 86040006 */  lh         $a0, 0x6($s0)
    /* 2C1640 802DF210 24844000 */  addiu      $a0, $a0, 0x4000
    /* 2C1644 802DF214 460021A1 */  cvt.d.s    $f6, $f4
    /* 2C1648 802DF218 308BFFFF */  andi       $t3, $a0, 0xFFFF
    /* 2C164C 802DF21C 46283283 */  div.d      $f10, $f6, $f8
    /* 2C1650 802DF220 01602025 */  or         $a0, $t3, $zero
    /* 2C1654 802DF224 46205420 */  cvt.s.d    $f16, $f10
    /* 2C1658 802DF228 0C007654 */  jal        coss
    /* 2C165C 802DF22C E7B00060 */   swc1      $f16, 0x60($sp)
    /* 2C1660 802DF230 44829000 */  mtc1       $v0, $f18
    /* 2C1664 802DF234 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C1668 802DF238 44814800 */  mtc1       $at, $f9
    /* 2C166C 802DF23C 46809120 */  cvt.s.w    $f4, $f18
    /* 2C1670 802DF240 44804000 */  mtc1       $zero, $f8
    /* 2C1674 802DF244 8FAC0070 */  lw         $t4, 0x70($sp)
    /* 2C1678 802DF248 3C0143FA */  lui        $at, (0x43FA0000 >> 16)
    /* 2C167C 802DF24C 8FAE006C */  lw         $t6, 0x6C($sp)
    /* 2C1680 802DF250 460021A1 */  cvt.d.s    $f6, $f4
    /* 2C1684 802DF254 46283283 */  div.d      $f10, $f6, $f8
    /* 2C1688 802DF258 C7A80060 */  lwc1       $f8, 0x60($sp)
    /* 2C168C 802DF25C 46205407 */  neg.d      $f16, $f10
    /* 2C1690 802DF260 462084A0 */  cvt.s.d    $f18, $f16
    /* 2C1694 802DF264 E7B2005C */  swc1       $f18, 0x5C($sp)
    /* 2C1698 802DF268 05810004 */  bgez       $t4, .L802DF27C_2C16AC
    /* 2C169C 802DF26C 318D0007 */   andi      $t5, $t4, 0x7
    /* 2C16A0 802DF270 11A00002 */  beqz       $t5, .L802DF27C_2C16AC
    /* 2C16A4 802DF274 00000000 */   nop
    /* 2C16A8 802DF278 25ADFFF8 */  addiu      $t5, $t5, -0x8
  .L802DF27C_2C16AC:
    /* 2C16AC 802DF27C 55A00025 */  bnel       $t5, $zero, .L802DF314_2C1744
    /* 2C16B0 802DF280 8FAF0070 */   lw        $t7, 0x70($sp)
    /* 2C16B4 802DF284 44810000 */  mtc1       $at, $f0
    /* 2C16B8 802DF288 448E2000 */  mtc1       $t6, $f4
    /* 2C16BC 802DF28C 8FAB0064 */  lw         $t3, 0x64($sp)
    /* 2C16C0 802DF290 46004282 */  mul.s      $f10, $f8, $f0
    /* 2C16C4 802DF294 240E0014 */  addiu      $t6, $zero, 0x14
    /* 2C16C8 802DF298 240F000C */  addiu      $t7, $zero, 0xC
    /* 2C16CC 802DF29C 46009202 */  mul.s      $f8, $f18, $f0
    /* 2C16D0 802DF2A0 2419001E */  addiu      $t9, $zero, 0x1E
    /* 2C16D4 802DF2A4 240C00F0 */  addiu      $t4, $zero, 0xF0
    /* 2C16D8 802DF2A8 AFAC0020 */  sw         $t4, 0x20($sp)
    /* 2C16DC 802DF2AC AFB90018 */  sw         $t9, 0x18($sp)
    /* 2C16E0 802DF2B0 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2C16E4 802DF2B4 468021A0 */  cvt.s.w    $f6, $f4
    /* 2C16E8 802DF2B8 AFAE0028 */  sw         $t6, 0x28($sp)
    /* 2C16EC 802DF2BC 87A5006A */  lh         $a1, 0x6A($sp)
    /* 2C16F0 802DF2C0 24070050 */  addiu      $a3, $zero, 0x50
    /* 2C16F4 802DF2C4 460A3400 */  add.s      $f16, $f6, $f10
    /* 2C16F8 802DF2C8 448B3000 */  mtc1       $t3, $f6
    /* 2C16FC 802DF2CC 240B003C */  addiu      $t3, $zero, 0x3C
    /* 2C1700 802DF2D0 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 2C1704 802DF2D4 468032A0 */  cvt.s.w    $f10, $f6
    /* 2C1708 802DF2D8 4600810D */  trunc.w.s  $f4, $f16
    /* 2C170C 802DF2DC 46085400 */  add.s      $f16, $f10, $f8
    /* 2C1710 802DF2E0 44042000 */  mfc1       $a0, $f4
    /* 2C1714 802DF2E4 4600810D */  trunc.w.s  $f4, $f16
    /* 2C1718 802DF2E8 0004C400 */  sll        $t8, $a0, 16
    /* 2C171C 802DF2EC 00182403 */  sra        $a0, $t8, 16
    /* 2C1720 802DF2F0 2418000C */  addiu      $t8, $zero, 0xC
    /* 2C1724 802DF2F4 44062000 */  mfc1       $a2, $f4
    /* 2C1728 802DF2F8 AFB80014 */  sw         $t8, 0x14($sp)
    /* 2C172C 802DF2FC 00066C00 */  sll        $t5, $a2, 16
    /* 2C1730 802DF300 000D3403 */  sra        $a2, $t5, 16
    /* 2C1734 802DF304 240D00C8 */  addiu      $t5, $zero, 0xC8
    /* 2C1738 802DF308 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 2C173C 802DF30C AFAD0024 */   sw        $t5, 0x24($sp)
    /* 2C1740 802DF310 8FAF0070 */  lw         $t7, 0x70($sp)
  .L802DF314_2C1744:
    /* 2C1744 802DF314 93A4007D */  lbu        $a0, 0x7D($sp)
    /* 2C1748 802DF318 3C05802E */  lui        $a1, %hi(D_802E2E38)
    /* 2C174C 802DF31C 55E00044 */  bnel       $t7, $zero, .L802DF430_2C1860
    /* 2C1750 802DF320 8FAC0070 */   lw        $t4, 0x70($sp)
    /* 2C1754 802DF324 0C020721 */  jal        func_80081C84_90C34
    /* 2C1758 802DF328 24A52E38 */   addiu     $a1, $a1, %lo(D_802E2E38)
    /* 2C175C 802DF32C 3C05802E */  lui        $a1, %hi(D_802E2E38)
    /* 2C1760 802DF330 24A52E38 */  addiu      $a1, $a1, %lo(D_802E2E38)
    /* 2C1764 802DF334 0C020721 */  jal        func_80081C84_90C34
    /* 2C1768 802DF338 93A4007B */   lbu       $a0, 0x7B($sp)
    /* 2C176C 802DF33C 0C0B7B79 */  jal        func_802DEDE4_2C1214
    /* 2C1770 802DF340 93A40083 */   lbu       $a0, 0x83($sp)
    /* 2C1774 802DF344 8FAB006C */  lw         $t3, 0x6C($sp)
    /* 2C1778 802DF348 3C0143C8 */  lui        $at, (0x43C80000 >> 16)
    /* 2C177C 802DF34C 44810000 */  mtc1       $at, $f0
    /* 2C1780 802DF350 C7AA0060 */  lwc1       $f10, 0x60($sp)
    /* 2C1784 802DF354 448B9000 */  mtc1       $t3, $f18
    /* 2C1788 802DF358 8FAF0064 */  lw         $t7, 0x64($sp)
    /* 2C178C 802DF35C 46005202 */  mul.s      $f8, $f10, $f0
    /* 2C1790 802DF360 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 2C1794 802DF364 44811000 */  mtc1       $at, $f2
    /* 2C1798 802DF368 8618004C */  lh         $t8, 0x4C($s0)
    /* 2C179C 802DF36C 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 2C17A0 802DF370 240C0006 */  addiu      $t4, $zero, 0x6
    /* 2C17A4 802DF374 468091A0 */  cvt.s.w    $f6, $f18
    /* 2C17A8 802DF378 448F9000 */  mtc1       $t7, $f18
    /* 2C17AC 802DF37C 2719FFFD */  addiu      $t9, $t8, -0x3
    /* 2C17B0 802DF380 A619004C */  sh         $t9, 0x4C($s0)
    /* 2C17B4 802DF384 240FFFE2 */  addiu      $t7, $zero, -0x1E
    /* 2C17B8 802DF388 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2C17BC 802DF38C 46083400 */  add.s      $f16, $f6, $f8
    /* 2C17C0 802DF390 C7A8005C */  lwc1       $f8, 0x5C($sp)
    /* 2C17C4 802DF394 240F00F0 */  addiu      $t7, $zero, 0xF0
    /* 2C17C8 802DF398 468091A0 */  cvt.s.w    $f6, $f18
    /* 2C17CC 802DF39C 241800C8 */  addiu      $t8, $zero, 0xC8
    /* 2C17D0 802DF3A0 240E0028 */  addiu      $t6, $zero, 0x28
    /* 2C17D4 802DF3A4 AFAE0024 */  sw         $t6, 0x24($sp)
    /* 2C17D8 802DF3A8 AFB8002C */  sw         $t8, 0x2C($sp)
    /* 2C17DC 802DF3AC 4600810D */  trunc.w.s  $f4, $f16
    /* 2C17E0 802DF3B0 46004402 */  mul.s      $f16, $f8, $f0
    /* 2C17E4 802DF3B4 AFAF0028 */  sw         $t7, 0x28($sp)
    /* 2C17E8 802DF3B8 AFAC001C */  sw         $t4, 0x1C($sp)
    /* 2C17EC 802DF3BC 44042000 */  mfc1       $a0, $f4
    /* 2C17F0 802DF3C0 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 2C17F4 802DF3C4 AFAB0034 */  sw         $t3, 0x34($sp)
    /* 2C17F8 802DF3C8 00046C00 */  sll        $t5, $a0, 16
    /* 2C17FC 802DF3CC 46103100 */  add.s      $f4, $f6, $f16
    /* 2C1800 802DF3D0 460A1182 */  mul.s      $f6, $f2, $f10
    /* 2C1804 802DF3D4 000D2403 */  sra        $a0, $t5, 16
    /* 2C1808 802DF3D8 87A5006A */  lh         $a1, 0x6A($sp)
    /* 2C180C 802DF3DC 4600248D */  trunc.w.s  $f18, $f4
    /* 2C1810 802DF3E0 46081102 */  mul.s      $f4, $f2, $f8
    /* 2C1814 802DF3E4 44069000 */  mfc1       $a2, $f18
    /* 2C1818 802DF3E8 4600340D */  trunc.w.s  $f16, $f6
    /* 2C181C 802DF3EC 0006CC00 */  sll        $t9, $a2, 16
    /* 2C1820 802DF3F0 00193403 */  sra        $a2, $t9, 16
    /* 2C1824 802DF3F4 4600248D */  trunc.w.s  $f18, $f4
    /* 2C1828 802DF3F8 44078000 */  mfc1       $a3, $f16
    /* 2C182C 802DF3FC 44199000 */  mfc1       $t9, $f18
    /* 2C1830 802DF400 00076E00 */  sll        $t5, $a3, 24
    /* 2C1834 802DF404 000D3E03 */  sra        $a3, $t5, 24
    /* 2C1838 802DF408 AFB90014 */  sw         $t9, 0x14($sp)
    /* 2C183C 802DF40C 24190014 */  addiu      $t9, $zero, 0x14
    /* 2C1840 802DF410 240D0010 */  addiu      $t5, $zero, 0x10
    /* 2C1844 802DF414 AFAD0020 */  sw         $t5, 0x20($sp)
    /* 2C1848 802DF418 0C03297B */  jal        func_800CA5EC_D959C
    /* 2C184C 802DF41C AFB90030 */   sw        $t9, 0x30($sp)
    /* 2C1850 802DF420 93A40083 */  lbu        $a0, 0x83($sp)
    /* 2C1854 802DF424 0C04DD1A */  jal        func_80137468_146418
    /* 2C1858 802DF428 24050001 */   addiu     $a1, $zero, 0x1
    /* 2C185C 802DF42C 8FAC0070 */  lw         $t4, 0x70($sp)
  .L802DF430_2C1860:
    /* 2C1860 802DF430 24010014 */  addiu      $at, $zero, 0x14
    /* 2C1864 802DF434 93A4007D */  lbu        $a0, 0x7D($sp)
    /* 2C1868 802DF438 258D0004 */  addiu      $t5, $t4, 0x4
    /* 2C186C 802DF43C 01A1001A */  div        $zero, $t5, $at
    /* 2C1870 802DF440 00007010 */  mfhi       $t6
    /* 2C1874 802DF444 3C05802E */  lui        $a1, %hi(D_802E2E48)
    /* 2C1878 802DF448 15C00008 */  bnez       $t6, .L802DF46C_2C189C
    /* 2C187C 802DF44C 93AF007B */   lbu       $t7, 0x7B($sp)
    /* 2C1880 802DF450 24A52E48 */  addiu      $a1, $a1, %lo(D_802E2E48)
    /* 2C1884 802DF454 0C020721 */  jal        func_80081C84_90C34
    /* 2C1888 802DF458 AFAF0054 */   sw        $t7, 0x54($sp)
    /* 2C188C 802DF45C 3C05802E */  lui        $a1, %hi(D_802E2E68)
    /* 2C1890 802DF460 24A52E68 */  addiu      $a1, $a1, %lo(D_802E2E68)
    /* 2C1894 802DF464 0C020721 */  jal        func_80081C84_90C34
    /* 2C1898 802DF468 93A40057 */   lbu       $a0, 0x57($sp)
  .L802DF46C_2C189C:
    /* 2C189C 802DF46C 86180048 */  lh         $t8, 0x48($s0)
  .L802DF470_2C18A0:
    /* 2C18A0 802DF470 2719FFFF */  addiu      $t9, $t8, -0x1
    /* 2C18A4 802DF474 1000000B */  b          .L802DF4A4_2C18D4
    /* 2C18A8 802DF478 A6190048 */   sh        $t9, 0x48($s0)
  .L802DF47C_2C18AC:
    /* 2C18AC 802DF47C ACCB0020 */  sw         $t3, 0x20($a2)
    /* 2C18B0 802DF480 10000008 */  b          .L802DF4A4_2C18D4
    /* 2C18B4 802DF484 A600004C */   sh        $zero, 0x4C($s0)
  .L802DF488_2C18B8:
    /* 2C18B8 802DF488 3C05802E */  lui        $a1, %hi(D_802E2E38)
    /* 2C18BC 802DF48C 0C020721 */  jal        func_80081C84_90C34
    /* 2C18C0 802DF490 24A52E38 */   addiu     $a1, $a1, %lo(D_802E2E38)
    /* 2C18C4 802DF494 3C05802E */  lui        $a1, %hi(D_802E2E38)
    /* 2C18C8 802DF498 24A52E38 */  addiu      $a1, $a1, %lo(D_802E2E38)
    /* 2C18CC 802DF49C 0C020721 */  jal        func_80081C84_90C34
    /* 2C18D0 802DF4A0 93A4007B */   lbu       $a0, 0x7B($sp)
  .L802DF4A4_2C18D4:
    /* 2C18D4 802DF4A4 86020048 */  lh         $v0, 0x48($s0)
    /* 2C18D8 802DF4A8 10400002 */  beqz       $v0, .L802DF4B4_2C18E4
    /* 2C18DC 802DF4AC 244CFFFF */   addiu     $t4, $v0, -0x1
    /* 2C18E0 802DF4B0 A60C0048 */  sh         $t4, 0x48($s0)
  .L802DF4B4_2C18E4:
    /* 2C18E4 802DF4B4 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 2C18E8 802DF4B8 8FB00040 */  lw         $s0, 0x40($sp)
    /* 2C18EC 802DF4BC 27BD0080 */  addiu      $sp, $sp, 0x80
    /* 2C18F0 802DF4C0 03E00008 */  jr         $ra
    /* 2C18F4 802DF4C4 00000000 */   nop
endlabel func_802DEFB4_2C13E4
