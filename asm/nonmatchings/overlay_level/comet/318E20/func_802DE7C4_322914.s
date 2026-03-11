nonmatching func_802DE7C4_322914, 0x9C4

glabel func_802DE7C4_322914
    /* 322914 802DE7C4 27BDFF10 */  addiu      $sp, $sp, -0xF0
    /* 322918 802DE7C8 AFA400F0 */  sw         $a0, 0xF0($sp)
    /* 32291C 802DE7CC 93AE00F3 */  lbu        $t6, 0xF3($sp)
    /* 322920 802DE7D0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 322924 802DE7D4 AFB00040 */  sw         $s0, 0x40($sp)
    /* 322928 802DE7D8 000E7880 */  sll        $t7, $t6, 2
    /* 32292C 802DE7DC 01EE7821 */  addu       $t7, $t7, $t6
    /* 322930 802DE7E0 000F7900 */  sll        $t7, $t7, 4
    /* 322934 802DE7E4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 322938 802DE7E8 01F88021 */  addu       $s0, $t7, $t8
    /* 32293C 802DE7EC 8E190020 */  lw         $t9, 0x20($s0)
    /* 322940 802DE7F0 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 322944 802DE7F4 240F7D00 */  addiu      $t7, $zero, 0x7D00
    /* 322948 802DE7F8 001972C0 */  sll        $t6, $t9, 11
    /* 32294C 802DE7FC 05C20010 */  bltzl      $t6, .L802DE840_322990
    /* 322950 802DE800 8618000C */   lh        $t8, 0xC($s0)
    /* 322954 802DE804 A2000036 */  sb         $zero, 0x36($s0)
    /* 322958 802DE808 A60F002C */  sh         $t7, 0x2C($s0)
    /* 32295C 802DE80C 0C0334E4 */  jal        func_800CD390_DC340
    /* 322960 802DE810 9204003C */   lbu       $a0, 0x3C($s0)
    /* 322964 802DE814 0C0334E4 */  jal        func_800CD390_DC340
    /* 322968 802DE818 9204003D */   lbu       $a0, 0x3D($s0)
    /* 32296C 802DE81C 2402FFFB */  addiu      $v0, $zero, -0x5
    /* 322970 802DE820 A202003C */  sb         $v0, 0x3C($s0)
    /* 322974 802DE824 A202003D */  sb         $v0, 0x3D($s0)
    /* 322978 802DE828 93A400F3 */  lbu        $a0, 0xF3($sp)
    /* 32297C 802DE82C 0C04DD1A */  jal        func_80137468_146418
    /* 322980 802DE830 24050011 */   addiu     $a1, $zero, 0x11
    /* 322984 802DE834 10000250 */  b          .L802DF178_3232C8
    /* 322988 802DE838 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 32298C 802DE83C 8618000C */  lh         $t8, 0xC($s0)
  .L802DE840_322990:
    /* 322990 802DE840 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 322994 802DE844 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 322998 802DE848 0018C900 */  sll        $t9, $t8, 4
    /* 32299C 802DE84C 00797021 */  addu       $t6, $v1, $t9
    /* 3229A0 802DE850 81CD000C */  lb         $t5, 0xC($t6)
    /* 3229A4 802DE854 93A400F3 */  lbu        $a0, 0xF3($sp)
    /* 3229A8 802DE858 24050010 */  addiu      $a1, $zero, 0x10
    /* 3229AC 802DE85C 000DFC00 */  sll        $ra, $t5, 16
    /* 3229B0 802DE860 001F7C03 */  sra        $t7, $ra, 16
    /* 3229B4 802DE864 000FC100 */  sll        $t8, $t7, 4
    /* 3229B8 802DE868 00781021 */  addu       $v0, $v1, $t8
    /* 3229BC 802DE86C 804C000D */  lb         $t4, 0xD($v0)
    /* 3229C0 802DE870 01E0F825 */  or         $ra, $t7, $zero
    /* 3229C4 802DE874 8059000C */  lb         $t9, 0xC($v0)
    /* 3229C8 802DE878 000C7100 */  sll        $t6, $t4, 4
    /* 3229CC 802DE87C 006E7821 */  addu       $t7, $v1, $t6
    /* 3229D0 802DE880 81F8000D */  lb         $t8, 0xD($t7)
    /* 3229D4 802DE884 A7B900CA */  sh         $t9, 0xCA($sp)
    /* 3229D8 802DE888 24060009 */  addiu      $a2, $zero, 0x9
    /* 3229DC 802DE88C A7B800EA */  sh         $t8, 0xEA($sp)
    /* 3229E0 802DE890 87B900EA */  lh         $t9, 0xEA($sp)
    /* 3229E4 802DE894 27A700C8 */  addiu      $a3, $sp, 0xC8
    /* 3229E8 802DE898 00197100 */  sll        $t6, $t9, 4
    /* 3229EC 802DE89C 006E7821 */  addu       $t7, $v1, $t6
    /* 3229F0 802DE8A0 81F8000D */  lb         $t8, 0xD($t7)
    /* 3229F4 802DE8A4 0018C900 */  sll        $t9, $t8, 4
    /* 3229F8 802DE8A8 00794021 */  addu       $t0, $v1, $t9
    /* 3229FC 802DE8AC 810E000C */  lb         $t6, 0xC($t0)
    /* 322A00 802DE8B0 A7B800CC */  sh         $t8, 0xCC($sp)
    /* 322A04 802DE8B4 A7AE00CE */  sh         $t6, 0xCE($sp)
    /* 322A08 802DE8B8 87AF00CE */  lh         $t7, 0xCE($sp)
    /* 322A0C 802DE8BC 000FC100 */  sll        $t8, $t7, 4
    /* 322A10 802DE8C0 810F000D */  lb         $t7, 0xD($t0)
    /* 322A14 802DE8C4 0078C821 */  addu       $t9, $v1, $t8
    /* 322A18 802DE8C8 832E000C */  lb         $t6, 0xC($t9)
    /* 322A1C 802DE8CC A7AF00D2 */  sh         $t7, 0xD2($sp)
    /* 322A20 802DE8D0 87B800D2 */  lh         $t8, 0xD2($sp)
    /* 322A24 802DE8D4 A7AE00D0 */  sh         $t6, 0xD0($sp)
    /* 322A28 802DE8D8 0018C900 */  sll        $t9, $t8, 4
    /* 322A2C 802DE8DC 00795021 */  addu       $t2, $v1, $t9
    /* 322A30 802DE8E0 814E000C */  lb         $t6, 0xC($t2)
    /* 322A34 802DE8E4 A7AE00D4 */  sh         $t6, 0xD4($sp)
    /* 322A38 802DE8E8 87AF00D4 */  lh         $t7, 0xD4($sp)
    /* 322A3C 802DE8EC 000FC100 */  sll        $t8, $t7, 4
    /* 322A40 802DE8F0 814F000D */  lb         $t7, 0xD($t2)
    /* 322A44 802DE8F4 0078C821 */  addu       $t9, $v1, $t8
    /* 322A48 802DE8F8 832E000C */  lb         $t6, 0xC($t9)
    /* 322A4C 802DE8FC A7AF00D8 */  sh         $t7, 0xD8($sp)
    /* 322A50 802DE900 87B800D8 */  lh         $t8, 0xD8($sp)
    /* 322A54 802DE904 A7AE00D6 */  sh         $t6, 0xD6($sp)
    /* 322A58 802DE908 0018C900 */  sll        $t9, $t8, 4
    /* 322A5C 802DE90C 00794821 */  addu       $t1, $v1, $t9
    /* 322A60 802DE910 812E000C */  lb         $t6, 0xC($t1)
    /* 322A64 802DE914 A7AE00DA */  sh         $t6, 0xDA($sp)
    /* 322A68 802DE918 87AF00DA */  lh         $t7, 0xDA($sp)
    /* 322A6C 802DE91C 000FC100 */  sll        $t8, $t7, 4
    /* 322A70 802DE920 812F000D */  lb         $t7, 0xD($t1)
    /* 322A74 802DE924 0078C821 */  addu       $t9, $v1, $t8
    /* 322A78 802DE928 832E000C */  lb         $t6, 0xC($t9)
    /* 322A7C 802DE92C A7AF00DE */  sh         $t7, 0xDE($sp)
    /* 322A80 802DE930 87B800DE */  lh         $t8, 0xDE($sp)
    /* 322A84 802DE934 A7AE00DC */  sh         $t6, 0xDC($sp)
    /* 322A88 802DE938 0018C900 */  sll        $t9, $t8, 4
    /* 322A8C 802DE93C 00795821 */  addu       $t3, $v1, $t9
    /* 322A90 802DE940 816E000C */  lb         $t6, 0xC($t3)
    /* 322A94 802DE944 A7AE00E0 */  sh         $t6, 0xE0($sp)
    /* 322A98 802DE948 87AF00E0 */  lh         $t7, 0xE0($sp)
    /* 322A9C 802DE94C 000FC100 */  sll        $t8, $t7, 4
    /* 322AA0 802DE950 816F000D */  lb         $t7, 0xD($t3)
    /* 322AA4 802DE954 0078C821 */  addu       $t9, $v1, $t8
    /* 322AA8 802DE958 832E000C */  lb         $t6, 0xC($t9)
    /* 322AAC 802DE95C A7AF00E4 */  sh         $t7, 0xE4($sp)
    /* 322AB0 802DE960 87B800E4 */  lh         $t8, 0xE4($sp)
    /* 322AB4 802DE964 A7AE00E2 */  sh         $t6, 0xE2($sp)
    /* 322AB8 802DE968 0018C900 */  sll        $t9, $t8, 4
    /* 322ABC 802DE96C 00797021 */  addu       $t6, $v1, $t9
    /* 322AC0 802DE970 81CF000C */  lb         $t7, 0xC($t6)
    /* 322AC4 802DE974 3C18802E */  lui        $t8, %hi(D_802E67D0)
    /* 322AC8 802DE978 271867D0 */  addiu      $t8, $t8, %lo(D_802E67D0)
    /* 322ACC 802DE97C A7BF00C8 */  sh         $ra, 0xC8($sp)
    /* 322AD0 802DE980 AFB80010 */  sw         $t8, 0x10($sp)
    /* 322AD4 802DE984 A7AD00EE */  sh         $t5, 0xEE($sp)
    /* 322AD8 802DE988 A7AC00EC */  sh         $t4, 0xEC($sp)
    /* 322ADC 802DE98C 0C0207C6 */  jal        func_80081F18_90EC8
    /* 322AE0 802DE990 A7AF00E6 */   sh        $t7, 0xE6($sp)
    /* 322AE4 802DE994 3C01802E */  lui        $at, %hi(D_802E7B78)
    /* 322AE8 802DE998 87AC00EC */  lh         $t4, 0xEC($sp)
    /* 322AEC 802DE99C C4247B78 */  lwc1       $f4, %lo(D_802E7B78)($at)
    /* 322AF0 802DE9A0 24191F40 */  addiu      $t9, $zero, 0x1F40
    /* 322AF4 802DE9A4 240EEC78 */  addiu      $t6, $zero, -0x1388
    /* 322AF8 802DE9A8 240F09C4 */  addiu      $t7, $zero, 0x9C4
    /* 322AFC 802DE9AC A3A200C7 */  sb         $v0, 0xC7($sp)
    /* 322B00 802DE9B0 AFAF001C */  sw         $t7, 0x1C($sp)
    /* 322B04 802DE9B4 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 322B08 802DE9B8 AFB90014 */  sw         $t9, 0x14($sp)
    /* 322B0C 802DE9BC 93A400F3 */  lbu        $a0, 0xF3($sp)
    /* 322B10 802DE9C0 2405010E */  addiu      $a1, $zero, 0x10E
    /* 322B14 802DE9C4 00003025 */  or         $a2, $zero, $zero
    /* 322B18 802DE9C8 87A700EA */  lh         $a3, 0xEA($sp)
    /* 322B1C 802DE9CC AFAC0010 */  sw         $t4, 0x10($sp)
    /* 322B20 802DE9D0 0C0B665F */  jal        func_802D997C_31DACC
    /* 322B24 802DE9D4 E7A40020 */   swc1      $f4, 0x20($sp)
    /* 322B28 802DE9D8 93A200C7 */  lbu        $v0, 0xC7($sp)
    /* 322B2C 802DE9DC 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 322B30 802DE9E0 24010003 */  addiu      $at, $zero, 0x3
    /* 322B34 802DE9E4 1041000A */  beq        $v0, $at, .L802DEA10_322B60
    /* 322B38 802DE9E8 2463DD50 */   addiu     $v1, $v1, %lo(D_8014DD50)
    /* 322B3C 802DE9EC 24010005 */  addiu      $at, $zero, 0x5
    /* 322B40 802DE9F0 10410023 */  beq        $v0, $at, .L802DEA80_322BD0
    /* 322B44 802DE9F4 24010006 */   addiu     $at, $zero, 0x6
    /* 322B48 802DE9F8 1041006A */  beq        $v0, $at, .L802DEBA4_322CF4
    /* 322B4C 802DE9FC 24010009 */   addiu     $at, $zero, 0x9
    /* 322B50 802DEA00 504100B4 */  beql       $v0, $at, .L802DECD4_322E24
    /* 322B54 802DEA04 86020006 */   lh        $v0, 0x6($s0)
    /* 322B58 802DEA08 10000121 */  b          .L802DEE90_322FE0
    /* 322B5C 802DEA0C 93A400F3 */   lbu       $a0, 0xF3($sp)
  .L802DEA10_322B60:
    /* 322B60 802DEA10 87A500E6 */  lh         $a1, 0xE6($sp)
    /* 322B64 802DEA14 87B900E4 */  lh         $t9, 0xE4($sp)
    /* 322B68 802DEA18 93A400F3 */  lbu        $a0, 0xF3($sp)
    /* 322B6C 802DEA1C 0005C100 */  sll        $t8, $a1, 4
    /* 322B70 802DEA20 00784021 */  addu       $t0, $v1, $t8
    /* 322B74 802DEA24 00197100 */  sll        $t6, $t9, 4
    /* 322B78 802DEA28 006E1021 */  addu       $v0, $v1, $t6
    /* 322B7C 802DEA2C 84580000 */  lh         $t8, 0x0($v0)
    /* 322B80 802DEA30 850F0000 */  lh         $t7, 0x0($t0)
    /* 322B84 802DEA34 240E0028 */  addiu      $t6, $zero, 0x28
    /* 322B88 802DEA38 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 322B8C 802DEA3C 01F83021 */  addu       $a2, $t7, $t8
    /* 322B90 802DEA40 84580002 */  lh         $t8, 0x2($v0)
    /* 322B94 802DEA44 850F0002 */  lh         $t7, 0x2($t0)
    /* 322B98 802DEA48 0006CC00 */  sll        $t9, $a2, 16
    /* 322B9C 802DEA4C 00193403 */  sra        $a2, $t9, 16
    /* 322BA0 802DEA50 01F83821 */  addu       $a3, $t7, $t8
    /* 322BA4 802DEA54 84580004 */  lh         $t8, 0x4($v0)
    /* 322BA8 802DEA58 850F0004 */  lh         $t7, 0x4($t0)
    /* 322BAC 802DEA5C 0007CC00 */  sll        $t9, $a3, 16
    /* 322BB0 802DEA60 00193C03 */  sra        $a3, $t9, 16
    /* 322BB4 802DEA64 01F8C821 */  addu       $t9, $t7, $t8
    /* 322BB8 802DEA68 AFB90010 */  sw         $t9, 0x10($sp)
    /* 322BBC 802DEA6C AFA00014 */  sw         $zero, 0x14($sp)
    /* 322BC0 802DEA70 0C022390 */  jal        func_80088E40_97DF0
    /* 322BC4 802DEA74 AFA0001C */   sw        $zero, 0x1C($sp)
    /* 322BC8 802DEA78 10000105 */  b          .L802DEE90_322FE0
    /* 322BCC 802DEA7C 93A400F3 */   lbu       $a0, 0xF3($sp)
  .L802DEA80_322BD0:
    /* 322BD0 802DEA80 86020006 */  lh         $v0, 0x6($s0)
    /* 322BD4 802DEA84 3044FFFF */  andi       $a0, $v0, 0xFFFF
    /* 322BD8 802DEA88 0C007660 */  jal        sins
    /* 322BDC 802DEA8C AFA40050 */   sw        $a0, 0x50($sp)
    /* 322BE0 802DEA90 44823000 */  mtc1       $v0, $f6
    /* 322BE4 802DEA94 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 322BE8 802DEA98 44818800 */  mtc1       $at, $f17
    /* 322BEC 802DEA9C 46803220 */  cvt.s.w    $f8, $f6
    /* 322BF0 802DEAA0 44808000 */  mtc1       $zero, $f16
    /* 322BF4 802DEAA4 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 322BF8 802DEAA8 44812800 */  mtc1       $at, $f5
    /* 322BFC 802DEAAC 44802000 */  mtc1       $zero, $f4
    /* 322C00 802DEAB0 8FA40050 */  lw         $a0, 0x50($sp)
    /* 322C04 802DEAB4 460042A1 */  cvt.d.s    $f10, $f8
    /* 322C08 802DEAB8 46305483 */  div.d      $f18, $f10, $f16
    /* 322C0C 802DEABC 46249182 */  mul.d      $f6, $f18, $f4
    /* 322C10 802DEAC0 46203220 */  cvt.s.d    $f8, $f6
    /* 322C14 802DEAC4 0C007654 */  jal        coss
    /* 322C18 802DEAC8 E7A800AC */   swc1      $f8, 0xAC($sp)
    /* 322C1C 802DEACC 44829000 */  mtc1       $v0, $f18
    /* 322C20 802DEAD0 C7AA00AC */  lwc1       $f10, 0xAC($sp)
    /* 322C24 802DEAD4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 322C28 802DEAD8 46809120 */  cvt.s.w    $f4, $f18
    /* 322C2C 802DEADC 44814800 */  mtc1       $at, $f9
    /* 322C30 802DEAE0 44804000 */  mtc1       $zero, $f8
    /* 322C34 802DEAE4 87A500D6 */  lh         $a1, 0xD6($sp)
    /* 322C38 802DEAE8 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 322C3C 802DEAEC 4600540D */  trunc.w.s  $f16, $f10
    /* 322C40 802DEAF0 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 322C44 802DEAF4 00057900 */  sll        $t7, $a1, 4
    /* 322C48 802DEAF8 460021A1 */  cvt.d.s    $f6, $f4
    /* 322C4C 802DEAFC 87B900D2 */  lh         $t9, 0xD2($sp)
    /* 322C50 802DEB00 46283283 */  div.d      $f10, $f6, $f8
    /* 322C54 802DEB04 006FC021 */  addu       $t8, $v1, $t7
    /* 322C58 802DEB08 87AF00D4 */  lh         $t7, 0xD4($sp)
    /* 322C5C 802DEB0C 87090000 */  lh         $t1, 0x0($t8)
    /* 322C60 802DEB10 00197100 */  sll        $t6, $t9, 4
    /* 322C64 802DEB14 006E5021 */  addu       $t2, $v1, $t6
    /* 322C68 802DEB18 000FC100 */  sll        $t8, $t7, 4
    /* 322C6C 802DEB1C 85590000 */  lh         $t9, 0x0($t2)
    /* 322C70 802DEB20 00784021 */  addu       $t0, $v1, $t8
    /* 322C74 802DEB24 850F0000 */  lh         $t7, 0x0($t0)
    /* 322C78 802DEB28 01397021 */  addu       $t6, $t1, $t9
    /* 322C7C 802DEB2C 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 322C80 802DEB30 01CF3021 */  addu       $a2, $t6, $t7
    /* 322C84 802DEB34 0006C400 */  sll        $t8, $a2, 16
    /* 322C88 802DEB38 854E0002 */  lh         $t6, 0x2($t2)
    /* 322C8C 802DEB3C 00183403 */  sra        $a2, $t8, 16
    /* 322C90 802DEB40 85180002 */  lh         $t8, 0x2($t0)
    /* 322C94 802DEB44 012E7821 */  addu       $t7, $t1, $t6
    /* 322C98 802DEB48 44818800 */  mtc1       $at, $f17
    /* 322C9C 802DEB4C 01F83821 */  addu       $a3, $t7, $t8
    /* 322CA0 802DEB50 0007CC00 */  sll        $t9, $a3, 16
    /* 322CA4 802DEB54 854F0004 */  lh         $t7, 0x4($t2)
    /* 322CA8 802DEB58 00193C03 */  sra        $a3, $t9, 16
    /* 322CAC 802DEB5C 85190004 */  lh         $t9, 0x4($t0)
    /* 322CB0 802DEB60 012FC021 */  addu       $t8, $t1, $t7
    /* 322CB4 802DEB64 93A400F3 */  lbu        $a0, 0xF3($sp)
    /* 322CB8 802DEB68 03197021 */  addu       $t6, $t8, $t9
    /* 322CBC 802DEB6C 44188000 */  mfc1       $t8, $f16
    /* 322CC0 802DEB70 44808000 */  mtc1       $zero, $f16
    /* 322CC4 802DEB74 2419000F */  addiu      $t9, $zero, 0xF
    /* 322CC8 802DEB78 AFB90018 */  sw         $t9, 0x18($sp)
    /* 322CCC 802DEB7C AFAE0010 */  sw         $t6, 0x10($sp)
    /* 322CD0 802DEB80 AFB80014 */  sw         $t8, 0x14($sp)
    /* 322CD4 802DEB84 46305482 */  mul.d      $f18, $f10, $f16
    /* 322CD8 802DEB88 46209120 */  cvt.s.d    $f4, $f18
    /* 322CDC 802DEB8C 4600218D */  trunc.w.s  $f6, $f4
    /* 322CE0 802DEB90 440F3000 */  mfc1       $t7, $f6
    /* 322CE4 802DEB94 0C022390 */  jal        func_80088E40_97DF0
    /* 322CE8 802DEB98 AFAF001C */   sw        $t7, 0x1C($sp)
    /* 322CEC 802DEB9C 100000BC */  b          .L802DEE90_322FE0
    /* 322CF0 802DEBA0 93A400F3 */   lbu       $a0, 0xF3($sp)
  .L802DEBA4_322CF4:
    /* 322CF4 802DEBA4 86020006 */  lh         $v0, 0x6($s0)
    /* 322CF8 802DEBA8 34018000 */  ori        $at, $zero, 0x8000
    /* 322CFC 802DEBAC 00411021 */  addu       $v0, $v0, $at
    /* 322D00 802DEBB0 3044FFFF */  andi       $a0, $v0, 0xFFFF
    /* 322D04 802DEBB4 0C007660 */  jal        sins
    /* 322D08 802DEBB8 AFA40050 */   sw        $a0, 0x50($sp)
    /* 322D0C 802DEBBC 44824000 */  mtc1       $v0, $f8
    /* 322D10 802DEBC0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 322D14 802DEBC4 44819800 */  mtc1       $at, $f19
    /* 322D18 802DEBC8 468042A0 */  cvt.s.w    $f10, $f8
    /* 322D1C 802DEBCC 44809000 */  mtc1       $zero, $f18
    /* 322D20 802DEBD0 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 322D24 802DEBD4 44813800 */  mtc1       $at, $f7
    /* 322D28 802DEBD8 44803000 */  mtc1       $zero, $f6
    /* 322D2C 802DEBDC 8FA40050 */  lw         $a0, 0x50($sp)
    /* 322D30 802DEBE0 46005421 */  cvt.d.s    $f16, $f10
    /* 322D34 802DEBE4 46328103 */  div.d      $f4, $f16, $f18
    /* 322D38 802DEBE8 46262202 */  mul.d      $f8, $f4, $f6
    /* 322D3C 802DEBEC 462042A0 */  cvt.s.d    $f10, $f8
    /* 322D40 802DEBF0 0C007654 */  jal        coss
    /* 322D44 802DEBF4 E7AA00AC */   swc1      $f10, 0xAC($sp)
    /* 322D48 802DEBF8 44822000 */  mtc1       $v0, $f4
    /* 322D4C 802DEBFC C7B000AC */  lwc1       $f16, 0xAC($sp)
    /* 322D50 802DEC00 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 322D54 802DEC04 468021A0 */  cvt.s.w    $f6, $f4
    /* 322D58 802DEC08 44815800 */  mtc1       $at, $f11
    /* 322D5C 802DEC0C 44805000 */  mtc1       $zero, $f10
    /* 322D60 802DEC10 87A500E2 */  lh         $a1, 0xE2($sp)
    /* 322D64 802DEC14 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 322D68 802DEC18 4600848D */  trunc.w.s  $f18, $f16
    /* 322D6C 802DEC1C 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 322D70 802DEC20 0005C100 */  sll        $t8, $a1, 4
    /* 322D74 802DEC24 46003221 */  cvt.d.s    $f8, $f6
    /* 322D78 802DEC28 87AE00DE */  lh         $t6, 0xDE($sp)
    /* 322D7C 802DEC2C 462A4403 */  div.d      $f16, $f8, $f10
    /* 322D80 802DEC30 0078C821 */  addu       $t9, $v1, $t8
    /* 322D84 802DEC34 87B800E0 */  lh         $t8, 0xE0($sp)
    /* 322D88 802DEC38 87290000 */  lh         $t1, 0x0($t9)
    /* 322D8C 802DEC3C 000E7900 */  sll        $t7, $t6, 4
    /* 322D90 802DEC40 006F5821 */  addu       $t3, $v1, $t7
    /* 322D94 802DEC44 0018C900 */  sll        $t9, $t8, 4
    /* 322D98 802DEC48 856E0000 */  lh         $t6, 0x0($t3)
    /* 322D9C 802DEC4C 00794021 */  addu       $t0, $v1, $t9
    /* 322DA0 802DEC50 85180000 */  lh         $t8, 0x0($t0)
    /* 322DA4 802DEC54 012E7821 */  addu       $t7, $t1, $t6
    /* 322DA8 802DEC58 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 322DAC 802DEC5C 01F83021 */  addu       $a2, $t7, $t8
    /* 322DB0 802DEC60 0006CC00 */  sll        $t9, $a2, 16
    /* 322DB4 802DEC64 856F0002 */  lh         $t7, 0x2($t3)
    /* 322DB8 802DEC68 00193403 */  sra        $a2, $t9, 16
    /* 322DBC 802DEC6C 85190002 */  lh         $t9, 0x2($t0)
    /* 322DC0 802DEC70 012FC021 */  addu       $t8, $t1, $t7
    /* 322DC4 802DEC74 44819800 */  mtc1       $at, $f19
    /* 322DC8 802DEC78 03193821 */  addu       $a3, $t8, $t9
    /* 322DCC 802DEC7C 00077400 */  sll        $t6, $a3, 16
    /* 322DD0 802DEC80 85780004 */  lh         $t8, 0x4($t3)
    /* 322DD4 802DEC84 000E3C03 */  sra        $a3, $t6, 16
    /* 322DD8 802DEC88 850E0004 */  lh         $t6, 0x4($t0)
    /* 322DDC 802DEC8C 0138C821 */  addu       $t9, $t1, $t8
    /* 322DE0 802DEC90 93A400F3 */  lbu        $a0, 0xF3($sp)
    /* 322DE4 802DEC94 032E7821 */  addu       $t7, $t9, $t6
    /* 322DE8 802DEC98 44199000 */  mfc1       $t9, $f18
    /* 322DEC 802DEC9C 44809000 */  mtc1       $zero, $f18
    /* 322DF0 802DECA0 240E000F */  addiu      $t6, $zero, 0xF
    /* 322DF4 802DECA4 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 322DF8 802DECA8 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 322DFC 802DECAC AFB90014 */  sw         $t9, 0x14($sp)
    /* 322E00 802DECB0 46328102 */  mul.d      $f4, $f16, $f18
    /* 322E04 802DECB4 462021A0 */  cvt.s.d    $f6, $f4
    /* 322E08 802DECB8 4600320D */  trunc.w.s  $f8, $f6
    /* 322E0C 802DECBC 44184000 */  mfc1       $t8, $f8
    /* 322E10 802DECC0 0C022390 */  jal        func_80088E40_97DF0
    /* 322E14 802DECC4 AFB8001C */   sw        $t8, 0x1C($sp)
    /* 322E18 802DECC8 10000071 */  b          .L802DEE90_322FE0
    /* 322E1C 802DECCC 93A400F3 */   lbu       $a0, 0xF3($sp)
    /* 322E20 802DECD0 86020006 */  lh         $v0, 0x6($s0)
  .L802DECD4_322E24:
    /* 322E24 802DECD4 24424000 */  addiu      $v0, $v0, 0x4000
    /* 322E28 802DECD8 3044FFFF */  andi       $a0, $v0, 0xFFFF
    /* 322E2C 802DECDC 0C007660 */  jal        sins
    /* 322E30 802DECE0 AFA40050 */   sw        $a0, 0x50($sp)
    /* 322E34 802DECE4 44825000 */  mtc1       $v0, $f10
    /* 322E38 802DECE8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 322E3C 802DECEC 44812800 */  mtc1       $at, $f5
    /* 322E40 802DECF0 46805420 */  cvt.s.w    $f16, $f10
    /* 322E44 802DECF4 44802000 */  mtc1       $zero, $f4
    /* 322E48 802DECF8 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 322E4C 802DECFC 44814800 */  mtc1       $at, $f9
    /* 322E50 802DED00 44804000 */  mtc1       $zero, $f8
    /* 322E54 802DED04 8FA40050 */  lw         $a0, 0x50($sp)
    /* 322E58 802DED08 460084A1 */  cvt.d.s    $f18, $f16
    /* 322E5C 802DED0C 46249183 */  div.d      $f6, $f18, $f4
    /* 322E60 802DED10 46283282 */  mul.d      $f10, $f6, $f8
    /* 322E64 802DED14 46205420 */  cvt.s.d    $f16, $f10
    /* 322E68 802DED18 0C007654 */  jal        coss
    /* 322E6C 802DED1C E7B000AC */   swc1      $f16, 0xAC($sp)
    /* 322E70 802DED20 44823000 */  mtc1       $v0, $f6
    /* 322E74 802DED24 C7B200AC */  lwc1       $f18, 0xAC($sp)
    /* 322E78 802DED28 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 322E7C 802DED2C 46803220 */  cvt.s.w    $f8, $f6
    /* 322E80 802DED30 44818800 */  mtc1       $at, $f17
    /* 322E84 802DED34 44808000 */  mtc1       $zero, $f16
    /* 322E88 802DED38 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 322E8C 802DED3C 87A500EE */  lh         $a1, 0xEE($sp)
    /* 322E90 802DED40 4600910D */  trunc.w.s  $f4, $f18
    /* 322E94 802DED44 44812800 */  mtc1       $at, $f5
    /* 322E98 802DED48 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 322E9C 802DED4C 460042A1 */  cvt.d.s    $f10, $f8
    /* 322EA0 802DED50 44182000 */  mfc1       $t8, $f4
    /* 322EA4 802DED54 46305483 */  div.d      $f18, $f10, $f16
    /* 322EA8 802DED58 44802000 */  mtc1       $zero, $f4
    /* 322EAC 802DED5C 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 322EB0 802DED60 0005C900 */  sll        $t9, $a1, 4
    /* 322EB4 802DED64 00794021 */  addu       $t0, $v1, $t9
    /* 322EB8 802DED68 850E0004 */  lh         $t6, 0x4($t0)
    /* 322EBC 802DED6C 24190005 */  addiu      $t9, $zero, 0x5
    /* 322EC0 802DED70 AFB90018 */  sw         $t9, 0x18($sp)
    /* 322EC4 802DED74 85060000 */  lh         $a2, 0x0($t0)
    /* 322EC8 802DED78 85070002 */  lh         $a3, 0x2($t0)
    /* 322ECC 802DED7C 93A400F3 */  lbu        $a0, 0xF3($sp)
    /* 322ED0 802DED80 AFB80014 */  sw         $t8, 0x14($sp)
    /* 322ED4 802DED84 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 322ED8 802DED88 46249182 */  mul.d      $f6, $f18, $f4
    /* 322EDC 802DED8C 46203220 */  cvt.s.d    $f8, $f6
    /* 322EE0 802DED90 4600428D */  trunc.w.s  $f10, $f8
    /* 322EE4 802DED94 440F5000 */  mfc1       $t7, $f10
    /* 322EE8 802DED98 0C022390 */  jal        func_80088E40_97DF0
    /* 322EEC 802DED9C AFAF001C */   sw        $t7, 0x1C($sp)
    /* 322EF0 802DEDA0 9218001A */  lbu        $t8, 0x1A($s0)
    /* 322EF4 802DEDA4 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 322EF8 802DEDA8 86040000 */  lh         $a0, 0x0($s0)
    /* 322EFC 802DEDAC 0018C880 */  sll        $t9, $t8, 2
    /* 322F00 802DEDB0 0338C823 */  subu       $t9, $t9, $t8
    /* 322F04 802DEDB4 0019C880 */  sll        $t9, $t9, 2
    /* 322F08 802DEDB8 0338C821 */  addu       $t9, $t9, $t8
    /* 322F0C 802DEDBC 0019C8C0 */  sll        $t9, $t9, 3
    /* 322F10 802DEDC0 00F93821 */  addu       $a3, $a3, $t9
    /* 322F14 802DEDC4 84E7668C */  lh         $a3, %lo(D_8025668C)($a3)
    /* 322F18 802DEDC8 2418000A */  addiu      $t8, $zero, 0xA
    /* 322F1C 802DEDCC AFB80010 */  sw         $t8, 0x10($sp)
    /* 322F20 802DEDD0 00077040 */  sll        $t6, $a3, 1
    /* 322F24 802DEDD4 31C7FFFF */  andi       $a3, $t6, 0xFFFF
    /* 322F28 802DEDD8 86050002 */  lh         $a1, 0x2($s0)
    /* 322F2C 802DEDDC 86060004 */  lh         $a2, 0x4($s0)
    /* 322F30 802DEDE0 0C037C0E */  jal        func_800DF038_EDFE8
    /* 322F34 802DEDE4 AFA00014 */   sw        $zero, 0x14($sp)
    /* 322F38 802DEDE8 2419007F */  addiu      $t9, $zero, 0x7F
    /* 322F3C 802DEDEC 240E00DC */  addiu      $t6, $zero, 0xDC
    /* 322F40 802DEDF0 24180064 */  addiu      $t8, $zero, 0x64
    /* 322F44 802DEDF4 AFB80020 */  sw         $t8, 0x20($sp)
    /* 322F48 802DEDF8 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 322F4C 802DEDFC AFB90010 */  sw         $t9, 0x10($sp)
    /* 322F50 802DEE00 24190014 */  addiu      $t9, $zero, 0x14
    /* 322F54 802DEE04 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 322F58 802DEE08 241800C8 */  addiu      $t8, $zero, 0xC8
    /* 322F5C 802DEE0C 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 322F60 802DEE10 AFAF001C */  sw         $t7, 0x1C($sp)
    /* 322F64 802DEE14 AFAF002C */  sw         $t7, 0x2C($sp)
    /* 322F68 802DEE18 AFB80030 */  sw         $t8, 0x30($sp)
    /* 322F6C 802DEE1C AFAE0028 */  sw         $t6, 0x28($sp)
    /* 322F70 802DEE20 AFB90024 */  sw         $t9, 0x24($sp)
    /* 322F74 802DEE24 86040000 */  lh         $a0, 0x0($s0)
    /* 322F78 802DEE28 86050002 */  lh         $a1, 0x2($s0)
    /* 322F7C 802DEE2C 86060004 */  lh         $a2, 0x4($s0)
    /* 322F80 802DEE30 00003825 */  or         $a3, $zero, $zero
    /* 322F84 802DEE34 0C031507 */  jal        func_800C541C_D43CC
    /* 322F88 802DEE38 AFA00014 */   sw        $zero, 0x14($sp)
    /* 322F8C 802DEE3C 93A400F3 */  lbu        $a0, 0xF3($sp)
    /* 322F90 802DEE40 A600002C */  sh         $zero, 0x2C($s0)
    /* 322F94 802DEE44 24050014 */  addiu      $a1, $zero, 0x14
    /* 322F98 802DEE48 0C01E5E9 */  jal        func_800797A4_88754
    /* 322F9C 802DEE4C AFA40050 */   sw        $a0, 0x50($sp)
    /* 322FA0 802DEE50 8FA40050 */  lw         $a0, 0x50($sp)
    /* 322FA4 802DEE54 0C01E5E9 */  jal        func_800797A4_88754
    /* 322FA8 802DEE58 24050014 */   addiu     $a1, $zero, 0x14
    /* 322FAC 802DEE5C 8FA40050 */  lw         $a0, 0x50($sp)
    /* 322FB0 802DEE60 0C01E5E9 */  jal        func_800797A4_88754
    /* 322FB4 802DEE64 24050017 */   addiu     $a1, $zero, 0x17
    /* 322FB8 802DEE68 8FA40050 */  lw         $a0, 0x50($sp)
    /* 322FBC 802DEE6C 0C01E5E9 */  jal        func_800797A4_88754
    /* 322FC0 802DEE70 24050017 */   addiu     $a1, $zero, 0x17
    /* 322FC4 802DEE74 8FA40050 */  lw         $a0, 0x50($sp)
    /* 322FC8 802DEE78 0C01E5E9 */  jal        func_800797A4_88754
    /* 322FCC 802DEE7C 24050015 */   addiu     $a1, $zero, 0x15
    /* 322FD0 802DEE80 8FA40050 */  lw         $a0, 0x50($sp)
    /* 322FD4 802DEE84 0C01E5E9 */  jal        func_800797A4_88754
    /* 322FD8 802DEE88 24050016 */   addiu     $a1, $zero, 0x16
    /* 322FDC 802DEE8C 93A400F3 */  lbu        $a0, 0xF3($sp)
  .L802DEE90_322FE0:
    /* 322FE0 802DEE90 00002825 */  or         $a1, $zero, $zero
    /* 322FE4 802DEE94 87A600CC */  lh         $a2, 0xCC($sp)
    /* 322FE8 802DEE98 0C0B76C2 */  jal        func_802DDB08_321C58
    /* 322FEC 802DEE9C 27A70088 */   addiu     $a3, $sp, 0x88
    /* 322FF0 802DEEA0 93A400F3 */  lbu        $a0, 0xF3($sp)
    /* 322FF4 802DEEA4 24050002 */  addiu      $a1, $zero, 0x2
    /* 322FF8 802DEEA8 87A600D8 */  lh         $a2, 0xD8($sp)
    /* 322FFC 802DEEAC 0C0B76C2 */  jal        func_802DDB08_321C58
    /* 323000 802DEEB0 27A7007C */   addiu     $a3, $sp, 0x7C
    /* 323004 802DEEB4 8FB90080 */  lw         $t9, 0x80($sp)
    /* 323008 802DEEB8 8FAE0084 */  lw         $t6, 0x84($sp)
    /* 32300C 802DEEBC 240F0001 */  addiu      $t7, $zero, 0x1
    /* 323010 802DEEC0 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 323014 802DEEC4 87A4008A */  lh         $a0, 0x8A($sp)
    /* 323018 802DEEC8 87A5008E */  lh         $a1, 0x8E($sp)
    /* 32301C 802DEECC 87A60092 */  lh         $a2, 0x92($sp)
    /* 323020 802DEED0 87A7007E */  lh         $a3, 0x7E($sp)
    /* 323024 802DEED4 AFB90010 */  sw         $t9, 0x10($sp)
    /* 323028 802DEED8 0C0345AF */  jal        func_800D16BC_E066C
    /* 32302C 802DEEDC AFAE0014 */   sw        $t6, 0x14($sp)
    /* 323030 802DEEE0 92030036 */  lbu        $v1, 0x36($s0)
    /* 323034 802DEEE4 93A400F3 */  lbu        $a0, 0xF3($sp)
    /* 323038 802DEEE8 24050001 */  addiu      $a1, $zero, 0x1
    /* 32303C 802DEEEC 28610006 */  slti       $at, $v1, 0x6
    /* 323040 802DEEF0 1020001A */  beqz       $at, .L802DEF5C_3230AC
    /* 323044 802DEEF4 87A600D2 */   lh        $a2, 0xD2($sp)
    /* 323048 802DEEF8 0C0B76C2 */  jal        func_802DDB08_321C58
    /* 32304C 802DEEFC 27A70070 */   addiu     $a3, $sp, 0x70
    /* 323050 802DEF00 8FB80074 */  lw         $t8, 0x74($sp)
    /* 323054 802DEF04 8FB90078 */  lw         $t9, 0x78($sp)
    /* 323058 802DEF08 240E0001 */  addiu      $t6, $zero, 0x1
    /* 32305C 802DEF0C AFAE0018 */  sw         $t6, 0x18($sp)
    /* 323060 802DEF10 87A4008A */  lh         $a0, 0x8A($sp)
    /* 323064 802DEF14 87A5008E */  lh         $a1, 0x8E($sp)
    /* 323068 802DEF18 87A60092 */  lh         $a2, 0x92($sp)
    /* 32306C 802DEF1C 87A70072 */  lh         $a3, 0x72($sp)
    /* 323070 802DEF20 AFB80010 */  sw         $t8, 0x10($sp)
    /* 323074 802DEF24 0C0345AF */  jal        func_800D16BC_E066C
    /* 323078 802DEF28 AFB90014 */   sw        $t9, 0x14($sp)
    /* 32307C 802DEF2C 8FAF0074 */  lw         $t7, 0x74($sp)
    /* 323080 802DEF30 8FB80078 */  lw         $t8, 0x78($sp)
    /* 323084 802DEF34 24190001 */  addiu      $t9, $zero, 0x1
    /* 323088 802DEF38 AFB90018 */  sw         $t9, 0x18($sp)
    /* 32308C 802DEF3C 87A4007E */  lh         $a0, 0x7E($sp)
    /* 323090 802DEF40 87A50082 */  lh         $a1, 0x82($sp)
    /* 323094 802DEF44 87A60086 */  lh         $a2, 0x86($sp)
    /* 323098 802DEF48 87A70072 */  lh         $a3, 0x72($sp)
    /* 32309C 802DEF4C AFAF0010 */  sw         $t7, 0x10($sp)
    /* 3230A0 802DEF50 0C0345AF */  jal        func_800D16BC_E066C
    /* 3230A4 802DEF54 AFB80014 */   sw        $t8, 0x14($sp)
    /* 3230A8 802DEF58 92030036 */  lbu        $v1, 0x36($s0)
  .L802DEF5C_3230AC:
    /* 3230AC 802DEF5C 28610007 */  slti       $at, $v1, 0x7
    /* 3230B0 802DEF60 10200029 */  beqz       $at, .L802DF008_323158
    /* 3230B4 802DEF64 93A400F3 */   lbu       $a0, 0xF3($sp)
    /* 3230B8 802DEF68 24050003 */  addiu      $a1, $zero, 0x3
    /* 3230BC 802DEF6C 87A600DE */  lh         $a2, 0xDE($sp)
    /* 3230C0 802DEF70 0C0B76C2 */  jal        func_802DDB08_321C58
    /* 3230C4 802DEF74 27A70064 */   addiu     $a3, $sp, 0x64
    /* 3230C8 802DEF78 8FAE0068 */  lw         $t6, 0x68($sp)
    /* 3230CC 802DEF7C 8FAF006C */  lw         $t7, 0x6C($sp)
    /* 3230D0 802DEF80 24180001 */  addiu      $t8, $zero, 0x1
    /* 3230D4 802DEF84 AFB80018 */  sw         $t8, 0x18($sp)
    /* 3230D8 802DEF88 87A4008A */  lh         $a0, 0x8A($sp)
    /* 3230DC 802DEF8C 87A5008E */  lh         $a1, 0x8E($sp)
    /* 3230E0 802DEF90 87A60092 */  lh         $a2, 0x92($sp)
    /* 3230E4 802DEF94 87A70066 */  lh         $a3, 0x66($sp)
    /* 3230E8 802DEF98 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 3230EC 802DEF9C 0C0345AF */  jal        func_800D16BC_E066C
    /* 3230F0 802DEFA0 AFAF0014 */   sw        $t7, 0x14($sp)
    /* 3230F4 802DEFA4 8FB90068 */  lw         $t9, 0x68($sp)
    /* 3230F8 802DEFA8 8FAE006C */  lw         $t6, 0x6C($sp)
    /* 3230FC 802DEFAC 240F0001 */  addiu      $t7, $zero, 0x1
    /* 323100 802DEFB0 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 323104 802DEFB4 87A4007E */  lh         $a0, 0x7E($sp)
    /* 323108 802DEFB8 87A50082 */  lh         $a1, 0x82($sp)
    /* 32310C 802DEFBC 87A60086 */  lh         $a2, 0x86($sp)
    /* 323110 802DEFC0 87A70066 */  lh         $a3, 0x66($sp)
    /* 323114 802DEFC4 AFB90010 */  sw         $t9, 0x10($sp)
    /* 323118 802DEFC8 0C0345AF */  jal        func_800D16BC_E066C
    /* 32311C 802DEFCC AFAE0014 */   sw        $t6, 0x14($sp)
    /* 323120 802DEFD0 92180036 */  lbu        $t8, 0x36($s0)
    /* 323124 802DEFD4 87A40072 */  lh         $a0, 0x72($sp)
    /* 323128 802DEFD8 87A50076 */  lh         $a1, 0x76($sp)
    /* 32312C 802DEFDC 2B010006 */  slti       $at, $t8, 0x6
    /* 323130 802DEFE0 10200009 */  beqz       $at, .L802DF008_323158
    /* 323134 802DEFE4 87A6007A */   lh        $a2, 0x7A($sp)
    /* 323138 802DEFE8 8FB90068 */  lw         $t9, 0x68($sp)
    /* 32313C 802DEFEC 8FAE006C */  lw         $t6, 0x6C($sp)
    /* 323140 802DEFF0 240F0001 */  addiu      $t7, $zero, 0x1
    /* 323144 802DEFF4 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 323148 802DEFF8 87A70066 */  lh         $a3, 0x66($sp)
    /* 32314C 802DEFFC AFB90010 */  sw         $t9, 0x10($sp)
    /* 323150 802DF000 0C0345AF */  jal        func_800D16BC_E066C
    /* 323154 802DF004 AFAE0014 */   sw        $t6, 0x14($sp)
  .L802DF008_323158:
    /* 323158 802DF008 3C188005 */  lui        $t8, %hi(D_80052A8C)
    /* 32315C 802DF00C 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* 323160 802DF010 24010006 */  addiu      $at, $zero, 0x6
    /* 323164 802DF014 0301001B */  divu       $zero, $t8, $at
    /* 323168 802DF018 0000C810 */  mfhi       $t9
    /* 32316C 802DF01C 57200056 */  bnel       $t9, $zero, .L802DF178_3232C8
    /* 323170 802DF020 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 323174 802DF024 0C000E38 */  jal        func_800038E0_44E0
    /* 323178 802DF028 00000000 */   nop
    /* 32317C 802DF02C 0C000E38 */  jal        func_800038E0_44E0
    /* 323180 802DF030 A7A20058 */   sh        $v0, 0x58($sp)
    /* 323184 802DF034 0C000E38 */  jal        func_800038E0_44E0
    /* 323188 802DF038 A7A2005A */   sh        $v0, 0x5A($sp)
    /* 32318C 802DF03C 0C000E38 */  jal        func_800038E0_44E0
    /* 323190 802DF040 A7A2005C */   sh        $v0, 0x5C($sp)
    /* 323194 802DF044 24030190 */  addiu      $v1, $zero, 0x190
    /* 323198 802DF048 97AE0058 */  lhu        $t6, 0x58($sp)
    /* 32319C 802DF04C 86180000 */  lh         $t8, 0x0($s0)
    /* 3231A0 802DF050 AFA00010 */  sw         $zero, 0x10($sp)
    /* 3231A4 802DF054 01C3001A */  div        $zero, $t6, $v1
    /* 3231A8 802DF058 00007810 */  mfhi       $t7
    /* 3231AC 802DF05C 01F82021 */  addu       $a0, $t7, $t8
    /* 3231B0 802DF060 97AF005A */  lhu        $t7, 0x5A($sp)
    /* 3231B4 802DF064 14600002 */  bnez       $v1, .L802DF070_3231C0
    /* 3231B8 802DF068 00000000 */   nop
    /* 3231BC 802DF06C 0007000D */  break      7
  .L802DF070_3231C0:
    /* 3231C0 802DF070 2401FFFF */  addiu      $at, $zero, -0x1
    /* 3231C4 802DF074 14610004 */  bne        $v1, $at, .L802DF088_3231D8
    /* 3231C8 802DF078 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 3231CC 802DF07C 15C10002 */  bne        $t6, $at, .L802DF088_3231D8
    /* 3231D0 802DF080 00000000 */   nop
    /* 3231D4 802DF084 0006000D */  break      6
  .L802DF088_3231D8:
    /* 3231D8 802DF088 01E3001A */  div        $zero, $t7, $v1
    /* 3231DC 802DF08C 2484FF38 */  addiu      $a0, $a0, -0xC8
    /* 3231E0 802DF090 0004CC00 */  sll        $t9, $a0, 16
    /* 3231E4 802DF094 00197403 */  sra        $t6, $t9, 16
    /* 3231E8 802DF098 86190002 */  lh         $t9, 0x2($s0)
    /* 3231EC 802DF09C 0000C010 */  mfhi       $t8
    /* 3231F0 802DF0A0 01C02025 */  or         $a0, $t6, $zero
    /* 3231F4 802DF0A4 14600002 */  bnez       $v1, .L802DF0B0_323200
    /* 3231F8 802DF0A8 00000000 */   nop
    /* 3231FC 802DF0AC 0007000D */  break      7
  .L802DF0B0_323200:
    /* 323200 802DF0B0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 323204 802DF0B4 14610004 */  bne        $v1, $at, .L802DF0C8_323218
    /* 323208 802DF0B8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 32320C 802DF0BC 15E10002 */  bne        $t7, $at, .L802DF0C8_323218
    /* 323210 802DF0C0 00000000 */   nop
    /* 323214 802DF0C4 0006000D */  break      6
  .L802DF0C8_323218:
    /* 323218 802DF0C8 03192821 */  addu       $a1, $t8, $t9
    /* 32321C 802DF0CC 97B9005C */  lhu        $t9, 0x5C($sp)
    /* 323220 802DF0D0 240100C8 */  addiu      $at, $zero, 0xC8
    /* 323224 802DF0D4 24A5FF38 */  addiu      $a1, $a1, -0xC8
    /* 323228 802DF0D8 0321001A */  div        $zero, $t9, $at
    /* 32322C 802DF0DC 00057400 */  sll        $t6, $a1, 16
    /* 323230 802DF0E0 000E2C03 */  sra        $a1, $t6, 16
    /* 323234 802DF0E4 00007010 */  mfhi       $t6
    /* 323238 802DF0E8 240100FA */  addiu      $at, $zero, 0xFA
    /* 32323C 802DF0EC 86180004 */  lh         $t8, 0x4($s0)
    /* 323240 802DF0F0 0041001A */  div        $zero, $v0, $at
    /* 323244 802DF0F4 030E3023 */  subu       $a2, $t8, $t6
    /* 323248 802DF0F8 24C600C8 */  addiu      $a2, $a2, 0xC8
    /* 32324C 802DF0FC 00003810 */  mfhi       $a3
    /* 323250 802DF100 30F8FFFF */  andi       $t8, $a3, 0xFFFF
    /* 323254 802DF104 00067C00 */  sll        $t7, $a2, 16
    /* 323258 802DF108 000F3403 */  sra        $a2, $t7, 16
    /* 32325C 802DF10C 03003825 */  or         $a3, $t8, $zero
    /* 323260 802DF110 0C037C0E */  jal        func_800DF038_EDFE8
    /* 323264 802DF114 AFA00014 */   sw        $zero, 0x14($sp)
    /* 323268 802DF118 0C000E38 */  jal        func_800038E0_44E0
    /* 32326C 802DF11C 00000000 */   nop
    /* 323270 802DF120 24010064 */  addiu      $at, $zero, 0x64
    /* 323274 802DF124 0041001A */  div        $zero, $v0, $at
    /* 323278 802DF128 00007810 */  mfhi       $t7
    /* 32327C 802DF12C 448F8000 */  mtc1       $t7, $f16
    /* 323280 802DF130 3C0143FA */  lui        $at, (0x43FA0000 >> 16)
    /* 323284 802DF134 44812000 */  mtc1       $at, $f4
    /* 323288 802DF138 468084A0 */  cvt.s.w    $f18, $f16
    /* 32328C 802DF13C 3C01802E */  lui        $at, %hi(D_802E7B80)
    /* 323290 802DF140 D42A7B80 */  ldc1       $f10, %lo(D_802E7B80)($at)
    /* 323294 802DF144 860E0004 */  lh         $t6, 0x4($s0)
    /* 323298 802DF148 00002025 */  or         $a0, $zero, $zero
    /* 32329C 802DF14C 240500E8 */  addiu      $a1, $zero, 0xE8
    /* 3232A0 802DF150 46049183 */  div.s      $f6, $f18, $f4
    /* 3232A4 802DF154 86060000 */  lh         $a2, 0x0($s0)
    /* 3232A8 802DF158 86070002 */  lh         $a3, 0x2($s0)
    /* 3232AC 802DF15C AFAE0010 */  sw         $t6, 0x10($sp)
    /* 3232B0 802DF160 46003221 */  cvt.d.s    $f8, $f6
    /* 3232B4 802DF164 462A4400 */  add.d      $f16, $f8, $f10
    /* 3232B8 802DF168 462084A0 */  cvt.s.d    $f18, $f16
    /* 3232BC 802DF16C 0C04DC6E */  jal        func_801371B8_146168
    /* 3232C0 802DF170 E7B20014 */   swc1      $f18, 0x14($sp)
    /* 3232C4 802DF174 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DF178_3232C8:
    /* 3232C8 802DF178 8FB00040 */  lw         $s0, 0x40($sp)
    /* 3232CC 802DF17C 27BD00F0 */  addiu      $sp, $sp, 0xF0
    /* 3232D0 802DF180 03E00008 */  jr         $ra
    /* 3232D4 802DF184 00000000 */   nop
endlabel func_802DE7C4_322914
