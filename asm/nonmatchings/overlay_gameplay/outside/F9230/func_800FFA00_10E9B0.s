nonmatching func_800FFA00_10E9B0, 0x23C

glabel func_800FFA00_10E9B0
    /* 10E9B0 800FFA00 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10E9B4 800FFA04 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10E9B8 800FFA08 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 10E9BC 800FFA0C A4A00000 */  sh         $zero, 0x0($a1)
    /* 10E9C0 800FFA10 A4A00002 */  sh         $zero, 0x2($a1)
    /* 10E9C4 800FFA14 3C0E8005 */  lui        $t6, %hi(D_80052B34)
    /* 10E9C8 800FFA18 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* 10E9CC 800FFA1C AFBF002C */  sw         $ra, 0x2C($sp)
    /* 10E9D0 800FFA20 AFB10028 */  sw         $s1, 0x28($sp)
    /* 10E9D4 800FFA24 AFB00024 */  sw         $s0, 0x24($sp)
    /* 10E9D8 800FFA28 91CF001A */  lbu        $t7, 0x1A($t6)
    /* 10E9DC 800FFA2C 00808825 */  or         $s1, $a0, $zero
    /* 10E9E0 800FFA30 24010013 */  addiu      $at, $zero, 0x13
    /* 10E9E4 800FFA34 15E10006 */  bne        $t7, $at, .L800FFA50_10EA00
    /* 10E9E8 800FFA38 00114100 */   sll       $t0, $s1, 4
    /* 10E9EC 800FFA3C 3C188016 */  lui        $t8, %hi(D_80159318)
    /* 10E9F0 800FFA40 87189318 */  lh         $t8, %lo(D_80159318)($t8)
    /* 10E9F4 800FFA44 0018C823 */  negu       $t9, $t8
    /* 10E9F8 800FFA48 10000002 */  b          .L800FFA54_10EA04
    /* 10E9FC 800FFA4C A4B90004 */   sh        $t9, 0x4($a1)
  .L800FFA50_10EA00:
    /* 10EA00 800FFA50 A4A00004 */  sh         $zero, 0x4($a1)
  .L800FFA54_10EA04:
    /* 10EA04 800FFA54 3C098014 */  lui        $t1, %hi(D_8013FDA8)
    /* 10EA08 800FFA58 2529FDA8 */  addiu      $t1, $t1, %lo(D_8013FDA8)
    /* 10EA0C 800FFA5C 01098021 */  addu       $s0, $t0, $t1
    /* 10EA10 800FFA60 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10EA14 800FFA64 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10EA18 800FFA68 26040008 */  addiu      $a0, $s0, 0x8
    /* 10EA1C 800FFA6C 0C000E74 */  jal        func_800039D0_45D0
    /* 10EA20 800FFA70 00003025 */   or        $a2, $zero, $zero
    /* 10EA24 800FFA74 3C118016 */  lui        $s1, %hi(D_801592C0)
    /* 10EA28 800FFA78 263192C0 */  addiu      $s1, $s1, %lo(D_801592C0)
    /* 10EA2C 800FFA7C 3C048006 */  lui        $a0, %hi(D_8005BB38)
    /* 10EA30 800FFA80 8C84BB38 */  lw         $a0, %lo(D_8005BB38)($a0)
    /* 10EA34 800FFA84 02202825 */  or         $a1, $s1, $zero
    /* 10EA38 800FFA88 0C008BFC */  jal        guMtxCatL
    /* 10EA3C 800FFA8C 02203025 */   or        $a2, $s1, $zero
    /* 10EA40 800FFA90 44800000 */  mtc1       $zero, $f0
    /* 10EA44 800FFA94 27AA004C */  addiu      $t2, $sp, 0x4C
    /* 10EA48 800FFA98 27AB0048 */  addiu      $t3, $sp, 0x48
    /* 10EA4C 800FFA9C 27AC0044 */  addiu      $t4, $sp, 0x44
    /* 10EA50 800FFAA0 44050000 */  mfc1       $a1, $f0
    /* 10EA54 800FFAA4 44060000 */  mfc1       $a2, $f0
    /* 10EA58 800FFAA8 44070000 */  mfc1       $a3, $f0
    /* 10EA5C 800FFAAC AFAC0018 */  sw         $t4, 0x18($sp)
    /* 10EA60 800FFAB0 AFAB0014 */  sw         $t3, 0x14($sp)
    /* 10EA64 800FFAB4 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 10EA68 800FFAB8 0C008BE4 */  jal        guMtxXFML
    /* 10EA6C 800FFABC 02202025 */   or        $a0, $s1, $zero
    /* 10EA70 800FFAC0 44800000 */  mtc1       $zero, $f0
    /* 10EA74 800FFAC4 27AD0040 */  addiu      $t5, $sp, 0x40
    /* 10EA78 800FFAC8 27AE003C */  addiu      $t6, $sp, 0x3C
    /* 10EA7C 800FFACC 27AF0038 */  addiu      $t7, $sp, 0x38
    /* 10EA80 800FFAD0 44050000 */  mfc1       $a1, $f0
    /* 10EA84 800FFAD4 44060000 */  mfc1       $a2, $f0
    /* 10EA88 800FFAD8 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 10EA8C 800FFADC AFAE0014 */  sw         $t6, 0x14($sp)
    /* 10EA90 800FFAE0 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 10EA94 800FFAE4 02202025 */  or         $a0, $s1, $zero
    /* 10EA98 800FFAE8 0C008BE4 */  jal        guMtxXFML
    /* 10EA9C 800FFAEC 3C07447A */   lui       $a3, (0x447A0000 >> 16)
    /* 10EAA0 800FFAF0 C7AC0040 */  lwc1       $f12, 0x40($sp)
    /* 10EAA4 800FFAF4 C7AE0038 */  lwc1       $f14, 0x38($sp)
    /* 10EAA8 800FFAF8 C7A4004C */  lwc1       $f4, 0x4C($sp)
    /* 10EAAC 800FFAFC C7A6003C */  lwc1       $f6, 0x3C($sp)
    /* 10EAB0 800FFB00 C7A80048 */  lwc1       $f8, 0x48($sp)
    /* 10EAB4 800FFB04 C7B00044 */  lwc1       $f16, 0x44($sp)
    /* 10EAB8 800FFB08 46046301 */  sub.s      $f12, $f12, $f4
    /* 10EABC 800FFB0C 46083281 */  sub.s      $f10, $f6, $f8
    /* 10EAC0 800FFB10 E7AC0040 */  swc1       $f12, 0x40($sp)
    /* 10EAC4 800FFB14 46107381 */  sub.s      $f14, $f14, $f16
    /* 10EAC8 800FFB18 E7AA003C */  swc1       $f10, 0x3C($sp)
    /* 10EACC 800FFB1C 0C000E09 */  jal        func_80003824_4424
    /* 10EAD0 800FFB20 E7AE0038 */   swc1      $f14, 0x38($sp)
    /* 10EAD4 800FFB24 C7A00040 */  lwc1       $f0, 0x40($sp)
    /* 10EAD8 800FFB28 C7AE0038 */  lwc1       $f14, 0x38($sp)
    /* 10EADC 800FFB2C 24184000 */  addiu      $t8, $zero, 0x4000
    /* 10EAE0 800FFB30 46000482 */  mul.s      $f18, $f0, $f0
    /* 10EAE4 800FFB34 0302C823 */  subu       $t9, $t8, $v0
    /* 10EAE8 800FFB38 3C018016 */  lui        $at, %hi(D_8015927E)
    /* 10EAEC 800FFB3C 460E7102 */  mul.s      $f4, $f14, $f14
    /* 10EAF0 800FFB40 A439927E */  sh         $t9, %lo(D_8015927E)($at)
    /* 10EAF4 800FFB44 0C007650 */  jal        sqrtf
    /* 10EAF8 800FFB48 46049300 */   add.s     $f12, $f18, $f4
    /* 10EAFC 800FFB4C E7A00040 */  swc1       $f0, 0x40($sp)
    /* 10EB00 800FFB50 46000306 */  mov.s      $f12, $f0
    /* 10EB04 800FFB54 0C000E09 */  jal        func_80003824_4424
    /* 10EB08 800FFB58 C7AE003C */   lwc1      $f14, 0x3C($sp)
    /* 10EB0C 800FFB5C 00024023 */  negu       $t0, $v0
    /* 10EB10 800FFB60 3C018016 */  lui        $at, %hi(D_80159280)
    /* 10EB14 800FFB64 A4289280 */  sh         $t0, %lo(D_80159280)($at)
    /* 10EB18 800FFB68 860B001C */  lh         $t3, 0x1C($s0)
    /* 10EB1C 800FFB6C 860A001A */  lh         $t2, 0x1A($s0)
    /* 10EB20 800FFB70 86090018 */  lh         $t1, 0x18($s0)
    /* 10EB24 800FFB74 448B5000 */  mtc1       $t3, $f10
    /* 10EB28 800FFB78 448A4000 */  mtc1       $t2, $f8
    /* 10EB2C 800FFB7C 44893000 */  mtc1       $t1, $f6
    /* 10EB30 800FFB80 468052A0 */  cvt.s.w    $f10, $f10
    /* 10EB34 800FFB84 3C0C8016 */  lui        $t4, %hi(D_80159284)
    /* 10EB38 800FFB88 3C0D8016 */  lui        $t5, %hi(D_80159288)
    /* 10EB3C 800FFB8C 3C0E8016 */  lui        $t6, %hi(D_8015928C)
    /* 10EB40 800FFB90 25CE928C */  addiu      $t6, $t6, %lo(D_8015928C)
    /* 10EB44 800FFB94 46804220 */  cvt.s.w    $f8, $f8
    /* 10EB48 800FFB98 25AD9288 */  addiu      $t5, $t5, %lo(D_80159288)
    /* 10EB4C 800FFB9C 258C9284 */  addiu      $t4, $t4, %lo(D_80159284)
    /* 10EB50 800FFBA0 44075000 */  mfc1       $a3, $f10
    /* 10EB54 800FFBA4 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 10EB58 800FFBA8 468031A0 */  cvt.s.w    $f6, $f6
    /* 10EB5C 800FFBAC 44064000 */  mfc1       $a2, $f8
    /* 10EB60 800FFBB0 AFAD0014 */  sw         $t5, 0x14($sp)
    /* 10EB64 800FFBB4 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 10EB68 800FFBB8 02202025 */  or         $a0, $s1, $zero
    /* 10EB6C 800FFBBC 44053000 */  mfc1       $a1, $f6
    /* 10EB70 800FFBC0 0C008BE4 */  jal        guMtxXFML
    /* 10EB74 800FFBC4 00000000 */   nop
    /* 10EB78 800FFBC8 860F0048 */  lh         $t7, 0x48($s0)
    /* 10EB7C 800FFBCC 8618004A */  lh         $t8, 0x4A($s0)
    /* 10EB80 800FFBD0 8619004C */  lh         $t9, 0x4C($s0)
    /* 10EB84 800FFBD4 448F8000 */  mtc1       $t7, $f16
    /* 10EB88 800FFBD8 44989000 */  mtc1       $t8, $f18
    /* 10EB8C 800FFBDC 44992000 */  mtc1       $t9, $f4
    /* 10EB90 800FFBE0 46808420 */  cvt.s.w    $f16, $f16
    /* 10EB94 800FFBE4 3C088016 */  lui        $t0, %hi(D_80159290)
    /* 10EB98 800FFBE8 3C098016 */  lui        $t1, %hi(D_80159294)
    /* 10EB9C 800FFBEC 3C0A8016 */  lui        $t2, %hi(D_80159298)
    /* 10EBA0 800FFBF0 254A9298 */  addiu      $t2, $t2, %lo(D_80159298)
    /* 10EBA4 800FFBF4 468094A0 */  cvt.s.w    $f18, $f18
    /* 10EBA8 800FFBF8 25299294 */  addiu      $t1, $t1, %lo(D_80159294)
    /* 10EBAC 800FFBFC 25089290 */  addiu      $t0, $t0, %lo(D_80159290)
    /* 10EBB0 800FFC00 44058000 */  mfc1       $a1, $f16
    /* 10EBB4 800FFC04 AFA80010 */  sw         $t0, 0x10($sp)
    /* 10EBB8 800FFC08 46802120 */  cvt.s.w    $f4, $f4
    /* 10EBBC 800FFC0C 44069000 */  mfc1       $a2, $f18
    /* 10EBC0 800FFC10 AFA90014 */  sw         $t1, 0x14($sp)
    /* 10EBC4 800FFC14 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 10EBC8 800FFC18 02202025 */  or         $a0, $s1, $zero
    /* 10EBCC 800FFC1C 44072000 */  mfc1       $a3, $f4
    /* 10EBD0 800FFC20 0C008BE4 */  jal        guMtxXFML
    /* 10EBD4 800FFC24 00000000 */   nop
    /* 10EBD8 800FFC28 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 10EBDC 800FFC2C 8FB00024 */  lw         $s0, 0x24($sp)
    /* 10EBE0 800FFC30 8FB10028 */  lw         $s1, 0x28($sp)
    /* 10EBE4 800FFC34 03E00008 */  jr         $ra
    /* 10EBE8 800FFC38 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_800FFA00_10E9B0
