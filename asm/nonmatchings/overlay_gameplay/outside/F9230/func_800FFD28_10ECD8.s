nonmatching func_800FFD28_10ECD8, 0x3EC

glabel func_800FFD28_10ECD8
    /* 10ECD8 800FFD28 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 10ECDC 800FFD2C AFBF001C */  sw         $ra, 0x1C($sp)
    /* 10ECE0 800FFD30 AFB10018 */  sw         $s1, 0x18($sp)
    /* 10ECE4 800FFD34 AFB00014 */  sw         $s0, 0x14($sp)
    /* 10ECE8 800FFD38 908E001A */  lbu        $t6, 0x1A($a0)
    /* 10ECEC 800FFD3C 3C188025 */  lui        $t8, %hi(vehicleSpecs)
    /* 10ECF0 800FFD40 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 10ECF4 800FFD44 000E78C0 */  sll        $t7, $t6, 3
    /* 10ECF8 800FFD48 01EE7823 */  subu       $t7, $t7, $t6
    /* 10ECFC 800FFD4C 000F7900 */  sll        $t7, $t7, 4
    /* 10ED00 800FFD50 27187A00 */  addiu      $t8, $t8, %lo(vehicleSpecs)
    /* 10ED04 800FFD54 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 10ED08 800FFD58 00808025 */  or         $s0, $a0, $zero
    /* 10ED0C 800FFD5C 01F8C821 */  addu       $t9, $t7, $t8
    /* 10ED10 800FFD60 3C068003 */  lui        $a2, %hi(D_800311A0)
    /* 10ED14 800FFD64 AFB90024 */  sw         $t9, 0x24($sp)
    /* 10ED18 800FFD68 24C611A0 */  addiu      $a2, $a2, %lo(D_800311A0)
    /* 10ED1C 800FFD6C 00002025 */  or         $a0, $zero, $zero
    /* 10ED20 800FFD70 8D070000 */  lw         $a3, 0x0($t0)
    /* 10ED24 800FFD74 0C000E74 */  jal        func_800039D0_45D0
    /* 10ED28 800FFD78 00002825 */   or        $a1, $zero, $zero
    /* 10ED2C 800FFD7C 3C098006 */  lui        $t1, %hi(D_8005BB2C)
    /* 10ED30 800FFD80 2529BB2C */  addiu      $t1, $t1, %lo(D_8005BB2C)
    /* 10ED34 800FFD84 8D220000 */  lw         $v0, 0x0($t1)
    /* 10ED38 800FFD88 3C0B0102 */  lui        $t3, (0x1020040 >> 16)
    /* 10ED3C 800FFD8C 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 10ED40 800FFD90 244A0008 */  addiu      $t2, $v0, 0x8
    /* 10ED44 800FFD94 AD2A0000 */  sw         $t2, 0x0($t1)
    /* 10ED48 800FFD98 356B0040 */  ori        $t3, $t3, (0x1020040 & 0xFFFF)
    /* 10ED4C 800FFD9C 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 10ED50 800FFDA0 AC4B0000 */  sw         $t3, 0x0($v0)
    /* 10ED54 800FFDA4 8D0C0000 */  lw         $t4, 0x0($t0)
    /* 10ED58 800FFDA8 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 10ED5C 800FFDAC 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 10ED60 800FFDB0 01816824 */  and        $t5, $t4, $at
    /* 10ED64 800FFDB4 AC4D0004 */  sw         $t5, 0x4($v0)
    /* 10ED68 800FFDB8 8D0E0000 */  lw         $t6, 0x0($t0)
    /* 10ED6C 800FFDBC 3C118005 */  lui        $s1, %hi(D_80052B40)
    /* 10ED70 800FFDC0 26312B40 */  addiu      $s1, $s1, %lo(D_80052B40)
    /* 10ED74 800FFDC4 25CF0040 */  addiu      $t7, $t6, 0x40
    /* 10ED78 800FFDC8 AD0F0000 */  sw         $t7, 0x0($t0)
    /* 10ED7C 800FFDCC 86180000 */  lh         $t8, 0x0($s0)
    /* 10ED80 800FFDD0 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10ED84 800FFDD4 240C4000 */  addiu      $t4, $zero, 0x4000
    /* 10ED88 800FFDD8 A6380000 */  sh         $t8, 0x0($s1)
    /* 10ED8C 800FFDDC 86190002 */  lh         $t9, 0x2($s0)
    /* 10ED90 800FFDE0 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10ED94 800FFDE4 A6390002 */  sh         $t9, 0x2($s1)
    /* 10ED98 800FFDE8 860A0004 */  lh         $t2, 0x4($s0)
    /* 10ED9C 800FFDEC 3C198022 */  lui        $t9, %hi(D_80222A70)
    /* 10EDA0 800FFDF0 A62A0004 */  sh         $t2, 0x4($s1)
    /* 10EDA4 800FFDF4 860B0006 */  lh         $t3, 0x6($s0)
    /* 10EDA8 800FFDF8 018B6823 */  subu       $t5, $t4, $t3
    /* 10EDAC 800FFDFC A4AD0000 */  sh         $t5, 0x0($a1)
    /* 10EDB0 800FFE00 860E0008 */  lh         $t6, 0x8($s0)
    /* 10EDB4 800FFE04 000E7823 */  negu       $t7, $t6
    /* 10EDB8 800FFE08 A4AF0002 */  sh         $t7, 0x2($a1)
    /* 10EDBC 800FFE0C 8618000A */  lh         $t8, 0xA($s0)
    /* 10EDC0 800FFE10 A4B80004 */  sh         $t8, 0x4($a1)
    /* 10EDC4 800FFE14 860A0002 */  lh         $t2, 0x2($s0)
    /* 10EDC8 800FFE18 8F392A70 */  lw         $t9, %lo(D_80222A70)($t9)
    /* 10EDCC 800FFE1C 8FAC0024 */  lw         $t4, 0x24($sp)
    /* 10EDD0 800FFE20 572A0038 */  bnel       $t9, $t2, .L800FFF04_10EEB4
    /* 10EDD4 800FFE24 8FB80024 */   lw        $t8, 0x24($sp)
    /* 10EDD8 800FFE28 8D8B004C */  lw         $t3, 0x4C($t4)
    /* 10EDDC 800FFE2C 3C048005 */  lui        $a0, %hi(D_80052A8E)
    /* 10EDE0 800FFE30 316D0100 */  andi       $t5, $t3, 0x100
    /* 10EDE4 800FFE34 55A00033 */  bnel       $t5, $zero, .L800FFF04_10EEB4
    /* 10EDE8 800FFE38 8FB80024 */   lw        $t8, 0x24($sp)
    /* 10EDEC 800FFE3C 848E2A8E */  lh         $t6, %lo(D_80052A8E)($a0)
    /* 10EDF0 800FFE40 000E7AC0 */  sll        $t7, $t6, 11
    /* 10EDF4 800FFE44 0C007660 */  jal        sins
    /* 10EDF8 800FFE48 31E4FFFF */   andi      $a0, $t7, 0xFFFF
    /* 10EDFC 800FFE4C 44822000 */  mtc1       $v0, $f4
    /* 10EE00 800FFE50 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 10EE04 800FFE54 44815800 */  mtc1       $at, $f11
    /* 10EE08 800FFE58 468021A0 */  cvt.s.w    $f6, $f4
    /* 10EE0C 800FFE5C 44805000 */  mtc1       $zero, $f10
    /* 10EE10 800FFE60 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* 10EE14 800FFE64 44819800 */  mtc1       $at, $f19
    /* 10EE18 800FFE68 44809000 */  mtc1       $zero, $f18
    /* 10EE1C 800FFE6C 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10EE20 800FFE70 46003221 */  cvt.d.s    $f8, $f6
    /* 10EE24 800FFE74 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10EE28 800FFE78 462A4403 */  div.d      $f16, $f8, $f10
    /* 10EE2C 800FFE7C 84AD0002 */  lh         $t5, 0x2($a1)
    /* 10EE30 800FFE80 3C048005 */  lui        $a0, %hi(D_80052A8E)
    /* 10EE34 800FFE84 46328102 */  mul.d      $f4, $f16, $f18
    /* 10EE38 800FFE88 4620218D */  trunc.w.d  $f6, $f4
    /* 10EE3C 800FFE8C 440B3000 */  mfc1       $t3, $f6
    /* 10EE40 800FFE90 00000000 */  nop
    /* 10EE44 800FFE94 016D7021 */  addu       $t6, $t3, $t5
    /* 10EE48 800FFE98 A4AE0002 */  sh         $t6, 0x2($a1)
    /* 10EE4C 800FFE9C 848F2A8E */  lh         $t7, %lo(D_80052A8E)($a0)
    /* 10EE50 800FFEA0 000FC2C0 */  sll        $t8, $t7, 11
    /* 10EE54 800FFEA4 0C007654 */  jal        coss
    /* 10EE58 800FFEA8 3304FFFF */   andi      $a0, $t8, 0xFFFF
    /* 10EE5C 800FFEAC 44824000 */  mtc1       $v0, $f8
    /* 10EE60 800FFEB0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 10EE64 800FFEB4 44819800 */  mtc1       $at, $f19
    /* 10EE68 800FFEB8 468042A0 */  cvt.s.w    $f10, $f8
    /* 10EE6C 800FFEBC 44809000 */  mtc1       $zero, $f18
    /* 10EE70 800FFEC0 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* 10EE74 800FFEC4 44813800 */  mtc1       $at, $f7
    /* 10EE78 800FFEC8 44803000 */  mtc1       $zero, $f6
    /* 10EE7C 800FFECC 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10EE80 800FFED0 46005421 */  cvt.d.s    $f16, $f10
    /* 10EE84 800FFED4 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10EE88 800FFED8 46328103 */  div.d      $f4, $f16, $f18
    /* 10EE8C 800FFEDC 84AE0004 */  lh         $t6, 0x4($a1)
    /* 10EE90 800FFEE0 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 10EE94 800FFEE4 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 10EE98 800FFEE8 46262202 */  mul.d      $f8, $f4, $f6
    /* 10EE9C 800FFEEC 4620428D */  trunc.w.d  $f10, $f8
    /* 10EEA0 800FFEF0 440D5000 */  mfc1       $t5, $f10
    /* 10EEA4 800FFEF4 00000000 */  nop
    /* 10EEA8 800FFEF8 01AE7821 */  addu       $t7, $t5, $t6
    /* 10EEAC 800FFEFC A4AF0004 */  sh         $t7, 0x4($a1)
    /* 10EEB0 800FFF00 8FB80024 */  lw         $t8, 0x24($sp)
  .L800FFF04_10EEB4:
    /* 10EEB4 800FFF04 3C0C8014 */  lui        $t4, %hi(D_80140768)
    /* 10EEB8 800FFF08 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* 10EEBC 800FFF0C 93020055 */  lbu        $v0, 0x55($t8)
    /* 10EEC0 800FFF10 02202025 */  or         $a0, $s1, $zero
    /* 10EEC4 800FFF14 00003025 */  or         $a2, $zero, $zero
    /* 10EEC8 800FFF18 10400008 */  beqz       $v0, .L800FFF3C_10EEEC
    /* 10EECC 800FFF1C 00025080 */   sll       $t2, $v0, 2
    /* 10EED0 800FFF20 01425021 */  addu       $t2, $t2, $v0
    /* 10EED4 800FFF24 000A5040 */  sll        $t2, $t2, 1
    /* 10EED8 800FFF28 018A6021 */  addu       $t4, $t4, $t2
    /* 10EEDC 800FFF2C 858C0768 */  lh         $t4, %lo(D_80140768)($t4)
    /* 10EEE0 800FFF30 86390002 */  lh         $t9, 0x2($s1)
    /* 10EEE4 800FFF34 032C5821 */  addu       $t3, $t9, $t4
    /* 10EEE8 800FFF38 A62B0002 */  sh         $t3, 0x2($s1)
  .L800FFF3C_10EEEC:
    /* 10EEEC 800FFF3C 920D001A */  lbu        $t5, 0x1A($s0)
    /* 10EEF0 800FFF40 24030002 */  addiu      $v1, $zero, 0x2
    /* 10EEF4 800FFF44 146D0015 */  bne        $v1, $t5, .L800FFF9C_10EF4C
    /* 10EEF8 800FFF48 00000000 */   nop
    /* 10EEFC 800FFF4C 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* 10EF00 800FFF50 24010003 */  addiu      $at, $zero, 0x3
    /* 10EF04 800FFF54 3C188022 */  lui        $t8, %hi(D_80222A70)
    /* 10EF08 800FFF58 15C10010 */  bne        $t6, $at, .L800FFF9C_10EF4C
    /* 10EF0C 800FFF5C 00000000 */   nop
    /* 10EF10 800FFF60 860F0002 */  lh         $t7, 0x2($s0)
    /* 10EF14 800FFF64 8F182A70 */  lw         $t8, %lo(D_80222A70)($t8)
    /* 10EF18 800FFF68 01F81023 */  subu       $v0, $t7, $t8
    /* 10EF1C 800FFF6C 00025400 */  sll        $t2, $v0, 16
    /* 10EF20 800FFF70 000A1403 */  sra        $v0, $t2, 16
    /* 10EF24 800FFF74 28410019 */  slti       $at, $v0, 0x19
    /* 10EF28 800FFF78 14200002 */  bnez       $at, .L800FFF84_10EF34
    /* 10EF2C 800FFF7C 00000000 */   nop
    /* 10EF30 800FFF80 24020018 */  addiu      $v0, $zero, 0x18
  .L800FFF84_10EF34:
    /* 10EF34 800FFF84 04430003 */  bgezl      $v0, .L800FFF94_10EF44
    /* 10EF38 800FFF88 862C0002 */   lh        $t4, 0x2($s1)
    /* 10EF3C 800FFF8C 00001025 */  or         $v0, $zero, $zero
    /* 10EF40 800FFF90 862C0002 */  lh         $t4, 0x2($s1)
  .L800FFF94_10EF44:
    /* 10EF44 800FFF94 01825821 */  addu       $t3, $t4, $v0
    /* 10EF48 800FFF98 A62B0002 */  sh         $t3, 0x2($s1)
  .L800FFF9C_10EF4C:
    /* 10EF4C 800FFF9C 3C0D8004 */  lui        $t5, %hi(currentLevel)
    /* 10EF50 800FFFA0 8DAD7F90 */  lw         $t5, %lo(currentLevel)($t5)
    /* 10EF54 800FFFA4 3C028016 */  lui        $v0, %hi(D_801591C6)
    /* 10EF58 800FFFA8 244291C6 */  addiu      $v0, $v0, %lo(D_801591C6)
    /* 10EF5C 800FFFAC 146D0008 */  bne        $v1, $t5, .L800FFFD0_10EF80
    /* 10EF60 800FFFB0 3C0A8005 */   lui       $t2, %hi(D_80052B34)
    /* 10EF64 800FFFB4 920E001A */  lbu        $t6, 0x1A($s0)
    /* 10EF68 800FFFB8 24010005 */  addiu      $at, $zero, 0x5
    /* 10EF6C 800FFFBC 15C10004 */  bne        $t6, $at, .L800FFFD0_10EF80
    /* 10EF70 800FFFC0 00000000 */   nop
    /* 10EF74 800FFFC4 862F0002 */  lh         $t7, 0x2($s1)
    /* 10EF78 800FFFC8 25F801F4 */  addiu      $t8, $t7, 0x1F4
    /* 10EF7C 800FFFCC A6380002 */  sh         $t8, 0x2($s1)
  .L800FFFD0_10EF80:
    /* 10EF80 800FFFD0 8D4A2B34 */  lw         $t2, %lo(D_80052B34)($t2)
    /* 10EF84 800FFFD4 160A0006 */  bne        $s0, $t2, .L800FFFF0_10EFA0
    /* 10EF88 800FFFD8 00000000 */   nop
    /* 10EF8C 800FFFDC 86390002 */  lh         $t9, 0x2($s1)
    /* 10EF90 800FFFE0 844C0000 */  lh         $t4, 0x0($v0)
    /* 10EF94 800FFFE4 A4400000 */  sh         $zero, 0x0($v0)
    /* 10EF98 800FFFE8 032C5821 */  addu       $t3, $t9, $t4
    /* 10EF9C 800FFFEC A62B0002 */  sh         $t3, 0x2($s1)
  .L800FFFF0_10EFA0:
    /* 10EFA0 800FFFF0 0C000E74 */  jal        func_800039D0_45D0
    /* 10EFA4 800FFFF4 8D070000 */   lw        $a3, 0x0($t0)
    /* 10EFA8 800FFFF8 3C098006 */  lui        $t1, %hi(D_8005BB2C)
    /* 10EFAC 800FFFFC 2529BB2C */  addiu      $t1, $t1, %lo(D_8005BB2C)
    /* 10EFB0 80100000 8D220000 */  lw         $v0, 0x0($t1)
    /* 10EFB4 80100004 3C110100 */  lui        $s1, (0x1000040 >> 16)
    /* 10EFB8 80100008 36310040 */  ori        $s1, $s1, (0x1000040 & 0xFFFF)
    /* 10EFBC 8010000C 244D0008 */  addiu      $t5, $v0, 0x8
    /* 10EFC0 80100010 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 10EFC4 80100014 AD2D0000 */  sw         $t5, 0x0($t1)
    /* 10EFC8 80100018 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 10EFCC 8010001C AC510000 */  sw         $s1, 0x0($v0)
    /* 10EFD0 80100020 8D0E0000 */  lw         $t6, 0x0($t0)
    /* 10EFD4 80100024 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 10EFD8 80100028 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 10EFDC 8010002C 01C17824 */  and        $t7, $t6, $at
    /* 10EFE0 80100030 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 10EFE4 80100034 8D180000 */  lw         $t8, 0x0($t0)
    /* 10EFE8 80100038 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 10EFEC 8010003C 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10EFF0 80100040 270A0040 */  addiu      $t2, $t8, 0x40
    /* 10EFF4 80100044 AD0A0000 */  sw         $t2, 0x0($t0)
    /* 10EFF8 80100048 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 10EFFC 8010004C 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10F000 80100050 3C198016 */  lui        $t9, %hi(D_80158E74)
    /* 10F004 80100054 12040004 */  beq        $s0, $a0, .L80100068_10F018
    /* 10F008 80100058 3C0C8004 */   lui       $t4, %hi(currentLevel)
    /* 10F00C 8010005C 8F398E74 */  lw         $t9, %lo(D_80158E74)($t9)
    /* 10F010 80100060 56190028 */  bnel       $s0, $t9, .L80100104_10F0B4
    /* 10F014 80100064 8FBF001C */   lw        $ra, 0x1C($sp)
  .L80100068_10F018:
    /* 10F018 80100068 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* 10F01C 8010006C 24010003 */  addiu      $at, $zero, 0x3
    /* 10F020 80100070 55810024 */  bnel       $t4, $at, .L80100104_10F0B4
    /* 10F024 80100074 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 10F028 80100078 920B001A */  lbu        $t3, 0x1A($s0)
    /* 10F02C 8010007C 24010011 */  addiu      $at, $zero, 0x11
    /* 10F030 80100080 00003025 */  or         $a2, $zero, $zero
    /* 10F034 80100084 5561001F */  bnel       $t3, $at, .L80100104_10F0B4
    /* 10F038 80100088 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 10F03C 8010008C 16040005 */  bne        $s0, $a0, .L801000A4_10F054
    /* 10F040 80100090 3C0E8016 */   lui       $t6, %hi(D_80159232)
    /* 10F044 80100094 3C0D8016 */  lui        $t5, %hi(D_8015930A)
    /* 10F048 80100098 85AD930A */  lh         $t5, %lo(D_8015930A)($t5)
    /* 10F04C 8010009C 10000003 */  b          .L801000AC_10F05C
    /* 10F050 801000A0 A4AD0000 */   sh        $t5, 0x0($a1)
  .L801000A4_10F054:
    /* 10F054 801000A4 85CE9232 */  lh         $t6, %lo(D_80159232)($t6)
    /* 10F058 801000A8 A4AE0000 */  sh         $t6, 0x0($a1)
  .L801000AC_10F05C:
    /* 10F05C 801000AC A4A00002 */  sh         $zero, 0x2($a1)
    /* 10F060 801000B0 A4A00004 */  sh         $zero, 0x4($a1)
    /* 10F064 801000B4 00002025 */  or         $a0, $zero, $zero
    /* 10F068 801000B8 0C000E74 */  jal        func_800039D0_45D0
    /* 10F06C 801000BC 8D070000 */   lw        $a3, 0x0($t0)
    /* 10F070 801000C0 3C098006 */  lui        $t1, %hi(D_8005BB2C)
    /* 10F074 801000C4 2529BB2C */  addiu      $t1, $t1, %lo(D_8005BB2C)
    /* 10F078 801000C8 8D220000 */  lw         $v0, 0x0($t1)
    /* 10F07C 801000CC 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 10F080 801000D0 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 10F084 801000D4 244F0008 */  addiu      $t7, $v0, 0x8
    /* 10F088 801000D8 AD2F0000 */  sw         $t7, 0x0($t1)
    /* 10F08C 801000DC AC510000 */  sw         $s1, 0x0($v0)
    /* 10F090 801000E0 8D180000 */  lw         $t8, 0x0($t0)
    /* 10F094 801000E4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 10F098 801000E8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 10F09C 801000EC 03015024 */  and        $t2, $t8, $at
    /* 10F0A0 801000F0 AC4A0004 */  sw         $t2, 0x4($v0)
    /* 10F0A4 801000F4 8D190000 */  lw         $t9, 0x0($t0)
    /* 10F0A8 801000F8 272C0040 */  addiu      $t4, $t9, 0x40
    /* 10F0AC 801000FC AD0C0000 */  sw         $t4, 0x0($t0)
    /* 10F0B0 80100100 8FBF001C */  lw         $ra, 0x1C($sp)
  .L80100104_10F0B4:
    /* 10F0B4 80100104 8FB00014 */  lw         $s0, 0x14($sp)
    /* 10F0B8 80100108 8FB10018 */  lw         $s1, 0x18($sp)
    /* 10F0BC 8010010C 03E00008 */  jr         $ra
    /* 10F0C0 80100110 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_800FFD28_10ECD8
