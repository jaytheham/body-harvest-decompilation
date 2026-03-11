nonmatching func_8010FAFC_11EAAC, 0x488

glabel func_8010FAFC_11EAAC
    /* 11EAAC 8010FAFC 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 11EAB0 8010FB00 AFB40048 */  sw         $s4, 0x48($sp)
    /* 11EAB4 8010FB04 3C148016 */  lui        $s4, %hi(D_80158FDC)
    /* 11EAB8 8010FB08 8E948FDC */  lw         $s4, %lo(D_80158FDC)($s4)
    /* 11EABC 8010FB0C AFB20040 */  sw         $s2, 0x40($sp)
    /* 11EAC0 8010FB10 AFB5004C */  sw         $s5, 0x4C($sp)
    /* 11EAC4 8010FB14 02801025 */  or         $v0, $s4, $zero
    /* 11EAC8 8010FB18 AFB1003C */  sw         $s1, 0x3C($sp)
    /* 11EACC 8010FB1C 3C128016 */  lui        $s2, %hi(D_80158F98)
    /* 11EAD0 8010FB20 00808825 */  or         $s1, $a0, $zero
    /* 11EAD4 8010FB24 AFBF005C */  sw         $ra, 0x5C($sp)
    /* 11EAD8 8010FB28 AFBE0058 */  sw         $fp, 0x58($sp)
    /* 11EADC 8010FB2C AFB70054 */  sw         $s7, 0x54($sp)
    /* 11EAE0 8010FB30 AFB60050 */  sw         $s6, 0x50($sp)
    /* 11EAE4 8010FB34 AFB30044 */  sw         $s3, 0x44($sp)
    /* 11EAE8 8010FB38 AFB00038 */  sw         $s0, 0x38($sp)
    /* 11EAEC 8010FB3C F7BA0030 */  sdc1       $f26, 0x30($sp)
    /* 11EAF0 8010FB40 F7B80028 */  sdc1       $f24, 0x28($sp)
    /* 11EAF4 8010FB44 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* 11EAF8 8010FB48 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 11EAFC 8010FB4C 26528F98 */  addiu      $s2, $s2, %lo(D_80158F98)
    /* 11EB00 8010FB50 0000A825 */  or         $s5, $zero, $zero
    /* 11EB04 8010FB54 128000FA */  beqz       $s4, .L8010FF40_11EEF0
    /* 11EB08 8010FB58 2694FFFF */   addiu     $s4, $s4, -0x1
    /* 11EB0C 8010FB5C 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
    /* 11EB10 8010FB60 4481D800 */  mtc1       $at, $f27
    /* 11EB14 8010FB64 3C014034 */  lui        $at, (0x40340000 >> 16)
    /* 11EB18 8010FB68 4481C800 */  mtc1       $at, $f25
    /* 11EB1C 8010FB6C 3C018014 */  lui        $at, %hi(D_80144D18)
    /* 11EB20 8010FB70 3C1E8025 */  lui        $fp, %hi(alienSpecs)
    /* 11EB24 8010FB74 3C168025 */  lui        $s6, %hi(vehicleSpecs)
    /* 11EB28 8010FB78 4480D000 */  mtc1       $zero, $f26
    /* 11EB2C 8010FB7C 4480C000 */  mtc1       $zero, $f24
    /* 11EB30 8010FB80 4480A000 */  mtc1       $zero, $f20
    /* 11EB34 8010FB84 26D67A00 */  addiu      $s6, $s6, %lo(vehicleSpecs)
    /* 11EB38 8010FB88 27DE6680 */  addiu      $fp, $fp, %lo(alienSpecs)
    /* 11EB3C 8010FB8C D4364D18 */  ldc1       $f22, %lo(D_80144D18)($at)
    /* 11EB40 8010FB90 24170070 */  addiu      $s7, $zero, 0x70
  .L8010FB94_11EB44:
    /* 11EB44 8010FB94 924E0000 */  lbu        $t6, 0x0($s2)
    /* 11EB48 8010FB98 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* 11EB4C 8010FB9C 2DE1000C */  sltiu      $at, $t7, 0xC
    /* 11EB50 8010FBA0 102000E3 */  beqz       $at, .L8010FF30_11EEE0
    /* 11EB54 8010FBA4 000F7880 */   sll       $t7, $t7, 2
    /* 11EB58 8010FBA8 3C018014 */  lui        $at, %hi(jtbl_80144D20_overlay_gameplay_outside)
    /* 11EB5C 8010FBAC 002F0821 */  addu       $at, $at, $t7
    /* 11EB60 8010FBB0 8C2F4D20 */  lw         $t7, %lo(jtbl_80144D20_overlay_gameplay_outside)($at)
    /* 11EB64 8010FBB4 01E00008 */  jr         $t7
    /* 11EB68 8010FBB8 00000000 */   nop
    /* 11EB6C 8010FBBC 8E500004 */  lw         $s0, 0x4($s2)
    /* 11EB70 8010FBC0 02202025 */  or         $a0, $s1, $zero
    /* 11EB74 8010FBC4 520000DB */  beql       $s0, $zero, .L8010FF34_11EEE4
    /* 11EB78 8010FBC8 02801025 */   or        $v0, $s4, $zero
    /* 11EB7C 8010FBCC 0C043E4F */  jal        func_8010F93C_11E8EC
    /* 11EB80 8010FBD0 02002825 */   or        $a1, $s0, $zero
    /* 11EB84 8010FBD4 100000D7 */  b          .L8010FF34_11EEE4
    /* 11EB88 8010FBD8 02801025 */   or        $v0, $s4, $zero
    /* 11EB8C 8010FBDC 8E500004 */  lw         $s0, 0x4($s2)
    /* 11EB90 8010FBE0 02202025 */  or         $a0, $s1, $zero
    /* 11EB94 8010FBE4 520000D3 */  beql       $s0, $zero, .L8010FF34_11EEE4
    /* 11EB98 8010FBE8 02801025 */   or        $v0, $s4, $zero
    /* 11EB9C 8010FBEC 86050000 */  lh         $a1, 0x0($s0)
    /* 11EBA0 8010FBF0 86060002 */  lh         $a2, 0x2($s0)
    /* 11EBA4 8010FBF4 0C043E0D */  jal        func_8010F834_11E7E4
    /* 11EBA8 8010FBF8 86070004 */   lh        $a3, 0x4($s0)
    /* 11EBAC 8010FBFC 100000CD */  b          .L8010FF34_11EEE4
    /* 11EBB0 8010FC00 02801025 */   or        $v0, $s4, $zero
    /* 11EBB4 8010FC04 8E500004 */  lw         $s0, 0x4($s2)
    /* 11EBB8 8010FC08 02202025 */  or         $a0, $s1, $zero
    /* 11EBBC 8010FC0C 520000C9 */  beql       $s0, $zero, .L8010FF34_11EEE4
    /* 11EBC0 8010FC10 02801025 */   or        $v0, $s4, $zero
    /* 11EBC4 8010FC14 0C043E5B */  jal        func_8010F96C_11E91C
    /* 11EBC8 8010FC18 02002825 */   or        $a1, $s0, $zero
    /* 11EBCC 8010FC1C 100000C5 */  b          .L8010FF34_11EEE4
    /* 11EBD0 8010FC20 02801025 */   or        $v0, $s4, $zero
    /* 11EBD4 8010FC24 8E500004 */  lw         $s0, 0x4($s2)
    /* 11EBD8 8010FC28 02202025 */  or         $a0, $s1, $zero
    /* 11EBDC 8010FC2C 520000C1 */  beql       $s0, $zero, .L8010FF34_11EEE4
    /* 11EBE0 8010FC30 02801025 */   or        $v0, $s4, $zero
    /* 11EBE4 8010FC34 0C043E6D */  jal        func_8010F9B4_11E964
    /* 11EBE8 8010FC38 02002825 */   or        $a1, $s0, $zero
    /* 11EBEC 8010FC3C 100000BD */  b          .L8010FF34_11EEE4
    /* 11EBF0 8010FC40 02801025 */   or        $v0, $s4, $zero
    /* 11EBF4 8010FC44 8E590004 */  lw         $t9, 0x4($s2)
    /* 11EBF8 8010FC48 96380020 */  lhu        $t8, 0x20($s1)
    /* 11EBFC 8010FC4C 03204027 */  not        $t0, $t9
    /* 11EC00 8010FC50 03084824 */  and        $t1, $t8, $t0
    /* 11EC04 8010FC54 100000B6 */  b          .L8010FF30_11EEE0
    /* 11EC08 8010FC58 A6290020 */   sh        $t1, 0x20($s1)
    /* 11EC0C 8010FC5C 962A0020 */  lhu        $t2, 0x20($s1)
    /* 11EC10 8010FC60 8E4B0004 */  lw         $t3, 0x4($s2)
    /* 11EC14 8010FC64 014B6025 */  or         $t4, $t2, $t3
    /* 11EC18 8010FC68 100000B1 */  b          .L8010FF30_11EEE0
    /* 11EC1C 8010FC6C A62C0020 */   sh        $t4, 0x20($s1)
    /* 11EC20 8010FC70 962D0020 */  lhu        $t5, 0x20($s1)
    /* 11EC24 8010FC74 02202025 */  or         $a0, $s1, $zero
    /* 11EC28 8010FC78 35AF0800 */  ori        $t7, $t5, 0x800
    /* 11EC2C 8010FC7C A62F0020 */  sh         $t7, 0x20($s1)
    /* 11EC30 8010FC80 31F9FFFD */  andi       $t9, $t7, 0xFFFD
    /* 11EC34 8010FC84 A6390020 */  sh         $t9, 0x20($s1)
    /* 11EC38 8010FC88 8E580004 */  lw         $t8, 0x4($s2)
    /* 11EC3C 8010FC8C 44982000 */  mtc1       $t8, $f4
    /* 11EC40 8010FC90 00000000 */  nop
    /* 11EC44 8010FC94 46802120 */  cvt.s.w    $f4, $f4
    /* 11EC48 8010FC98 44052000 */  mfc1       $a1, $f4
    /* 11EC4C 8010FC9C 0C03ED1A */  jal        func_800FB468_10A418
    /* 11EC50 8010FCA0 00000000 */   nop
    /* 11EC54 8010FCA4 C6260034 */  lwc1       $f6, 0x34($s1)
    /* 11EC58 8010FCA8 3C088004 */  lui        $t0, %hi(currentLevel)
    /* 11EC5C 8010FCAC 4614303C */  c.lt.s     $f6, $f20
    /* 11EC60 8010FCB0 00000000 */  nop
    /* 11EC64 8010FCB4 45000002 */  bc1f       .L8010FCC0_11EC70
    /* 11EC68 8010FCB8 00000000 */   nop
    /* 11EC6C 8010FCBC E6340034 */  swc1       $f20, 0x34($s1)
  .L8010FCC0_11EC70:
    /* 11EC70 8010FCC0 8D087F90 */  lw         $t0, %lo(currentLevel)($t0)
    /* 11EC74 8010FCC4 24010004 */  addiu      $at, $zero, 0x4
    /* 11EC78 8010FCC8 5501009A */  bnel       $t0, $at, .L8010FF34_11EEE4
    /* 11EC7C 8010FCCC 02801025 */   or        $v0, $s4, $zero
    /* 11EC80 8010FCD0 9229001A */  lbu        $t1, 0x1A($s1)
    /* 11EC84 8010FCD4 2401000E */  addiu      $at, $zero, 0xE
    /* 11EC88 8010FCD8 02202025 */  or         $a0, $s1, $zero
    /* 11EC8C 8010FCDC 55210095 */  bnel       $t1, $at, .L8010FF34_11EEE4
    /* 11EC90 8010FCE0 02801025 */   or        $v0, $s4, $zero
    /* 11EC94 8010FCE4 0C03F6D6 */  jal        func_800FDB58_10CB08
    /* 11EC98 8010FCE8 24150001 */   addiu     $s5, $zero, 0x1
    /* 11EC9C 8010FCEC 10000091 */  b          .L8010FF34_11EEE4
    /* 11ECA0 8010FCF0 02801025 */   or        $v0, $s4, $zero
    /* 11ECA4 8010FCF4 962A0020 */  lhu        $t2, 0x20($s1)
    /* 11ECA8 8010FCF8 3C0C8016 */  lui        $t4, %hi(D_80159320)
    /* 11ECAC 8010FCFC 3C010020 */  lui        $at, (0x200000 >> 16)
    /* 11ECB0 8010FD00 314BF7FF */  andi       $t3, $t2, 0xF7FF
    /* 11ECB4 8010FD04 A62B0020 */  sh         $t3, 0x20($s1)
    /* 11ECB8 8010FD08 8D8C9320 */  lw         $t4, %lo(D_80159320)($t4)
    /* 11ECBC 8010FD0C 01816825 */  or         $t5, $t4, $at
    /* 11ECC0 8010FD10 3C018016 */  lui        $at, %hi(D_80159320)
    /* 11ECC4 8010FD14 10000086 */  b          .L8010FF30_11EEE0
    /* 11ECC8 8010FD18 AC2D9320 */   sw        $t5, %lo(D_80159320)($at)
    /* 11ECCC 8010FD1C 8E4E0004 */  lw         $t6, 0x4($s2)
    /* 11ECD0 8010FD20 02202025 */  or         $a0, $s1, $zero
    /* 11ECD4 8010FD24 448E4000 */  mtc1       $t6, $f8
    /* 11ECD8 8010FD28 00000000 */  nop
    /* 11ECDC 8010FD2C 46804220 */  cvt.s.w    $f8, $f8
    /* 11ECE0 8010FD30 44054000 */  mfc1       $a1, $f8
    /* 11ECE4 8010FD34 0C03ED1A */  jal        func_800FB468_10A418
    /* 11ECE8 8010FD38 00000000 */   nop
    /* 11ECEC 8010FD3C E6340034 */  swc1       $f20, 0x34($s1)
    /* 11ECF0 8010FD40 3C0F8004 */  lui        $t7, %hi(currentLevel)
    /* 11ECF4 8010FD44 8DEF7F90 */  lw         $t7, %lo(currentLevel)($t7)
    /* 11ECF8 8010FD48 24010004 */  addiu      $at, $zero, 0x4
    /* 11ECFC 8010FD4C 55E10079 */  bnel       $t7, $at, .L8010FF34_11EEE4
    /* 11ED00 8010FD50 02801025 */   or        $v0, $s4, $zero
    /* 11ED04 8010FD54 9239001A */  lbu        $t9, 0x1A($s1)
    /* 11ED08 8010FD58 2401000E */  addiu      $at, $zero, 0xE
    /* 11ED0C 8010FD5C 02202025 */  or         $a0, $s1, $zero
    /* 11ED10 8010FD60 57210074 */  bnel       $t9, $at, .L8010FF34_11EEE4
    /* 11ED14 8010FD64 02801025 */   or        $v0, $s4, $zero
    /* 11ED18 8010FD68 0C03F6D6 */  jal        func_800FDB58_10CB08
    /* 11ED1C 8010FD6C 24150001 */   addiu     $s5, $zero, 0x1
    /* 11ED20 8010FD70 10000070 */  b          .L8010FF34_11EEE4
    /* 11ED24 8010FD74 02801025 */   or        $v0, $s4, $zero
    /* 11ED28 8010FD78 0C03EC47 */  jal        func_800FB11C_10A0CC
    /* 11ED2C 8010FD7C 02202025 */   or        $a0, $s1, $zero
    /* 11ED30 8010FD80 9238001A */  lbu        $t8, 0x1A($s1)
    /* 11ED34 8010FD84 46000086 */  mov.s      $f2, $f0
    /* 11ED38 8010FD88 24021770 */  addiu      $v0, $zero, 0x1770
    /* 11ED3C 8010FD8C 03170019 */  multu      $t8, $s7
    /* 11ED40 8010FD90 00004012 */  mflo       $t0
    /* 11ED44 8010FD94 02C84821 */  addu       $t1, $s6, $t0
    /* 11ED48 8010FD98 95230032 */  lhu        $v1, 0x32($t1)
    /* 11ED4C 8010FD9C 28611771 */  slti       $at, $v1, 0x1771
    /* 11ED50 8010FDA0 14200003 */  bnez       $at, .L8010FDB0_11ED60
    /* 11ED54 8010FDA4 00000000 */   nop
    /* 11ED58 8010FDA8 10000001 */  b          .L8010FDB0_11ED60
    /* 11ED5C 8010FDAC 00601025 */   or        $v0, $v1, $zero
  .L8010FDB0_11ED60:
    /* 11ED60 8010FDB0 44825000 */  mtc1       $v0, $f10
    /* 11ED64 8010FDB4 8E530004 */  lw         $s3, 0x4($s2)
    /* 11ED68 8010FDB8 02202025 */  or         $a0, $s1, $zero
    /* 11ED6C 8010FDBC 46805420 */  cvt.s.w    $f16, $f10
    /* 11ED70 8010FDC0 46028482 */  mul.s      $f18, $f16, $f2
    /* 11ED74 8010FDC4 46009121 */  cvt.d.s    $f4, $f18
    /* 11ED78 8010FDC8 46362183 */  div.d      $f6, $f4, $f22
    /* 11ED7C 8010FDCC 4620320D */  trunc.w.d  $f8, $f6
    /* 11ED80 8010FDD0 44104000 */  mfc1       $s0, $f8
    /* 11ED84 8010FDD4 0C03EC47 */  jal        func_800FB11C_10A0CC
    /* 11ED88 8010FDD8 00000000 */   nop
    /* 11ED8C 8010FDDC 460002A1 */  cvt.d.s    $f10, $f0
    /* 11ED90 8010FDE0 462AC03C */  c.lt.d     $f24, $f10
    /* 11ED94 8010FDE4 00000000 */  nop
    /* 11ED98 8010FDE8 45020017 */  bc1fl      .L8010FE48_11EDF8
    /* 11ED9C 8010FDEC 9238001A */   lbu       $t8, 0x1A($s1)
    /* 11EDA0 8010FDF0 926B001A */  lbu        $t3, 0x1A($s3)
    /* 11EDA4 8010FDF4 000B6080 */  sll        $t4, $t3, 2
    /* 11EDA8 8010FDF8 018B6023 */  subu       $t4, $t4, $t3
    /* 11EDAC 8010FDFC 000C6080 */  sll        $t4, $t4, 2
    /* 11EDB0 8010FE00 018B6021 */  addu       $t4, $t4, $t3
    /* 11EDB4 8010FE04 000C60C0 */  sll        $t4, $t4, 3
    /* 11EDB8 8010FE08 03CC6821 */  addu       $t5, $fp, $t4
    /* 11EDBC 8010FE0C 95AE0032 */  lhu        $t6, 0x32($t5)
    /* 11EDC0 8010FE10 29C107D1 */  slti       $at, $t6, 0x7D1
    /* 11EDC4 8010FE14 5020000C */  beql       $at, $zero, .L8010FE48_11EDF8
    /* 11EDC8 8010FE18 9238001A */   lbu       $t8, 0x1A($s1)
    /* 11EDCC 8010FE1C 0C03EC58 */  jal        func_800FB160_10A110
    /* 11EDD0 8010FE20 02202025 */   or        $a0, $s1, $zero
    /* 11EDD4 8010FE24 00102C00 */  sll        $a1, $s0, 16
    /* 11EDD8 8010FE28 00023400 */  sll        $a2, $v0, 16
    /* 11EDDC 8010FE2C 0006CC03 */  sra        $t9, $a2, 16
    /* 11EDE0 8010FE30 00057C03 */  sra        $t7, $a1, 16
    /* 11EDE4 8010FE34 01E02825 */  or         $a1, $t7, $zero
    /* 11EDE8 8010FE38 03203025 */  or         $a2, $t9, $zero
    /* 11EDEC 8010FE3C 0C022055 */  jal        func_80088154_97104
    /* 11EDF0 8010FE40 8E440004 */   lw        $a0, 0x4($s2)
    /* 11EDF4 8010FE44 9238001A */  lbu        $t8, 0x1A($s1)
  .L8010FE48_11EDF8:
    /* 11EDF8 8010FE48 862B0012 */  lh         $t3, 0x12($s1)
    /* 11EDFC 8010FE4C 02602025 */  or         $a0, $s3, $zero
    /* 11EE00 8010FE50 03170019 */  multu      $t8, $s7
    /* 11EE04 8010FE54 02202825 */  or         $a1, $s1, $zero
    /* 11EE08 8010FE58 8627000E */  lh         $a3, 0xE($s1)
    /* 11EE0C 8010FE5C 00004012 */  mflo       $t0
    /* 11EE10 8010FE60 02C84821 */  addu       $t1, $s6, $t0
    /* 11EE14 8010FE64 952A0032 */  lhu        $t2, 0x32($t1)
    /* 11EE18 8010FE68 014B0019 */  multu      $t2, $t3
    /* 11EE1C 8010FE6C 00003012 */  mflo       $a2
    /* 11EE20 8010FE70 00066400 */  sll        $t4, $a2, 16
    /* 11EE24 8010FE74 0C020FBD */  jal        func_80083EF4_92EA4
    /* 11EE28 8010FE78 000C3403 */   sra       $a2, $t4, 16
    /* 11EE2C 8010FE7C 3C0E8004 */  lui        $t6, %hi(D_800475F0)
    /* 11EE30 8010FE80 8DCE75F0 */  lw         $t6, %lo(D_800475F0)($t6)
    /* 11EE34 8010FE84 29C10033 */  slti       $at, $t6, 0x33
    /* 11EE38 8010FE88 5420000A */  bnel       $at, $zero, .L8010FEB4_11EE64
    /* 11EE3C 8010FE8C 8E580004 */   lw        $t8, 0x4($s2)
    /* 11EE40 8010FE90 8E440004 */  lw         $a0, 0x4($s2)
    /* 11EE44 8010FE94 02202825 */  or         $a1, $s1, $zero
    /* 11EE48 8010FE98 24069C40 */  addiu      $a2, $zero, -0x63C0
    /* 11EE4C 8010FE9C 8487000E */  lh         $a3, 0xE($a0)
    /* 11EE50 8010FEA0 00073823 */  negu       $a3, $a3
    /* 11EE54 8010FEA4 00077C00 */  sll        $t7, $a3, 16
    /* 11EE58 8010FEA8 0C020FBD */  jal        func_80083EF4_92EA4
    /* 11EE5C 8010FEAC 000F3C03 */   sra       $a3, $t7, 16
    /* 11EE60 8010FEB0 8E580004 */  lw         $t8, 0x4($s2)
  .L8010FEB4_11EE64:
    /* 11EE64 8010FEB4 9308001A */  lbu        $t0, 0x1A($t8)
    /* 11EE68 8010FEB8 29010003 */  slti       $at, $t0, 0x3
    /* 11EE6C 8010FEBC 5420001D */  bnel       $at, $zero, .L8010FF34_11EEE4
    /* 11EE70 8010FEC0 02801025 */   or        $v0, $s4, $zero
    /* 11EE74 8010FEC4 C6300058 */  lwc1       $f16, 0x58($s1)
    /* 11EE78 8010FEC8 02202025 */  or         $a0, $s1, $zero
    /* 11EE7C 8010FECC 460084A1 */  cvt.d.s    $f18, $f16
    /* 11EE80 8010FED0 463A9102 */  mul.d      $f4, $f18, $f26
    /* 11EE84 8010FED4 462021A0 */  cvt.s.d    $f6, $f4
    /* 11EE88 8010FED8 44053000 */  mfc1       $a1, $f6
    /* 11EE8C 8010FEDC 0C03ED0C */  jal        func_800FB430_10A3E0
    /* 11EE90 8010FEE0 00000000 */   nop
    /* 11EE94 8010FEE4 0C03EC47 */  jal        func_800FB11C_10A0CC
    /* 11EE98 8010FEE8 02202025 */   or        $a0, $s1, $zero
    /* 11EE9C 8010FEEC 9269001A */  lbu        $t1, 0x1A($s3)
    /* 11EEA0 8010FEF0 00095080 */  sll        $t2, $t1, 2
    /* 11EEA4 8010FEF4 01495023 */  subu       $t2, $t2, $t1
    /* 11EEA8 8010FEF8 000A5080 */  sll        $t2, $t2, 2
    /* 11EEAC 8010FEFC 01495021 */  addu       $t2, $t2, $t1
    /* 11EEB0 8010FF00 000A50C0 */  sll        $t2, $t2, 3
    /* 11EEB4 8010FF04 03CA5821 */  addu       $t3, $fp, $t2
    /* 11EEB8 8010FF08 95620032 */  lhu        $v0, 0x32($t3)
    /* 11EEBC 8010FF0C 28411771 */  slti       $at, $v0, 0x1771
    /* 11EEC0 8010FF10 54200008 */  bnel       $at, $zero, .L8010FF34_11EEE4
    /* 11EEC4 8010FF14 02801025 */   or        $v0, $s4, $zero
    /* 11EEC8 8010FF18 10000006 */  b          .L8010FF34_11EEE4
    /* 11EECC 8010FF1C 02801025 */   or        $v0, $s4, $zero
    /* 11EED0 8010FF20 8E440004 */  lw         $a0, 0x4($s2)
    /* 11EED4 8010FF24 24057FFE */  addiu      $a1, $zero, 0x7FFE
    /* 11EED8 8010FF28 0C022055 */  jal        func_80088154_97104
    /* 11EEDC 8010FF2C 86260006 */   lh        $a2, 0x6($s1)
  .L8010FF30_11EEE0:
    /* 11EEE0 8010FF30 02801025 */  or         $v0, $s4, $zero
  .L8010FF34_11EEE4:
    /* 11EEE4 8010FF34 26520008 */  addiu      $s2, $s2, 0x8
    /* 11EEE8 8010FF38 1680FF16 */  bnez       $s4, .L8010FB94_11EB44
    /* 11EEEC 8010FF3C 2694FFFF */   addiu     $s4, $s4, -0x1
  .L8010FF40_11EEF0:
    /* 11EEF0 8010FF40 8FBF005C */  lw         $ra, 0x5C($sp)
    /* 11EEF4 8010FF44 02A01025 */  or         $v0, $s5, $zero
    /* 11EEF8 8010FF48 8FB5004C */  lw         $s5, 0x4C($sp)
    /* 11EEFC 8010FF4C D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 11EF00 8010FF50 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* 11EF04 8010FF54 D7B80028 */  ldc1       $f24, 0x28($sp)
    /* 11EF08 8010FF58 D7BA0030 */  ldc1       $f26, 0x30($sp)
    /* 11EF0C 8010FF5C 8FB00038 */  lw         $s0, 0x38($sp)
    /* 11EF10 8010FF60 8FB1003C */  lw         $s1, 0x3C($sp)
    /* 11EF14 8010FF64 8FB20040 */  lw         $s2, 0x40($sp)
    /* 11EF18 8010FF68 8FB30044 */  lw         $s3, 0x44($sp)
    /* 11EF1C 8010FF6C 8FB40048 */  lw         $s4, 0x48($sp)
    /* 11EF20 8010FF70 8FB60050 */  lw         $s6, 0x50($sp)
    /* 11EF24 8010FF74 8FB70054 */  lw         $s7, 0x54($sp)
    /* 11EF28 8010FF78 8FBE0058 */  lw         $fp, 0x58($sp)
    /* 11EF2C 8010FF7C 03E00008 */  jr         $ra
    /* 11EF30 8010FF80 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_8010FAFC_11EAAC
