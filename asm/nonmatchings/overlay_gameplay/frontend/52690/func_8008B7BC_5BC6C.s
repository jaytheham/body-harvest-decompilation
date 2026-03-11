nonmatching func_8008B7BC_5BC6C, 0x31C

glabel func_8008B7BC_5BC6C
    /* 5BC6C 8008B7BC 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 5BC70 8008B7C0 AFB00018 */  sw         $s0, 0x18($sp)
    /* 5BC74 8008B7C4 00078400 */  sll        $s0, $a3, 16
    /* 5BC78 8008B7C8 00107403 */  sra        $t6, $s0, 16
    /* 5BC7C 8008B7CC AFBF003C */  sw         $ra, 0x3C($sp)
    /* 5BC80 8008B7D0 AFA40060 */  sw         $a0, 0x60($sp)
    /* 5BC84 8008B7D4 01C08025 */  or         $s0, $t6, $zero
    /* 5BC88 8008B7D8 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 5BC8C 8008B7DC AFB70034 */  sw         $s7, 0x34($sp)
    /* 5BC90 8008B7E0 AFB60030 */  sw         $s6, 0x30($sp)
    /* 5BC94 8008B7E4 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 5BC98 8008B7E8 AFB40028 */  sw         $s4, 0x28($sp)
    /* 5BC9C 8008B7EC AFB30024 */  sw         $s3, 0x24($sp)
    /* 5BCA0 8008B7F0 AFB20020 */  sw         $s2, 0x20($sp)
    /* 5BCA4 8008B7F4 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 5BCA8 8008B7F8 AFA50064 */  sw         $a1, 0x64($sp)
    /* 5BCAC 8008B7FC AFA60068 */  sw         $a2, 0x68($sp)
    /* 5BCB0 8008B800 AFA7006C */  sw         $a3, 0x6C($sp)
    /* 5BCB4 8008B804 0C020E96 */  jal        func_80083A58_53F08
    /* 5BCB8 8008B808 24040009 */   addiu     $a0, $zero, 0x9
    /* 5BCBC 8008B80C 240100FB */  addiu      $at, $zero, 0xFB
    /* 5BCC0 8008B810 104100A4 */  beq        $v0, $at, .L8008BAA4_5BF54
    /* 5BCC4 8008B814 A3A20047 */   sb        $v0, 0x47($sp)
    /* 5BCC8 8008B818 87AF0062 */  lh         $t7, 0x62($sp)
    /* 5BCCC 8008B81C 87A80072 */  lh         $t0, 0x72($sp)
    /* 5BCD0 8008B820 87A90066 */  lh         $t1, 0x66($sp)
    /* 5BCD4 8008B824 020F9023 */  subu       $s2, $s0, $t7
    /* 5BCD8 8008B828 0012C400 */  sll        $t8, $s2, 16
    /* 5BCDC 8008B82C 0018CC03 */  sra        $t9, $t8, 16
    /* 5BCE0 8008B830 03390019 */  multu      $t9, $t9
    /* 5BCE4 8008B834 01099823 */  subu       $s3, $t0, $t1
    /* 5BCE8 8008B838 00135400 */  sll        $t2, $s3, 16
    /* 5BCEC 8008B83C 000A9C03 */  sra        $s3, $t2, 16
    /* 5BCF0 8008B840 87AC0076 */  lh         $t4, 0x76($sp)
    /* 5BCF4 8008B844 87AD006A */  lh         $t5, 0x6A($sp)
    /* 5BCF8 8008B848 03209025 */  or         $s2, $t9, $zero
    /* 5BCFC 8008B84C 018DA023 */  subu       $s4, $t4, $t5
    /* 5BD00 8008B850 00147400 */  sll        $t6, $s4, 16
    /* 5BD04 8008B854 0000C012 */  mflo       $t8
    /* 5BD08 8008B858 000E7C03 */  sra        $t7, $t6, 16
    /* 5BD0C 8008B85C 01E0A025 */  or         $s4, $t7, $zero
    /* 5BD10 8008B860 02730019 */  multu      $s3, $s3
    /* 5BD14 8008B864 0000C812 */  mflo       $t9
    /* 5BD18 8008B868 03194021 */  addu       $t0, $t8, $t9
    /* 5BD1C 8008B86C 00000000 */  nop
    /* 5BD20 8008B870 01EF0019 */  multu      $t7, $t7
    /* 5BD24 8008B874 00004812 */  mflo       $t1
    /* 5BD28 8008B878 01095021 */  addu       $t2, $t0, $t1
    /* 5BD2C 8008B87C 448A2000 */  mtc1       $t2, $f4
    /* 5BD30 8008B880 0C007650 */  jal        sqrtf
    /* 5BD34 8008B884 46802320 */   cvt.s.w   $f12, $f4
    /* 5BD38 8008B888 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
    /* 5BD3C 8008B88C 44813000 */  mtc1       $at, $f6
    /* 5BD40 8008B890 24020001 */  addiu      $v0, $zero, 0x1
    /* 5BD44 8008B894 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* 5BD48 8008B898 46060203 */  div.s      $f8, $f0, $f6
    /* 5BD4C 8008B89C 3C0D800E */  lui        $t5, %hi(D_800DE0B6)
    /* 5BD50 8008B8A0 2415001C */  addiu      $s5, $zero, 0x1C
    /* 5BD54 8008B8A4 444BF800 */  cfc1       $t3, $31
    /* 5BD58 8008B8A8 44C2F800 */  ctc1       $v0, $31
    /* 5BD5C 8008B8AC 00000000 */  nop
    /* 5BD60 8008B8B0 460042A4 */  cvt.w.s    $f10, $f8
    /* 5BD64 8008B8B4 4442F800 */  cfc1       $v0, $31
    /* 5BD68 8008B8B8 00000000 */  nop
    /* 5BD6C 8008B8BC 30420078 */  andi       $v0, $v0, 0x78
    /* 5BD70 8008B8C0 50400013 */  beql       $v0, $zero, .L8008B910_5BDC0
    /* 5BD74 8008B8C4 44025000 */   mfc1      $v0, $f10
    /* 5BD78 8008B8C8 44815000 */  mtc1       $at, $f10
    /* 5BD7C 8008B8CC 24020001 */  addiu      $v0, $zero, 0x1
    /* 5BD80 8008B8D0 460A4281 */  sub.s      $f10, $f8, $f10
    /* 5BD84 8008B8D4 44C2F800 */  ctc1       $v0, $31
    /* 5BD88 8008B8D8 00000000 */  nop
    /* 5BD8C 8008B8DC 460052A4 */  cvt.w.s    $f10, $f10
    /* 5BD90 8008B8E0 4442F800 */  cfc1       $v0, $31
    /* 5BD94 8008B8E4 00000000 */  nop
    /* 5BD98 8008B8E8 30420078 */  andi       $v0, $v0, 0x78
    /* 5BD9C 8008B8EC 14400005 */  bnez       $v0, .L8008B904_5BDB4
    /* 5BDA0 8008B8F0 00000000 */   nop
    /* 5BDA4 8008B8F4 44025000 */  mfc1       $v0, $f10
    /* 5BDA8 8008B8F8 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 5BDAC 8008B8FC 10000007 */  b          .L8008B91C_5BDCC
    /* 5BDB0 8008B900 00411025 */   or        $v0, $v0, $at
  .L8008B904_5BDB4:
    /* 5BDB4 8008B904 10000005 */  b          .L8008B91C_5BDCC
    /* 5BDB8 8008B908 2402FFFF */   addiu     $v0, $zero, -0x1
    /* 5BDBC 8008B90C 44025000 */  mfc1       $v0, $f10
  .L8008B910_5BDC0:
    /* 5BDC0 8008B910 00000000 */  nop
    /* 5BDC4 8008B914 0440FFFB */  bltz       $v0, .L8008B904_5BDB4
    /* 5BDC8 8008B918 00000000 */   nop
  .L8008B91C_5BDCC:
    /* 5BDCC 8008B91C 304C00FF */  andi       $t4, $v0, 0xFF
    /* 5BDD0 8008B920 44CBF800 */  ctc1       $t3, $31
    /* 5BDD4 8008B924 29810002 */  slti       $at, $t4, 0x2
    /* 5BDD8 8008B928 10200002 */  beqz       $at, .L8008B934_5BDE4
    /* 5BDDC 8008B92C 304300FF */   andi      $v1, $v0, 0xFF
    /* 5BDE0 8008B930 24030002 */  addiu      $v1, $zero, 0x2
  .L8008B934_5BDE4:
    /* 5BDE4 8008B934 28610010 */  slti       $at, $v1, 0x10
    /* 5BDE8 8008B938 14200002 */  bnez       $at, .L8008B944_5BDF4
    /* 5BDEC 8008B93C 00000000 */   nop
    /* 5BDF0 8008B940 2403000F */  addiu      $v1, $zero, 0xF
  .L8008B944_5BDF4:
    /* 5BDF4 8008B944 91ADE0B6 */  lbu        $t5, %lo(D_800DE0B6)($t5)
    /* 5BDF8 8008B948 24010001 */  addiu      $at, $zero, 0x1
    /* 5BDFC 8008B94C 15A10002 */  bne        $t5, $at, .L8008B958_5BE08
    /* 5BE00 8008B950 00000000 */   nop
    /* 5BE04 8008B954 24030001 */  addiu      $v1, $zero, 0x1
  .L8008B958_5BE08:
    /* 5BE08 8008B958 0243001A */  div        $zero, $s2, $v1
    /* 5BE0C 8008B95C 00608825 */  or         $s1, $v1, $zero
    /* 5BE10 8008B960 0000B012 */  mflo       $s6
    /* 5BE14 8008B964 00167400 */  sll        $t6, $s6, 16
    /* 5BE18 8008B968 16200002 */  bnez       $s1, .L8008B974_5BE24
    /* 5BE1C 8008B96C 00000000 */   nop
    /* 5BE20 8008B970 0007000D */  break      7
  .L8008B974_5BE24:
    /* 5BE24 8008B974 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5BE28 8008B978 16210004 */  bne        $s1, $at, .L8008B98C_5BE3C
    /* 5BE2C 8008B97C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5BE30 8008B980 16410002 */  bne        $s2, $at, .L8008B98C_5BE3C
    /* 5BE34 8008B984 00000000 */   nop
    /* 5BE38 8008B988 0006000D */  break      6
  .L8008B98C_5BE3C:
    /* 5BE3C 8008B98C 0271001A */  div        $zero, $s3, $s1
    /* 5BE40 8008B990 0000B812 */  mflo       $s7
    /* 5BE44 8008B994 0017C400 */  sll        $t8, $s7, 16
    /* 5BE48 8008B998 000E7C03 */  sra        $t7, $t6, 16
    /* 5BE4C 8008B99C 0291001A */  div        $zero, $s4, $s1
    /* 5BE50 8008B9A0 0000F012 */  mflo       $fp
    /* 5BE54 8008B9A4 001E4400 */  sll        $t0, $fp, 16
    /* 5BE58 8008B9A8 0018CC03 */  sra        $t9, $t8, 16
    /* 5BE5C 8008B9AC 00084C03 */  sra        $t1, $t0, 16
    /* 5BE60 8008B9B0 01E0B025 */  or         $s6, $t7, $zero
    /* 5BE64 8008B9B4 16200002 */  bnez       $s1, .L8008B9C0_5BE70
    /* 5BE68 8008B9B8 00000000 */   nop
    /* 5BE6C 8008B9BC 0007000D */  break      7
  .L8008B9C0_5BE70:
    /* 5BE70 8008B9C0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5BE74 8008B9C4 16210004 */  bne        $s1, $at, .L8008B9D8_5BE88
    /* 5BE78 8008B9C8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5BE7C 8008B9CC 16610002 */  bne        $s3, $at, .L8008B9D8_5BE88
    /* 5BE80 8008B9D0 00000000 */   nop
    /* 5BE84 8008B9D4 0006000D */  break      6
  .L8008B9D8_5BE88:
    /* 5BE88 8008B9D8 0320B825 */  or         $s7, $t9, $zero
    /* 5BE8C 8008B9DC 16200002 */  bnez       $s1, .L8008B9E8_5BE98
    /* 5BE90 8008B9E0 00000000 */   nop
    /* 5BE94 8008B9E4 0007000D */  break      7
  .L8008B9E8_5BE98:
    /* 5BE98 8008B9E8 2401FFFF */  addiu      $at, $zero, -0x1
    /* 5BE9C 8008B9EC 16210004 */  bne        $s1, $at, .L8008BA00_5BEB0
    /* 5BEA0 8008B9F0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 5BEA4 8008B9F4 16810002 */  bne        $s4, $at, .L8008BA00_5BEB0
    /* 5BEA8 8008B9F8 00000000 */   nop
    /* 5BEAC 8008B9FC 0006000D */  break      6
  .L8008BA00_5BEB0:
    /* 5BEB0 8008BA00 0120F025 */  or         $fp, $t1, $zero
    /* 5BEB4 8008BA04 06200027 */  bltz       $s1, .L8008BAA4_5BF54
    /* 5BEB8 8008BA08 00008025 */   or        $s0, $zero, $zero
    /* 5BEBC 8008BA0C 3C14800E */  lui        $s4, %hi(D_800DE840)
    /* 5BEC0 8008BA10 2694E840 */  addiu      $s4, $s4, %lo(D_800DE840)
    /* 5BEC4 8008BA14 2413FFFD */  addiu      $s3, $zero, -0x3
    /* 5BEC8 8008BA18 87B2007A */  lh         $s2, 0x7A($sp)
  .L8008BA1C_5BECC:
    /* 5BECC 8008BA1C 0C020EDF */  jal        func_80083B7C_5402C
    /* 5BED0 8008BA20 93A40047 */   lbu       $a0, 0x47($sp)
    /* 5BED4 8008BA24 14530007 */  bne        $v0, $s3, .L8008BA44_5BEF4
    /* 5BED8 8008BA28 00000000 */   nop
    /* 5BEDC 8008BA2C 0C021031 */  jal        func_800840C4_54574
    /* 5BEE0 8008BA30 93A40047 */   lbu       $a0, 0x47($sp)
    /* 5BEE4 8008BA34 0C020EC5 */  jal        func_80083B14_53FC4
    /* 5BEE8 8008BA38 93A40047 */   lbu       $a0, 0x47($sp)
    /* 5BEEC 8008BA3C 1000001A */  b          .L8008BAA8_5BF58
    /* 5BEF0 8008BA40 240200FB */   addiu     $v0, $zero, 0xFB
  .L8008BA44_5BEF4:
    /* 5BEF4 8008BA44 00550019 */  multu      $v0, $s5
    /* 5BEF8 8008BA48 87AB0062 */  lh         $t3, 0x62($sp)
    /* 5BEFC 8008BA4C 87AE0066 */  lh         $t6, 0x66($sp)
    /* 5BF00 8008BA50 87B9006A */  lh         $t9, 0x6A($sp)
    /* 5BF04 8008BA54 00005012 */  mflo       $t2
    /* 5BF08 8008BA58 028A1821 */  addu       $v1, $s4, $t2
    /* 5BF0C 8008BA5C A472000E */  sh         $s2, 0xE($v1)
    /* 5BF10 8008BA60 02D00019 */  multu      $s6, $s0
    /* 5BF14 8008BA64 00006012 */  mflo       $t4
    /* 5BF18 8008BA68 016C6821 */  addu       $t5, $t3, $t4
    /* 5BF1C 8008BA6C A46D0008 */  sh         $t5, 0x8($v1)
    /* 5BF20 8008BA70 02F00019 */  multu      $s7, $s0
    /* 5BF24 8008BA74 00007812 */  mflo       $t7
    /* 5BF28 8008BA78 01CFC021 */  addu       $t8, $t6, $t7
    /* 5BF2C 8008BA7C A478000A */  sh         $t8, 0xA($v1)
    /* 5BF30 8008BA80 03D00019 */  multu      $fp, $s0
    /* 5BF34 8008BA84 26100001 */  addiu      $s0, $s0, 0x1
    /* 5BF38 8008BA88 320A00FF */  andi       $t2, $s0, 0xFF
    /* 5BF3C 8008BA8C 022A082A */  slt        $at, $s1, $t2
    /* 5BF40 8008BA90 01408025 */  or         $s0, $t2, $zero
    /* 5BF44 8008BA94 00004012 */  mflo       $t0
    /* 5BF48 8008BA98 03284821 */  addu       $t1, $t9, $t0
    /* 5BF4C 8008BA9C 1020FFDF */  beqz       $at, .L8008BA1C_5BECC
    /* 5BF50 8008BAA0 A469000C */   sh        $t1, 0xC($v1)
  .L8008BAA4_5BF54:
    /* 5BF54 8008BAA4 93A20047 */  lbu        $v0, 0x47($sp)
  .L8008BAA8_5BF58:
    /* 5BF58 8008BAA8 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 5BF5C 8008BAAC 8FB00018 */  lw         $s0, 0x18($sp)
    /* 5BF60 8008BAB0 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 5BF64 8008BAB4 8FB20020 */  lw         $s2, 0x20($sp)
    /* 5BF68 8008BAB8 8FB30024 */  lw         $s3, 0x24($sp)
    /* 5BF6C 8008BABC 8FB40028 */  lw         $s4, 0x28($sp)
    /* 5BF70 8008BAC0 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 5BF74 8008BAC4 8FB60030 */  lw         $s6, 0x30($sp)
    /* 5BF78 8008BAC8 8FB70034 */  lw         $s7, 0x34($sp)
    /* 5BF7C 8008BACC 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 5BF80 8008BAD0 03E00008 */  jr         $ra
    /* 5BF84 8008BAD4 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_8008B7BC_5BC6C
