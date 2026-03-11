nonmatching func_802DB1D4_31F324, 0x828

glabel func_802DB1D4_31F324
    /* 31F324 802DB1D4 308600FF */  andi       $a2, $a0, 0xFF
    /* 31F328 802DB1D8 00067080 */  sll        $t6, $a2, 2
    /* 31F32C 802DB1DC 27BDFF50 */  addiu      $sp, $sp, -0xB0
    /* 31F330 802DB1E0 3C058005 */  lui        $a1, %hi(alienInstances)
    /* 31F334 802DB1E4 01C67021 */  addu       $t6, $t6, $a2
    /* 31F338 802DB1E8 24A58198 */  addiu      $a1, $a1, %lo(alienInstances)
    /* 31F33C 802DB1EC AFB00040 */  sw         $s0, 0x40($sp)
    /* 31F340 802DB1F0 000E7100 */  sll        $t6, $t6, 4
    /* 31F344 802DB1F4 00AE8021 */  addu       $s0, $a1, $t6
    /* 31F348 802DB1F8 8E020020 */  lw         $v0, 0x20($s0)
    /* 31F34C 802DB1FC AFBF0044 */  sw         $ra, 0x44($sp)
    /* 31F350 802DB200 AFA400B0 */  sw         $a0, 0xB0($sp)
    /* 31F354 802DB204 304F0600 */  andi       $t7, $v0, 0x600
    /* 31F358 802DB208 11E001F7 */  beqz       $t7, .L802DB9E8_31FB38
    /* 31F35C 802DB20C 92030025 */   lbu       $v1, 0x25($s0)
    /* 31F360 802DB210 0002C2C0 */  sll        $t8, $v0, 11
    /* 31F364 802DB214 07000016 */  bltz       $t8, .L802DB270_31F3C0
    /* 31F368 802DB218 24197D00 */   addiu     $t9, $zero, 0x7D00
    /* 31F36C 802DB21C 240100FF */  addiu      $at, $zero, 0xFF
    /* 31F370 802DB220 A2000036 */  sb         $zero, 0x36($s0)
    /* 31F374 802DB224 A200004B */  sb         $zero, 0x4B($s0)
    /* 31F378 802DB228 1061000C */  beq        $v1, $at, .L802DB25C_31F3AC
    /* 31F37C 802DB22C A619002C */   sh        $t9, 0x2C($s0)
    /* 31F380 802DB230 00037080 */  sll        $t6, $v1, 2
    /* 31F384 802DB234 01C37021 */  addu       $t6, $t6, $v1
    /* 31F388 802DB238 000E7100 */  sll        $t6, $t6, 4
    /* 31F38C 802DB23C 00AE1021 */  addu       $v0, $a1, $t6
    /* 31F390 802DB240 904F001A */  lbu        $t7, 0x1A($v0)
    /* 31F394 802DB244 2401001B */  addiu      $at, $zero, 0x1B
    /* 31F398 802DB248 55E10005 */  bnel       $t7, $at, .L802DB260_31F3B0
    /* 31F39C 802DB24C 00C02025 */   or        $a0, $a2, $zero
    /* 31F3A0 802DB250 90580026 */  lbu        $t8, 0x26($v0)
    /* 31F3A4 802DB254 2719FFFF */  addiu      $t9, $t8, -0x1
    /* 31F3A8 802DB258 A0590026 */  sb         $t9, 0x26($v0)
  .L802DB25C_31F3AC:
    /* 31F3AC 802DB25C 00C02025 */  or         $a0, $a2, $zero
  .L802DB260_31F3B0:
    /* 31F3B0 802DB260 0C04DD1A */  jal        func_80137468_146418
    /* 31F3B4 802DB264 24050010 */   addiu     $a1, $zero, 0x10
    /* 31F3B8 802DB268 100001E0 */  b          .L802DB9EC_31FB3C
    /* 31F3BC 802DB26C 8FBF0044 */   lw        $ra, 0x44($sp)
  .L802DB270_31F3C0:
    /* 31F3C0 802DB270 8604000C */  lh         $a0, 0xC($s0)
    /* 31F3C4 802DB274 3C0B8015 */  lui        $t3, %hi(D_8014DD50)
    /* 31F3C8 802DB278 256BDD50 */  addiu      $t3, $t3, %lo(D_8014DD50)
    /* 31F3CC 802DB27C 00047100 */  sll        $t6, $a0, 4
    /* 31F3D0 802DB280 016E7821 */  addu       $t7, $t3, $t6
    /* 31F3D4 802DB284 81FF000C */  lb         $ra, 0xC($t7)
    /* 31F3D8 802DB288 A3A600B3 */  sb         $a2, 0xB3($sp)
    /* 31F3DC 802DB28C A7A30092 */  sh         $v1, 0x92($sp)
    /* 31F3E0 802DB290 001FC100 */  sll        $t8, $ra, 4
    /* 31F3E4 802DB294 01785021 */  addu       $t2, $t3, $t8
    /* 31F3E8 802DB298 8146000D */  lb         $a2, 0xD($t2)
    /* 31F3EC 802DB29C 8609002C */  lh         $t1, 0x2C($s0)
    /* 31F3F0 802DB2A0 8145000C */  lb         $a1, 0xC($t2)
    /* 31F3F4 802DB2A4 0006C900 */  sll        $t9, $a2, 4
    /* 31F3F8 802DB2A8 01796021 */  addu       $t4, $t3, $t9
    /* 31F3FC 802DB2AC 8187000D */  lb         $a3, 0xD($t4)
    /* 31F400 802DB2B0 818E000C */  lb         $t6, 0xC($t4)
    /* 31F404 802DB2B4 2921003D */  slti       $at, $t1, 0x3D
    /* 31F408 802DB2B8 00077900 */  sll        $t7, $a3, 4
    /* 31F40C 802DB2BC 016F6821 */  addu       $t5, $t3, $t7
    /* 31F410 802DB2C0 81A2000D */  lb         $v0, 0xD($t5)
    /* 31F414 802DB2C4 A7AE00A0 */  sh         $t6, 0xA0($sp)
    /* 31F418 802DB2C8 81B8000C */  lb         $t8, 0xC($t5)
    /* 31F41C 802DB2CC 0002C900 */  sll        $t9, $v0, 4
    /* 31F420 802DB2D0 01797021 */  addu       $t6, $t3, $t9
    /* 31F424 802DB2D4 81C3000C */  lb         $v1, 0xC($t6)
    /* 31F428 802DB2D8 A7B8009C */  sh         $t8, 0x9C($sp)
    /* 31F42C 802DB2DC 93A400B3 */  lbu        $a0, 0xB3($sp)
    /* 31F430 802DB2E0 00037900 */  sll        $t7, $v1, 4
    /* 31F434 802DB2E4 016FC021 */  addu       $t8, $t3, $t7
    /* 31F438 802DB2E8 8308000C */  lb         $t0, 0xC($t8)
    /* 31F43C 802DB2EC A7BF0088 */  sh         $ra, 0x88($sp)
    /* 31F440 802DB2F0 A7A5008A */  sh         $a1, 0x8A($sp)
    /* 31F444 802DB2F4 A7A2008C */  sh         $v0, 0x8C($sp)
    /* 31F448 802DB2F8 A7A3008E */  sh         $v1, 0x8E($sp)
    /* 31F44C 802DB2FC 1420012E */  bnez       $at, .L802DB7B8_31F908
    /* 31F450 802DB300 A7A80090 */   sh        $t0, 0x90($sp)
    /* 31F454 802DB304 A7BF00AC */  sh         $ra, 0xAC($sp)
    /* 31F458 802DB308 2405FF38 */  addiu      $a1, $zero, -0xC8
    /* 31F45C 802DB30C AFAA0058 */  sw         $t2, 0x58($sp)
    /* 31F460 802DB310 AFAC0054 */  sw         $t4, 0x54($sp)
    /* 31F464 802DB314 0C021D07 */  jal        func_8008741C_963CC
    /* 31F468 802DB318 AFAD0050 */   sw        $t5, 0x50($sp)
    /* 31F46C 802DB31C 8619002C */  lh         $t9, 0x2C($s0)
    /* 31F470 802DB320 332E0003 */  andi       $t6, $t9, 0x3
    /* 31F474 802DB324 15C0003F */  bnez       $t6, .L802DB424_31F574
    /* 31F478 802DB328 00000000 */   nop
    /* 31F47C 802DB32C 0C000E38 */  jal        func_800038E0_44E0
    /* 31F480 802DB330 00000000 */   nop
    /* 31F484 802DB334 0C000E38 */  jal        func_800038E0_44E0
    /* 31F488 802DB338 A7A20066 */   sh        $v0, 0x66($sp)
    /* 31F48C 802DB33C 0C000E38 */  jal        func_800038E0_44E0
    /* 31F490 802DB340 A7A20068 */   sh        $v0, 0x68($sp)
    /* 31F494 802DB344 0C000E38 */  jal        func_800038E0_44E0
    /* 31F498 802DB348 A7A2006A */   sh        $v0, 0x6A($sp)
    /* 31F49C 802DB34C 240300C8 */  addiu      $v1, $zero, 0xC8
    /* 31F4A0 802DB350 97AF0066 */  lhu        $t7, 0x66($sp)
    /* 31F4A4 802DB354 86190000 */  lh         $t9, 0x0($s0)
    /* 31F4A8 802DB358 AFA00010 */  sw         $zero, 0x10($sp)
    /* 31F4AC 802DB35C 01E3001A */  div        $zero, $t7, $v1
    /* 31F4B0 802DB360 0000C010 */  mfhi       $t8
    /* 31F4B4 802DB364 03192021 */  addu       $a0, $t8, $t9
    /* 31F4B8 802DB368 97B80068 */  lhu        $t8, 0x68($sp)
    /* 31F4BC 802DB36C 14600002 */  bnez       $v1, .L802DB378_31F4C8
    /* 31F4C0 802DB370 00000000 */   nop
    /* 31F4C4 802DB374 0007000D */  break      7
  .L802DB378_31F4C8:
    /* 31F4C8 802DB378 2401FFFF */  addiu      $at, $zero, -0x1
    /* 31F4CC 802DB37C 14610004 */  bne        $v1, $at, .L802DB390_31F4E0
    /* 31F4D0 802DB380 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 31F4D4 802DB384 15E10002 */  bne        $t7, $at, .L802DB390_31F4E0
    /* 31F4D8 802DB388 00000000 */   nop
    /* 31F4DC 802DB38C 0006000D */  break      6
  .L802DB390_31F4E0:
    /* 31F4E0 802DB390 0303001A */  div        $zero, $t8, $v1
    /* 31F4E4 802DB394 2484FF9C */  addiu      $a0, $a0, -0x64
    /* 31F4E8 802DB398 00047400 */  sll        $t6, $a0, 16
    /* 31F4EC 802DB39C 000E7C03 */  sra        $t7, $t6, 16
    /* 31F4F0 802DB3A0 860E0002 */  lh         $t6, 0x2($s0)
    /* 31F4F4 802DB3A4 0000C810 */  mfhi       $t9
    /* 31F4F8 802DB3A8 01E02025 */  or         $a0, $t7, $zero
    /* 31F4FC 802DB3AC 14600002 */  bnez       $v1, .L802DB3B8_31F508
    /* 31F500 802DB3B0 00000000 */   nop
    /* 31F504 802DB3B4 0007000D */  break      7
  .L802DB3B8_31F508:
    /* 31F508 802DB3B8 2401FFFF */  addiu      $at, $zero, -0x1
    /* 31F50C 802DB3BC 14610004 */  bne        $v1, $at, .L802DB3D0_31F520
    /* 31F510 802DB3C0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 31F514 802DB3C4 17010002 */  bne        $t8, $at, .L802DB3D0_31F520
    /* 31F518 802DB3C8 00000000 */   nop
    /* 31F51C 802DB3CC 0006000D */  break      6
  .L802DB3D0_31F520:
    /* 31F520 802DB3D0 032E2821 */  addu       $a1, $t9, $t6
    /* 31F524 802DB3D4 97B9006A */  lhu        $t9, 0x6A($sp)
    /* 31F528 802DB3D8 24010190 */  addiu      $at, $zero, 0x190
    /* 31F52C 802DB3DC 24A5FF9C */  addiu      $a1, $a1, -0x64
    /* 31F530 802DB3E0 0321001A */  div        $zero, $t9, $at
    /* 31F534 802DB3E4 00007010 */  mfhi       $t6
    /* 31F538 802DB3E8 24010028 */  addiu      $at, $zero, 0x28
    /* 31F53C 802DB3EC 00057C00 */  sll        $t7, $a1, 16
    /* 31F540 802DB3F0 0041001A */  div        $zero, $v0, $at
    /* 31F544 802DB3F4 000F2C03 */  sra        $a1, $t7, 16
    /* 31F548 802DB3F8 860F0004 */  lh         $t7, 0x4($s0)
    /* 31F54C 802DB3FC 00003810 */  mfhi       $a3
    /* 31F550 802DB400 24E7001E */  addiu      $a3, $a3, 0x1E
    /* 31F554 802DB404 01CF3021 */  addu       $a2, $t6, $t7
    /* 31F558 802DB408 24C6FF38 */  addiu      $a2, $a2, -0xC8
    /* 31F55C 802DB40C 0006C400 */  sll        $t8, $a2, 16
    /* 31F560 802DB410 30EEFFFF */  andi       $t6, $a3, 0xFFFF
    /* 31F564 802DB414 01C03825 */  or         $a3, $t6, $zero
    /* 31F568 802DB418 00183403 */  sra        $a2, $t8, 16
    /* 31F56C 802DB41C 0C037C0E */  jal        func_800DF038_EDFE8
    /* 31F570 802DB420 AFA00014 */   sw        $zero, 0x14($sp)
  .L802DB424_31F574:
    /* 31F574 802DB424 3C0F802E */  lui        $t7, %hi(D_802E54B8)
    /* 31F578 802DB428 25EF54B8 */  addiu      $t7, $t7, %lo(D_802E54B8)
    /* 31F57C 802DB42C AFAF0010 */  sw         $t7, 0x10($sp)
    /* 31F580 802DB430 93A400B3 */  lbu        $a0, 0xB3($sp)
    /* 31F584 802DB434 24050005 */  addiu      $a1, $zero, 0x5
    /* 31F588 802DB438 24060006 */  addiu      $a2, $zero, 0x6
    /* 31F58C 802DB43C 0C0207C6 */  jal        func_80081F18_90EC8
    /* 31F590 802DB440 27A70088 */   addiu     $a3, $sp, 0x88
    /* 31F594 802DB444 24010002 */  addiu      $at, $zero, 0x2
    /* 31F598 802DB448 1041000A */  beq        $v0, $at, .L802DB474_31F5C4
    /* 31F59C 802DB44C 24010003 */   addiu     $at, $zero, 0x3
    /* 31F5A0 802DB450 10410048 */  beq        $v0, $at, .L802DB574_31F6C4
    /* 31F5A4 802DB454 24010005 */   addiu     $at, $zero, 0x5
    /* 31F5A8 802DB458 10410088 */  beq        $v0, $at, .L802DB67C_31F7CC
    /* 31F5AC 802DB45C 24180096 */   addiu     $t8, $zero, 0x96
    /* 31F5B0 802DB460 24010006 */  addiu      $at, $zero, 0x6
    /* 31F5B4 802DB464 104100D2 */  beq        $v0, $at, .L802DB7B0_31F900
    /* 31F5B8 802DB468 2419003C */   addiu     $t9, $zero, 0x3C
    /* 31F5BC 802DB46C 1000015F */  b          .L802DB9EC_31FB3C
    /* 31F5C0 802DB470 8FBF0044 */   lw        $ra, 0x44($sp)
  .L802DB474_31F5C4:
    /* 31F5C4 802DB474 86030006 */  lh         $v1, 0x6($s0)
    /* 31F5C8 802DB478 3064FFFF */  andi       $a0, $v1, 0xFFFF
    /* 31F5CC 802DB47C 0C007660 */  jal        sins
    /* 31F5D0 802DB480 AFA4004C */   sw        $a0, 0x4C($sp)
    /* 31F5D4 802DB484 44822000 */  mtc1       $v0, $f4
    /* 31F5D8 802DB488 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31F5DC 802DB48C 44815800 */  mtc1       $at, $f11
    /* 31F5E0 802DB490 468021A0 */  cvt.s.w    $f6, $f4
    /* 31F5E4 802DB494 44805000 */  mtc1       $zero, $f10
    /* 31F5E8 802DB498 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 31F5EC 802DB49C 44819800 */  mtc1       $at, $f19
    /* 31F5F0 802DB4A0 44809000 */  mtc1       $zero, $f18
    /* 31F5F4 802DB4A4 8FA4004C */  lw         $a0, 0x4C($sp)
    /* 31F5F8 802DB4A8 46003221 */  cvt.d.s    $f8, $f6
    /* 31F5FC 802DB4AC 462A4403 */  div.d      $f16, $f8, $f10
    /* 31F600 802DB4B0 46328102 */  mul.d      $f4, $f16, $f18
    /* 31F604 802DB4B4 462021A0 */  cvt.s.d    $f6, $f4
    /* 31F608 802DB4B8 0C007654 */  jal        coss
    /* 31F60C 802DB4BC E7A60078 */   swc1      $f6, 0x78($sp)
    /* 31F610 802DB4C0 44828000 */  mtc1       $v0, $f16
    /* 31F614 802DB4C4 C7A80078 */  lwc1       $f8, 0x78($sp)
    /* 31F618 802DB4C8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31F61C 802DB4CC 468084A0 */  cvt.s.w    $f18, $f16
    /* 31F620 802DB4D0 44813800 */  mtc1       $at, $f7
    /* 31F624 802DB4D4 44803000 */  mtc1       $zero, $f6
    /* 31F628 802DB4D8 87A5009C */  lh         $a1, 0x9C($sp)
    /* 31F62C 802DB4DC 8FA80050 */  lw         $t0, 0x50($sp)
    /* 31F630 802DB4E0 4600428D */  trunc.w.s  $f10, $f8
    /* 31F634 802DB4E4 3C198015 */  lui        $t9, %hi(D_8014DD50)
    /* 31F638 802DB4E8 2739DD50 */  addiu      $t9, $t9, %lo(D_8014DD50)
    /* 31F63C 802DB4EC 46009121 */  cvt.d.s    $f4, $f18
    /* 31F640 802DB4F0 0005C100 */  sll        $t8, $a1, 4
    /* 31F644 802DB4F4 46262203 */  div.d      $f8, $f4, $f6
    /* 31F648 802DB4F8 03191821 */  addu       $v1, $t8, $t9
    /* 31F64C 802DB4FC 846E0000 */  lh         $t6, 0x0($v1)
    /* 31F650 802DB500 850F0000 */  lh         $t7, 0x0($t0)
    /* 31F654 802DB504 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 31F658 802DB508 44815800 */  mtc1       $at, $f11
    /* 31F65C 802DB50C 01CF3021 */  addu       $a2, $t6, $t7
    /* 31F660 802DB510 846E0002 */  lh         $t6, 0x2($v1)
    /* 31F664 802DB514 850F0002 */  lh         $t7, 0x2($t0)
    /* 31F668 802DB518 0006C400 */  sll        $t8, $a2, 16
    /* 31F66C 802DB51C 00183403 */  sra        $a2, $t8, 16
    /* 31F670 802DB520 01CF3821 */  addu       $a3, $t6, $t7
    /* 31F674 802DB524 846E0004 */  lh         $t6, 0x4($v1)
    /* 31F678 802DB528 850F0004 */  lh         $t7, 0x4($t0)
    /* 31F67C 802DB52C 0007C400 */  sll        $t8, $a3, 16
    /* 31F680 802DB530 00183C03 */  sra        $a3, $t8, 16
    /* 31F684 802DB534 01CFC021 */  addu       $t8, $t6, $t7
    /* 31F688 802DB538 440E5000 */  mfc1       $t6, $f10
    /* 31F68C 802DB53C 44805000 */  mtc1       $zero, $f10
    /* 31F690 802DB540 240F000F */  addiu      $t7, $zero, 0xF
    /* 31F694 802DB544 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 31F698 802DB548 AFB80010 */  sw         $t8, 0x10($sp)
    /* 31F69C 802DB54C 93A400B3 */  lbu        $a0, 0xB3($sp)
    /* 31F6A0 802DB550 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 31F6A4 802DB554 462A4402 */  mul.d      $f16, $f8, $f10
    /* 31F6A8 802DB558 462084A0 */  cvt.s.d    $f18, $f16
    /* 31F6AC 802DB55C 4600910D */  trunc.w.s  $f4, $f18
    /* 31F6B0 802DB560 44192000 */  mfc1       $t9, $f4
    /* 31F6B4 802DB564 0C022390 */  jal        func_80088E40_97DF0
    /* 31F6B8 802DB568 AFB9001C */   sw        $t9, 0x1C($sp)
    /* 31F6BC 802DB56C 1000011F */  b          .L802DB9EC_31FB3C
    /* 31F6C0 802DB570 8FBF0044 */   lw        $ra, 0x44($sp)
  .L802DB574_31F6C4:
    /* 31F6C4 802DB574 86030006 */  lh         $v1, 0x6($s0)
    /* 31F6C8 802DB578 34018000 */  ori        $at, $zero, 0x8000
    /* 31F6CC 802DB57C 00611821 */  addu       $v1, $v1, $at
    /* 31F6D0 802DB580 3064FFFF */  andi       $a0, $v1, 0xFFFF
    /* 31F6D4 802DB584 0C007660 */  jal        sins
    /* 31F6D8 802DB588 AFA4004C */   sw        $a0, 0x4C($sp)
    /* 31F6DC 802DB58C 44823000 */  mtc1       $v0, $f6
    /* 31F6E0 802DB590 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31F6E4 802DB594 44818800 */  mtc1       $at, $f17
    /* 31F6E8 802DB598 46803220 */  cvt.s.w    $f8, $f6
    /* 31F6EC 802DB59C 44808000 */  mtc1       $zero, $f16
    /* 31F6F0 802DB5A0 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 31F6F4 802DB5A4 44812800 */  mtc1       $at, $f5
    /* 31F6F8 802DB5A8 44802000 */  mtc1       $zero, $f4
    /* 31F6FC 802DB5AC 8FA4004C */  lw         $a0, 0x4C($sp)
    /* 31F700 802DB5B0 460042A1 */  cvt.d.s    $f10, $f8
    /* 31F704 802DB5B4 46305483 */  div.d      $f18, $f10, $f16
    /* 31F708 802DB5B8 46249182 */  mul.d      $f6, $f18, $f4
    /* 31F70C 802DB5BC 46203220 */  cvt.s.d    $f8, $f6
    /* 31F710 802DB5C0 0C007654 */  jal        coss
    /* 31F714 802DB5C4 E7A80078 */   swc1      $f8, 0x78($sp)
    /* 31F718 802DB5C8 44829000 */  mtc1       $v0, $f18
    /* 31F71C 802DB5CC C7AA0078 */  lwc1       $f10, 0x78($sp)
    /* 31F720 802DB5D0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31F724 802DB5D4 46809120 */  cvt.s.w    $f4, $f18
    /* 31F728 802DB5D8 44814800 */  mtc1       $at, $f9
    /* 31F72C 802DB5DC 44804000 */  mtc1       $zero, $f8
    /* 31F730 802DB5E0 87A500A0 */  lh         $a1, 0xA0($sp)
    /* 31F734 802DB5E4 8FA80054 */  lw         $t0, 0x54($sp)
    /* 31F738 802DB5E8 4600540D */  trunc.w.s  $f16, $f10
    /* 31F73C 802DB5EC 3C0F8015 */  lui        $t7, %hi(D_8014DD50)
    /* 31F740 802DB5F0 25EFDD50 */  addiu      $t7, $t7, %lo(D_8014DD50)
    /* 31F744 802DB5F4 460021A1 */  cvt.d.s    $f6, $f4
    /* 31F748 802DB5F8 00057100 */  sll        $t6, $a1, 4
    /* 31F74C 802DB5FC 46283283 */  div.d      $f10, $f6, $f8
    /* 31F750 802DB600 01CF1821 */  addu       $v1, $t6, $t7
    /* 31F754 802DB604 84780000 */  lh         $t8, 0x0($v1)
    /* 31F758 802DB608 85190000 */  lh         $t9, 0x0($t0)
    /* 31F75C 802DB60C 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 31F760 802DB610 44818800 */  mtc1       $at, $f17
    /* 31F764 802DB614 03193021 */  addu       $a2, $t8, $t9
    /* 31F768 802DB618 84780002 */  lh         $t8, 0x2($v1)
    /* 31F76C 802DB61C 85190002 */  lh         $t9, 0x2($t0)
    /* 31F770 802DB620 00067400 */  sll        $t6, $a2, 16
    /* 31F774 802DB624 000E3403 */  sra        $a2, $t6, 16
    /* 31F778 802DB628 03193821 */  addu       $a3, $t8, $t9
    /* 31F77C 802DB62C 84780004 */  lh         $t8, 0x4($v1)
    /* 31F780 802DB630 85190004 */  lh         $t9, 0x4($t0)
    /* 31F784 802DB634 00077400 */  sll        $t6, $a3, 16
    /* 31F788 802DB638 000E3C03 */  sra        $a3, $t6, 16
    /* 31F78C 802DB63C 03197021 */  addu       $t6, $t8, $t9
    /* 31F790 802DB640 44188000 */  mfc1       $t8, $f16
    /* 31F794 802DB644 44808000 */  mtc1       $zero, $f16
    /* 31F798 802DB648 2419000F */  addiu      $t9, $zero, 0xF
    /* 31F79C 802DB64C AFB90018 */  sw         $t9, 0x18($sp)
    /* 31F7A0 802DB650 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 31F7A4 802DB654 93A400B3 */  lbu        $a0, 0xB3($sp)
    /* 31F7A8 802DB658 AFB80014 */  sw         $t8, 0x14($sp)
    /* 31F7AC 802DB65C 46305482 */  mul.d      $f18, $f10, $f16
    /* 31F7B0 802DB660 46209120 */  cvt.s.d    $f4, $f18
    /* 31F7B4 802DB664 4600218D */  trunc.w.s  $f6, $f4
    /* 31F7B8 802DB668 440F3000 */  mfc1       $t7, $f6
    /* 31F7BC 802DB66C 0C022390 */  jal        func_80088E40_97DF0
    /* 31F7C0 802DB670 AFAF001C */   sw        $t7, 0x1C($sp)
    /* 31F7C4 802DB674 100000DD */  b          .L802DB9EC_31FB3C
    /* 31F7C8 802DB678 8FBF0044 */   lw        $ra, 0x44($sp)
  .L802DB67C_31F7CC:
    /* 31F7CC 802DB67C 9219001A */  lbu        $t9, 0x1A($s0)
    /* 31F7D0 802DB680 8FAF007C */  lw         $t7, 0x7C($sp)
    /* 31F7D4 802DB684 3C018025 */  lui        $at, %hi(D_802566A4)
    /* 31F7D8 802DB688 00197080 */  sll        $t6, $t9, 2
    /* 31F7DC 802DB68C 01D97023 */  subu       $t6, $t6, $t9
    /* 31F7E0 802DB690 000E7080 */  sll        $t6, $t6, 2
    /* 31F7E4 802DB694 01D97021 */  addu       $t6, $t6, $t9
    /* 31F7E8 802DB698 000E70C0 */  sll        $t6, $t6, 3
    /* 31F7EC 802DB69C 002E0821 */  addu       $at, $at, $t6
    /* 31F7F0 802DB6A0 A43866A4 */  sh         $t8, %lo(D_802566A4)($at)
    /* 31F7F4 802DB6A4 93A400B3 */  lbu        $a0, 0xB3($sp)
    /* 31F7F8 802DB6A8 24050001 */  addiu      $a1, $zero, 0x1
    /* 31F7FC 802DB6AC 8FA60084 */  lw         $a2, 0x84($sp)
    /* 31F800 802DB6B0 8FA70080 */  lw         $a3, 0x80($sp)
    /* 31F804 802DB6B4 0C02197D */  jal        func_800865F4_955A4
    /* 31F808 802DB6B8 AFAF0010 */   sw        $t7, 0x10($sp)
    /* 31F80C 802DB6BC 9218001A */  lbu        $t8, 0x1A($s0)
    /* 31F810 802DB6C0 3C018025 */  lui        $at, %hi(D_802566B0)
    /* 31F814 802DB6C4 241900D2 */  addiu      $t9, $zero, 0xD2
    /* 31F818 802DB6C8 00187080 */  sll        $t6, $t8, 2
    /* 31F81C 802DB6CC 01D87023 */  subu       $t6, $t6, $t8
    /* 31F820 802DB6D0 000E7080 */  sll        $t6, $t6, 2
    /* 31F824 802DB6D4 01D87021 */  addu       $t6, $t6, $t8
    /* 31F828 802DB6D8 000E70C0 */  sll        $t6, $t6, 3
    /* 31F82C 802DB6DC 002E0821 */  addu       $at, $at, $t6
    /* 31F830 802DB6E0 A43966B0 */  sh         $t9, %lo(D_802566B0)($at)
    /* 31F834 802DB6E4 86030006 */  lh         $v1, 0x6($s0)
    /* 31F838 802DB6E8 24634000 */  addiu      $v1, $v1, 0x4000
    /* 31F83C 802DB6EC 3064FFFF */  andi       $a0, $v1, 0xFFFF
    /* 31F840 802DB6F0 0C007660 */  jal        sins
    /* 31F844 802DB6F4 AFA4004C */   sw        $a0, 0x4C($sp)
    /* 31F848 802DB6F8 44824000 */  mtc1       $v0, $f8
    /* 31F84C 802DB6FC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31F850 802DB700 44819800 */  mtc1       $at, $f19
    /* 31F854 802DB704 468042A0 */  cvt.s.w    $f10, $f8
    /* 31F858 802DB708 44809000 */  mtc1       $zero, $f18
    /* 31F85C 802DB70C 3C014014 */  lui        $at, (0x40140000 >> 16)
    /* 31F860 802DB710 44813800 */  mtc1       $at, $f7
    /* 31F864 802DB714 44803000 */  mtc1       $zero, $f6
    /* 31F868 802DB718 8FA4004C */  lw         $a0, 0x4C($sp)
    /* 31F86C 802DB71C 46005421 */  cvt.d.s    $f16, $f10
    /* 31F870 802DB720 46328103 */  div.d      $f4, $f16, $f18
    /* 31F874 802DB724 46262202 */  mul.d      $f8, $f4, $f6
    /* 31F878 802DB728 462042A0 */  cvt.s.d    $f10, $f8
    /* 31F87C 802DB72C 0C007654 */  jal        coss
    /* 31F880 802DB730 E7AA0078 */   swc1      $f10, 0x78($sp)
    /* 31F884 802DB734 44822000 */  mtc1       $v0, $f4
    /* 31F888 802DB738 C7B00078 */  lwc1       $f16, 0x78($sp)
    /* 31F88C 802DB73C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31F890 802DB740 468021A0 */  cvt.s.w    $f6, $f4
    /* 31F894 802DB744 44815800 */  mtc1       $at, $f11
    /* 31F898 802DB748 44805000 */  mtc1       $zero, $f10
    /* 31F89C 802DB74C 3C01C014 */  lui        $at, (0xC0140000 >> 16)
    /* 31F8A0 802DB750 8FA30058 */  lw         $v1, 0x58($sp)
    /* 31F8A4 802DB754 4600848D */  trunc.w.s  $f18, $f16
    /* 31F8A8 802DB758 44819800 */  mtc1       $at, $f19
    /* 31F8AC 802DB75C 846F0004 */  lh         $t7, 0x4($v1)
    /* 31F8B0 802DB760 46003221 */  cvt.d.s    $f8, $f6
    /* 31F8B4 802DB764 44199000 */  mfc1       $t9, $f18
    /* 31F8B8 802DB768 462A4403 */  div.d      $f16, $f8, $f10
    /* 31F8BC 802DB76C 44809000 */  mtc1       $zero, $f18
    /* 31F8C0 802DB770 240E0005 */  addiu      $t6, $zero, 0x5
    /* 31F8C4 802DB774 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 31F8C8 802DB778 93A400B3 */  lbu        $a0, 0xB3($sp)
    /* 31F8CC 802DB77C 87A500AC */  lh         $a1, 0xAC($sp)
    /* 31F8D0 802DB780 84660000 */  lh         $a2, 0x0($v1)
    /* 31F8D4 802DB784 84670002 */  lh         $a3, 0x2($v1)
    /* 31F8D8 802DB788 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 31F8DC 802DB78C AFB90014 */  sw         $t9, 0x14($sp)
    /* 31F8E0 802DB790 46328102 */  mul.d      $f4, $f16, $f18
    /* 31F8E4 802DB794 462021A0 */  cvt.s.d    $f6, $f4
    /* 31F8E8 802DB798 4600320D */  trunc.w.s  $f8, $f6
    /* 31F8EC 802DB79C 44184000 */  mfc1       $t8, $f8
    /* 31F8F0 802DB7A0 0C022390 */  jal        func_80088E40_97DF0
    /* 31F8F4 802DB7A4 AFB8001C */   sw        $t8, 0x1C($sp)
    /* 31F8F8 802DB7A8 10000090 */  b          .L802DB9EC_31FB3C
    /* 31F8FC 802DB7AC 8FBF0044 */   lw        $ra, 0x44($sp)
  .L802DB7B0_31F900:
    /* 31F900 802DB7B0 1000008D */  b          .L802DB9E8_31FB38
    /* 31F904 802DB7B4 A619002C */   sh        $t9, 0x2C($s0)
  .L802DB7B8_31F908:
    /* 31F908 802DB7B8 860E000A */  lh         $t6, 0xA($s0)
    /* 31F90C 802DB7BC 2921000B */  slti       $at, $t1, 0xB
    /* 31F910 802DB7C0 A6000012 */  sh         $zero, 0x12($s0)
    /* 31F914 802DB7C4 25CF004B */  addiu      $t7, $t6, 0x4B
    /* 31F918 802DB7C8 1420005D */  bnez       $at, .L802DB940_31FA90
    /* 31F91C 802DB7CC A60F000A */   sh        $t7, 0xA($s0)
    /* 31F920 802DB7D0 24010006 */  addiu      $at, $zero, 0x6
    /* 31F924 802DB7D4 0121001A */  div        $zero, $t1, $at
    /* 31F928 802DB7D8 0000C010 */  mfhi       $t8
    /* 31F92C 802DB7DC 3C198003 */  lui        $t9, %hi(D_80031420)
    /* 31F930 802DB7E0 57000058 */  bnel       $t8, $zero, .L802DB944_31FA94
    /* 31F934 802DB7E4 24010001 */   addiu     $at, $zero, 0x1
    /* 31F938 802DB7E8 8F391420 */  lw         $t9, %lo(D_80031420)($t9)
    /* 31F93C 802DB7EC 02002025 */  or         $a0, $s0, $zero
    /* 31F940 802DB7F0 24018000 */  addiu      $at, $zero, -0x8000
    /* 31F944 802DB7F4 332E0003 */  andi       $t6, $t9, 0x3
    /* 31F948 802DB7F8 11C00051 */  beqz       $t6, .L802DB940_31FA90
    /* 31F94C 802DB7FC 27B90084 */   addiu     $t9, $sp, 0x84
    /* 31F950 802DB800 85460002 */  lh         $a2, 0x2($t2)
    /* 31F954 802DB804 27AE0080 */  addiu      $t6, $sp, 0x80
    /* 31F958 802DB808 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 31F95C 802DB80C 00C13021 */  addu       $a2, $a2, $at
    /* 31F960 802DB810 00067C00 */  sll        $t7, $a2, 16
    /* 31F964 802DB814 000F3403 */  sra        $a2, $t7, 16
    /* 31F968 802DB818 27AF007C */  addiu      $t7, $sp, 0x7C
    /* 31F96C 802DB81C AFAF0018 */  sw         $t7, 0x18($sp)
    /* 31F970 802DB820 85450000 */  lh         $a1, 0x0($t2)
    /* 31F974 802DB824 85470004 */  lh         $a3, 0x4($t2)
    /* 31F978 802DB828 0C04A10A */  jal        func_80128428_1373D8
    /* 31F97C 802DB82C AFB90010 */   sw        $t9, 0x10($sp)
    /* 31F980 802DB830 86040006 */  lh         $a0, 0x6($s0)
    /* 31F984 802DB834 24844000 */  addiu      $a0, $a0, 0x4000
    /* 31F988 802DB838 3098FFFF */  andi       $t8, $a0, 0xFFFF
    /* 31F98C 802DB83C 0C007660 */  jal        sins
    /* 31F990 802DB840 03002025 */   or        $a0, $t8, $zero
    /* 31F994 802DB844 44825000 */  mtc1       $v0, $f10
    /* 31F998 802DB848 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31F99C 802DB84C 44812800 */  mtc1       $at, $f5
    /* 31F9A0 802DB850 46805420 */  cvt.s.w    $f16, $f10
    /* 31F9A4 802DB854 44802000 */  mtc1       $zero, $f4
    /* 31F9A8 802DB858 86040006 */  lh         $a0, 0x6($s0)
    /* 31F9AC 802DB85C 24844000 */  addiu      $a0, $a0, 0x4000
    /* 31F9B0 802DB860 460084A1 */  cvt.d.s    $f18, $f16
    /* 31F9B4 802DB864 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* 31F9B8 802DB868 46249183 */  div.d      $f6, $f18, $f4
    /* 31F9BC 802DB86C 03202025 */  or         $a0, $t9, $zero
    /* 31F9C0 802DB870 46203220 */  cvt.s.d    $f8, $f6
    /* 31F9C4 802DB874 0C007654 */  jal        coss
    /* 31F9C8 802DB878 E7A80078 */   swc1      $f8, 0x78($sp)
    /* 31F9CC 802DB87C 44825000 */  mtc1       $v0, $f10
    /* 31F9D0 802DB880 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31F9D4 802DB884 44812800 */  mtc1       $at, $f5
    /* 31F9D8 802DB888 46805420 */  cvt.s.w    $f16, $f10
    /* 31F9DC 802DB88C 44802000 */  mtc1       $zero, $f4
    /* 31F9E0 802DB890 460084A1 */  cvt.d.s    $f18, $f16
    /* 31F9E4 802DB894 46249183 */  div.d      $f6, $f18, $f4
    /* 31F9E8 802DB898 46203207 */  neg.d      $f8, $f6
    /* 31F9EC 802DB89C 462042A0 */  cvt.s.d    $f10, $f8
    /* 31F9F0 802DB8A0 0C000E38 */  jal        func_800038E0_44E0
    /* 31F9F4 802DB8A4 E7AA0074 */   swc1      $f10, 0x74($sp)
    /* 31F9F8 802DB8A8 3C014300 */  lui        $at, (0x43000000 >> 16)
    /* 31F9FC 802DB8AC 44810000 */  mtc1       $at, $f0
    /* 31FA00 802DB8B0 24010050 */  addiu      $at, $zero, 0x50
    /* 31FA04 802DB8B4 0041001A */  div        $zero, $v0, $at
    /* 31FA08 802DB8B8 C7B00078 */  lwc1       $f16, 0x78($sp)
    /* 31FA0C 802DB8BC C7A60074 */  lwc1       $f6, 0x74($sp)
    /* 31FA10 802DB8C0 2418000A */  addiu      $t8, $zero, 0xA
    /* 31FA14 802DB8C4 46008482 */  mul.s      $f18, $f16, $f0
    /* 31FA18 802DB8C8 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 31FA1C 802DB8CC 24190014 */  addiu      $t9, $zero, 0x14
    /* 31FA20 802DB8D0 46003202 */  mul.s      $f8, $f6, $f0
    /* 31FA24 802DB8D4 AFB90020 */  sw         $t9, 0x20($sp)
    /* 31FA28 802DB8D8 241800B4 */  addiu      $t8, $zero, 0xB4
    /* 31FA2C 802DB8DC 87A40086 */  lh         $a0, 0x86($sp)
    /* 31FA30 802DB8E0 87A50082 */  lh         $a1, 0x82($sp)
    /* 31FA34 802DB8E4 87A6007E */  lh         $a2, 0x7E($sp)
    /* 31FA38 802DB8E8 4600910D */  trunc.w.s  $f4, $f18
    /* 31FA3C 802DB8EC AFA00010 */  sw         $zero, 0x10($sp)
    /* 31FA40 802DB8F0 AFA0002C */  sw         $zero, 0x2C($sp)
    /* 31FA44 802DB8F4 4600428D */  trunc.w.s  $f10, $f8
    /* 31FA48 802DB8F8 44072000 */  mfc1       $a3, $f4
    /* 31FA4C 802DB8FC 00000000 */  nop
    /* 31FA50 802DB900 00077E00 */  sll        $t7, $a3, 24
    /* 31FA54 802DB904 000F3E03 */  sra        $a3, $t7, 24
    /* 31FA58 802DB908 440E5000 */  mfc1       $t6, $f10
    /* 31FA5C 802DB90C 240F0028 */  addiu      $t7, $zero, 0x28
    /* 31FA60 802DB910 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 31FA64 802DB914 00007810 */  mfhi       $t7
    /* 31FA68 802DB918 030FC823 */  subu       $t9, $t8, $t7
    /* 31FA6C 802DB91C AFAE0014 */  sw         $t6, 0x14($sp)
    /* 31FA70 802DB920 240E0032 */  addiu      $t6, $zero, 0x32
    /* 31FA74 802DB924 241800FF */  addiu      $t8, $zero, 0xFF
    /* 31FA78 802DB928 AFB80034 */  sw         $t8, 0x34($sp)
    /* 31FA7C 802DB92C AFAE0024 */  sw         $t6, 0x24($sp)
    /* 31FA80 802DB930 AFAE0030 */  sw         $t6, 0x30($sp)
    /* 31FA84 802DB934 0C03297B */  jal        func_800CA5EC_D959C
    /* 31FA88 802DB938 AFB90028 */   sw        $t9, 0x28($sp)
    /* 31FA8C 802DB93C 8609002C */  lh         $t1, 0x2C($s0)
  .L802DB940_31FA90:
    /* 31FA90 802DB940 24010001 */  addiu      $at, $zero, 0x1
  .L802DB944_31FA94:
    /* 31FA94 802DB944 15210028 */  bne        $t1, $at, .L802DB9E8_31FB38
    /* 31FA98 802DB948 3C078025 */   lui       $a3, %hi(D_8025668C)
    /* 31FA9C 802DB94C 920F001A */  lbu        $t7, 0x1A($s0)
    /* 31FAA0 802DB950 240E0006 */  addiu      $t6, $zero, 0x6
    /* 31FAA4 802DB954 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 31FAA8 802DB958 000FC880 */  sll        $t9, $t7, 2
    /* 31FAAC 802DB95C 032FC823 */  subu       $t9, $t9, $t7
    /* 31FAB0 802DB960 0019C880 */  sll        $t9, $t9, 2
    /* 31FAB4 802DB964 032FC821 */  addu       $t9, $t9, $t7
    /* 31FAB8 802DB968 0019C8C0 */  sll        $t9, $t9, 3
    /* 31FABC 802DB96C 00F93821 */  addu       $a3, $a3, $t9
    /* 31FAC0 802DB970 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 31FAC4 802DB974 86040000 */  lh         $a0, 0x0($s0)
    /* 31FAC8 802DB978 86050002 */  lh         $a1, 0x2($s0)
    /* 31FACC 802DB97C 86060004 */  lh         $a2, 0x4($s0)
    /* 31FAD0 802DB980 0C037C0E */  jal        func_800DF038_EDFE8
    /* 31FAD4 802DB984 AFA00014 */   sw        $zero, 0x14($sp)
    /* 31FAD8 802DB988 87A30092 */  lh         $v1, 0x92($sp)
    /* 31FADC 802DB98C 240100FF */  addiu      $at, $zero, 0xFF
    /* 31FAE0 802DB990 3C0F8005 */  lui        $t7, %hi(D_800481B2)
    /* 31FAE4 802DB994 10610014 */  beq        $v1, $at, .L802DB9E8_31FB38
    /* 31FAE8 802DB998 0003C080 */   sll       $t8, $v1, 2
    /* 31FAEC 802DB99C 0303C021 */  addu       $t8, $t8, $v1
    /* 31FAF0 802DB9A0 0018C100 */  sll        $t8, $t8, 4
    /* 31FAF4 802DB9A4 01F87821 */  addu       $t7, $t7, $t8
    /* 31FAF8 802DB9A8 91EF81B2 */  lbu        $t7, %lo(D_800481B2)($t7)
    /* 31FAFC 802DB9AC 2401001B */  addiu      $at, $zero, 0x1B
    /* 31FB00 802DB9B0 55E1000E */  bnel       $t7, $at, .L802DB9EC_31FB3C
    /* 31FB04 802DB9B4 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 31FB08 802DB9B8 0C000E38 */  jal        func_800038E0_44E0
    /* 31FB0C 802DB9BC 00000000 */   nop
    /* 31FB10 802DB9C0 93A400B3 */  lbu        $a0, 0xB3($sp)
    /* 31FB14 802DB9C4 04410004 */  bgez       $v0, .L802DB9D8_31FB28
    /* 31FB18 802DB9C8 30450003 */   andi      $a1, $v0, 0x3
    /* 31FB1C 802DB9CC 10A00002 */  beqz       $a1, .L802DB9D8_31FB28
    /* 31FB20 802DB9D0 00000000 */   nop
    /* 31FB24 802DB9D4 24A5FFFC */  addiu      $a1, $a1, -0x4
  .L802DB9D8_31FB28:
    /* 31FB28 802DB9D8 24A50014 */  addiu      $a1, $a1, 0x14
    /* 31FB2C 802DB9DC 30B900FF */  andi       $t9, $a1, 0xFF
    /* 31FB30 802DB9E0 0C01E5E9 */  jal        func_800797A4_88754
    /* 31FB34 802DB9E4 03202825 */   or        $a1, $t9, $zero
  .L802DB9E8_31FB38:
    /* 31FB38 802DB9E8 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DB9EC_31FB3C:
    /* 31FB3C 802DB9EC 8FB00040 */  lw         $s0, 0x40($sp)
    /* 31FB40 802DB9F0 27BD00B0 */  addiu      $sp, $sp, 0xB0
    /* 31FB44 802DB9F4 03E00008 */  jr         $ra
    /* 31FB48 802DB9F8 00000000 */   nop
endlabel func_802DB1D4_31F324
