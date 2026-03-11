nonmatching func_8008C8E0_5CD90, 0x35C

glabel func_8008C8E0_5CD90
    /* 5CD90 8008C8E0 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 5CD94 8008C8E4 3C078006 */  lui        $a3, %hi(D_8005BB2C)
    /* 5CD98 8008C8E8 24E7BB2C */  addiu      $a3, $a3, %lo(D_8005BB2C)
    /* 5CD9C 8008C8EC 8CE40000 */  lw         $a0, 0x0($a3)
    /* 5CDA0 8008C8F0 3C05800E */  lui        $a1, %hi(D_800DE80E)
    /* 5CDA4 8008C8F4 84A5E80E */  lh         $a1, %lo(D_800DE80E)($a1)
    /* 5CDA8 8008C8F8 248E0008 */  addiu      $t6, $a0, 0x8
    /* 5CDAC 8008C8FC AFBF002C */  sw         $ra, 0x2C($sp)
    /* 5CDB0 8008C900 AFBE0028 */  sw         $fp, 0x28($sp)
    /* 5CDB4 8008C904 AFB70024 */  sw         $s7, 0x24($sp)
    /* 5CDB8 8008C908 AFB60020 */  sw         $s6, 0x20($sp)
    /* 5CDBC 8008C90C AFB5001C */  sw         $s5, 0x1C($sp)
    /* 5CDC0 8008C910 AFB40018 */  sw         $s4, 0x18($sp)
    /* 5CDC4 8008C914 AFB30014 */  sw         $s3, 0x14($sp)
    /* 5CDC8 8008C918 AFB20010 */  sw         $s2, 0x10($sp)
    /* 5CDCC 8008C91C AFB1000C */  sw         $s1, 0xC($sp)
    /* 5CDD0 8008C920 AFB00008 */  sw         $s0, 0x8($sp)
    /* 5CDD4 8008C924 ACEE0000 */  sw         $t6, 0x0($a3)
    /* 5CDD8 8008C928 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* 5CDDC 8008C92C 2401FFFA */  addiu      $at, $zero, -0x6
    /* 5CDE0 8008C930 AC8F0000 */  sw         $t7, 0x0($a0)
    /* 5CDE4 8008C934 10A100B5 */  beq        $a1, $at, .L8008CC0C_5D0BC
    /* 5CDE8 8008C938 AC800004 */   sw        $zero, 0x4($a0)
    /* 5CDEC 8008C93C 2401FFFB */  addiu      $at, $zero, -0x5
    /* 5CDF0 8008C940 10A100B2 */  beq        $a1, $at, .L8008CC0C_5D0BC
    /* 5CDF4 8008C944 3C1F0400 */   lui       $ra, (0x400081F >> 16)
    /* 5CDF8 8008C948 3C15800E */  lui        $s5, %hi(D_800DE840)
    /* 5CDFC 8008C94C 3C12800E */  lui        $s2, %hi(D_800DE0B6)
    /* 5CE00 8008C950 3C038006 */  lui        $v1, %hi(D_8005BB34)
    /* 5CE04 8008C954 2463BB34 */  addiu      $v1, $v1, %lo(D_8005BB34)
    /* 5CE08 8008C958 2652E0B6 */  addiu      $s2, $s2, %lo(D_800DE0B6)
    /* 5CE0C 8008C95C 26B5E840 */  addiu      $s5, $s5, %lo(D_800DE840)
    /* 5CE10 8008C960 37FF081F */  ori        $ra, $ra, (0x400081F & 0xFFFF)
    /* 5CE14 8008C964 241E0019 */  addiu      $fp, $zero, 0x19
    /* 5CE18 8008C968 241700FF */  addiu      $s7, $zero, 0xFF
    /* 5CE1C 8008C96C 2416001C */  addiu      $s6, $zero, 0x1C
    /* 5CE20 8008C970 3C14B500 */  lui        $s4, (0xB5000000 >> 16)
    /* 5CE24 8008C974 24130800 */  addiu      $s3, $zero, 0x800
    /* 5CE28 8008C978 24110001 */  addiu      $s1, $zero, 0x1
    /* 5CE2C 8008C97C 24100003 */  addiu      $s0, $zero, 0x3
  .L8008C980_5CE30:
    /* 5CE30 8008C980 00B60019 */  multu      $a1, $s6
    /* 5CE34 8008C984 8CE40000 */  lw         $a0, 0x0($a3)
    /* 5CE38 8008C988 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* 5CE3C 8008C98C 24980008 */  addiu      $t8, $a0, 0x8
    /* 5CE40 8008C990 ACF80000 */  sw         $t8, 0x0($a3)
    /* 5CE44 8008C994 AC800004 */  sw         $zero, 0x4($a0)
    /* 5CE48 8008C998 AC990000 */  sw         $t9, 0x0($a0)
    /* 5CE4C 8008C99C 924F0000 */  lbu        $t7, 0x0($s2)
    /* 5CE50 8008C9A0 00007012 */  mflo       $t6
    /* 5CE54 8008C9A4 02AE3021 */  addu       $a2, $s5, $t6
    /* 5CE58 8008C9A8 84CB0008 */  lh         $t3, 0x8($a2)
    /* 5CE5C 8008C9AC 84CC000A */  lh         $t4, 0xA($a2)
    /* 5CE60 8008C9B0 84CD000C */  lh         $t5, 0xC($a2)
    /* 5CE64 8008C9B4 448B2000 */  mtc1       $t3, $f4
    /* 5CE68 8008C9B8 448C5000 */  mtc1       $t4, $f10
    /* 5CE6C 8008C9BC 162F0018 */  bne        $s1, $t7, .L8008CA20_5CED0
    /* 5CE70 8008C9C0 468021A0 */   cvt.s.w   $f6, $f4
    /* 5CE74 8008C9C4 24C20008 */  addiu      $v0, $a2, 0x8
    /* 5CE78 8008C9C8 8459000A */  lh         $t9, 0xA($v0)
    /* 5CE7C 8008C9CC 84580000 */  lh         $t8, 0x0($v0)
    /* 5CE80 8008C9D0 03300019 */  multu      $t9, $s0
    /* 5CE84 8008C9D4 00007012 */  mflo       $t6
    /* 5CE88 8008C9D8 030E4023 */  subu       $t0, $t8, $t6
    /* 5CE8C 8008C9DC 844E000C */  lh         $t6, 0xC($v0)
    /* 5CE90 8008C9E0 84580002 */  lh         $t8, 0x2($v0)
    /* 5CE94 8008C9E4 00087C00 */  sll        $t7, $t0, 16
    /* 5CE98 8008C9E8 01D00019 */  multu      $t6, $s0
    /* 5CE9C 8008C9EC 000F4403 */  sra        $t0, $t7, 16
    /* 5CEA0 8008C9F0 00007812 */  mflo       $t7
    /* 5CEA4 8008C9F4 030F4823 */  subu       $t1, $t8, $t7
    /* 5CEA8 8008C9F8 844F000E */  lh         $t7, 0xE($v0)
    /* 5CEAC 8008C9FC 84580004 */  lh         $t8, 0x4($v0)
    /* 5CEB0 8008CA00 0009CC00 */  sll        $t9, $t1, 16
    /* 5CEB4 8008CA04 01F00019 */  multu      $t7, $s0
    /* 5CEB8 8008CA08 00194C03 */  sra        $t1, $t9, 16
    /* 5CEBC 8008CA0C 0000C812 */  mflo       $t9
    /* 5CEC0 8008CA10 03195023 */  subu       $t2, $t8, $t9
    /* 5CEC4 8008CA14 000A7400 */  sll        $t6, $t2, 16
    /* 5CEC8 8008CA18 10000014 */  b          .L8008CA6C_5CF1C
    /* 5CECC 8008CA1C 000E5403 */   sra       $t2, $t6, 16
  .L8008CA20_5CED0:
    /* 5CED0 8008CA20 24C20008 */  addiu      $v0, $a2, 0x8
    /* 5CED4 8008CA24 8459000A */  lh         $t9, 0xA($v0)
    /* 5CED8 8008CA28 84580000 */  lh         $t8, 0x0($v0)
    /* 5CEDC 8008CA2C 00197040 */  sll        $t6, $t9, 1
    /* 5CEE0 8008CA30 030E4023 */  subu       $t0, $t8, $t6
    /* 5CEE4 8008CA34 844E000C */  lh         $t6, 0xC($v0)
    /* 5CEE8 8008CA38 84580002 */  lh         $t8, 0x2($v0)
    /* 5CEEC 8008CA3C 00087C00 */  sll        $t7, $t0, 16
    /* 5CEF0 8008CA40 000F4403 */  sra        $t0, $t7, 16
    /* 5CEF4 8008CA44 000E7840 */  sll        $t7, $t6, 1
    /* 5CEF8 8008CA48 030F4823 */  subu       $t1, $t8, $t7
    /* 5CEFC 8008CA4C 844F000E */  lh         $t7, 0xE($v0)
    /* 5CF00 8008CA50 84580004 */  lh         $t8, 0x4($v0)
    /* 5CF04 8008CA54 0009CC00 */  sll        $t9, $t1, 16
    /* 5CF08 8008CA58 00194C03 */  sra        $t1, $t9, 16
    /* 5CF0C 8008CA5C 000FC840 */  sll        $t9, $t7, 1
    /* 5CF10 8008CA60 03195023 */  subu       $t2, $t8, $t9
    /* 5CF14 8008CA64 000A7400 */  sll        $t6, $t2, 16
    /* 5CF18 8008CA68 000E5403 */  sra        $t2, $t6, 16
  .L8008CA6C_5CF1C:
    /* 5CF1C 8008CA6C 46805420 */  cvt.s.w    $f16, $f10
    /* 5CF20 8008CA70 448D2000 */  mtc1       $t5, $f4
    /* 5CF24 8008CA74 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 5CF28 8008CA78 44885000 */  mtc1       $t0, $f10
    /* 5CF2C 8008CA7C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 5CF30 8008CA80 4600320D */  trunc.w.s  $f8, $f6
    /* 5CF34 8008CA84 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 5CF38 8008CA88 468021A0 */  cvt.s.w    $f6, $f4
    /* 5CF3C 8008CA8C 44194000 */  mfc1       $t9, $f8
    /* 5CF40 8008CA90 44892000 */  mtc1       $t1, $f4
    /* 5CF44 8008CA94 A5D90000 */  sh         $t9, 0x0($t6)
    /* 5CF48 8008CA98 4600848D */  trunc.w.s  $f18, $f16
    /* 5CF4C 8008CA9C 8C790000 */  lw         $t9, 0x0($v1)
    /* 5CF50 8008CAA0 4600320D */  trunc.w.s  $f8, $f6
    /* 5CF54 8008CAA4 44189000 */  mfc1       $t8, $f18
    /* 5CF58 8008CAA8 46805420 */  cvt.s.w    $f16, $f10
    /* 5CF5C 8008CAAC A7380002 */  sh         $t8, 0x2($t9)
    /* 5CF60 8008CAB0 8C780000 */  lw         $t8, 0x0($v1)
    /* 5CF64 8008CAB4 440F4000 */  mfc1       $t7, $f8
    /* 5CF68 8008CAB8 448A5000 */  mtc1       $t2, $f10
    /* 5CF6C 8008CABC 468021A0 */  cvt.s.w    $f6, $f4
    /* 5CF70 8008CAC0 A70F0004 */  sh         $t7, 0x4($t8)
    /* 5CF74 8008CAC4 8C790000 */  lw         $t9, 0x0($v1)
    /* 5CF78 8008CAC8 A7200006 */  sh         $zero, 0x6($t9)
    /* 5CF7C 8008CACC 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 5CF80 8008CAD0 4600848D */  trunc.w.s  $f18, $f16
    /* 5CF84 8008CAD4 A5C00008 */  sh         $zero, 0x8($t6)
    /* 5CF88 8008CAD8 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 5CF8C 8008CADC 46805420 */  cvt.s.w    $f16, $f10
    /* 5CF90 8008CAE0 A5E0000A */  sh         $zero, 0xA($t7)
    /* 5CF94 8008CAE4 8C790000 */  lw         $t9, 0x0($v1)
    /* 5CF98 8008CAE8 90580006 */  lbu        $t8, 0x6($v0)
    /* 5CF9C 8008CAEC 4600320D */  trunc.w.s  $f8, $f6
    /* 5CFA0 8008CAF0 A338000C */  sb         $t8, 0xC($t9)
    /* 5CFA4 8008CAF4 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 5CFA8 8008CAF8 904E0007 */  lbu        $t6, 0x7($v0)
    /* 5CFAC 8008CAFC A1EE000D */  sb         $t6, 0xD($t7)
    /* 5CFB0 8008CB00 8C790000 */  lw         $t9, 0x0($v1)
    /* 5CFB4 8008CB04 90580008 */  lbu        $t8, 0x8($v0)
    /* 5CFB8 8008CB08 A338000E */  sb         $t8, 0xE($t9)
    /* 5CFBC 8008CB0C 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 5CFC0 8008CB10 44194000 */  mfc1       $t9, $f8
    /* 5CFC4 8008CB14 A1D7000F */  sb         $s7, 0xF($t6)
    /* 5CFC8 8008CB18 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 5CFCC 8008CB1C 440E9000 */  mfc1       $t6, $f18
    /* 5CFD0 8008CB20 4600848D */  trunc.w.s  $f18, $f16
    /* 5CFD4 8008CB24 25F80010 */  addiu      $t8, $t7, 0x10
    /* 5CFD8 8008CB28 AC780000 */  sw         $t8, 0x0($v1)
    /* 5CFDC 8008CB2C A70E0000 */  sh         $t6, 0x0($t8)
    /* 5CFE0 8008CB30 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 5CFE4 8008CB34 44189000 */  mfc1       $t8, $f18
    /* 5CFE8 8008CB38 A5D90002 */  sh         $t9, 0x2($t6)
    /* 5CFEC 8008CB3C 8C790000 */  lw         $t9, 0x0($v1)
    /* 5CFF0 8008CB40 A7380004 */  sh         $t8, 0x4($t9)
    /* 5CFF4 8008CB44 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 5CFF8 8008CB48 A5C00006 */  sh         $zero, 0x6($t6)
    /* 5CFFC 8008CB4C 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 5D000 8008CB50 A5F30008 */  sh         $s3, 0x8($t7)
    /* 5D004 8008CB54 8C780000 */  lw         $t8, 0x0($v1)
    /* 5D008 8008CB58 A713000A */  sh         $s3, 0xA($t8)
    /* 5D00C 8008CB5C 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 5D010 8008CB60 90590006 */  lbu        $t9, 0x6($v0)
    /* 5D014 8008CB64 A1D9000C */  sb         $t9, 0xC($t6)
    /* 5D018 8008CB68 8C780000 */  lw         $t8, 0x0($v1)
    /* 5D01C 8008CB6C 904F0007 */  lbu        $t7, 0x7($v0)
    /* 5D020 8008CB70 A30F000D */  sb         $t7, 0xD($t8)
    /* 5D024 8008CB74 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 5D028 8008CB78 90590008 */  lbu        $t9, 0x8($v0)
    /* 5D02C 8008CB7C A1D9000E */  sb         $t9, 0xE($t6)
    /* 5D030 8008CB80 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 5D034 8008CB84 A1FE000F */  sb         $fp, 0xF($t7)
    /* 5D038 8008CB88 8C780000 */  lw         $t8, 0x0($v1)
    /* 5D03C 8008CB8C 8CE40000 */  lw         $a0, 0x0($a3)
    /* 5D040 8008CB90 27190010 */  addiu      $t9, $t8, 0x10
    /* 5D044 8008CB94 248E0008 */  addiu      $t6, $a0, 0x8
    /* 5D048 8008CB98 AC790000 */  sw         $t9, 0x0($v1)
    /* 5D04C 8008CB9C ACEE0000 */  sw         $t6, 0x0($a3)
    /* 5D050 8008CBA0 AC9F0000 */  sw         $ra, 0x0($a0)
    /* 5D054 8008CBA4 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 5D058 8008CBA8 25F8FFE0 */  addiu      $t8, $t7, -0x20
    /* 5D05C 8008CBAC 0301C824 */  and        $t9, $t8, $at
    /* 5D060 8008CBB0 AC990004 */  sw         $t9, 0x4($a0)
    /* 5D064 8008CBB4 924E0000 */  lbu        $t6, 0x0($s2)
    /* 5D068 8008CBB8 562E0009 */  bnel       $s1, $t6, .L8008CBE0_5D090
    /* 5D06C 8008CBBC 8CE40000 */   lw        $a0, 0x0($a3)
    /* 5D070 8008CBC0 8CE40000 */  lw         $a0, 0x0($a3)
    /* 5D074 8008CBC4 24180201 */  addiu      $t8, $zero, 0x201
    /* 5D078 8008CBC8 248F0008 */  addiu      $t7, $a0, 0x8
    /* 5D07C 8008CBCC ACEF0000 */  sw         $t7, 0x0($a3)
    /* 5D080 8008CBD0 AC980004 */  sw         $t8, 0x4($a0)
    /* 5D084 8008CBD4 10000007 */  b          .L8008CBF4_5D0A4
    /* 5D088 8008CBD8 AC940000 */   sw        $s4, 0x0($a0)
    /* 5D08C 8008CBDC 8CE40000 */  lw         $a0, 0x0($a3)
  .L8008CBE0_5D090:
    /* 5D090 8008CBE0 240E0205 */  addiu      $t6, $zero, 0x205
    /* 5D094 8008CBE4 24990008 */  addiu      $t9, $a0, 0x8
    /* 5D098 8008CBE8 ACF90000 */  sw         $t9, 0x0($a3)
    /* 5D09C 8008CBEC AC8E0004 */  sw         $t6, 0x4($a0)
    /* 5D0A0 8008CBF0 AC940000 */  sw         $s4, 0x0($a0)
  .L8008CBF4_5D0A4:
    /* 5D0A4 8008CBF4 84C50004 */  lh         $a1, 0x4($a2)
    /* 5D0A8 8008CBF8 2401FFFA */  addiu      $at, $zero, -0x6
    /* 5D0AC 8008CBFC 10A10003 */  beq        $a1, $at, .L8008CC0C_5D0BC
    /* 5D0B0 8008CC00 2401FFFB */   addiu     $at, $zero, -0x5
    /* 5D0B4 8008CC04 14A1FF5E */  bne        $a1, $at, .L8008C980_5CE30
    /* 5D0B8 8008CC08 00000000 */   nop
  .L8008CC0C_5D0BC:
    /* 5D0BC 8008CC0C 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 5D0C0 8008CC10 8FB00008 */  lw         $s0, 0x8($sp)
    /* 5D0C4 8008CC14 8FB1000C */  lw         $s1, 0xC($sp)
    /* 5D0C8 8008CC18 8FB20010 */  lw         $s2, 0x10($sp)
    /* 5D0CC 8008CC1C 8FB30014 */  lw         $s3, 0x14($sp)
    /* 5D0D0 8008CC20 8FB40018 */  lw         $s4, 0x18($sp)
    /* 5D0D4 8008CC24 8FB5001C */  lw         $s5, 0x1C($sp)
    /* 5D0D8 8008CC28 8FB60020 */  lw         $s6, 0x20($sp)
    /* 5D0DC 8008CC2C 8FB70024 */  lw         $s7, 0x24($sp)
    /* 5D0E0 8008CC30 8FBE0028 */  lw         $fp, 0x28($sp)
    /* 5D0E4 8008CC34 03E00008 */  jr         $ra
    /* 5D0E8 8008CC38 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_8008C8E0_5CD90
