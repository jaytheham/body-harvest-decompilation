nonmatching func_800DBE20_EADD0, 0x36C

glabel func_800DBE20_EADD0
    /* EADD0 800DBE20 27BDFF08 */  addiu      $sp, $sp, -0xF8
    /* EADD4 800DBE24 F7B80028 */  sdc1       $f24, 0x28($sp)
    /* EADD8 800DBE28 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* EADDC 800DBE2C 4481C000 */  mtc1       $at, $f24
    /* EADE0 800DBE30 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* EADE4 800DBE34 3C01C000 */  lui        $at, (0xC0000000 >> 16)
    /* EADE8 800DBE38 4481B000 */  mtc1       $at, $f22
    /* EADEC 800DBE3C AFB50044 */  sw         $s5, 0x44($sp)
    /* EADF0 800DBE40 AFB40040 */  sw         $s4, 0x40($sp)
    /* EADF4 800DBE44 AFB00030 */  sw         $s0, 0x30($sp)
    /* EADF8 800DBE48 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* EADFC 800DBE4C 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* EAE00 800DBE50 AFBE0050 */  sw         $fp, 0x50($sp)
    /* EAE04 800DBE54 AFB7004C */  sw         $s7, 0x4C($sp)
    /* EAE08 800DBE58 AFB60048 */  sw         $s6, 0x48($sp)
    /* EAE0C 800DBE5C AFB3003C */  sw         $s3, 0x3C($sp)
    /* EAE10 800DBE60 AFB20038 */  sw         $s2, 0x38($sp)
    /* EAE14 800DBE64 AFB10034 */  sw         $s1, 0x34($sp)
    /* EAE18 800DBE68 3C108015 */  lui        $s0, %hi(D_80157540)
    /* EAE1C 800DBE6C 3C148015 */  lui        $s4, %hi(D_80153BA0)
    /* EAE20 800DBE70 3C158015 */  lui        $s5, %hi(D_80154318)
    /* EAE24 800DBE74 4481A000 */  mtc1       $at, $f20
    /* EAE28 800DBE78 AFBF0054 */  sw         $ra, 0x54($sp)
    /* EAE2C 800DBE7C 2412001D */  addiu      $s2, $zero, 0x1D
    /* EAE30 800DBE80 26B54318 */  addiu      $s5, $s5, %lo(D_80154318)
    /* EAE34 800DBE84 26943BA0 */  addiu      $s4, $s4, %lo(D_80153BA0)
    /* EAE38 800DBE88 26107540 */  addiu      $s0, $s0, %lo(D_80157540)
    /* EAE3C 800DBE8C 00008825 */  or         $s1, $zero, $zero
    /* EAE40 800DBE90 27B3007C */  addiu      $s3, $sp, 0x7C
    /* EAE44 800DBE94 2416001C */  addiu      $s6, $zero, 0x1C
    /* EAE48 800DBE98 241700FE */  addiu      $s7, $zero, 0xFE
    /* EAE4C 800DBE9C 241E00FA */  addiu      $fp, $zero, 0xFA
  .L800DBEA0_EAE50:
    /* EAE50 800DBEA0 00117880 */  sll        $t7, $s1, 2
    /* EAE54 800DBEA4 01F17823 */  subu       $t7, $t7, $s1
    /* EAE58 800DBEA8 3C188015 */  lui        $t8, %hi(D_80154088)
    /* EAE5C 800DBEAC 02117021 */  addu       $t6, $s0, $s1
    /* EAE60 800DBEB0 27184088 */  addiu      $t8, $t8, %lo(D_80154088)
    /* EAE64 800DBEB4 000F7880 */  sll        $t7, $t7, 2
    /* EAE68 800DBEB8 A1D70000 */  sb         $s7, 0x0($t6)
    /* EAE6C 800DBEBC 01F81821 */  addu       $v1, $t7, $t8
    /* EAE70 800DBEC0 90640000 */  lbu        $a0, 0x0($v1)
    /* EAE74 800DBEC4 00114880 */  sll        $t1, $s1, 2
    /* EAE78 800DBEC8 02695021 */  addu       $t2, $s3, $t1
    /* EAE7C 800DBECC 53C40061 */  beql       $fp, $a0, .L800DC054_EB004
    /* EAE80 800DBED0 E5580000 */   swc1      $f24, 0x0($t2)
    /* EAE84 800DBED4 90790001 */  lbu        $t9, 0x1($v1)
    /* EAE88 800DBED8 00114880 */  sll        $t1, $s1, 2
    /* EAE8C 800DBEDC 02695021 */  addu       $t2, $s3, $t1
    /* EAE90 800DBEE0 33280001 */  andi       $t0, $t9, 0x1
    /* EAE94 800DBEE4 15000003 */  bnez       $t0, .L800DBEF4_EAEA4
    /* EAE98 800DBEE8 00000000 */   nop
    /* EAE9C 800DBEEC 10000059 */  b          .L800DC054_EB004
    /* EAEA0 800DBEF0 E5560000 */   swc1      $f22, 0x0($t2)
  .L800DBEF4_EAEA4:
    /* EAEA4 800DBEF4 10800007 */  beqz       $a0, .L800DBF14_EAEC4
    /* EAEA8 800DBEF8 24010001 */   addiu     $at, $zero, 0x1
    /* EAEAC 800DBEFC 1081001E */  beq        $a0, $at, .L800DBF78_EAF28
    /* EAEB0 800DBF00 24010005 */   addiu     $at, $zero, 0x5
    /* EAEB4 800DBF04 50810036 */  beql       $a0, $at, .L800DBFE0_EAF90
    /* EAEB8 800DBF08 846D0006 */   lh        $t5, 0x6($v1)
    /* EAEBC 800DBF0C 1000004C */  b          .L800DC040_EAFF0
    /* EAEC0 800DBF10 3C048014 */   lui       $a0, %hi(D_80143B58)
  .L800DBF14_EAEC4:
    /* EAEC4 800DBF14 846B000A */  lh         $t3, 0xA($v1)
    /* EAEC8 800DBF18 C6880000 */  lwc1       $f8, 0x0($s4)
    /* EAECC 800DBF1C 01760019 */  multu      $t3, $s6
    /* EAED0 800DBF20 46144282 */  mul.s      $f10, $f8, $f20
    /* EAED4 800DBF24 00006012 */  mflo       $t4
    /* EAED8 800DBF28 02AC1021 */  addu       $v0, $s5, $t4
    /* EAEDC 800DBF2C 844D0008 */  lh         $t5, 0x8($v0)
    /* EAEE0 800DBF30 844E000C */  lh         $t6, 0xC($v0)
    /* EAEE4 800DBF34 24420008 */  addiu      $v0, $v0, 0x8
    /* EAEE8 800DBF38 448D2000 */  mtc1       $t5, $f4
    /* EAEEC 800DBF3C 448E8000 */  mtc1       $t6, $f16
    /* EAEF0 800DBF40 468021A0 */  cvt.s.w    $f6, $f4
    /* EAEF4 800DBF44 C6840008 */  lwc1       $f4, 0x8($s4)
    /* EAEF8 800DBF48 46142202 */  mul.s      $f8, $f4, $f20
    /* EAEFC 800DBF4C 460A3001 */  sub.s      $f0, $f6, $f10
    /* EAF00 800DBF50 468084A0 */  cvt.s.w    $f18, $f16
    /* EAF04 800DBF54 46000182 */  mul.s      $f6, $f0, $f0
    /* EAF08 800DBF58 46089081 */  sub.s      $f2, $f18, $f8
    /* EAF0C 800DBF5C 46021282 */  mul.s      $f10, $f2, $f2
    /* EAF10 800DBF60 0C007650 */  jal        sqrtf
    /* EAF14 800DBF64 460A3300 */   add.s     $f12, $f6, $f10
    /* EAF18 800DBF68 00117880 */  sll        $t7, $s1, 2
    /* EAF1C 800DBF6C 026FC021 */  addu       $t8, $s3, $t7
    /* EAF20 800DBF70 10000038 */  b          .L800DC054_EB004
    /* EAF24 800DBF74 E7000000 */   swc1      $f0, 0x0($t8)
  .L800DBF78_EAF28:
    /* EAF28 800DBF78 8479000A */  lh         $t9, 0xA($v1)
    /* EAF2C 800DBF7C C6920000 */  lwc1       $f18, 0x0($s4)
    /* EAF30 800DBF80 03360019 */  multu      $t9, $s6
    /* EAF34 800DBF84 46149202 */  mul.s      $f8, $f18, $f20
    /* EAF38 800DBF88 00004012 */  mflo       $t0
    /* EAF3C 800DBF8C 02A81021 */  addu       $v0, $s5, $t0
    /* EAF40 800DBF90 84490008 */  lh         $t1, 0x8($v0)
    /* EAF44 800DBF94 844A000C */  lh         $t2, 0xC($v0)
    /* EAF48 800DBF98 24420008 */  addiu      $v0, $v0, 0x8
    /* EAF4C 800DBF9C 44898000 */  mtc1       $t1, $f16
    /* EAF50 800DBFA0 448A3000 */  mtc1       $t2, $f6
    /* EAF54 800DBFA4 46808120 */  cvt.s.w    $f4, $f16
    /* EAF58 800DBFA8 C6900008 */  lwc1       $f16, 0x8($s4)
    /* EAF5C 800DBFAC 46148482 */  mul.s      $f18, $f16, $f20
    /* EAF60 800DBFB0 46082001 */  sub.s      $f0, $f4, $f8
    /* EAF64 800DBFB4 468032A0 */  cvt.s.w    $f10, $f6
    /* EAF68 800DBFB8 46000102 */  mul.s      $f4, $f0, $f0
    /* EAF6C 800DBFBC 46125081 */  sub.s      $f2, $f10, $f18
    /* EAF70 800DBFC0 46021202 */  mul.s      $f8, $f2, $f2
    /* EAF74 800DBFC4 0C007650 */  jal        sqrtf
    /* EAF78 800DBFC8 46082300 */   add.s     $f12, $f4, $f8
    /* EAF7C 800DBFCC 00115880 */  sll        $t3, $s1, 2
    /* EAF80 800DBFD0 026B6021 */  addu       $t4, $s3, $t3
    /* EAF84 800DBFD4 1000001F */  b          .L800DC054_EB004
    /* EAF88 800DBFD8 E5800000 */   swc1      $f0, 0x0($t4)
    /* EAF8C 800DBFDC 846D0006 */  lh         $t5, 0x6($v1)
  .L800DBFE0_EAF90:
    /* EAF90 800DBFE0 C68A0000 */  lwc1       $f10, 0x0($s4)
    /* EAF94 800DBFE4 01B60019 */  multu      $t5, $s6
    /* EAF98 800DBFE8 46145482 */  mul.s      $f18, $f10, $f20
    /* EAF9C 800DBFEC 00007012 */  mflo       $t6
    /* EAFA0 800DBFF0 02AE1021 */  addu       $v0, $s5, $t6
    /* EAFA4 800DBFF4 844F0008 */  lh         $t7, 0x8($v0)
    /* EAFA8 800DBFF8 8458000C */  lh         $t8, 0xC($v0)
    /* EAFAC 800DBFFC 24420008 */  addiu      $v0, $v0, 0x8
    /* EAFB0 800DC000 448F3000 */  mtc1       $t7, $f6
    /* EAFB4 800DC004 44982000 */  mtc1       $t8, $f4
    /* EAFB8 800DC008 46803420 */  cvt.s.w    $f16, $f6
    /* EAFBC 800DC00C C6860008 */  lwc1       $f6, 0x8($s4)
    /* EAFC0 800DC010 46143282 */  mul.s      $f10, $f6, $f20
    /* EAFC4 800DC014 46128001 */  sub.s      $f0, $f16, $f18
    /* EAFC8 800DC018 46802220 */  cvt.s.w    $f8, $f4
    /* EAFCC 800DC01C 46000402 */  mul.s      $f16, $f0, $f0
    /* EAFD0 800DC020 460A4081 */  sub.s      $f2, $f8, $f10
    /* EAFD4 800DC024 46021482 */  mul.s      $f18, $f2, $f2
    /* EAFD8 800DC028 0C007650 */  jal        sqrtf
    /* EAFDC 800DC02C 46128300 */   add.s     $f12, $f16, $f18
    /* EAFE0 800DC030 0011C880 */  sll        $t9, $s1, 2
    /* EAFE4 800DC034 02794021 */  addu       $t0, $s3, $t9
    /* EAFE8 800DC038 10000006 */  b          .L800DC054_EB004
    /* EAFEC 800DC03C E5000000 */   swc1      $f0, 0x0($t0)
  .L800DC040_EAFF0:
    /* EAFF0 800DC040 0C00731B */  jal        osSyncPrintf
    /* EAFF4 800DC044 24843B58 */   addiu     $a0, $a0, %lo(D_80143B58)
    /* EAFF8 800DC048 10000003 */  b          .L800DC058_EB008
    /* EAFFC 800DC04C 26310001 */   addiu     $s1, $s1, 0x1
    /* EB000 800DC050 E5580000 */  swc1       $f24, 0x0($t2)
  .L800DC054_EB004:
    /* EB004 800DC054 26310001 */  addiu      $s1, $s1, 0x1
  .L800DC058_EB008:
    /* EB008 800DC058 322B00FF */  andi       $t3, $s1, 0xFF
    /* EB00C 800DC05C 2961001E */  slti       $at, $t3, 0x1E
    /* EB010 800DC060 1420FF8F */  bnez       $at, .L800DBEA0_EAE50
    /* EB014 800DC064 01608825 */   or        $s1, $t3, $zero
    /* EB018 800DC068 00008825 */  or         $s1, $zero, $zero
    /* EB01C 800DC06C 240600FE */  addiu      $a2, $zero, 0xFE
  .L800DC070_EB020:
    /* EB020 800DC070 00116080 */  sll        $t4, $s1, 2
    /* EB024 800DC074 026C6821 */  addu       $t5, $s3, $t4
    /* EB028 800DC078 C5A00000 */  lwc1       $f0, 0x0($t5)
    /* EB02C 800DC07C 4600C032 */  c.eq.s     $f24, $f0
    /* EB030 800DC080 00000000 */  nop
    /* EB034 800DC084 4503002E */  bc1tl      .L800DC140_EB0F0
    /* EB038 800DC088 26310001 */   addiu     $s1, $s1, 0x1
    /* EB03C 800DC08C 4600B032 */  c.eq.s     $f22, $f0
    /* EB040 800DC090 02127021 */  addu       $t6, $s0, $s2
    /* EB044 800DC094 00001825 */  or         $v1, $zero, $zero
    /* EB048 800DC098 45000006 */  bc1f       .L800DC0B4_EB064
    /* EB04C 800DC09C 00000000 */   nop
    /* EB050 800DC0A0 2652FFFF */  addiu      $s2, $s2, -0x1
    /* EB054 800DC0A4 324F00FF */  andi       $t7, $s2, 0xFF
    /* EB058 800DC0A8 A1D10000 */  sb         $s1, 0x0($t6)
    /* EB05C 800DC0AC 10000023 */  b          .L800DC13C_EB0EC
    /* EB060 800DC0B0 01E09025 */   or        $s2, $t7, $zero
  .L800DC0B4_EB064:
    /* EB064 800DC0B4 02032821 */  addu       $a1, $s0, $v1
    /* EB068 800DC0B8 90A20000 */  lbu        $v0, 0x0($a1)
    /* EB06C 800DC0BC 14C20004 */  bne        $a2, $v0, .L800DC0D0_EB080
    /* EB070 800DC0C0 0002C080 */   sll       $t8, $v0, 2
    /* EB074 800DC0C4 A0B10000 */  sb         $s1, 0x0($a1)
    /* EB078 800DC0C8 10000017 */  b          .L800DC128_EB0D8
    /* EB07C 800DC0CC 2403001E */   addiu     $v1, $zero, 0x1E
  .L800DC0D0_EB080:
    /* EB080 800DC0D0 0278C821 */  addu       $t9, $s3, $t8
    /* EB084 800DC0D4 C7240000 */  lwc1       $f4, 0x0($t9)
    /* EB088 800DC0D8 324200FF */  andi       $v0, $s2, 0xFF
    /* EB08C 800DC0DC 0072082A */  slt        $at, $v1, $s2
    /* EB090 800DC0E0 4600203C */  c.lt.s     $f4, $f0
    /* EB094 800DC0E4 00000000 */  nop
    /* EB098 800DC0E8 45020010 */  bc1fl      .L800DC12C_EB0DC
    /* EB09C 800DC0EC 24630001 */   addiu     $v1, $v1, 0x1
    /* EB0A0 800DC0F0 1020000B */  beqz       $at, .L800DC120_EB0D0
    /* EB0A4 800DC0F4 00602025 */   or        $a0, $v1, $zero
    /* EB0A8 800DC0F8 00401825 */  or         $v1, $v0, $zero
  .L800DC0FC_EB0AC:
    /* EB0AC 800DC0FC 02034021 */  addu       $t0, $s0, $v1
    /* EB0B0 800DC100 02025021 */  addu       $t2, $s0, $v0
    /* EB0B4 800DC104 2442FFFF */  addiu      $v0, $v0, -0x1
    /* EB0B8 800DC108 9109FFFF */  lbu        $t1, -0x1($t0)
    /* EB0BC 800DC10C 304300FF */  andi       $v1, $v0, 0xFF
    /* EB0C0 800DC110 0083082A */  slt        $at, $a0, $v1
    /* EB0C4 800DC114 00601025 */  or         $v0, $v1, $zero
    /* EB0C8 800DC118 1420FFF8 */  bnez       $at, .L800DC0FC_EB0AC
    /* EB0CC 800DC11C A1490000 */   sb        $t1, 0x0($t2)
  .L800DC120_EB0D0:
    /* EB0D0 800DC120 A0B10000 */  sb         $s1, 0x0($a1)
    /* EB0D4 800DC124 2403001E */  addiu      $v1, $zero, 0x1E
  .L800DC128_EB0D8:
    /* EB0D8 800DC128 24630001 */  addiu      $v1, $v1, 0x1
  .L800DC12C_EB0DC:
    /* EB0DC 800DC12C 306C00FF */  andi       $t4, $v1, 0xFF
    /* EB0E0 800DC130 2981001E */  slti       $at, $t4, 0x1E
    /* EB0E4 800DC134 1420FFDF */  bnez       $at, .L800DC0B4_EB064
    /* EB0E8 800DC138 01801825 */   or        $v1, $t4, $zero
  .L800DC13C_EB0EC:
    /* EB0EC 800DC13C 26310001 */  addiu      $s1, $s1, 0x1
  .L800DC140_EB0F0:
    /* EB0F0 800DC140 322D00FF */  andi       $t5, $s1, 0xFF
    /* EB0F4 800DC144 29A1001E */  slti       $at, $t5, 0x1E
    /* EB0F8 800DC148 1420FFC9 */  bnez       $at, .L800DC070_EB020
    /* EB0FC 800DC14C 01A08825 */   or        $s1, $t5, $zero
    /* EB100 800DC150 8FBF0054 */  lw         $ra, 0x54($sp)
    /* EB104 800DC154 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* EB108 800DC158 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* EB10C 800DC15C D7B80028 */  ldc1       $f24, 0x28($sp)
    /* EB110 800DC160 8FB00030 */  lw         $s0, 0x30($sp)
    /* EB114 800DC164 8FB10034 */  lw         $s1, 0x34($sp)
    /* EB118 800DC168 8FB20038 */  lw         $s2, 0x38($sp)
    /* EB11C 800DC16C 8FB3003C */  lw         $s3, 0x3C($sp)
    /* EB120 800DC170 8FB40040 */  lw         $s4, 0x40($sp)
    /* EB124 800DC174 8FB50044 */  lw         $s5, 0x44($sp)
    /* EB128 800DC178 8FB60048 */  lw         $s6, 0x48($sp)
    /* EB12C 800DC17C 8FB7004C */  lw         $s7, 0x4C($sp)
    /* EB130 800DC180 8FBE0050 */  lw         $fp, 0x50($sp)
    /* EB134 800DC184 03E00008 */  jr         $ra
    /* EB138 800DC188 27BD00F8 */   addiu     $sp, $sp, 0xF8
endlabel func_800DBE20_EADD0
