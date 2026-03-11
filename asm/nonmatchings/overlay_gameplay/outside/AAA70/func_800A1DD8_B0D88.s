nonmatching func_800A1DD8_B0D88, 0x488

glabel func_800A1DD8_B0D88
    /* B0D88 800A1DD8 3C0D8015 */  lui        $t5, %hi(D_8014F618)
    /* B0D8C 800A1DDC 25ADF618 */  addiu      $t5, $t5, %lo(D_8014F618)
    /* B0D90 800A1DE0 95AF0060 */  lhu        $t7, 0x60($t5)
    /* B0D94 800A1DE4 27BDFFF0 */  addiu      $sp, $sp, -0x10
    /* B0D98 800A1DE8 AFA40010 */  sw         $a0, 0x10($sp)
    /* B0D9C 800A1DEC 448F2000 */  mtc1       $t7, $f4
    /* B0DA0 800A1DF0 308E00FF */  andi       $t6, $a0, 0xFF
    /* B0DA4 800A1DF4 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* B0DA8 800A1DF8 3C058015 */  lui        $a1, %hi(D_80153AB8)
    /* B0DAC 800A1DFC 24A53AB8 */  addiu      $a1, $a1, %lo(D_80153AB8)
    /* B0DB0 800A1E00 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* B0DB4 800A1E04 01C02025 */  or         $a0, $t6, $zero
    /* B0DB8 800A1E08 05E10006 */  bgez       $t7, .L800A1E24_B0DD4
    /* B0DBC 800A1E0C 468021A1 */   cvt.d.w   $f6, $f4
    /* B0DC0 800A1E10 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
    /* B0DC4 800A1E14 44814800 */  mtc1       $at, $f9
    /* B0DC8 800A1E18 44804000 */  mtc1       $zero, $f8
    /* B0DCC 800A1E1C 00000000 */  nop
    /* B0DD0 800A1E20 46283180 */  add.d      $f6, $f6, $f8
  .L800A1E24_B0DD4:
    /* B0DD4 800A1E24 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
    /* B0DD8 800A1E28 44815800 */  mtc1       $at, $f11
    /* B0DDC 800A1E2C 44805000 */  mtc1       $zero, $f10
    /* B0DE0 800A1E30 C4A80000 */  lwc1       $f8, 0x0($a1)
    /* B0DE4 800A1E34 8C620000 */  lw         $v0, 0x0($v1)
    /* B0DE8 800A1E38 462A3102 */  mul.d      $f4, $f6, $f10
    /* B0DEC 800A1E3C C4A60004 */  lwc1       $f6, 0x4($a1)
    /* B0DF0 800A1E40 C4AA0008 */  lwc1       $f10, 0x8($a1)
    /* B0DF4 800A1E44 24580008 */  addiu      $t8, $v0, 0x8
    /* B0DF8 800A1E48 AC780000 */  sw         $t8, 0x0($v1)
    /* B0DFC 800A1E4C 3C19FD90 */  lui        $t9, (0xFD900000 >> 16)
    /* B0E00 800A1E50 01A47021 */  addu       $t6, $t5, $a0
    /* B0E04 800A1E54 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* B0E08 800A1E58 46202020 */  cvt.s.d    $f0, $f4
    /* B0E0C 800A1E5C C4A4000C */  lwc1       $f4, 0xC($a1)
    /* B0E10 800A1E60 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* B0E14 800A1E64 3C088006 */  lui        $t0, %hi(D_8005BB34)
    /* B0E18 800A1E68 46080082 */  mul.s      $f2, $f0, $f8
    /* B0E1C 800A1E6C C4A80010 */  lwc1       $f8, 0x10($a1)
    /* B0E20 800A1E70 2508BB34 */  addiu      $t0, $t0, %lo(D_8005BB34)
    /* B0E24 800A1E74 46060302 */  mul.s      $f12, $f0, $f6
    /* B0E28 800A1E78 C4A60014 */  lwc1       $f6, 0x14($a1)
    /* B0E2C 800A1E7C 24090400 */  addiu      $t1, $zero, 0x400
    /* B0E30 800A1E80 460A0382 */  mul.s      $f14, $f0, $f10
    /* B0E34 800A1E84 00000000 */  nop
    /* B0E38 800A1E88 46040402 */  mul.s      $f16, $f0, $f4
    /* B0E3C 800A1E8C 00000000 */  nop
    /* B0E40 800A1E90 46080482 */  mul.s      $f18, $f0, $f8
    /* B0E44 800A1E94 00000000 */  nop
    /* B0E48 800A1E98 46060282 */  mul.s      $f10, $f0, $f6
    /* B0E4C 800A1E9C E7AA0000 */  swc1       $f10, 0x0($sp)
    /* B0E50 800A1EA0 AC590000 */  sw         $t9, 0x0($v0)
    /* B0E54 800A1EA4 91CF0062 */  lbu        $t7, 0x62($t6)
    /* B0E58 800A1EA8 3C190101 */  lui        $t9, %hi(D_1009C70)
    /* B0E5C 800A1EAC 27399C70 */  addiu      $t9, $t9, %lo(D_1009C70)
    /* B0E60 800A1EB0 000FC1C0 */  sll        $t8, $t7, 7
    /* B0E64 800A1EB4 03197021 */  addu       $t6, $t8, $t9
    /* B0E68 800A1EB8 01C17824 */  and        $t7, $t6, $at
    /* B0E6C 800A1EBC AC4F0004 */  sw         $t7, 0x4($v0)
    /* B0E70 800A1EC0 8C620000 */  lw         $v0, 0x0($v1)
    /* B0E74 800A1EC4 3C0E0708 */  lui        $t6, (0x7080200 >> 16)
    /* B0E78 800A1EC8 35CE0200 */  ori        $t6, $t6, (0x7080200 & 0xFFFF)
    /* B0E7C 800A1ECC 24580008 */  addiu      $t8, $v0, 0x8
    /* B0E80 800A1ED0 AC780000 */  sw         $t8, 0x0($v1)
    /* B0E84 800A1ED4 3C19F590 */  lui        $t9, (0xF5900000 >> 16)
    /* B0E88 800A1ED8 AC590000 */  sw         $t9, 0x0($v0)
    /* B0E8C 800A1EDC AC4E0004 */  sw         $t6, 0x4($v0)
    /* B0E90 800A1EE0 8C620000 */  lw         $v0, 0x0($v1)
    /* B0E94 800A1EE4 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
    /* B0E98 800A1EE8 3C0EF300 */  lui        $t6, (0xF3000000 >> 16)
    /* B0E9C 800A1EEC 244F0008 */  addiu      $t7, $v0, 0x8
    /* B0EA0 800A1EF0 AC6F0000 */  sw         $t7, 0x0($v1)
    /* B0EA4 800A1EF4 AC400004 */  sw         $zero, 0x4($v0)
    /* B0EA8 800A1EF8 AC580000 */  sw         $t8, 0x0($v0)
    /* B0EAC 800A1EFC 8C620000 */  lw         $v0, 0x0($v1)
    /* B0EB0 800A1F00 3C0F0703 */  lui        $t7, (0x703F800 >> 16)
    /* B0EB4 800A1F04 35EFF800 */  ori        $t7, $t7, (0x703F800 & 0xFFFF)
    /* B0EB8 800A1F08 24590008 */  addiu      $t9, $v0, 0x8
    /* B0EBC 800A1F0C AC790000 */  sw         $t9, 0x0($v1)
    /* B0EC0 800A1F10 AC4F0004 */  sw         $t7, 0x4($v0)
    /* B0EC4 800A1F14 AC4E0000 */  sw         $t6, 0x0($v0)
    /* B0EC8 800A1F18 8C620000 */  lw         $v0, 0x0($v1)
    /* B0ECC 800A1F1C 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* B0ED0 800A1F20 3C0FF580 */  lui        $t7, (0xF5800200 >> 16)
    /* B0ED4 800A1F24 24580008 */  addiu      $t8, $v0, 0x8
    /* B0ED8 800A1F28 AC780000 */  sw         $t8, 0x0($v1)
    /* B0EDC 800A1F2C AC400004 */  sw         $zero, 0x4($v0)
    /* B0EE0 800A1F30 AC590000 */  sw         $t9, 0x0($v0)
    /* B0EE4 800A1F34 8C620000 */  lw         $v0, 0x0($v1)
    /* B0EE8 800A1F38 3C180008 */  lui        $t8, (0x80200 >> 16)
    /* B0EEC 800A1F3C 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
    /* B0EF0 800A1F40 244E0008 */  addiu      $t6, $v0, 0x8
    /* B0EF4 800A1F44 AC6E0000 */  sw         $t6, 0x0($v1)
    /* B0EF8 800A1F48 35EF0200 */  ori        $t7, $t7, (0xF5800200 & 0xFFFF)
    /* B0EFC 800A1F4C AC4F0000 */  sw         $t7, 0x0($v0)
    /* B0F00 800A1F50 AC580004 */  sw         $t8, 0x4($v0)
    /* B0F04 800A1F54 8C620000 */  lw         $v0, 0x0($v1)
    /* B0F08 800A1F58 3C0F0003 */  lui        $t7, (0x3C03C >> 16)
    /* B0F0C 800A1F5C 35EFC03C */  ori        $t7, $t7, (0x3C03C & 0xFFFF)
    /* B0F10 800A1F60 24590008 */  addiu      $t9, $v0, 0x8
    /* B0F14 800A1F64 AC790000 */  sw         $t9, 0x0($v1)
    /* B0F18 800A1F68 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
    /* B0F1C 800A1F6C AC4E0000 */  sw         $t6, 0x0($v0)
    /* B0F20 800A1F70 AC4F0004 */  sw         $t7, 0x4($v0)
    /* B0F24 800A1F74 8C620000 */  lw         $v0, 0x0($v1)
    /* B0F28 800A1F78 00047080 */  sll        $t6, $a0, 2
    /* B0F2C 800A1F7C 01C47023 */  subu       $t6, $t6, $a0
    /* B0F30 800A1F80 24580008 */  addiu      $t8, $v0, 0x8
    /* B0F34 800A1F84 AC780000 */  sw         $t8, 0x0($v1)
    /* B0F38 800A1F88 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* B0F3C 800A1F8C 000E7080 */  sll        $t6, $t6, 2
    /* B0F40 800A1F90 01AE3021 */  addu       $a2, $t5, $t6
    /* B0F44 800A1F94 AC590000 */  sw         $t9, 0x0($v0)
    /* B0F48 800A1F98 AC400004 */  sw         $zero, 0x4($v0)
    /* B0F4C 800A1F9C C4C40030 */  lwc1       $f4, 0x30($a2)
    /* B0F50 800A1FA0 8D190000 */  lw         $t9, 0x0($t0)
    /* B0F54 800A1FA4 46022200 */  add.s      $f8, $f4, $f2
    /* B0F58 800A1FA8 4600418D */  trunc.w.s  $f6, $f8
    /* B0F5C 800A1FAC 44183000 */  mfc1       $t8, $f6
    /* B0F60 800A1FB0 00000000 */  nop
    /* B0F64 800A1FB4 A7380000 */  sh         $t8, 0x0($t9)
    /* B0F68 800A1FB8 C4CA0034 */  lwc1       $f10, 0x34($a2)
    /* B0F6C 800A1FBC 8D180000 */  lw         $t8, 0x0($t0)
    /* B0F70 800A1FC0 460C5100 */  add.s      $f4, $f10, $f12
    /* B0F74 800A1FC4 4600220D */  trunc.w.s  $f8, $f4
    /* B0F78 800A1FC8 440F4000 */  mfc1       $t7, $f8
    /* B0F7C 800A1FCC 00000000 */  nop
    /* B0F80 800A1FD0 A70F0002 */  sh         $t7, 0x2($t8)
    /* B0F84 800A1FD4 C4C60038 */  lwc1       $f6, 0x38($a2)
    /* B0F88 800A1FD8 8D0F0000 */  lw         $t7, 0x0($t0)
    /* B0F8C 800A1FDC 460E3280 */  add.s      $f10, $f6, $f14
    /* B0F90 800A1FE0 4600510D */  trunc.w.s  $f4, $f10
    /* B0F94 800A1FE4 440E2000 */  mfc1       $t6, $f4
    /* B0F98 800A1FE8 00000000 */  nop
    /* B0F9C 800A1FEC A5EE0004 */  sh         $t6, 0x4($t7)
    /* B0FA0 800A1FF0 8D180000 */  lw         $t8, 0x0($t0)
    /* B0FA4 800A1FF4 A7000006 */  sh         $zero, 0x6($t8)
    /* B0FA8 800A1FF8 8D190000 */  lw         $t9, 0x0($t0)
    /* B0FAC 800A1FFC A7200008 */  sh         $zero, 0x8($t9)
    /* B0FB0 800A2000 8D0E0000 */  lw         $t6, 0x0($t0)
    /* B0FB4 800A2004 A5C0000A */  sh         $zero, 0xA($t6)
    /* B0FB8 800A2008 8D0F0000 */  lw         $t7, 0x0($t0)
    /* B0FBC 800A200C A1E0000C */  sb         $zero, 0xC($t7)
    /* B0FC0 800A2010 8D180000 */  lw         $t8, 0x0($t0)
    /* B0FC4 800A2014 A300000D */  sb         $zero, 0xD($t8)
    /* B0FC8 800A2018 8D190000 */  lw         $t9, 0x0($t0)
    /* B0FCC 800A201C A320000E */  sb         $zero, 0xE($t9)
    /* B0FD0 800A2020 8D0E0000 */  lw         $t6, 0x0($t0)
    /* B0FD4 800A2024 A1C0000F */  sb         $zero, 0xF($t6)
    /* B0FD8 800A2028 C4C80030 */  lwc1       $f8, 0x30($a2)
    /* B0FDC 800A202C 8D0F0000 */  lw         $t7, 0x0($t0)
    /* B0FE0 800A2030 46104180 */  add.s      $f6, $f8, $f16
    /* B0FE4 800A2034 25F80010 */  addiu      $t8, $t7, 0x10
    /* B0FE8 800A2038 AD180000 */  sw         $t8, 0x0($t0)
    /* B0FEC 800A203C 4600328D */  trunc.w.s  $f10, $f6
    /* B0FF0 800A2040 440E5000 */  mfc1       $t6, $f10
    /* B0FF4 800A2044 00000000 */  nop
    /* B0FF8 800A2048 A70E0000 */  sh         $t6, 0x0($t8)
    /* B0FFC 800A204C C4C40034 */  lwc1       $f4, 0x34($a2)
    /* B1000 800A2050 8D0E0000 */  lw         $t6, 0x0($t0)
    /* B1004 800A2054 46122200 */  add.s      $f8, $f4, $f18
    /* B1008 800A2058 4600418D */  trunc.w.s  $f6, $f8
    /* B100C 800A205C 44193000 */  mfc1       $t9, $f6
    /* B1010 800A2060 00000000 */  nop
    /* B1014 800A2064 A5D90002 */  sh         $t9, 0x2($t6)
    /* B1018 800A2068 C7A40000 */  lwc1       $f4, 0x0($sp)
    /* B101C 800A206C C4CA0038 */  lwc1       $f10, 0x38($a2)
    /* B1020 800A2070 8D190000 */  lw         $t9, 0x0($t0)
    /* B1024 800A2074 46045200 */  add.s      $f8, $f10, $f4
    /* B1028 800A2078 4600418D */  trunc.w.s  $f6, $f8
    /* B102C 800A207C 44183000 */  mfc1       $t8, $f6
    /* B1030 800A2080 00000000 */  nop
    /* B1034 800A2084 A7380004 */  sh         $t8, 0x4($t9)
    /* B1038 800A2088 8D0E0000 */  lw         $t6, 0x0($t0)
    /* B103C 800A208C A5C00006 */  sh         $zero, 0x6($t6)
    /* B1040 800A2090 8D0F0000 */  lw         $t7, 0x0($t0)
    /* B1044 800A2094 A5E90008 */  sh         $t1, 0x8($t7)
    /* B1048 800A2098 8D180000 */  lw         $t8, 0x0($t0)
    /* B104C 800A209C A700000A */  sh         $zero, 0xA($t8)
    /* B1050 800A20A0 8D190000 */  lw         $t9, 0x0($t0)
    /* B1054 800A20A4 A320000C */  sb         $zero, 0xC($t9)
    /* B1058 800A20A8 8D0E0000 */  lw         $t6, 0x0($t0)
    /* B105C 800A20AC A1C0000D */  sb         $zero, 0xD($t6)
    /* B1060 800A20B0 8D0F0000 */  lw         $t7, 0x0($t0)
    /* B1064 800A20B4 A1E0000E */  sb         $zero, 0xE($t7)
    /* B1068 800A20B8 8D180000 */  lw         $t8, 0x0($t0)
    /* B106C 800A20BC A300000F */  sb         $zero, 0xF($t8)
    /* B1070 800A20C0 C4CA0030 */  lwc1       $f10, 0x30($a2)
    /* B1074 800A20C4 8D190000 */  lw         $t9, 0x0($t0)
    /* B1078 800A20C8 46025101 */  sub.s      $f4, $f10, $f2
    /* B107C 800A20CC 272E0010 */  addiu      $t6, $t9, 0x10
    /* B1080 800A20D0 AD0E0000 */  sw         $t6, 0x0($t0)
    /* B1084 800A20D4 4600220D */  trunc.w.s  $f8, $f4
    /* B1088 800A20D8 44184000 */  mfc1       $t8, $f8
    /* B108C 800A20DC 00000000 */  nop
    /* B1090 800A20E0 A5D80000 */  sh         $t8, 0x0($t6)
    /* B1094 800A20E4 C4C60034 */  lwc1       $f6, 0x34($a2)
    /* B1098 800A20E8 8D180000 */  lw         $t8, 0x0($t0)
    /* B109C 800A20EC 460C3281 */  sub.s      $f10, $f6, $f12
    /* B10A0 800A20F0 4600510D */  trunc.w.s  $f4, $f10
    /* B10A4 800A20F4 440F2000 */  mfc1       $t7, $f4
    /* B10A8 800A20F8 00000000 */  nop
    /* B10AC 800A20FC A70F0002 */  sh         $t7, 0x2($t8)
    /* B10B0 800A2100 C4C80038 */  lwc1       $f8, 0x38($a2)
    /* B10B4 800A2104 8D0F0000 */  lw         $t7, 0x0($t0)
    /* B10B8 800A2108 460E4181 */  sub.s      $f6, $f8, $f14
    /* B10BC 800A210C 4600328D */  trunc.w.s  $f10, $f6
    /* B10C0 800A2110 440E5000 */  mfc1       $t6, $f10
    /* B10C4 800A2114 00000000 */  nop
    /* B10C8 800A2118 A5EE0004 */  sh         $t6, 0x4($t7)
    /* B10CC 800A211C 8D180000 */  lw         $t8, 0x0($t0)
    /* B10D0 800A2120 A7000006 */  sh         $zero, 0x6($t8)
    /* B10D4 800A2124 8D190000 */  lw         $t9, 0x0($t0)
    /* B10D8 800A2128 A7290008 */  sh         $t1, 0x8($t9)
    /* B10DC 800A212C 8D0E0000 */  lw         $t6, 0x0($t0)
    /* B10E0 800A2130 A5C9000A */  sh         $t1, 0xA($t6)
    /* B10E4 800A2134 8D0F0000 */  lw         $t7, 0x0($t0)
    /* B10E8 800A2138 A1E0000C */  sb         $zero, 0xC($t7)
    /* B10EC 800A213C 8D180000 */  lw         $t8, 0x0($t0)
    /* B10F0 800A2140 A300000D */  sb         $zero, 0xD($t8)
    /* B10F4 800A2144 8D190000 */  lw         $t9, 0x0($t0)
    /* B10F8 800A2148 A320000E */  sb         $zero, 0xE($t9)
    /* B10FC 800A214C 8D0E0000 */  lw         $t6, 0x0($t0)
    /* B1100 800A2150 A1C0000F */  sb         $zero, 0xF($t6)
    /* B1104 800A2154 C4C40030 */  lwc1       $f4, 0x30($a2)
    /* B1108 800A2158 8D0F0000 */  lw         $t7, 0x0($t0)
    /* B110C 800A215C 46102201 */  sub.s      $f8, $f4, $f16
    /* B1110 800A2160 25F80010 */  addiu      $t8, $t7, 0x10
    /* B1114 800A2164 AD180000 */  sw         $t8, 0x0($t0)
    /* B1118 800A2168 4600418D */  trunc.w.s  $f6, $f8
    /* B111C 800A216C 440E3000 */  mfc1       $t6, $f6
    /* B1120 800A2170 00000000 */  nop
    /* B1124 800A2174 A70E0000 */  sh         $t6, 0x0($t8)
    /* B1128 800A2178 C4CA0034 */  lwc1       $f10, 0x34($a2)
    /* B112C 800A217C 8D0E0000 */  lw         $t6, 0x0($t0)
    /* B1130 800A2180 46125101 */  sub.s      $f4, $f10, $f18
    /* B1134 800A2184 4600220D */  trunc.w.s  $f8, $f4
    /* B1138 800A2188 44194000 */  mfc1       $t9, $f8
    /* B113C 800A218C 00000000 */  nop
    /* B1140 800A2190 A5D90002 */  sh         $t9, 0x2($t6)
    /* B1144 800A2194 C7AA0000 */  lwc1       $f10, 0x0($sp)
    /* B1148 800A2198 C4C60038 */  lwc1       $f6, 0x38($a2)
    /* B114C 800A219C 8D190000 */  lw         $t9, 0x0($t0)
    /* B1150 800A21A0 460A3101 */  sub.s      $f4, $f6, $f10
    /* B1154 800A21A4 4600220D */  trunc.w.s  $f8, $f4
    /* B1158 800A21A8 44184000 */  mfc1       $t8, $f8
    /* B115C 800A21AC 00000000 */  nop
    /* B1160 800A21B0 A7380004 */  sh         $t8, 0x4($t9)
    /* B1164 800A21B4 8D0E0000 */  lw         $t6, 0x0($t0)
    /* B1168 800A21B8 A5C00006 */  sh         $zero, 0x6($t6)
    /* B116C 800A21BC 8D0F0000 */  lw         $t7, 0x0($t0)
    /* B1170 800A21C0 A5E00008 */  sh         $zero, 0x8($t7)
    /* B1174 800A21C4 8D180000 */  lw         $t8, 0x0($t0)
    /* B1178 800A21C8 A709000A */  sh         $t1, 0xA($t8)
    /* B117C 800A21CC 8D190000 */  lw         $t9, 0x0($t0)
    /* B1180 800A21D0 A320000C */  sb         $zero, 0xC($t9)
    /* B1184 800A21D4 8D0E0000 */  lw         $t6, 0x0($t0)
    /* B1188 800A21D8 A1C0000D */  sb         $zero, 0xD($t6)
    /* B118C 800A21DC 8D0F0000 */  lw         $t7, 0x0($t0)
    /* B1190 800A21E0 A1E0000E */  sb         $zero, 0xE($t7)
    /* B1194 800A21E4 8D180000 */  lw         $t8, 0x0($t0)
    /* B1198 800A21E8 A300000F */  sb         $zero, 0xF($t8)
    /* B119C 800A21EC 8D190000 */  lw         $t9, 0x0($t0)
    /* B11A0 800A21F0 8C620000 */  lw         $v0, 0x0($v1)
    /* B11A4 800A21F4 3C180400 */  lui        $t8, (0x400103F >> 16)
    /* B11A8 800A21F8 272E0010 */  addiu      $t6, $t9, 0x10
    /* B11AC 800A21FC 244F0008 */  addiu      $t7, $v0, 0x8
    /* B11B0 800A2200 AD0E0000 */  sw         $t6, 0x0($t0)
    /* B11B4 800A2204 AC6F0000 */  sw         $t7, 0x0($v1)
    /* B11B8 800A2208 3718103F */  ori        $t8, $t8, (0x400103F & 0xFFFF)
    /* B11BC 800A220C AC580000 */  sw         $t8, 0x0($v0)
    /* B11C0 800A2210 8D190000 */  lw         $t9, 0x0($t0)
    /* B11C4 800A2214 272EFFC0 */  addiu      $t6, $t9, -0x40
    /* B11C8 800A2218 01C17824 */  and        $t7, $t6, $at
    /* B11CC 800A221C AC4F0004 */  sw         $t7, 0x4($v0)
    /* B11D0 800A2220 8C620000 */  lw         $v0, 0x0($v1)
    /* B11D4 800A2224 3C19B100 */  lui        $t9, (0xB1000204 >> 16)
    /* B11D8 800A2228 37390204 */  ori        $t9, $t9, (0xB1000204 & 0xFFFF)
    /* B11DC 800A222C 24580008 */  addiu      $t8, $v0, 0x8
    /* B11E0 800A2230 AC780000 */  sw         $t8, 0x0($v1)
    /* B11E4 800A2234 240E0406 */  addiu      $t6, $zero, 0x406
    /* B11E8 800A2238 AC4E0004 */  sw         $t6, 0x4($v0)
    /* B11EC 800A223C AC590000 */  sw         $t9, 0x0($v0)
    /* B11F0 800A2240 8C620000 */  lw         $v0, 0x0($v1)
    /* B11F4 800A2244 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* B11F8 800A2248 27BD0010 */  addiu      $sp, $sp, 0x10
    /* B11FC 800A224C 244F0008 */  addiu      $t7, $v0, 0x8
    /* B1200 800A2250 AC6F0000 */  sw         $t7, 0x0($v1)
    /* B1204 800A2254 AC400004 */  sw         $zero, 0x4($v0)
    /* B1208 800A2258 03E00008 */  jr         $ra
    /* B120C 800A225C AC580000 */   sw        $t8, 0x0($v0)
endlabel func_800A1DD8_B0D88
