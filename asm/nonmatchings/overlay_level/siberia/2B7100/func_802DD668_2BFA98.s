nonmatching func_802DD668_2BFA98, 0x7D4

glabel func_802DD668_2BFA98
    /* 2BFA98 802DD668 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* 2BFA9C 802DD66C AFA40080 */  sw         $a0, 0x80($sp)
    /* 2BFAA0 802DD670 93AE0083 */  lbu        $t6, 0x83($sp)
    /* 2BFAA4 802DD674 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BFAA8 802DD678 AFB00018 */  sw         $s0, 0x18($sp)
    /* 2BFAAC 802DD67C 000E7880 */  sll        $t7, $t6, 2
    /* 2BFAB0 802DD680 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BFAB4 802DD684 000F7900 */  sll        $t7, $t7, 4
    /* 2BFAB8 802DD688 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BFABC 802DD68C 01F88021 */  addu       $s0, $t7, $t8
    /* 2BFAC0 802DD690 8602000C */  lh         $v0, 0xC($s0)
    /* 2BFAC4 802DD694 3C068015 */  lui        $a2, %hi(D_8014DD50)
    /* 2BFAC8 802DD698 24C6DD50 */  addiu      $a2, $a2, %lo(D_8014DD50)
    /* 2BFACC 802DD69C 00024100 */  sll        $t0, $v0, 4
    /* 2BFAD0 802DD6A0 00C83821 */  addu       $a3, $a2, $t0
    /* 2BFAD4 802DD6A4 80E3000C */  lb         $v1, 0xC($a3)
    /* 2BFAD8 802DD6A8 9219001A */  lbu        $t9, 0x1A($s0)
    /* 2BFADC 802DD6AC AFBF001C */  sw         $ra, 0x1C($sp)
    /* 2BFAE0 802DD6B0 00034900 */  sll        $t1, $v1, 4
    /* 2BFAE4 802DD6B4 00C95021 */  addu       $t2, $a2, $t1
    /* 2BFAE8 802DD6B8 814B000D */  lb         $t3, 0xD($t2)
    /* 2BFAEC 802DD6BC 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2BFAF0 802DD6C0 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 2BFAF4 802DD6C4 AFA7002C */  sw         $a3, 0x2C($sp)
    /* 2BFAF8 802DD6C8 02002825 */  or         $a1, $s0, $zero
    /* 2BFAFC 802DD6CC AFB9004C */  sw         $t9, 0x4C($sp)
    /* 2BFB00 802DD6D0 0C021395 */  jal        func_80084E54_93E04
    /* 2BFB04 802DD6D4 A7AB007A */   sh        $t3, 0x7A($sp)
    /* 2BFB08 802DD6D8 AFA20074 */  sw         $v0, 0x74($sp)
    /* 2BFB0C 802DD6DC 86040000 */  lh         $a0, 0x0($s0)
    /* 2BFB10 802DD6E0 0C02E134 */  jal        func_800B84D0_C7480
    /* 2BFB14 802DD6E4 86050004 */   lh        $a1, 0x4($s0)
    /* 2BFB18 802DD6E8 920D0024 */  lbu        $t5, 0x24($s0)
    /* 2BFB1C 802DD6EC 00026203 */  sra        $t4, $v0, 8
    /* 2BFB20 802DD6F0 AFAC0050 */  sw         $t4, 0x50($sp)
    /* 2BFB24 802DD6F4 15A00025 */  bnez       $t5, .L802DD78C_2BFBBC
    /* 2BFB28 802DD6F8 240B0190 */   addiu     $t3, $zero, 0x190
    /* 2BFB2C 802DD6FC 8E030020 */  lw         $v1, 0x20($s0)
    /* 2BFB30 802DD700 8FB8004C */  lw         $t8, 0x4C($sp)
    /* 2BFB34 802DD704 3C088025 */  lui        $t0, %hi(D_802566BA)
    /* 2BFB38 802DD708 306EC000 */  andi       $t6, $v1, 0xC000
    /* 2BFB3C 802DD70C 15C0001F */  bnez       $t6, .L802DD78C_2BFBBC
    /* 2BFB40 802DD710 0018C880 */   sll       $t9, $t8, 2
    /* 2BFB44 802DD714 0338C823 */  subu       $t9, $t9, $t8
    /* 2BFB48 802DD718 0019C880 */  sll        $t9, $t9, 2
    /* 2BFB4C 802DD71C 0338C821 */  addu       $t9, $t9, $t8
    /* 2BFB50 802DD720 0019C8C0 */  sll        $t9, $t9, 3
    /* 2BFB54 802DD724 01194021 */  addu       $t0, $t0, $t9
    /* 2BFB58 802DD728 950866BA */  lhu        $t0, %lo(D_802566BA)($t0)
    /* 2BFB5C 802DD72C 860F001C */  lh         $t7, 0x1C($s0)
    /* 2BFB60 802DD730 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2BFB64 802DD734 05010003 */  bgez       $t0, .L802DD744_2BFB74
    /* 2BFB68 802DD738 00084883 */   sra       $t1, $t0, 2
    /* 2BFB6C 802DD73C 25010003 */  addiu      $at, $t0, 0x3
    /* 2BFB70 802DD740 00014883 */  sra        $t1, $at, 2
  .L802DD744_2BFB74:
    /* 2BFB74 802DD744 01E9082A */  slt        $at, $t7, $t1
    /* 2BFB78 802DD748 1420000E */  bnez       $at, .L802DD784_2BFBB4
    /* 2BFB7C 802DD74C 346A4000 */   ori       $t2, $v1, 0x4000
    /* 2BFB80 802DD750 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 2BFB84 802DD754 84820000 */  lh         $v0, 0x0($a0)
    /* 2BFB88 802DD758 2841E8E4 */  slti       $at, $v0, -0x171C
    /* 2BFB8C 802DD75C 1420000B */  bnez       $at, .L802DD78C_2BFBBC
    /* 2BFB90 802DD760 2841ECCD */   slti      $at, $v0, -0x1333
    /* 2BFB94 802DD764 5020000A */  beql       $at, $zero, .L802DD790_2BFBC0
    /* 2BFB98 802DD768 8FAC004C */   lw        $t4, 0x4C($sp)
    /* 2BFB9C 802DD76C 84820004 */  lh         $v0, 0x4($a0)
    /* 2BFBA0 802DD770 2841526C */  slti       $at, $v0, 0x526C
    /* 2BFBA4 802DD774 14200005 */  bnez       $at, .L802DD78C_2BFBBC
    /* 2BFBA8 802DD778 28415655 */   slti      $at, $v0, 0x5655
    /* 2BFBAC 802DD77C 50200004 */  beql       $at, $zero, .L802DD790_2BFBC0
    /* 2BFBB0 802DD780 8FAC004C */   lw        $t4, 0x4C($sp)
  .L802DD784_2BFBB4:
    /* 2BFBB4 802DD784 AE0A0020 */  sw         $t2, 0x20($s0)
    /* 2BFBB8 802DD788 A2000026 */  sb         $zero, 0x26($s0)
  .L802DD78C_2BFBBC:
    /* 2BFBBC 802DD78C 8FAC004C */  lw         $t4, 0x4C($sp)
  .L802DD790_2BFBC0:
    /* 2BFBC0 802DD790 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 2BFBC4 802DD794 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 2BFBC8 802DD798 000C6880 */  sll        $t5, $t4, 2
    /* 2BFBCC 802DD79C 01AC6823 */  subu       $t5, $t5, $t4
    /* 2BFBD0 802DD7A0 AFAB0038 */  sw         $t3, 0x38($sp)
    /* 2BFBD4 802DD7A4 000D6880 */  sll        $t5, $t5, 2
    /* 2BFBD8 802DD7A8 9082001A */  lbu        $v0, 0x1A($a0)
    /* 2BFBDC 802DD7AC 3C0E8025 */  lui        $t6, %hi(alienSpecs)
    /* 2BFBE0 802DD7B0 01AC6821 */  addu       $t5, $t5, $t4
    /* 2BFBE4 802DD7B4 000D68C0 */  sll        $t5, $t5, 3
    /* 2BFBE8 802DD7B8 25CE6680 */  addiu      $t6, $t6, %lo(alienSpecs)
    /* 2BFBEC 802DD7BC 01AEC021 */  addu       $t8, $t5, $t6
    /* 2BFBF0 802DD7C0 AFB80020 */  sw         $t8, 0x20($sp)
    /* 2BFBF4 802DD7C4 1040000B */  beqz       $v0, .L802DD7F4_2BFC24
    /* 2BFBF8 802DD7C8 8E030020 */   lw        $v1, 0x20($s0)
    /* 2BFBFC 802DD7CC 86190012 */  lh         $t9, 0x12($s0)
    /* 2BFC00 802DD7D0 30688000 */  andi       $t0, $v1, 0x8000
    /* 2BFC04 802DD7D4 5B200008 */  blezl      $t9, .L802DD7F8_2BFC28
    /* 2BFC08 802DD7D8 306A8000 */   andi      $t2, $v1, 0x8000
    /* 2BFC0C 802DD7DC 11000004 */  beqz       $t0, .L802DD7F0_2BFC20
    /* 2BFC10 802DD7E0 240903E8 */   addiu     $t1, $zero, 0x3E8
    /* 2BFC14 802DD7E4 240F05DC */  addiu      $t7, $zero, 0x5DC
    /* 2BFC18 802DD7E8 10000002 */  b          .L802DD7F4_2BFC24
    /* 2BFC1C 802DD7EC AFAF0038 */   sw        $t7, 0x38($sp)
  .L802DD7F0_2BFC20:
    /* 2BFC20 802DD7F0 AFA90038 */  sw         $t1, 0x38($sp)
  .L802DD7F4_2BFC24:
    /* 2BFC24 802DD7F4 306A8000 */  andi       $t2, $v1, 0x8000
  .L802DD7F8_2BFC28:
    /* 2BFC28 802DD7F8 114000B6 */  beqz       $t2, .L802DDAD4_2BFF04
    /* 2BFC2C 802DD7FC 306B4000 */   andi      $t3, $v1, 0x4000
    /* 2BFC30 802DD800 86020048 */  lh         $v0, 0x48($s0)
    /* 2BFC34 802DD804 04410021 */  bgez       $v0, .L802DD88C_2BFCBC
    /* 2BFC38 802DD808 244B0010 */   addiu     $t3, $v0, 0x10
    /* 2BFC3C 802DD80C A60B0048 */  sh         $t3, 0x48($s0)
    /* 2BFC40 802DD810 0C0B7490 */  jal        func_802DD240_2BF670
    /* 2BFC44 802DD814 93A40083 */   lbu       $a0, 0x83($sp)
    /* 2BFC48 802DD818 8FA20074 */  lw         $v0, 0x74($sp)
    /* 2BFC4C 802DD81C 240C07D0 */  addiu      $t4, $zero, 0x7D0
    /* 2BFC50 802DD820 24050001 */  addiu      $a1, $zero, 0x1
    /* 2BFC54 802DD824 284107D0 */  slti       $at, $v0, 0x7D0
    /* 2BFC58 802DD828 10200009 */  beqz       $at, .L802DD850_2BFC80
    /* 2BFC5C 802DD82C 01826823 */   subu      $t5, $t4, $v0
    /* 2BFC60 802DD830 240103E8 */  addiu      $at, $zero, 0x3E8
    /* 2BFC64 802DD834 01A1001A */  div        $zero, $t5, $at
    /* 2BFC68 802DD838 00007012 */  mflo       $t6
    /* 2BFC6C 802DD83C 448E2000 */  mtc1       $t6, $f4
    /* 2BFC70 802DD840 24060001 */  addiu      $a2, $zero, 0x1
    /* 2BFC74 802DD844 24070001 */  addiu      $a3, $zero, 0x1
    /* 2BFC78 802DD848 0C04D742 */  jal        func_80135D08_144CB8
    /* 2BFC7C 802DD84C 46802320 */   cvt.s.w   $f12, $f4
  .L802DD850_2BFC80:
    /* 2BFC80 802DD850 2418FF38 */  addiu      $t8, $zero, -0xC8
    /* 2BFC84 802DD854 24084A03 */  addiu      $t0, $zero, 0x4A03
    /* 2BFC88 802DD858 A618002E */  sh         $t8, 0x2E($s0)
    /* 2BFC8C 802DD85C A6080032 */  sh         $t0, 0x32($s0)
    /* 2BFC90 802DD860 8619002E */  lh         $t9, 0x2E($s0)
    /* 2BFC94 802DD864 860F0032 */  lh         $t7, 0x32($s0)
    /* 2BFC98 802DD868 8E090020 */  lw         $t1, 0x20($s0)
    /* 2BFC9C 802DD86C A6190000 */  sh         $t9, 0x0($s0)
    /* 2BFCA0 802DD870 A60F0004 */  sh         $t7, 0x4($s0)
    /* 2BFCA4 802DD874 86060004 */  lh         $a2, 0x4($s0)
    /* 2BFCA8 802DD878 86050000 */  lh         $a1, 0x0($s0)
    /* 2BFCAC 802DD87C 0C03CB52 */  jal        func_800F2D48_101CF8
    /* 2BFCB0 802DD880 31240007 */   andi      $a0, $t1, 0x7
    /* 2BFCB4 802DD884 1000008C */  b          .L802DDAB8_2BFEE8
    /* 2BFCB8 802DD888 8FAF0020 */   lw        $t7, 0x20($sp)
  .L802DD88C_2BFCBC:
    /* 2BFCBC 802DD88C A6000048 */  sh         $zero, 0x48($s0)
    /* 2BFCC0 802DD890 908B001A */  lbu        $t3, 0x1A($a0)
    /* 2BFCC4 802DD894 8FAC0074 */  lw         $t4, 0x74($sp)
    /* 2BFCC8 802DD898 8FB90020 */  lw         $t9, 0x20($sp)
    /* 2BFCCC 802DD89C 15600006 */  bnez       $t3, .L802DD8B8_2BFCE8
    /* 2BFCD0 802DD8A0 298105DC */   slti      $at, $t4, 0x5DC
    /* 2BFCD4 802DD8A4 10200004 */  beqz       $at, .L802DD8B8_2BFCE8
    /* 2BFCD8 802DD8A8 8FAE0020 */   lw        $t6, 0x20($sp)
    /* 2BFCDC 802DD8AC 240D0200 */  addiu      $t5, $zero, 0x200
    /* 2BFCE0 802DD8B0 10000003 */  b          .L802DD8C0_2BFCF0
    /* 2BFCE4 802DD8B4 A5CD0040 */   sh        $t5, 0x40($t6)
  .L802DD8B8_2BFCE8:
    /* 2BFCE8 802DD8B8 24180480 */  addiu      $t8, $zero, 0x480
    /* 2BFCEC 802DD8BC A7380040 */  sh         $t8, 0x40($t9)
  .L802DD8C0_2BFCF0:
    /* 2BFCF0 802DD8C0 84820000 */  lh         $v0, 0x0($a0)
    /* 2BFCF4 802DD8C4 2841FD44 */  slti       $at, $v0, -0x2BC
    /* 2BFCF8 802DD8C8 14200013 */  bnez       $at, .L802DD918_2BFD48
    /* 2BFCFC 802DD8CC 2841012D */   slti      $at, $v0, 0x12D
    /* 2BFD00 802DD8D0 50200012 */  beql       $at, $zero, .L802DD91C_2BFD4C
    /* 2BFD04 802DD8D4 920C0047 */   lbu       $t4, 0x47($s0)
    /* 2BFD08 802DD8D8 84820004 */  lh         $v0, 0x4($a0)
    /* 2BFD0C 802DD8DC 2841480F */  slti       $at, $v0, 0x480F
    /* 2BFD10 802DD8E0 1420000D */  bnez       $at, .L802DD918_2BFD48
    /* 2BFD14 802DD8E4 28414BF8 */   slti      $at, $v0, 0x4BF8
    /* 2BFD18 802DD8E8 1020000B */  beqz       $at, .L802DD918_2BFD48
    /* 2BFD1C 802DD8EC 240B0001 */   addiu     $t3, $zero, 0x1
    /* 2BFD20 802DD8F0 8E080020 */  lw         $t0, 0x20($s0)
    /* 2BFD24 802DD8F4 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
    /* 2BFD28 802DD8F8 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
    /* 2BFD2C 802DD8FC 350F4000 */  ori        $t7, $t0, 0x4000
    /* 2BFD30 802DD900 AE0F0020 */  sw         $t7, 0x20($s0)
    /* 2BFD34 802DD904 01E15024 */  and        $t2, $t7, $at
    /* 2BFD38 802DD908 AE0A0020 */  sw         $t2, 0x20($s0)
    /* 2BFD3C 802DD90C A2000026 */  sb         $zero, 0x26($s0)
    /* 2BFD40 802DD910 10000068 */  b          .L802DDAB4_2BFEE4
    /* 2BFD44 802DD914 A20B0024 */   sb        $t3, 0x24($s0)
  .L802DD918_2BFD48:
    /* 2BFD48 802DD918 920C0047 */  lbu        $t4, 0x47($s0)
  .L802DD91C_2BFD4C:
    /* 2BFD4C 802DD91C 240500C8 */  addiu      $a1, $zero, 0xC8
    /* 2BFD50 802DD920 318D0001 */  andi       $t5, $t4, 0x1
    /* 2BFD54 802DD924 51A00009 */  beql       $t5, $zero, .L802DD94C_2BFD7C
    /* 2BFD58 802DD928 92080026 */   lbu       $t0, 0x26($s0)
    /* 2BFD5C 802DD92C 860E0034 */  lh         $t6, 0x34($s0)
    /* 2BFD60 802DD930 59C00006 */  blezl      $t6, .L802DD94C_2BFD7C
    /* 2BFD64 802DD934 92080026 */   lbu       $t0, 0x26($s0)
    /* 2BFD68 802DD938 8618000E */  lh         $t8, 0xE($s0)
    /* 2BFD6C 802DD93C 24190001 */  addiu      $t9, $zero, 0x1
    /* 2BFD70 802DD940 A6190034 */  sh         $t9, 0x34($s0)
    /* 2BFD74 802DD944 A618002A */  sh         $t8, 0x2A($s0)
    /* 2BFD78 802DD948 92080026 */  lbu        $t0, 0x26($s0)
  .L802DD94C_2BFD7C:
    /* 2BFD7C 802DD94C 51000019 */  beql       $t0, $zero, .L802DD9B4_2BFDE4
    /* 2BFD80 802DD950 860B002C */   lh        $t3, 0x2C($s0)
    /* 2BFD84 802DD954 0C020210 */  jal        func_80080840_8F7F0
    /* 2BFD88 802DD958 93A40083 */   lbu       $a0, 0x83($sp)
    /* 2BFD8C 802DD95C 14400008 */  bnez       $v0, .L802DD980_2BFDB0
    /* 2BFD90 802DD960 93A40083 */   lbu       $a0, 0x83($sp)
    /* 2BFD94 802DD964 0C020210 */  jal        func_80080840_8F7F0
    /* 2BFD98 802DD968 240500C8 */   addiu     $a1, $zero, 0xC8
    /* 2BFD9C 802DD96C 1440000C */  bnez       $v0, .L802DD9A0_2BFDD0
    /* 2BFDA0 802DD970 93A40083 */   lbu       $a0, 0x83($sp)
    /* 2BFDA4 802DD974 0C0B7502 */  jal        func_802DD408_2BF838
    /* 2BFDA8 802DD978 24050800 */   addiu     $a1, $zero, 0x800
    /* 2BFDAC 802DD97C 10400008 */  beqz       $v0, .L802DD9A0_2BFDD0
  .L802DD980_2BFDB0:
    /* 2BFDB0 802DD980 240FFF38 */   addiu     $t7, $zero, -0xC8
    /* 2BFDB4 802DD984 24094A03 */  addiu      $t1, $zero, 0x4A03
    /* 2BFDB8 802DD988 240A0050 */  addiu      $t2, $zero, 0x50
    /* 2BFDBC 802DD98C A2000026 */  sb         $zero, 0x26($s0)
    /* 2BFDC0 802DD990 A60F0014 */  sh         $t7, 0x14($s0)
    /* 2BFDC4 802DD994 A6090018 */  sh         $t1, 0x18($s0)
    /* 2BFDC8 802DD998 10000035 */  b          .L802DDA70_2BFEA0
    /* 2BFDCC 802DD99C A60A002C */   sh        $t2, 0x2C($s0)
  .L802DD9A0_2BFDD0:
    /* 2BFDD0 802DD9A0 0C020193 */  jal        func_8008064C_8F5FC
    /* 2BFDD4 802DD9A4 93A40083 */   lbu       $a0, 0x83($sp)
    /* 2BFDD8 802DD9A8 10000032 */  b          .L802DDA74_2BFEA4
    /* 2BFDDC 802DD9AC 8E030020 */   lw        $v1, 0x20($s0)
    /* 2BFDE0 802DD9B0 860B002C */  lh         $t3, 0x2C($s0)
  .L802DD9B4_2BFDE4:
    /* 2BFDE4 802DD9B4 93A40083 */  lbu        $a0, 0x83($sp)
    /* 2BFDE8 802DD9B8 1560001B */  bnez       $t3, .L802DDA28_2BFE58
    /* 2BFDEC 802DD9BC 00000000 */   nop
    /* 2BFDF0 802DD9C0 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 2BFDF4 802DD9C4 8FAE0074 */  lw         $t6, 0x74($sp)
    /* 2BFDF8 802DD9C8 240500C8 */  addiu      $a1, $zero, 0xC8
    /* 2BFDFC 802DD9CC 000C6800 */  sll        $t5, $t4, 0
    /* 2BFE00 802DD9D0 05A00003 */  bltz       $t5, .L802DD9E0_2BFE10
    /* 2BFE04 802DD9D4 29C10802 */   slti      $at, $t6, 0x802
    /* 2BFE08 802DD9D8 10200013 */  beqz       $at, .L802DDA28_2BFE58
    /* 2BFE0C 802DD9DC 00000000 */   nop
  .L802DD9E0_2BFE10:
    /* 2BFE10 802DD9E0 0C020210 */  jal        func_80080840_8F7F0
    /* 2BFE14 802DD9E4 93A40083 */   lbu       $a0, 0x83($sp)
    /* 2BFE18 802DD9E8 14400004 */  bnez       $v0, .L802DD9FC_2BFE2C
    /* 2BFE1C 802DD9EC 93A40083 */   lbu       $a0, 0x83($sp)
    /* 2BFE20 802DD9F0 0C0213FA */  jal        func_80084FE8_93F98
    /* 2BFE24 802DD9F4 24050800 */   addiu     $a1, $zero, 0x800
    /* 2BFE28 802DD9F8 14400019 */  bnez       $v0, .L802DDA60_2BFE90
  .L802DD9FC_2BFE2C:
    /* 2BFE2C 802DD9FC 24180001 */   addiu     $t8, $zero, 0x1
    /* 2BFE30 802DDA00 2419ED64 */  addiu      $t9, $zero, -0x129C
    /* 2BFE34 802DDA04 24084A03 */  addiu      $t0, $zero, 0x4A03
    /* 2BFE38 802DDA08 A2180026 */  sb         $t8, 0x26($s0)
    /* 2BFE3C 802DDA0C A6190014 */  sh         $t9, 0x14($s0)
    /* 2BFE40 802DDA10 A6080018 */  sh         $t0, 0x18($s0)
    /* 2BFE44 802DDA14 93A40083 */  lbu        $a0, 0x83($sp)
    /* 2BFE48 802DDA18 0C04DD1A */  jal        func_80137468_146418
    /* 2BFE4C 802DDA1C 24050011 */   addiu     $a1, $zero, 0x11
    /* 2BFE50 802DDA20 10000010 */  b          .L802DDA64_2BFE94
    /* 2BFE54 802DDA24 8602002C */   lh        $v0, 0x2C($s0)
  .L802DDA28_2BFE58:
    /* 2BFE58 802DDA28 0C020210 */  jal        func_80080840_8F7F0
    /* 2BFE5C 802DDA2C 240500C8 */   addiu     $a1, $zero, 0xC8
    /* 2BFE60 802DDA30 10400009 */  beqz       $v0, .L802DDA58_2BFE88
    /* 2BFE64 802DDA34 2405ED64 */   addiu     $a1, $zero, -0x129C
    /* 2BFE68 802DDA38 A6000012 */  sh         $zero, 0x12($s0)
    /* 2BFE6C 802DDA3C 93A40083 */  lbu        $a0, 0x83($sp)
    /* 2BFE70 802DDA40 0C020295 */  jal        func_80080A54_8FA04
    /* 2BFE74 802DDA44 24064A03 */   addiu     $a2, $zero, 0x4A03
    /* 2BFE78 802DDA48 86030006 */  lh         $v1, 0x6($s0)
    /* 2BFE7C 802DDA4C A603002A */  sh         $v1, 0x2A($s0)
    /* 2BFE80 802DDA50 10000003 */  b          .L802DDA60_2BFE90
    /* 2BFE84 802DDA54 A603000E */   sh        $v1, 0xE($s0)
  .L802DDA58_2BFE88:
    /* 2BFE88 802DDA58 0C020193 */  jal        func_8008064C_8F5FC
    /* 2BFE8C 802DDA5C 93A40083 */   lbu       $a0, 0x83($sp)
  .L802DDA60_2BFE90:
    /* 2BFE90 802DDA60 8602002C */  lh         $v0, 0x2C($s0)
  .L802DDA64_2BFE94:
    /* 2BFE94 802DDA64 10400002 */  beqz       $v0, .L802DDA70_2BFEA0
    /* 2BFE98 802DDA68 244FFFFF */   addiu     $t7, $v0, -0x1
    /* 2BFE9C 802DDA6C A60F002C */  sh         $t7, 0x2C($s0)
  .L802DDA70_2BFEA0:
    /* 2BFEA0 802DDA70 8E030020 */  lw         $v1, 0x20($s0)
  .L802DDA74_2BFEA4:
    /* 2BFEA4 802DDA74 8FAA0074 */  lw         $t2, 0x74($sp)
    /* 2BFEA8 802DDA78 8FAB0038 */  lw         $t3, 0x38($sp)
    /* 2BFEAC 802DDA7C 30693000 */  andi       $t1, $v1, 0x3000
    /* 2BFEB0 802DDA80 1520000C */  bnez       $t1, .L802DDAB4_2BFEE4
    /* 2BFEB4 802DDA84 014B082A */   slt       $at, $t2, $t3
    /* 2BFEB8 802DDA88 10200007 */  beqz       $at, .L802DDAA8_2BFED8
    /* 2BFEBC 802DDA8C 3C0C8005 */   lui       $t4, %hi(D_80052AD0)
    /* 2BFEC0 802DDA90 8D8C2AD0 */  lw         $t4, %lo(D_80052AD0)($t4)
    /* 2BFEC4 802DDA94 346D2000 */  ori        $t5, $v1, 0x2000
    /* 2BFEC8 802DDA98 51800004 */  beql       $t4, $zero, .L802DDAAC_2BFEDC
    /* 2BFECC 802DDA9C 346E1000 */   ori       $t6, $v1, 0x1000
    /* 2BFED0 802DDAA0 10000003 */  b          .L802DDAB0_2BFEE0
    /* 2BFED4 802DDAA4 AE0D0020 */   sw        $t5, 0x20($s0)
  .L802DDAA8_2BFED8:
    /* 2BFED8 802DDAA8 346E1000 */  ori        $t6, $v1, 0x1000
  .L802DDAAC_2BFEDC:
    /* 2BFEDC 802DDAAC AE0E0020 */  sw         $t6, 0x20($s0)
  .L802DDAB0_2BFEE0:
    /* 2BFEE0 802DDAB0 A2000036 */  sb         $zero, 0x36($s0)
  .L802DDAB4_2BFEE4:
    /* 2BFEE4 802DDAB4 8FAF0020 */  lw         $t7, 0x20($sp)
  .L802DDAB8_2BFEE8:
    /* 2BFEE8 802DDAB8 86180048 */  lh         $t8, 0x48($s0)
    /* 2BFEEC 802DDABC 8FB90050 */  lw         $t9, 0x50($sp)
    /* 2BFEF0 802DDAC0 85E90058 */  lh         $t1, 0x58($t7)
    /* 2BFEF4 802DDAC4 03194021 */  addu       $t0, $t8, $t9
    /* 2BFEF8 802DDAC8 01095021 */  addu       $t2, $t0, $t1
    /* 2BFEFC 802DDACC 100000CB */  b          .L802DDDFC_2C022C
    /* 2BFF00 802DDAD0 A60A0002 */   sh        $t2, 0x2($s0)
  .L802DDAD4_2BFF04:
    /* 2BFF04 802DDAD4 11600078 */  beqz       $t3, .L802DDCB8_2C00E8
    /* 2BFF08 802DDAD8 3C010040 */   lui       $at, (0x400000 >> 16)
    /* 2BFF0C 802DDADC 8FAD0020 */  lw         $t5, 0x20($sp)
    /* 2BFF10 802DDAE0 00616025 */  or         $t4, $v1, $at
    /* 2BFF14 802DDAE4 AE0C0020 */  sw         $t4, 0x20($s0)
    /* 2BFF18 802DDAE8 8DAE0054 */  lw         $t6, 0x54($t5)
    /* 2BFF1C 802DDAEC 2401FFF3 */  addiu      $at, $zero, -0xD
    /* 2BFF20 802DDAF0 01C1C024 */  and        $t8, $t6, $at
    /* 2BFF24 802DDAF4 ADB80054 */  sw         $t8, 0x54($t5)
    /* 2BFF28 802DDAF8 92190026 */  lbu        $t9, 0x26($s0)
    /* 2BFF2C 802DDAFC 57200009 */  bnel       $t9, $zero, .L802DDB24_2BFF54
    /* 2BFF30 802DDB00 8E0B0020 */   lw        $t3, 0x20($s0)
    /* 2BFF34 802DDB04 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 2BFF38 802DDB08 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 2BFF3C 802DDB0C A2000036 */  sb         $zero, 0x36($s0)
    /* 2BFF40 802DDB10 01E14825 */  or         $t1, $t7, $at
    /* 2BFF44 802DDB14 AE090020 */  sw         $t1, 0x20($s0)
    /* 2BFF48 802DDB18 0C03CD2B */  jal        func_800F34AC_10245C
    /* 2BFF4C 802DDB1C 31240007 */   andi      $a0, $t1, 0x7
    /* 2BFF50 802DDB20 8E0B0020 */  lw         $t3, 0x20($s0)
  .L802DDB24_2BFF54:
    /* 2BFF54 802DDB24 86050000 */  lh         $a1, 0x0($s0)
    /* 2BFF58 802DDB28 86060004 */  lh         $a2, 0x4($s0)
    /* 2BFF5C 802DDB2C 0C03CB52 */  jal        func_800F2D48_101CF8
    /* 2BFF60 802DDB30 31640007 */   andi      $a0, $t3, 0x7
    /* 2BFF64 802DDB34 92020026 */  lbu        $v0, 0x26($s0)
    /* 2BFF68 802DDB38 28410010 */  slti       $at, $v0, 0x10
    /* 2BFF6C 802DDB3C 1020002A */  beqz       $at, .L802DDBE8_2C0018
    /* 2BFF70 802DDB40 00022140 */   sll       $a0, $v0, 5
    /* 2BFF74 802DDB44 00822023 */  subu       $a0, $a0, $v0
    /* 2BFF78 802DDB48 00042080 */  sll        $a0, $a0, 2
    /* 2BFF7C 802DDB4C 00822021 */  addu       $a0, $a0, $v0
    /* 2BFF80 802DDB50 00042100 */  sll        $a0, $a0, 4
    /* 2BFF84 802DDB54 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* 2BFF88 802DDB58 0C007660 */  jal        sins
    /* 2BFF8C 802DDB5C 01C02025 */   or        $a0, $t6, $zero
    /* 2BFF90 802DDB60 44823000 */  mtc1       $v0, $f6
    /* 2BFF94 802DDB64 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BFF98 802DDB68 44818800 */  mtc1       $at, $f17
    /* 2BFF9C 802DDB6C 46803220 */  cvt.s.w    $f8, $f6
    /* 2BFFA0 802DDB70 44808000 */  mtc1       $zero, $f16
    /* 2BFFA4 802DDB74 44802000 */  mtc1       $zero, $f4
    /* 2BFFA8 802DDB78 3C014416 */  lui        $at, (0x44160000 >> 16)
    /* 2BFFAC 802DDB7C 460042A1 */  cvt.d.s    $f10, $f8
    /* 2BFFB0 802DDB80 46305483 */  div.d      $f18, $f10, $f16
    /* 2BFFB4 802DDB84 46209020 */  cvt.s.d    $f0, $f18
    /* 2BFFB8 802DDB88 4600203C */  c.lt.s     $f4, $f0
    /* 2BFFBC 802DDB8C 00000000 */  nop
    /* 2BFFC0 802DDB90 4502000A */  bc1fl      .L802DDBBC_2BFFEC
    /* 2BFFC4 802DDB94 44818000 */   mtc1      $at, $f16
    /* 2BFFC8 802DDB98 3C0143C8 */  lui        $at, (0x43C80000 >> 16)
    /* 2BFFCC 802DDB9C 44813000 */  mtc1       $at, $f6
    /* 2BFFD0 802DDBA0 00000000 */  nop
    /* 2BFFD4 802DDBA4 46060202 */  mul.s      $f8, $f0, $f6
    /* 2BFFD8 802DDBA8 4600428D */  trunc.w.s  $f10, $f8
    /* 2BFFDC 802DDBAC 440D5000 */  mfc1       $t5, $f10
    /* 2BFFE0 802DDBB0 10000008 */  b          .L802DDBD4_2C0004
    /* 2BFFE4 802DDBB4 A60D0048 */   sh        $t5, 0x48($s0)
    /* 2BFFE8 802DDBB8 44818000 */  mtc1       $at, $f16
  .L802DDBBC_2BFFEC:
    /* 2BFFEC 802DDBBC 00000000 */  nop
    /* 2BFFF0 802DDBC0 46100482 */  mul.s      $f18, $f0, $f16
    /* 2BFFF4 802DDBC4 4600910D */  trunc.w.s  $f4, $f18
    /* 2BFFF8 802DDBC8 440F2000 */  mfc1       $t7, $f4
    /* 2BFFFC 802DDBCC 00000000 */  nop
    /* 2C0000 802DDBD0 A60F0048 */  sh         $t7, 0x48($s0)
  .L802DDBD4_2C0004:
    /* 2C0004 802DDBD4 8FA2002C */  lw         $v0, 0x2C($sp)
    /* 2C0008 802DDBD8 9448000A */  lhu        $t0, 0xA($v0)
    /* 2C000C 802DDBDC 25090352 */  addiu      $t1, $t0, 0x352
    /* 2C0010 802DDBE0 1000001C */  b          .L802DDC54_2C0084
    /* 2C0014 802DDBE4 A449000A */   sh        $t1, 0xA($v0)
  .L802DDBE8_2C0018:
    /* 2C0018 802DDBE8 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 2C001C 802DDBEC 860C0048 */  lh         $t4, 0x48($s0)
    /* 2C0020 802DDBF0 3C01BFFF */  lui        $at, (0xBFFFFFFF >> 16)
    /* 2C0024 802DDBF4 3421FFFF */  ori        $at, $at, (0xBFFFFFFF & 0xFFFF)
    /* 2C0028 802DDBF8 01415824 */  and        $t3, $t2, $at
    /* 2C002C 802DDBFC 258EFFF0 */  addiu      $t6, $t4, -0x10
    /* 2C0030 802DDC00 AE0B0020 */  sw         $t3, 0x20($s0)
    /* 2C0034 802DDC04 A60E0048 */  sh         $t6, 0x48($s0)
    /* 2C0038 802DDC08 0C0B7490 */  jal        func_802DD240_2BF670
    /* 2C003C 802DDC0C 93A40083 */   lbu       $a0, 0x83($sp)
    /* 2C0040 802DDC10 8FA20074 */  lw         $v0, 0x74($sp)
    /* 2C0044 802DDC14 284107D0 */  slti       $at, $v0, 0x7D0
    /* 2C0048 802DDC18 1020000B */  beqz       $at, .L802DDC48_2C0078
    /* 2C004C 802DDC1C 241807D0 */   addiu     $t8, $zero, 0x7D0
    /* 2C0050 802DDC20 03026823 */  subu       $t5, $t8, $v0
    /* 2C0054 802DDC24 240103E8 */  addiu      $at, $zero, 0x3E8
    /* 2C0058 802DDC28 01A1001A */  div        $zero, $t5, $at
    /* 2C005C 802DDC2C 0000C812 */  mflo       $t9
    /* 2C0060 802DDC30 44993000 */  mtc1       $t9, $f6
    /* 2C0064 802DDC34 24050001 */  addiu      $a1, $zero, 0x1
    /* 2C0068 802DDC38 24060001 */  addiu      $a2, $zero, 0x1
    /* 2C006C 802DDC3C 24070001 */  addiu      $a3, $zero, 0x1
    /* 2C0070 802DDC40 0C04D742 */  jal        func_80135D08_144CB8
    /* 2C0074 802DDC44 46803320 */   cvt.s.w   $f12, $f6
  .L802DDC48_2C0078:
    /* 2C0078 802DDC48 93A40083 */  lbu        $a0, 0x83($sp)
    /* 2C007C 802DDC4C 0C0B7474 */  jal        func_802DD1D0_2BF600
    /* 2C0080 802DDC50 87A5007A */   lh        $a1, 0x7A($sp)
  .L802DDC54_2C0084:
    /* 2C0084 802DDC54 920F0026 */  lbu        $t7, 0x26($s0)
    /* 2C0088 802DDC58 8FAC0020 */  lw         $t4, 0x20($sp)
    /* 2C008C 802DDC5C 86090048 */  lh         $t1, 0x48($s0)
    /* 2C0090 802DDC60 25E80001 */  addiu      $t0, $t7, 0x1
    /* 2C0094 802DDC64 8FAA0050 */  lw         $t2, 0x50($sp)
    /* 2C0098 802DDC68 A2080026 */  sb         $t0, 0x26($s0)
    /* 2C009C 802DDC6C 858E0058 */  lh         $t6, 0x58($t4)
    /* 2C00A0 802DDC70 310D00FF */  andi       $t5, $t0, 0xFF
    /* 2C00A4 802DDC74 012A5821 */  addu       $t3, $t1, $t2
    /* 2C00A8 802DDC78 29A10039 */  slti       $at, $t5, 0x39
    /* 2C00AC 802DDC7C 016EC021 */  addu       $t8, $t3, $t6
    /* 2C00B0 802DDC80 1420005E */  bnez       $at, .L802DDDFC_2C022C
    /* 2C00B4 802DDC84 A6180002 */   sh        $t8, 0x2($s0)
    /* 2C00B8 802DDC88 92190024 */  lbu        $t9, 0x24($s0)
    /* 2C00BC 802DDC8C 24010001 */  addiu      $at, $zero, 0x1
    /* 2C00C0 802DDC90 17210005 */  bne        $t9, $at, .L802DDCA8_2C00D8
    /* 2C00C4 802DDC94 00000000 */   nop
    /* 2C00C8 802DDC98 0C01E644 */  jal        func_80079910_888C0
    /* 2C00CC 802DDC9C 93A40083 */   lbu       $a0, 0x83($sp)
    /* 2C00D0 802DDCA0 10000056 */  b          .L802DDDFC_2C022C
    /* 2C00D4 802DDCA4 00000000 */   nop
  .L802DDCA8_2C00D8:
    /* 2C00D8 802DDCA8 0C0B7545 */  jal        func_802DD514_2BF944
    /* 2C00DC 802DDCAC 93A40083 */   lbu       $a0, 0x83($sp)
    /* 2C00E0 802DDCB0 10000052 */  b          .L802DDDFC_2C022C
    /* 2C00E4 802DDCB4 00000000 */   nop
  .L802DDCB8_2C00E8:
    /* 2C00E8 802DDCB8 14400007 */  bnez       $v0, .L802DDCD8_2C0108
    /* 2C00EC 802DDCBC 8FAF0074 */   lw        $t7, 0x74($sp)
    /* 2C00F0 802DDCC0 29E105DC */  slti       $at, $t7, 0x5DC
    /* 2C00F4 802DDCC4 10200004 */  beqz       $at, .L802DDCD8_2C0108
    /* 2C00F8 802DDCC8 8FA90020 */   lw        $t1, 0x20($sp)
    /* 2C00FC 802DDCCC 24080200 */  addiu      $t0, $zero, 0x200
    /* 2C0100 802DDCD0 10000004 */  b          .L802DDCE4_2C0114
    /* 2C0104 802DDCD4 A5280040 */   sh        $t0, 0x40($t1)
  .L802DDCD8_2C0108:
    /* 2C0108 802DDCD8 8FAC0020 */  lw         $t4, 0x20($sp)
    /* 2C010C 802DDCDC 240A0300 */  addiu      $t2, $zero, 0x300
    /* 2C0110 802DDCE0 A58A0040 */  sh         $t2, 0x40($t4)
  .L802DDCE4_2C0114:
    /* 2C0114 802DDCE4 3C02802E */  lui        $v0, %hi(D_802E278C)
    /* 2C0118 802DDCE8 8442278C */  lh         $v0, %lo(D_802E278C)($v0)
    /* 2C011C 802DDCEC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 2C0120 802DDCF0 8FAB0074 */  lw         $t3, 0x74($sp)
    /* 2C0124 802DDCF4 14410003 */  bne        $v0, $at, .L802DDD04_2C0134
    /* 2C0128 802DDCF8 296105DC */   slti      $at, $t3, 0x5DC
    /* 2C012C 802DDCFC 5420000F */  bnel       $at, $zero, .L802DDD3C_2C016C
    /* 2C0130 802DDD00 93A40083 */   lbu       $a0, 0x83($sp)
  .L802DDD04_2C0134:
    /* 2C0134 802DDD04 0C000E38 */  jal        func_800038E0_44E0
    /* 2C0138 802DDD08 00000000 */   nop
    /* 2C013C 802DDD0C 24010064 */  addiu      $at, $zero, 0x64
    /* 2C0140 802DDD10 0041001A */  div        $zero, $v0, $at
    /* 2C0144 802DDD14 00007010 */  mfhi       $t6
    /* 2C0148 802DDD18 8FB80074 */  lw         $t8, 0x74($sp)
    /* 2C014C 802DDD1C 15C0000C */  bnez       $t6, .L802DDD50_2C0180
    /* 2C0150 802DDD20 2B0101F5 */   slti      $at, $t8, 0x1F5
    /* 2C0154 802DDD24 1420000A */  bnez       $at, .L802DDD50_2C0180
    /* 2C0158 802DDD28 3C02802E */   lui       $v0, %hi(D_802E278C)
    /* 2C015C 802DDD2C 8442278C */  lh         $v0, %lo(D_802E278C)($v0)
    /* 2C0160 802DDD30 14400007 */  bnez       $v0, .L802DDD50_2C0180
    /* 2C0164 802DDD34 00000000 */   nop
    /* 2C0168 802DDD38 93A40083 */  lbu        $a0, 0x83($sp)
  .L802DDD3C_2C016C:
    /* 2C016C 802DDD3C 0C04DD1A */  jal        func_80137468_146418
    /* 2C0170 802DDD40 24050011 */   addiu     $a1, $zero, 0x11
    /* 2C0174 802DDD44 24020032 */  addiu      $v0, $zero, 0x32
    /* 2C0178 802DDD48 3C01802E */  lui        $at, %hi(D_802E278C)
    /* 2C017C 802DDD4C A422278C */  sh         $v0, %lo(D_802E278C)($at)
  .L802DDD50_2C0180:
    /* 2C0180 802DDD50 3C02802E */  lui        $v0, %hi(D_802E278C)
    /* 2C0184 802DDD54 8442278C */  lh         $v0, %lo(D_802E278C)($v0)
    /* 2C0188 802DDD58 3C01802E */  lui        $at, %hi(D_802E278C)
    /* 2C018C 802DDD5C 240500C8 */  addiu      $a1, $zero, 0xC8
    /* 2C0190 802DDD60 18400002 */  blez       $v0, .L802DDD6C_2C019C
    /* 2C0194 802DDD64 2459FFFF */   addiu     $t9, $v0, -0x1
    /* 2C0198 802DDD68 A439278C */  sh         $t9, %lo(D_802E278C)($at)
  .L802DDD6C_2C019C:
    /* 2C019C 802DDD6C 8FAF0074 */  lw         $t7, 0x74($sp)
    /* 2C01A0 802DDD70 240600C8 */  addiu      $a2, $zero, 0xC8
    /* 2C01A4 802DDD74 29E102BC */  slti       $at, $t7, 0x2BC
    /* 2C01A8 802DDD78 54200003 */  bnel       $at, $zero, .L802DDD88_2C01B8
    /* 2C01AC 802DDD7C 8E030020 */   lw        $v1, 0x20($s0)
    /* 2C01B0 802DDD80 A200003D */  sb         $zero, 0x3D($s0)
    /* 2C01B4 802DDD84 8E030020 */  lw         $v1, 0x20($s0)
  .L802DDD88_2C01B8:
    /* 2C01B8 802DDD88 8FA90074 */  lw         $t1, 0x74($sp)
    /* 2C01BC 802DDD8C 8FAA0038 */  lw         $t2, 0x38($sp)
    /* 2C01C0 802DDD90 30683000 */  andi       $t0, $v1, 0x3000
    /* 2C01C4 802DDD94 1500000F */  bnez       $t0, .L802DDDD4_2C0204
    /* 2C01C8 802DDD98 012A082A */   slt       $at, $t1, $t2
    /* 2C01CC 802DDD9C 1020000B */  beqz       $at, .L802DDDCC_2C01FC
    /* 2C01D0 802DDDA0 34781000 */   ori       $t8, $v1, 0x1000
    /* 2C01D4 802DDDA4 820C003D */  lb         $t4, 0x3D($s0)
    /* 2C01D8 802DDDA8 3C0B8005 */  lui        $t3, %hi(D_80052AD0)
    /* 2C01DC 802DDDAC 55800008 */  bnel       $t4, $zero, .L802DDDD0_2C0200
    /* 2C01E0 802DDDB0 AE180020 */   sw        $t8, 0x20($s0)
    /* 2C01E4 802DDDB4 8D6B2AD0 */  lw         $t3, %lo(D_80052AD0)($t3)
    /* 2C01E8 802DDDB8 346E2000 */  ori        $t6, $v1, 0x2000
    /* 2C01EC 802DDDBC 51600004 */  beql       $t3, $zero, .L802DDDD0_2C0200
    /* 2C01F0 802DDDC0 AE180020 */   sw        $t8, 0x20($s0)
    /* 2C01F4 802DDDC4 10000002 */  b          .L802DDDD0_2C0200
    /* 2C01F8 802DDDC8 AE0E0020 */   sw        $t6, 0x20($s0)
  .L802DDDCC_2C01FC:
    /* 2C01FC 802DDDCC AE180020 */  sw         $t8, 0x20($s0)
  .L802DDDD0_2C0200:
    /* 2C0200 802DDDD0 A2000036 */  sb         $zero, 0x36($s0)
  .L802DDDD4_2C0204:
    /* 2C0204 802DDDD4 820D003D */  lb         $t5, 0x3D($s0)
    /* 2C0208 802DDDD8 93A40083 */  lbu        $a0, 0x83($sp)
    /* 2C020C 802DDDDC 11A00005 */  beqz       $t5, .L802DDDF4_2C0224
    /* 2C0210 802DDDE0 00000000 */   nop
    /* 2C0214 802DDDE4 0C021D07 */  jal        func_8008741C_963CC
    /* 2C0218 802DDDE8 2405FE70 */   addiu     $a1, $zero, -0x190
    /* 2C021C 802DDDEC 10000003 */  b          .L802DDDFC_2C022C
    /* 2C0220 802DDDF0 00000000 */   nop
  .L802DDDF4_2C0224:
    /* 2C0224 802DDDF4 0C021D47 */  jal        func_8008751C_964CC
    /* 2C0228 802DDDF8 93A40083 */   lbu       $a0, 0x83($sp)
  .L802DDDFC_2C022C:
    /* 2C022C 802DDDFC 0C0B7314 */  jal        func_802DCC50_2BF080
    /* 2C0230 802DDE00 93A40083 */   lbu       $a0, 0x83($sp)
    /* 2C0234 802DDE04 10400002 */  beqz       $v0, .L802DDE10_2C0240
    /* 2C0238 802DDE08 24190001 */   addiu     $t9, $zero, 0x1
    /* 2C023C 802DDE0C A219003D */  sb         $t9, 0x3D($s0)
  .L802DDE10_2C0240:
    /* 2C0240 802DDE10 0C0B7285 */  jal        func_802DCA14_2BEE44
    /* 2C0244 802DDE14 93A40083 */   lbu       $a0, 0x83($sp)
    /* 2C0248 802DDE18 8602001E */  lh         $v0, 0x1E($s0)
    /* 2C024C 802DDE1C 10400002 */  beqz       $v0, .L802DDE28_2C0258
    /* 2C0250 802DDE20 244FFFFF */   addiu     $t7, $v0, -0x1
    /* 2C0254 802DDE24 A60F001E */  sh         $t7, 0x1E($s0)
  .L802DDE28_2C0258:
    /* 2C0258 802DDE28 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 2C025C 802DDE2C 8FB00018 */  lw         $s0, 0x18($sp)
    /* 2C0260 802DDE30 27BD0080 */  addiu      $sp, $sp, 0x80
    /* 2C0264 802DDE34 03E00008 */  jr         $ra
    /* 2C0268 802DDE38 00000000 */   nop
endlabel func_802DD668_2BFA98
