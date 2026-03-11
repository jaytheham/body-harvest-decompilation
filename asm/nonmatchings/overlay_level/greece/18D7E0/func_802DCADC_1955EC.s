nonmatching func_802DCADC_1955EC, 0x688

glabel func_802DCADC_1955EC
    /* 1955EC 802DCADC 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* 1955F0 802DCAE0 AFA40080 */  sw         $a0, 0x80($sp)
    /* 1955F4 802DCAE4 93AE0083 */  lbu        $t6, 0x83($sp)
    /* 1955F8 802DCAE8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1955FC 802DCAEC AFB00040 */  sw         $s0, 0x40($sp)
    /* 195600 802DCAF0 000E7880 */  sll        $t7, $t6, 2
    /* 195604 802DCAF4 01EE7821 */  addu       $t7, $t7, $t6
    /* 195608 802DCAF8 000F7900 */  sll        $t7, $t7, 4
    /* 19560C 802DCAFC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 195610 802DCB00 01F88021 */  addu       $s0, $t7, $t8
    /* 195614 802DCB04 8619000C */  lh         $t9, 0xC($s0)
    /* 195618 802DCB08 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 19561C 802DCB0C 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 195620 802DCB10 00197100 */  sll        $t6, $t9, 4
    /* 195624 802DCB14 004E7821 */  addu       $t7, $v0, $t6
    /* 195628 802DCB18 81ED000C */  lb         $t5, 0xC($t7)
    /* 19562C 802DCB1C AFBF0044 */  sw         $ra, 0x44($sp)
    /* 195630 802DCB20 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 195634 802DCB24 000DC100 */  sll        $t8, $t5, 4
    /* 195638 802DCB28 00581821 */  addu       $v1, $v0, $t8
    /* 19563C 802DCB2C 807F000D */  lb         $ra, 0xD($v1)
    /* 195640 802DCB30 001FC900 */  sll        $t9, $ra, 4
    /* 195644 802DCB34 00593021 */  addu       $a2, $v0, $t9
    /* 195648 802DCB38 80C5000D */  lb         $a1, 0xD($a2)
    /* 19564C 802DCB3C 8619002C */  lh         $t9, 0x2C($s0)
    /* 195650 802DCB40 00057100 */  sll        $t6, $a1, 4
    /* 195654 802DCB44 004E5021 */  addu       $t2, $v0, $t6
    /* 195658 802DCB48 8147000D */  lb         $a3, 0xD($t2)
    /* 19565C 802DCB4C 2B210051 */  slti       $at, $t9, 0x51
    /* 195660 802DCB50 24057D00 */  addiu      $a1, $zero, 0x7D00
    /* 195664 802DCB54 00077900 */  sll        $t7, $a3, 4
    /* 195668 802DCB58 004F5821 */  addu       $t3, $v0, $t7
    /* 19566C 802DCB5C 8168000D */  lb         $t0, 0xD($t3)
    /* 195670 802DCB60 0008C100 */  sll        $t8, $t0, 4
    /* 195674 802DCB64 00584821 */  addu       $t1, $v0, $t8
    /* 195678 802DCB68 1420008D */  bnez       $at, .L802DCDA0_1958B0
    /* 19567C 802DCB6C 812C000D */   lb        $t4, 0xD($t1)
    /* 195680 802DCB70 000C7100 */  sll        $t6, $t4, 4
    /* 195684 802DCB74 A5200002 */  sh         $zero, 0x2($t1)
    /* 195688 802DCB78 004E7821 */  addu       $t7, $v0, $t6
    /* 19568C 802DCB7C A5E00002 */  sh         $zero, 0x2($t7)
    /* 195690 802DCB80 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 195694 802DCB84 A7BF007C */  sh         $ra, 0x7C($sp)
    /* 195698 802DCB88 A7AD007E */  sh         $t5, 0x7E($sp)
    /* 19569C 802DCB8C 0004C080 */  sll        $t8, $a0, 2
    /* 1956A0 802DCB90 0304C021 */  addu       $t8, $t8, $a0
    /* 1956A4 802DCB94 0018C0C0 */  sll        $t8, $t8, 3
    /* 1956A8 802DCB98 0304C023 */  subu       $t8, $t8, $a0
    /* 1956AC 802DCB9C 0018C100 */  sll        $t8, $t8, 4
    /* 1956B0 802DCBA0 0304C021 */  addu       $t8, $t8, $a0
    /* 1956B4 802DCBA4 0018C140 */  sll        $t8, $t8, 5
    /* 1956B8 802DCBA8 3304FFFF */  andi       $a0, $t8, 0xFFFF
    /* 1956BC 802DCBAC AFAB004C */  sw         $t3, 0x4C($sp)
    /* 1956C0 802DCBB0 0C007654 */  jal        coss
    /* 1956C4 802DCBB4 AFAA0050 */   sw        $t2, 0x50($sp)
    /* 1956C8 802DCBB8 44822000 */  mtc1       $v0, $f4
    /* 1956CC 802DCBBC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1956D0 802DCBC0 44815800 */  mtc1       $at, $f11
    /* 1956D4 802DCBC4 468021A0 */  cvt.s.w    $f6, $f4
    /* 1956D8 802DCBC8 44805000 */  mtc1       $zero, $f10
    /* 1956DC 802DCBCC 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 1956E0 802DCBD0 44819800 */  mtc1       $at, $f19
    /* 1956E4 802DCBD4 44809000 */  mtc1       $zero, $f18
    /* 1956E8 802DCBD8 3C01802E */  lui        $at, %hi(D_802DE440)
    /* 1956EC 802DCBDC 46003221 */  cvt.d.s    $f8, $f6
    /* 1956F0 802DCBE0 D426E440 */  ldc1       $f6, %lo(D_802DE440)($at)
    /* 1956F4 802DCBE4 462A4403 */  div.d      $f16, $f8, $f10
    /* 1956F8 802DCBE8 3C01802E */  lui        $at, %hi(D_802DE448)
    /* 1956FC 802DCBEC D42AE448 */  ldc1       $f10, %lo(D_802DE448)($at)
    /* 195700 802DCBF0 240F0001 */  addiu      $t7, $zero, 0x1
    /* 195704 802DCBF4 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* 195708 802DCBF8 8FAA0050 */  lw         $t2, 0x50($sp)
    /* 19570C 802DCBFC 3C048005 */  lui        $a0, %hi(D_80052A8C)
    /* 195710 802DCC00 46328100 */  add.d      $f4, $f16, $f18
    /* 195714 802DCC04 46262202 */  mul.d      $f8, $f4, $f6
    /* 195718 802DCC08 46285401 */  sub.d      $f16, $f10, $f8
    /* 19571C 802DCC0C 444EF800 */  cfc1       $t6, $31
    /* 195720 802DCC10 44CFF800 */  ctc1       $t7, $31
    /* 195724 802DCC14 00000000 */  nop
    /* 195728 802DCC18 462084A4 */  cvt.w.d    $f18, $f16
    /* 19572C 802DCC1C 444FF800 */  cfc1       $t7, $31
    /* 195730 802DCC20 00000000 */  nop
    /* 195734 802DCC24 31EF0078 */  andi       $t7, $t7, 0x78
    /* 195738 802DCC28 51E00014 */  beql       $t7, $zero, .L802DCC7C_19578C
    /* 19573C 802DCC2C 440F9000 */   mfc1      $t7, $f18
    /* 195740 802DCC30 44819800 */  mtc1       $at, $f19
    /* 195744 802DCC34 44809000 */  mtc1       $zero, $f18
    /* 195748 802DCC38 240F0001 */  addiu      $t7, $zero, 0x1
    /* 19574C 802DCC3C 46328481 */  sub.d      $f18, $f16, $f18
    /* 195750 802DCC40 44CFF800 */  ctc1       $t7, $31
    /* 195754 802DCC44 00000000 */  nop
    /* 195758 802DCC48 462094A4 */  cvt.w.d    $f18, $f18
    /* 19575C 802DCC4C 444FF800 */  cfc1       $t7, $31
    /* 195760 802DCC50 00000000 */  nop
    /* 195764 802DCC54 31EF0078 */  andi       $t7, $t7, 0x78
    /* 195768 802DCC58 15E00005 */  bnez       $t7, .L802DCC70_195780
    /* 19576C 802DCC5C 00000000 */   nop
    /* 195770 802DCC60 440F9000 */  mfc1       $t7, $f18
    /* 195774 802DCC64 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 195778 802DCC68 10000007 */  b          .L802DCC88_195798
    /* 19577C 802DCC6C 01E17825 */   or        $t7, $t7, $at
  .L802DCC70_195780:
    /* 195780 802DCC70 10000005 */  b          .L802DCC88_195798
    /* 195784 802DCC74 240FFFFF */   addiu     $t7, $zero, -0x1
    /* 195788 802DCC78 440F9000 */  mfc1       $t7, $f18
  .L802DCC7C_19578C:
    /* 19578C 802DCC7C 00000000 */  nop
    /* 195790 802DCC80 05E0FFFB */  bltz       $t7, .L802DCC70_195780
    /* 195794 802DCC84 00000000 */   nop
  .L802DCC88_195798:
    /* 195798 802DCC88 A54F0006 */  sh         $t7, 0x6($t2)
    /* 19579C 802DCC8C 8C842A8C */  lw         $a0, %lo(D_80052A8C)($a0)
    /* 1957A0 802DCC90 44CEF800 */  ctc1       $t6, $31
    /* 1957A4 802DCC94 0004C080 */  sll        $t8, $a0, 2
    /* 1957A8 802DCC98 0304C021 */  addu       $t8, $t8, $a0
    /* 1957AC 802DCC9C 0018C0C0 */  sll        $t8, $t8, 3
    /* 1957B0 802DCCA0 0304C023 */  subu       $t8, $t8, $a0
    /* 1957B4 802DCCA4 0018C100 */  sll        $t8, $t8, 4
    /* 1957B8 802DCCA8 0304C021 */  addu       $t8, $t8, $a0
    /* 1957BC 802DCCAC 0018C140 */  sll        $t8, $t8, 5
    /* 1957C0 802DCCB0 0C007654 */  jal        coss
    /* 1957C4 802DCCB4 3304FFFF */   andi      $a0, $t8, 0xFFFF
    /* 1957C8 802DCCB8 44822000 */  mtc1       $v0, $f4
    /* 1957CC 802DCCBC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1957D0 802DCCC0 44814800 */  mtc1       $at, $f9
    /* 1957D4 802DCCC4 468021A0 */  cvt.s.w    $f6, $f4
    /* 1957D8 802DCCC8 44804000 */  mtc1       $zero, $f8
    /* 1957DC 802DCCCC 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 1957E0 802DCCD0 44819800 */  mtc1       $at, $f19
    /* 1957E4 802DCCD4 44809000 */  mtc1       $zero, $f18
    /* 1957E8 802DCCD8 3C01802E */  lui        $at, %hi(D_802DE450)
    /* 1957EC 802DCCDC 460032A1 */  cvt.d.s    $f10, $f6
    /* 1957F0 802DCCE0 D426E450 */  ldc1       $f6, %lo(D_802DE450)($at)
    /* 1957F4 802DCCE4 46285403 */  div.d      $f16, $f10, $f8
    /* 1957F8 802DCCE8 240F0001 */  addiu      $t7, $zero, 0x1
    /* 1957FC 802DCCEC 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* 195800 802DCCF0 8FAB004C */  lw         $t3, 0x4C($sp)
    /* 195804 802DCCF4 240507D0 */  addiu      $a1, $zero, 0x7D0
    /* 195808 802DCCF8 46328100 */  add.d      $f4, $f16, $f18
    /* 19580C 802DCCFC 46262282 */  mul.d      $f10, $f4, $f6
    /* 195810 802DCD00 444EF800 */  cfc1       $t6, $31
    /* 195814 802DCD04 44CFF800 */  ctc1       $t7, $31
    /* 195818 802DCD08 00000000 */  nop
    /* 19581C 802DCD0C 46205224 */  cvt.w.d    $f8, $f10
    /* 195820 802DCD10 444FF800 */  cfc1       $t7, $31
    /* 195824 802DCD14 00000000 */  nop
    /* 195828 802DCD18 31EF0078 */  andi       $t7, $t7, 0x78
    /* 19582C 802DCD1C 51E00014 */  beql       $t7, $zero, .L802DCD70_195880
    /* 195830 802DCD20 440F4000 */   mfc1      $t7, $f8
    /* 195834 802DCD24 44814800 */  mtc1       $at, $f9
    /* 195838 802DCD28 44804000 */  mtc1       $zero, $f8
    /* 19583C 802DCD2C 240F0001 */  addiu      $t7, $zero, 0x1
    /* 195840 802DCD30 46285201 */  sub.d      $f8, $f10, $f8
    /* 195844 802DCD34 44CFF800 */  ctc1       $t7, $31
    /* 195848 802DCD38 00000000 */  nop
    /* 19584C 802DCD3C 46204224 */  cvt.w.d    $f8, $f8
    /* 195850 802DCD40 444FF800 */  cfc1       $t7, $31
    /* 195854 802DCD44 00000000 */  nop
    /* 195858 802DCD48 31EF0078 */  andi       $t7, $t7, 0x78
    /* 19585C 802DCD4C 15E00005 */  bnez       $t7, .L802DCD64_195874
    /* 195860 802DCD50 00000000 */   nop
    /* 195864 802DCD54 440F4000 */  mfc1       $t7, $f8
    /* 195868 802DCD58 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 19586C 802DCD5C 10000007 */  b          .L802DCD7C_19588C
    /* 195870 802DCD60 01E17825 */   or        $t7, $t7, $at
  .L802DCD64_195874:
    /* 195874 802DCD64 10000005 */  b          .L802DCD7C_19588C
    /* 195878 802DCD68 240FFFFF */   addiu     $t7, $zero, -0x1
    /* 19587C 802DCD6C 440F4000 */  mfc1       $t7, $f8
  .L802DCD70_195880:
    /* 195880 802DCD70 00000000 */  nop
    /* 195884 802DCD74 05E0FFFB */  bltz       $t7, .L802DCD64_195874
    /* 195888 802DCD78 00000000 */   nop
  .L802DCD7C_19588C:
    /* 19588C 802DCD7C 44CEF800 */  ctc1       $t6, $31
    /* 195890 802DCD80 A56F0006 */  sh         $t7, 0x6($t3)
    /* 195894 802DCD84 0C024252 */  jal        func_80090948_9F8F8
    /* 195898 802DCD88 87A4007E */   lh        $a0, 0x7E($sp)
    /* 19589C 802DCD8C 87A4007C */  lh         $a0, 0x7C($sp)
    /* 1958A0 802DCD90 0C024252 */  jal        func_80090948_9F8F8
    /* 1958A4 802DCD94 240507D0 */   addiu     $a1, $zero, 0x7D0
    /* 1958A8 802DCD98 10000010 */  b          .L802DCDDC_1958EC
    /* 1958AC 802DCD9C 8E180020 */   lw        $t8, 0x20($s0)
  .L802DCDA0_1958B0:
    /* 1958B0 802DCDA0 000CC100 */  sll        $t8, $t4, 4
    /* 1958B4 802DCDA4 A5250002 */  sh         $a1, 0x2($t1)
    /* 1958B8 802DCDA8 0058C821 */  addu       $t9, $v0, $t8
    /* 1958BC 802DCDAC A7250002 */  sh         $a1, 0x2($t9)
    /* 1958C0 802DCDB0 9464000A */  lhu        $a0, 0xA($v1)
    /* 1958C4 802DCDB4 28812710 */  slti       $at, $a0, 0x2710
    /* 1958C8 802DCDB8 10200002 */  beqz       $at, .L802DCDC4_1958D4
    /* 1958CC 802DCDBC 248E03E8 */   addiu     $t6, $a0, 0x3E8
    /* 1958D0 802DCDC0 A46E000A */  sh         $t6, 0xA($v1)
  .L802DCDC4_1958D4:
    /* 1958D4 802DCDC4 94C2000A */  lhu        $v0, 0xA($a2)
    /* 1958D8 802DCDC8 28412710 */  slti       $at, $v0, 0x2710
    /* 1958DC 802DCDCC 10200002 */  beqz       $at, .L802DCDD8_1958E8
    /* 1958E0 802DCDD0 244F03E8 */   addiu     $t7, $v0, 0x3E8
    /* 1958E4 802DCDD4 A4CF000A */  sh         $t7, 0xA($a2)
  .L802DCDD8_1958E8:
    /* 1958E8 802DCDD8 8E180020 */  lw         $t8, 0x20($s0)
  .L802DCDDC_1958EC:
    /* 1958EC 802DCDDC 0018CAC0 */  sll        $t9, $t8, 11
    /* 1958F0 802DCDE0 07220015 */  bltzl      $t9, .L802DCE38_195948
    /* 1958F4 802DCDE4 8602002C */   lh        $v0, 0x2C($s0)
    /* 1958F8 802DCDE8 0C04AC87 */  jal        func_8012B21C_13A1CC
    /* 1958FC 802DCDEC 00000000 */   nop
    /* 195900 802DCDF0 0C02A4AC */  jal        func_800A92B0_B8260
    /* 195904 802DCDF4 00000000 */   nop
    /* 195908 802DCDF8 240E010E */  addiu      $t6, $zero, 0x10E
    /* 19590C 802DCDFC A60E002C */  sh         $t6, 0x2C($s0)
    /* 195910 802DCE00 3C078025 */  lui        $a3, %hi(D_80257184)
    /* 195914 802DCE04 240F0008 */  addiu      $t7, $zero, 0x8
    /* 195918 802DCE08 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 19591C 802DCE0C 94E77184 */  lhu        $a3, %lo(D_80257184)($a3)
    /* 195920 802DCE10 86040000 */  lh         $a0, 0x0($s0)
    /* 195924 802DCE14 86050002 */  lh         $a1, 0x2($s0)
    /* 195928 802DCE18 0C037E12 */  jal        func_800DF848_EE7F8
    /* 19592C 802DCE1C 86060004 */   lh        $a2, 0x4($s0)
    /* 195930 802DCE20 93A40083 */  lbu        $a0, 0x83($sp)
    /* 195934 802DCE24 0C04DD1A */  jal        func_80137468_146418
    /* 195938 802DCE28 24050011 */   addiu     $a1, $zero, 0x11
    /* 19593C 802DCE2C 100000C9 */  b          .L802DD154_195C64
    /* 195940 802DCE30 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 195944 802DCE34 8602002C */  lh         $v0, 0x2C($s0)
  .L802DCE38_195948:
    /* 195948 802DCE38 240F0001 */  addiu      $t7, $zero, 0x1
    /* 19594C 802DCE3C 284100AB */  slti       $at, $v0, 0xAB
    /* 195950 802DCE40 10200058 */  beqz       $at, .L802DCFA4_195AB4
    /* 195954 802DCE44 00000000 */   nop
    /* 195958 802DCE48 0C02A8D0 */  jal        func_800AA340_B92F0
    /* 19595C 802DCE4C 93A40083 */   lbu       $a0, 0x83($sp)
    /* 195960 802DCE50 8602002C */  lh         $v0, 0x2C($s0)
    /* 195964 802DCE54 28410051 */  slti       $at, $v0, 0x51
    /* 195968 802DCE58 102000BD */  beqz       $at, .L802DD150_195C60
    /* 19596C 802DCE5C 28410029 */   slti      $at, $v0, 0x29
    /* 195970 802DCE60 142000BB */  bnez       $at, .L802DD150_195C60
    /* 195974 802DCE64 3C188005 */   lui       $t8, %hi(D_80052A8C)
    /* 195978 802DCE68 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* 19597C 802DCE6C 02002025 */  or         $a0, $s0, $zero
    /* 195980 802DCE70 24050001 */  addiu      $a1, $zero, 0x1
    /* 195984 802DCE74 33190007 */  andi       $t9, $t8, 0x7
    /* 195988 802DCE78 172000B5 */  bnez       $t9, .L802DD150_195C60
    /* 19598C 802DCE7C 27A6006C */   addiu     $a2, $sp, 0x6C
    /* 195990 802DCE80 27AE0064 */  addiu      $t6, $sp, 0x64
    /* 195994 802DCE84 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 195998 802DCE88 0C04A141 */  jal        func_80128504_1374B4
    /* 19599C 802DCE8C 27A70068 */   addiu     $a3, $sp, 0x68
    /* 1959A0 802DCE90 3C0F8003 */  lui        $t7, %hi(D_80031420)
    /* 1959A4 802DCE94 8DEF1420 */  lw         $t7, %lo(D_80031420)($t7)
    /* 1959A8 802DCE98 96040006 */  lhu        $a0, 0x6($s0)
    /* 1959AC 802DCE9C 31F80003 */  andi       $t8, $t7, 0x3
    /* 1959B0 802DCEA0 530000AC */  beql       $t8, $zero, .L802DD154_195C64
    /* 1959B4 802DCEA4 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1959B8 802DCEA8 0C007654 */  jal        coss
    /* 1959BC 802DCEAC A7A40072 */   sh        $a0, 0x72($sp)
    /* 1959C0 802DCEB0 00028400 */  sll        $s0, $v0, 16
    /* 1959C4 802DCEB4 0010CC03 */  sra        $t9, $s0, 16
    /* 1959C8 802DCEB8 03208025 */  or         $s0, $t9, $zero
    /* 1959CC 802DCEBC 0C007660 */  jal        sins
    /* 1959D0 802DCEC0 97A40072 */   lhu       $a0, 0x72($sp)
    /* 1959D4 802DCEC4 44908000 */  mtc1       $s0, $f16
    /* 1959D8 802DCEC8 3C014059 */  lui        $at, (0x40590000 >> 16)
    /* 1959DC 802DCECC 44810800 */  mtc1       $at, $f1
    /* 1959E0 802DCED0 468084A0 */  cvt.s.w    $f18, $f16
    /* 1959E4 802DCED4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1959E8 802DCED8 44811800 */  mtc1       $at, $f3
    /* 1959EC 802DCEDC 44801000 */  mtc1       $zero, $f2
    /* 1959F0 802DCEE0 44828000 */  mtc1       $v0, $f16
    /* 1959F4 802DCEE4 44800000 */  mtc1       $zero, $f0
    /* 1959F8 802DCEE8 46009121 */  cvt.d.s    $f4, $f18
    /* 1959FC 802DCEEC 468084A0 */  cvt.s.w    $f18, $f16
    /* 195A00 802DCEF0 24180064 */  addiu      $t8, $zero, 0x64
    /* 195A04 802DCEF4 AFB80018 */  sw         $t8, 0x18($sp)
    /* 195A08 802DCEF8 3C188004 */  lui        $t8, %hi(currentLevel)
    /* 195A0C 802DCEFC 2419FFEC */  addiu      $t9, $zero, -0x14
    /* 195A10 802DCF00 46222183 */  div.d      $f6, $f4, $f2
    /* 195A14 802DCF04 8F187F90 */  lw         $t8, %lo(currentLevel)($t8)
    /* 195A18 802DCF08 AFB90010 */  sw         $t9, 0x10($sp)
    /* 195A1C 802DCF0C 2419000A */  addiu      $t9, $zero, 0xA
    /* 195A20 802DCF10 46009121 */  cvt.d.s    $f4, $f18
    /* 195A24 802DCF14 240E001E */  addiu      $t6, $zero, 0x1E
    /* 195A28 802DCF18 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 195A2C 802DCF1C AFB9001C */  sw         $t9, 0x1C($sp)
    /* 195A30 802DCF20 3C0E8014 */  lui        $t6, %hi(D_8013E3C0)
    /* 195A34 802DCF24 0018C880 */  sll        $t9, $t8, 2
    /* 195A38 802DCF28 25CEE3C0 */  addiu      $t6, $t6, %lo(D_8013E3C0)
    /* 195A3C 802DCF2C 0338C823 */  subu       $t9, $t9, $t8
    /* 195A40 802DCF30 032E1821 */  addu       $v1, $t9, $t6
    /* 195A44 802DCF34 9078FFFE */  lbu        $t8, -0x2($v1)
    /* 195A48 802DCF38 9079FFFF */  lbu        $t9, -0x1($v1)
    /* 195A4C 802DCF3C 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 195A50 802DCF40 AFAE0034 */  sw         $t6, 0x34($sp)
    /* 195A54 802DCF44 87A4006E */  lh         $a0, 0x6E($sp)
    /* 195A58 802DCF48 87A5006A */  lh         $a1, 0x6A($sp)
    /* 195A5C 802DCF4C 87A60066 */  lh         $a2, 0x66($sp)
    /* 195A60 802DCF50 AFB8002C */  sw         $t8, 0x2C($sp)
    /* 195A64 802DCF54 AFB90030 */  sw         $t9, 0x30($sp)
    /* 195A68 802DCF58 46203282 */  mul.d      $f10, $f6, $f0
    /* 195A6C 802DCF5C 46222183 */  div.d      $f6, $f4, $f2
    /* 195A70 802DCF60 4620520D */  trunc.w.d  $f8, $f10
    /* 195A74 802DCF64 44074000 */  mfc1       $a3, $f8
    /* 195A78 802DCF68 00000000 */  nop
    /* 195A7C 802DCF6C 00077E00 */  sll        $t7, $a3, 24
    /* 195A80 802DCF70 000F3E03 */  sra        $a3, $t7, 24
    /* 195A84 802DCF74 46203282 */  mul.d      $f10, $f6, $f0
    /* 195A88 802DCF78 4620520D */  trunc.w.d  $f8, $f10
    /* 195A8C 802DCF7C 440F4000 */  mfc1       $t7, $f8
    /* 195A90 802DCF80 00000000 */  nop
    /* 195A94 802DCF84 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 195A98 802DCF88 240F0064 */  addiu      $t7, $zero, 0x64
    /* 195A9C 802DCF8C AFAF0024 */  sw         $t7, 0x24($sp)
    /* 195AA0 802DCF90 906FFFFD */  lbu        $t7, -0x3($v1)
    /* 195AA4 802DCF94 0C03297B */  jal        func_800CA5EC_D959C
    /* 195AA8 802DCF98 AFAF0028 */   sw        $t7, 0x28($sp)
    /* 195AAC 802DCF9C 1000006D */  b          .L802DD154_195C64
    /* 195AB0 802DCFA0 8FBF0044 */   lw        $ra, 0x44($sp)
  .L802DCFA4_195AB4:
    /* 195AB4 802DCFA4 3C018003 */  lui        $at, %hi(D_80031414)
    /* 195AB8 802DCFA8 AC2F1414 */  sw         $t7, %lo(D_80031414)($at)
    /* 195ABC 802DCFAC 284100FA */  slti       $at, $v0, 0xFA
    /* 195AC0 802DCFB0 54200006 */  bnel       $at, $zero, .L802DCFCC_195ADC
    /* 195AC4 802DCFB4 284100BF */   slti      $at, $v0, 0xBF
    /* 195AC8 802DCFB8 8618000A */  lh         $t8, 0xA($s0)
    /* 195ACC 802DCFBC 2719FF38 */  addiu      $t9, $t8, -0xC8
    /* 195AD0 802DCFC0 10000063 */  b          .L802DD150_195C60
    /* 195AD4 802DCFC4 A619000A */   sh        $t9, 0xA($s0)
    /* 195AD8 802DCFC8 284100BF */  slti       $at, $v0, 0xBF
  .L802DCFCC_195ADC:
    /* 195ADC 802DCFCC 10200005 */  beqz       $at, .L802DCFE4_195AF4
    /* 195AE0 802DCFD0 24580001 */   addiu     $t8, $v0, 0x1
    /* 195AE4 802DCFD4 860E000A */  lh         $t6, 0xA($s0)
    /* 195AE8 802DCFD8 25CF00C8 */  addiu      $t7, $t6, 0xC8
    /* 195AEC 802DCFDC 1000005C */  b          .L802DD150_195C60
    /* 195AF0 802DCFE0 A60F000A */   sh        $t7, 0xA($s0)
  .L802DCFE4_195AF4:
    /* 195AF4 802DCFE4 2401000A */  addiu      $at, $zero, 0xA
    /* 195AF8 802DCFE8 0301001A */  div        $zero, $t8, $at
    /* 195AFC 802DCFEC 0000C810 */  mfhi       $t9
    /* 195B00 802DCFF0 02002025 */  or         $a0, $s0, $zero
    /* 195B04 802DCFF4 17200056 */  bnez       $t9, .L802DD150_195C60
    /* 195B08 802DCFF8 24050001 */   addiu     $a1, $zero, 0x1
    /* 195B0C 802DCFFC 27AE0064 */  addiu      $t6, $sp, 0x64
    /* 195B10 802DD000 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 195B14 802DD004 27A6006C */  addiu      $a2, $sp, 0x6C
    /* 195B18 802DD008 0C04A141 */  jal        func_80128504_1374B4
    /* 195B1C 802DD00C 27A70068 */   addiu     $a3, $sp, 0x68
    /* 195B20 802DD010 8FA50068 */  lw         $a1, 0x68($sp)
    /* 195B24 802DD014 860F0006 */  lh         $t7, 0x6($s0)
    /* 195B28 802DD018 240E000A */  addiu      $t6, $zero, 0xA
    /* 195B2C 802DD01C 24A50032 */  addiu      $a1, $a1, 0x32
    /* 195B30 802DD020 0005C400 */  sll        $t8, $a1, 16
    /* 195B34 802DD024 00182C03 */  sra        $a1, $t8, 16
    /* 195B38 802DD028 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 195B3C 802DD02C A7AF0072 */  sh         $t7, 0x72($sp)
    /* 195B40 802DD030 240F001E */  addiu      $t7, $zero, 0x1E
    /* 195B44 802DD034 240E0096 */  addiu      $t6, $zero, 0x96
    /* 195B48 802DD038 241800B4 */  addiu      $t8, $zero, 0xB4
    /* 195B4C 802DD03C 241900A0 */  addiu      $t9, $zero, 0xA0
    /* 195B50 802DD040 AFB90020 */  sw         $t9, 0x20($sp)
    /* 195B54 802DD044 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 195B58 802DD048 AFAE0024 */  sw         $t6, 0x24($sp)
    /* 195B5C 802DD04C AFAF0018 */  sw         $t7, 0x18($sp)
    /* 195B60 802DD050 87A4006E */  lh         $a0, 0x6E($sp)
    /* 195B64 802DD054 87A60066 */  lh         $a2, 0x66($sp)
    /* 195B68 802DD058 240700B4 */  addiu      $a3, $zero, 0xB4
    /* 195B6C 802DD05C AFA00014 */  sw         $zero, 0x14($sp)
    /* 195B70 802DD060 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 195B74 802DD064 AFA00028 */   sw        $zero, 0x28($sp)
    /* 195B78 802DD068 0C007654 */  jal        coss
    /* 195B7C 802DD06C 97A40072 */   lhu       $a0, 0x72($sp)
    /* 195B80 802DD070 00028400 */  sll        $s0, $v0, 16
    /* 195B84 802DD074 00107C03 */  sra        $t7, $s0, 16
    /* 195B88 802DD078 01E08025 */  or         $s0, $t7, $zero
    /* 195B8C 802DD07C 0C007660 */  jal        sins
    /* 195B90 802DD080 97A40072 */   lhu       $a0, 0x72($sp)
    /* 195B94 802DD084 44908000 */  mtc1       $s0, $f16
    /* 195B98 802DD088 3C014059 */  lui        $at, (0x40590000 >> 16)
    /* 195B9C 802DD08C 44810800 */  mtc1       $at, $f1
    /* 195BA0 802DD090 468084A0 */  cvt.s.w    $f18, $f16
    /* 195BA4 802DD094 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 195BA8 802DD098 44813800 */  mtc1       $at, $f7
    /* 195BAC 802DD09C 44803000 */  mtc1       $zero, $f6
    /* 195BB0 802DD0A0 44800000 */  mtc1       $zero, $f0
    /* 195BB4 802DD0A4 8FA50068 */  lw         $a1, 0x68($sp)
    /* 195BB8 802DD0A8 46009121 */  cvt.d.s    $f4, $f18
    /* 195BBC 802DD0AC 44829000 */  mtc1       $v0, $f18
    /* 195BC0 802DD0B0 46262283 */  div.d      $f10, $f4, $f6
    /* 195BC4 802DD0B4 24A50032 */  addiu      $a1, $a1, 0x32
    /* 195BC8 802DD0B8 0005C400 */  sll        $t8, $a1, 16
    /* 195BCC 802DD0BC 24190050 */  addiu      $t9, $zero, 0x50
    /* 195BD0 802DD0C0 46809120 */  cvt.s.w    $f4, $f18
    /* 195BD4 802DD0C4 AFB90010 */  sw         $t9, 0x10($sp)
    /* 195BD8 802DD0C8 00182C03 */  sra        $a1, $t8, 16
    /* 195BDC 802DD0CC 24180064 */  addiu      $t8, $zero, 0x64
    /* 195BE0 802DD0D0 2419000A */  addiu      $t9, $zero, 0xA
    /* 195BE4 802DD0D4 240E001E */  addiu      $t6, $zero, 0x1E
    /* 195BE8 802DD0D8 460021A1 */  cvt.d.s    $f6, $f4
    /* 195BEC 802DD0DC AFAE0020 */  sw         $t6, 0x20($sp)
    /* 195BF0 802DD0E0 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 195BF4 802DD0E4 AFB80018 */  sw         $t8, 0x18($sp)
    /* 195BF8 802DD0E8 241800A0 */  addiu      $t8, $zero, 0xA0
    /* 195BFC 802DD0EC 24190096 */  addiu      $t9, $zero, 0x96
    /* 195C00 802DD0F0 240E00C8 */  addiu      $t6, $zero, 0xC8
    /* 195C04 802DD0F4 AFAE0034 */  sw         $t6, 0x34($sp)
    /* 195C08 802DD0F8 AFB9002C */  sw         $t9, 0x2C($sp)
    /* 195C0C 802DD0FC AFB80028 */  sw         $t8, 0x28($sp)
    /* 195C10 802DD100 87A4006E */  lh         $a0, 0x6E($sp)
    /* 195C14 802DD104 87A60066 */  lh         $a2, 0x66($sp)
    /* 195C18 802DD108 AFA00030 */  sw         $zero, 0x30($sp)
    /* 195C1C 802DD10C 46205202 */  mul.d      $f8, $f10, $f0
    /* 195C20 802DD110 44805000 */  mtc1       $zero, $f10
    /* 195C24 802DD114 44815800 */  mtc1       $at, $f11
    /* 195C28 802DD118 4620440D */  trunc.w.d  $f16, $f8
    /* 195C2C 802DD11C 462A3203 */  div.d      $f8, $f6, $f10
    /* 195C30 802DD120 44078000 */  mfc1       $a3, $f16
    /* 195C34 802DD124 00000000 */  nop
    /* 195C38 802DD128 00077E00 */  sll        $t7, $a3, 24
    /* 195C3C 802DD12C 000F3E03 */  sra        $a3, $t7, 24
    /* 195C40 802DD130 46204402 */  mul.d      $f16, $f8, $f0
    /* 195C44 802DD134 4620848D */  trunc.w.d  $f18, $f16
    /* 195C48 802DD138 440F9000 */  mfc1       $t7, $f18
    /* 195C4C 802DD13C 00000000 */  nop
    /* 195C50 802DD140 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 195C54 802DD144 240F0064 */  addiu      $t7, $zero, 0x64
    /* 195C58 802DD148 0C03297B */  jal        func_800CA5EC_D959C
    /* 195C5C 802DD14C AFAF0024 */   sw        $t7, 0x24($sp)
  .L802DD150_195C60:
    /* 195C60 802DD150 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DD154_195C64:
    /* 195C64 802DD154 8FB00040 */  lw         $s0, 0x40($sp)
    /* 195C68 802DD158 27BD0080 */  addiu      $sp, $sp, 0x80
    /* 195C6C 802DD15C 03E00008 */  jr         $ra
    /* 195C70 802DD160 00000000 */   nop
endlabel func_802DCADC_1955EC
    /* 195C74 802DD164 00000000 */  nop
    /* 195C78 802DD168 00000000 */  nop
    /* 195C7C 802DD16C 00000000 */  nop
