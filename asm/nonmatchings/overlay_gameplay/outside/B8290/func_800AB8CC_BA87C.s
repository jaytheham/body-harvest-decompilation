nonmatching func_800AB8CC_BA87C, 0x360

glabel func_800AB8CC_BA87C
    /* BA87C 800AB8CC 308500FF */  andi       $a1, $a0, 0xFF
    /* BA880 800AB8D0 24070050 */  addiu      $a3, $zero, 0x50
    /* BA884 800AB8D4 00A70019 */  multu      $a1, $a3
    /* BA888 800AB8D8 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* BA88C 800AB8DC 3C068005 */  lui        $a2, %hi(alienInstances)
    /* BA890 800AB8E0 24C68198 */  addiu      $a2, $a2, %lo(alienInstances)
    /* BA894 800AB8E4 AFB0003C */  sw         $s0, 0x3C($sp)
    /* BA898 800AB8E8 AFB10040 */  sw         $s1, 0x40($sp)
    /* BA89C 800AB8EC 24010002 */  addiu      $at, $zero, 0x2
    /* BA8A0 800AB8F0 AFBF0044 */  sw         $ra, 0x44($sp)
    /* BA8A4 800AB8F4 AFA40078 */  sw         $a0, 0x78($sp)
    /* BA8A8 800AB8F8 00007012 */  mflo       $t6
    /* BA8AC 800AB8FC 00CE8021 */  addu       $s0, $a2, $t6
    /* BA8B0 800AB900 92110025 */  lbu        $s1, 0x25($s0)
    /* BA8B4 800AB904 02270019 */  multu      $s1, $a3
    /* BA8B8 800AB908 00007812 */  mflo       $t7
    /* BA8BC 800AB90C 00CF1821 */  addu       $v1, $a2, $t7
    /* BA8C0 800AB910 9062001A */  lbu        $v0, 0x1A($v1)
    /* BA8C4 800AB914 54410046 */  bnel       $v0, $at, .L800ABA30_BA9E0
    /* BA8C8 800AB918 24010019 */   addiu     $at, $zero, 0x19
    /* BA8CC 800AB91C 84780000 */  lh         $t8, 0x0($v1)
    /* BA8D0 800AB920 27A60064 */  addiu      $a2, $sp, 0x64
    /* BA8D4 800AB924 27A70060 */  addiu      $a3, $sp, 0x60
    /* BA8D8 800AB928 A6180000 */  sh         $t8, 0x0($s0)
    /* BA8DC 800AB92C 84790004 */  lh         $t9, 0x4($v1)
    /* BA8E0 800AB930 A6190004 */  sh         $t9, 0x4($s0)
    /* BA8E4 800AB934 8C680020 */  lw         $t0, 0x20($v1)
    /* BA8E8 800AB938 3C198005 */  lui        $t9, %hi(D_80052A8C)
    /* BA8EC 800AB93C 31094000 */  andi       $t1, $t0, 0x4000
    /* BA8F0 800AB940 11200018 */  beqz       $t1, .L800AB9A4_BA954
    /* BA8F4 800AB944 00000000 */   nop
    /* BA8F8 800AB948 84620002 */  lh         $v0, 0x2($v1)
    /* BA8FC 800AB94C 90640025 */  lbu        $a0, 0x25($v1)
    /* BA900 800AB950 27A50068 */  addiu      $a1, $sp, 0x68
    /* BA904 800AB954 AFA30050 */  sw         $v1, 0x50($sp)
    /* BA908 800AB958 0C023FD5 */  jal        func_8008FF54_9EF04
    /* BA90C 800AB95C AFA20070 */   sw        $v0, 0x70($sp)
    /* BA910 800AB960 8FA30050 */  lw         $v1, 0x50($sp)
    /* BA914 800AB964 8FA20070 */  lw         $v0, 0x70($sp)
    /* BA918 800AB968 8FAB0064 */  lw         $t3, 0x64($sp)
    /* BA91C 800AB96C 846A002C */  lh         $t2, 0x2C($v1)
    /* BA920 800AB970 2401000F */  addiu      $at, $zero, 0xF
    /* BA924 800AB974 01626023 */  subu       $t4, $t3, $v0
    /* BA928 800AB978 014C0019 */  multu      $t2, $t4
    /* BA92C 800AB97C 00006812 */  mflo       $t5
    /* BA930 800AB980 00000000 */  nop
    /* BA934 800AB984 00000000 */  nop
    /* BA938 800AB988 01A1001A */  div        $zero, $t5, $at
    /* BA93C 800AB98C 00007012 */  mflo       $t6
    /* BA940 800AB990 A60E0002 */  sh         $t6, 0x2($s0)
    /* BA944 800AB994 860F0002 */  lh         $t7, 0x2($s0)
    /* BA948 800AB998 01E2C021 */  addu       $t8, $t7, $v0
    /* BA94C 800AB99C 1000009E */  b          .L800ABC18_BABC8
    /* BA950 800AB9A0 A6180002 */   sh        $t8, 0x2($s0)
  .L800AB9A4_BA954:
    /* BA954 800AB9A4 8F392A8C */  lw         $t9, %lo(D_80052A8C)($t9)
    /* BA958 800AB9A8 AFA30050 */  sw         $v1, 0x50($sp)
    /* BA95C 800AB9AC 00B92021 */  addu       $a0, $a1, $t9
    /* BA960 800AB9B0 00044080 */  sll        $t0, $a0, 2
    /* BA964 800AB9B4 01044021 */  addu       $t0, $t0, $a0
    /* BA968 800AB9B8 000840C0 */  sll        $t0, $t0, 3
    /* BA96C 800AB9BC 01044023 */  subu       $t0, $t0, $a0
    /* BA970 800AB9C0 00084100 */  sll        $t0, $t0, 4
    /* BA974 800AB9C4 01044021 */  addu       $t0, $t0, $a0
    /* BA978 800AB9C8 000840C0 */  sll        $t0, $t0, 3
    /* BA97C 800AB9CC 0C007660 */  jal        sins
    /* BA980 800AB9D0 3104FFFF */   andi      $a0, $t0, 0xFFFF
    /* BA984 800AB9D4 44822000 */  mtc1       $v0, $f4
    /* BA988 800AB9D8 3C014010 */  lui        $at, (0x40100000 >> 16)
    /* BA98C 800AB9DC 44810800 */  mtc1       $at, $f1
    /* BA990 800AB9E0 468021A0 */  cvt.s.w    $f6, $f4
    /* BA994 800AB9E4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* BA998 800AB9E8 44815800 */  mtc1       $at, $f11
    /* BA99C 800AB9EC 44805000 */  mtc1       $zero, $f10
    /* BA9A0 800AB9F0 8FA30050 */  lw         $v1, 0x50($sp)
    /* BA9A4 800AB9F4 44800000 */  mtc1       $zero, $f0
    /* BA9A8 800AB9F8 46003221 */  cvt.d.s    $f8, $f6
    /* BA9AC 800AB9FC 846B0002 */  lh         $t3, 0x2($v1)
    /* BA9B0 800ABA00 462A4403 */  div.d      $f16, $f8, $f10
    /* BA9B4 800ABA04 448B2000 */  mtc1       $t3, $f4
    /* BA9B8 800ABA08 00000000 */  nop
    /* BA9BC 800ABA0C 468021A1 */  cvt.d.w    $f6, $f4
    /* BA9C0 800ABA10 46208482 */  mul.d      $f18, $f16, $f0
    /* BA9C4 800ABA14 46269200 */  add.d      $f8, $f18, $f6
    /* BA9C8 800ABA18 46204281 */  sub.d      $f10, $f8, $f0
    /* BA9CC 800ABA1C 4620540D */  trunc.w.d  $f16, $f10
    /* BA9D0 800ABA20 440C8000 */  mfc1       $t4, $f16
    /* BA9D4 800ABA24 1000007C */  b          .L800ABC18_BABC8
    /* BA9D8 800ABA28 A60C0002 */   sh        $t4, 0x2($s0)
    /* BA9DC 800ABA2C 24010019 */  addiu      $at, $zero, 0x19
  .L800ABA30_BA9E0:
    /* BA9E0 800ABA30 14410074 */  bne        $v0, $at, .L800ABC04_BABB4
    /* BA9E4 800ABA34 240E0064 */   addiu     $t6, $zero, 0x64
    /* BA9E8 800ABA38 322400FF */  andi       $a0, $s1, 0xFF
    /* BA9EC 800ABA3C 27A50068 */  addiu      $a1, $sp, 0x68
    /* BA9F0 800ABA40 27A60064 */  addiu      $a2, $sp, 0x64
    /* BA9F4 800ABA44 27A70060 */  addiu      $a3, $sp, 0x60
    /* BA9F8 800ABA48 0C023FD5 */  jal        func_8008FF54_9EF04
    /* BA9FC 800ABA4C AFA30050 */   sw        $v1, 0x50($sp)
    /* BAA00 800ABA50 8FAD0068 */  lw         $t5, 0x68($sp)
    /* BAA04 800ABA54 8FAE0064 */  lw         $t6, 0x64($sp)
    /* BAA08 800ABA58 8FAF0060 */  lw         $t7, 0x60($sp)
    /* BAA0C 800ABA5C 8FA30050 */  lw         $v1, 0x50($sp)
    /* BAA10 800ABA60 A60D0000 */  sh         $t5, 0x0($s0)
    /* BAA14 800ABA64 A60E0002 */  sh         $t6, 0x2($s0)
    /* BAA18 800ABA68 A60F0004 */  sh         $t7, 0x4($s0)
    /* BAA1C 800ABA6C 8C780020 */  lw         $t8, 0x20($v1)
    /* BAA20 800ABA70 33190600 */  andi       $t9, $t8, 0x600
    /* BAA24 800ABA74 5320000A */  beql       $t9, $zero, .L800ABAA0_BAA50
    /* BAA28 800ABA78 860D002C */   lh        $t5, 0x2C($s0)
    /* BAA2C 800ABA7C 8469000C */  lh         $t1, 0xC($v1)
    /* BAA30 800ABA80 3C0A8015 */  lui        $t2, %hi(D_8014DD52)
    /* BAA34 800ABA84 86080002 */  lh         $t0, 0x2($s0)
    /* BAA38 800ABA88 00095900 */  sll        $t3, $t1, 4
    /* BAA3C 800ABA8C 014B5021 */  addu       $t2, $t2, $t3
    /* BAA40 800ABA90 854ADD52 */  lh         $t2, %lo(D_8014DD52)($t2)
    /* BAA44 800ABA94 010A6021 */  addu       $t4, $t0, $t2
    /* BAA48 800ABA98 A60C0002 */  sh         $t4, 0x2($s0)
    /* BAA4C 800ABA9C 860D002C */  lh         $t5, 0x2C($s0)
  .L800ABAA0_BAA50:
    /* BAA50 800ABAA0 2401000C */  addiu      $at, $zero, 0xC
    /* BAA54 800ABAA4 25AE0001 */  addiu      $t6, $t5, 0x1
    /* BAA58 800ABAA8 A60E002C */  sh         $t6, 0x2C($s0)
    /* BAA5C 800ABAAC 860F002C */  lh         $t7, 0x2C($s0)
    /* BAA60 800ABAB0 01E1001A */  div        $zero, $t7, $at
    /* BAA64 800ABAB4 0000C010 */  mfhi       $t8
    /* BAA68 800ABAB8 57000058 */  bnel       $t8, $zero, .L800ABC1C_BABCC
    /* BAA6C 800ABABC 8FBF0044 */   lw        $ra, 0x44($sp)
    /* BAA70 800ABAC0 92020024 */  lbu        $v0, 0x24($s0)
    /* BAA74 800ABAC4 24010001 */  addiu      $at, $zero, 0x1
    /* BAA78 800ABAC8 10410003 */  beq        $v0, $at, .L800ABAD8_BAA88
    /* BAA7C 800ABACC 2401001D */   addiu     $at, $zero, 0x1D
    /* BAA80 800ABAD0 14410046 */  bne        $v0, $at, .L800ABBEC_BAB9C
    /* BAA84 800ABAD4 240700C8 */   addiu     $a3, $zero, 0xC8
  .L800ABAD8_BAA88:
    /* BAA88 800ABAD8 0C000E38 */  jal        func_800038E0_44E0
    /* BAA8C 800ABADC 00000000 */   nop
    /* BAA90 800ABAE0 0C000E38 */  jal        func_800038E0_44E0
    /* BAA94 800ABAE4 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* BAA98 800ABAE8 0C000E38 */  jal        func_800038E0_44E0
    /* BAA9C 800ABAEC A7A2005A */   sh        $v0, 0x5A($sp)
    /* BAAA0 800ABAF0 0C000E38 */  jal        func_800038E0_44E0
    /* BAAA4 800ABAF4 A7A2005C */   sh        $v0, 0x5C($sp)
    /* BAAA8 800ABAF8 24030032 */  addiu      $v1, $zero, 0x32
    /* BAAAC 800ABAFC 0223001A */  div        $zero, $s1, $v1
    /* BAAB0 800ABB00 97A8005A */  lhu        $t0, 0x5A($sp)
    /* BAAB4 800ABB04 00003810 */  mfhi       $a3
    /* BAAB8 800ABB08 24E7FFE7 */  addiu      $a3, $a3, -0x19
    /* BAABC 800ABB0C 97AF005C */  lhu        $t7, 0x5C($sp)
    /* BAAC0 800ABB10 0103001A */  div        $zero, $t0, $v1
    /* BAAC4 800ABB14 00005010 */  mfhi       $t2
    /* BAAC8 800ABB18 0007CE00 */  sll        $t9, $a3, 24
    /* BAACC 800ABB1C 00194E03 */  sra        $t1, $t9, 24
    /* BAAD0 800ABB20 01203825 */  or         $a3, $t1, $zero
    /* BAAD4 800ABB24 240B0050 */  addiu      $t3, $zero, 0x50
    /* BAAD8 800ABB28 AFAB0010 */  sw         $t3, 0x10($sp)
    /* BAADC 800ABB2C 254CFFE7 */  addiu      $t4, $t2, -0x19
    /* BAAE0 800ABB30 240A00FF */  addiu      $t2, $zero, 0xFF
    /* BAAE4 800ABB34 240D0019 */  addiu      $t5, $zero, 0x19
    /* BAAE8 800ABB38 240E0005 */  addiu      $t6, $zero, 0x5
    /* BAAEC 800ABB3C AFAE001C */  sw         $t6, 0x1C($sp)
    /* BAAF0 800ABB40 AFAD0018 */  sw         $t5, 0x18($sp)
    /* BAAF4 800ABB44 AFAA0034 */  sw         $t2, 0x34($sp)
    /* BAAF8 800ABB48 AFAC0014 */  sw         $t4, 0x14($sp)
    /* BAAFC 800ABB4C 86040000 */  lh         $a0, 0x0($s0)
    /* BAB00 800ABB50 86050002 */  lh         $a1, 0x2($s0)
    /* BAB04 800ABB54 86060004 */  lh         $a2, 0x4($s0)
    /* BAB08 800ABB58 14600002 */  bnez       $v1, .L800ABB64_BAB14
    /* BAB0C 800ABB5C 00000000 */   nop
    /* BAB10 800ABB60 0007000D */  break      7
  .L800ABB64_BAB14:
    /* BAB14 800ABB64 2401FFFF */  addiu      $at, $zero, -0x1
    /* BAB18 800ABB68 14610004 */  bne        $v1, $at, .L800ABB7C_BAB2C
    /* BAB1C 800ABB6C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* BAB20 800ABB70 16210002 */  bne        $s1, $at, .L800ABB7C_BAB2C
    /* BAB24 800ABB74 00000000 */   nop
    /* BAB28 800ABB78 0006000D */  break      6
  .L800ABB7C_BAB2C:
    /* BAB2C 800ABB7C AFA00028 */  sw         $zero, 0x28($sp)
    /* BAB30 800ABB80 14600002 */  bnez       $v1, .L800ABB8C_BAB3C
    /* BAB34 800ABB84 00000000 */   nop
    /* BAB38 800ABB88 0007000D */  break      7
  .L800ABB8C_BAB3C:
    /* BAB3C 800ABB8C 2401FFFF */  addiu      $at, $zero, -0x1
    /* BAB40 800ABB90 14610004 */  bne        $v1, $at, .L800ABBA4_BAB54
    /* BAB44 800ABB94 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* BAB48 800ABB98 15010002 */  bne        $t0, $at, .L800ABBA4_BAB54
    /* BAB4C 800ABB9C 00000000 */   nop
    /* BAB50 800ABBA0 0006000D */  break      6
  .L800ABBA4_BAB54:
    /* BAB54 800ABBA4 24010023 */  addiu      $at, $zero, 0x23
    /* BAB58 800ABBA8 0041001A */  div        $zero, $v0, $at
    /* BAB5C 800ABBAC 00004810 */  mfhi       $t1
    /* BAB60 800ABBB0 252B0069 */  addiu      $t3, $t1, 0x69
    /* BAB64 800ABBB4 05E10004 */  bgez       $t7, .L800ABBC8_BAB78
    /* BAB68 800ABBB8 31F80007 */   andi      $t8, $t7, 0x7
    /* BAB6C 800ABBBC 13000002 */  beqz       $t8, .L800ABBC8_BAB78
    /* BAB70 800ABBC0 00000000 */   nop
    /* BAB74 800ABBC4 2718FFF8 */  addiu      $t8, $t8, -0x8
  .L800ABBC8_BAB78:
    /* BAB78 800ABBC8 2719000C */  addiu      $t9, $t8, 0xC
    /* BAB7C 800ABBCC 240800FF */  addiu      $t0, $zero, 0xFF
    /* BAB80 800ABBD0 AFA8002C */  sw         $t0, 0x2C($sp)
    /* BAB84 800ABBD4 AFB90020 */  sw         $t9, 0x20($sp)
    /* BAB88 800ABBD8 AFAB0024 */  sw         $t3, 0x24($sp)
    /* BAB8C 800ABBDC 0C03297B */  jal        func_800CA5EC_D959C
    /* BAB90 800ABBE0 AFA00030 */   sw        $zero, 0x30($sp)
    /* BAB94 800ABBE4 1000000D */  b          .L800ABC1C_BABCC
    /* BAB98 800ABBE8 8FBF0044 */   lw        $ra, 0x44($sp)
  .L800ABBEC_BAB9C:
    /* BAB9C 800ABBEC 86040000 */  lh         $a0, 0x0($s0)
    /* BABA0 800ABBF0 86050002 */  lh         $a1, 0x2($s0)
    /* BABA4 800ABBF4 0C03816D */  jal        func_800E05B4_EF564
    /* BABA8 800ABBF8 86060004 */   lh        $a2, 0x4($s0)
    /* BABAC 800ABBFC 10000007 */  b          .L800ABC1C_BABCC
    /* BABB0 800ABC00 8FBF0044 */   lw        $ra, 0x44($sp)
  .L800ABC04_BABB4:
    /* BABB4 800ABC04 8E0C0020 */  lw         $t4, 0x20($s0)
    /* BABB8 800ABC08 A2000024 */  sb         $zero, 0x24($s0)
    /* BABBC 800ABC0C A60E002C */  sh         $t6, 0x2C($s0)
    /* BABC0 800ABC10 358D4000 */  ori        $t5, $t4, 0x4000
    /* BABC4 800ABC14 AE0D0020 */  sw         $t5, 0x20($s0)
  .L800ABC18_BABC8:
    /* BABC8 800ABC18 8FBF0044 */  lw         $ra, 0x44($sp)
  .L800ABC1C_BABCC:
    /* BABCC 800ABC1C 8FB0003C */  lw         $s0, 0x3C($sp)
    /* BABD0 800ABC20 8FB10040 */  lw         $s1, 0x40($sp)
    /* BABD4 800ABC24 03E00008 */  jr         $ra
    /* BABD8 800ABC28 27BD0078 */   addiu     $sp, $sp, 0x78
endlabel func_800AB8CC_BA87C
