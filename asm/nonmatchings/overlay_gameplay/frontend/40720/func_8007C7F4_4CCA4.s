nonmatching func_8007C7F4_4CCA4, 0x7C0

glabel func_8007C7F4_4CCA4
    /* 4CCA4 8007C7F4 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 4CCA8 8007C7F8 240E0005 */  addiu      $t6, $zero, 0x5
    /* 4CCAC 8007C7FC 3C018004 */  lui        $at, %hi(D_80047FA0)
    /* 4CCB0 8007C800 3C188005 */  lui        $t8, %hi(D_80052B2C)
    /* 4CCB4 8007C804 8F182B2C */  lw         $t8, %lo(D_80052B2C)($t8)
    /* 4CCB8 8007C808 AC2E7FA0 */  sw         $t6, %lo(D_80047FA0)($at)
    /* 4CCBC 8007C80C 3C018009 */  lui        $at, %hi(currentFrontendState)
    /* 4CCC0 8007C810 240F0015 */  addiu      $t7, $zero, 0x15
    /* 4CCC4 8007C814 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 4CCC8 8007C818 AFB70038 */  sw         $s7, 0x38($sp)
    /* 4CCCC 8007C81C AFB60034 */  sw         $s6, 0x34($sp)
    /* 4CCD0 8007C820 AFB50030 */  sw         $s5, 0x30($sp)
    /* 4CCD4 8007C824 AFB4002C */  sw         $s4, 0x2C($sp)
    /* 4CCD8 8007C828 AFB30028 */  sw         $s3, 0x28($sp)
    /* 4CCDC 8007C82C AFB20024 */  sw         $s2, 0x24($sp)
    /* 4CCE0 8007C830 AFB10020 */  sw         $s1, 0x20($sp)
    /* 4CCE4 8007C834 AFB0001C */  sw         $s0, 0x1C($sp)
    /* 4CCE8 8007C838 A42F46DC */  sh         $t7, %lo(currentFrontendState)($at)
    /* 4CCEC 8007C83C 8F190030 */  lw         $t9, 0x30($t8)
    /* 4CCF0 8007C840 3C058005 */  lui        $a1, %hi(D_80052A98)
    /* 4CCF4 8007C844 24A52A98 */  addiu      $a1, $a1, %lo(D_80052A98)
    /* 4CCF8 8007C848 A4A00026 */  sh         $zero, 0x26($a1)
    /* 4CCFC 8007C84C 3C088005 */  lui        $t0, %hi(D_80052A90)
    /* 4CD00 8007C850 ACB90020 */  sw         $t9, 0x20($a1)
    /* 4CD04 8007C854 8D082A90 */  lw         $t0, %lo(D_80052A90)($t0)
    /* 4CD08 8007C858 240103E8 */  addiu      $at, $zero, 0x3E8
    /* 4CD0C 8007C85C 00008025 */  or         $s0, $zero, $zero
    /* 4CD10 8007C860 0101001B */  divu       $zero, $t0, $at
    /* 4CD14 8007C864 00004812 */  mflo       $t1
    /* 4CD18 8007C868 0000A825 */  or         $s5, $zero, $zero
    /* 4CD1C 8007C86C 0000B025 */  or         $s6, $zero, $zero
    /* 4CD20 8007C870 00002025 */  or         $a0, $zero, $zero
    /* 4CD24 8007C874 A4A90024 */  sh         $t1, 0x24($a1)
    /* 4CD28 8007C878 00001825 */  or         $v1, $zero, $zero
  .L8007C87C_4CD2C:
    /* 4CD2C 8007C87C 000350C0 */  sll        $t2, $v1, 3
    /* 4CD30 8007C880 00AA1021 */  addu       $v0, $a1, $t2
    /* 4CD34 8007C884 24630001 */  addiu      $v1, $v1, 0x1
    /* 4CD38 8007C888 00037400 */  sll        $t6, $v1, 16
    /* 4CD3C 8007C88C 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 4CD40 8007C890 944C0004 */  lhu        $t4, 0x4($v0)
    /* 4CD44 8007C894 944D0006 */  lhu        $t5, 0x6($v0)
    /* 4CD48 8007C898 000E1C03 */  sra        $v1, $t6, 16
    /* 4CD4C 8007C89C 28610006 */  slti       $at, $v1, 0x6
    /* 4CD50 8007C8A0 02ABA821 */  addu       $s5, $s5, $t3
    /* 4CD54 8007C8A4 008C2021 */  addu       $a0, $a0, $t4
    /* 4CD58 8007C8A8 1420FFF4 */  bnez       $at, .L8007C87C_4CD2C
    /* 4CD5C 8007C8AC 02CDB021 */   addu      $s6, $s6, $t5
    /* 4CD60 8007C8B0 2401003C */  addiu      $at, $zero, 0x3C
    /* 4CD64 8007C8B4 0081001B */  divu       $zero, $a0, $at
    /* 4CD68 8007C8B8 00001012 */  mflo       $v0
    /* 4CD6C 8007C8BC 3C178006 */  lui        $s7, %hi(D_8005BB2C)
    /* 4CD70 8007C8C0 26F7BB2C */  addiu      $s7, $s7, %lo(D_8005BB2C)
    /* 4CD74 8007C8C4 0041001B */  divu       $zero, $v0, $at
    /* 4CD78 8007C8C8 00008810 */  mfhi       $s1
    /* 4CD7C 8007C8CC 00009812 */  mflo       $s3
    /* 4CD80 8007C8D0 0200A025 */  or         $s4, $s0, $zero
    /* 4CD84 8007C8D4 00000000 */  nop
    /* 4CD88 8007C8D8 0081001B */  divu       $zero, $a0, $at
    /* 4CD8C 8007C8DC 00009010 */  mfhi       $s2
    /* 4CD90 8007C8E0 00000000 */  nop
    /* 4CD94 8007C8E4 00000000 */  nop
  .L8007C8E8_4CD98:
    /* 4CD98 8007C8E8 0C01D756 */  jal        func_80075D58_46208
    /* 4CD9C 8007C8EC 00002025 */   or        $a0, $zero, $zero
    /* 4CDA0 8007C8F0 2A81000A */  slti       $at, $s4, 0xA
    /* 4CDA4 8007C8F4 10200006 */  beqz       $at, .L8007C910_4CDC0
    /* 4CDA8 8007C8F8 02802025 */   or        $a0, $s4, $zero
    /* 4CDAC 8007C8FC 0004C500 */  sll        $t8, $a0, 20
    /* 4CDB0 8007C900 0C01D6D9 */  jal        func_80075B64_46014
    /* 4CDB4 8007C904 00182403 */   sra       $a0, $t8, 16
    /* 4CDB8 8007C908 10000003 */  b          .L8007C918_4CDC8
    /* 4CDBC 8007C90C 00000000 */   nop
  .L8007C910_4CDC0:
    /* 4CDC0 8007C910 0C01D6D9 */  jal        func_80075B64_46014
    /* 4CDC4 8007C914 240400AA */   addiu     $a0, $zero, 0xAA
  .L8007C918_4CDC8:
    /* 4CDC8 8007C918 0C002BF7 */  jal        func_8000AFDC_BBDC
    /* 4CDCC 8007C91C 00000000 */   nop
    /* 4CDD0 8007C920 24040019 */  addiu      $a0, $zero, 0x19
    /* 4CDD4 8007C924 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4CDD8 8007C928 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4CDDC 8007C92C 0C0015DF */  jal        func_8000577C_637C
    /* 4CDE0 8007C930 00000000 */   nop
    /* 4CDE4 8007C934 3C028003 */  lui        $v0, %hi(D_800313D0)
    /* 4CDE8 8007C938 844213D0 */  lh         $v0, %lo(D_800313D0)($v0)
    /* 4CDEC 8007C93C 3C04800B */  lui        $a0, %hi(D_800AE0A0)
    /* 4CDF0 8007C940 24010001 */  addiu      $at, $zero, 0x1
    /* 4CDF4 8007C944 10400006 */  beqz       $v0, .L8007C960_4CE10
    /* 4CDF8 8007C948 2484E0A0 */   addiu     $a0, $a0, %lo(D_800AE0A0)
    /* 4CDFC 8007C94C 1041007A */  beq        $v0, $at, .L8007CB38_4CFE8
    /* 4CE00 8007C950 24050080 */   addiu     $a1, $zero, 0x80
    /* 4CE04 8007C954 24010002 */  addiu      $at, $zero, 0x2
    /* 4CE08 8007C958 104100EE */  beq        $v0, $at, .L8007CD14_4D1C4
    /* 4CE0C 8007C95C 24050080 */   addiu     $a1, $zero, 0x80
  .L8007C960_4CE10:
    /* 4CE10 8007C960 24050080 */  addiu      $a1, $zero, 0x80
    /* 4CE14 8007C964 0C002929 */  jal        drawText
    /* 4CE18 8007C968 00003025 */   or        $a2, $zero, $zero
    /* 4CE1C 8007C96C 2404003C */  addiu      $a0, $zero, 0x3C
    /* 4CE20 8007C970 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4CE24 8007C974 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4CE28 8007C978 3C04800B */  lui        $a0, %hi(D_800AE0B8)
    /* 4CE2C 8007C97C 2484E0B8 */  addiu      $a0, $a0, %lo(D_800AE0B8)
    /* 4CE30 8007C980 240500C8 */  addiu      $a1, $zero, 0xC8
    /* 4CE34 8007C984 240600C8 */  addiu      $a2, $zero, 0xC8
    /* 4CE38 8007C988 0C002929 */  jal        drawText
    /* 4CE3C 8007C98C 240700FE */   addiu     $a3, $zero, 0xFE
    /* 4CE40 8007C990 3C04800B */  lui        $a0, %hi(D_800AE0BC)
    /* 4CE44 8007C994 2484E0BC */  addiu      $a0, $a0, %lo(D_800AE0BC)
    /* 4CE48 8007C998 24050080 */  addiu      $a1, $zero, 0x80
    /* 4CE4C 8007C99C 0C002929 */  jal        drawText
    /* 4CE50 8007C9A0 24060001 */   addiu     $a2, $zero, 0x1
    /* 4CE54 8007C9A4 24040046 */  addiu      $a0, $zero, 0x46
    /* 4CE58 8007C9A8 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4CE5C 8007C9AC 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4CE60 8007C9B0 3C04800B */  lui        $a0, %hi(D_800AE0E0)
    /* 4CE64 8007C9B4 2484E0E0 */  addiu      $a0, $a0, %lo(D_800AE0E0)
    /* 4CE68 8007C9B8 24050080 */  addiu      $a1, $zero, 0x80
    /* 4CE6C 8007C9BC 0C002929 */  jal        drawText
    /* 4CE70 8007C9C0 24060002 */   addiu     $a2, $zero, 0x2
    /* 4CE74 8007C9C4 24040050 */  addiu      $a0, $zero, 0x50
    /* 4CE78 8007C9C8 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4CE7C 8007C9CC 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4CE80 8007C9D0 3C04800B */  lui        $a0, %hi(D_800AE108)
    /* 4CE84 8007C9D4 2484E108 */  addiu      $a0, $a0, %lo(D_800AE108)
    /* 4CE88 8007C9D8 24050080 */  addiu      $a1, $zero, 0x80
    /* 4CE8C 8007C9DC 0C002929 */  jal        drawText
    /* 4CE90 8007C9E0 24060003 */   addiu     $a2, $zero, 0x3
    /* 4CE94 8007C9E4 24040078 */  addiu      $a0, $zero, 0x78
    /* 4CE98 8007C9E8 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4CE9C 8007C9EC 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4CEA0 8007C9F0 3C04800B */  lui        $a0, %hi(D_800AE118)
    /* 4CEA4 8007C9F4 2484E118 */  addiu      $a0, $a0, %lo(D_800AE118)
    /* 4CEA8 8007C9F8 24050080 */  addiu      $a1, $zero, 0x80
    /* 4CEAC 8007C9FC 24060005 */  addiu      $a2, $zero, 0x5
    /* 4CEB0 8007CA00 0C002929 */  jal        drawText
    /* 4CEB4 8007CA04 02A03825 */   or        $a3, $s5, $zero
    /* 4CEB8 8007CA08 2404008C */  addiu      $a0, $zero, 0x8C
    /* 4CEBC 8007CA0C 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4CEC0 8007CA10 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4CEC4 8007CA14 2E21000A */  sltiu      $at, $s1, 0xA
    /* 4CEC8 8007CA18 1020000C */  beqz       $at, .L8007CA4C_4CEFC
    /* 4CECC 8007CA1C 2E41000A */   sltiu     $at, $s2, 0xA
    /* 4CED0 8007CA20 1020000A */  beqz       $at, .L8007CA4C_4CEFC
    /* 4CED4 8007CA24 3C04800B */   lui       $a0, %hi(D_800AE128)
    /* 4CED8 8007CA28 2484E128 */  addiu      $a0, $a0, %lo(D_800AE128)
    /* 4CEDC 8007CA2C 24050080 */  addiu      $a1, $zero, 0x80
    /* 4CEE0 8007CA30 24060006 */  addiu      $a2, $zero, 0x6
    /* 4CEE4 8007CA34 02603825 */  or         $a3, $s3, $zero
    /* 4CEE8 8007CA38 AFB10010 */  sw         $s1, 0x10($sp)
    /* 4CEEC 8007CA3C 0C002929 */  jal        drawText
    /* 4CEF0 8007CA40 AFB20014 */   sw        $s2, 0x14($sp)
    /* 4CEF4 8007CA44 10000022 */  b          .L8007CAD0_4CF80
    /* 4CEF8 8007CA48 240400A0 */   addiu     $a0, $zero, 0xA0
  .L8007CA4C_4CEFC:
    /* 4CEFC 8007CA4C 2E21000A */  sltiu      $at, $s1, 0xA
    /* 4CF00 8007CA50 1020000A */  beqz       $at, .L8007CA7C_4CF2C
    /* 4CF04 8007CA54 3C04800B */   lui       $a0, %hi(D_800AE144)
    /* 4CF08 8007CA58 2484E144 */  addiu      $a0, $a0, %lo(D_800AE144)
    /* 4CF0C 8007CA5C 24050080 */  addiu      $a1, $zero, 0x80
    /* 4CF10 8007CA60 24060006 */  addiu      $a2, $zero, 0x6
    /* 4CF14 8007CA64 02603825 */  or         $a3, $s3, $zero
    /* 4CF18 8007CA68 AFB10010 */  sw         $s1, 0x10($sp)
    /* 4CF1C 8007CA6C 0C002929 */  jal        drawText
    /* 4CF20 8007CA70 AFB20014 */   sw        $s2, 0x14($sp)
    /* 4CF24 8007CA74 10000016 */  b          .L8007CAD0_4CF80
    /* 4CF28 8007CA78 240400A0 */   addiu     $a0, $zero, 0xA0
  .L8007CA7C_4CF2C:
    /* 4CF2C 8007CA7C 2E41000A */  sltiu      $at, $s2, 0xA
    /* 4CF30 8007CA80 1020000B */  beqz       $at, .L8007CAB0_4CF60
    /* 4CF34 8007CA84 3C04800B */   lui       $a0, %hi(D_800AE17C)
    /* 4CF38 8007CA88 3C04800B */  lui        $a0, %hi(D_800AE160)
    /* 4CF3C 8007CA8C 2484E160 */  addiu      $a0, $a0, %lo(D_800AE160)
    /* 4CF40 8007CA90 24050080 */  addiu      $a1, $zero, 0x80
    /* 4CF44 8007CA94 24060006 */  addiu      $a2, $zero, 0x6
    /* 4CF48 8007CA98 02603825 */  or         $a3, $s3, $zero
    /* 4CF4C 8007CA9C AFB10010 */  sw         $s1, 0x10($sp)
    /* 4CF50 8007CAA0 0C002929 */  jal        drawText
    /* 4CF54 8007CAA4 AFB20014 */   sw        $s2, 0x14($sp)
    /* 4CF58 8007CAA8 10000009 */  b          .L8007CAD0_4CF80
    /* 4CF5C 8007CAAC 240400A0 */   addiu     $a0, $zero, 0xA0
  .L8007CAB0_4CF60:
    /* 4CF60 8007CAB0 2484E17C */  addiu      $a0, $a0, %lo(D_800AE17C)
    /* 4CF64 8007CAB4 24050080 */  addiu      $a1, $zero, 0x80
    /* 4CF68 8007CAB8 24060006 */  addiu      $a2, $zero, 0x6
    /* 4CF6C 8007CABC 02603825 */  or         $a3, $s3, $zero
    /* 4CF70 8007CAC0 AFB10010 */  sw         $s1, 0x10($sp)
    /* 4CF74 8007CAC4 0C002929 */  jal        drawText
    /* 4CF78 8007CAC8 AFB20014 */   sw        $s2, 0x14($sp)
    /* 4CF7C 8007CACC 240400A0 */  addiu      $a0, $zero, 0xA0
  .L8007CAD0_4CF80:
    /* 4CF80 8007CAD0 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4CF84 8007CAD4 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4CF88 8007CAD8 3C04800B */  lui        $a0, %hi(D_800AE198)
    /* 4CF8C 8007CADC 2484E198 */  addiu      $a0, $a0, %lo(D_800AE198)
    /* 4CF90 8007CAE0 240500AA */  addiu      $a1, $zero, 0xAA
    /* 4CF94 8007CAE4 240600AA */  addiu      $a2, $zero, 0xAA
    /* 4CF98 8007CAE8 0C002929 */  jal        drawText
    /* 4CF9C 8007CAEC 240700E0 */   addiu     $a3, $zero, 0xE0
    /* 4CFA0 8007CAF0 3C04800B */  lui        $a0, %hi(D_800AE19C)
    /* 4CFA4 8007CAF4 2484E19C */  addiu      $a0, $a0, %lo(D_800AE19C)
    /* 4CFA8 8007CAF8 24050080 */  addiu      $a1, $zero, 0x80
    /* 4CFAC 8007CAFC 24060007 */  addiu      $a2, $zero, 0x7
    /* 4CFB0 8007CB00 0C002929 */  jal        drawText
    /* 4CFB4 8007CB04 02C03825 */   or        $a3, $s6, $zero
    /* 4CFB8 8007CB08 240400B4 */  addiu      $a0, $zero, 0xB4
    /* 4CFBC 8007CB0C 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4CFC0 8007CB10 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4CFC4 8007CB14 3C04800B */  lui        $a0, %hi(D_800AE1B0)
    /* 4CFC8 8007CB18 3C078005 */  lui        $a3, %hi(D_8004DC5E)
    /* 4CFCC 8007CB1C 94E7DC5E */  lhu        $a3, %lo(D_8004DC5E)($a3)
    /* 4CFD0 8007CB20 2484E1B0 */  addiu      $a0, $a0, %lo(D_800AE1B0)
    /* 4CFD4 8007CB24 24050080 */  addiu      $a1, $zero, 0x80
    /* 4CFD8 8007CB28 0C002929 */  jal        drawText
    /* 4CFDC 8007CB2C 24060008 */   addiu     $a2, $zero, 0x8
    /* 4CFE0 8007CB30 100000ED */  b          .L8007CEE8_4D398
    /* 4CFE4 8007CB34 00000000 */   nop
  .L8007CB38_4CFE8:
    /* 4CFE8 8007CB38 3C04800B */  lui        $a0, %hi(D_800AE1C8)
    /* 4CFEC 8007CB3C 2484E1C8 */  addiu      $a0, $a0, %lo(D_800AE1C8)
    /* 4CFF0 8007CB40 0C002929 */  jal        drawText
    /* 4CFF4 8007CB44 00003025 */   or        $a2, $zero, $zero
    /* 4CFF8 8007CB48 2404003C */  addiu      $a0, $zero, 0x3C
    /* 4CFFC 8007CB4C 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4D000 8007CB50 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4D004 8007CB54 3C04800B */  lui        $a0, %hi(D_800AE1E0)
    /* 4D008 8007CB58 2484E1E0 */  addiu      $a0, $a0, %lo(D_800AE1E0)
    /* 4D00C 8007CB5C 240500C8 */  addiu      $a1, $zero, 0xC8
    /* 4D010 8007CB60 240600C8 */  addiu      $a2, $zero, 0xC8
    /* 4D014 8007CB64 0C002929 */  jal        drawText
    /* 4D018 8007CB68 240700FE */   addiu     $a3, $zero, 0xFE
    /* 4D01C 8007CB6C 3C04800B */  lui        $a0, %hi(D_800AE1E4)
    /* 4D020 8007CB70 2484E1E4 */  addiu      $a0, $a0, %lo(D_800AE1E4)
    /* 4D024 8007CB74 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D028 8007CB78 0C002929 */  jal        drawText
    /* 4D02C 8007CB7C 24060001 */   addiu     $a2, $zero, 0x1
    /* 4D030 8007CB80 24040046 */  addiu      $a0, $zero, 0x46
    /* 4D034 8007CB84 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4D038 8007CB88 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4D03C 8007CB8C 3C04800B */  lui        $a0, %hi(D_800AE208)
    /* 4D040 8007CB90 2484E208 */  addiu      $a0, $a0, %lo(D_800AE208)
    /* 4D044 8007CB94 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D048 8007CB98 0C002929 */  jal        drawText
    /* 4D04C 8007CB9C 24060002 */   addiu     $a2, $zero, 0x2
    /* 4D050 8007CBA0 24040050 */  addiu      $a0, $zero, 0x50
    /* 4D054 8007CBA4 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4D058 8007CBA8 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4D05C 8007CBAC 3C04800B */  lui        $a0, %hi(D_800AE224)
    /* 4D060 8007CBB0 2484E224 */  addiu      $a0, $a0, %lo(D_800AE224)
    /* 4D064 8007CBB4 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D068 8007CBB8 0C002929 */  jal        drawText
    /* 4D06C 8007CBBC 24060003 */   addiu     $a2, $zero, 0x3
    /* 4D070 8007CBC0 24040078 */  addiu      $a0, $zero, 0x78
    /* 4D074 8007CBC4 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4D078 8007CBC8 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4D07C 8007CBCC 3C04800B */  lui        $a0, %hi(D_800AE240)
    /* 4D080 8007CBD0 2484E240 */  addiu      $a0, $a0, %lo(D_800AE240)
    /* 4D084 8007CBD4 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D088 8007CBD8 24060005 */  addiu      $a2, $zero, 0x5
    /* 4D08C 8007CBDC 0C002929 */  jal        drawText
    /* 4D090 8007CBE0 02A03825 */   or        $a3, $s5, $zero
    /* 4D094 8007CBE4 2404008C */  addiu      $a0, $zero, 0x8C
    /* 4D098 8007CBE8 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4D09C 8007CBEC 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4D0A0 8007CBF0 2E21000A */  sltiu      $at, $s1, 0xA
    /* 4D0A4 8007CBF4 1020000C */  beqz       $at, .L8007CC28_4D0D8
    /* 4D0A8 8007CBF8 2E41000A */   sltiu     $at, $s2, 0xA
    /* 4D0AC 8007CBFC 1020000A */  beqz       $at, .L8007CC28_4D0D8
    /* 4D0B0 8007CC00 3C04800B */   lui       $a0, %hi(D_800AE250)
    /* 4D0B4 8007CC04 2484E250 */  addiu      $a0, $a0, %lo(D_800AE250)
    /* 4D0B8 8007CC08 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D0BC 8007CC0C 24060006 */  addiu      $a2, $zero, 0x6
    /* 4D0C0 8007CC10 02603825 */  or         $a3, $s3, $zero
    /* 4D0C4 8007CC14 AFB10010 */  sw         $s1, 0x10($sp)
    /* 4D0C8 8007CC18 0C002929 */  jal        drawText
    /* 4D0CC 8007CC1C AFB20014 */   sw        $s2, 0x14($sp)
    /* 4D0D0 8007CC20 10000022 */  b          .L8007CCAC_4D15C
    /* 4D0D4 8007CC24 240400A0 */   addiu     $a0, $zero, 0xA0
  .L8007CC28_4D0D8:
    /* 4D0D8 8007CC28 2E21000A */  sltiu      $at, $s1, 0xA
    /* 4D0DC 8007CC2C 1020000A */  beqz       $at, .L8007CC58_4D108
    /* 4D0E0 8007CC30 3C04800B */   lui       $a0, %hi(D_800AE270)
    /* 4D0E4 8007CC34 2484E270 */  addiu      $a0, $a0, %lo(D_800AE270)
    /* 4D0E8 8007CC38 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D0EC 8007CC3C 24060006 */  addiu      $a2, $zero, 0x6
    /* 4D0F0 8007CC40 02603825 */  or         $a3, $s3, $zero
    /* 4D0F4 8007CC44 AFB10010 */  sw         $s1, 0x10($sp)
    /* 4D0F8 8007CC48 0C002929 */  jal        drawText
    /* 4D0FC 8007CC4C AFB20014 */   sw        $s2, 0x14($sp)
    /* 4D100 8007CC50 10000016 */  b          .L8007CCAC_4D15C
    /* 4D104 8007CC54 240400A0 */   addiu     $a0, $zero, 0xA0
  .L8007CC58_4D108:
    /* 4D108 8007CC58 2E41000A */  sltiu      $at, $s2, 0xA
    /* 4D10C 8007CC5C 1020000B */  beqz       $at, .L8007CC8C_4D13C
    /* 4D110 8007CC60 3C04800B */   lui       $a0, %hi(D_800AE2B0)
    /* 4D114 8007CC64 3C04800B */  lui        $a0, %hi(D_800AE290)
    /* 4D118 8007CC68 2484E290 */  addiu      $a0, $a0, %lo(D_800AE290)
    /* 4D11C 8007CC6C 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D120 8007CC70 24060006 */  addiu      $a2, $zero, 0x6
    /* 4D124 8007CC74 02603825 */  or         $a3, $s3, $zero
    /* 4D128 8007CC78 AFB10010 */  sw         $s1, 0x10($sp)
    /* 4D12C 8007CC7C 0C002929 */  jal        drawText
    /* 4D130 8007CC80 AFB20014 */   sw        $s2, 0x14($sp)
    /* 4D134 8007CC84 10000009 */  b          .L8007CCAC_4D15C
    /* 4D138 8007CC88 240400A0 */   addiu     $a0, $zero, 0xA0
  .L8007CC8C_4D13C:
    /* 4D13C 8007CC8C 2484E2B0 */  addiu      $a0, $a0, %lo(D_800AE2B0)
    /* 4D140 8007CC90 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D144 8007CC94 24060006 */  addiu      $a2, $zero, 0x6
    /* 4D148 8007CC98 02603825 */  or         $a3, $s3, $zero
    /* 4D14C 8007CC9C AFB10010 */  sw         $s1, 0x10($sp)
    /* 4D150 8007CCA0 0C002929 */  jal        drawText
    /* 4D154 8007CCA4 AFB20014 */   sw        $s2, 0x14($sp)
    /* 4D158 8007CCA8 240400A0 */  addiu      $a0, $zero, 0xA0
  .L8007CCAC_4D15C:
    /* 4D15C 8007CCAC 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4D160 8007CCB0 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4D164 8007CCB4 3C04800B */  lui        $a0, %hi(D_800AE2CC)
    /* 4D168 8007CCB8 2484E2CC */  addiu      $a0, $a0, %lo(D_800AE2CC)
    /* 4D16C 8007CCBC 240500AA */  addiu      $a1, $zero, 0xAA
    /* 4D170 8007CCC0 240600AA */  addiu      $a2, $zero, 0xAA
    /* 4D174 8007CCC4 0C002929 */  jal        drawText
    /* 4D178 8007CCC8 240700E0 */   addiu     $a3, $zero, 0xE0
    /* 4D17C 8007CCCC 3C04800B */  lui        $a0, %hi(D_800AE2D0)
    /* 4D180 8007CCD0 2484E2D0 */  addiu      $a0, $a0, %lo(D_800AE2D0)
    /* 4D184 8007CCD4 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D188 8007CCD8 24060007 */  addiu      $a2, $zero, 0x7
    /* 4D18C 8007CCDC 0C002929 */  jal        drawText
    /* 4D190 8007CCE0 02C03825 */   or        $a3, $s6, $zero
    /* 4D194 8007CCE4 240400B4 */  addiu      $a0, $zero, 0xB4
    /* 4D198 8007CCE8 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4D19C 8007CCEC 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4D1A0 8007CCF0 3C04800B */  lui        $a0, %hi(D_800AE2E8)
    /* 4D1A4 8007CCF4 3C078005 */  lui        $a3, %hi(D_8004DC5E)
    /* 4D1A8 8007CCF8 94E7DC5E */  lhu        $a3, %lo(D_8004DC5E)($a3)
    /* 4D1AC 8007CCFC 2484E2E8 */  addiu      $a0, $a0, %lo(D_800AE2E8)
    /* 4D1B0 8007CD00 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D1B4 8007CD04 0C002929 */  jal        drawText
    /* 4D1B8 8007CD08 24060008 */   addiu     $a2, $zero, 0x8
    /* 4D1BC 8007CD0C 10000076 */  b          .L8007CEE8_4D398
    /* 4D1C0 8007CD10 00000000 */   nop
  .L8007CD14_4D1C4:
    /* 4D1C4 8007CD14 3C04800B */  lui        $a0, %hi(D_800AE300)
    /* 4D1C8 8007CD18 2484E300 */  addiu      $a0, $a0, %lo(D_800AE300)
    /* 4D1CC 8007CD1C 0C002929 */  jal        drawText
    /* 4D1D0 8007CD20 00003025 */   or        $a2, $zero, $zero
    /* 4D1D4 8007CD24 2404003C */  addiu      $a0, $zero, 0x3C
    /* 4D1D8 8007CD28 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4D1DC 8007CD2C 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4D1E0 8007CD30 3C04800B */  lui        $a0, %hi(D_800AE318)
    /* 4D1E4 8007CD34 2484E318 */  addiu      $a0, $a0, %lo(D_800AE318)
    /* 4D1E8 8007CD38 240500C8 */  addiu      $a1, $zero, 0xC8
    /* 4D1EC 8007CD3C 240600C8 */  addiu      $a2, $zero, 0xC8
    /* 4D1F0 8007CD40 0C002929 */  jal        drawText
    /* 4D1F4 8007CD44 240700FE */   addiu     $a3, $zero, 0xFE
    /* 4D1F8 8007CD48 3C04800B */  lui        $a0, %hi(D_800AE31C)
    /* 4D1FC 8007CD4C 2484E31C */  addiu      $a0, $a0, %lo(D_800AE31C)
    /* 4D200 8007CD50 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D204 8007CD54 0C002929 */  jal        drawText
    /* 4D208 8007CD58 24060001 */   addiu     $a2, $zero, 0x1
    /* 4D20C 8007CD5C 24040046 */  addiu      $a0, $zero, 0x46
    /* 4D210 8007CD60 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4D214 8007CD64 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4D218 8007CD68 3C04800B */  lui        $a0, %hi(D_800AE340)
    /* 4D21C 8007CD6C 2484E340 */  addiu      $a0, $a0, %lo(D_800AE340)
    /* 4D220 8007CD70 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D224 8007CD74 0C002929 */  jal        drawText
    /* 4D228 8007CD78 24060002 */   addiu     $a2, $zero, 0x2
    /* 4D22C 8007CD7C 24040050 */  addiu      $a0, $zero, 0x50
    /* 4D230 8007CD80 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4D234 8007CD84 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4D238 8007CD88 3C04800B */  lui        $a0, %hi(D_800AE368)
    /* 4D23C 8007CD8C 2484E368 */  addiu      $a0, $a0, %lo(D_800AE368)
    /* 4D240 8007CD90 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D244 8007CD94 0C002929 */  jal        drawText
    /* 4D248 8007CD98 24060003 */   addiu     $a2, $zero, 0x3
    /* 4D24C 8007CD9C 24040078 */  addiu      $a0, $zero, 0x78
    /* 4D250 8007CDA0 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4D254 8007CDA4 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4D258 8007CDA8 3C04800B */  lui        $a0, %hi(D_800AE390)
    /* 4D25C 8007CDAC 2484E390 */  addiu      $a0, $a0, %lo(D_800AE390)
    /* 4D260 8007CDB0 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D264 8007CDB4 24060005 */  addiu      $a2, $zero, 0x5
    /* 4D268 8007CDB8 0C002929 */  jal        drawText
    /* 4D26C 8007CDBC 02A03825 */   or        $a3, $s5, $zero
    /* 4D270 8007CDC0 2404008C */  addiu      $a0, $zero, 0x8C
    /* 4D274 8007CDC4 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4D278 8007CDC8 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4D27C 8007CDCC 2E21000A */  sltiu      $at, $s1, 0xA
    /* 4D280 8007CDD0 1020000C */  beqz       $at, .L8007CE04_4D2B4
    /* 4D284 8007CDD4 2E41000A */   sltiu     $at, $s2, 0xA
    /* 4D288 8007CDD8 1020000A */  beqz       $at, .L8007CE04_4D2B4
    /* 4D28C 8007CDDC 3C04800B */   lui       $a0, %hi(D_800AE3A0)
    /* 4D290 8007CDE0 2484E3A0 */  addiu      $a0, $a0, %lo(D_800AE3A0)
    /* 4D294 8007CDE4 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D298 8007CDE8 24060006 */  addiu      $a2, $zero, 0x6
    /* 4D29C 8007CDEC 02603825 */  or         $a3, $s3, $zero
    /* 4D2A0 8007CDF0 AFB10010 */  sw         $s1, 0x10($sp)
    /* 4D2A4 8007CDF4 0C002929 */  jal        drawText
    /* 4D2A8 8007CDF8 AFB20014 */   sw        $s2, 0x14($sp)
    /* 4D2AC 8007CDFC 10000022 */  b          .L8007CE88_4D338
    /* 4D2B0 8007CE00 240400A0 */   addiu     $a0, $zero, 0xA0
  .L8007CE04_4D2B4:
    /* 4D2B4 8007CE04 2E21000A */  sltiu      $at, $s1, 0xA
    /* 4D2B8 8007CE08 1020000A */  beqz       $at, .L8007CE34_4D2E4
    /* 4D2BC 8007CE0C 3C04800B */   lui       $a0, %hi(D_800AE3BC)
    /* 4D2C0 8007CE10 2484E3BC */  addiu      $a0, $a0, %lo(D_800AE3BC)
    /* 4D2C4 8007CE14 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D2C8 8007CE18 24060006 */  addiu      $a2, $zero, 0x6
    /* 4D2CC 8007CE1C 02603825 */  or         $a3, $s3, $zero
    /* 4D2D0 8007CE20 AFB10010 */  sw         $s1, 0x10($sp)
    /* 4D2D4 8007CE24 0C002929 */  jal        drawText
    /* 4D2D8 8007CE28 AFB20014 */   sw        $s2, 0x14($sp)
    /* 4D2DC 8007CE2C 10000016 */  b          .L8007CE88_4D338
    /* 4D2E0 8007CE30 240400A0 */   addiu     $a0, $zero, 0xA0
  .L8007CE34_4D2E4:
    /* 4D2E4 8007CE34 2E41000A */  sltiu      $at, $s2, 0xA
    /* 4D2E8 8007CE38 1020000B */  beqz       $at, .L8007CE68_4D318
    /* 4D2EC 8007CE3C 3C04800B */   lui       $a0, %hi(D_800AE3F4)
    /* 4D2F0 8007CE40 3C04800B */  lui        $a0, %hi(D_800AE3D8)
    /* 4D2F4 8007CE44 2484E3D8 */  addiu      $a0, $a0, %lo(D_800AE3D8)
    /* 4D2F8 8007CE48 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D2FC 8007CE4C 24060006 */  addiu      $a2, $zero, 0x6
    /* 4D300 8007CE50 02603825 */  or         $a3, $s3, $zero
    /* 4D304 8007CE54 AFB10010 */  sw         $s1, 0x10($sp)
    /* 4D308 8007CE58 0C002929 */  jal        drawText
    /* 4D30C 8007CE5C AFB20014 */   sw        $s2, 0x14($sp)
    /* 4D310 8007CE60 10000009 */  b          .L8007CE88_4D338
    /* 4D314 8007CE64 240400A0 */   addiu     $a0, $zero, 0xA0
  .L8007CE68_4D318:
    /* 4D318 8007CE68 2484E3F4 */  addiu      $a0, $a0, %lo(D_800AE3F4)
    /* 4D31C 8007CE6C 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D320 8007CE70 24060006 */  addiu      $a2, $zero, 0x6
    /* 4D324 8007CE74 02603825 */  or         $a3, $s3, $zero
    /* 4D328 8007CE78 AFB10010 */  sw         $s1, 0x10($sp)
    /* 4D32C 8007CE7C 0C002929 */  jal        drawText
    /* 4D330 8007CE80 AFB20014 */   sw        $s2, 0x14($sp)
    /* 4D334 8007CE84 240400A0 */  addiu      $a0, $zero, 0xA0
  .L8007CE88_4D338:
    /* 4D338 8007CE88 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4D33C 8007CE8C 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4D340 8007CE90 3C04800B */  lui        $a0, %hi(D_800AE410)
    /* 4D344 8007CE94 2484E410 */  addiu      $a0, $a0, %lo(D_800AE410)
    /* 4D348 8007CE98 240500AA */  addiu      $a1, $zero, 0xAA
    /* 4D34C 8007CE9C 240600AA */  addiu      $a2, $zero, 0xAA
    /* 4D350 8007CEA0 0C002929 */  jal        drawText
    /* 4D354 8007CEA4 240700E0 */   addiu     $a3, $zero, 0xE0
    /* 4D358 8007CEA8 3C04800B */  lui        $a0, %hi(D_800AE414)
    /* 4D35C 8007CEAC 2484E414 */  addiu      $a0, $a0, %lo(D_800AE414)
    /* 4D360 8007CEB0 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D364 8007CEB4 24060007 */  addiu      $a2, $zero, 0x7
    /* 4D368 8007CEB8 0C002929 */  jal        drawText
    /* 4D36C 8007CEBC 02C03825 */   or        $a3, $s6, $zero
    /* 4D370 8007CEC0 240400B4 */  addiu      $a0, $zero, 0xB4
    /* 4D374 8007CEC4 0C01F1D9 */  jal        func_8007C764_4CC14
    /* 4D378 8007CEC8 3205FFFF */   andi      $a1, $s0, 0xFFFF
    /* 4D37C 8007CECC 3C04800B */  lui        $a0, %hi(D_800AE430)
    /* 4D380 8007CED0 3C078005 */  lui        $a3, %hi(D_8004DC5E)
    /* 4D384 8007CED4 94E7DC5E */  lhu        $a3, %lo(D_8004DC5E)($a3)
    /* 4D388 8007CED8 2484E430 */  addiu      $a0, $a0, %lo(D_800AE430)
    /* 4D38C 8007CEDC 24050080 */  addiu      $a1, $zero, 0x80
    /* 4D390 8007CEE0 0C002929 */  jal        drawText
    /* 4D394 8007CEE4 24060008 */   addiu     $a2, $zero, 0x8
  .L8007CEE8_4D398:
    /* 4D398 8007CEE8 0C002C11 */  jal        func_8000B044_BC44
    /* 4D39C 8007CEEC 00000000 */   nop
    /* 4D3A0 8007CEF0 8EE20000 */  lw         $v0, 0x0($s7)
    /* 4D3A4 8007CEF4 3C09E900 */  lui        $t1, (0xE9000000 >> 16)
    /* 4D3A8 8007CEF8 3C0BB800 */  lui        $t3, (0xB8000000 >> 16)
    /* 4D3AC 8007CEFC 24480008 */  addiu      $t0, $v0, 0x8
    /* 4D3B0 8007CF00 AEE80000 */  sw         $t0, 0x0($s7)
    /* 4D3B4 8007CF04 AC400004 */  sw         $zero, 0x4($v0)
    /* 4D3B8 8007CF08 AC490000 */  sw         $t1, 0x0($v0)
    /* 4D3BC 8007CF0C 8EE20000 */  lw         $v0, 0x0($s7)
    /* 4D3C0 8007CF10 244A0008 */  addiu      $t2, $v0, 0x8
    /* 4D3C4 8007CF14 AEEA0000 */  sw         $t2, 0x0($s7)
    /* 4D3C8 8007CF18 AC400004 */  sw         $zero, 0x4($v0)
    /* 4D3CC 8007CF1C 0C001417 */  jal        func_8000505C_5C5C
    /* 4D3D0 8007CF20 AC4B0000 */   sw        $t3, 0x0($v0)
    /* 4D3D4 8007CF24 2A810258 */  slti       $at, $s4, 0x258
    /* 4D3D8 8007CF28 10200004 */  beqz       $at, .L8007CF3C_4D3EC
    /* 4D3DC 8007CF2C 00002025 */   or        $a0, $zero, $zero
    /* 4D3E0 8007CF30 26100001 */  addiu      $s0, $s0, 0x1
    /* 4D3E4 8007CF34 3214FFFF */  andi       $s4, $s0, 0xFFFF
    /* 4D3E8 8007CF38 02808025 */  or         $s0, $s4, $zero
  .L8007CF3C_4D3EC:
    /* 4D3EC 8007CF3C 2A810258 */  slti       $at, $s4, 0x258
    /* 4D3F0 8007CF40 54200005 */  bnel       $at, $zero, .L8007CF58_4D408
    /* 4D3F4 8007CF44 2A8107D0 */   slti      $at, $s4, 0x7D0
    /* 4D3F8 8007CF48 0C000D61 */  jal        isButtonNewlyPressed
    /* 4D3FC 8007CF4C 34059000 */   ori       $a1, $zero, 0x9000
    /* 4D400 8007CF50 14400002 */  bnez       $v0, .L8007CF5C_4D40C
    /* 4D404 8007CF54 2A8107D0 */   slti      $at, $s4, 0x7D0
  .L8007CF58_4D408:
    /* 4D408 8007CF58 14200005 */  bnez       $at, .L8007CF70_4D420
  .L8007CF5C_4D40C:
    /* 4D40C 8007CF5C 00002025 */   or        $a0, $zero, $zero
    /* 4D410 8007CF60 00002825 */  or         $a1, $zero, $zero
    /* 4D414 8007CF64 00003025 */  or         $a2, $zero, $zero
    /* 4D418 8007CF68 0C0016BB */  jal        func_80005AEC_66EC
    /* 4D41C 8007CF6C 24070040 */   addiu     $a3, $zero, 0x40
  .L8007CF70_4D420:
    /* 4D420 8007CF70 0C0016E1 */  jal        func_80005B84_6784
    /* 4D424 8007CF74 00000000 */   nop
    /* 4D428 8007CF78 0C0016CC */  jal        func_80005B30_6730
    /* 4D42C 8007CF7C 00000000 */   nop
    /* 4D430 8007CF80 1040FE59 */  beqz       $v0, .L8007C8E8_4CD98
    /* 4D434 8007CF84 00000000 */   nop
    /* 4D438 8007CF88 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 4D43C 8007CF8C 8FB0001C */  lw         $s0, 0x1C($sp)
    /* 4D440 8007CF90 8FB10020 */  lw         $s1, 0x20($sp)
    /* 4D444 8007CF94 8FB20024 */  lw         $s2, 0x24($sp)
    /* 4D448 8007CF98 8FB30028 */  lw         $s3, 0x28($sp)
    /* 4D44C 8007CF9C 8FB4002C */  lw         $s4, 0x2C($sp)
    /* 4D450 8007CFA0 8FB50030 */  lw         $s5, 0x30($sp)
    /* 4D454 8007CFA4 8FB60034 */  lw         $s6, 0x34($sp)
    /* 4D458 8007CFA8 8FB70038 */  lw         $s7, 0x38($sp)
    /* 4D45C 8007CFAC 03E00008 */  jr         $ra
    /* 4D460 8007CFB0 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_8007C7F4_4CCA4
