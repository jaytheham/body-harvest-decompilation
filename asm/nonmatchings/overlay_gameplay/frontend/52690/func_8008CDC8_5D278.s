nonmatching func_8008CDC8_5D278, 0x384

glabel func_8008CDC8_5D278
    /* 5D278 8008CDC8 3C06800E */  lui        $a2, %hi(D_800DE118)
    /* 5D27C 8008CDCC 3C07800E */  lui        $a3, %hi(D_800DE128)
    /* 5D280 8008CDD0 24E7E128 */  addiu      $a3, $a3, %lo(D_800DE128)
    /* 5D284 8008CDD4 24C6E118 */  addiu      $a2, $a2, %lo(D_800DE118)
    /* 5D288 8008CDD8 C4C40000 */  lwc1       $f4, 0x0($a2)
    /* 5D28C 8008CDDC C4E60000 */  lwc1       $f6, 0x0($a3)
    /* 5D290 8008CDE0 3C058006 */  lui        $a1, %hi(D_8005BB34)
    /* 5D294 8008CDE4 24A5BB34 */  addiu      $a1, $a1, %lo(D_8005BB34)
    /* 5D298 8008CDE8 46062200 */  add.s      $f8, $f4, $f6
    /* 5D29C 8008CDEC 8CB80000 */  lw         $t8, 0x0($a1)
    /* 5D2A0 8008CDF0 3C08800E */  lui        $t0, %hi(D_800DE124)
    /* 5D2A4 8008CDF4 2508E124 */  addiu      $t0, $t0, %lo(D_800DE124)
    /* 5D2A8 8008CDF8 4600428D */  trunc.w.s  $f10, $f8
    /* 5D2AC 8008CDFC 3C09800E */  lui        $t1, %hi(D_800DE12C)
    /* 5D2B0 8008CE00 2529E12C */  addiu      $t1, $t1, %lo(D_800DE12C)
    /* 5D2B4 8008CE04 3C0A800E */  lui        $t2, %hi(D_800DE12D)
    /* 5D2B8 8008CE08 440F5000 */  mfc1       $t7, $f10
    /* 5D2BC 8008CE0C 254AE12D */  addiu      $t2, $t2, %lo(D_800DE12D)
    /* 5D2C0 8008CE10 3C0B800E */  lui        $t3, %hi(D_800DE12E)
    /* 5D2C4 8008CE14 A70F0000 */  sh         $t7, 0x0($t8)
    /* 5D2C8 8008CE18 C4D00004 */  lwc1       $f16, 0x4($a2)
    /* 5D2CC 8008CE1C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 5D2D0 8008CE20 256BE12E */  addiu      $t3, $t3, %lo(D_800DE12E)
    /* 5D2D4 8008CE24 4600848D */  trunc.w.s  $f18, $f16
    /* 5D2D8 8008CE28 3C0C8006 */  lui        $t4, %hi(D_8005BB2C)
    /* 5D2DC 8008CE2C 258CBB2C */  addiu      $t4, $t4, %lo(D_8005BB2C)
    /* 5D2E0 8008CE30 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 5D2E4 8008CE34 440D9000 */  mfc1       $t5, $f18
    /* 5D2E8 8008CE38 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 5D2EC 8008CE3C A5CD0002 */  sh         $t5, 0x2($t6)
    /* 5D2F0 8008CE40 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* 5D2F4 8008CE44 C4C40008 */  lwc1       $f4, 0x8($a2)
    /* 5D2F8 8008CE48 8CB90000 */  lw         $t9, 0x0($a1)
    /* 5D2FC 8008CE4C 46062200 */  add.s      $f8, $f4, $f6
    /* 5D300 8008CE50 4600428D */  trunc.w.s  $f10, $f8
    /* 5D304 8008CE54 44185000 */  mfc1       $t8, $f10
    /* 5D308 8008CE58 00000000 */  nop
    /* 5D30C 8008CE5C A7380004 */  sh         $t8, 0x4($t9)
    /* 5D310 8008CE60 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 5D314 8008CE64 A5A00006 */  sh         $zero, 0x6($t5)
    /* 5D318 8008CE68 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 5D31C 8008CE6C A5C00008 */  sh         $zero, 0x8($t6)
    /* 5D320 8008CE70 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 5D324 8008CE74 A5E0000A */  sh         $zero, 0xA($t7)
    /* 5D328 8008CE78 8D180000 */  lw         $t8, 0x0($t0)
    /* 5D32C 8008CE7C 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 5D330 8008CE80 93190000 */  lbu        $t9, 0x0($t8)
    /* 5D334 8008CE84 A1B9000C */  sb         $t9, 0xC($t5)
    /* 5D338 8008CE88 8D0E0000 */  lw         $t6, 0x0($t0)
    /* 5D33C 8008CE8C 8CB80000 */  lw         $t8, 0x0($a1)
    /* 5D340 8008CE90 91CF0001 */  lbu        $t7, 0x1($t6)
    /* 5D344 8008CE94 A30F000D */  sb         $t7, 0xD($t8)
    /* 5D348 8008CE98 8D190000 */  lw         $t9, 0x0($t0)
    /* 5D34C 8008CE9C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 5D350 8008CEA0 932D0002 */  lbu        $t5, 0x2($t9)
    /* 5D354 8008CEA4 A1CD000E */  sb         $t5, 0xE($t6)
    /* 5D358 8008CEA8 8CB80000 */  lw         $t8, 0x0($a1)
    /* 5D35C 8008CEAC 912F0000 */  lbu        $t7, 0x0($t1)
    /* 5D360 8008CEB0 A30F000F */  sb         $t7, 0xF($t8)
    /* 5D364 8008CEB4 C4F20000 */  lwc1       $f18, 0x0($a3)
    /* 5D368 8008CEB8 C4D00000 */  lwc1       $f16, 0x0($a2)
    /* 5D36C 8008CEBC 8CB90000 */  lw         $t9, 0x0($a1)
    /* 5D370 8008CEC0 46128101 */  sub.s      $f4, $f16, $f18
    /* 5D374 8008CEC4 272D0010 */  addiu      $t5, $t9, 0x10
    /* 5D378 8008CEC8 ACAD0000 */  sw         $t5, 0x0($a1)
    /* 5D37C 8008CECC 4600218D */  trunc.w.s  $f6, $f4
    /* 5D380 8008CED0 440F3000 */  mfc1       $t7, $f6
    /* 5D384 8008CED4 00000000 */  nop
    /* 5D388 8008CED8 A5AF0000 */  sh         $t7, 0x0($t5)
    /* 5D38C 8008CEDC C4C80004 */  lwc1       $f8, 0x4($a2)
    /* 5D390 8008CEE0 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 5D394 8008CEE4 4600428D */  trunc.w.s  $f10, $f8
    /* 5D398 8008CEE8 440D5000 */  mfc1       $t5, $f10
    /* 5D39C 8008CEEC 00000000 */  nop
    /* 5D3A0 8008CEF0 A5CD0002 */  sh         $t5, 0x2($t6)
    /* 5D3A4 8008CEF4 C4F20000 */  lwc1       $f18, 0x0($a3)
    /* 5D3A8 8008CEF8 C4D00008 */  lwc1       $f16, 0x8($a2)
    /* 5D3AC 8008CEFC 8CB90000 */  lw         $t9, 0x0($a1)
    /* 5D3B0 8008CF00 46128100 */  add.s      $f4, $f16, $f18
    /* 5D3B4 8008CF04 4600218D */  trunc.w.s  $f6, $f4
    /* 5D3B8 8008CF08 44183000 */  mfc1       $t8, $f6
    /* 5D3BC 8008CF0C 00000000 */  nop
    /* 5D3C0 8008CF10 A7380004 */  sh         $t8, 0x4($t9)
    /* 5D3C4 8008CF14 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 5D3C8 8008CF18 A5A00006 */  sh         $zero, 0x6($t5)
    /* 5D3CC 8008CF1C 914E0000 */  lbu        $t6, 0x0($t2)
    /* 5D3D0 8008CF20 8CB80000 */  lw         $t8, 0x0($a1)
    /* 5D3D4 8008CF24 000E7980 */  sll        $t7, $t6, 6
    /* 5D3D8 8008CF28 A70F0008 */  sh         $t7, 0x8($t8)
    /* 5D3DC 8008CF2C 8CB90000 */  lw         $t9, 0x0($a1)
    /* 5D3E0 8008CF30 A720000A */  sh         $zero, 0xA($t9)
    /* 5D3E4 8008CF34 8D0D0000 */  lw         $t5, 0x0($t0)
    /* 5D3E8 8008CF38 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 5D3EC 8008CF3C 91AE0000 */  lbu        $t6, 0x0($t5)
    /* 5D3F0 8008CF40 A1EE000C */  sb         $t6, 0xC($t7)
    /* 5D3F4 8008CF44 8D180000 */  lw         $t8, 0x0($t0)
    /* 5D3F8 8008CF48 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 5D3FC 8008CF4C 93190001 */  lbu        $t9, 0x1($t8)
    /* 5D400 8008CF50 A1B9000D */  sb         $t9, 0xD($t5)
    /* 5D404 8008CF54 8D0E0000 */  lw         $t6, 0x0($t0)
    /* 5D408 8008CF58 8CB80000 */  lw         $t8, 0x0($a1)
    /* 5D40C 8008CF5C 91CF0002 */  lbu        $t7, 0x2($t6)
    /* 5D410 8008CF60 A30F000E */  sb         $t7, 0xE($t8)
    /* 5D414 8008CF64 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 5D418 8008CF68 91390000 */  lbu        $t9, 0x0($t1)
    /* 5D41C 8008CF6C A1B9000F */  sb         $t9, 0xF($t5)
    /* 5D420 8008CF70 C4EA0000 */  lwc1       $f10, 0x0($a3)
    /* 5D424 8008CF74 C4C80000 */  lwc1       $f8, 0x0($a2)
    /* 5D428 8008CF78 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 5D42C 8008CF7C 460A4401 */  sub.s      $f16, $f8, $f10
    /* 5D430 8008CF80 25CF0010 */  addiu      $t7, $t6, 0x10
    /* 5D434 8008CF84 ACAF0000 */  sw         $t7, 0x0($a1)
    /* 5D438 8008CF88 4600848D */  trunc.w.s  $f18, $f16
    /* 5D43C 8008CF8C 44199000 */  mfc1       $t9, $f18
    /* 5D440 8008CF90 00000000 */  nop
    /* 5D444 8008CF94 A5F90000 */  sh         $t9, 0x0($t7)
    /* 5D448 8008CF98 C4C40004 */  lwc1       $f4, 0x4($a2)
    /* 5D44C 8008CF9C 8CB80000 */  lw         $t8, 0x0($a1)
    /* 5D450 8008CFA0 4600218D */  trunc.w.s  $f6, $f4
    /* 5D454 8008CFA4 440F3000 */  mfc1       $t7, $f6
    /* 5D458 8008CFA8 00000000 */  nop
    /* 5D45C 8008CFAC A70F0002 */  sh         $t7, 0x2($t8)
    /* 5D460 8008CFB0 C4EA0000 */  lwc1       $f10, 0x0($a3)
    /* 5D464 8008CFB4 C4C80008 */  lwc1       $f8, 0x8($a2)
    /* 5D468 8008CFB8 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 5D46C 8008CFBC 460A4401 */  sub.s      $f16, $f8, $f10
    /* 5D470 8008CFC0 4600848D */  trunc.w.s  $f18, $f16
    /* 5D474 8008CFC4 440D9000 */  mfc1       $t5, $f18
    /* 5D478 8008CFC8 00000000 */  nop
    /* 5D47C 8008CFCC A5CD0004 */  sh         $t5, 0x4($t6)
    /* 5D480 8008CFD0 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 5D484 8008CFD4 A5E00006 */  sh         $zero, 0x6($t7)
    /* 5D488 8008CFD8 91580000 */  lbu        $t8, 0x0($t2)
    /* 5D48C 8008CFDC 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 5D490 8008CFE0 0018C980 */  sll        $t9, $t8, 6
    /* 5D494 8008CFE4 A5B90008 */  sh         $t9, 0x8($t5)
    /* 5D498 8008CFE8 916E0000 */  lbu        $t6, 0x0($t3)
    /* 5D49C 8008CFEC 8CB80000 */  lw         $t8, 0x0($a1)
    /* 5D4A0 8008CFF0 000E7980 */  sll        $t7, $t6, 6
    /* 5D4A4 8008CFF4 A70F000A */  sh         $t7, 0xA($t8)
    /* 5D4A8 8008CFF8 8D190000 */  lw         $t9, 0x0($t0)
    /* 5D4AC 8008CFFC 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 5D4B0 8008D000 932D0000 */  lbu        $t5, 0x0($t9)
    /* 5D4B4 8008D004 A1CD000C */  sb         $t5, 0xC($t6)
    /* 5D4B8 8008D008 8D0F0000 */  lw         $t7, 0x0($t0)
    /* 5D4BC 8008D00C 8CB90000 */  lw         $t9, 0x0($a1)
    /* 5D4C0 8008D010 91F80001 */  lbu        $t8, 0x1($t7)
    /* 5D4C4 8008D014 A338000D */  sb         $t8, 0xD($t9)
    /* 5D4C8 8008D018 8D0D0000 */  lw         $t5, 0x0($t0)
    /* 5D4CC 8008D01C 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 5D4D0 8008D020 91AE0002 */  lbu        $t6, 0x2($t5)
    /* 5D4D4 8008D024 A1EE000E */  sb         $t6, 0xE($t7)
    /* 5D4D8 8008D028 8CB90000 */  lw         $t9, 0x0($a1)
    /* 5D4DC 8008D02C 91380000 */  lbu        $t8, 0x0($t1)
    /* 5D4E0 8008D030 A338000F */  sb         $t8, 0xF($t9)
    /* 5D4E4 8008D034 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* 5D4E8 8008D038 C4C40000 */  lwc1       $f4, 0x0($a2)
    /* 5D4EC 8008D03C 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 5D4F0 8008D040 46062200 */  add.s      $f8, $f4, $f6
    /* 5D4F4 8008D044 25AE0010 */  addiu      $t6, $t5, 0x10
    /* 5D4F8 8008D048 ACAE0000 */  sw         $t6, 0x0($a1)
    /* 5D4FC 8008D04C 4600428D */  trunc.w.s  $f10, $f8
    /* 5D500 8008D050 44185000 */  mfc1       $t8, $f10
    /* 5D504 8008D054 00000000 */  nop
    /* 5D508 8008D058 A5D80000 */  sh         $t8, 0x0($t6)
    /* 5D50C 8008D05C C4D00004 */  lwc1       $f16, 0x4($a2)
    /* 5D510 8008D060 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 5D514 8008D064 4600848D */  trunc.w.s  $f18, $f16
    /* 5D518 8008D068 440E9000 */  mfc1       $t6, $f18
    /* 5D51C 8008D06C 00000000 */  nop
    /* 5D520 8008D070 A5EE0002 */  sh         $t6, 0x2($t7)
    /* 5D524 8008D074 C4E60000 */  lwc1       $f6, 0x0($a3)
    /* 5D528 8008D078 C4C40008 */  lwc1       $f4, 0x8($a2)
    /* 5D52C 8008D07C 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 5D530 8008D080 46062201 */  sub.s      $f8, $f4, $f6
    /* 5D534 8008D084 4600428D */  trunc.w.s  $f10, $f8
    /* 5D538 8008D088 44195000 */  mfc1       $t9, $f10
    /* 5D53C 8008D08C 00000000 */  nop
    /* 5D540 8008D090 A5B90004 */  sh         $t9, 0x4($t5)
    /* 5D544 8008D094 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 5D548 8008D098 A5C00006 */  sh         $zero, 0x6($t6)
    /* 5D54C 8008D09C 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 5D550 8008D0A0 A5E00008 */  sh         $zero, 0x8($t7)
    /* 5D554 8008D0A4 91780000 */  lbu        $t8, 0x0($t3)
    /* 5D558 8008D0A8 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 5D55C 8008D0AC 0018C980 */  sll        $t9, $t8, 6
    /* 5D560 8008D0B0 A5B9000A */  sh         $t9, 0xA($t5)
    /* 5D564 8008D0B4 8D0E0000 */  lw         $t6, 0x0($t0)
    /* 5D568 8008D0B8 8CB80000 */  lw         $t8, 0x0($a1)
    /* 5D56C 8008D0BC 91CF0000 */  lbu        $t7, 0x0($t6)
    /* 5D570 8008D0C0 A30F000C */  sb         $t7, 0xC($t8)
    /* 5D574 8008D0C4 8D190000 */  lw         $t9, 0x0($t0)
    /* 5D578 8008D0C8 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 5D57C 8008D0CC 932D0001 */  lbu        $t5, 0x1($t9)
    /* 5D580 8008D0D0 A1CD000D */  sb         $t5, 0xD($t6)
    /* 5D584 8008D0D4 8D0F0000 */  lw         $t7, 0x0($t0)
    /* 5D588 8008D0D8 8CB90000 */  lw         $t9, 0x0($a1)
    /* 5D58C 8008D0DC 91F80002 */  lbu        $t8, 0x2($t7)
    /* 5D590 8008D0E0 A338000E */  sb         $t8, 0xE($t9)
    /* 5D594 8008D0E4 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 5D598 8008D0E8 912D0000 */  lbu        $t5, 0x0($t1)
    /* 5D59C 8008D0EC A1CD000F */  sb         $t5, 0xF($t6)
    /* 5D5A0 8008D0F0 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 5D5A4 8008D0F4 8D830000 */  lw         $v1, 0x0($t4)
    /* 5D5A8 8008D0F8 3C0D0400 */  lui        $t5, (0x400103F >> 16)
    /* 5D5AC 8008D0FC 25F80010 */  addiu      $t8, $t7, 0x10
    /* 5D5B0 8008D100 24790008 */  addiu      $t9, $v1, 0x8
    /* 5D5B4 8008D104 ACB80000 */  sw         $t8, 0x0($a1)
    /* 5D5B8 8008D108 AD990000 */  sw         $t9, 0x0($t4)
    /* 5D5BC 8008D10C 35AD103F */  ori        $t5, $t5, (0x400103F & 0xFFFF)
    /* 5D5C0 8008D110 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 5D5C4 8008D114 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 5D5C8 8008D118 3C0DB100 */  lui        $t5, (0xB1000206 >> 16)
    /* 5D5CC 8008D11C 35AD0206 */  ori        $t5, $t5, (0xB1000206 & 0xFFFF)
    /* 5D5D0 8008D120 25CFFFC0 */  addiu      $t7, $t6, -0x40
    /* 5D5D4 8008D124 01E1C024 */  and        $t8, $t7, $at
    /* 5D5D8 8008D128 AC780004 */  sw         $t8, 0x4($v1)
    /* 5D5DC 8008D12C 8D830000 */  lw         $v1, 0x0($t4)
    /* 5D5E0 8008D130 3C0E0006 */  lui        $t6, (0x60204 >> 16)
    /* 5D5E4 8008D134 35CE0204 */  ori        $t6, $t6, (0x60204 & 0xFFFF)
    /* 5D5E8 8008D138 24790008 */  addiu      $t9, $v1, 0x8
    /* 5D5EC 8008D13C AD990000 */  sw         $t9, 0x0($t4)
    /* 5D5F0 8008D140 AC6E0004 */  sw         $t6, 0x4($v1)
    /* 5D5F4 8008D144 03E00008 */  jr         $ra
    /* 5D5F8 8008D148 AC6D0000 */   sw        $t5, 0x0($v1)
endlabel func_8008CDC8_5D278
