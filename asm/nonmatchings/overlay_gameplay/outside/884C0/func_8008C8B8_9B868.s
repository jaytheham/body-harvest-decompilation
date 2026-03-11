nonmatching func_8008C8B8_9B868, 0x698

glabel func_8008C8B8_9B868
    /* 9B868 8008C8B8 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* 9B86C 8008C8BC AFA40088 */  sw         $a0, 0x88($sp)
    /* 9B870 8008C8C0 93AE008B */  lbu        $t6, 0x8B($sp)
    /* 9B874 8008C8C4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 9B878 8008C8C8 AFB00040 */  sw         $s0, 0x40($sp)
    /* 9B87C 8008C8CC 000E7880 */  sll        $t7, $t6, 2
    /* 9B880 8008C8D0 01EE7821 */  addu       $t7, $t7, $t6
    /* 9B884 8008C8D4 000F7900 */  sll        $t7, $t7, 4
    /* 9B888 8008C8D8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 9B88C 8008C8DC 01F88021 */  addu       $s0, $t7, $t8
    /* 9B890 8008C8E0 8E020020 */  lw         $v0, 0x20($s0)
    /* 9B894 8008C8E4 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 9B898 8008C8E8 30430600 */  andi       $v1, $v0, 0x600
    /* 9B89C 8008C8EC 10600193 */  beqz       $v1, .L8008CF3C_9BEEC
    /* 9B8A0 8008C8F0 0002CAC0 */   sll       $t9, $v0, 11
    /* 9B8A4 8008C8F4 07200018 */  bltz       $t9, .L8008C958_9B908
    /* 9B8A8 8008C8F8 3C014000 */   lui       $at, (0x40000000 >> 16)
    /* 9B8AC 8008C8FC 0C02310A */  jal        func_8008C428_9B3D8
    /* 9B8B0 8008C900 93A4008B */   lbu       $a0, 0x8B($sp)
    /* 9B8B4 8008C904 9209001A */  lbu        $t1, 0x1A($s0)
    /* 9B8B8 8008C908 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 9B8BC 8008C90C 86040000 */  lh         $a0, 0x0($s0)
    /* 9B8C0 8008C910 00095080 */  sll        $t2, $t1, 2
    /* 9B8C4 8008C914 01495023 */  subu       $t2, $t2, $t1
    /* 9B8C8 8008C918 000A5080 */  sll        $t2, $t2, 2
    /* 9B8CC 8008C91C 01495021 */  addu       $t2, $t2, $t1
    /* 9B8D0 8008C920 000A50C0 */  sll        $t2, $t2, 3
    /* 9B8D4 8008C924 00EA3821 */  addu       $a3, $a3, $t2
    /* 9B8D8 8008C928 84E7668C */  lh         $a3, %lo(D_8025668C)($a3)
    /* 9B8DC 8008C92C 86050002 */  lh         $a1, 0x2($s0)
    /* 9B8E0 8008C930 86060004 */  lh         $a2, 0x4($s0)
    /* 9B8E4 8008C934 04E10003 */  bgez       $a3, .L8008C944_9B8F4
    /* 9B8E8 8008C938 00075843 */   sra       $t3, $a3, 1
    /* 9B8EC 8008C93C 24E10001 */  addiu      $at, $a3, 0x1
    /* 9B8F0 8008C940 00015843 */  sra        $t3, $at, 1
  .L8008C944_9B8F4:
    /* 9B8F4 8008C944 3167FFFF */  andi       $a3, $t3, 0xFFFF
    /* 9B8F8 8008C948 0C037E12 */  jal        func_800DF848_EE7F8
    /* 9B8FC 8008C94C AFA00010 */   sw        $zero, 0x10($sp)
    /* 9B900 8008C950 1000017B */  b          .L8008CF40_9BEF0
    /* 9B904 8008C954 8FBF0044 */   lw        $ra, 0x44($sp)
  .L8008C958_9B908:
    /* 9B908 8008C958 00416824 */  and        $t5, $v0, $at
    /* 9B90C 8008C95C 11A00030 */  beqz       $t5, .L8008CA20_9B9D0
    /* 9B910 8008C960 3C0A8022 */   lui       $t2, %hi(D_80222A70)
    /* 9B914 8008C964 50600162 */  beql       $v1, $zero, .L8008CEF0_9BEA0
    /* 9B918 8008C968 8619002C */   lh        $t9, 0x2C($s0)
    /* 9B91C 8008C96C 8604000C */  lh         $a0, 0xC($s0)
    /* 9B920 8008C970 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 9B924 8008C974 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 9B928 8008C978 00047100 */  sll        $t6, $a0, 4
    /* 9B92C 8008C97C 006E1021 */  addu       $v0, $v1, $t6
    /* 9B930 8008C980 844F0002 */  lh         $t7, 0x2($v0)
    /* 9B934 8008C984 8619002C */  lh         $t9, 0x2C($s0)
    /* 9B938 8008C988 2403000C */  addiu      $v1, $zero, 0xC
    /* 9B93C 8008C98C 25F80002 */  addiu      $t8, $t7, 0x2
    /* 9B940 8008C990 2B210058 */  slti       $at, $t9, 0x58
    /* 9B944 8008C994 14200155 */  bnez       $at, .L8008CEEC_9BE9C
    /* 9B948 8008C998 A4580002 */   sh        $t8, 0x2($v0)
    /* 9B94C 8008C99C 860A0014 */  lh         $t2, 0x14($s0)
    /* 9B950 8008C9A0 860F0016 */  lh         $t7, 0x16($s0)
    /* 9B954 8008C9A4 9449000A */  lhu        $t1, 0xA($v0)
    /* 9B958 8008C9A8 254B4000 */  addiu      $t3, $t2, 0x4000
    /* 9B95C 8008C9AC 0163001A */  div        $zero, $t3, $v1
    /* 9B960 8008C9B0 00006012 */  mflo       $t4
    /* 9B964 8008C9B4 944E0008 */  lhu        $t6, 0x8($v0)
    /* 9B968 8008C9B8 14600002 */  bnez       $v1, .L8008C9C4_9B974
    /* 9B96C 8008C9BC 00000000 */   nop
    /* 9B970 8008C9C0 0007000D */  break      7
  .L8008C9C4_9B974:
    /* 9B974 8008C9C4 2401FFFF */  addiu      $at, $zero, -0x1
    /* 9B978 8008C9C8 14610004 */  bne        $v1, $at, .L8008C9DC_9B98C
    /* 9B97C 8008C9CC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 9B980 8008C9D0 15610002 */  bne        $t3, $at, .L8008C9DC_9B98C
    /* 9B984 8008C9D4 00000000 */   nop
    /* 9B988 8008C9D8 0006000D */  break      6
  .L8008C9DC_9B98C:
    /* 9B98C 8008C9DC 01E3001A */  div        $zero, $t7, $v1
    /* 9B990 8008C9E0 0000C012 */  mflo       $t8
    /* 9B994 8008C9E4 012C6823 */  subu       $t5, $t1, $t4
    /* 9B998 8008C9E8 01D8C823 */  subu       $t9, $t6, $t8
    /* 9B99C 8008C9EC A44D000A */  sh         $t5, 0xA($v0)
    /* 9B9A0 8008C9F0 14600002 */  bnez       $v1, .L8008C9FC_9B9AC
    /* 9B9A4 8008C9F4 00000000 */   nop
    /* 9B9A8 8008C9F8 0007000D */  break      7
  .L8008C9FC_9B9AC:
    /* 9B9AC 8008C9FC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 9B9B0 8008CA00 14610004 */  bne        $v1, $at, .L8008CA14_9B9C4
    /* 9B9B4 8008CA04 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 9B9B8 8008CA08 15E10002 */  bne        $t7, $at, .L8008CA14_9B9C4
    /* 9B9BC 8008CA0C 00000000 */   nop
    /* 9B9C0 8008CA10 0006000D */  break      6
  .L8008CA14_9B9C4:
    /* 9B9C4 8008CA14 A4590008 */  sh         $t9, 0x8($v0)
    /* 9B9C8 8008CA18 10000135 */  b          .L8008CEF0_9BEA0
    /* 9B9CC 8008CA1C 8619002C */   lh        $t9, 0x2C($s0)
  .L8008CA20_9B9D0:
    /* 9B9D0 8008CA20 8D4A2A70 */  lw         $t2, %lo(D_80222A70)($t2)
    /* 9B9D4 8008CA24 860B0002 */  lh         $t3, 0x2($s0)
    /* 9B9D8 8008CA28 93A4008B */  lbu        $a0, 0x8B($sp)
    /* 9B9DC 8008CA2C 24050004 */  addiu      $a1, $zero, 0x4
    /* 9B9E0 8008CA30 014B082A */  slt        $at, $t2, $t3
    /* 9B9E4 8008CA34 10200003 */  beqz       $at, .L8008CA44_9B9F4
    /* 9B9E8 8008CA38 00000000 */   nop
    /* 9B9EC 8008CA3C 0C022480 */  jal        func_80089200_981B0
    /* 9B9F0 8008CA40 2406005A */   addiu     $a2, $zero, 0x5A
  .L8008CA44_9B9F4:
    /* 9B9F4 8008CA44 3C028004 */  lui        $v0, %hi(currentLevel)
    /* 9B9F8 8008CA48 8C427F90 */  lw         $v0, %lo(currentLevel)($v0)
    /* 9B9FC 8008CA4C 24010001 */  addiu      $at, $zero, 0x1
    /* 9BA00 8008CA50 54410005 */  bnel       $v0, $at, .L8008CA68_9BA18
    /* 9BA04 8008CA54 24010001 */   addiu     $at, $zero, 0x1
    /* 9BA08 8008CA58 8609002C */  lh         $t1, 0x2C($s0)
    /* 9BA0C 8008CA5C 312C0007 */  andi       $t4, $t1, 0x7
    /* 9BA10 8008CA60 11800008 */  beqz       $t4, .L8008CA84_9BA34
    /* 9BA14 8008CA64 24010001 */   addiu     $at, $zero, 0x1
  .L8008CA68_9BA18:
    /* 9BA18 8008CA68 10410065 */  beq        $v0, $at, .L8008CC00_9BBB0
    /* 9BA1C 8008CA6C 8603002C */   lh        $v1, 0x2C($s0)
    /* 9BA20 8008CA70 24010014 */  addiu      $at, $zero, 0x14
    /* 9BA24 8008CA74 0061001A */  div        $zero, $v1, $at
    /* 9BA28 8008CA78 00006810 */  mfhi       $t5
    /* 9BA2C 8008CA7C 55A00061 */  bnel       $t5, $zero, .L8008CC04_9BBB4
    /* 9BA30 8008CA80 24010014 */   addiu     $at, $zero, 0x14
  .L8008CA84_9BA34:
    /* 9BA34 8008CA84 0C000E38 */  jal        func_800038E0_44E0
    /* 9BA38 8008CA88 00000000 */   nop
    /* 9BA3C 8008CA8C 304F0003 */  andi       $t7, $v0, 0x3
    /* 9BA40 8008CA90 15E0002D */  bnez       $t7, .L8008CB48_9BAF8
    /* 9BA44 8008CA94 00000000 */   nop
    /* 9BA48 8008CA98 0C000E38 */  jal        func_800038E0_44E0
    /* 9BA4C 8008CA9C 00000000 */   nop
    /* 9BA50 8008CAA0 0C000E38 */  jal        func_800038E0_44E0
    /* 9BA54 8008CAA4 A7A2005A */   sh        $v0, 0x5A($sp)
    /* 9BA58 8008CAA8 0C000E38 */  jal        func_800038E0_44E0
    /* 9BA5C 8008CAAC A7A2005C */   sh        $v0, 0x5C($sp)
    /* 9BA60 8008CAB0 97B8005A */  lhu        $t8, 0x5A($sp)
    /* 9BA64 8008CAB4 860E0000 */  lh         $t6, 0x0($s0)
    /* 9BA68 8008CAB8 97A9005C */  lhu        $t1, 0x5C($sp)
    /* 9BA6C 8008CABC 07010004 */  bgez       $t8, .L8008CAD0_9BA80
    /* 9BA70 8008CAC0 3319007F */   andi      $t9, $t8, 0x7F
    /* 9BA74 8008CAC4 13200002 */  beqz       $t9, .L8008CAD0_9BA80
    /* 9BA78 8008CAC8 00000000 */   nop
    /* 9BA7C 8008CACC 2739FF80 */  addiu      $t9, $t9, -0x80
  .L8008CAD0_9BA80:
    /* 9BA80 8008CAD0 01D92023 */  subu       $a0, $t6, $t9
    /* 9BA84 8008CAD4 860E0004 */  lh         $t6, 0x4($s0)
    /* 9BA88 8008CAD8 860D0002 */  lh         $t5, 0x2($s0)
    /* 9BA8C 8008CADC 24840040 */  addiu      $a0, $a0, 0x40
    /* 9BA90 8008CAE0 00045400 */  sll        $t2, $a0, 16
    /* 9BA94 8008CAE4 000A5C03 */  sra        $t3, $t2, 16
    /* 9BA98 8008CAE8 01602025 */  or         $a0, $t3, $zero
    /* 9BA9C 8008CAEC 05210004 */  bgez       $t1, .L8008CB00_9BAB0
    /* 9BAA0 8008CAF0 312C003F */   andi      $t4, $t1, 0x3F
    /* 9BAA4 8008CAF4 11800002 */  beqz       $t4, .L8008CB00_9BAB0
    /* 9BAA8 8008CAF8 00000000 */   nop
    /* 9BAAC 8008CAFC 258CFFC0 */  addiu      $t4, $t4, -0x40
  .L8008CB00_9BAB0:
    /* 9BAB0 8008CB00 018D2821 */  addu       $a1, $t4, $t5
    /* 9BAB4 8008CB04 00057C00 */  sll        $t7, $a1, 16
    /* 9BAB8 8008CB08 000FC403 */  sra        $t8, $t7, 16
    /* 9BABC 8008CB0C 03002825 */  or         $a1, $t8, $zero
    /* 9BAC0 8008CB10 04410004 */  bgez       $v0, .L8008CB24_9BAD4
    /* 9BAC4 8008CB14 3059007F */   andi      $t9, $v0, 0x7F
    /* 9BAC8 8008CB18 13200002 */  beqz       $t9, .L8008CB24_9BAD4
    /* 9BACC 8008CB1C 00000000 */   nop
    /* 9BAD0 8008CB20 2739FF80 */  addiu      $t9, $t9, -0x80
  .L8008CB24_9BAD4:
    /* 9BAD4 8008CB24 01D93023 */  subu       $a2, $t6, $t9
    /* 9BAD8 8008CB28 24C60040 */  addiu      $a2, $a2, 0x40
    /* 9BADC 8008CB2C 00065400 */  sll        $t2, $a2, 16
    /* 9BAE0 8008CB30 000A3403 */  sra        $a2, $t2, 16
    /* 9BAE4 8008CB34 24070032 */  addiu      $a3, $zero, 0x32
    /* 9BAE8 8008CB38 0C037E12 */  jal        func_800DF848_EE7F8
    /* 9BAEC 8008CB3C AFA00010 */   sw        $zero, 0x10($sp)
    /* 9BAF0 8008CB40 1000002F */  b          .L8008CC00_9BBB0
    /* 9BAF4 8008CB44 8603002C */   lh        $v1, 0x2C($s0)
  .L8008CB48_9BAF8:
    /* 9BAF8 8008CB48 0C000E38 */  jal        func_800038E0_44E0
    /* 9BAFC 8008CB4C 00000000 */   nop
    /* 9BB00 8008CB50 0C000E38 */  jal        func_800038E0_44E0
    /* 9BB04 8008CB54 A7A2005A */   sh        $v0, 0x5A($sp)
    /* 9BB08 8008CB58 0C000E38 */  jal        func_800038E0_44E0
    /* 9BB0C 8008CB5C A7A2005C */   sh        $v0, 0x5C($sp)
    /* 9BB10 8008CB60 97AC005A */  lhu        $t4, 0x5A($sp)
    /* 9BB14 8008CB64 86090000 */  lh         $t1, 0x0($s0)
    /* 9BB18 8008CB68 97AE005C */  lhu        $t6, 0x5C($sp)
    /* 9BB1C 8008CB6C 05810004 */  bgez       $t4, .L8008CB80_9BB30
    /* 9BB20 8008CB70 318D007F */   andi      $t5, $t4, 0x7F
    /* 9BB24 8008CB74 11A00002 */  beqz       $t5, .L8008CB80_9BB30
    /* 9BB28 8008CB78 00000000 */   nop
    /* 9BB2C 8008CB7C 25ADFF80 */  addiu      $t5, $t5, -0x80
  .L8008CB80_9BB30:
    /* 9BB30 8008CB80 012D2023 */  subu       $a0, $t1, $t5
    /* 9BB34 8008CB84 86090004 */  lh         $t1, 0x4($s0)
    /* 9BB38 8008CB88 860A0002 */  lh         $t2, 0x2($s0)
    /* 9BB3C 8008CB8C 24840040 */  addiu      $a0, $a0, 0x40
    /* 9BB40 8008CB90 00047C00 */  sll        $t7, $a0, 16
    /* 9BB44 8008CB94 000FC403 */  sra        $t8, $t7, 16
    /* 9BB48 8008CB98 03002025 */  or         $a0, $t8, $zero
    /* 9BB4C 8008CB9C 05C10004 */  bgez       $t6, .L8008CBB0_9BB60
    /* 9BB50 8008CBA0 31D9003F */   andi      $t9, $t6, 0x3F
    /* 9BB54 8008CBA4 13200002 */  beqz       $t9, .L8008CBB0_9BB60
    /* 9BB58 8008CBA8 00000000 */   nop
    /* 9BB5C 8008CBAC 2739FFC0 */  addiu      $t9, $t9, -0x40
  .L8008CBB0_9BB60:
    /* 9BB60 8008CBB0 032A2821 */  addu       $a1, $t9, $t2
    /* 9BB64 8008CBB4 00055C00 */  sll        $t3, $a1, 16
    /* 9BB68 8008CBB8 3C0E8014 */  lui        $t6, %hi(D_8013C178)
    /* 9BB6C 8008CBBC 25CEC178 */  addiu      $t6, $t6, %lo(D_8013C178)
    /* 9BB70 8008CBC0 000B6403 */  sra        $t4, $t3, 16
    /* 9BB74 8008CBC4 01802825 */  or         $a1, $t4, $zero
    /* 9BB78 8008CBC8 04410004 */  bgez       $v0, .L8008CBDC_9BB8C
    /* 9BB7C 8008CBCC 304D007F */   andi      $t5, $v0, 0x7F
    /* 9BB80 8008CBD0 11A00002 */  beqz       $t5, .L8008CBDC_9BB8C
    /* 9BB84 8008CBD4 00000000 */   nop
    /* 9BB88 8008CBD8 25ADFF80 */  addiu      $t5, $t5, -0x80
  .L8008CBDC_9BB8C:
    /* 9BB8C 8008CBDC 012D3023 */  subu       $a2, $t1, $t5
    /* 9BB90 8008CBE0 24C60040 */  addiu      $a2, $a2, 0x40
    /* 9BB94 8008CBE4 00067C00 */  sll        $t7, $a2, 16
    /* 9BB98 8008CBE8 000F3403 */  sra        $a2, $t7, 16
    /* 9BB9C 8008CBEC AFAE0014 */  sw         $t6, 0x14($sp)
    /* 9BBA0 8008CBF0 24070032 */  addiu      $a3, $zero, 0x32
    /* 9BBA4 8008CBF4 0C037C0E */  jal        func_800DF038_EDFE8
    /* 9BBA8 8008CBF8 AFA00010 */   sw        $zero, 0x10($sp)
    /* 9BBAC 8008CBFC 8603002C */  lh         $v1, 0x2C($s0)
  .L8008CC00_9BBB0:
    /* 9BBB0 8008CC00 24010014 */  addiu      $at, $zero, 0x14
  .L8008CC04_9BBB4:
    /* 9BBB4 8008CC04 0061001A */  div        $zero, $v1, $at
    /* 9BBB8 8008CC08 0000C810 */  mfhi       $t9
    /* 9BBBC 8008CC0C 3C0A8022 */  lui        $t2, %hi(D_80222A70)
    /* 9BBC0 8008CC10 5720001A */  bnel       $t9, $zero, .L8008CC7C_9BC2C
    /* 9BBC4 8008CC14 8E0E0020 */   lw        $t6, 0x20($s0)
    /* 9BBC8 8008CC18 86050002 */  lh         $a1, 0x2($s0)
    /* 9BBCC 8008CC1C 8D4A2A70 */  lw         $t2, %lo(D_80222A70)($t2)
    /* 9BBD0 8008CC20 00003825 */  or         $a3, $zero, $zero
    /* 9BBD4 8008CC24 240B0001 */  addiu      $t3, $zero, 0x1
    /* 9BBD8 8008CC28 0145082A */  slt        $at, $t2, $a1
    /* 9BBDC 8008CC2C 10200012 */  beqz       $at, .L8008CC78_9BC28
    /* 9BBE0 8008CC30 240C0046 */   addiu     $t4, $zero, 0x46
    /* 9BBE4 8008CC34 24090004 */  addiu      $t1, $zero, 0x4
    /* 9BBE8 8008CC38 240D000C */  addiu      $t5, $zero, 0xC
    /* 9BBEC 8008CC3C 240F0080 */  addiu      $t7, $zero, 0x80
    /* 9BBF0 8008CC40 241800FF */  addiu      $t8, $zero, 0xFF
    /* 9BBF4 8008CC44 AFB80034 */  sw         $t8, 0x34($sp)
    /* 9BBF8 8008CC48 AFAF0024 */  sw         $t7, 0x24($sp)
    /* 9BBFC 8008CC4C AFAD0020 */  sw         $t5, 0x20($sp)
    /* 9BC00 8008CC50 AFA9001C */  sw         $t1, 0x1C($sp)
    /* 9BC04 8008CC54 86040000 */  lh         $a0, 0x0($s0)
    /* 9BC08 8008CC58 86060004 */  lh         $a2, 0x4($s0)
    /* 9BC0C 8008CC5C AFAB0010 */  sw         $t3, 0x10($sp)
    /* 9BC10 8008CC60 AFA00014 */  sw         $zero, 0x14($sp)
    /* 9BC14 8008CC64 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 9BC18 8008CC68 AFA00028 */  sw         $zero, 0x28($sp)
    /* 9BC1C 8008CC6C AFA0002C */  sw         $zero, 0x2C($sp)
    /* 9BC20 8008CC70 0C03297B */  jal        func_800CA5EC_D959C
    /* 9BC24 8008CC74 AFA00030 */   sw        $zero, 0x30($sp)
  .L8008CC78_9BC28:
    /* 9BC28 8008CC78 8E0E0020 */  lw         $t6, 0x20($s0)
  .L8008CC7C_9BC2C:
    /* 9BC2C 8008CC7C 31D91000 */  andi       $t9, $t6, 0x1000
    /* 9BC30 8008CC80 5320000C */  beql       $t9, $zero, .L8008CCB4_9BC64
    /* 9BC34 8008CC84 8604000C */   lh        $a0, 0xC($s0)
    /* 9BC38 8008CC88 0C0231EC */  jal        func_8008C7B0_9B760
    /* 9BC3C 8008CC8C 93A4008B */   lbu       $a0, 0x8B($sp)
    /* 9BC40 8008CC90 24010001 */  addiu      $at, $zero, 0x1
    /* 9BC44 8008CC94 54410034 */  bnel       $v0, $at, .L8008CD68_9BD18
    /* 9BC48 8008CC98 8219003C */   lb        $t9, 0x3C($s0)
    /* 9BC4C 8008CC9C 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 9BC50 8008CCA0 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 9BC54 8008CCA4 01415824 */  and        $t3, $t2, $at
    /* 9BC58 8008CCA8 1000002E */  b          .L8008CD64_9BD14
    /* 9BC5C 8008CCAC AE0B0020 */   sw        $t3, 0x20($s0)
    /* 9BC60 8008CCB0 8604000C */  lh         $a0, 0xC($s0)
  .L8008CCB4_9BC64:
    /* 9BC64 8008CCB4 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 9BC68 8008CCB8 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 9BC6C 8008CCBC 00046100 */  sll        $t4, $a0, 4
    /* 9BC70 8008CCC0 006C4821 */  addu       $t1, $v1, $t4
    /* 9BC74 8008CCC4 8122000C */  lb         $v0, 0xC($t1)
    /* 9BC78 8008CCC8 3C0A8004 */  lui        $t2, %hi(currentLevel)
    /* 9BC7C 8008CCCC 8D4A7F90 */  lw         $t2, %lo(currentLevel)($t2)
    /* 9BC80 8008CCD0 00026900 */  sll        $t5, $v0, 4
    /* 9BC84 8008CCD4 006D7821 */  addu       $t7, $v1, $t5
    /* 9BC88 8008CCD8 81E5000D */  lb         $a1, 0xD($t7)
    /* 9BC8C 8008CCDC 24010001 */  addiu      $at, $zero, 0x1
    /* 9BC90 8008CCE0 93A4008B */  lbu        $a0, 0x8B($sp)
    /* 9BC94 8008CCE4 0005C100 */  sll        $t8, $a1, 4
    /* 9BC98 8008CCE8 00787021 */  addu       $t6, $v1, $t8
    /* 9BC9C 8008CCEC 81D9000D */  lb         $t9, 0xD($t6)
    /* 9BCA0 8008CCF0 24060006 */  addiu      $a2, $zero, 0x6
    /* 9BCA4 8008CCF4 15410008 */  bne        $t2, $at, .L8008CD18_9BCC8
    /* 9BCA8 8008CCF8 A7B90080 */   sh        $t9, 0x80($sp)
    /* 9BCAC 8008CCFC 3C078014 */  lui        $a3, %hi(D_8013C544)
    /* 9BCB0 8008CD00 24E7C544 */  addiu      $a3, $a3, %lo(D_8013C544)
    /* 9BCB4 8008CD04 87A50080 */  lh         $a1, 0x80($sp)
    /* 9BCB8 8008CD08 0C02087C */  jal        func_800821F0_911A0
    /* 9BCBC 8008CD0C AFA40050 */   sw        $a0, 0x50($sp)
    /* 9BCC0 8008CD10 10000012 */  b          .L8008CD5C_9BD0C
    /* 9BCC4 8008CD14 8FA40050 */   lw        $a0, 0x50($sp)
  .L8008CD18_9BCC8:
    /* 9BCC8 8008CD18 87AB0080 */  lh         $t3, 0x80($sp)
    /* 9BCCC 8008CD1C 93A4008B */  lbu        $a0, 0x8B($sp)
    /* 9BCD0 8008CD20 3C078014 */  lui        $a3, %hi(D_8013C544)
    /* 9BCD4 8008CD24 000B6100 */  sll        $t4, $t3, 4
    /* 9BCD8 8008CD28 006C4821 */  addu       $t1, $v1, $t4
    /* 9BCDC 8008CD2C 8122000C */  lb         $v0, 0xC($t1)
    /* 9BCE0 8008CD30 24E7C544 */  addiu      $a3, $a3, %lo(D_8013C544)
    /* 9BCE4 8008CD34 24060006 */  addiu      $a2, $zero, 0x6
    /* 9BCE8 8008CD38 00026900 */  sll        $t5, $v0, 4
    /* 9BCEC 8008CD3C 006D7821 */  addu       $t7, $v1, $t5
    /* 9BCF0 8008CD40 81E8000D */  lb         $t0, 0xD($t7)
    /* 9BCF4 8008CD44 0008C100 */  sll        $t8, $t0, 4
    /* 9BCF8 8008CD48 00787021 */  addu       $t6, $v1, $t8
    /* 9BCFC 8008CD4C 81C5000C */  lb         $a1, 0xC($t6)
    /* 9BD00 8008CD50 0C02087C */  jal        func_800821F0_911A0
    /* 9BD04 8008CD54 AFA40050 */   sw        $a0, 0x50($sp)
    /* 9BD08 8008CD58 8FA40050 */  lw         $a0, 0x50($sp)
  .L8008CD5C_9BD0C:
    /* 9BD0C 8008CD5C 0C04DD1A */  jal        func_80137468_146418
    /* 9BD10 8008CD60 24050014 */   addiu     $a1, $zero, 0x14
  .L8008CD64_9BD14:
    /* 9BD14 8008CD64 8219003C */  lb         $t9, 0x3C($s0)
  .L8008CD68_9BD18:
    /* 9BD18 8008CD68 3C0A8022 */  lui        $t2, %hi(D_80222A70)
    /* 9BD1C 8008CD6C 53200060 */  beql       $t9, $zero, .L8008CEF0_9BEA0
    /* 9BD20 8008CD70 8619002C */   lh        $t9, 0x2C($s0)
    /* 9BD24 8008CD74 8D4A2A70 */  lw         $t2, %lo(D_80222A70)($t2)
    /* 9BD28 8008CD78 860B0002 */  lh         $t3, 0x2($s0)
    /* 9BD2C 8008CD7C 014B082A */  slt        $at, $t2, $t3
    /* 9BD30 8008CD80 5020005B */  beql       $at, $zero, .L8008CEF0_9BEA0
    /* 9BD34 8008CD84 8619002C */   lh        $t9, 0x2C($s0)
    /* 9BD38 8008CD88 86020000 */  lh         $v0, 0x0($s0)
    /* 9BD3C 8008CD8C 86030004 */  lh         $v1, 0x4($s0)
    /* 9BD40 8008CD90 44805000 */  mtc1       $zero, $f10
    /* 9BD44 8008CD94 04410003 */  bgez       $v0, .L8008CDA4_9BD54
    /* 9BD48 8008CD98 00026083 */   sra       $t4, $v0, 2
    /* 9BD4C 8008CD9C 24410003 */  addiu      $at, $v0, 0x3
    /* 9BD50 8008CDA0 00016083 */  sra        $t4, $at, 2
  .L8008CDA4_9BD54:
    /* 9BD54 8008CDA4 3C018004 */  lui        $at, %hi(D_80047954)
    /* 9BD58 8008CDA8 C4287954 */  lwc1       $f8, %lo(D_80047954)($at)
    /* 9BD5C 8008CDAC 448C2000 */  mtc1       $t4, $f4
    /* 9BD60 8008CDB0 27A40068 */  addiu      $a0, $sp, 0x68
    /* 9BD64 8008CDB4 27A50064 */  addiu      $a1, $sp, 0x64
    /* 9BD68 8008CDB8 468021A0 */  cvt.s.w    $f6, $f4
    /* 9BD6C 8008CDBC 27A60060 */  addiu      $a2, $sp, 0x60
    /* 9BD70 8008CDC0 AFA20074 */  sw         $v0, 0x74($sp)
    /* 9BD74 8008CDC4 AFA3006C */  sw         $v1, 0x6C($sp)
    /* 9BD78 8008CDC8 E7AA0064 */  swc1       $f10, 0x64($sp)
    /* 9BD7C 8008CDCC 46083081 */  sub.s      $f2, $f6, $f8
    /* 9BD80 8008CDD0 04610003 */  bgez       $v1, .L8008CDE0_9BD90
    /* 9BD84 8008CDD4 00034883 */   sra       $t1, $v1, 2
    /* 9BD88 8008CDD8 24610003 */  addiu      $at, $v1, 0x3
    /* 9BD8C 8008CDDC 00014883 */  sra        $t1, $at, 2
  .L8008CDE0_9BD90:
    /* 9BD90 8008CDE0 44898000 */  mtc1       $t1, $f16
    /* 9BD94 8008CDE4 3C018004 */  lui        $at, %hi(D_8004795C)
    /* 9BD98 8008CDE8 C424795C */  lwc1       $f4, %lo(D_8004795C)($at)
    /* 9BD9C 8008CDEC 468084A0 */  cvt.s.w    $f18, $f16
    /* 9BDA0 8008CDF0 E7A20068 */  swc1       $f2, 0x68($sp)
    /* 9BDA4 8008CDF4 46049301 */  sub.s      $f12, $f18, $f4
    /* 9BDA8 8008CDF8 0C00A040 */  jal        guNormalize
    /* 9BDAC 8008CDFC E7AC0060 */   swc1      $f12, 0x60($sp)
    /* 9BDB0 8008CE00 3C014348 */  lui        $at, (0x43480000 >> 16)
    /* 9BDB4 8008CE04 44810000 */  mtc1       $at, $f0
    /* 9BDB8 8008CE08 C7A20068 */  lwc1       $f2, 0x68($sp)
    /* 9BDBC 8008CE0C 8FA3006C */  lw         $v1, 0x6C($sp)
    /* 9BDC0 8008CE10 8FA20074 */  lw         $v0, 0x74($sp)
    /* 9BDC4 8008CE14 46001082 */  mul.s      $f2, $f2, $f0
    /* 9BDC8 8008CE18 C7AC0060 */  lwc1       $f12, 0x60($sp)
    /* 9BDCC 8008CE1C 44839000 */  mtc1       $v1, $f18
    /* 9BDD0 8008CE20 44823000 */  mtc1       $v0, $f6
    /* 9BDD4 8008CE24 46006302 */  mul.s      $f12, $f12, $f0
    /* 9BDD8 8008CE28 E7A20068 */  swc1       $f2, 0x68($sp)
    /* 9BDDC 8008CE2C 46809120 */  cvt.s.w    $f4, $f18
    /* 9BDE0 8008CE30 E7AC0060 */  swc1       $f12, 0x60($sp)
    /* 9BDE4 8008CE34 46803220 */  cvt.s.w    $f8, $f6
    /* 9BDE8 8008CE38 460C2181 */  sub.s      $f6, $f4, $f12
    /* 9BDEC 8008CE3C 46024281 */  sub.s      $f10, $f8, $f2
    /* 9BDF0 8008CE40 4600320D */  trunc.w.s  $f8, $f6
    /* 9BDF4 8008CE44 4600540D */  trunc.w.s  $f16, $f10
    /* 9BDF8 8008CE48 44034000 */  mfc1       $v1, $f8
    /* 9BDFC 8008CE4C 44028000 */  mfc1       $v0, $f16
    /* 9BE00 8008CE50 00033400 */  sll        $a2, $v1, 16
    /* 9BE04 8008CE54 00067403 */  sra        $t6, $a2, 16
    /* 9BE08 8008CE58 000E2C00 */  sll        $a1, $t6, 16
    /* 9BE0C 8008CE5C 00022400 */  sll        $a0, $v0, 16
    /* 9BE10 8008CE60 0004C403 */  sra        $t8, $a0, 16
    /* 9BE14 8008CE64 0005CC03 */  sra        $t9, $a1, 16
    /* 9BE18 8008CE68 03202825 */  or         $a1, $t9, $zero
    /* 9BE1C 8008CE6C 03002025 */  or         $a0, $t8, $zero
    /* 9BE20 8008CE70 AFB80050 */  sw         $t8, 0x50($sp)
    /* 9BE24 8008CE74 01C03025 */  or         $a2, $t6, $zero
    /* 9BE28 8008CE78 0C02E134 */  jal        func_800B84D0_C7480
    /* 9BE2C 8008CE7C AFAE004C */   sw        $t6, 0x4C($sp)
    /* 9BE30 8008CE80 00022A03 */  sra        $a1, $v0, 8
    /* 9BE34 8008CE84 24A50032 */  addiu      $a1, $a1, 0x32
    /* 9BE38 8008CE88 00055400 */  sll        $t2, $a1, 16
    /* 9BE3C 8008CE8C 240C0014 */  addiu      $t4, $zero, 0x14
    /* 9BE40 8008CE90 24090032 */  addiu      $t1, $zero, 0x32
    /* 9BE44 8008CE94 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 9BE48 8008CE98 240F0088 */  addiu      $t7, $zero, 0x88
    /* 9BE4C 8008CE9C 24180067 */  addiu      $t8, $zero, 0x67
    /* 9BE50 8008CEA0 240E0011 */  addiu      $t6, $zero, 0x11
    /* 9BE54 8008CEA4 8FA40050 */  lw         $a0, 0x50($sp)
    /* 9BE58 8008CEA8 8FA6004C */  lw         $a2, 0x4C($sp)
    /* 9BE5C 8008CEAC AFAE0028 */  sw         $t6, 0x28($sp)
    /* 9BE60 8008CEB0 AFB80024 */  sw         $t8, 0x24($sp)
    /* 9BE64 8008CEB4 AFAF0020 */  sw         $t7, 0x20($sp)
    /* 9BE68 8008CEB8 AFAD001C */  sw         $t5, 0x1C($sp)
    /* 9BE6C 8008CEBC AFA90018 */  sw         $t1, 0x18($sp)
    /* 9BE70 8008CEC0 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 9BE74 8008CEC4 000A2C03 */  sra        $a1, $t2, 16
    /* 9BE78 8008CEC8 2407012C */  addiu      $a3, $zero, 0x12C
    /* 9BE7C 8008CECC 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 9BE80 8008CED0 AFA00014 */   sw        $zero, 0x14($sp)
    /* 9BE84 8008CED4 86040000 */  lh         $a0, 0x0($s0)
    /* 9BE88 8008CED8 86050002 */  lh         $a1, 0x2($s0)
    /* 9BE8C 8008CEDC 86060004 */  lh         $a2, 0x4($s0)
    /* 9BE90 8008CEE0 0C04D751 */  jal        func_80135D44_144CF4
    /* 9BE94 8008CEE4 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* 9BE98 8008CEE8 A200003C */  sb         $zero, 0x3C($s0)
  .L8008CEEC_9BE9C:
    /* 9BE9C 8008CEEC 8619002C */  lh         $t9, 0x2C($s0)
  .L8008CEF0_9BEA0:
    /* 9BEA0 8008CEF0 24010001 */  addiu      $at, $zero, 0x1
    /* 9BEA4 8008CEF4 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 9BEA8 8008CEF8 17210010 */  bne        $t9, $at, .L8008CF3C_9BEEC
    /* 9BEAC 8008CEFC 240C0006 */   addiu     $t4, $zero, 0x6
    /* 9BEB0 8008CF00 920A001A */  lbu        $t2, 0x1A($s0)
    /* 9BEB4 8008CF04 86040000 */  lh         $a0, 0x0($s0)
    /* 9BEB8 8008CF08 86050002 */  lh         $a1, 0x2($s0)
    /* 9BEBC 8008CF0C 000A5880 */  sll        $t3, $t2, 2
    /* 9BEC0 8008CF10 016A5823 */  subu       $t3, $t3, $t2
    /* 9BEC4 8008CF14 000B5880 */  sll        $t3, $t3, 2
    /* 9BEC8 8008CF18 016A5821 */  addu       $t3, $t3, $t2
    /* 9BECC 8008CF1C 000B58C0 */  sll        $t3, $t3, 3
    /* 9BED0 8008CF20 00EB3821 */  addu       $a3, $a3, $t3
    /* 9BED4 8008CF24 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 9BED8 8008CF28 86060004 */  lh         $a2, 0x4($s0)
    /* 9BEDC 8008CF2C 0C037E12 */  jal        func_800DF848_EE7F8
    /* 9BEE0 8008CF30 AFAC0010 */   sw        $t4, 0x10($sp)
    /* 9BEE4 8008CF34 3C018003 */  lui        $at, %hi(D_80031410)
    /* 9BEE8 8008CF38 AC201410 */  sw         $zero, %lo(D_80031410)($at)
  .L8008CF3C_9BEEC:
    /* 9BEEC 8008CF3C 8FBF0044 */  lw         $ra, 0x44($sp)
  .L8008CF40_9BEF0:
    /* 9BEF0 8008CF40 8FB00040 */  lw         $s0, 0x40($sp)
    /* 9BEF4 8008CF44 27BD0088 */  addiu      $sp, $sp, 0x88
    /* 9BEF8 8008CF48 03E00008 */  jr         $ra
    /* 9BEFC 8008CF4C 00000000 */   nop
endlabel func_8008C8B8_9B868
