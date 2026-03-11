nonmatching func_8010EA54_11DA04, 0x330

glabel func_8010EA54_11DA04
    /* 11DA04 8010EA54 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 11DA08 8010EA58 AFA40070 */  sw         $a0, 0x70($sp)
    /* 11DA0C 8010EA5C AFA60078 */  sw         $a2, 0x78($sp)
    /* 11DA10 8010EA60 87B9007A */  lh         $t9, 0x7A($sp)
    /* 11DA14 8010EA64 87B80072 */  lh         $t8, 0x72($sp)
    /* 11DA18 8010EA68 3C028016 */  lui        $v0, %hi(D_80159D5C)
    /* 11DA1C 8010EA6C 8C429D5C */  lw         $v0, %lo(D_80159D5C)($v0)
    /* 11DA20 8010EA70 03194823 */  subu       $t1, $t8, $t9
    /* 11DA24 8010EA74 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 11DA28 8010EA78 AFB10030 */  sw         $s1, 0x30($sp)
    /* 11DA2C 8010EA7C AFB0002C */  sw         $s0, 0x2C($sp)
    /* 11DA30 8010EA80 AFA50074 */  sw         $a1, 0x74($sp)
    /* 11DA34 8010EA84 AFA7007C */  sw         $a3, 0x7C($sp)
    /* 11DA38 8010EA88 00095043 */  sra        $t2, $t1, 1
    /* 11DA3C 8010EA8C 84480000 */  lh         $t0, 0x0($v0)
    /* 11DA40 8010EA90 01585821 */  addu       $t3, $t2, $t8
    /* 11DA44 8010EA94 000B6400 */  sll        $t4, $t3, 16
    /* 11DA48 8010EA98 000C6C03 */  sra        $t5, $t4, 16
    /* 11DA4C 8010EA9C 00057400 */  sll        $t6, $a1, 16
    /* 11DA50 8010EAA0 01A81823 */  subu       $v1, $t5, $t0
    /* 11DA54 8010EAA4 04600003 */  bltz       $v1, .L8010EAB4_11DA64
    /* 11DA58 8010EAA8 000E2C03 */   sra       $a1, $t6, 16
    /* 11DA5C 8010EAAC 10000002 */  b          .L8010EAB8_11DA68
    /* 11DA60 8010EAB0 00603025 */   or        $a2, $v1, $zero
  .L8010EAB4_11DA64:
    /* 11DA64 8010EAB4 00033023 */  negu       $a2, $v1
  .L8010EAB8_11DA68:
    /* 11DA68 8010EAB8 87AE007E */  lh         $t6, 0x7E($sp)
    /* 11DA6C 8010EABC 84440004 */  lh         $a0, 0x4($v0)
    /* 11DA70 8010EAC0 3C0C8016 */  lui        $t4, %hi(D_80159D64)
    /* 11DA74 8010EAC4 00AE7823 */  subu       $t7, $a1, $t6
    /* 11DA78 8010EAC8 000FC843 */  sra        $t9, $t7, 1
    /* 11DA7C 8010EACC 03254821 */  addu       $t1, $t9, $a1
    /* 11DA80 8010EAD0 00095400 */  sll        $t2, $t1, 16
    /* 11DA84 8010EAD4 000AC403 */  sra        $t8, $t2, 16
    /* 11DA88 8010EAD8 03041823 */  subu       $v1, $t8, $a0
    /* 11DA8C 8010EADC 04600003 */  bltz       $v1, .L8010EAEC_11DA9C
    /* 11DA90 8010EAE0 00031023 */   negu      $v0, $v1
    /* 11DA94 8010EAE4 10000001 */  b          .L8010EAEC_11DA9C
    /* 11DA98 8010EAE8 00601025 */   or        $v0, $v1, $zero
  .L8010EAEC_11DA9C:
    /* 11DA9C 8010EAEC 8D8C9D64 */  lw         $t4, %lo(D_80159D64)($t4)
    /* 11DAA0 8010EAF0 00465821 */  addu       $t3, $v0, $a2
    /* 11DAA4 8010EAF4 87B90072 */  lh         $t9, 0x72($sp)
    /* 11DAA8 8010EAF8 858D000C */  lh         $t5, 0xC($t4)
    /* 11DAAC 8010EAFC 000D7040 */  sll        $t6, $t5, 1
    /* 11DAB0 8010EB00 25CF0200 */  addiu      $t7, $t6, 0x200
    /* 11DAB4 8010EB04 016F082A */  slt        $at, $t3, $t7
    /* 11DAB8 8010EB08 54200004 */  bnel       $at, $zero, .L8010EB1C_11DACC
    /* 11DABC 8010EB0C 44992000 */   mtc1      $t9, $f4
    /* 11DAC0 8010EB10 10000097 */  b          .L8010ED70_11DD20
    /* 11DAC4 8010EB14 00001025 */   or        $v0, $zero, $zero
    /* 11DAC8 8010EB18 44992000 */  mtc1       $t9, $f4
  .L8010EB1C_11DACC:
    /* 11DACC 8010EB1C 87AA007E */  lh         $t2, 0x7E($sp)
    /* 11DAD0 8010EB20 44853000 */  mtc1       $a1, $f6
    /* 11DAD4 8010EB24 46802320 */  cvt.s.w    $f12, $f4
    /* 11DAD8 8010EB28 448A5000 */  mtc1       $t2, $f10
    /* 11DADC 8010EB2C 44882000 */  mtc1       $t0, $f4
    /* 11DAE0 8010EB30 87A9007A */  lh         $t1, 0x7A($sp)
    /* 11DAE4 8010EB34 3C108016 */  lui        $s0, %hi(D_80159D78)
    /* 11DAE8 8010EB38 468054A0 */  cvt.s.w    $f18, $f10
    /* 11DAEC 8010EB3C 44845000 */  mtc1       $a0, $f10
    /* 11DAF0 8010EB40 44894000 */  mtc1       $t1, $f8
    /* 11DAF4 8010EB44 26109D78 */  addiu      $s0, $s0, %lo(D_80159D78)
    /* 11DAF8 8010EB48 3C118016 */  lui        $s1, %hi(D_80159D98)
    /* 11DAFC 8010EB4C 46802020 */  cvt.s.w    $f0, $f4
    /* 11DB00 8010EB50 26319D98 */  addiu      $s1, $s1, %lo(D_80159D98)
    /* 11DB04 8010EB54 C6240000 */  lwc1       $f4, 0x0($s1)
    /* 11DB08 8010EB58 44079000 */  mfc1       $a3, $f18
    /* 11DB0C 8010EB5C 27B80064 */  addiu      $t8, $sp, 0x64
    /* 11DB10 8010EB60 468033A0 */  cvt.s.w    $f14, $f6
    /* 11DB14 8010EB64 C6060000 */  lwc1       $f6, 0x0($s0)
    /* 11DB18 8010EB68 27AC0060 */  addiu      $t4, $sp, 0x60
    /* 11DB1C 8010EB6C AFAC0024 */  sw         $t4, 0x24($sp)
    /* 11DB20 8010EB70 AFB80020 */  sw         $t8, 0x20($sp)
    /* 11DB24 8010EB74 468050A0 */  cvt.s.w    $f2, $f10
    /* 11DB28 8010EB78 E7AE0048 */  swc1       $f14, 0x48($sp)
    /* 11DB2C 8010EB7C E7B20040 */  swc1       $f18, 0x40($sp)
    /* 11DB30 8010EB80 E7AC0054 */  swc1       $f12, 0x54($sp)
    /* 11DB34 8010EB84 46804420 */  cvt.s.w    $f16, $f8
    /* 11DB38 8010EB88 46003200 */  add.s      $f8, $f6, $f0
    /* 11DB3C 8010EB8C 44068000 */  mfc1       $a2, $f16
    /* 11DB40 8010EB90 E7B00044 */  swc1       $f16, 0x44($sp)
    /* 11DB44 8010EB94 46022180 */  add.s      $f6, $f4, $f2
    /* 11DB48 8010EB98 E7A80010 */  swc1       $f8, 0x10($sp)
    /* 11DB4C 8010EB9C C6080004 */  lwc1       $f8, 0x4($s0)
    /* 11DB50 8010EBA0 C6240004 */  lwc1       $f4, 0x4($s1)
    /* 11DB54 8010EBA4 E7A60014 */  swc1       $f6, 0x14($sp)
    /* 11DB58 8010EBA8 46004280 */  add.s      $f10, $f8, $f0
    /* 11DB5C 8010EBAC 46022180 */  add.s      $f6, $f4, $f2
    /* 11DB60 8010EBB0 E7AA0018 */  swc1       $f10, 0x18($sp)
    /* 11DB64 8010EBB4 0C043BD0 */  jal        func_8010EF40_11DEF0
    /* 11DB68 8010EBB8 E7A6001C */   swc1      $f6, 0x1C($sp)
    /* 11DB6C 8010EBBC 1440005B */  bnez       $v0, .L8010ED2C_11DCDC
    /* 11DB70 8010EBC0 3C028016 */   lui       $v0, %hi(D_80159D5C)
    /* 11DB74 8010EBC4 8C429D5C */  lw         $v0, %lo(D_80159D5C)($v0)
    /* 11DB78 8010EBC8 C60A0004 */  lwc1       $f10, 0x4($s0)
    /* 11DB7C 8010EBCC 27AB0064 */  addiu      $t3, $sp, 0x64
    /* 11DB80 8010EBD0 844D0000 */  lh         $t5, 0x0($v0)
    /* 11DB84 8010EBD4 27AF0060 */  addiu      $t7, $sp, 0x60
    /* 11DB88 8010EBD8 C7AC0054 */  lwc1       $f12, 0x54($sp)
    /* 11DB8C 8010EBDC 448D4000 */  mtc1       $t5, $f8
    /* 11DB90 8010EBE0 C7AE0048 */  lwc1       $f14, 0x48($sp)
    /* 11DB94 8010EBE4 8FA60044 */  lw         $a2, 0x44($sp)
    /* 11DB98 8010EBE8 46804020 */  cvt.s.w    $f0, $f8
    /* 11DB9C 8010EBEC C6280004 */  lwc1       $f8, 0x4($s1)
    /* 11DBA0 8010EBF0 8FA70040 */  lw         $a3, 0x40($sp)
    /* 11DBA4 8010EBF4 46005100 */  add.s      $f4, $f10, $f0
    /* 11DBA8 8010EBF8 E7A40010 */  swc1       $f4, 0x10($sp)
    /* 11DBAC 8010EBFC 844E0004 */  lh         $t6, 0x4($v0)
    /* 11DBB0 8010EC00 C6040008 */  lwc1       $f4, 0x8($s0)
    /* 11DBB4 8010EC04 AFAF0024 */  sw         $t7, 0x24($sp)
    /* 11DBB8 8010EC08 448E3000 */  mtc1       $t6, $f6
    /* 11DBBC 8010EC0C AFAB0020 */  sw         $t3, 0x20($sp)
    /* 11DBC0 8010EC10 468030A0 */  cvt.s.w    $f2, $f6
    /* 11DBC4 8010EC14 46002180 */  add.s      $f6, $f4, $f0
    /* 11DBC8 8010EC18 46024280 */  add.s      $f10, $f8, $f2
    /* 11DBCC 8010EC1C C6280008 */  lwc1       $f8, 0x8($s1)
    /* 11DBD0 8010EC20 E7A60018 */  swc1       $f6, 0x18($sp)
    /* 11DBD4 8010EC24 E7AA0014 */  swc1       $f10, 0x14($sp)
    /* 11DBD8 8010EC28 46024280 */  add.s      $f10, $f8, $f2
    /* 11DBDC 8010EC2C 0C043BD0 */  jal        func_8010EF40_11DEF0
    /* 11DBE0 8010EC30 E7AA001C */   swc1      $f10, 0x1C($sp)
    /* 11DBE4 8010EC34 1440003D */  bnez       $v0, .L8010ED2C_11DCDC
    /* 11DBE8 8010EC38 3C028016 */   lui       $v0, %hi(D_80159D5C)
    /* 11DBEC 8010EC3C 8C429D5C */  lw         $v0, %lo(D_80159D5C)($v0)
    /* 11DBF0 8010EC40 C6060008 */  lwc1       $f6, 0x8($s0)
    /* 11DBF4 8010EC44 27AA0064 */  addiu      $t2, $sp, 0x64
    /* 11DBF8 8010EC48 84590000 */  lh         $t9, 0x0($v0)
    /* 11DBFC 8010EC4C 27B80060 */  addiu      $t8, $sp, 0x60
    /* 11DC00 8010EC50 C7AC0054 */  lwc1       $f12, 0x54($sp)
    /* 11DC04 8010EC54 44992000 */  mtc1       $t9, $f4
    /* 11DC08 8010EC58 C7AE0048 */  lwc1       $f14, 0x48($sp)
    /* 11DC0C 8010EC5C 8FA60044 */  lw         $a2, 0x44($sp)
    /* 11DC10 8010EC60 46802020 */  cvt.s.w    $f0, $f4
    /* 11DC14 8010EC64 C6240008 */  lwc1       $f4, 0x8($s1)
    /* 11DC18 8010EC68 8FA70040 */  lw         $a3, 0x40($sp)
    /* 11DC1C 8010EC6C 46003200 */  add.s      $f8, $f6, $f0
    /* 11DC20 8010EC70 E7A80010 */  swc1       $f8, 0x10($sp)
    /* 11DC24 8010EC74 84490004 */  lh         $t1, 0x4($v0)
    /* 11DC28 8010EC78 C608000C */  lwc1       $f8, 0xC($s0)
    /* 11DC2C 8010EC7C AFB80024 */  sw         $t8, 0x24($sp)
    /* 11DC30 8010EC80 44895000 */  mtc1       $t1, $f10
    /* 11DC34 8010EC84 AFAA0020 */  sw         $t2, 0x20($sp)
    /* 11DC38 8010EC88 468050A0 */  cvt.s.w    $f2, $f10
    /* 11DC3C 8010EC8C 46004280 */  add.s      $f10, $f8, $f0
    /* 11DC40 8010EC90 46022180 */  add.s      $f6, $f4, $f2
    /* 11DC44 8010EC94 C624000C */  lwc1       $f4, 0xC($s1)
    /* 11DC48 8010EC98 E7AA0018 */  swc1       $f10, 0x18($sp)
    /* 11DC4C 8010EC9C E7A60014 */  swc1       $f6, 0x14($sp)
    /* 11DC50 8010ECA0 46022180 */  add.s      $f6, $f4, $f2
    /* 11DC54 8010ECA4 0C043BD0 */  jal        func_8010EF40_11DEF0
    /* 11DC58 8010ECA8 E7A6001C */   swc1      $f6, 0x1C($sp)
    /* 11DC5C 8010ECAC 1440001F */  bnez       $v0, .L8010ED2C_11DCDC
    /* 11DC60 8010ECB0 3C028016 */   lui       $v0, %hi(D_80159D5C)
    /* 11DC64 8010ECB4 8C429D5C */  lw         $v0, %lo(D_80159D5C)($v0)
    /* 11DC68 8010ECB8 C60A000C */  lwc1       $f10, 0xC($s0)
    /* 11DC6C 8010ECBC 27AE0064 */  addiu      $t6, $sp, 0x64
    /* 11DC70 8010ECC0 844C0000 */  lh         $t4, 0x0($v0)
    /* 11DC74 8010ECC4 27AB0060 */  addiu      $t3, $sp, 0x60
    /* 11DC78 8010ECC8 C7AC0054 */  lwc1       $f12, 0x54($sp)
    /* 11DC7C 8010ECCC 448C4000 */  mtc1       $t4, $f8
    /* 11DC80 8010ECD0 C7AE0048 */  lwc1       $f14, 0x48($sp)
    /* 11DC84 8010ECD4 8FA60044 */  lw         $a2, 0x44($sp)
    /* 11DC88 8010ECD8 46804020 */  cvt.s.w    $f0, $f8
    /* 11DC8C 8010ECDC C628000C */  lwc1       $f8, 0xC($s1)
    /* 11DC90 8010ECE0 8FA70040 */  lw         $a3, 0x40($sp)
    /* 11DC94 8010ECE4 46005100 */  add.s      $f4, $f10, $f0
    /* 11DC98 8010ECE8 E7A40010 */  swc1       $f4, 0x10($sp)
    /* 11DC9C 8010ECEC 844D0004 */  lh         $t5, 0x4($v0)
    /* 11DCA0 8010ECF0 C6040000 */  lwc1       $f4, 0x0($s0)
    /* 11DCA4 8010ECF4 AFAB0024 */  sw         $t3, 0x24($sp)
    /* 11DCA8 8010ECF8 448D3000 */  mtc1       $t5, $f6
    /* 11DCAC 8010ECFC AFAE0020 */  sw         $t6, 0x20($sp)
    /* 11DCB0 8010ED00 468030A0 */  cvt.s.w    $f2, $f6
    /* 11DCB4 8010ED04 46002180 */  add.s      $f6, $f4, $f0
    /* 11DCB8 8010ED08 46024280 */  add.s      $f10, $f8, $f2
    /* 11DCBC 8010ED0C C6280000 */  lwc1       $f8, 0x0($s1)
    /* 11DCC0 8010ED10 E7A60018 */  swc1       $f6, 0x18($sp)
    /* 11DCC4 8010ED14 E7AA0014 */  swc1       $f10, 0x14($sp)
    /* 11DCC8 8010ED18 46024280 */  add.s      $f10, $f8, $f2
    /* 11DCCC 8010ED1C 0C043BD0 */  jal        func_8010EF40_11DEF0
    /* 11DCD0 8010ED20 E7AA001C */   swc1      $f10, 0x1C($sp)
    /* 11DCD4 8010ED24 10400010 */  beqz       $v0, .L8010ED68_11DD18
    /* 11DCD8 8010ED28 8FAE0080 */   lw        $t6, 0x80($sp)
  .L8010ED2C_11DCDC:
    /* 11DCDC 8010ED2C C7A40064 */  lwc1       $f4, 0x64($sp)
    /* 11DCE0 8010ED30 C7A80060 */  lwc1       $f8, 0x60($sp)
    /* 11DCE4 8010ED34 4600218D */  trunc.w.s  $f6, $f4
    /* 11DCE8 8010ED38 4600428D */  trunc.w.s  $f10, $f8
    /* 11DCEC 8010ED3C 44043000 */  mfc1       $a0, $f6
    /* 11DCF0 8010ED40 44055000 */  mfc1       $a1, $f10
    /* 11DCF4 8010ED44 0004CC00 */  sll        $t9, $a0, 16
    /* 11DCF8 8010ED48 00192403 */  sra        $a0, $t9, 16
    /* 11DCFC 8010ED4C 0005C400 */  sll        $t8, $a1, 16
    /* 11DD00 8010ED50 0C03E749 */  jal        func_800F9D24_108CD4
    /* 11DD04 8010ED54 00182C03 */   sra       $a1, $t8, 16
    /* 11DD08 8010ED58 8FAD0080 */  lw         $t5, 0x80($sp)
    /* 11DD0C 8010ED5C A5A20000 */  sh         $v0, 0x0($t5)
    /* 11DD10 8010ED60 10000003 */  b          .L8010ED70_11DD20
    /* 11DD14 8010ED64 24020001 */   addiu     $v0, $zero, 0x1
  .L8010ED68_11DD18:
    /* 11DD18 8010ED68 A5C00000 */  sh         $zero, 0x0($t6)
    /* 11DD1C 8010ED6C 00001025 */  or         $v0, $zero, $zero
  .L8010ED70_11DD20:
    /* 11DD20 8010ED70 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 11DD24 8010ED74 8FB0002C */  lw         $s0, 0x2C($sp)
    /* 11DD28 8010ED78 8FB10030 */  lw         $s1, 0x30($sp)
    /* 11DD2C 8010ED7C 03E00008 */  jr         $ra
    /* 11DD30 8010ED80 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_8010EA54_11DA04
