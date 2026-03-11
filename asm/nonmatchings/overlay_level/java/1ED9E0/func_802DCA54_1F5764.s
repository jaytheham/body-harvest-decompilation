nonmatching func_802DCA54_1F5764, 0x380

glabel func_802DCA54_1F5764
    /* 1F5764 802DCA54 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* 1F5768 802DCA58 AFA40080 */  sw         $a0, 0x80($sp)
    /* 1F576C 802DCA5C 93AF0083 */  lbu        $t7, 0x83($sp)
    /* 1F5770 802DCA60 3C198005 */  lui        $t9, %hi(alienInstances)
    /* 1F5774 802DCA64 AFB10028 */  sw         $s1, 0x28($sp)
    /* 1F5778 802DCA68 000FC080 */  sll        $t8, $t7, 2
    /* 1F577C 802DCA6C 030FC021 */  addu       $t8, $t8, $t7
    /* 1F5780 802DCA70 0018C100 */  sll        $t8, $t8, 4
    /* 1F5784 802DCA74 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* 1F5788 802DCA78 03198821 */  addu       $s1, $t8, $t9
    /* 1F578C 802DCA7C 862B0000 */  lh         $t3, 0x0($s1)
    /* 1F5790 802DCA80 862C0014 */  lh         $t4, 0x14($s1)
    /* 1F5794 802DCA84 240E01C2 */  addiu      $t6, $zero, 0x1C2
    /* 1F5798 802DCA88 AFAE006C */  sw         $t6, 0x6C($sp)
    /* 1F579C 802DCA8C 016C1023 */  subu       $v0, $t3, $t4
    /* 1F57A0 802DCA90 00420019 */  multu      $v0, $v0
    /* 1F57A4 802DCA94 862E0018 */  lh         $t6, 0x18($s1)
    /* 1F57A8 802DCA98 862D0004 */  lh         $t5, 0x4($s1)
    /* 1F57AC 802DCA9C 8628000C */  lh         $t0, 0xC($s1)
    /* 1F57B0 802DCAA0 3C0A8015 */  lui        $t2, %hi(D_8014DD5C)
    /* 1F57B4 802DCAA4 01AE1823 */  subu       $v1, $t5, $t6
    /* 1F57B8 802DCAA8 00084900 */  sll        $t1, $t0, 4
    /* 1F57BC 802DCAAC 01495021 */  addu       $t2, $t2, $t1
    /* 1F57C0 802DCAB0 3C010005 */  lui        $at, (0x57E40 >> 16)
    /* 1F57C4 802DCAB4 814ADD5C */  lb         $t2, %lo(D_8014DD5C)($t2)
    /* 1F57C8 802DCAB8 00007812 */  mflo       $t7
    /* 1F57CC 802DCABC 34217E40 */  ori        $at, $at, (0x57E40 & 0xFFFF)
    /* 1F57D0 802DCAC0 AFB70040 */  sw         $s7, 0x40($sp)
    /* 1F57D4 802DCAC4 00630019 */  multu      $v1, $v1
    /* 1F57D8 802DCAC8 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 1F57DC 802DCACC AFB6003C */  sw         $s6, 0x3C($sp)
    /* 1F57E0 802DCAD0 AFB50038 */  sw         $s5, 0x38($sp)
    /* 1F57E4 802DCAD4 AFB40034 */  sw         $s4, 0x34($sp)
    /* 1F57E8 802DCAD8 AFB30030 */  sw         $s3, 0x30($sp)
    /* 1F57EC 802DCADC AFB2002C */  sw         $s2, 0x2C($sp)
    /* 1F57F0 802DCAE0 AFB00024 */  sw         $s0, 0x24($sp)
    /* 1F57F4 802DCAE4 F7B60018 */  sdc1       $f22, 0x18($sp)
    /* 1F57F8 802DCAE8 F7B40010 */  sdc1       $f20, 0x10($sp)
    /* 1F57FC 802DCAEC 0000C012 */  mflo       $t8
    /* 1F5800 802DCAF0 01F8C821 */  addu       $t9, $t7, $t8
    /* 1F5804 802DCAF4 0321082A */  slt        $at, $t9, $at
    /* 1F5808 802DCAF8 0000B825 */  or         $s7, $zero, $zero
    /* 1F580C 802DCAFC 1020000B */  beqz       $at, .L802DCB2C_1F583C
    /* 1F5810 802DCB00 A3AA007E */   sb        $t2, 0x7E($sp)
    /* 1F5814 802DCB04 8E220020 */  lw         $v0, 0x20($s1)
    /* 1F5818 802DCB08 240C0096 */  addiu      $t4, $zero, 0x96
    /* 1F581C 802DCB0C 30480010 */  andi       $t0, $v0, 0x10
    /* 1F5820 802DCB10 15000006 */  bnez       $t0, .L802DCB2C_1F583C
    /* 1F5824 802DCB14 34490010 */   ori       $t1, $v0, 0x10
    /* 1F5828 802DCB18 AE290020 */  sw         $t1, 0x20($s1)
    /* 1F582C 802DCB1C 352B2000 */  ori        $t3, $t1, 0x2000
    /* 1F5830 802DCB20 AE2B0020 */  sw         $t3, 0x20($s1)
    /* 1F5834 802DCB24 A22C0026 */  sb         $t4, 0x26($s1)
    /* 1F5838 802DCB28 A620001E */  sh         $zero, 0x1E($s1)
  .L802DCB2C_1F583C:
    /* 1F583C 802DCB2C 8E220020 */  lw         $v0, 0x20($s1)
    /* 1F5840 802DCB30 304D2000 */  andi       $t5, $v0, 0x2000
    /* 1F5844 802DCB34 11A00011 */  beqz       $t5, .L802DCB7C_1F588C
    /* 1F5848 802DCB38 304E8000 */   andi      $t6, $v0, 0x8000
    /* 1F584C 802DCB3C 11C00005 */  beqz       $t6, .L802DCB54_1F5864
    /* 1F5850 802DCB40 93A40083 */   lbu       $a0, 0x83($sp)
    /* 1F5854 802DCB44 0C0B71CE */  jal        func_802DC738_1F5448
    /* 1F5858 802DCB48 93A40083 */   lbu       $a0, 0x83($sp)
    /* 1F585C 802DCB4C 1000000A */  b          .L802DCB78_1F5888
    /* 1F5860 802DCB50 24190190 */   addiu     $t9, $zero, 0x190
  .L802DCB54_1F5864:
    /* 1F5864 802DCB54 0C021437 */  jal        func_800850DC_9408C
    /* 1F5868 802DCB58 24051000 */   addiu     $a1, $zero, 0x1000
    /* 1F586C 802DCB5C 50400006 */  beql       $v0, $zero, .L802DCB78_1F5888
    /* 1F5870 802DCB60 24190190 */   addiu     $t9, $zero, 0x190
    /* 1F5874 802DCB64 8E2F0020 */  lw         $t7, 0x20($s1)
    /* 1F5878 802DCB68 A2200036 */  sb         $zero, 0x36($s1)
    /* 1F587C 802DCB6C 35F88000 */  ori        $t8, $t7, 0x8000
    /* 1F5880 802DCB70 AE380020 */  sw         $t8, 0x20($s1)
    /* 1F5884 802DCB74 24190190 */  addiu      $t9, $zero, 0x190
  .L802DCB78_1F5888:
    /* 1F5888 802DCB78 AFB9006C */  sw         $t9, 0x6C($sp)
  .L802DCB7C_1F588C:
    /* 1F588C 802DCB7C 86240006 */  lh         $a0, 0x6($s1)
    /* 1F5890 802DCB80 2484C000 */  addiu      $a0, $a0, -0x4000
    /* 1F5894 802DCB84 3088FFFF */  andi       $t0, $a0, 0xFFFF
    /* 1F5898 802DCB88 0C007660 */  jal        sins
    /* 1F589C 802DCB8C 01002025 */   or        $a0, $t0, $zero
    /* 1F58A0 802DCB90 44822000 */  mtc1       $v0, $f4
    /* 1F58A4 802DCB94 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F58A8 802DCB98 44815800 */  mtc1       $at, $f11
    /* 1F58AC 802DCB9C 468021A0 */  cvt.s.w    $f6, $f4
    /* 1F58B0 802DCBA0 44805000 */  mtc1       $zero, $f10
    /* 1F58B4 802DCBA4 3C014070 */  lui        $at, (0x40700000 >> 16)
    /* 1F58B8 802DCBA8 44819800 */  mtc1       $at, $f19
    /* 1F58BC 802DCBAC 44809000 */  mtc1       $zero, $f18
    /* 1F58C0 802DCBB0 86240006 */  lh         $a0, 0x6($s1)
    /* 1F58C4 802DCBB4 46003221 */  cvt.d.s    $f8, $f6
    /* 1F58C8 802DCBB8 462A4403 */  div.d      $f16, $f8, $f10
    /* 1F58CC 802DCBBC 2484C000 */  addiu      $a0, $a0, -0x4000
    /* 1F58D0 802DCBC0 3089FFFF */  andi       $t1, $a0, 0xFFFF
    /* 1F58D4 802DCBC4 01202025 */  or         $a0, $t1, $zero
    /* 1F58D8 802DCBC8 46328102 */  mul.d      $f4, $f16, $f18
    /* 1F58DC 802DCBCC 0C007654 */  jal        coss
    /* 1F58E0 802DCBD0 46202520 */   cvt.s.d   $f20, $f4
    /* 1F58E4 802DCBD4 44823000 */  mtc1       $v0, $f6
    /* 1F58E8 802DCBD8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F58EC 802DCBDC 44818800 */  mtc1       $at, $f17
    /* 1F58F0 802DCBE0 46803220 */  cvt.s.w    $f8, $f6
    /* 1F58F4 802DCBE4 44808000 */  mtc1       $zero, $f16
    /* 1F58F8 802DCBE8 3C01C070 */  lui        $at, (0xC0700000 >> 16)
    /* 1F58FC 802DCBEC 44812800 */  mtc1       $at, $f5
    /* 1F5900 802DCBF0 44802000 */  mtc1       $zero, $f4
    /* 1F5904 802DCBF4 3C158025 */  lui        $s5, %hi(alienSpecs)
    /* 1F5908 802DCBF8 460042A1 */  cvt.d.s    $f10, $f8
    /* 1F590C 802DCBFC 3C148005 */  lui        $s4, %hi(D_80052B34)
    /* 1F5910 802DCC00 46305483 */  div.d      $f18, $f10, $f16
    /* 1F5914 802DCC04 3C138022 */  lui        $s3, %hi(D_80222A70)
    /* 1F5918 802DCC08 26732A70 */  addiu      $s3, $s3, %lo(D_80222A70)
    /* 1F591C 802DCC0C 26942B34 */  addiu      $s4, $s4, %lo(D_80052B34)
    /* 1F5920 802DCC10 26B56680 */  addiu      $s5, $s5, %lo(alienSpecs)
    /* 1F5924 802DCC14 24100003 */  addiu      $s0, $zero, 0x3
    /* 1F5928 802DCC18 24160068 */  addiu      $s6, $zero, 0x68
    /* 1F592C 802DCC1C 87B20066 */  lh         $s2, 0x66($sp)
    /* 1F5930 802DCC20 46249182 */  mul.d      $f6, $f18, $f4
    /* 1F5934 802DCC24 462035A0 */  cvt.s.d    $f22, $f6
    /* 1F5938 802DCC28 44904000 */  mtc1       $s0, $f8
  .L802DCC2C_1F593C:
    /* 1F593C 802DCC2C 862A0000 */  lh         $t2, 0x0($s1)
    /* 1F5940 802DCC30 862E0004 */  lh         $t6, 0x4($s1)
    /* 1F5944 802DCC34 46804020 */  cvt.s.w    $f0, $f8
    /* 1F5948 802DCC38 448A5000 */  mtc1       $t2, $f10
    /* 1F594C 802DCC3C 448E4000 */  mtc1       $t6, $f8
    /* 1F5950 802DCC40 27A6006A */  addiu      $a2, $sp, 0x6A
    /* 1F5954 802DCC44 46805420 */  cvt.s.w    $f16, $f10
    /* 1F5958 802DCC48 4600A482 */  mul.s      $f18, $f20, $f0
    /* 1F595C 802DCC4C 468042A0 */  cvt.s.w    $f10, $f8
    /* 1F5960 802DCC50 46128101 */  sub.s      $f4, $f16, $f18
    /* 1F5964 802DCC54 4600B402 */  mul.s      $f16, $f22, $f0
    /* 1F5968 802DCC58 4600218D */  trunc.w.s  $f6, $f4
    /* 1F596C 802DCC5C 46105481 */  sub.s      $f18, $f10, $f16
    /* 1F5970 802DCC60 44043000 */  mfc1       $a0, $f6
    /* 1F5974 802DCC64 4600910D */  trunc.w.s  $f4, $f18
    /* 1F5978 802DCC68 00046400 */  sll        $t4, $a0, 16
    /* 1F597C 802DCC6C 000C2403 */  sra        $a0, $t4, 16
    /* 1F5980 802DCC70 44052000 */  mfc1       $a1, $f4
    /* 1F5984 802DCC74 00000000 */  nop
    /* 1F5988 802DCC78 0005C400 */  sll        $t8, $a1, 16
    /* 1F598C 802DCC7C 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* 1F5990 802DCC80 00182C03 */   sra       $a1, $t8, 16
    /* 1F5994 802DCC84 8E630000 */  lw         $v1, 0x0($s3)
    /* 1F5998 802DCC88 87A8006A */  lh         $t0, 0x6A($sp)
    /* 1F599C 802DCC8C 2610FFFF */  addiu      $s0, $s0, -0x1
    /* 1F59A0 802DCC90 0103082A */  slt        $at, $t0, $v1
    /* 1F59A4 802DCC94 50200003 */  beql       $at, $zero, .L802DCCA4_1F59B4
    /* 1F59A8 802DCC98 8E890000 */   lw        $t1, 0x0($s4)
    /* 1F59AC 802DCC9C A7A3006A */  sh         $v1, 0x6A($sp)
    /* 1F59B0 802DCCA0 8E890000 */  lw         $t1, 0x0($s4)
  .L802DCCA4_1F59B4:
    /* 1F59B4 802DCCA4 87AA006A */  lh         $t2, 0x6A($sp)
    /* 1F59B8 802DCCA8 87A2006A */  lh         $v0, 0x6A($sp)
    /* 1F59BC 802DCCAC 85230002 */  lh         $v1, 0x2($t1)
    /* 1F59C0 802DCCB0 00104C00 */  sll        $t1, $s0, 16
    /* 1F59C4 802DCCB4 00098403 */  sra        $s0, $t1, 16
    /* 1F59C8 802DCCB8 0143082A */  slt        $at, $t2, $v1
    /* 1F59CC 802DCCBC 10200005 */  beqz       $at, .L802DCCD4_1F59E4
    /* 1F59D0 802DCCC0 00000000 */   nop
    /* 1F59D4 802DCCC4 00031400 */  sll        $v0, $v1, 16
    /* 1F59D8 802DCCC8 00025C03 */  sra        $t3, $v0, 16
    /* 1F59DC 802DCCCC 10000001 */  b          .L802DCCD4_1F59E4
    /* 1F59E0 802DCCD0 01601025 */   or        $v0, $t3, $zero
  .L802DCCD4_1F59E4:
    /* 1F59E4 802DCCD4 922D001A */  lbu        $t5, 0x1A($s1)
    /* 1F59E8 802DCCD8 862C0002 */  lh         $t4, 0x2($s1)
    /* 1F59EC 802DCCDC 01B60019 */  multu      $t5, $s6
    /* 1F59F0 802DCCE0 00007012 */  mflo       $t6
    /* 1F59F4 802DCCE4 02AE7821 */  addu       $t7, $s5, $t6
    /* 1F59F8 802DCCE8 85F80058 */  lh         $t8, 0x58($t7)
    /* 1F59FC 802DCCEC 0302C821 */  addu       $t9, $t8, $v0
    /* 1F5A00 802DCCF0 0199082A */  slt        $at, $t4, $t9
    /* 1F5A04 802DCCF4 10200006 */  beqz       $at, .L802DCD10_1F5A20
    /* 1F5A08 802DCCF8 0242082A */   slt       $at, $s2, $v0
    /* 1F5A0C 802DCCFC 10200004 */  beqz       $at, .L802DCD10_1F5A20
    /* 1F5A10 802DCD00 24170001 */   addiu     $s7, $zero, 0x1
    /* 1F5A14 802DCD04 00029400 */  sll        $s2, $v0, 16
    /* 1F5A18 802DCD08 00124403 */  sra        $t0, $s2, 16
    /* 1F5A1C 802DCD0C 01009025 */  or         $s2, $t0, $zero
  .L802DCD10_1F5A20:
    /* 1F5A20 802DCD10 0603FFC6 */  bgezl      $s0, .L802DCC2C_1F593C
    /* 1F5A24 802DCD14 44904000 */   mtc1      $s0, $f8
    /* 1F5A28 802DCD18 12E0000C */  beqz       $s7, .L802DCD4C_1F5A5C
    /* 1F5A2C 802DCD1C 93A40083 */   lbu       $a0, 0x83($sp)
    /* 1F5A30 802DCD20 87AB006A */  lh         $t3, 0x6A($sp)
    /* 1F5A34 802DCD24 8FAE006C */  lw         $t6, 0x6C($sp)
    /* 1F5A38 802DCD28 3C063D4C */  lui        $a2, (0x3D4CCCCD >> 16)
    /* 1F5A3C 802DCD2C 024B6823 */  subu       $t5, $s2, $t3
    /* 1F5A40 802DCD30 34C6CCCD */  ori        $a2, $a2, (0x3D4CCCCD & 0xFFFF)
    /* 1F5A44 802DCD34 93A40083 */  lbu        $a0, 0x83($sp)
    /* 1F5A48 802DCD38 93A7007E */  lbu        $a3, 0x7E($sp)
    /* 1F5A4C 802DCD3C 0C029555 */  jal        func_800A5554_B4504
    /* 1F5A50 802DCD40 01AE2821 */   addu      $a1, $t5, $t6
    /* 1F5A54 802DCD44 1000000A */  b          .L802DCD70_1F5A80
    /* 1F5A58 802DCD48 92220026 */   lbu       $v0, 0x26($s1)
  .L802DCD4C_1F5A5C:
    /* 1F5A5C 802DCD4C 87AF006A */  lh         $t7, 0x6A($sp)
    /* 1F5A60 802DCD50 8FAC006C */  lw         $t4, 0x6C($sp)
    /* 1F5A64 802DCD54 3C063D4C */  lui        $a2, (0x3D4CCCCD >> 16)
    /* 1F5A68 802DCD58 004FC023 */  subu       $t8, $v0, $t7
    /* 1F5A6C 802DCD5C 34C6CCCD */  ori        $a2, $a2, (0x3D4CCCCD & 0xFFFF)
    /* 1F5A70 802DCD60 93A7007E */  lbu        $a3, 0x7E($sp)
    /* 1F5A74 802DCD64 0C029555 */  jal        func_800A5554_B4504
    /* 1F5A78 802DCD68 030C2821 */   addu      $a1, $t8, $t4
    /* 1F5A7C 802DCD6C 92220026 */  lbu        $v0, 0x26($s1)
  .L802DCD70_1F5A80:
    /* 1F5A80 802DCD70 10400003 */  beqz       $v0, .L802DCD80_1F5A90
    /* 1F5A84 802DCD74 2459FFFF */   addiu     $t9, $v0, -0x1
    /* 1F5A88 802DCD78 10000005 */  b          .L802DCD90_1F5AA0
    /* 1F5A8C 802DCD7C A2390026 */   sb        $t9, 0x26($s1)
  .L802DCD80_1F5A90:
    /* 1F5A90 802DCD80 8E280020 */  lw         $t0, 0x20($s1)
    /* 1F5A94 802DCD84 2401FFEF */  addiu      $at, $zero, -0x11
    /* 1F5A98 802DCD88 01014824 */  and        $t1, $t0, $at
    /* 1F5A9C 802DCD8C AE290020 */  sw         $t1, 0x20($s1)
  .L802DCD90_1F5AA0:
    /* 1F5AA0 802DCD90 8622001E */  lh         $v0, 0x1E($s1)
    /* 1F5AA4 802DCD94 10400002 */  beqz       $v0, .L802DCDA0_1F5AB0
    /* 1F5AA8 802DCD98 244AFFFF */   addiu     $t2, $v0, -0x1
    /* 1F5AAC 802DCD9C A62A001E */  sh         $t2, 0x1E($s1)
  .L802DCDA0_1F5AB0:
    /* 1F5AB0 802DCDA0 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 1F5AB4 802DCDA4 D7B40010 */  ldc1       $f20, 0x10($sp)
    /* 1F5AB8 802DCDA8 D7B60018 */  ldc1       $f22, 0x18($sp)
    /* 1F5ABC 802DCDAC 8FB00024 */  lw         $s0, 0x24($sp)
    /* 1F5AC0 802DCDB0 8FB10028 */  lw         $s1, 0x28($sp)
    /* 1F5AC4 802DCDB4 8FB2002C */  lw         $s2, 0x2C($sp)
    /* 1F5AC8 802DCDB8 8FB30030 */  lw         $s3, 0x30($sp)
    /* 1F5ACC 802DCDBC 8FB40034 */  lw         $s4, 0x34($sp)
    /* 1F5AD0 802DCDC0 8FB50038 */  lw         $s5, 0x38($sp)
    /* 1F5AD4 802DCDC4 8FB6003C */  lw         $s6, 0x3C($sp)
    /* 1F5AD8 802DCDC8 8FB70040 */  lw         $s7, 0x40($sp)
    /* 1F5ADC 802DCDCC 03E00008 */  jr         $ra
    /* 1F5AE0 802DCDD0 27BD0080 */   addiu     $sp, $sp, 0x80
endlabel func_802DCA54_1F5764
