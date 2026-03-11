nonmatching func_802DE9B8_1F76C8, 0x460

glabel func_802DE9B8_1F76C8
    /* 1F76C8 802DE9B8 27BDFF68 */  addiu      $sp, $sp, -0x98
    /* 1F76CC 802DE9BC 3C18802E */  lui        $t8, %hi(D_802E0CB4)
    /* 1F76D0 802DE9C0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1F76D4 802DE9C4 AFB00018 */  sw         $s0, 0x18($sp)
    /* 1F76D8 802DE9C8 AFA40098 */  sw         $a0, 0x98($sp)
    /* 1F76DC 802DE9CC 27180CB4 */  addiu      $t8, $t8, %lo(D_802E0CB4)
    /* 1F76E0 802DE9D0 8F010000 */  lw         $at, 0x0($t8)
    /* 1F76E4 802DE9D4 27AF0090 */  addiu      $t7, $sp, 0x90
    /* 1F76E8 802DE9D8 3C0C802E */  lui        $t4, %hi(D_802E0CBC)
    /* 1F76EC 802DE9DC ADE10000 */  sw         $at, 0x0($t7)
    /* 1F76F0 802DE9E0 97010004 */  lhu        $at, 0x4($t8)
    /* 1F76F4 802DE9E4 258C0CBC */  addiu      $t4, $t4, %lo(D_802E0CBC)
    /* 1F76F8 802DE9E8 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F76FC 802DE9EC A5E10004 */  sh         $at, 0x4($t7)
    /* 1F7700 802DE9F0 8D810000 */  lw         $at, 0x0($t4)
    /* 1F7704 802DE9F4 01C02025 */  or         $a0, $t6, $zero
    /* 1F7708 802DE9F8 27AE0088 */  addiu      $t6, $sp, 0x88
    /* 1F770C 802DE9FC ADC10000 */  sw         $at, 0x0($t6)
    /* 1F7710 802DEA00 95810004 */  lhu        $at, 0x4($t4)
    /* 1F7714 802DEA04 00046880 */  sll        $t5, $a0, 2
    /* 1F7718 802DEA08 01A46821 */  addu       $t5, $t5, $a0
    /* 1F771C 802DEA0C 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 1F7720 802DEA10 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 1F7724 802DEA14 000D6900 */  sll        $t5, $t5, 4
    /* 1F7728 802DEA18 01AF8021 */  addu       $s0, $t5, $t7
    /* 1F772C 802DEA1C A5C10004 */  sh         $at, 0x4($t6)
    /* 1F7730 802DEA20 9219001A */  lbu        $t9, 0x1A($s0)
    /* 1F7734 802DEA24 920E0025 */  lbu        $t6, 0x25($s0)
    /* 1F7738 802DEA28 A3A4009B */  sb         $a0, 0x9B($sp)
    /* 1F773C 802DEA2C 00002825 */  or         $a1, $zero, $zero
    /* 1F7740 802DEA30 2406FFFF */  addiu      $a2, $zero, -0x1
    /* 1F7744 802DEA34 240700C6 */  addiu      $a3, $zero, 0xC6
    /* 1F7748 802DEA38 A3B90057 */  sb         $t9, 0x57($sp)
    /* 1F774C 802DEA3C 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 1F7750 802DEA40 A3AE0041 */   sb        $t6, 0x41($sp)
    /* 1F7754 802DEA44 93AC0041 */  lbu        $t4, 0x41($sp)
    /* 1F7758 802DEA48 240A0050 */  addiu      $t2, $zero, 0x50
    /* 1F775C 802DEA4C 3C098005 */  lui        $t1, %hi(alienInstances)
    /* 1F7760 802DEA50 018A0019 */  multu      $t4, $t2
    /* 1F7764 802DEA54 25298198 */  addiu      $t1, $t1, %lo(alienInstances)
    /* 1F7768 802DEA58 860E000C */  lh         $t6, 0xC($s0)
    /* 1F776C 802DEA5C 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* 1F7770 802DEA60 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* 1F7774 802DEA64 000E6100 */  sll        $t4, $t6, 4
    /* 1F7778 802DEA68 93A4009B */  lbu        $a0, 0x9B($sp)
    /* 1F777C 802DEA6C 24062000 */  addiu      $a2, $zero, 0x2000
    /* 1F7780 802DEA70 0000C012 */  mflo       $t8
    /* 1F7784 802DEA74 01383821 */  addu       $a3, $t1, $t8
    /* 1F7788 802DEA78 90ED0025 */  lbu        $t5, 0x25($a3)
    /* 1F778C 802DEA7C 006CC021 */  addu       $t8, $v1, $t4
    /* 1F7790 802DEA80 8305000C */  lb         $a1, 0xC($t8)
    /* 1F7794 802DEA84 01AA0019 */  multu      $t5, $t2
    /* 1F7798 802DEA88 AFA70030 */  sw         $a3, 0x30($sp)
    /* 1F779C 802DEA8C 00056900 */  sll        $t5, $a1, 4
    /* 1F77A0 802DEA90 006D5821 */  addu       $t3, $v1, $t5
    /* 1F77A4 802DEA94 8162000D */  lb         $v0, 0xD($t3)
    /* 1F77A8 802DEA98 AFAB002C */  sw         $t3, 0x2C($sp)
    /* 1F77AC 802DEA9C A7A50046 */  sh         $a1, 0x46($sp)
    /* 1F77B0 802DEAA0 00007812 */  mflo       $t7
    /* 1F77B4 802DEAA4 012FC821 */  addu       $t9, $t1, $t7
    /* 1F77B8 802DEAA8 00027900 */  sll        $t7, $v0, 4
    /* 1F77BC 802DEAAC AFB9003C */  sw         $t9, 0x3C($sp)
    /* 1F77C0 802DEAB0 006F4021 */  addu       $t0, $v1, $t7
    /* 1F77C4 802DEAB4 8119000D */  lb         $t9, 0xD($t0)
    /* 1F77C8 802DEAB8 AFA80028 */  sw         $t0, 0x28($sp)
    /* 1F77CC 802DEABC 0C02188C */  jal        func_80086230_951E0
    /* 1F77D0 802DEAC0 A7B90042 */   sh        $t9, 0x42($sp)
    /* 1F77D4 802DEAC4 8FAE0030 */  lw         $t6, 0x30($sp)
    /* 1F77D8 802DEAC8 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 1F77DC 802DEACC 8DC30020 */  lw         $v1, 0x20($t6)
    /* 1F77E0 802DEAD0 306C8000 */  andi       $t4, $v1, 0x8000
    /* 1F77E4 802DEAD4 5180007F */  beql       $t4, $zero, .L802DECD4_1F79E4
    /* 1F77E8 802DEAD8 30786000 */   andi      $t8, $v1, 0x6000
    /* 1F77EC 802DEADC 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 1F77F0 802DEAE0 0004C140 */  sll        $t8, $a0, 5
    /* 1F77F4 802DEAE4 0304C023 */  subu       $t8, $t8, $a0
    /* 1F77F8 802DEAE8 0018C080 */  sll        $t8, $t8, 2
    /* 1F77FC 802DEAEC 0304C021 */  addu       $t8, $t8, $a0
    /* 1F7800 802DEAF0 0018C100 */  sll        $t8, $t8, 4
    /* 1F7804 802DEAF4 0C007654 */  jal        coss
    /* 1F7808 802DEAF8 3304FFFF */   andi      $a0, $t8, 0xFFFF
    /* 1F780C 802DEAFC 44822000 */  mtc1       $v0, $f4
    /* 1F7810 802DEB00 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F7814 802DEB04 44815800 */  mtc1       $at, $f11
    /* 1F7818 802DEB08 468021A0 */  cvt.s.w    $f6, $f4
    /* 1F781C 802DEB0C 44805000 */  mtc1       $zero, $f10
    /* 1F7820 802DEB10 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 1F7824 802DEB14 44819800 */  mtc1       $at, $f19
    /* 1F7828 802DEB18 44809000 */  mtc1       $zero, $f18
    /* 1F782C 802DEB1C 3C01802E */  lui        $at, %hi(D_802E0F90)
    /* 1F7830 802DEB20 46003221 */  cvt.d.s    $f8, $f6
    /* 1F7834 802DEB24 D4260F90 */  ldc1       $f6, %lo(D_802E0F90)($at)
    /* 1F7838 802DEB28 462A4403 */  div.d      $f16, $f8, $f10
    /* 1F783C 802DEB2C 3C01802E */  lui        $at, %hi(D_802E0F98)
    /* 1F7840 802DEB30 D42A0F98 */  ldc1       $f10, %lo(D_802E0F98)($at)
    /* 1F7844 802DEB34 24190001 */  addiu      $t9, $zero, 0x1
    /* 1F7848 802DEB38 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* 1F784C 802DEB3C 8FAE0028 */  lw         $t6, 0x28($sp)
    /* 1F7850 802DEB40 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 1F7854 802DEB44 46328100 */  add.d      $f4, $f16, $f18
    /* 1F7858 802DEB48 46262202 */  mul.d      $f8, $f4, $f6
    /* 1F785C 802DEB4C 46285401 */  sub.d      $f16, $f10, $f8
    /* 1F7860 802DEB50 444FF800 */  cfc1       $t7, $31
    /* 1F7864 802DEB54 44D9F800 */  ctc1       $t9, $31
    /* 1F7868 802DEB58 00000000 */  nop
    /* 1F786C 802DEB5C 462084A4 */  cvt.w.d    $f18, $f16
    /* 1F7870 802DEB60 4459F800 */  cfc1       $t9, $31
    /* 1F7874 802DEB64 00000000 */  nop
    /* 1F7878 802DEB68 33390078 */  andi       $t9, $t9, 0x78
    /* 1F787C 802DEB6C 53200014 */  beql       $t9, $zero, .L802DEBC0_1F78D0
    /* 1F7880 802DEB70 44199000 */   mfc1      $t9, $f18
    /* 1F7884 802DEB74 44819800 */  mtc1       $at, $f19
    /* 1F7888 802DEB78 44809000 */  mtc1       $zero, $f18
    /* 1F788C 802DEB7C 24190001 */  addiu      $t9, $zero, 0x1
    /* 1F7890 802DEB80 46328481 */  sub.d      $f18, $f16, $f18
    /* 1F7894 802DEB84 44D9F800 */  ctc1       $t9, $31
    /* 1F7898 802DEB88 00000000 */  nop
    /* 1F789C 802DEB8C 462094A4 */  cvt.w.d    $f18, $f18
    /* 1F78A0 802DEB90 4459F800 */  cfc1       $t9, $31
    /* 1F78A4 802DEB94 00000000 */  nop
    /* 1F78A8 802DEB98 33390078 */  andi       $t9, $t9, 0x78
    /* 1F78AC 802DEB9C 17200005 */  bnez       $t9, .L802DEBB4_1F78C4
    /* 1F78B0 802DEBA0 00000000 */   nop
    /* 1F78B4 802DEBA4 44199000 */  mfc1       $t9, $f18
    /* 1F78B8 802DEBA8 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 1F78BC 802DEBAC 10000007 */  b          .L802DEBCC_1F78DC
    /* 1F78C0 802DEBB0 0321C825 */   or        $t9, $t9, $at
  .L802DEBB4_1F78C4:
    /* 1F78C4 802DEBB4 10000005 */  b          .L802DEBCC_1F78DC
    /* 1F78C8 802DEBB8 2419FFFF */   addiu     $t9, $zero, -0x1
    /* 1F78CC 802DEBBC 44199000 */  mfc1       $t9, $f18
  .L802DEBC0_1F78D0:
    /* 1F78D0 802DEBC0 00000000 */  nop
    /* 1F78D4 802DEBC4 0720FFFB */  bltz       $t9, .L802DEBB4_1F78C4
    /* 1F78D8 802DEBC8 00000000 */   nop
  .L802DEBCC_1F78DC:
    /* 1F78DC 802DEBCC A5D90006 */  sh         $t9, 0x6($t6)
    /* 1F78E0 802DEBD0 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 1F78E4 802DEBD4 44CFF800 */  ctc1       $t7, $31
    /* 1F78E8 802DEBD8 00046140 */  sll        $t4, $a0, 5
    /* 1F78EC 802DEBDC 01846023 */  subu       $t4, $t4, $a0
    /* 1F78F0 802DEBE0 000C6080 */  sll        $t4, $t4, 2
    /* 1F78F4 802DEBE4 01846021 */  addu       $t4, $t4, $a0
    /* 1F78F8 802DEBE8 000C6100 */  sll        $t4, $t4, 4
    /* 1F78FC 802DEBEC 0C007654 */  jal        coss
    /* 1F7900 802DEBF0 3184FFFF */   andi      $a0, $t4, 0xFFFF
    /* 1F7904 802DEBF4 44822000 */  mtc1       $v0, $f4
    /* 1F7908 802DEBF8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F790C 802DEBFC 44814800 */  mtc1       $at, $f9
    /* 1F7910 802DEC00 468021A0 */  cvt.s.w    $f6, $f4
    /* 1F7914 802DEC04 44804000 */  mtc1       $zero, $f8
    /* 1F7918 802DEC08 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 1F791C 802DEC0C 44819800 */  mtc1       $at, $f19
    /* 1F7920 802DEC10 44809000 */  mtc1       $zero, $f18
    /* 1F7924 802DEC14 3C01802E */  lui        $at, %hi(D_802E0FA0)
    /* 1F7928 802DEC18 460032A1 */  cvt.d.s    $f10, $f6
    /* 1F792C 802DEC1C D4260FA0 */  ldc1       $f6, %lo(D_802E0FA0)($at)
    /* 1F7930 802DEC20 46285403 */  div.d      $f16, $f10, $f8
    /* 1F7934 802DEC24 240F0001 */  addiu      $t7, $zero, 0x1
    /* 1F7938 802DEC28 87B90042 */  lh         $t9, 0x42($sp)
    /* 1F793C 802DEC2C 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* 1F7940 802DEC30 00197100 */  sll        $t6, $t9, 4
    /* 1F7944 802DEC34 46328100 */  add.d      $f4, $f16, $f18
    /* 1F7948 802DEC38 46262282 */  mul.d      $f10, $f4, $f6
    /* 1F794C 802DEC3C 444DF800 */  cfc1       $t5, $31
    /* 1F7950 802DEC40 44CFF800 */  ctc1       $t7, $31
    /* 1F7954 802DEC44 00000000 */  nop
    /* 1F7958 802DEC48 46205224 */  cvt.w.d    $f8, $f10
    /* 1F795C 802DEC4C 444FF800 */  cfc1       $t7, $31
    /* 1F7960 802DEC50 00000000 */  nop
    /* 1F7964 802DEC54 31EF0078 */  andi       $t7, $t7, 0x78
    /* 1F7968 802DEC58 51E00014 */  beql       $t7, $zero, .L802DECAC_1F79BC
    /* 1F796C 802DEC5C 440F4000 */   mfc1      $t7, $f8
    /* 1F7970 802DEC60 44814800 */  mtc1       $at, $f9
    /* 1F7974 802DEC64 44804000 */  mtc1       $zero, $f8
    /* 1F7978 802DEC68 240F0001 */  addiu      $t7, $zero, 0x1
    /* 1F797C 802DEC6C 46285201 */  sub.d      $f8, $f10, $f8
    /* 1F7980 802DEC70 44CFF800 */  ctc1       $t7, $31
    /* 1F7984 802DEC74 00000000 */  nop
    /* 1F7988 802DEC78 46204224 */  cvt.w.d    $f8, $f8
    /* 1F798C 802DEC7C 444FF800 */  cfc1       $t7, $31
    /* 1F7990 802DEC80 00000000 */  nop
    /* 1F7994 802DEC84 31EF0078 */  andi       $t7, $t7, 0x78
    /* 1F7998 802DEC88 15E00005 */  bnez       $t7, .L802DECA0_1F79B0
    /* 1F799C 802DEC8C 00000000 */   nop
    /* 1F79A0 802DEC90 440F4000 */  mfc1       $t7, $f8
    /* 1F79A4 802DEC94 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 1F79A8 802DEC98 10000007 */  b          .L802DECB8_1F79C8
    /* 1F79AC 802DEC9C 01E17825 */   or        $t7, $t7, $at
  .L802DECA0_1F79B0:
    /* 1F79B0 802DECA0 10000005 */  b          .L802DECB8_1F79C8
    /* 1F79B4 802DECA4 240FFFFF */   addiu     $t7, $zero, -0x1
    /* 1F79B8 802DECA8 440F4000 */  mfc1       $t7, $f8
  .L802DECAC_1F79BC:
    /* 1F79BC 802DECAC 00000000 */  nop
    /* 1F79C0 802DECB0 05E0FFFB */  bltz       $t7, .L802DECA0_1F79B0
    /* 1F79C4 802DECB4 00000000 */   nop
  .L802DECB8_1F79C8:
    /* 1F79C8 802DECB8 8FAC0030 */  lw         $t4, 0x30($sp)
    /* 1F79CC 802DECBC 3C018015 */  lui        $at, %hi(D_8014DD56)
    /* 1F79D0 802DECC0 002E0821 */  addu       $at, $at, $t6
    /* 1F79D4 802DECC4 44CDF800 */  ctc1       $t5, $31
    /* 1F79D8 802DECC8 A42FDD56 */  sh         $t7, %lo(D_8014DD56)($at)
    /* 1F79DC 802DECCC 8D830020 */  lw         $v1, 0x20($t4)
    /* 1F79E0 802DECD0 30786000 */  andi       $t8, $v1, 0x6000
  .L802DECD4_1F79E4:
    /* 1F79E4 802DECD4 24016000 */  addiu      $at, $zero, 0x6000
    /* 1F79E8 802DECD8 1701004A */  bne        $t8, $at, .L802DEE04_1F7B14
    /* 1F79EC 802DECDC 8FAD003C */   lw        $t5, 0x3C($sp)
    /* 1F79F0 802DECE0 8DB90020 */  lw         $t9, 0x20($t5)
    /* 1F79F4 802DECE4 332F1000 */  andi       $t7, $t9, 0x1000
    /* 1F79F8 802DECE8 55E00047 */  bnel       $t7, $zero, .L802DEE08_1F7B18
    /* 1F79FC 802DECEC 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 1F7A00 802DECF0 8602001E */  lh         $v0, 0x1E($s0)
    /* 1F7A04 802DECF4 93A4009B */  lbu        $a0, 0x9B($sp)
    /* 1F7A08 802DECF8 93A50047 */  lbu        $a1, 0x47($sp)
    /* 1F7A0C 802DECFC 10400003 */  beqz       $v0, .L802DED0C_1F7A1C
    /* 1F7A10 802DED00 244EFFFF */   addiu     $t6, $v0, -0x1
    /* 1F7A14 802DED04 1000003F */  b          .L802DEE04_1F7B14
    /* 1F7A18 802DED08 A60E001E */   sh        $t6, 0x1E($s0)
  .L802DED0C_1F7A1C:
    /* 1F7A1C 802DED0C 0C021472 */  jal        func_800851C8_94178
    /* 1F7A20 802DED10 24060800 */   addiu     $a2, $zero, 0x800
    /* 1F7A24 802DED14 1040003B */  beqz       $v0, .L802DEE04_1F7B14
    /* 1F7A28 802DED18 8FAC003C */   lw        $t4, 0x3C($sp)
    /* 1F7A2C 802DED1C 8D980020 */  lw         $t8, 0x20($t4)
    /* 1F7A30 802DED20 83A40047 */  lb         $a0, 0x47($sp)
    /* 1F7A34 802DED24 27A50090 */  addiu      $a1, $sp, 0x90
    /* 1F7A38 802DED28 330D2000 */  andi       $t5, $t8, 0x2000
    /* 1F7A3C 802DED2C 15A00035 */  bnez       $t5, .L802DEE04_1F7B14
    /* 1F7A40 802DED30 27A6007C */   addiu     $a2, $sp, 0x7C
    /* 1F7A44 802DED34 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 1F7A48 802DED38 AFA40030 */   sw        $a0, 0x30($sp)
    /* 1F7A4C 802DED3C 8FA40030 */  lw         $a0, 0x30($sp)
    /* 1F7A50 802DED40 27A50088 */  addiu      $a1, $sp, 0x88
    /* 1F7A54 802DED44 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 1F7A58 802DED48 27A60070 */   addiu     $a2, $sp, 0x70
    /* 1F7A5C 802DED4C 93B90057 */  lbu        $t9, 0x57($sp)
    /* 1F7A60 802DED50 3C0E8025 */  lui        $t6, %hi(alienSpecs)
    /* 1F7A64 802DED54 25CE6680 */  addiu      $t6, $t6, %lo(alienSpecs)
    /* 1F7A68 802DED58 00197880 */  sll        $t7, $t9, 2
    /* 1F7A6C 802DED5C 01F97823 */  subu       $t7, $t7, $t9
    /* 1F7A70 802DED60 000F7880 */  sll        $t7, $t7, 2
    /* 1F7A74 802DED64 01F97821 */  addu       $t7, $t7, $t9
    /* 1F7A78 802DED68 000F78C0 */  sll        $t7, $t7, 3
    /* 1F7A7C 802DED6C 01EE1021 */  addu       $v0, $t7, $t6
    /* 1F7A80 802DED70 8FAC007C */  lw         $t4, 0x7C($sp)
    /* 1F7A84 802DED74 8FB80080 */  lw         $t8, 0x80($sp)
    /* 1F7A88 802DED78 8FAD0084 */  lw         $t5, 0x84($sp)
    /* 1F7A8C 802DED7C 8FB90070 */  lw         $t9, 0x70($sp)
    /* 1F7A90 802DED80 8FAF0074 */  lw         $t7, 0x74($sp)
    /* 1F7A94 802DED84 8FAE0078 */  lw         $t6, 0x78($sp)
    /* 1F7A98 802DED88 24040200 */  addiu      $a0, $zero, 0x200
    /* 1F7A9C 802DED8C 24050010 */  addiu      $a1, $zero, 0x10
    /* 1F7AA0 802DED90 A44C0020 */  sh         $t4, 0x20($v0)
    /* 1F7AA4 802DED94 A4580022 */  sh         $t8, 0x22($v0)
    /* 1F7AA8 802DED98 A44D0024 */  sh         $t5, 0x24($v0)
    /* 1F7AAC 802DED9C A459002C */  sh         $t9, 0x2C($v0)
    /* 1F7AB0 802DEDA0 A44F002E */  sh         $t7, 0x2E($v0)
    /* 1F7AB4 802DEDA4 0C021C36 */  jal        func_800870D8_96088
    /* 1F7AB8 802DEDA8 A44E0030 */   sh        $t6, 0x30($v0)
    /* 1F7ABC 802DEDAC 8FAC002C */  lw         $t4, 0x2C($sp)
    /* 1F7AC0 802DEDB0 93A4009B */  lbu        $a0, 0x9B($sp)
    /* 1F7AC4 802DEDB4 00002825 */  or         $a1, $zero, $zero
    /* 1F7AC8 802DEDB8 95980006 */  lhu        $t8, 0x6($t4)
    /* 1F7ACC 802DEDBC 00583023 */  subu       $a2, $v0, $t8
    /* 1F7AD0 802DEDC0 00066C00 */  sll        $t5, $a2, 16
    /* 1F7AD4 802DEDC4 0C021B5C */  jal        func_80086D70_95D20
    /* 1F7AD8 802DEDC8 000D3403 */   sra       $a2, $t5, 16
    /* 1F7ADC 802DEDCC A600001E */  sh         $zero, 0x1E($s0)
    /* 1F7AE0 802DEDD0 24040200 */  addiu      $a0, $zero, 0x200
    /* 1F7AE4 802DEDD4 0C021C36 */  jal        func_800870D8_96088
    /* 1F7AE8 802DEDD8 24050010 */   addiu     $a1, $zero, 0x10
    /* 1F7AEC 802DEDDC 8FAF002C */  lw         $t7, 0x2C($sp)
    /* 1F7AF0 802DEDE0 93A4009B */  lbu        $a0, 0x9B($sp)
    /* 1F7AF4 802DEDE4 24050001 */  addiu      $a1, $zero, 0x1
    /* 1F7AF8 802DEDE8 95EE0006 */  lhu        $t6, 0x6($t7)
    /* 1F7AFC 802DEDEC 004E3023 */  subu       $a2, $v0, $t6
    /* 1F7B00 802DEDF0 00066400 */  sll        $t4, $a2, 16
    /* 1F7B04 802DEDF4 0C021B5C */  jal        func_80086D70_95D20
    /* 1F7B08 802DEDF8 000C3403 */   sra       $a2, $t4, 16
    /* 1F7B0C 802DEDFC 240D0001 */  addiu      $t5, $zero, 0x1
    /* 1F7B10 802DEE00 A60D001E */  sh         $t5, 0x1E($s0)
  .L802DEE04_1F7B14:
    /* 1F7B14 802DEE04 8FBF001C */  lw         $ra, 0x1C($sp)
  .L802DEE08_1F7B18:
    /* 1F7B18 802DEE08 8FB00018 */  lw         $s0, 0x18($sp)
    /* 1F7B1C 802DEE0C 27BD0098 */  addiu      $sp, $sp, 0x98
    /* 1F7B20 802DEE10 03E00008 */  jr         $ra
    /* 1F7B24 802DEE14 00000000 */   nop
endlabel func_802DE9B8_1F76C8
