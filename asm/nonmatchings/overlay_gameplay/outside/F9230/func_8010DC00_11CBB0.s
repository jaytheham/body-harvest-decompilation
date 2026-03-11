nonmatching func_8010DC00_11CBB0, 0x440

glabel func_8010DC00_11CBB0
    /* 11CBB0 8010DC00 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 11CBB4 8010DC04 3C0E8016 */  lui        $t6, %hi(D_80159D6C)
    /* 11CBB8 8010DC08 8DCE9D6C */  lw         $t6, %lo(D_80159D6C)($t6)
    /* 11CBBC 8010DC0C AFB20040 */  sw         $s2, 0x40($sp)
    /* 11CBC0 8010DC10 AFB1003C */  sw         $s1, 0x3C($sp)
    /* 11CBC4 8010DC14 AFB00038 */  sw         $s0, 0x38($sp)
    /* 11CBC8 8010DC18 24010002 */  addiu      $at, $zero, 0x2
    /* 11CBCC 8010DC1C 00C08025 */  or         $s0, $a2, $zero
    /* 11CBD0 8010DC20 00808825 */  or         $s1, $a0, $zero
    /* 11CBD4 8010DC24 00A09025 */  or         $s2, $a1, $zero
    /* 11CBD8 8010DC28 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 11CBDC 8010DC2C F7BA0030 */  sdc1       $f26, 0x30($sp)
    /* 11CBE0 8010DC30 F7B80028 */  sdc1       $f24, 0x28($sp)
    /* 11CBE4 8010DC34 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* 11CBE8 8010DC38 15C1001F */  bne        $t6, $at, .L8010DCB8_11CC68
    /* 11CBEC 8010DC3C F7B40018 */   sdc1      $f20, 0x18($sp)
    /* 11CBF0 8010DC40 3C028016 */  lui        $v0, %hi(D_80159D5C)
    /* 11CBF4 8010DC44 8C429D5C */  lw         $v0, %lo(D_80159D5C)($v0)
    /* 11CBF8 8010DC48 844F0000 */  lh         $t7, 0x0($v0)
    /* 11CBFC 8010DC4C 84590004 */  lh         $t9, 0x4($v0)
    /* 11CC00 8010DC50 01E4C023 */  subu       $t8, $t7, $a0
    /* 11CC04 8010DC54 44982000 */  mtc1       $t8, $f4
    /* 11CC08 8010DC58 03255823 */  subu       $t3, $t9, $a1
    /* 11CC0C 8010DC5C 448B3000 */  mtc1       $t3, $f6
    /* 11CC10 8010DC60 46802020 */  cvt.s.w    $f0, $f4
    /* 11CC14 8010DC64 468030A0 */  cvt.s.w    $f2, $f6
    /* 11CC18 8010DC68 46000202 */  mul.s      $f8, $f0, $f0
    /* 11CC1C 8010DC6C 00000000 */  nop
    /* 11CC20 8010DC70 46021282 */  mul.s      $f10, $f2, $f2
    /* 11CC24 8010DC74 0C007650 */  jal        sqrtf
    /* 11CC28 8010DC78 460A4300 */   add.s     $f12, $f8, $f10
    /* 11CC2C 8010DC7C 3C0C8016 */  lui        $t4, %hi(D_80159D64)
    /* 11CC30 8010DC80 8D8C9D64 */  lw         $t4, %lo(D_80159D64)($t4)
    /* 11CC34 8010DC84 00001025 */  or         $v0, $zero, $zero
    /* 11CC38 8010DC88 858D000C */  lh         $t5, 0xC($t4)
    /* 11CC3C 8010DC8C 01B07021 */  addu       $t6, $t5, $s0
    /* 11CC40 8010DC90 448E8000 */  mtc1       $t6, $f16
    /* 11CC44 8010DC94 00000000 */  nop
    /* 11CC48 8010DC98 468084A0 */  cvt.s.w    $f18, $f16
    /* 11CC4C 8010DC9C 4612003E */  c.le.s     $f0, $f18
    /* 11CC50 8010DCA0 00000000 */  nop
    /* 11CC54 8010DCA4 450200DD */  bc1fl      .L8010E01C_11CFCC
    /* 11CC58 8010DCA8 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 11CC5C 8010DCAC 24020001 */  addiu      $v0, $zero, 0x1
    /* 11CC60 8010DCB0 100000DA */  b          .L8010E01C_11CFCC
    /* 11CC64 8010DCB4 8FBF0044 */   lw        $ra, 0x44($sp)
  .L8010DCB8_11CC68:
    /* 11CC68 8010DCB8 24020004 */  addiu      $v0, $zero, 0x4
    /* 11CC6C 8010DCBC 10400038 */  beqz       $v0, .L8010DDA0_11CD50
    /* 11CC70 8010DCC0 24060003 */   addiu     $a2, $zero, 0x3
    /* 11CC74 8010DCC4 3C0F8016 */  lui        $t7, %hi(D_80159D5C)
    /* 11CC78 8010DCC8 8DEF9D5C */  lw         $t7, %lo(D_80159D5C)($t7)
    /* 11CC7C 8010DCCC 3C078016 */  lui        $a3, %hi(D_80159D84)
    /* 11CC80 8010DCD0 3C088016 */  lui        $t0, %hi(D_80159DA4)
    /* 11CC84 8010DCD4 25089DA4 */  addiu      $t0, $t0, %lo(D_80159DA4)
    /* 11CC88 8010DCD8 24E79D84 */  addiu      $a3, $a3, %lo(D_80159D84)
    /* 11CC8C 8010DCDC 85E90000 */  lh         $t1, 0x0($t7)
    /* 11CC90 8010DCE0 85EA0004 */  lh         $t2, 0x4($t7)
  .L8010DCE4_11CC94:
    /* 11CC94 8010DCE4 C4E40000 */  lwc1       $f4, 0x0($a3)
    /* 11CC98 8010DCE8 C5080000 */  lwc1       $f8, 0x0($t0)
    /* 11CC9C 8010DCEC 24E7FFFC */  addiu      $a3, $a3, -0x4
    /* 11CCA0 8010DCF0 4600218D */  trunc.w.s  $f6, $f4
    /* 11CCA4 8010DCF4 2508FFFC */  addiu      $t0, $t0, -0x4
    /* 11CCA8 8010DCF8 4600428D */  trunc.w.s  $f10, $f8
    /* 11CCAC 8010DCFC 44193000 */  mfc1       $t9, $f6
    /* 11CCB0 8010DD00 440D5000 */  mfc1       $t5, $f10
    /* 11CCB4 8010DD04 03295821 */  addu       $t3, $t9, $t1
    /* 11CCB8 8010DD08 01711823 */  subu       $v1, $t3, $s1
    /* 11CCBC 8010DD0C 00032823 */  negu       $a1, $v1
    /* 11CCC0 8010DD10 00A3082A */  slt        $at, $a1, $v1
    /* 11CCC4 8010DD14 01AA7021 */  addu       $t6, $t5, $t2
    /* 11CCC8 8010DD18 10200003 */  beqz       $at, .L8010DD28_11CCD8
    /* 11CCCC 8010DD1C 01D22023 */   subu      $a0, $t6, $s2
    /* 11CCD0 8010DD20 10000002 */  b          .L8010DD2C_11CCDC
    /* 11CCD4 8010DD24 00601025 */   or        $v0, $v1, $zero
  .L8010DD28_11CCD8:
    /* 11CCD8 8010DD28 00A01025 */  or         $v0, $a1, $zero
  .L8010DD2C_11CCDC:
    /* 11CCDC 8010DD2C 0202082A */  slt        $at, $s0, $v0
    /* 11CCE0 8010DD30 14200018 */  bnez       $at, .L8010DD94_11CD44
    /* 11CCE4 8010DD34 00041023 */   negu      $v0, $a0
    /* 11CCE8 8010DD38 0044082A */  slt        $at, $v0, $a0
    /* 11CCEC 8010DD3C 10200003 */  beqz       $at, .L8010DD4C_11CCFC
    /* 11CCF0 8010DD40 00402825 */   or        $a1, $v0, $zero
    /* 11CCF4 8010DD44 10000001 */  b          .L8010DD4C_11CCFC
    /* 11CCF8 8010DD48 00802825 */   or        $a1, $a0, $zero
  .L8010DD4C_11CCFC:
    /* 11CCFC 8010DD4C 0205082A */  slt        $at, $s0, $a1
    /* 11CD00 8010DD50 54200011 */  bnel       $at, $zero, .L8010DD98_11CD48
    /* 11CD04 8010DD54 00C01025 */   or        $v0, $a2, $zero
    /* 11CD08 8010DD58 00630019 */  multu      $v1, $v1
    /* 11CD0C 8010DD5C 00007812 */  mflo       $t7
    /* 11CD10 8010DD60 00000000 */  nop
    /* 11CD14 8010DD64 00000000 */  nop
    /* 11CD18 8010DD68 00840019 */  multu      $a0, $a0
    /* 11CD1C 8010DD6C 0000C012 */  mflo       $t8
    /* 11CD20 8010DD70 01F8C821 */  addu       $t9, $t7, $t8
    /* 11CD24 8010DD74 00000000 */  nop
    /* 11CD28 8010DD78 02100019 */  multu      $s0, $s0
    /* 11CD2C 8010DD7C 00005812 */  mflo       $t3
    /* 11CD30 8010DD80 032B082A */  slt        $at, $t9, $t3
    /* 11CD34 8010DD84 50200004 */  beql       $at, $zero, .L8010DD98_11CD48
    /* 11CD38 8010DD88 00C01025 */   or        $v0, $a2, $zero
    /* 11CD3C 8010DD8C 100000A2 */  b          .L8010E018_11CFC8
    /* 11CD40 8010DD90 24020001 */   addiu     $v0, $zero, 0x1
  .L8010DD94_11CD44:
    /* 11CD44 8010DD94 00C01025 */  or         $v0, $a2, $zero
  .L8010DD98_11CD48:
    /* 11CD48 8010DD98 14C0FFD2 */  bnez       $a2, .L8010DCE4_11CC94
    /* 11CD4C 8010DD9C 24C6FFFF */   addiu     $a2, $a2, -0x1
  .L8010DDA0_11CD50:
    /* 11CD50 8010DDA0 3C0C8016 */  lui        $t4, %hi(D_80159D5C)
    /* 11CD54 8010DDA4 8D8C9D5C */  lw         $t4, %lo(D_80159D5C)($t4)
    /* 11CD58 8010DDA8 0C007654 */  jal        coss
    /* 11CD5C 8010DDAC 95840006 */   lhu       $a0, 0x6($t4)
    /* 11CD60 8010DDB0 3C0D8016 */  lui        $t5, %hi(D_80159D5C)
    /* 11CD64 8010DDB4 8DAD9D5C */  lw         $t5, %lo(D_80159D5C)($t5)
    /* 11CD68 8010DDB8 A7A2004C */  sh         $v0, 0x4C($sp)
    /* 11CD6C 8010DDBC 0C007660 */  jal        sins
    /* 11CD70 8010DDC0 95A40006 */   lhu       $a0, 0x6($t5)
    /* 11CD74 8010DDC4 87AE004C */  lh         $t6, 0x4C($sp)
    /* 11CD78 8010DDC8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 11CD7C 8010DDCC 4481B800 */  mtc1       $at, $f23
    /* 11CD80 8010DDD0 448E2000 */  mtc1       $t6, $f4
    /* 11CD84 8010DDD4 4480B000 */  mtc1       $zero, $f22
    /* 11CD88 8010DDD8 44908000 */  mtc1       $s0, $f16
    /* 11CD8C 8010DDDC 468021A0 */  cvt.s.w    $f6, $f4
    /* 11CD90 8010DDE0 44919000 */  mtc1       $s1, $f18
    /* 11CD94 8010DDE4 46808521 */  cvt.d.w    $f20, $f16
    /* 11CD98 8010DDE8 46003221 */  cvt.d.s    $f8, $f6
    /* 11CD9C 8010DDEC 46809621 */  cvt.d.w    $f24, $f18
    /* 11CDA0 8010DDF0 44923000 */  mtc1       $s2, $f6
    /* 11CDA4 8010DDF4 46364283 */  div.d      $f10, $f8, $f22
    /* 11CDA8 8010DDF8 44824000 */  mtc1       $v0, $f8
    /* 11CDAC 8010DDFC 468036A1 */  cvt.d.w    $f26, $f6
    /* 11CDB0 8010DE00 46345402 */  mul.d      $f16, $f10, $f20
    /* 11CDB4 8010DE04 468042A0 */  cvt.s.w    $f10, $f8
    /* 11CDB8 8010DE08 46388480 */  add.d      $f18, $f16, $f24
    /* 11CDBC 8010DE0C 46005421 */  cvt.d.s    $f16, $f10
    /* 11CDC0 8010DE10 4620910D */  trunc.w.d  $f4, $f18
    /* 11CDC4 8010DE14 46368483 */  div.d      $f18, $f16, $f22
    /* 11CDC8 8010DE18 44042000 */  mfc1       $a0, $f4
    /* 11CDCC 8010DE1C 00000000 */  nop
    /* 11CDD0 8010DE20 0004C400 */  sll        $t8, $a0, 16
    /* 11CDD4 8010DE24 00182403 */  sra        $a0, $t8, 16
    /* 11CDD8 8010DE28 46349102 */  mul.d      $f4, $f18, $f20
    /* 11CDDC 8010DE2C 463A2180 */  add.d      $f6, $f4, $f26
    /* 11CDE0 8010DE30 4620320D */  trunc.w.d  $f8, $f6
    /* 11CDE4 8010DE34 44054000 */  mfc1       $a1, $f8
    /* 11CDE8 8010DE38 00000000 */  nop
    /* 11CDEC 8010DE3C 00056400 */  sll        $t4, $a1, 16
    /* 11CDF0 8010DE40 0C0433DF */  jal        func_8010CF7C_11BF2C
    /* 11CDF4 8010DE44 000C2C03 */   sra       $a1, $t4, 16
    /* 11CDF8 8010DE48 10400003 */  beqz       $v0, .L8010DE58_11CE08
    /* 11CDFC 8010DE4C 3C0E8016 */   lui       $t6, %hi(D_80159D5C)
    /* 11CE00 8010DE50 10000071 */  b          .L8010E018_11CFC8
    /* 11CE04 8010DE54 24020001 */   addiu     $v0, $zero, 0x1
  .L8010DE58_11CE08:
    /* 11CE08 8010DE58 8DCE9D5C */  lw         $t6, %lo(D_80159D5C)($t6)
    /* 11CE0C 8010DE5C 0C007654 */  jal        coss
    /* 11CE10 8010DE60 95C40006 */   lhu       $a0, 0x6($t6)
    /* 11CE14 8010DE64 3C0F8016 */  lui        $t7, %hi(D_80159D5C)
    /* 11CE18 8010DE68 8DEF9D5C */  lw         $t7, %lo(D_80159D5C)($t7)
    /* 11CE1C 8010DE6C A7A2004C */  sh         $v0, 0x4C($sp)
    /* 11CE20 8010DE70 0C007660 */  jal        sins
    /* 11CE24 8010DE74 95E40006 */   lhu       $a0, 0x6($t7)
    /* 11CE28 8010DE78 87B8004C */  lh         $t8, 0x4C($sp)
    /* 11CE2C 8010DE7C 44985000 */  mtc1       $t8, $f10
    /* 11CE30 8010DE80 00000000 */  nop
    /* 11CE34 8010DE84 46805420 */  cvt.s.w    $f16, $f10
    /* 11CE38 8010DE88 460084A1 */  cvt.d.s    $f18, $f16
    /* 11CE3C 8010DE8C 44828000 */  mtc1       $v0, $f16
    /* 11CE40 8010DE90 46369103 */  div.d      $f4, $f18, $f22
    /* 11CE44 8010DE94 468084A0 */  cvt.s.w    $f18, $f16
    /* 11CE48 8010DE98 46342182 */  mul.d      $f6, $f4, $f20
    /* 11CE4C 8010DE9C 46009121 */  cvt.d.s    $f4, $f18
    /* 11CE50 8010DEA0 4626C201 */  sub.d      $f8, $f24, $f6
    /* 11CE54 8010DEA4 46362183 */  div.d      $f6, $f4, $f22
    /* 11CE58 8010DEA8 4620428D */  trunc.w.d  $f10, $f8
    /* 11CE5C 8010DEAC 44045000 */  mfc1       $a0, $f10
    /* 11CE60 8010DEB0 00000000 */  nop
    /* 11CE64 8010DEB4 00045C00 */  sll        $t3, $a0, 16
    /* 11CE68 8010DEB8 000B2403 */  sra        $a0, $t3, 16
    /* 11CE6C 8010DEBC 46343202 */  mul.d      $f8, $f6, $f20
    /* 11CE70 8010DEC0 4628D281 */  sub.d      $f10, $f26, $f8
    /* 11CE74 8010DEC4 4620540D */  trunc.w.d  $f16, $f10
    /* 11CE78 8010DEC8 44058000 */  mfc1       $a1, $f16
    /* 11CE7C 8010DECC 00000000 */  nop
    /* 11CE80 8010DED0 00057400 */  sll        $t6, $a1, 16
    /* 11CE84 8010DED4 0C0433DF */  jal        func_8010CF7C_11BF2C
    /* 11CE88 8010DED8 000E2C03 */   sra       $a1, $t6, 16
    /* 11CE8C 8010DEDC 10400003 */  beqz       $v0, .L8010DEEC_11CE9C
    /* 11CE90 8010DEE0 3C188016 */   lui       $t8, %hi(D_80159D5C)
    /* 11CE94 8010DEE4 1000004C */  b          .L8010E018_11CFC8
    /* 11CE98 8010DEE8 24020001 */   addiu     $v0, $zero, 0x1
  .L8010DEEC_11CE9C:
    /* 11CE9C 8010DEEC 8F189D5C */  lw         $t8, %lo(D_80159D5C)($t8)
    /* 11CEA0 8010DEF0 0C007660 */  jal        sins
    /* 11CEA4 8010DEF4 97040006 */   lhu       $a0, 0x6($t8)
    /* 11CEA8 8010DEF8 3C198016 */  lui        $t9, %hi(D_80159D5C)
    /* 11CEAC 8010DEFC 8F399D5C */  lw         $t9, %lo(D_80159D5C)($t9)
    /* 11CEB0 8010DF00 A7A2004C */  sh         $v0, 0x4C($sp)
    /* 11CEB4 8010DF04 0C007654 */  jal        coss
    /* 11CEB8 8010DF08 97240006 */   lhu       $a0, 0x6($t9)
    /* 11CEBC 8010DF0C 87AB004C */  lh         $t3, 0x4C($sp)
    /* 11CEC0 8010DF10 448B9000 */  mtc1       $t3, $f18
    /* 11CEC4 8010DF14 00000000 */  nop
    /* 11CEC8 8010DF18 46809120 */  cvt.s.w    $f4, $f18
    /* 11CECC 8010DF1C 460021A1 */  cvt.d.s    $f6, $f4
    /* 11CED0 8010DF20 44822000 */  mtc1       $v0, $f4
    /* 11CED4 8010DF24 46363203 */  div.d      $f8, $f6, $f22
    /* 11CED8 8010DF28 468021A0 */  cvt.s.w    $f6, $f4
    /* 11CEDC 8010DF2C 46344282 */  mul.d      $f10, $f8, $f20
    /* 11CEE0 8010DF30 46003221 */  cvt.d.s    $f8, $f6
    /* 11CEE4 8010DF34 462AC401 */  sub.d      $f16, $f24, $f10
    /* 11CEE8 8010DF38 46364283 */  div.d      $f10, $f8, $f22
    /* 11CEEC 8010DF3C 4620848D */  trunc.w.d  $f18, $f16
    /* 11CEF0 8010DF40 44049000 */  mfc1       $a0, $f18
    /* 11CEF4 8010DF44 00000000 */  nop
    /* 11CEF8 8010DF48 00046C00 */  sll        $t5, $a0, 16
    /* 11CEFC 8010DF4C 000D2403 */  sra        $a0, $t5, 16
    /* 11CF00 8010DF50 46345402 */  mul.d      $f16, $f10, $f20
    /* 11CF04 8010DF54 463A8480 */  add.d      $f18, $f16, $f26
    /* 11CF08 8010DF58 4620910D */  trunc.w.d  $f4, $f18
    /* 11CF0C 8010DF5C 44052000 */  mfc1       $a1, $f4
    /* 11CF10 8010DF60 00000000 */  nop
    /* 11CF14 8010DF64 0005C400 */  sll        $t8, $a1, 16
    /* 11CF18 8010DF68 0C0433DF */  jal        func_8010CF7C_11BF2C
    /* 11CF1C 8010DF6C 00182C03 */   sra       $a1, $t8, 16
    /* 11CF20 8010DF70 10400003 */  beqz       $v0, .L8010DF80_11CF30
    /* 11CF24 8010DF74 3C0B8016 */   lui       $t3, %hi(D_80159D5C)
    /* 11CF28 8010DF78 10000027 */  b          .L8010E018_11CFC8
    /* 11CF2C 8010DF7C 24020001 */   addiu     $v0, $zero, 0x1
  .L8010DF80_11CF30:
    /* 11CF30 8010DF80 8D6B9D5C */  lw         $t3, %lo(D_80159D5C)($t3)
    /* 11CF34 8010DF84 0C007660 */  jal        sins
    /* 11CF38 8010DF88 95640006 */   lhu       $a0, 0x6($t3)
    /* 11CF3C 8010DF8C 3C0C8016 */  lui        $t4, %hi(D_80159D5C)
    /* 11CF40 8010DF90 8D8C9D5C */  lw         $t4, %lo(D_80159D5C)($t4)
    /* 11CF44 8010DF94 A7A2004C */  sh         $v0, 0x4C($sp)
    /* 11CF48 8010DF98 0C007654 */  jal        coss
    /* 11CF4C 8010DF9C 95840006 */   lhu       $a0, 0x6($t4)
    /* 11CF50 8010DFA0 87AD004C */  lh         $t5, 0x4C($sp)
    /* 11CF54 8010DFA4 448D3000 */  mtc1       $t5, $f6
    /* 11CF58 8010DFA8 00000000 */  nop
    /* 11CF5C 8010DFAC 46803220 */  cvt.s.w    $f8, $f6
    /* 11CF60 8010DFB0 460042A1 */  cvt.d.s    $f10, $f8
    /* 11CF64 8010DFB4 44824000 */  mtc1       $v0, $f8
    /* 11CF68 8010DFB8 46365403 */  div.d      $f16, $f10, $f22
    /* 11CF6C 8010DFBC 468042A0 */  cvt.s.w    $f10, $f8
    /* 11CF70 8010DFC0 46348482 */  mul.d      $f18, $f16, $f20
    /* 11CF74 8010DFC4 46005421 */  cvt.d.s    $f16, $f10
    /* 11CF78 8010DFC8 46389100 */  add.d      $f4, $f18, $f24
    /* 11CF7C 8010DFCC 46368483 */  div.d      $f18, $f16, $f22
    /* 11CF80 8010DFD0 4620218D */  trunc.w.d  $f6, $f4
    /* 11CF84 8010DFD4 44043000 */  mfc1       $a0, $f6
    /* 11CF88 8010DFD8 00000000 */  nop
    /* 11CF8C 8010DFDC 00047C00 */  sll        $t7, $a0, 16
    /* 11CF90 8010DFE0 000F2403 */  sra        $a0, $t7, 16
    /* 11CF94 8010DFE4 46349102 */  mul.d      $f4, $f18, $f20
    /* 11CF98 8010DFE8 4624D181 */  sub.d      $f6, $f26, $f4
    /* 11CF9C 8010DFEC 4620320D */  trunc.w.d  $f8, $f6
    /* 11CFA0 8010DFF0 44054000 */  mfc1       $a1, $f8
    /* 11CFA4 8010DFF4 00000000 */  nop
    /* 11CFA8 8010DFF8 00055C00 */  sll        $t3, $a1, 16
    /* 11CFAC 8010DFFC 0C0433DF */  jal        func_8010CF7C_11BF2C
    /* 11CFB0 8010E000 000B2C03 */   sra       $a1, $t3, 16
    /* 11CFB4 8010E004 50400004 */  beql       $v0, $zero, .L8010E018_11CFC8
    /* 11CFB8 8010E008 00001025 */   or        $v0, $zero, $zero
    /* 11CFBC 8010E00C 10000002 */  b          .L8010E018_11CFC8
    /* 11CFC0 8010E010 24020001 */   addiu     $v0, $zero, 0x1
    /* 11CFC4 8010E014 00001025 */  or         $v0, $zero, $zero
  .L8010E018_11CFC8:
    /* 11CFC8 8010E018 8FBF0044 */  lw         $ra, 0x44($sp)
  .L8010E01C_11CFCC:
    /* 11CFCC 8010E01C D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 11CFD0 8010E020 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* 11CFD4 8010E024 D7B80028 */  ldc1       $f24, 0x28($sp)
    /* 11CFD8 8010E028 D7BA0030 */  ldc1       $f26, 0x30($sp)
    /* 11CFDC 8010E02C 8FB00038 */  lw         $s0, 0x38($sp)
    /* 11CFE0 8010E030 8FB1003C */  lw         $s1, 0x3C($sp)
    /* 11CFE4 8010E034 8FB20040 */  lw         $s2, 0x40($sp)
    /* 11CFE8 8010E038 03E00008 */  jr         $ra
    /* 11CFEC 8010E03C 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_8010DC00_11CBB0
