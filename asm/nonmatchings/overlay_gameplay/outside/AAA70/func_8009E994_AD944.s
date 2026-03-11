nonmatching func_8009E994_AD944, 0x2FC

glabel func_8009E994_AD944
    /* AD944 8009E994 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* AD948 8009E998 AFA7003C */  sw         $a3, 0x3C($sp)
    /* AD94C 8009E99C 87AE003E */  lh         $t6, 0x3E($sp)
    /* AD950 8009E9A0 AFBF002C */  sw         $ra, 0x2C($sp)
    /* AD954 8009E9A4 AFA50034 */  sw         $a1, 0x34($sp)
    /* AD958 8009E9A8 AFA60038 */  sw         $a2, 0x38($sp)
    /* AD95C 8009E9AC 11C0000C */  beqz       $t6, .L8009E9E0_AD990
    /* AD960 8009E9B0 46006386 */   mov.s     $f14, $f12
    /* AD964 8009E9B4 0C0062A8 */  jal        func_80018AA0_196A0
    /* AD968 8009E9B8 E7AE0030 */   swc1      $f14, 0x30($sp)
    /* AD96C 8009E9BC 87A8003E */  lh         $t0, 0x3E($sp)
    /* AD970 8009E9C0 14400007 */  bnez       $v0, .L8009E9E0_AD990
    /* AD974 8009E9C4 C7AE0030 */   lwc1      $f14, 0x30($sp)
    /* AD978 8009E9C8 A7A8003E */  sh         $t0, 0x3E($sp)
    /* AD97C 8009E9CC 0C04EE32 */  jal        func_8013B8C8_14A878
    /* AD980 8009E9D0 E7AE0030 */   swc1      $f14, 0x30($sp)
    /* AD984 8009E9D4 87A8003E */  lh         $t0, 0x3E($sp)
    /* AD988 8009E9D8 10400020 */  beqz       $v0, .L8009EA5C_ADA0C
    /* AD98C 8009E9DC C7AE0030 */   lwc1      $f14, 0x30($sp)
  .L8009E9E0_AD990:
    /* AD990 8009E9E0 3C018014 */  lui        $at, %hi(D_8013D668)
    /* AD994 8009E9E4 C422D668 */  lwc1       $f2, %lo(D_8013D668)($at)
    /* AD998 8009E9E8 44808800 */  mtc1       $zero, $f17
    /* AD99C 8009E9EC 44808000 */  mtc1       $zero, $f16
    /* AD9A0 8009E9F0 46001021 */  cvt.d.s    $f0, $f2
    /* AD9A4 8009E9F4 3C018014 */  lui        $at, %hi(D_80142728)
    /* AD9A8 8009E9F8 4620803C */  c.lt.d     $f16, $f0
    /* AD9AC 8009E9FC 8FAF0034 */  lw         $t7, 0x34($sp)
    /* AD9B0 8009EA00 3C088015 */  lui        $t0, %hi(D_8014F6C0)
    /* AD9B4 8009EA04 4500000C */  bc1f       .L8009EA38_AD9E8
    /* AD9B8 8009EA08 00000000 */   nop
    /* AD9BC 8009EA0C D42C2728 */  ldc1       $f12, %lo(D_80142728)($at)
    /* AD9C0 8009EA10 462C003C */  c.lt.d     $f0, $f12
    /* AD9C4 8009EA14 00000000 */  nop
    /* AD9C8 8009EA18 45020005 */  bc1fl      .L8009EA30_AD9E0
    /* AD9CC 8009EA1C 462C0101 */   sub.d     $f4, $f0, $f12
    /* AD9D0 8009EA20 462080A0 */  cvt.s.d    $f2, $f16
    /* AD9D4 8009EA24 10000004 */  b          .L8009EA38_AD9E8
    /* AD9D8 8009EA28 46001021 */   cvt.d.s   $f0, $f2
    /* AD9DC 8009EA2C 462C0101 */  sub.d      $f4, $f0, $f12
  .L8009EA30_AD9E0:
    /* AD9E0 8009EA30 462020A0 */  cvt.s.d    $f2, $f4
    /* AD9E4 8009EA34 46001021 */  cvt.d.s    $f0, $f2
  .L8009EA38_AD9E8:
    /* AD9E8 8009EA38 11E00005 */  beqz       $t7, .L8009EA50_ADA00
    /* AD9EC 8009EA3C 3C013F80 */   lui       $at, (0x3F800000 >> 16)
    /* AD9F0 8009EA40 3C018015 */  lui        $at, %hi(D_8014F6C4)
    /* AD9F4 8009EA44 8508F6C0 */  lh         $t0, %lo(D_8014F6C0)($t0)
    /* AD9F8 8009EA48 10000059 */  b          .L8009EBB0_ADB60
    /* AD9FC 8009EA4C C42EF6C4 */   lwc1      $f14, %lo(D_8014F6C4)($at)
  .L8009EA50_ADA00:
    /* ADA00 8009EA50 44817000 */  mtc1       $at, $f14
    /* ADA04 8009EA54 10000056 */  b          .L8009EBB0_ADB60
    /* ADA08 8009EA58 24080001 */   addiu     $t0, $zero, 0x1
  .L8009EA5C_ADA0C:
    /* ADA0C 8009EA5C 3C028015 */  lui        $v0, %hi(D_8014F202)
    /* ADA10 8009EA60 9042F202 */  lbu        $v0, %lo(D_8014F202)($v0)
    /* ADA14 8009EA64 24010004 */  addiu      $at, $zero, 0x4
    /* ADA18 8009EA68 3C188005 */  lui        $t8, %hi(D_80052A8C)
    /* ADA1C 8009EA6C 14410005 */  bne        $v0, $at, .L8009EA84_ADA34
    /* ADA20 8009EA70 3C038015 */   lui       $v1, %hi(D_8014F203)
    /* ADA24 8009EA74 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* ADA28 8009EA78 33190004 */  andi       $t9, $t8, 0x4
    /* ADA2C 8009EA7C 57200081 */  bnel       $t9, $zero, .L8009EC84_ADC34
    /* ADA30 8009EA80 8FBF002C */   lw        $ra, 0x2C($sp)
  .L8009EA84_ADA34:
    /* ADA34 8009EA84 9063F203 */  lbu        $v1, %lo(D_8014F203)($v1)
    /* ADA38 8009EA88 44804000 */  mtc1       $zero, $f8
    /* ADA3C 8009EA8C 3C098015 */  lui        $t1, %hi(D_8014F6B4)
    /* ADA40 8009EA90 14430004 */  bne        $v0, $v1, .L8009EAA4_ADA54
    /* ADA44 8009EA94 8FAA0040 */   lw        $t2, 0x40($sp)
    /* ADA48 8009EA98 8D29F6B4 */  lw         $t1, %lo(D_8014F6B4)($t1)
    /* ADA4C 8009EA9C 112A0015 */  beq        $t1, $t2, .L8009EAF4_ADAA4
    /* ADA50 8009EAA0 00000000 */   nop
  .L8009EAA4_ADA54:
    /* ADA54 8009EAA4 44800000 */  mtc1       $zero, $f0
    /* ADA58 8009EAA8 3C018015 */  lui        $at, %hi(D_8014F6B0)
    /* ADA5C 8009EAAC 14600008 */  bnez       $v1, .L8009EAD0_ADA80
    /* ADA60 8009EAB0 46000086 */   mov.s     $f2, $f0
    /* ADA64 8009EAB4 3C018015 */  lui        $at, %hi(D_8014F6A4)
    /* ADA68 8009EAB8 E420F6A4 */  swc1       $f0, %lo(D_8014F6A4)($at)
    /* ADA6C 8009EABC 3C018015 */  lui        $at, %hi(D_8014F6A8)
    /* ADA70 8009EAC0 A420F6A8 */  sh         $zero, %lo(D_8014F6A8)($at)
    /* ADA74 8009EAC4 3C018014 */  lui        $at, %hi(D_8013D668)
    /* ADA78 8009EAC8 1000000A */  b          .L8009EAF4_ADAA4
    /* ADA7C 8009EACC E422D668 */   swc1      $f2, %lo(D_8013D668)($at)
  .L8009EAD0_ADA80:
    /* ADA80 8009EAD0 C426F6B0 */  lwc1       $f6, %lo(D_8014F6B0)($at)
    /* ADA84 8009EAD4 3C0B8015 */  lui        $t3, %hi(D_8014F6AC)
    /* ADA88 8009EAD8 856BF6AC */  lh         $t3, %lo(D_8014F6AC)($t3)
    /* ADA8C 8009EADC 3C018015 */  lui        $at, %hi(D_8014F6A4)
    /* ADA90 8009EAE0 E426F6A4 */  swc1       $f6, %lo(D_8014F6A4)($at)
    /* ADA94 8009EAE4 3C018015 */  lui        $at, %hi(D_8014F6A8)
    /* ADA98 8009EAE8 A42BF6A8 */  sh         $t3, %lo(D_8014F6A8)($at)
    /* ADA9C 8009EAEC 3C018014 */  lui        $at, %hi(D_8013D668)
    /* ADAA0 8009EAF0 E422D668 */  swc1       $f2, %lo(D_8013D668)($at)
  .L8009EAF4_ADAA4:
    /* ADAA4 8009EAF4 3C018014 */  lui        $at, %hi(D_8013D668)
    /* ADAA8 8009EAF8 C422D668 */  lwc1       $f2, %lo(D_8013D668)($at)
    /* ADAAC 8009EAFC 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* ADAB0 8009EB00 44814800 */  mtc1       $at, $f9
    /* ADAB4 8009EB04 46001021 */  cvt.d.s    $f0, $f2
    /* ADAB8 8009EB08 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* ADABC 8009EB0C 4628003C */  c.lt.d     $f0, $f8
    /* ADAC0 8009EB10 00000000 */  nop
    /* ADAC4 8009EB14 4502001F */  bc1fl      .L8009EB94_ADB44
    /* ADAC8 8009EB18 44811000 */   mtc1      $at, $f2
    /* ADACC 8009EB1C 3C018014 */  lui        $at, %hi(D_80142730)
    /* ADAD0 8009EB20 D42C2730 */  ldc1       $f12, %lo(D_80142730)($at)
    /* ADAD4 8009EB24 3C018015 */  lui        $at, %hi(D_8014F6A4)
    /* ADAD8 8009EB28 C42AF6A4 */  lwc1       $f10, %lo(D_8014F6A4)($at)
    /* ADADC 8009EB2C 3C0C8015 */  lui        $t4, %hi(D_8014F6A8)
    /* ADAE0 8009EB30 858CF6A8 */  lh         $t4, %lo(D_8014F6A8)($t4)
    /* ADAE4 8009EB34 460A7481 */  sub.s      $f18, $f14, $f10
    /* ADAE8 8009EB38 3C018015 */  lui        $at, %hi(D_8014F6B0)
    /* ADAEC 8009EB3C 010C6823 */  subu       $t5, $t0, $t4
    /* ADAF0 8009EB40 448C4000 */  mtc1       $t4, $f8
    /* ADAF4 8009EB44 46029102 */  mul.s      $f4, $f18, $f2
    /* ADAF8 8009EB48 44808800 */  mtc1       $zero, $f17
    /* ADAFC 8009EB4C 44808000 */  mtc1       $zero, $f16
    /* ADB00 8009EB50 468044A0 */  cvt.s.w    $f18, $f8
    /* ADB04 8009EB54 460A2180 */  add.s      $f6, $f4, $f10
    /* ADB08 8009EB58 448D2000 */  mtc1       $t5, $f4
    /* ADB0C 8009EB5C 00000000 */  nop
    /* ADB10 8009EB60 468022A0 */  cvt.s.w    $f10, $f4
    /* ADB14 8009EB64 E426F6B0 */  swc1       $f6, %lo(D_8014F6B0)($at)
    /* ADB18 8009EB68 3C018015 */  lui        $at, %hi(D_8014F6AC)
    /* ADB1C 8009EB6C 460A1182 */  mul.s      $f6, $f2, $f10
    /* ADB20 8009EB70 462C0280 */  add.d      $f10, $f0, $f12
    /* ADB24 8009EB74 462050A0 */  cvt.s.d    $f2, $f10
    /* ADB28 8009EB78 46069200 */  add.s      $f8, $f18, $f6
    /* ADB2C 8009EB7C 46001021 */  cvt.d.s    $f0, $f2
    /* ADB30 8009EB80 4600410D */  trunc.w.s  $f4, $f8
    /* ADB34 8009EB84 440F2000 */  mfc1       $t7, $f4
    /* ADB38 8009EB88 10000009 */  b          .L8009EBB0_ADB60
    /* ADB3C 8009EB8C A42FF6AC */   sh        $t7, %lo(D_8014F6AC)($at)
    /* ADB40 8009EB90 44811000 */  mtc1       $at, $f2
  .L8009EB94_ADB44:
    /* ADB44 8009EB94 3C018015 */  lui        $at, %hi(D_8014F6B0)
    /* ADB48 8009EB98 E42EF6B0 */  swc1       $f14, %lo(D_8014F6B0)($at)
    /* ADB4C 8009EB9C 3C018015 */  lui        $at, %hi(D_8014F6AC)
    /* ADB50 8009EBA0 44808800 */  mtc1       $zero, $f17
    /* ADB54 8009EBA4 44808000 */  mtc1       $zero, $f16
    /* ADB58 8009EBA8 A428F6AC */  sh         $t0, %lo(D_8014F6AC)($at)
    /* ADB5C 8009EBAC 46001021 */  cvt.d.s    $f0, $f2
  .L8009EBB0_ADB60:
    /* ADB60 8009EBB0 3C018015 */  lui        $at, %hi(D_8014F6C4)
    /* ADB64 8009EBB4 4620803E */  c.le.d     $f16, $f0
    /* ADB68 8009EBB8 E42EF6C4 */  swc1       $f14, %lo(D_8014F6C4)($at)
    /* ADB6C 8009EBBC 3C018015 */  lui        $at, %hi(D_8014F6C0)
    /* ADB70 8009EBC0 A428F6C0 */  sh         $t0, %lo(D_8014F6C0)($at)
    /* ADB74 8009EBC4 3C018014 */  lui        $at, %hi(D_8013D668)
    /* ADB78 8009EBC8 4500002A */  bc1f       .L8009EC74_ADC24
    /* ADB7C 8009EBCC E422D668 */   swc1      $f2, %lo(D_8013D668)($at)
    /* ADB80 8009EBD0 3C188015 */  lui        $t8, %hi(D_8014F202)
    /* ADB84 8009EBD4 9318F202 */  lbu        $t8, %lo(D_8014F202)($t8)
    /* ADB88 8009EBD8 3C018014 */  lui        $at, %hi(D_8013D668)
    /* ADB8C 8009EBDC 5700000A */  bnel       $t8, $zero, .L8009EC08_ADBB8
    /* ADB90 8009EBE0 3C014200 */   lui       $at, (0x42000000 >> 16)
    /* ADB94 8009EBE4 E422D668 */  swc1       $f2, %lo(D_8013D668)($at)
    /* ADB98 8009EBE8 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* ADB9C 8009EBEC 44819800 */  mtc1       $at, $f19
    /* ADBA0 8009EBF0 44809000 */  mtc1       $zero, $f18
    /* ADBA4 8009EBF4 00000000 */  nop
    /* ADBA8 8009EBF8 4620903E */  c.le.d     $f18, $f0
    /* ADBAC 8009EBFC 00000000 */  nop
    /* ADBB0 8009EC00 4501001C */  bc1t       .L8009EC74_ADC24
    /* ADBB4 8009EC04 3C014200 */   lui       $at, (0x42000000 >> 16)
  .L8009EC08_ADBB8:
    /* ADBB8 8009EC08 44813000 */  mtc1       $at, $f6
    /* ADBBC 8009EC0C 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* ADBC0 8009EC10 44812000 */  mtc1       $at, $f4
    /* ADBC4 8009EC14 46061202 */  mul.s      $f8, $f2, $f6
    /* ADBC8 8009EC18 3C01C200 */  lui        $at, (0xC2000000 >> 16)
    /* ADBCC 8009EC1C 44819000 */  mtc1       $at, $f18
    /* ADBD0 8009EC20 8FAB0034 */  lw         $t3, 0x34($sp)
    /* ADBD4 8009EC24 87AD003A */  lh         $t5, 0x3A($sp)
    /* ADBD8 8009EC28 3C018014 */  lui        $at, %hi(D_8013D668)
    /* ADBDC 8009EC2C 44067000 */  mfc1       $a2, $f14
    /* ADBE0 8009EC30 46044282 */  mul.s      $f10, $f8, $f4
    /* ADBE4 8009EC34 240C0002 */  addiu      $t4, $zero, 0x2
    /* ADBE8 8009EC38 AFAC0014 */  sw         $t4, 0x14($sp)
    /* ADBEC 8009EC3C E422D668 */  swc1       $f2, %lo(D_8013D668)($at)
    /* ADBF0 8009EC40 2405008B */  addiu      $a1, $zero, 0x8B
    /* ADBF4 8009EC44 00003825 */  or         $a3, $zero, $zero
    /* ADBF8 8009EC48 AFA00018 */  sw         $zero, 0x18($sp)
    /* ADBFC 8009EC4C 46125180 */  add.s      $f6, $f10, $f18
    /* ADC00 8009EC50 AFA80020 */  sw         $t0, 0x20($sp)
    /* ADC04 8009EC54 AFAB0010 */  sw         $t3, 0x10($sp)
    /* ADC08 8009EC58 AFAD001C */  sw         $t5, 0x1C($sp)
    /* ADC0C 8009EC5C 4600320D */  trunc.w.s  $f8, $f6
    /* ADC10 8009EC60 44044000 */  mfc1       $a0, $f8
    /* ADC14 8009EC64 00000000 */  nop
    /* ADC18 8009EC68 00044C00 */  sll        $t1, $a0, 16
    /* ADC1C 8009EC6C 0C0271B3 */  jal        func_8009C6CC_AB67C
    /* ADC20 8009EC70 00092403 */   sra       $a0, $t1, 16
  .L8009EC74_ADC24:
    /* ADC24 8009EC74 8FAE0040 */  lw         $t6, 0x40($sp)
    /* ADC28 8009EC78 3C018015 */  lui        $at, %hi(D_8014F6B4)
    /* ADC2C 8009EC7C AC2EF6B4 */  sw         $t6, %lo(D_8014F6B4)($at)
    /* ADC30 8009EC80 8FBF002C */  lw         $ra, 0x2C($sp)
  .L8009EC84_ADC34:
    /* ADC34 8009EC84 27BD0030 */  addiu      $sp, $sp, 0x30
    /* ADC38 8009EC88 03E00008 */  jr         $ra
    /* ADC3C 8009EC8C 00000000 */   nop
endlabel func_8009E994_AD944
