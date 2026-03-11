nonmatching func_8007EE98_8DE48, 0x250

glabel func_8007EE98_8DE48
    /* 8DE48 8007EE98 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 8DE4C 8007EE9C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 8DE50 8007EEA0 808E000D */  lb         $t6, 0xD($a0)
    /* 8DE54 8007EEA4 2402FFFE */  addiu      $v0, $zero, -0x2
    /* 8DE58 8007EEA8 544E000A */  bnel       $v0, $t6, .L8007EED4_8DE84
    /* 8DE5C 8007EEAC 9089001A */   lbu       $t1, 0x1A($a0)
    /* 8DE60 8007EEB0 908F001A */  lbu        $t7, 0x1A($a0)
    /* 8DE64 8007EEB4 3C198025 */  lui        $t9, %hi(vehicleSpecs)
    /* 8DE68 8007EEB8 27397A00 */  addiu      $t9, $t9, %lo(vehicleSpecs)
    /* 8DE6C 8007EEBC 000FC0C0 */  sll        $t8, $t7, 3
    /* 8DE70 8007EEC0 030FC023 */  subu       $t8, $t8, $t7
    /* 8DE74 8007EEC4 0018C100 */  sll        $t8, $t8, 4
    /* 8DE78 8007EEC8 1000000A */  b          .L8007EEF4_8DEA4
    /* 8DE7C 8007EECC 03194021 */   addu      $t0, $t8, $t9
    /* 8DE80 8007EED0 9089001A */  lbu        $t1, 0x1A($a0)
  .L8007EED4_8DE84:
    /* 8DE84 8007EED4 3C0B8025 */  lui        $t3, %hi(alienSpecs)
    /* 8DE88 8007EED8 256B6680 */  addiu      $t3, $t3, %lo(alienSpecs)
    /* 8DE8C 8007EEDC 00095080 */  sll        $t2, $t1, 2
    /* 8DE90 8007EEE0 01495023 */  subu       $t2, $t2, $t1
    /* 8DE94 8007EEE4 000A5080 */  sll        $t2, $t2, 2
    /* 8DE98 8007EEE8 01495021 */  addu       $t2, $t2, $t1
    /* 8DE9C 8007EEEC 000A50C0 */  sll        $t2, $t2, 3
    /* 8DEA0 8007EEF0 014B4021 */  addu       $t0, $t2, $t3
  .L8007EEF4_8DEA4:
    /* 8DEA4 8007EEF4 80AC000D */  lb         $t4, 0xD($a1)
    /* 8DEA8 8007EEF8 544C000A */  bnel       $v0, $t4, .L8007EF24_8DED4
    /* 8DEAC 8007EEFC 90B8001A */   lbu       $t8, 0x1A($a1)
    /* 8DEB0 8007EF00 90AD001A */  lbu        $t5, 0x1A($a1)
    /* 8DEB4 8007EF04 3C0F8025 */  lui        $t7, %hi(vehicleSpecs)
    /* 8DEB8 8007EF08 25EF7A00 */  addiu      $t7, $t7, %lo(vehicleSpecs)
    /* 8DEBC 8007EF0C 000D70C0 */  sll        $t6, $t5, 3
    /* 8DEC0 8007EF10 01CD7023 */  subu       $t6, $t6, $t5
    /* 8DEC4 8007EF14 000E7100 */  sll        $t6, $t6, 4
    /* 8DEC8 8007EF18 1000000A */  b          .L8007EF44_8DEF4
    /* 8DECC 8007EF1C 01CF1021 */   addu      $v0, $t6, $t7
    /* 8DED0 8007EF20 90B8001A */  lbu        $t8, 0x1A($a1)
  .L8007EF24_8DED4:
    /* 8DED4 8007EF24 3C098025 */  lui        $t1, %hi(alienSpecs)
    /* 8DED8 8007EF28 25296680 */  addiu      $t1, $t1, %lo(alienSpecs)
    /* 8DEDC 8007EF2C 0018C880 */  sll        $t9, $t8, 2
    /* 8DEE0 8007EF30 0338C823 */  subu       $t9, $t9, $t8
    /* 8DEE4 8007EF34 0019C880 */  sll        $t9, $t9, 2
    /* 8DEE8 8007EF38 0338C821 */  addu       $t9, $t9, $t8
    /* 8DEEC 8007EF3C 0019C8C0 */  sll        $t9, $t9, 3
    /* 8DEF0 8007EF40 03291021 */  addu       $v0, $t9, $t1
  .L8007EF44_8DEF4:
    /* 8DEF4 8007EF44 850A000C */  lh         $t2, 0xC($t0)
    /* 8DEF8 8007EF48 844B000C */  lh         $t3, 0xC($v0)
    /* 8DEFC 8007EF4C 014B6021 */  addu       $t4, $t2, $t3
    /* 8DF00 8007EF50 AFAC001C */  sw         $t4, 0x1C($sp)
    /* 8DF04 8007EF54 84AE0000 */  lh         $t6, 0x0($a1)
    /* 8DF08 8007EF58 848D0000 */  lh         $t5, 0x0($a0)
    /* 8DF0C 8007EF5C 84B80002 */  lh         $t8, 0x2($a1)
    /* 8DF10 8007EF60 848F0002 */  lh         $t7, 0x2($a0)
    /* 8DF14 8007EF64 01AE1823 */  subu       $v1, $t5, $t6
    /* 8DF18 8007EF68 00630019 */  multu      $v1, $v1
    /* 8DF1C 8007EF6C 01F83023 */  subu       $a2, $t7, $t8
    /* 8DF20 8007EF70 84A90004 */  lh         $t1, 0x4($a1)
    /* 8DF24 8007EF74 84990004 */  lh         $t9, 0x4($a0)
    /* 8DF28 8007EF78 AFA60028 */  sw         $a2, 0x28($sp)
    /* 8DF2C 8007EF7C AFA50034 */  sw         $a1, 0x34($sp)
    /* 8DF30 8007EF80 03293823 */  subu       $a3, $t9, $t1
    /* 8DF34 8007EF84 AFA70024 */  sw         $a3, 0x24($sp)
    /* 8DF38 8007EF88 AFA40030 */  sw         $a0, 0x30($sp)
    /* 8DF3C 8007EF8C AFA3002C */  sw         $v1, 0x2C($sp)
    /* 8DF40 8007EF90 00005012 */  mflo       $t2
    /* 8DF44 8007EF94 00000000 */  nop
    /* 8DF48 8007EF98 00000000 */  nop
    /* 8DF4C 8007EF9C 00C60019 */  multu      $a2, $a2
    /* 8DF50 8007EFA0 00005812 */  mflo       $t3
    /* 8DF54 8007EFA4 014B6021 */  addu       $t4, $t2, $t3
    /* 8DF58 8007EFA8 00000000 */  nop
    /* 8DF5C 8007EFAC 00E70019 */  multu      $a3, $a3
    /* 8DF60 8007EFB0 00006812 */  mflo       $t5
    /* 8DF64 8007EFB4 018D7021 */  addu       $t6, $t4, $t5
    /* 8DF68 8007EFB8 448E2000 */  mtc1       $t6, $f4
    /* 8DF6C 8007EFBC 0C007650 */  jal        sqrtf
    /* 8DF70 8007EFC0 46802320 */   cvt.s.w   $f12, $f4
    /* 8DF74 8007EFC4 4600018D */  trunc.w.s  $f6, $f0
    /* 8DF78 8007EFC8 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 8DF7C 8007EFCC 8FA40030 */  lw         $a0, 0x30($sp)
    /* 8DF80 8007EFD0 8FA50034 */  lw         $a1, 0x34($sp)
    /* 8DF84 8007EFD4 44083000 */  mfc1       $t0, $f6
    /* 8DF88 8007EFD8 8FA60028 */  lw         $a2, 0x28($sp)
    /* 8DF8C 8007EFDC 8FA70024 */  lw         $a3, 0x24($sp)
    /* 8DF90 8007EFE0 15000002 */  bnez       $t0, .L8007EFEC_8DF9C
    /* 8DF94 8007EFE4 8FB8001C */   lw        $t8, 0x1C($sp)
    /* 8DF98 8007EFE8 24080001 */  addiu      $t0, $zero, 0x1
  .L8007EFEC_8DF9C:
    /* 8DF9C 8007EFEC 0008C840 */  sll        $t9, $t0, 1
    /* 8DFA0 8007EFF0 44998000 */  mtc1       $t9, $f16
    /* 8DFA4 8007EFF4 44984000 */  mtc1       $t8, $f8
    /* 8DFA8 8007EFF8 44832000 */  mtc1       $v1, $f4
    /* 8DFAC 8007EFFC 468084A0 */  cvt.s.w    $f18, $f16
    /* 8DFB0 8007F000 84890000 */  lh         $t1, 0x0($a0)
    /* 8DFB4 8007F004 848C0002 */  lh         $t4, 0x2($a0)
    /* 8DFB8 8007F008 848F0004 */  lh         $t7, 0x4($a0)
    /* 8DFBC 8007F00C 468042A0 */  cvt.s.w    $f10, $f8
    /* 8DFC0 8007F010 44894000 */  mtc1       $t1, $f8
    /* 8DFC4 8007F014 468021A0 */  cvt.s.w    $f6, $f4
    /* 8DFC8 8007F018 44862000 */  mtc1       $a2, $f4
    /* 8DFCC 8007F01C 46125003 */  div.s      $f0, $f10, $f18
    /* 8DFD0 8007F020 46804420 */  cvt.s.w    $f16, $f8
    /* 8DFD4 8007F024 448C4000 */  mtc1       $t4, $f8
    /* 8DFD8 8007F028 46003082 */  mul.s      $f2, $f6, $f0
    /* 8DFDC 8007F02C 468021A0 */  cvt.s.w    $f6, $f4
    /* 8DFE0 8007F030 44872000 */  mtc1       $a3, $f4
    /* 8DFE4 8007F034 46028280 */  add.s      $f10, $f16, $f2
    /* 8DFE8 8007F038 46003302 */  mul.s      $f12, $f6, $f0
    /* 8DFEC 8007F03C 46804420 */  cvt.s.w    $f16, $f8
    /* 8DFF0 8007F040 448F4000 */  mtc1       $t7, $f8
    /* 8DFF4 8007F044 468021A0 */  cvt.s.w    $f6, $f4
    /* 8DFF8 8007F048 4600548D */  trunc.w.s  $f18, $f10
    /* 8DFFC 8007F04C 46003382 */  mul.s      $f14, $f6, $f0
    /* 8E000 8007F050 460C8280 */  add.s      $f10, $f16, $f12
    /* 8E004 8007F054 440B9000 */  mfc1       $t3, $f18
    /* 8E008 8007F058 46804420 */  cvt.s.w    $f16, $f8
    /* 8E00C 8007F05C A48B0000 */  sh         $t3, 0x0($a0)
    /* 8E010 8007F060 4600548D */  trunc.w.s  $f18, $f10
    /* 8E014 8007F064 460E8280 */  add.s      $f10, $f16, $f14
    /* 8E018 8007F068 440E9000 */  mfc1       $t6, $f18
    /* 8E01C 8007F06C 4600548D */  trunc.w.s  $f18, $f10
    /* 8E020 8007F070 A48E0002 */  sh         $t6, 0x2($a0)
    /* 8E024 8007F074 44199000 */  mfc1       $t9, $f18
    /* 8E028 8007F078 00000000 */  nop
    /* 8E02C 8007F07C A4990004 */  sh         $t9, 0x4($a0)
    /* 8E030 8007F080 84A90000 */  lh         $t1, 0x0($a1)
    /* 8E034 8007F084 84AC0002 */  lh         $t4, 0x2($a1)
    /* 8E038 8007F088 84AF0004 */  lh         $t7, 0x4($a1)
    /* 8E03C 8007F08C 44892000 */  mtc1       $t1, $f4
    /* 8E040 8007F090 448C5000 */  mtc1       $t4, $f10
    /* 8E044 8007F094 468021A0 */  cvt.s.w    $f6, $f4
    /* 8E048 8007F098 468054A0 */  cvt.s.w    $f18, $f10
    /* 8E04C 8007F09C 46023201 */  sub.s      $f8, $f6, $f2
    /* 8E050 8007F0A0 460C9101 */  sub.s      $f4, $f18, $f12
    /* 8E054 8007F0A4 4600440D */  trunc.w.s  $f16, $f8
    /* 8E058 8007F0A8 448F4000 */  mtc1       $t7, $f8
    /* 8E05C 8007F0AC 4600218D */  trunc.w.s  $f6, $f4
    /* 8E060 8007F0B0 440B8000 */  mfc1       $t3, $f16
    /* 8E064 8007F0B4 46804420 */  cvt.s.w    $f16, $f8
    /* 8E068 8007F0B8 440E3000 */  mfc1       $t6, $f6
    /* 8E06C 8007F0BC A4AB0000 */  sh         $t3, 0x0($a1)
    /* 8E070 8007F0C0 A4AE0002 */  sh         $t6, 0x2($a1)
    /* 8E074 8007F0C4 460E8281 */  sub.s      $f10, $f16, $f14
    /* 8E078 8007F0C8 4600548D */  trunc.w.s  $f18, $f10
    /* 8E07C 8007F0CC 44199000 */  mfc1       $t9, $f18
    /* 8E080 8007F0D0 00000000 */  nop
    /* 8E084 8007F0D4 A4B90004 */  sh         $t9, 0x4($a1)
    /* 8E088 8007F0D8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 8E08C 8007F0DC 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 8E090 8007F0E0 03E00008 */  jr         $ra
    /* 8E094 8007F0E4 00000000 */   nop
endlabel func_8007EE98_8DE48
