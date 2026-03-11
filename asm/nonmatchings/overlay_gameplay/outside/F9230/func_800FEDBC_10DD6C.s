nonmatching func_800FEDBC_10DD6C, 0x3A8

glabel func_800FEDBC_10DD6C
    /* 10DD6C 800FEDBC 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 10DD70 800FEDC0 AFA40068 */  sw         $a0, 0x68($sp)
    /* 10DD74 800FEDC4 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 10DD78 800FEDC8 3C048016 */  lui        $a0, %hi(D_801592C0)
    /* 10DD7C 800FEDCC 27AE0064 */  addiu      $t6, $sp, 0x64
    /* 10DD80 800FEDD0 27AF0060 */  addiu      $t7, $sp, 0x60
    /* 10DD84 800FEDD4 27B8005C */  addiu      $t8, $sp, 0x5C
    /* 10DD88 800FEDD8 AFB80018 */  sw         $t8, 0x18($sp)
    /* 10DD8C 800FEDDC AFAF0014 */  sw         $t7, 0x14($sp)
    /* 10DD90 800FEDE0 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 10DD94 800FEDE4 248492C0 */  addiu      $a0, $a0, %lo(D_801592C0)
    /* 10DD98 800FEDE8 3C054320 */  lui        $a1, (0x43200000 >> 16)
    /* 10DD9C 800FEDEC 3C064306 */  lui        $a2, (0x43060000 >> 16)
    /* 10DDA0 800FEDF0 0C008BE4 */  jal        guMtxXFML
    /* 10DDA4 800FEDF4 3C07C120 */   lui       $a3, (0xC1200000 >> 16)
    /* 10DDA8 800FEDF8 3C088016 */  lui        $t0, %hi(D_80159320)
    /* 10DDAC 800FEDFC 8D089320 */  lw         $t0, %lo(D_80159320)($t0)
    /* 10DDB0 800FEE00 3C0B8005 */  lui        $t3, %hi(gameplayMode)
    /* 10DDB4 800FEE04 31190400 */  andi       $t9, $t0, 0x400
    /* 10DDB8 800FEE08 132000BB */  beqz       $t9, .L800FF0F8_10E0A8
    /* 10DDBC 800FEE0C 00085040 */   sll       $t2, $t0, 1
    /* 10DDC0 800FEE10 05410005 */  bgez       $t2, .L800FEE28_10DDD8
    /* 10DDC4 800FEE14 2402001E */   addiu     $v0, $zero, 0x1E
    /* 10DDC8 800FEE18 240200C8 */  addiu      $v0, $zero, 0xC8
    /* 10DDCC 800FEE1C 24030046 */  addiu      $v1, $zero, 0x46
    /* 10DDD0 800FEE20 10000003 */  b          .L800FEE30_10DDE0
    /* 10DDD4 800FEE24 2408001E */   addiu     $t0, $zero, 0x1E
  .L800FEE28_10DDD8:
    /* 10DDD8 800FEE28 240300C8 */  addiu      $v1, $zero, 0xC8
    /* 10DDDC 800FEE2C 24080046 */  addiu      $t0, $zero, 0x46
  .L800FEE30_10DDE0:
    /* 10DDE0 800FEE30 8D6B2ADC */  lw         $t3, %lo(gameplayMode)($t3)
    /* 10DDE4 800FEE34 24010001 */  addiu      $at, $zero, 0x1
    /* 10DDE8 800FEE38 C7A40064 */  lwc1       $f4, 0x64($sp)
    /* 10DDEC 800FEE3C 156100AE */  bne        $t3, $at, .L800FF0F8_10E0A8
    /* 10DDF0 800FEE40 C7A80060 */   lwc1      $f8, 0x60($sp)
    /* 10DDF4 800FEE44 C7B0005C */  lwc1       $f16, 0x5C($sp)
    /* 10DDF8 800FEE48 4600218D */  trunc.w.s  $f6, $f4
    /* 10DDFC 800FEE4C 240E001E */  addiu      $t6, $zero, 0x1E
    /* 10DE00 800FEE50 240F0005 */  addiu      $t7, $zero, 0x5
    /* 10DE04 800FEE54 4600428D */  trunc.w.s  $f10, $f8
    /* 10DE08 800FEE58 44043000 */  mfc1       $a0, $f6
    /* 10DE0C 800FEE5C 24190005 */  addiu      $t9, $zero, 0x5
    /* 10DE10 800FEE60 4600848D */  trunc.w.s  $f18, $f16
    /* 10DE14 800FEE64 44055000 */  mfc1       $a1, $f10
    /* 10DE18 800FEE68 00046C00 */  sll        $t5, $a0, 16
    /* 10DE1C 800FEE6C 000D2403 */  sra        $a0, $t5, 16
    /* 10DE20 800FEE70 44069000 */  mfc1       $a2, $f18
    /* 10DE24 800FEE74 0005C400 */  sll        $t8, $a1, 16
    /* 10DE28 800FEE78 00182C03 */  sra        $a1, $t8, 16
    /* 10DE2C 800FEE7C 24180002 */  addiu      $t8, $zero, 0x2
    /* 10DE30 800FEE80 240DFFF6 */  addiu      $t5, $zero, -0xA
    /* 10DE34 800FEE84 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 10DE38 800FEE88 00065C00 */  sll        $t3, $a2, 16
    /* 10DE3C 800FEE8C 000B3403 */  sra        $a2, $t3, 16
    /* 10DE40 800FEE90 AFAA0034 */  sw         $t2, 0x34($sp)
    /* 10DE44 800FEE94 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 10DE48 800FEE98 AFB80020 */  sw         $t8, 0x20($sp)
    /* 10DE4C 800FEE9C AFB90024 */  sw         $t9, 0x24($sp)
    /* 10DE50 800FEEA0 AFAF001C */  sw         $t7, 0x1C($sp)
    /* 10DE54 800FEEA4 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 10DE58 800FEEA8 00003825 */  or         $a3, $zero, $zero
    /* 10DE5C 800FEEAC AFA00014 */  sw         $zero, 0x14($sp)
    /* 10DE60 800FEEB0 AFA20028 */  sw         $v0, 0x28($sp)
    /* 10DE64 800FEEB4 AFA3002C */  sw         $v1, 0x2C($sp)
    /* 10DE68 800FEEB8 0C03297B */  jal        func_800CA5EC_D959C
    /* 10DE6C 800FEEBC AFA80030 */   sw        $t0, 0x30($sp)
    /* 10DE70 800FEEC0 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 10DE74 800FEEC4 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 10DE78 800FEEC8 8564000E */  lh         $a0, 0xE($t3)
    /* 10DE7C 800FEECC 24844000 */  addiu      $a0, $a0, 0x4000
    /* 10DE80 800FEED0 308CFFFF */  andi       $t4, $a0, 0xFFFF
    /* 10DE84 800FEED4 0C007660 */  jal        sins
    /* 10DE88 800FEED8 01802025 */   or        $a0, $t4, $zero
    /* 10DE8C 800FEEDC 44822000 */  mtc1       $v0, $f4
    /* 10DE90 800FEEE0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 10DE94 800FEEE4 44815800 */  mtc1       $at, $f11
    /* 10DE98 800FEEE8 468021A0 */  cvt.s.w    $f6, $f4
    /* 10DE9C 800FEEEC 44805000 */  mtc1       $zero, $f10
    /* 10DEA0 800FEEF0 3C0D8005 */  lui        $t5, %hi(D_80052B34)
    /* 10DEA4 800FEEF4 8DAD2B34 */  lw         $t5, %lo(D_80052B34)($t5)
    /* 10DEA8 800FEEF8 46003221 */  cvt.d.s    $f8, $f6
    /* 10DEAC 800FEEFC 462A4403 */  div.d      $f16, $f8, $f10
    /* 10DEB0 800FEF00 462084A0 */  cvt.s.d    $f18, $f16
    /* 10DEB4 800FEF04 E7B20050 */  swc1       $f18, 0x50($sp)
    /* 10DEB8 800FEF08 85A4000E */  lh         $a0, 0xE($t5)
    /* 10DEBC 800FEF0C 24844000 */  addiu      $a0, $a0, 0x4000
    /* 10DEC0 800FEF10 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* 10DEC4 800FEF14 0C007654 */  jal        coss
    /* 10DEC8 800FEF18 01C02025 */   or        $a0, $t6, $zero
    /* 10DECC 800FEF1C 44822000 */  mtc1       $v0, $f4
    /* 10DED0 800FEF20 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 10DED4 800FEF24 44811000 */  mtc1       $at, $f2
    /* 10DED8 800FEF28 468021A0 */  cvt.s.w    $f6, $f4
    /* 10DEDC 800FEF2C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 10DEE0 800FEF30 44815800 */  mtc1       $at, $f11
    /* 10DEE4 800FEF34 44805000 */  mtc1       $zero, $f10
    /* 10DEE8 800FEF38 C7A40050 */  lwc1       $f4, 0x50($sp)
    /* 10DEEC 800FEF3C 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 10DEF0 800FEF40 46003221 */  cvt.d.s    $f8, $f6
    /* 10DEF4 800FEF44 46022182 */  mul.s      $f6, $f4, $f2
    /* 10DEF8 800FEF48 462A4403 */  div.d      $f16, $f8, $f10
    /* 10DEFC 800FEF4C 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 10DF00 800FEF50 240A0050 */  addiu      $t2, $zero, 0x50
    /* 10DF04 800FEF54 240D0078 */  addiu      $t5, $zero, 0x78
    /* 10DF08 800FEF58 240E0006 */  addiu      $t6, $zero, 0x6
    /* 10DF0C 800FEF5C 240F0004 */  addiu      $t7, $zero, 0x4
    /* 10DF10 800FEF60 4600320D */  trunc.w.s  $f8, $f6
    /* 10DF14 800FEF64 241900FF */  addiu      $t9, $zero, 0xFF
    /* 10DF18 800FEF68 44074000 */  mfc1       $a3, $f8
    /* 10DF1C 800FEF6C 00000000 */  nop
    /* 10DF20 800FEF70 0007C600 */  sll        $t8, $a3, 24
    /* 10DF24 800FEF74 00183E03 */  sra        $a3, $t8, 24
    /* 10DF28 800FEF78 24180064 */  addiu      $t8, $zero, 0x64
    /* 10DF2C 800FEF7C 46208487 */  neg.d      $f18, $f16
    /* 10DF30 800FEF80 46209020 */  cvt.s.d    $f0, $f18
    /* 10DF34 800FEF84 46020282 */  mul.s      $f10, $f0, $f2
    /* 10DF38 800FEF88 E7A0004C */  swc1       $f0, 0x4C($sp)
    /* 10DF3C 800FEF8C 84660004 */  lh         $a2, 0x4($v1)
    /* 10DF40 800FEF90 84650002 */  lh         $a1, 0x2($v1)
    /* 10DF44 800FEF94 84640000 */  lh         $a0, 0x0($v1)
    /* 10DF48 800FEF98 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 10DF4C 800FEF9C 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 10DF50 800FEFA0 4600540D */  trunc.w.s  $f16, $f10
    /* 10DF54 800FEFA4 AFAA0034 */  sw         $t2, 0x34($sp)
    /* 10DF58 800FEFA8 AFA70044 */  sw         $a3, 0x44($sp)
    /* 10DF5C 800FEFAC AFA00030 */  sw         $zero, 0x30($sp)
    /* 10DF60 800FEFB0 440C8000 */  mfc1       $t4, $f16
    /* 10DF64 800FEFB4 AFB9002C */  sw         $t9, 0x2C($sp)
    /* 10DF68 800FEFB8 AFA00028 */  sw         $zero, 0x28($sp)
    /* 10DF6C 800FEFBC AFB80024 */  sw         $t8, 0x24($sp)
    /* 10DF70 800FEFC0 AFAF0020 */  sw         $t7, 0x20($sp)
    /* 10DF74 800FEFC4 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 10DF78 800FEFC8 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 10DF7C 800FEFCC 0C03297B */  jal        func_800CA5EC_D959C
    /* 10DF80 800FEFD0 AFAC0014 */   sw        $t4, 0x14($sp)
    /* 10DF84 800FEFD4 3C098016 */  lui        $t1, %hi(D_80159320)
    /* 10DF88 800FEFD8 25299320 */  addiu      $t1, $t1, %lo(D_80159320)
    /* 10DF8C 800FEFDC 8D280000 */  lw         $t0, 0x0($t1)
    /* 10DF90 800FEFE0 3C01FDFF */  lui        $at, (0xFDFFFFFF >> 16)
    /* 10DF94 800FEFE4 8FA70044 */  lw         $a3, 0x44($sp)
    /* 10DF98 800FEFE8 00085980 */  sll        $t3, $t0, 6
    /* 10DF9C 800FEFEC 05610020 */  bgez       $t3, .L800FF070_10E020
    /* 10DFA0 800FEFF0 3421FFFF */   ori       $at, $at, (0xFDFFFFFF & 0xFFFF)
    /* 10DFA4 800FEFF4 01016024 */  and        $t4, $t0, $at
    /* 10DFA8 800FEFF8 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 10DFAC 800FEFFC 44812000 */  mtc1       $at, $f4
    /* 10DFB0 800FF000 C7B2004C */  lwc1       $f18, 0x4C($sp)
    /* 10DFB4 800FF004 AD2C0000 */  sw         $t4, 0x0($t1)
    /* 10DFB8 800FF008 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 10DFBC 800FF00C 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 10DFC0 800FF010 46049182 */  mul.s      $f6, $f18, $f4
    /* 10DFC4 800FF014 240D0050 */  addiu      $t5, $zero, 0x50
    /* 10DFC8 800FF018 84640000 */  lh         $a0, 0x0($v1)
    /* 10DFCC 800FF01C 84650002 */  lh         $a1, 0x2($v1)
    /* 10DFD0 800FF020 84660004 */  lh         $a2, 0x4($v1)
    /* 10DFD4 800FF024 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 10DFD8 800FF028 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 10DFDC 800FF02C 4600320D */  trunc.w.s  $f8, $f6
    /* 10DFE0 800FF030 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 10DFE4 800FF034 24180078 */  addiu      $t8, $zero, 0x78
    /* 10DFE8 800FF038 24190006 */  addiu      $t9, $zero, 0x6
    /* 10DFEC 800FF03C 440F4000 */  mfc1       $t7, $f8
    /* 10DFF0 800FF040 240A0014 */  addiu      $t2, $zero, 0x14
    /* 10DFF4 800FF044 240B0064 */  addiu      $t3, $zero, 0x64
    /* 10DFF8 800FF048 AFAB0024 */  sw         $t3, 0x24($sp)
    /* 10DFFC 800FF04C AFAA0020 */  sw         $t2, 0x20($sp)
    /* 10E000 800FF050 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 10E004 800FF054 AFB80018 */  sw         $t8, 0x18($sp)
    /* 10E008 800FF058 AFAC002C */  sw         $t4, 0x2C($sp)
    /* 10E00C 800FF05C AFAD0034 */  sw         $t5, 0x34($sp)
    /* 10E010 800FF060 AFA00030 */  sw         $zero, 0x30($sp)
    /* 10E014 800FF064 AFA00028 */  sw         $zero, 0x28($sp)
    /* 10E018 800FF068 0C03297B */  jal        func_800CA5EC_D959C
    /* 10E01C 800FF06C AFAF0014 */   sw        $t7, 0x14($sp)
  .L800FF070_10E020:
    /* 10E020 800FF070 C7AA0064 */  lwc1       $f10, 0x64($sp)
    /* 10E024 800FF074 C7B20060 */  lwc1       $f18, 0x60($sp)
    /* 10E028 800FF078 C7A6005C */  lwc1       $f6, 0x5C($sp)
    /* 10E02C 800FF07C 4600540D */  trunc.w.s  $f16, $f10
    /* 10E030 800FF080 00002025 */  or         $a0, $zero, $zero
    /* 10E034 800FF084 240500AB */  addiu      $a1, $zero, 0xAB
    /* 10E038 800FF088 4600910D */  trunc.w.s  $f4, $f18
    /* 10E03C 800FF08C 44068000 */  mfc1       $a2, $f16
    /* 10E040 800FF090 4600320D */  trunc.w.s  $f8, $f6
    /* 10E044 800FF094 44072000 */  mfc1       $a3, $f4
    /* 10E048 800FF098 00067C00 */  sll        $t7, $a2, 16
    /* 10E04C 800FF09C 000F3403 */  sra        $a2, $t7, 16
    /* 10E050 800FF0A0 440D4000 */  mfc1       $t5, $f8
    /* 10E054 800FF0A4 00075400 */  sll        $t2, $a3, 16
    /* 10E058 800FF0A8 000A3C03 */  sra        $a3, $t2, 16
    /* 10E05C 800FF0AC 0C04DC4C */  jal        func_80137130_1460E0
    /* 10E060 800FF0B0 AFAD0010 */   sw        $t5, 0x10($sp)
    /* 10E064 800FF0B4 C7AA0064 */  lwc1       $f10, 0x64($sp)
    /* 10E068 800FF0B8 C7B20060 */  lwc1       $f18, 0x60($sp)
    /* 10E06C 800FF0BC C7A6005C */  lwc1       $f6, 0x5C($sp)
    /* 10E070 800FF0C0 4600540D */  trunc.w.s  $f16, $f10
    /* 10E074 800FF0C4 00002025 */  or         $a0, $zero, $zero
    /* 10E078 800FF0C8 240500D4 */  addiu      $a1, $zero, 0xD4
    /* 10E07C 800FF0CC 4600910D */  trunc.w.s  $f4, $f18
    /* 10E080 800FF0D0 44068000 */  mfc1       $a2, $f16
    /* 10E084 800FF0D4 4600320D */  trunc.w.s  $f8, $f6
    /* 10E088 800FF0D8 44072000 */  mfc1       $a3, $f4
    /* 10E08C 800FF0DC 00067C00 */  sll        $t7, $a2, 16
    /* 10E090 800FF0E0 000F3403 */  sra        $a2, $t7, 16
    /* 10E094 800FF0E4 440D4000 */  mfc1       $t5, $f8
    /* 10E098 800FF0E8 00075400 */  sll        $t2, $a3, 16
    /* 10E09C 800FF0EC 000A3C03 */  sra        $a3, $t2, 16
    /* 10E0A0 800FF0F0 0C04DC4C */  jal        func_80137130_1460E0
    /* 10E0A4 800FF0F4 AFAD0010 */   sw        $t5, 0x10($sp)
  .L800FF0F8_10E0A8:
    /* 10E0A8 800FF0F8 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10E0AC 800FF0FC 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10E0B0 800FF100 A4A00000 */  sh         $zero, 0x0($a1)
    /* 10E0B4 800FF104 A4A00002 */  sh         $zero, 0x2($a1)
    /* 10E0B8 800FF108 3C0E8005 */  lui        $t6, %hi(D_80052A8C)
    /* 10E0BC 800FF10C 8DCE2A8C */  lw         $t6, %lo(D_80052A8C)($t6)
    /* 10E0C0 800FF110 8FB90068 */  lw         $t9, 0x68($sp)
    /* 10E0C4 800FF114 3C0C8014 */  lui        $t4, %hi(D_8013FDA8)
    /* 10E0C8 800FF118 000E7940 */  sll        $t7, $t6, 5
    /* 10E0CC 800FF11C 01EE7823 */  subu       $t7, $t7, $t6
    /* 10E0D0 800FF120 000F7880 */  sll        $t7, $t7, 2
    /* 10E0D4 800FF124 01EE7821 */  addu       $t7, $t7, $t6
    /* 10E0D8 800FF128 000F78C0 */  sll        $t7, $t7, 3
    /* 10E0DC 800FF12C 31F81FFF */  andi       $t8, $t7, 0x1FFF
    /* 10E0E0 800FF130 00195100 */  sll        $t2, $t9, 4
    /* 10E0E4 800FF134 A4B80004 */  sh         $t8, 0x4($a1)
    /* 10E0E8 800FF138 254B0008 */  addiu      $t3, $t2, 0x8
    /* 10E0EC 800FF13C 258CFDA8 */  addiu      $t4, $t4, %lo(D_8013FDA8)
    /* 10E0F0 800FF140 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10E0F4 800FF144 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10E0F8 800FF148 016C2021 */  addu       $a0, $t3, $t4
    /* 10E0FC 800FF14C 0C000E74 */  jal        func_800039D0_45D0
    /* 10E100 800FF150 00003025 */   or        $a2, $zero, $zero
    /* 10E104 800FF154 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 10E108 800FF158 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 10E10C 800FF15C 03E00008 */  jr         $ra
    /* 10E110 800FF160 00000000 */   nop
endlabel func_800FEDBC_10DD6C
