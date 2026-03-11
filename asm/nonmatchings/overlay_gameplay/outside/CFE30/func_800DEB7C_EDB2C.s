nonmatching func_800DEB7C_EDB2C, 0x2E0

glabel func_800DEB7C_EDB2C
    /* EDB2C 800DEB7C 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* EDB30 800DEB80 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* EDB34 800DEB84 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* EDB38 800DEB88 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* EDB3C 800DEB8C 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* EDB40 800DEB90 AFBF001C */  sw         $ra, 0x1C($sp)
    /* EDB44 800DEB94 AFA40048 */  sw         $a0, 0x48($sp)
    /* EDB48 800DEB98 AFA5004C */  sw         $a1, 0x4C($sp)
    /* EDB4C 800DEB9C AFA60050 */  sw         $a2, 0x50($sp)
    /* EDB50 800DEBA0 000E7880 */  sll        $t7, $t6, 2
    /* EDB54 800DEBA4 9078001A */  lbu        $t8, 0x1A($v1)
    /* EDB58 800DEBA8 01EE7823 */  subu       $t7, $t7, $t6
    /* EDB5C 800DEBAC 000F78C0 */  sll        $t7, $t7, 3
    /* EDB60 800DEBB0 01EE7823 */  subu       $t7, $t7, $t6
    /* EDB64 800DEBB4 000F7880 */  sll        $t7, $t7, 2
    /* EDB68 800DEBB8 3C098014 */  lui        $t1, %hi(D_8013DB10)
    /* EDB6C 800DEBBC 0018C880 */  sll        $t9, $t8, 2
    /* EDB70 800DEBC0 01F94021 */  addu       $t0, $t7, $t9
    /* EDB74 800DEBC4 2529DB10 */  addiu      $t1, $t1, %lo(D_8013DB10)
    /* EDB78 800DEBC8 01091021 */  addu       $v0, $t0, $t1
    /* EDB7C 800DEBCC 804AFFA4 */  lb         $t2, -0x5C($v0)
    /* EDB80 800DEBD0 804CFFA5 */  lb         $t4, -0x5B($v0)
    /* EDB84 800DEBD4 804EFFA7 */  lb         $t6, -0x59($v0)
    /* EDB88 800DEBD8 3087FFFF */  andi       $a3, $a0, 0xFFFF
    /* EDB8C 800DEBDC 000A5840 */  sll        $t3, $t2, 1
    /* EDB90 800DEBE0 000C6840 */  sll        $t5, $t4, 1
    /* EDB94 800DEBE4 A7AB003E */  sh         $t3, 0x3E($sp)
    /* EDB98 800DEBE8 A7AD003C */  sh         $t5, 0x3C($sp)
    /* EDB9C 800DEBEC 04E10003 */  bgez       $a3, .L800DEBFC_EDBAC
    /* EDBA0 800DEBF0 0007C083 */   sra       $t8, $a3, 2
    /* EDBA4 800DEBF4 24E10003 */  addiu      $at, $a3, 0x3
    /* EDBA8 800DEBF8 0001C083 */  sra        $t8, $at, 2
  .L800DEBFC_EDBAC:
    /* EDBAC 800DEBFC 01D87821 */  addu       $t7, $t6, $t8
    /* EDBB0 800DEC00 A3AF003B */  sb         $t7, 0x3B($sp)
    /* EDBB4 800DEC04 0C007660 */  jal        sins
    /* EDBB8 800DEC08 94640006 */   lhu       $a0, 0x6($v1)
    /* EDBBC 800DEC0C 3C198005 */  lui        $t9, %hi(D_80052B34)
    /* EDBC0 800DEC10 8F392B34 */  lw         $t9, %lo(D_80052B34)($t9)
    /* EDBC4 800DEC14 A7A20036 */  sh         $v0, 0x36($sp)
    /* EDBC8 800DEC18 0C007654 */  jal        coss
    /* EDBCC 800DEC1C 97240006 */   lhu       $a0, 0x6($t9)
    /* EDBD0 800DEC20 0C000E38 */  jal        func_800038E0_44E0
    /* EDBD4 800DEC24 A7A20038 */   sh        $v0, 0x38($sp)
    /* EDBD8 800DEC28 87AB0038 */  lh         $t3, 0x38($sp)
    /* EDBDC 800DEC2C 87A8003E */  lh         $t0, 0x3E($sp)
    /* EDBE0 800DEC30 87A90052 */  lh         $t1, 0x52($sp)
    /* EDBE4 800DEC34 448B8000 */  mtc1       $t3, $f16
    /* EDBE8 800DEC38 44882000 */  mtc1       $t0, $f4
    /* EDBEC 800DEC3C 44893000 */  mtc1       $t1, $f6
    /* EDBF0 800DEC40 468084A0 */  cvt.s.w    $f18, $f16
    /* EDBF4 800DEC44 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* EDBF8 800DEC48 44816800 */  mtc1       $at, $f13
    /* EDBFC 800DEC4C 44806000 */  mtc1       $zero, $f12
    /* EDC00 800DEC50 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* EDC04 800DEC54 46802021 */  cvt.d.w    $f0, $f4
    /* EDC08 800DEC58 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* EDC0C 800DEC5C 87AC0036 */  lh         $t4, 0x36($sp)
    /* EDC10 800DEC60 3C014010 */  lui        $at, (0x40100000 >> 16)
    /* EDC14 800DEC64 46009121 */  cvt.d.s    $f4, $f18
    /* EDC18 800DEC68 468030A1 */  cvt.d.w    $f2, $f6
    /* EDC1C 800DEC6C 846A0000 */  lh         $t2, 0x0($v1)
    /* EDC20 800DEC70 448C9000 */  mtc1       $t4, $f18
    /* EDC24 800DEC74 87B9003C */  lh         $t9, 0x3C($sp)
    /* EDC28 800DEC78 462C2183 */  div.d      $f6, $f4, $f12
    /* EDC2C 800DEC7C 448A4000 */  mtc1       $t2, $f8
    /* EDC30 800DEC80 00000000 */  nop
    /* EDC34 800DEC84 468042A1 */  cvt.d.w    $f10, $f8
    /* EDC38 800DEC88 46809120 */  cvt.s.w    $f4, $f18
    /* EDC3C 800DEC8C 46203202 */  mul.d      $f8, $f6, $f0
    /* EDC40 800DEC90 460021A1 */  cvt.d.s    $f6, $f4
    /* EDC44 800DEC94 46285400 */  add.d      $f16, $f10, $f8
    /* EDC48 800DEC98 462C3283 */  div.d      $f10, $f6, $f12
    /* EDC4C 800DEC9C 46225202 */  mul.d      $f8, $f10, $f2
    /* EDC50 800DECA0 46288480 */  add.d      $f18, $f16, $f8
    /* EDC54 800DECA4 04410004 */  bgez       $v0, .L800DECB8_EDC68
    /* EDC58 800DECA8 304D0007 */   andi      $t5, $v0, 0x7
    /* EDC5C 800DECAC 11A00002 */  beqz       $t5, .L800DECB8_EDC68
    /* EDC60 800DECB0 00000000 */   nop
    /* EDC64 800DECB4 25ADFFF8 */  addiu      $t5, $t5, -0x8
  .L800DECB8_EDC68:
    /* EDC68 800DECB8 448D2000 */  mtc1       $t5, $f4
    /* EDC6C 800DECBC 44808000 */  mtc1       $zero, $f16
    /* EDC70 800DECC0 44818800 */  mtc1       $at, $f17
    /* EDC74 800DECC4 468021A1 */  cvt.d.w    $f6, $f4
    /* EDC78 800DECC8 46323280 */  add.d      $f10, $f6, $f18
    /* EDC7C 800DECCC 46305201 */  sub.d      $f8, $f10, $f16
    /* EDC80 800DECD0 4620410D */  trunc.w.d  $f4, $f8
    /* EDC84 800DECD4 44182000 */  mfc1       $t8, $f4
    /* EDC88 800DECD8 00000000 */  nop
    /* EDC8C 800DECDC A7B80046 */  sh         $t8, 0x46($sp)
    /* EDC90 800DECE0 846F0002 */  lh         $t7, 0x2($v1)
    /* EDC94 800DECE4 01F94021 */  addu       $t0, $t7, $t9
    /* EDC98 800DECE8 A7A80044 */  sh         $t0, 0x44($sp)
    /* EDC9C 800DECEC 94640006 */  lhu        $a0, 0x6($v1)
    /* EDCA0 800DECF0 F7A20020 */  sdc1       $f2, 0x20($sp)
    /* EDCA4 800DECF4 0C007654 */  jal        coss
    /* EDCA8 800DECF8 F7A00028 */   sdc1      $f0, 0x28($sp)
    /* EDCAC 800DECFC 3C098005 */  lui        $t1, %hi(D_80052B34)
    /* EDCB0 800DED00 8D292B34 */  lw         $t1, %lo(D_80052B34)($t1)
    /* EDCB4 800DED04 A7A20036 */  sh         $v0, 0x36($sp)
    /* EDCB8 800DED08 0C007660 */  jal        sins
    /* EDCBC 800DED0C 95240006 */   lhu       $a0, 0x6($t1)
    /* EDCC0 800DED10 0C000E38 */  jal        func_800038E0_44E0
    /* EDCC4 800DED14 A7A20038 */   sh        $v0, 0x38($sp)
    /* EDCC8 800DED18 87AC0038 */  lh         $t4, 0x38($sp)
    /* EDCCC 800DED1C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* EDCD0 800DED20 44816800 */  mtc1       $at, $f13
    /* EDCD4 800DED24 448C5000 */  mtc1       $t4, $f10
    /* EDCD8 800DED28 44806000 */  mtc1       $zero, $f12
    /* EDCDC 800DED2C 3C0A8005 */  lui        $t2, %hi(D_80052B34)
    /* EDCE0 800DED30 46805420 */  cvt.s.w    $f16, $f10
    /* EDCE4 800DED34 8D4A2B34 */  lw         $t2, %lo(D_80052B34)($t2)
    /* EDCE8 800DED38 87AD0036 */  lh         $t5, 0x36($sp)
    /* EDCEC 800DED3C D7A00028 */  ldc1       $f0, 0x28($sp)
    /* EDCF0 800DED40 854B0004 */  lh         $t3, 0x4($t2)
    /* EDCF4 800DED44 D7A20020 */  ldc1       $f2, 0x20($sp)
    /* EDCF8 800DED48 46008221 */  cvt.d.s    $f8, $f16
    /* EDCFC 800DED4C 448B3000 */  mtc1       $t3, $f6
    /* EDD00 800DED50 462C4103 */  div.d      $f4, $f8, $f12
    /* EDD04 800DED54 448D8000 */  mtc1       $t5, $f16
    /* EDD08 800DED58 3C014010 */  lui        $at, (0x40100000 >> 16)
    /* EDD0C 800DED5C 93A8003B */  lbu        $t0, 0x3B($sp)
    /* EDD10 800DED60 468034A1 */  cvt.d.w    $f18, $f6
    /* EDD14 800DED64 87A40046 */  lh         $a0, 0x46($sp)
    /* EDD18 800DED68 87A50044 */  lh         $a1, 0x44($sp)
    /* EDD1C 800DED6C 24070003 */  addiu      $a3, $zero, 0x3
    /* EDD20 800DED70 46808220 */  cvt.s.w    $f8, $f16
    /* EDD24 800DED74 AFA80010 */  sw         $t0, 0x10($sp)
    /* EDD28 800DED78 46202182 */  mul.d      $f6, $f4, $f0
    /* EDD2C 800DED7C 46004121 */  cvt.d.s    $f4, $f8
    /* EDD30 800DED80 46269280 */  add.d      $f10, $f18, $f6
    /* EDD34 800DED84 462C2483 */  div.d      $f18, $f4, $f12
    /* EDD38 800DED88 46229182 */  mul.d      $f6, $f18, $f2
    /* EDD3C 800DED8C 46265401 */  sub.d      $f16, $f10, $f6
    /* EDD40 800DED90 04410004 */  bgez       $v0, .L800DEDA4_EDD54
    /* EDD44 800DED94 304E0007 */   andi      $t6, $v0, 0x7
    /* EDD48 800DED98 11C00002 */  beqz       $t6, .L800DEDA4_EDD54
    /* EDD4C 800DED9C 00000000 */   nop
    /* EDD50 800DEDA0 25CEFFF8 */  addiu      $t6, $t6, -0x8
  .L800DEDA4_EDD54:
    /* EDD54 800DEDA4 448E4000 */  mtc1       $t6, $f8
    /* EDD58 800DEDA8 44805000 */  mtc1       $zero, $f10
    /* EDD5C 800DEDAC 44815800 */  mtc1       $at, $f11
    /* EDD60 800DEDB0 46804121 */  cvt.d.w    $f4, $f8
    /* EDD64 800DEDB4 46302480 */  add.d      $f18, $f4, $f16
    /* EDD68 800DEDB8 462A9181 */  sub.d      $f6, $f18, $f10
    /* EDD6C 800DEDBC 4620320D */  trunc.w.d  $f8, $f6
    /* EDD70 800DEDC0 44064000 */  mfc1       $a2, $f8
    /* EDD74 800DEDC4 00000000 */  nop
    /* EDD78 800DEDC8 00067C00 */  sll        $t7, $a2, 16
    /* EDD7C 800DEDCC 0C0376D8 */  jal        func_800DDB60_ECB10
    /* EDD80 800DEDD0 000F3403 */   sra       $a2, $t7, 16
    /* EDD84 800DEDD4 240100FF */  addiu      $at, $zero, 0xFF
    /* EDD88 800DEDD8 1041001C */  beq        $v0, $at, .L800DEE4C_EDDFC
    /* EDD8C 800DEDDC 93A5004F */   lbu       $a1, 0x4F($sp)
    /* EDD90 800DEDE0 93A4003B */  lbu        $a0, 0x3B($sp)
    /* EDD94 800DEDE4 304900FF */  andi       $t1, $v0, 0xFF
    /* EDD98 800DEDE8 00095080 */  sll        $t2, $t1, 2
    /* EDD9C 800DEDEC 01495021 */  addu       $t2, $t2, $t1
    /* EDDA0 800DEDF0 3C0B8015 */  lui        $t3, %hi(D_80156EF0)
    /* EDDA4 800DEDF4 256B6EF0 */  addiu      $t3, $t3, %lo(D_80156EF0)
    /* EDDA8 800DEDF8 000A5080 */  sll        $t2, $t2, 2
    /* EDDAC 800DEDFC 014B1821 */  addu       $v1, $t2, $t3
    /* EDDB0 800DEE00 04A10003 */  bgez       $a1, .L800DEE10_EDDC0
    /* EDDB4 800DEE04 00056043 */   sra       $t4, $a1, 1
    /* EDDB8 800DEE08 24A10001 */  addiu      $at, $a1, 0x1
    /* EDDBC 800DEE0C 00016043 */  sra        $t4, $at, 1
  .L800DEE10_EDDC0:
    /* EDDC0 800DEE10 2401000C */  addiu      $at, $zero, 0xC
    /* EDDC4 800DEE14 0081001A */  div        $zero, $a0, $at
    /* EDDC8 800DEE18 240D00DC */  addiu      $t5, $zero, 0xDC
    /* EDDCC 800DEE1C 0000C012 */  mflo       $t8
    /* EDDD0 800DEE20 01AC7023 */  subu       $t6, $t5, $t4
    /* EDDD4 800DEE24 A06E000D */  sb         $t6, 0xD($v1)
    /* EDDD8 800DEE28 A0650006 */  sb         $a1, 0x6($v1)
    /* EDDDC 800DEE2C A0650007 */  sb         $a1, 0x7($v1)
    /* EDDE0 800DEE30 A0650008 */  sb         $a1, 0x8($v1)
    /* EDDE4 800DEE34 A0780010 */  sb         $t8, 0x10($v1)
    /* EDDE8 800DEE38 04810003 */  bgez       $a0, .L800DEE48_EDDF8
    /* EDDEC 800DEE3C 000478C3 */   sra       $t7, $a0, 3
    /* EDDF0 800DEE40 24810007 */  addiu      $at, $a0, 0x7
    /* EDDF4 800DEE44 000178C3 */  sra        $t7, $at, 3
  .L800DEE48_EDDF8:
    /* EDDF8 800DEE48 A06F0011 */  sb         $t7, 0x11($v1)
  .L800DEE4C_EDDFC:
    /* EDDFC 800DEE4C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* EDE00 800DEE50 27BD0048 */  addiu      $sp, $sp, 0x48
    /* EDE04 800DEE54 03E00008 */  jr         $ra
    /* EDE08 800DEE58 00000000 */   nop
endlabel func_800DEB7C_EDB2C
