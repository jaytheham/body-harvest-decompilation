nonmatching func_802D76B0_31B800, 0x49C

glabel func_802D76B0_31B800
    /* 31B800 802D76B0 308E00FF */  andi       $t6, $a0, 0xFF
    /* 31B804 802D76B4 000E7880 */  sll        $t7, $t6, 2
    /* 31B808 802D76B8 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* 31B80C 802D76BC 01EE7821 */  addu       $t7, $t7, $t6
    /* 31B810 802D76C0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 31B814 802D76C4 AFB00028 */  sw         $s0, 0x28($sp)
    /* 31B818 802D76C8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 31B81C 802D76CC 000F7900 */  sll        $t7, $t7, 4
    /* 31B820 802D76D0 01F88021 */  addu       $s0, $t7, $t8
    /* 31B824 802D76D4 8619000C */  lh         $t9, 0xC($s0)
    /* 31B828 802D76D8 3C058015 */  lui        $a1, %hi(D_8014DD5C)
    /* 31B82C 802D76DC AFBF002C */  sw         $ra, 0x2C($sp)
    /* 31B830 802D76E0 00194100 */  sll        $t0, $t9, 4
    /* 31B834 802D76E4 00A82821 */  addu       $a1, $a1, $t0
    /* 31B838 802D76E8 80A5DD5C */  lb         $a1, %lo(D_8014DD5C)($a1)
    /* 31B83C 802D76EC AFA40090 */  sw         $a0, 0x90($sp)
    /* 31B840 802D76F0 01C02025 */  or         $a0, $t6, $zero
    /* 31B844 802D76F4 AFA00058 */  sw         $zero, 0x58($sp)
    /* 31B848 802D76F8 A3AE0093 */  sb         $t6, 0x93($sp)
    /* 31B84C 802D76FC 24064000 */  addiu      $a2, $zero, 0x4000
    /* 31B850 802D7700 0C02188C */  jal        func_80086230_951E0
    /* 31B854 802D7704 A7A5008E */   sh        $a1, 0x8E($sp)
    /* 31B858 802D7708 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 31B85C 802D770C 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 31B860 802D7710 00044940 */  sll        $t1, $a0, 5
    /* 31B864 802D7714 01244823 */  subu       $t1, $t1, $a0
    /* 31B868 802D7718 00094880 */  sll        $t1, $t1, 2
    /* 31B86C 802D771C 01244821 */  addu       $t1, $t1, $a0
    /* 31B870 802D7720 000948C0 */  sll        $t1, $t1, 3
    /* 31B874 802D7724 0C007660 */  jal        sins
    /* 31B878 802D7728 3124FFFF */   andi      $a0, $t1, 0xFFFF
    /* 31B87C 802D772C 44822000 */  mtc1       $v0, $f4
    /* 31B880 802D7730 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31B884 802D7734 44815800 */  mtc1       $at, $f11
    /* 31B888 802D7738 468021A0 */  cvt.s.w    $f6, $f4
    /* 31B88C 802D773C 44805000 */  mtc1       $zero, $f10
    /* 31B890 802D7740 3C014024 */  lui        $at, (0x40240000 >> 16)
    /* 31B894 802D7744 44819800 */  mtc1       $at, $f19
    /* 31B898 802D7748 44809000 */  mtc1       $zero, $f18
    /* 31B89C 802D774C 87AB008E */  lh         $t3, 0x8E($sp)
    /* 31B8A0 802D7750 46003221 */  cvt.d.s    $f8, $f6
    /* 31B8A4 802D7754 3C0D8015 */  lui        $t5, %hi(D_8014DD50)
    /* 31B8A8 802D7758 462A4403 */  div.d      $f16, $f8, $f10
    /* 31B8AC 802D775C 25ADDD50 */  addiu      $t5, $t5, %lo(D_8014DD50)
    /* 31B8B0 802D7760 000B6100 */  sll        $t4, $t3, 4
    /* 31B8B4 802D7764 018D1821 */  addu       $v1, $t4, $t5
    /* 31B8B8 802D7768 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 31B8BC 802D776C AFA30040 */  sw         $v1, 0x40($sp)
    /* 31B8C0 802D7770 46328102 */  mul.d      $f4, $f16, $f18
    /* 31B8C4 802D7774 4620218D */  trunc.w.d  $f6, $f4
    /* 31B8C8 802D7778 440F3000 */  mfc1       $t7, $f6
    /* 31B8CC 802D777C 00000000 */  nop
    /* 31B8D0 802D7780 A46F0002 */  sh         $t7, 0x2($v1)
    /* 31B8D4 802D7784 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 31B8D8 802D7788 0004C080 */  sll        $t8, $a0, 2
    /* 31B8DC 802D778C 0304C023 */  subu       $t8, $t8, $a0
    /* 31B8E0 802D7790 0018C100 */  sll        $t8, $t8, 4
    /* 31B8E4 802D7794 0304C023 */  subu       $t8, $t8, $a0
    /* 31B8E8 802D7798 0018C0C0 */  sll        $t8, $t8, 3
    /* 31B8EC 802D779C 0304C023 */  subu       $t8, $t8, $a0
    /* 31B8F0 802D77A0 0018C080 */  sll        $t8, $t8, 2
    /* 31B8F4 802D77A4 0C007660 */  jal        sins
    /* 31B8F8 802D77A8 3304FFFF */   andi      $a0, $t8, 0xFFFF
    /* 31B8FC 802D77AC 44824000 */  mtc1       $v0, $f8
    /* 31B900 802D77B0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31B904 802D77B4 44819800 */  mtc1       $at, $f19
    /* 31B908 802D77B8 468042A0 */  cvt.s.w    $f10, $f8
    /* 31B90C 802D77BC 44809000 */  mtc1       $zero, $f18
    /* 31B910 802D77C0 3C01802E */  lui        $at, %hi(D_802E7B30)
    /* 31B914 802D77C4 D4267B30 */  ldc1       $f6, %lo(D_802E7B30)($at)
    /* 31B918 802D77C8 8FA30040 */  lw         $v1, 0x40($sp)
    /* 31B91C 802D77CC 860A002C */  lh         $t2, 0x2C($s0)
    /* 31B920 802D77D0 46005421 */  cvt.d.s    $f16, $f10
    /* 31B924 802D77D4 27AC0088 */  addiu      $t4, $sp, 0x88
    /* 31B928 802D77D8 46328103 */  div.d      $f4, $f16, $f18
    /* 31B92C 802D77DC 27AD0084 */  addiu      $t5, $sp, 0x84
    /* 31B930 802D77E0 27AE0080 */  addiu      $t6, $sp, 0x80
    /* 31B934 802D77E4 000A5823 */  negu       $t3, $t2
    /* 31B938 802D77E8 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 31B93C 802D77EC AFAD0014 */  sw         $t5, 0x14($sp)
    /* 31B940 802D77F0 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 31B944 802D77F4 02002025 */  or         $a0, $s0, $zero
    /* 31B948 802D77F8 A46B000A */  sh         $t3, 0xA($v1)
    /* 31B94C 802D77FC 84650000 */  lh         $a1, 0x0($v1)
    /* 31B950 802D7800 84660002 */  lh         $a2, 0x2($v1)
    /* 31B954 802D7804 84670004 */  lh         $a3, 0x4($v1)
    /* 31B958 802D7808 46262202 */  mul.d      $f8, $f4, $f6
    /* 31B95C 802D780C 4620428D */  trunc.w.d  $f10, $f8
    /* 31B960 802D7810 44095000 */  mfc1       $t1, $f10
    /* 31B964 802D7814 0C04A10A */  jal        func_80128428_1373D8
    /* 31B968 802D7818 A4690008 */   sh        $t1, 0x8($v1)
    /* 31B96C 802D781C 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 31B970 802D7820 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 31B974 802D7824 0C021395 */  jal        func_80084E54_93E04
    /* 31B978 802D7828 02002825 */   or        $a1, $s0, $zero
    /* 31B97C 802D782C 8FA30040 */  lw         $v1, 0x40($sp)
    /* 31B980 802D7830 86180006 */  lh         $t8, 0x6($s0)
    /* 31B984 802D7834 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 31B988 802D7838 946F0006 */  lhu        $t7, 0x6($v1)
    /* 31B98C 802D783C 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 31B990 802D7840 2408C000 */  addiu      $t0, $zero, -0x4000
    /* 31B994 802D7844 01F8C823 */  subu       $t9, $t7, $t8
    /* 31B998 802D7848 01194823 */  subu       $t1, $t0, $t9
    /* 31B99C 802D784C AFA2007C */  sw         $v0, 0x7C($sp)
    /* 31B9A0 802D7850 A7A9005E */  sh         $t1, 0x5E($sp)
    /* 31B9A4 802D7854 8FAB0088 */  lw         $t3, 0x88($sp)
    /* 31B9A8 802D7858 8FAD0080 */  lw         $t5, 0x80($sp)
    /* 31B9AC 802D785C 848A0000 */  lh         $t2, 0x0($a0)
    /* 31B9B0 802D7860 848C0004 */  lh         $t4, 0x4($a0)
    /* 31B9B4 802D7864 014B2823 */  subu       $a1, $t2, $t3
    /* 31B9B8 802D7868 018D3023 */  subu       $a2, $t4, $t5
    /* 31B9BC 802D786C 44869000 */  mtc1       $a2, $f18
    /* 31B9C0 802D7870 44858000 */  mtc1       $a1, $f16
    /* 31B9C4 802D7874 468093A0 */  cvt.s.w    $f14, $f18
    /* 31B9C8 802D7878 46808320 */  cvt.s.w    $f12, $f16
    /* 31B9CC 802D787C E7AE0038 */  swc1       $f14, 0x38($sp)
    /* 31B9D0 802D7880 0C000E09 */  jal        func_80003824_4424
    /* 31B9D4 802D7884 E7AC003C */   swc1      $f12, 0x3C($sp)
    /* 31B9D8 802D7888 C7AC003C */  lwc1       $f12, 0x3C($sp)
    /* 31B9DC 802D788C C7AE0038 */  lwc1       $f14, 0x38($sp)
    /* 31B9E0 802D7890 0C000E09 */  jal        func_80003824_4424
    /* 31B9E4 802D7894 A7A2004A */   sh        $v0, 0x4A($sp)
    /* 31B9E8 802D7898 87A3005E */  lh         $v1, 0x5E($sp)
    /* 31B9EC 802D789C 87A8004A */  lh         $t0, 0x4A($sp)
    /* 31B9F0 802D78A0 240F4000 */  addiu      $t7, $zero, 0x4000
    /* 31B9F4 802D78A4 00437023 */  subu       $t6, $v0, $v1
    /* 31B9F8 802D78A8 0103C823 */  subu       $t9, $t0, $v1
    /* 31B9FC 802D78AC 2729C000 */  addiu      $t1, $t9, -0x4000
    /* 31BA00 802D78B0 01EEC023 */  subu       $t8, $t7, $t6
    /* 31BA04 802D78B4 0309082A */  slt        $at, $t8, $t1
    /* 31BA08 802D78B8 C7AC003C */  lwc1       $f12, 0x3C($sp)
    /* 31BA0C 802D78BC 10200007 */  beqz       $at, .L802D78DC_31BA2C
    /* 31BA10 802D78C0 C7AE0038 */   lwc1      $f14, 0x38($sp)
    /* 31BA14 802D78C4 0C000E09 */  jal        func_80003824_4424
    /* 31BA18 802D78C8 00000000 */   nop
    /* 31BA1C 802D78CC 87AA005E */  lh         $t2, 0x5E($sp)
    /* 31BA20 802D78D0 004A1823 */  subu       $v1, $v0, $t2
    /* 31BA24 802D78D4 10000007 */  b          .L802D78F4_31BA44
    /* 31BA28 802D78D8 2463C000 */   addiu     $v1, $v1, -0x4000
  .L802D78DC_31BA2C:
    /* 31BA2C 802D78DC 0C000E09 */  jal        func_80003824_4424
    /* 31BA30 802D78E0 00000000 */   nop
    /* 31BA34 802D78E4 87AB005E */  lh         $t3, 0x5E($sp)
    /* 31BA38 802D78E8 240D4000 */  addiu      $t5, $zero, 0x4000
    /* 31BA3C 802D78EC 004B6023 */  subu       $t4, $v0, $t3
    /* 31BA40 802D78F0 01AC1823 */  subu       $v1, $t5, $t4
  .L802D78F4_31BA44:
    /* 31BA44 802D78F4 28612000 */  slti       $at, $v1, 0x2000
    /* 31BA48 802D78F8 10200002 */  beqz       $at, .L802D7904_31BA54
    /* 31BA4C 802D78FC 240F0001 */   addiu     $t7, $zero, 0x1
    /* 31BA50 802D7900 AFAF0058 */  sw         $t7, 0x58($sp)
  .L802D7904_31BA54:
    /* 31BA54 802D7904 8FAE007C */  lw         $t6, 0x7C($sp)
    /* 31BA58 802D7908 8FA80058 */  lw         $t0, 0x58($sp)
    /* 31BA5C 802D790C 240C001F */  addiu      $t4, $zero, 0x1F
    /* 31BA60 802D7910 29C10A8C */  slti       $at, $t6, 0xA8C
    /* 31BA64 802D7914 50200057 */  beql       $at, $zero, .L802D7A74_31BBC4
    /* 31BA68 802D7918 A60C001E */   sh        $t4, 0x1E($s0)
    /* 31BA6C 802D791C 11000054 */  beqz       $t0, .L802D7A70_31BBC0
    /* 31BA70 802D7920 93A40093 */   lbu       $a0, 0x93($sp)
    /* 31BA74 802D7924 00002825 */  or         $a1, $zero, $zero
    /* 31BA78 802D7928 0C021C73 */  jal        func_800871CC_9617C
    /* 31BA7C 802D792C 24060014 */   addiu     $a2, $zero, 0x14
    /* 31BA80 802D7930 10400051 */  beqz       $v0, .L802D7A78_31BBC8
    /* 31BA84 802D7934 240D3000 */   addiu     $t5, $zero, 0x3000
    /* 31BA88 802D7938 8219003D */  lb         $t9, 0x3D($s0)
    /* 31BA8C 802D793C 24010003 */  addiu      $at, $zero, 0x3
    /* 31BA90 802D7940 240A0046 */  addiu      $t2, $zero, 0x46
    /* 31BA94 802D7944 27380001 */  addiu      $t8, $t9, 0x1
    /* 31BA98 802D7948 A218003D */  sb         $t8, 0x3D($s0)
    /* 31BA9C 802D794C 8209003D */  lb         $t1, 0x3D($s0)
    /* 31BAA0 802D7950 240B000C */  addiu      $t3, $zero, 0xC
    /* 31BAA4 802D7954 55210005 */  bnel       $t1, $at, .L802D796C_31BABC
    /* 31BAA8 802D7958 A60B001E */   sh        $t3, 0x1E($s0)
    /* 31BAAC 802D795C A60A001E */  sh         $t2, 0x1E($s0)
    /* 31BAB0 802D7960 10000002 */  b          .L802D796C_31BABC
    /* 31BAB4 802D7964 A200003D */   sb        $zero, 0x3D($s0)
    /* 31BAB8 802D7968 A60B001E */  sh         $t3, 0x1E($s0)
  .L802D796C_31BABC:
    /* 31BABC 802D796C 97A4005E */  lhu        $a0, 0x5E($sp)
    /* 31BAC0 802D7970 A60D002C */  sh         $t5, 0x2C($s0)
    /* 31BAC4 802D7974 0C007660 */  jal        sins
    /* 31BAC8 802D7978 AFA40040 */   sw        $a0, 0x40($sp)
    /* 31BACC 802D797C 44822000 */  mtc1       $v0, $f4
    /* 31BAD0 802D7980 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31BAD4 802D7984 44815800 */  mtc1       $at, $f11
    /* 31BAD8 802D7988 468021A0 */  cvt.s.w    $f6, $f4
    /* 31BADC 802D798C 44805000 */  mtc1       $zero, $f10
    /* 31BAE0 802D7990 8FA40040 */  lw         $a0, 0x40($sp)
    /* 31BAE4 802D7994 46003221 */  cvt.d.s    $f8, $f6
    /* 31BAE8 802D7998 462A4403 */  div.d      $f16, $f8, $f10
    /* 31BAEC 802D799C 46208487 */  neg.d      $f18, $f16
    /* 31BAF0 802D79A0 46209120 */  cvt.s.d    $f4, $f18
    /* 31BAF4 802D79A4 0C007654 */  jal        coss
    /* 31BAF8 802D79A8 E7A4006C */   swc1      $f4, 0x6C($sp)
    /* 31BAFC 802D79AC 8FAC0088 */  lw         $t4, 0x88($sp)
    /* 31BB00 802D79B0 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
    /* 31BB04 802D79B4 44810000 */  mtc1       $at, $f0
    /* 31BB08 802D79B8 C7AA006C */  lwc1       $f10, 0x6C($sp)
    /* 31BB0C 802D79BC 448C3000 */  mtc1       $t4, $f6
    /* 31BB10 802D79C0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31BB14 802D79C4 46005402 */  mul.s      $f16, $f10, $f0
    /* 31BB18 802D79C8 44818800 */  mtc1       $at, $f17
    /* 31BB1C 802D79CC 8FB90080 */  lw         $t9, 0x80($sp)
    /* 31BB20 802D79D0 87A50086 */  lh         $a1, 0x86($sp)
    /* 31BB24 802D79D4 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 31BB28 802D79D8 46803220 */  cvt.s.w    $f8, $f6
    /* 31BB2C 802D79DC 44823000 */  mtc1       $v0, $f6
    /* 31BB30 802D79E0 00000000 */  nop
    /* 31BB34 802D79E4 468032A0 */  cvt.s.w    $f10, $f6
    /* 31BB38 802D79E8 46104480 */  add.s      $f18, $f8, $f16
    /* 31BB3C 802D79EC 44808000 */  mtc1       $zero, $f16
    /* 31BB40 802D79F0 46005221 */  cvt.d.s    $f8, $f10
    /* 31BB44 802D79F4 4600910D */  trunc.w.s  $f4, $f18
    /* 31BB48 802D79F8 44995000 */  mtc1       $t9, $f10
    /* 31BB4C 802D79FC 46304483 */  div.d      $f18, $f8, $f16
    /* 31BB50 802D7A00 44042000 */  mfc1       $a0, $f4
    /* 31BB54 802D7A04 46805220 */  cvt.s.w    $f8, $f10
    /* 31BB58 802D7A08 00047400 */  sll        $t6, $a0, 16
    /* 31BB5C 802D7A0C 000E2403 */  sra        $a0, $t6, 16
    /* 31BB60 802D7A10 46209120 */  cvt.s.d    $f4, $f18
    /* 31BB64 802D7A14 46002182 */  mul.s      $f6, $f4, $f0
    /* 31BB68 802D7A18 46064400 */  add.s      $f16, $f8, $f6
    /* 31BB6C 802D7A1C 4600848D */  trunc.w.s  $f18, $f16
    /* 31BB70 802D7A20 44069000 */  mfc1       $a2, $f18
    /* 31BB74 802D7A24 00000000 */  nop
    /* 31BB78 802D7A28 00064C00 */  sll        $t1, $a2, 16
    /* 31BB7C 802D7A2C 0C037A6E */  jal        func_800DE9B8_ED968
    /* 31BB80 802D7A30 00093403 */   sra       $a2, $t1, 16
    /* 31BB84 802D7A34 860B0000 */  lh         $t3, 0x0($s0)
    /* 31BB88 802D7A38 860D0004 */  lh         $t5, 0x4($s0)
    /* 31BB8C 802D7A3C 240200FF */  addiu      $v0, $zero, 0xFF
    /* 31BB90 802D7A40 A3A20051 */  sb         $v0, 0x51($sp)
    /* 31BB94 802D7A44 A3A20050 */  sb         $v0, 0x50($sp)
    /* 31BB98 802D7A48 A3A20052 */  sb         $v0, 0x52($sp)
    /* 31BB9C 802D7A4C 27A40054 */  addiu      $a0, $sp, 0x54
    /* 31BBA0 802D7A50 27A50050 */  addiu      $a1, $sp, 0x50
    /* 31BBA4 802D7A54 240600C8 */  addiu      $a2, $zero, 0xC8
    /* 31BBA8 802D7A58 24070005 */  addiu      $a3, $zero, 0x5
    /* 31BBAC 802D7A5C A7AB0054 */  sh         $t3, 0x54($sp)
    /* 31BBB0 802D7A60 0C02C8D5 */  jal        func_800B2354_C1304
    /* 31BBB4 802D7A64 A7AD0056 */   sh        $t5, 0x56($sp)
    /* 31BBB8 802D7A68 10000004 */  b          .L802D7A7C_31BBCC
    /* 31BBBC 802D7A6C 8E0F0020 */   lw        $t7, 0x20($s0)
  .L802D7A70_31BBC0:
    /* 31BBC0 802D7A70 A60C001E */  sh         $t4, 0x1E($s0)
  .L802D7A74_31BBC4:
    /* 31BBC4 802D7A74 A200003D */  sb         $zero, 0x3D($s0)
  .L802D7A78_31BBC8:
    /* 31BBC8 802D7A78 8E0F0020 */  lw         $t7, 0x20($s0)
  .L802D7A7C_31BBCC:
    /* 31BBCC 802D7A7C 240700B4 */  addiu      $a3, $zero, 0xB4
    /* 31BBD0 802D7A80 240A001E */  addiu      $t2, $zero, 0x1E
    /* 31BBD4 802D7A84 000F7000 */  sll        $t6, $t7, 0
    /* 31BBD8 802D7A88 05C1000A */  bgez       $t6, .L802D7AB4_31BC04
    /* 31BBDC 802D7A8C 240B0032 */   addiu     $t3, $zero, 0x32
    /* 31BBE0 802D7A90 8602002C */  lh         $v0, 0x2C($s0)
    /* 31BBE4 802D7A94 24083000 */  addiu      $t0, $zero, 0x3000
    /* 31BBE8 802D7A98 24421000 */  addiu      $v0, $v0, 0x1000
    /* 31BBEC 802D7A9C 28413001 */  slti       $at, $v0, 0x3001
    /* 31BBF0 802D7AA0 54200004 */  bnel       $at, $zero, .L802D7AB4_31BC04
    /* 31BBF4 802D7AA4 A602002C */   sh        $v0, 0x2C($s0)
    /* 31BBF8 802D7AA8 10000002 */  b          .L802D7AB4_31BC04
    /* 31BBFC 802D7AAC A608002C */   sh        $t0, 0x2C($s0)
    /* 31BC00 802D7AB0 A602002C */  sh         $v0, 0x2C($s0)
  .L802D7AB4_31BC04:
    /* 31BC04 802D7AB4 8619001E */  lh         $t9, 0x1E($s0)
    /* 31BC08 802D7AB8 2401001E */  addiu      $at, $zero, 0x1E
    /* 31BC0C 802D7ABC 87A4008A */  lh         $a0, 0x8A($sp)
    /* 31BC10 802D7AC0 17210015 */  bne        $t9, $at, .L802D7B18_31BC68
    /* 31BC14 802D7AC4 8FA50084 */   lw        $a1, 0x84($sp)
    /* 31BC18 802D7AC8 24A5FFF6 */  addiu      $a1, $a1, -0xA
    /* 31BC1C 802D7ACC 0005C400 */  sll        $t8, $a1, 16
    /* 31BC20 802D7AD0 240D0028 */  addiu      $t5, $zero, 0x28
    /* 31BC24 802D7AD4 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 31BC28 802D7AD8 00182C03 */  sra        $a1, $t8, 16
    /* 31BC2C 802D7ADC 87A60082 */  lh         $a2, 0x82($sp)
    /* 31BC30 802D7AE0 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 31BC34 802D7AE4 0C0315A9 */  jal        func_800C56A4_D4654
    /* 31BC38 802D7AE8 AFAB0014 */   sw        $t3, 0x14($sp)
    /* 31BC3C 802D7AEC 87A4008A */  lh         $a0, 0x8A($sp)
    /* 31BC40 802D7AF0 87A50086 */  lh         $a1, 0x86($sp)
    /* 31BC44 802D7AF4 87A60082 */  lh         $a2, 0x82($sp)
    /* 31BC48 802D7AF8 00043C00 */  sll        $a3, $a0, 16
    /* 31BC4C 802D7AFC 00076403 */  sra        $t4, $a3, 16
    /* 31BC50 802D7B00 240F001E */  addiu      $t7, $zero, 0x1E
    /* 31BC54 802D7B04 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 31BC58 802D7B08 01803825 */  or         $a3, $t4, $zero
    /* 31BC5C 802D7B0C AFA50010 */  sw         $a1, 0x10($sp)
    /* 31BC60 802D7B10 0C0345AF */  jal        func_800D16BC_E066C
    /* 31BC64 802D7B14 AFA60014 */   sw        $a2, 0x14($sp)
  .L802D7B18_31BC68:
    /* 31BC68 802D7B18 8602002C */  lh         $v0, 0x2C($s0)
    /* 31BC6C 802D7B1C 10400002 */  beqz       $v0, .L802D7B28_31BC78
    /* 31BC70 802D7B20 244EFF00 */   addiu     $t6, $v0, -0x100
    /* 31BC74 802D7B24 A60E002C */  sh         $t6, 0x2C($s0)
  .L802D7B28_31BC78:
    /* 31BC78 802D7B28 8602001E */  lh         $v0, 0x1E($s0)
    /* 31BC7C 802D7B2C 10400002 */  beqz       $v0, .L802D7B38_31BC88
    /* 31BC80 802D7B30 2448FFFF */   addiu     $t0, $v0, -0x1
    /* 31BC84 802D7B34 A608001E */  sh         $t0, 0x1E($s0)
  .L802D7B38_31BC88:
    /* 31BC88 802D7B38 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 31BC8C 802D7B3C 8FB00028 */  lw         $s0, 0x28($sp)
    /* 31BC90 802D7B40 27BD0090 */  addiu      $sp, $sp, 0x90
    /* 31BC94 802D7B44 03E00008 */  jr         $ra
    /* 31BC98 802D7B48 00000000 */   nop
endlabel func_802D76B0_31B800
