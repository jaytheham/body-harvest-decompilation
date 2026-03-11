nonmatching func_800BC760_CB710, 0xAAC

glabel func_800BC760_CB710
    /* CB710 800BC760 27BDFF10 */  addiu      $sp, $sp, -0xF0
    /* CB714 800BC764 AFB40048 */  sw         $s4, 0x48($sp)
    /* CB718 800BC768 AFB1003C */  sw         $s1, 0x3C($sp)
    /* CB71C 800BC76C 00048C00 */  sll        $s1, $a0, 16
    /* CB720 800BC770 0006A400 */  sll        $s4, $a2, 16
    /* CB724 800BC774 AFB5004C */  sw         $s5, 0x4C($sp)
    /* CB728 800BC778 0005AC00 */  sll        $s5, $a1, 16
    /* CB72C 800BC77C 0014C403 */  sra        $t8, $s4, 16
    /* CB730 800BC780 00117403 */  sra        $t6, $s1, 16
    /* CB734 800BC784 AFA400F0 */  sw         $a0, 0xF0($sp)
    /* CB738 800BC788 AFA500F4 */  sw         $a1, 0xF4($sp)
    /* CB73C 800BC78C 00182C00 */  sll        $a1, $t8, 16
    /* CB740 800BC790 000E2400 */  sll        $a0, $t6, 16
    /* CB744 800BC794 00157C03 */  sra        $t7, $s5, 16
    /* CB748 800BC798 AFBF005C */  sw         $ra, 0x5C($sp)
    /* CB74C 800BC79C AFB00038 */  sw         $s0, 0x38($sp)
    /* CB750 800BC7A0 24190080 */  addiu      $t9, $zero, 0x80
    /* CB754 800BC7A4 3C018005 */  lui        $at, %hi(D_80052B58)
    /* CB758 800BC7A8 00044C03 */  sra        $t1, $a0, 16
    /* CB75C 800BC7AC 00055403 */  sra        $t2, $a1, 16
    /* CB760 800BC7B0 30F000FF */  andi       $s0, $a3, 0xFF
    /* CB764 800BC7B4 01E0A825 */  or         $s5, $t7, $zero
    /* CB768 800BC7B8 01C08825 */  or         $s1, $t6, $zero
    /* CB76C 800BC7BC 0300A025 */  or         $s4, $t8, $zero
    /* CB770 800BC7C0 AFBE0058 */  sw         $fp, 0x58($sp)
    /* CB774 800BC7C4 AFB70054 */  sw         $s7, 0x54($sp)
    /* CB778 800BC7C8 AFB60050 */  sw         $s6, 0x50($sp)
    /* CB77C 800BC7CC AFB30044 */  sw         $s3, 0x44($sp)
    /* CB780 800BC7D0 AFB20040 */  sw         $s2, 0x40($sp)
    /* CB784 800BC7D4 F7BA0030 */  sdc1       $f26, 0x30($sp)
    /* CB788 800BC7D8 F7B80028 */  sdc1       $f24, 0x28($sp)
    /* CB78C 800BC7DC F7B60020 */  sdc1       $f22, 0x20($sp)
    /* CB790 800BC7E0 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* CB794 800BC7E4 AFA600F8 */  sw         $a2, 0xF8($sp)
    /* CB798 800BC7E8 AFA700FC */  sw         $a3, 0xFC($sp)
    /* CB79C 800BC7EC AC392B58 */  sw         $t9, %lo(D_80052B58)($at)
    /* CB7A0 800BC7F0 01402825 */  or         $a1, $t2, $zero
    /* CB7A4 800BC7F4 0C02E134 */  jal        func_800B84D0_C7480
    /* CB7A8 800BC7F8 01202025 */   or        $a0, $t1, $zero
    /* CB7AC 800BC7FC 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* CB7B0 800BC800 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* CB7B4 800BC804 00022203 */  sra        $a0, $v0, 8
    /* CB7B8 800BC808 3C168005 */  lui        $s6, %hi(D_80052A8C)
    /* CB7BC 800BC80C 0085082A */  slt        $at, $a0, $a1
    /* CB7C0 800BC810 10200002 */  beqz       $at, .L800BC81C_CB7CC
    /* CB7C4 800BC814 26D62A8C */   addiu     $s6, $s6, %lo(D_80052A8C)
    /* CB7C8 800BC818 00A02025 */  or         $a0, $a1, $zero
  .L800BC81C_CB7CC:
    /* CB7CC 800BC81C 248B00C8 */  addiu      $t3, $a0, 0xC8
    /* CB7D0 800BC820 0175082A */  slt        $at, $t3, $s5
    /* CB7D4 800BC824 1020000B */  beqz       $at, .L800BC854_CB804
    /* CB7D8 800BC828 3C178006 */   lui       $s7, %hi(D_8005BB2C)
    /* CB7DC 800BC82C 93B300E9 */  lbu        $s3, 0xE9($sp)
    /* CB7E0 800BC830 00106080 */  sll        $t4, $s0, 2
    /* CB7E4 800BC834 06610003 */  bgez       $s3, .L800BC844_CB7F4
    /* CB7E8 800BC838 00136883 */   sra       $t5, $s3, 2
    /* CB7EC 800BC83C 26610003 */  addiu      $at, $s3, 0x3
    /* CB7F0 800BC840 00016883 */  sra        $t5, $at, 2
  .L800BC844_CB7F4:
    /* CB7F4 800BC844 018D9023 */  subu       $s2, $t4, $t5
    /* CB7F8 800BC848 264E003C */  addiu      $t6, $s2, 0x3C
    /* CB7FC 800BC84C 1000000A */  b          .L800BC878_CB828
    /* CB800 800BC850 AFAE00CC */   sw        $t6, 0xCC($sp)
  .L800BC854_CB804:
    /* CB804 800BC854 93B300E9 */  lbu        $s3, 0xE9($sp)
    /* CB808 800BC858 00107840 */  sll        $t7, $s0, 1
    /* CB80C 800BC85C 06610003 */  bgez       $s3, .L800BC86C_CB81C
    /* CB810 800BC860 0013C083 */   sra       $t8, $s3, 2
    /* CB814 800BC864 26610003 */  addiu      $at, $s3, 0x3
    /* CB818 800BC868 0001C083 */  sra        $t8, $at, 2
  .L800BC86C_CB81C:
    /* CB81C 800BC86C 01F89023 */  subu       $s2, $t7, $t8
    /* CB820 800BC870 2659001E */  addiu      $t9, $s2, 0x1E
    /* CB824 800BC874 AFB900CC */  sw         $t9, 0xCC($sp)
  .L800BC878_CB828:
    /* CB828 800BC878 8EC20000 */  lw         $v0, 0x0($s6)
    /* CB82C 800BC87C 26F7BB2C */  addiu      $s7, $s7, %lo(D_8005BB2C)
    /* CB830 800BC880 3C0DB700 */  lui        $t5, (0xB7000000 >> 16)
    /* CB834 800BC884 3049001F */  andi       $t1, $v0, 0x1F
    /* CB838 800BC888 2D210011 */  sltiu      $at, $t1, 0x11
    /* CB83C 800BC88C 14200006 */  bnez       $at, .L800BC8A8_CB858
    /* CB840 800BC890 01201025 */   or        $v0, $t1, $zero
    /* CB844 800BC894 240A0020 */  addiu      $t2, $zero, 0x20
    /* CB848 800BC898 01499823 */  subu       $s3, $t2, $t1
    /* CB84C 800BC89C 326B00FF */  andi       $t3, $s3, 0xFF
    /* CB850 800BC8A0 10000002 */  b          .L800BC8AC_CB85C
    /* CB854 800BC8A4 01609825 */   or        $s3, $t3, $zero
  .L800BC8A8_CB858:
    /* CB858 800BC8A8 305300FF */  andi       $s3, $v0, 0xFF
  .L800BC8AC_CB85C:
    /* CB85C 800BC8AC 8EE30000 */  lw         $v1, 0x0($s7)
    /* CB860 800BC8B0 240E2000 */  addiu      $t6, $zero, 0x2000
    /* CB864 800BC8B4 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* CB868 800BC8B8 246C0008 */  addiu      $t4, $v1, 0x8
    /* CB86C 800BC8BC AEEC0000 */  sw         $t4, 0x0($s7)
    /* CB870 800BC8C0 AC6E0004 */  sw         $t6, 0x4($v1)
    /* CB874 800BC8C4 AC6D0000 */  sw         $t5, 0x0($v1)
    /* CB878 800BC8C8 87AF0102 */  lh         $t7, 0x102($sp)
    /* CB87C 800BC8CC A7B100E0 */  sh         $s1, 0xE0($sp)
    /* CB880 800BC8D0 A7B500E2 */  sh         $s5, 0xE2($sp)
    /* CB884 800BC8D4 A7B400E4 */  sh         $s4, 0xE4($sp)
    /* CB888 800BC8D8 A7A000DA */  sh         $zero, 0xDA($sp)
    /* CB88C 800BC8DC A7A000DC */  sh         $zero, 0xDC($sp)
    /* CB890 800BC8E0 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* CB894 800BC8E4 27A400E0 */  addiu      $a0, $sp, 0xE0
    /* CB898 800BC8E8 27A500D8 */  addiu      $a1, $sp, 0xD8
    /* CB89C 800BC8EC 00003025 */  or         $a2, $zero, $zero
    /* CB8A0 800BC8F0 0C000E74 */  jal        func_800039D0_45D0
    /* CB8A4 800BC8F4 A7AF00D8 */   sh        $t7, 0xD8($sp)
    /* CB8A8 800BC8F8 8EE30000 */  lw         $v1, 0x0($s7)
    /* CB8AC 800BC8FC 3C068006 */  lui        $a2, %hi(D_8005BB38)
    /* CB8B0 800BC900 24C6BB38 */  addiu      $a2, $a2, %lo(D_8005BB38)
    /* CB8B4 800BC904 24780008 */  addiu      $t8, $v1, 0x8
    /* CB8B8 800BC908 AEF80000 */  sw         $t8, 0x0($s7)
    /* CB8BC 800BC90C 3C108006 */  lui        $s0, %hi(D_8005BB34)
    /* CB8C0 800BC910 3C190104 */  lui        $t9, (0x1040040 >> 16)
    /* CB8C4 800BC914 37390040 */  ori        $t9, $t9, (0x1040040 & 0xFFFF)
    /* CB8C8 800BC918 2610BB34 */  addiu      $s0, $s0, %lo(D_8005BB34)
    /* CB8CC 800BC91C AC790000 */  sw         $t9, 0x0($v1)
    /* CB8D0 800BC920 8CC90000 */  lw         $t1, 0x0($a2)
    /* CB8D4 800BC924 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* CB8D8 800BC928 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* CB8DC 800BC92C 01215024 */  and        $t2, $t1, $at
    /* CB8E0 800BC930 AC6A0004 */  sw         $t2, 0x4($v1)
    /* CB8E4 800BC934 8CCB0000 */  lw         $t3, 0x0($a2)
    /* CB8E8 800BC938 8E0D0000 */  lw         $t5, 0x0($s0)
    /* CB8EC 800BC93C 240400FF */  addiu      $a0, $zero, 0xFF
    /* CB8F0 800BC940 256C0040 */  addiu      $t4, $t3, 0x40
    /* CB8F4 800BC944 ACCC0000 */  sw         $t4, 0x0($a2)
    /* CB8F8 800BC948 A5A00000 */  sh         $zero, 0x0($t5)
    /* CB8FC 800BC94C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* CB900 800BC950 240F001C */  addiu      $t7, $zero, 0x1C
    /* CB904 800BC954 001358C0 */  sll        $t3, $s3, 3
    /* CB908 800BC958 A5C00002 */  sh         $zero, 0x2($t6)
    /* CB90C 800BC95C 8E180000 */  lw         $t8, 0x0($s0)
    /* CB910 800BC960 01735823 */  subu       $t3, $t3, $s3
    /* CB914 800BC964 008B6023 */  subu       $t4, $a0, $t3
    /* CB918 800BC968 A70F0004 */  sh         $t7, 0x4($t8)
    /* CB91C 800BC96C 8E190000 */  lw         $t9, 0x0($s0)
    /* CB920 800BC970 00137080 */  sll        $t6, $s3, 2
    /* CB924 800BC974 01D37021 */  addu       $t6, $t6, $s3
    /* CB928 800BC978 A7200006 */  sh         $zero, 0x6($t9)
    /* CB92C 800BC97C 8E090000 */  lw         $t1, 0x0($s0)
    /* CB930 800BC980 008E7823 */  subu       $t7, $a0, $t6
    /* CB934 800BC984 44929000 */  mtc1       $s2, $f18
    /* CB938 800BC988 A5200008 */  sh         $zero, 0x8($t1)
    /* CB93C 800BC98C 8E0A0000 */  lw         $t2, 0x0($s0)
    /* CB940 800BC990 468095A1 */  cvt.d.w    $f22, $f18
    /* CB944 800BC994 44809000 */  mtc1       $zero, $f18
    /* CB948 800BC998 A540000A */  sh         $zero, 0xA($t2)
    /* CB94C 800BC99C 8E0D0000 */  lw         $t5, 0x0($s0)
    /* CB950 800BC9A0 468096A1 */  cvt.d.w    $f26, $f18
    /* CB954 800BC9A4 241900FF */  addiu      $t9, $zero, 0xFF
    /* CB958 800BC9A8 A1AC000C */  sb         $t4, 0xC($t5)
    /* CB95C 800BC9AC 8E180000 */  lw         $t8, 0x0($s0)
    /* CB960 800BC9B0 4480C000 */  mtc1       $zero, $f24
    /* CB964 800BC9B4 4480A000 */  mtc1       $zero, $f20
    /* CB968 800BC9B8 A30F000D */  sb         $t7, 0xD($t8)
    /* CB96C 800BC9BC 8E090000 */  lw         $t1, 0x0($s0)
    /* CB970 800BC9C0 3C01402C */  lui        $at, (0x402C0000 >> 16)
    /* CB974 800BC9C4 4481C800 */  mtc1       $at, $f25
    /* CB978 800BC9C8 A139000E */  sb         $t9, 0xE($t1)
    /* CB97C 800BC9CC 8E0A0000 */  lw         $t2, 0x0($s0)
    /* CB980 800BC9D0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* CB984 800BC9D4 4481A800 */  mtc1       $at, $f21
    /* CB988 800BC9D8 A140000F */  sb         $zero, 0xF($t2)
    /* CB98C 800BC9DC 8E0B0000 */  lw         $t3, 0x0($s0)
    /* CB990 800BC9E0 0013F080 */  sll        $fp, $s3, 2
    /* CB994 800BC9E4 00008825 */  or         $s1, $zero, $zero
    /* CB998 800BC9E8 256C0010 */  addiu      $t4, $t3, 0x10
    /* CB99C 800BC9EC AE0C0000 */  sw         $t4, 0x0($s0)
    /* CB9A0 800BC9F0 27DE0064 */  addiu      $fp, $fp, 0x64
    /* CB9A4 800BC9F4 AFB30084 */  sw         $s3, 0x84($sp)
  .L800BC9F8_CB9A8:
    /* CB9A8 800BC9F8 00119400 */  sll        $s2, $s1, 16
    /* CB9AC 800BC9FC 2401000A */  addiu      $at, $zero, 0xA
    /* CB9B0 800BCA00 0241001A */  div        $zero, $s2, $at
    /* CB9B4 800BCA04 8ECD0000 */  lw         $t5, 0x0($s6)
    /* CB9B8 800BCA08 00009812 */  mflo       $s3
    /* CB9BC 800BCA0C 000D7080 */  sll        $t6, $t5, 2
    /* CB9C0 800BCA10 01CD7023 */  subu       $t6, $t6, $t5
    /* CB9C4 800BCA14 000E70C0 */  sll        $t6, $t6, 3
    /* CB9C8 800BCA18 01CD7021 */  addu       $t6, $t6, $t5
    /* CB9CC 800BCA1C 000E7080 */  sll        $t6, $t6, 2
    /* CB9D0 800BCA20 01D32021 */  addu       $a0, $t6, $s3
    /* CB9D4 800BCA24 308FFFFF */  andi       $t7, $a0, 0xFFFF
    /* CB9D8 800BCA28 0C007654 */  jal        coss
    /* CB9DC 800BCA2C 01E02025 */   or        $a0, $t7, $zero
    /* CB9E0 800BCA30 24010003 */  addiu      $at, $zero, 0x3
    /* CB9E4 800BCA34 0241001A */  div        $zero, $s2, $at
    /* CB9E8 800BCA38 44824000 */  mtc1       $v0, $f8
    /* CB9EC 800BCA3C 8ECA0000 */  lw         $t2, 0x0($s6)
    /* CB9F0 800BCA40 0000A012 */  mflo       $s4
    /* CB9F4 800BCA44 468042A0 */  cvt.s.w    $f10, $f8
    /* CB9F8 800BCA48 000A58C0 */  sll        $t3, $t2, 3
    /* CB9FC 800BCA4C 016A5823 */  subu       $t3, $t3, $t2
    /* CBA00 800BCA50 000B5940 */  sll        $t3, $t3, 5
    /* CBA04 800BCA54 016A5821 */  addu       $t3, $t3, $t2
    /* CBA08 800BCA58 000B58C0 */  sll        $t3, $t3, 3
    /* CBA0C 800BCA5C 46005421 */  cvt.d.s    $f16, $f10
    /* CBA10 800BCA60 028B2021 */  addu       $a0, $s4, $t3
    /* CBA14 800BCA64 46348483 */  div.d      $f18, $f16, $f20
    /* CBA18 800BCA68 308CFFFF */  andi       $t4, $a0, 0xFFFF
    /* CBA1C 800BCA6C 01802025 */  or         $a0, $t4, $zero
    /* CBA20 800BCA70 46369102 */  mul.d      $f4, $f18, $f22
    /* CBA24 800BCA74 463A2180 */  add.d      $f6, $f4, $f26
    /* CBA28 800BCA78 4620320D */  trunc.w.d  $f8, $f6
    /* CBA2C 800BCA7C 44154000 */  mfc1       $s5, $f8
    /* CBA30 800BCA80 00000000 */  nop
    /* CBA34 800BCA84 0015CC00 */  sll        $t9, $s5, 16
    /* CBA38 800BCA88 0C007654 */  jal        coss
    /* CBA3C 800BCA8C 0019AC03 */   sra       $s5, $t9, 16
    /* CBA40 800BCA90 44825000 */  mtc1       $v0, $f10
    /* CBA44 800BCA94 44954000 */  mtc1       $s5, $f8
    /* CBA48 800BCA98 8ED80000 */  lw         $t8, 0x0($s6)
    /* CBA4C 800BCA9C 46805420 */  cvt.s.w    $f16, $f10
    /* CBA50 800BCAA0 0018C880 */  sll        $t9, $t8, 2
    /* CBA54 800BCAA4 0338C823 */  subu       $t9, $t9, $t8
    /* CBA58 800BCAA8 0019C8C0 */  sll        $t9, $t9, 3
    /* CBA5C 800BCAAC 468042A1 */  cvt.d.w    $f10, $f8
    /* CBA60 800BCAB0 0338C821 */  addu       $t9, $t9, $t8
    /* CBA64 800BCAB4 0019C880 */  sll        $t9, $t9, 2
    /* CBA68 800BCAB8 03332021 */  addu       $a0, $t9, $s3
    /* CBA6C 800BCABC 460084A1 */  cvt.d.s    $f18, $f16
    /* CBA70 800BCAC0 3089FFFF */  andi       $t1, $a0, 0xFFFF
    /* CBA74 800BCAC4 46349103 */  div.d      $f4, $f18, $f20
    /* CBA78 800BCAC8 01202025 */  or         $a0, $t1, $zero
    /* CBA7C 800BCACC 46382182 */  mul.d      $f6, $f4, $f24
    /* CBA80 800BCAD0 462A3400 */  add.d      $f16, $f6, $f10
    /* CBA84 800BCAD4 4620848D */  trunc.w.d  $f18, $f16
    /* CBA88 800BCAD8 44159000 */  mfc1       $s5, $f18
    /* CBA8C 800BCADC 00000000 */  nop
    /* CBA90 800BCAE0 00157400 */  sll        $t6, $s5, 16
    /* CBA94 800BCAE4 0C007660 */  jal        sins
    /* CBA98 800BCAE8 000EAC03 */   sra       $s5, $t6, 16
    /* CBA9C 800BCAEC 44822000 */  mtc1       $v0, $f4
    /* CBAA0 800BCAF0 8ECD0000 */  lw         $t5, 0x0($s6)
    /* CBAA4 800BCAF4 46802220 */  cvt.s.w    $f8, $f4
    /* CBAA8 800BCAF8 000D70C0 */  sll        $t6, $t5, 3
    /* CBAAC 800BCAFC 01CD7023 */  subu       $t6, $t6, $t5
    /* CBAB0 800BCB00 000E7140 */  sll        $t6, $t6, 5
    /* CBAB4 800BCB04 01CD7021 */  addu       $t6, $t6, $t5
    /* CBAB8 800BCB08 000E70C0 */  sll        $t6, $t6, 3
    /* CBABC 800BCB0C 460041A1 */  cvt.d.s    $f6, $f8
    /* CBAC0 800BCB10 028E2021 */  addu       $a0, $s4, $t6
    /* CBAC4 800BCB14 46343283 */  div.d      $f10, $f6, $f20
    /* CBAC8 800BCB18 308FFFFF */  andi       $t7, $a0, 0xFFFF
    /* CBACC 800BCB1C 01E02025 */  or         $a0, $t7, $zero
    /* CBAD0 800BCB20 46365402 */  mul.d      $f16, $f10, $f22
    /* CBAD4 800BCB24 463A8480 */  add.d      $f18, $f16, $f26
    /* CBAD8 800BCB28 4620910D */  trunc.w.d  $f4, $f18
    /* CBADC 800BCB2C 44122000 */  mfc1       $s2, $f4
    /* CBAE0 800BCB30 00000000 */  nop
    /* CBAE4 800BCB34 00125C00 */  sll        $t3, $s2, 16
    /* CBAE8 800BCB38 0C007660 */  jal        sins
    /* CBAEC 800BCB3C 000B9403 */   sra       $s2, $t3, 16
    /* CBAF0 800BCB40 44824000 */  mtc1       $v0, $f8
    /* CBAF4 800BCB44 44922000 */  mtc1       $s2, $f4
    /* CBAF8 800BCB48 3C038005 */  lui        $v1, %hi(D_80052B58)
    /* CBAFC 800BCB4C 468041A0 */  cvt.s.w    $f6, $f8
    /* CBB00 800BCB50 8C632B58 */  lw         $v1, %lo(D_80052B58)($v1)
    /* CBB04 800BCB54 33C200FF */  andi       $v0, $fp, 0xFF
    /* CBB08 800BCB58 007E082A */  slt        $at, $v1, $fp
    /* CBB0C 800BCB5C 46802221 */  cvt.d.w    $f8, $f4
    /* CBB10 800BCB60 460032A1 */  cvt.d.s    $f10, $f6
    /* CBB14 800BCB64 46345403 */  div.d      $f16, $f10, $f20
    /* CBB18 800BCB68 46388482 */  mul.d      $f18, $f16, $f24
    /* CBB1C 800BCB6C 46289180 */  add.d      $f6, $f18, $f8
    /* CBB20 800BCB70 4620328D */  trunc.w.d  $f10, $f6
    /* CBB24 800BCB74 44125000 */  mfc1       $s2, $f10
    /* CBB28 800BCB78 00000000 */  nop
    /* CBB2C 800BCB7C 0012CC00 */  sll        $t9, $s2, 16
    /* CBB30 800BCB80 10200003 */  beqz       $at, .L800BCB90_CBB40
    /* CBB34 800BCB84 00199403 */   sra       $s2, $t9, 16
    /* CBB38 800BCB88 10000001 */  b          .L800BCB90_CBB40
    /* CBB3C 800BCB8C 306200FF */   andi      $v0, $v1, 0xFF
  .L800BCB90_CBB40:
    /* CBB40 800BCB90 8E0A0000 */  lw         $t2, 0x0($s0)
    /* CBB44 800BCB94 240C001C */  addiu      $t4, $zero, 0x1C
    /* CBB48 800BCB98 241900DC */  addiu      $t9, $zero, 0xDC
    /* CBB4C 800BCB9C A5550000 */  sh         $s5, 0x0($t2)
    /* CBB50 800BCBA0 8E0B0000 */  lw         $t3, 0x0($s0)
    /* CBB54 800BCBA4 240A00E6 */  addiu      $t2, $zero, 0xE6
    /* CBB58 800BCBA8 26310001 */  addiu      $s1, $s1, 0x1
    /* CBB5C 800BCBAC A5720002 */  sh         $s2, 0x2($t3)
    /* CBB60 800BCBB0 8E0D0000 */  lw         $t5, 0x0($s0)
    /* CBB64 800BCBB4 A5AC0004 */  sh         $t4, 0x4($t5)
    /* CBB68 800BCBB8 8E0E0000 */  lw         $t6, 0x0($s0)
    /* CBB6C 800BCBBC 240C00FF */  addiu      $t4, $zero, 0xFF
    /* CBB70 800BCBC0 A5C00006 */  sh         $zero, 0x6($t6)
    /* CBB74 800BCBC4 8E0F0000 */  lw         $t7, 0x0($s0)
    /* CBB78 800BCBC8 A5E00008 */  sh         $zero, 0x8($t7)
    /* CBB7C 800BCBCC 8E180000 */  lw         $t8, 0x0($s0)
    /* CBB80 800BCBD0 A700000A */  sh         $zero, 0xA($t8)
    /* CBB84 800BCBD4 8E090000 */  lw         $t1, 0x0($s0)
    /* CBB88 800BCBD8 A139000C */  sb         $t9, 0xC($t1)
    /* CBB8C 800BCBDC 8E0B0000 */  lw         $t3, 0x0($s0)
    /* CBB90 800BCBE0 0011CC00 */  sll        $t9, $s1, 16
    /* CBB94 800BCBE4 00198C03 */  sra        $s1, $t9, 16
    /* CBB98 800BCBE8 A16A000D */  sb         $t2, 0xD($t3)
    /* CBB9C 800BCBEC 8E0D0000 */  lw         $t5, 0x0($s0)
    /* CBBA0 800BCBF0 2A21000A */  slti       $at, $s1, 0xA
    /* CBBA4 800BCBF4 A1AC000E */  sb         $t4, 0xE($t5)
    /* CBBA8 800BCBF8 8E0E0000 */  lw         $t6, 0x0($s0)
    /* CBBAC 800BCBFC A1C2000F */  sb         $v0, 0xF($t6)
    /* CBBB0 800BCC00 8E0F0000 */  lw         $t7, 0x0($s0)
    /* CBBB4 800BCC04 25F80010 */  addiu      $t8, $t7, 0x10
    /* CBBB8 800BCC08 1420FF7B */  bnez       $at, .L800BC9F8_CB9A8
    /* CBBBC 800BCC0C AE180000 */   sw        $t8, 0x0($s0)
    /* CBBC0 800BCC10 8FAA00CC */  lw         $t2, 0xCC($sp)
    /* CBBC4 800BCC14 8FAB0084 */  lw         $t3, 0x84($sp)
    /* CBBC8 800BCC18 3C01401C */  lui        $at, (0x401C0000 >> 16)
    /* CBBCC 800BCC1C 448A8000 */  mtc1       $t2, $f16
    /* CBBD0 800BCC20 000B6080 */  sll        $t4, $t3, 2
    /* CBBD4 800BCC24 018B6023 */  subu       $t4, $t4, $t3
    /* CBBD8 800BCC28 000C6040 */  sll        $t4, $t4, 1
    /* CBBDC 800BCC2C 240D00B4 */  addiu      $t5, $zero, 0xB4
    /* CBBE0 800BCC30 4481C800 */  mtc1       $at, $f25
    /* CBBE4 800BCC34 4480C000 */  mtc1       $zero, $f24
    /* CBBE8 800BCC38 01ACF023 */  subu       $fp, $t5, $t4
    /* CBBEC 800BCC3C 00008825 */  or         $s1, $zero, $zero
    /* CBBF0 800BCC40 468085A1 */  cvt.d.w    $f22, $f16
  .L800BCC44_CBBF4:
    /* CBBF4 800BCC44 00119400 */  sll        $s2, $s1, 16
    /* CBBF8 800BCC48 2401000A */  addiu      $at, $zero, 0xA
    /* CBBFC 800BCC4C 0241001A */  div        $zero, $s2, $at
    /* CBC00 800BCC50 8ECE0000 */  lw         $t6, 0x0($s6)
    /* CBC04 800BCC54 00009812 */  mflo       $s3
    /* CBC08 800BCC58 000E7880 */  sll        $t7, $t6, 2
    /* CBC0C 800BCC5C 01EE7823 */  subu       $t7, $t7, $t6
    /* CBC10 800BCC60 000F78C0 */  sll        $t7, $t7, 3
    /* CBC14 800BCC64 01EE7821 */  addu       $t7, $t7, $t6
    /* CBC18 800BCC68 000F7880 */  sll        $t7, $t7, 2
    /* CBC1C 800BCC6C 01F32021 */  addu       $a0, $t7, $s3
    /* CBC20 800BCC70 3098FFFF */  andi       $t8, $a0, 0xFFFF
    /* CBC24 800BCC74 0C007654 */  jal        coss
    /* CBC28 800BCC78 03002025 */   or        $a0, $t8, $zero
    /* CBC2C 800BCC7C 24010003 */  addiu      $at, $zero, 0x3
    /* CBC30 800BCC80 0241001A */  div        $zero, $s2, $at
    /* CBC34 800BCC84 44822000 */  mtc1       $v0, $f4
    /* CBC38 800BCC88 8ECB0000 */  lw         $t3, 0x0($s6)
    /* CBC3C 800BCC8C 0000A012 */  mflo       $s4
    /* CBC40 800BCC90 468024A0 */  cvt.s.w    $f18, $f4
    /* CBC44 800BCC94 000B68C0 */  sll        $t5, $t3, 3
    /* CBC48 800BCC98 01AB6823 */  subu       $t5, $t5, $t3
    /* CBC4C 800BCC9C 000D6940 */  sll        $t5, $t5, 5
    /* CBC50 800BCCA0 01AB6821 */  addu       $t5, $t5, $t3
    /* CBC54 800BCCA4 000D68C0 */  sll        $t5, $t5, 3
    /* CBC58 800BCCA8 46009221 */  cvt.d.s    $f8, $f18
    /* CBC5C 800BCCAC 028D2021 */  addu       $a0, $s4, $t5
    /* CBC60 800BCCB0 46344183 */  div.d      $f6, $f8, $f20
    /* CBC64 800BCCB4 308CFFFF */  andi       $t4, $a0, 0xFFFF
    /* CBC68 800BCCB8 01802025 */  or         $a0, $t4, $zero
    /* CBC6C 800BCCBC 46363282 */  mul.d      $f10, $f6, $f22
    /* CBC70 800BCCC0 463A5400 */  add.d      $f16, $f10, $f26
    /* CBC74 800BCCC4 4620810D */  trunc.w.d  $f4, $f16
    /* CBC78 800BCCC8 44152000 */  mfc1       $s5, $f4
    /* CBC7C 800BCCCC 00000000 */  nop
    /* CBC80 800BCCD0 00154C00 */  sll        $t1, $s5, 16
    /* CBC84 800BCCD4 0C007654 */  jal        coss
    /* CBC88 800BCCD8 0009AC03 */   sra       $s5, $t1, 16
    /* CBC8C 800BCCDC 44829000 */  mtc1       $v0, $f18
    /* CBC90 800BCCE0 44952000 */  mtc1       $s5, $f4
    /* CBC94 800BCCE4 8ED90000 */  lw         $t9, 0x0($s6)
    /* CBC98 800BCCE8 46809220 */  cvt.s.w    $f8, $f18
    /* CBC9C 800BCCEC 00194880 */  sll        $t1, $t9, 2
    /* CBCA0 800BCCF0 01394823 */  subu       $t1, $t1, $t9
    /* CBCA4 800BCCF4 000948C0 */  sll        $t1, $t1, 3
    /* CBCA8 800BCCF8 468024A1 */  cvt.d.w    $f18, $f4
    /* CBCAC 800BCCFC 01394821 */  addu       $t1, $t1, $t9
    /* CBCB0 800BCD00 00094880 */  sll        $t1, $t1, 2
    /* CBCB4 800BCD04 01332021 */  addu       $a0, $t1, $s3
    /* CBCB8 800BCD08 460041A1 */  cvt.d.s    $f6, $f8
    /* CBCBC 800BCD0C 308AFFFF */  andi       $t2, $a0, 0xFFFF
    /* CBCC0 800BCD10 46343283 */  div.d      $f10, $f6, $f20
    /* CBCC4 800BCD14 01402025 */  or         $a0, $t2, $zero
    /* CBCC8 800BCD18 46385402 */  mul.d      $f16, $f10, $f24
    /* CBCCC 800BCD1C 46328200 */  add.d      $f8, $f16, $f18
    /* CBCD0 800BCD20 4620418D */  trunc.w.d  $f6, $f8
    /* CBCD4 800BCD24 44153000 */  mfc1       $s5, $f6
    /* CBCD8 800BCD28 00000000 */  nop
    /* CBCDC 800BCD2C 00157C00 */  sll        $t7, $s5, 16
    /* CBCE0 800BCD30 0C007660 */  jal        sins
    /* CBCE4 800BCD34 000FAC03 */   sra       $s5, $t7, 16
    /* CBCE8 800BCD38 44825000 */  mtc1       $v0, $f10
    /* CBCEC 800BCD3C 8ECE0000 */  lw         $t6, 0x0($s6)
    /* CBCF0 800BCD40 46805120 */  cvt.s.w    $f4, $f10
    /* CBCF4 800BCD44 000E78C0 */  sll        $t7, $t6, 3
    /* CBCF8 800BCD48 01EE7823 */  subu       $t7, $t7, $t6
    /* CBCFC 800BCD4C 000F7940 */  sll        $t7, $t7, 5
    /* CBD00 800BCD50 01EE7821 */  addu       $t7, $t7, $t6
    /* CBD04 800BCD54 000F78C0 */  sll        $t7, $t7, 3
    /* CBD08 800BCD58 46002421 */  cvt.d.s    $f16, $f4
    /* CBD0C 800BCD5C 028F2021 */  addu       $a0, $s4, $t7
    /* CBD10 800BCD60 46348483 */  div.d      $f18, $f16, $f20
    /* CBD14 800BCD64 3098FFFF */  andi       $t8, $a0, 0xFFFF
    /* CBD18 800BCD68 03002025 */  or         $a0, $t8, $zero
    /* CBD1C 800BCD6C 46369202 */  mul.d      $f8, $f18, $f22
    /* CBD20 800BCD70 463A4180 */  add.d      $f6, $f8, $f26
    /* CBD24 800BCD74 4620328D */  trunc.w.d  $f10, $f6
    /* CBD28 800BCD78 44125000 */  mfc1       $s2, $f10
    /* CBD2C 800BCD7C 00000000 */  nop
    /* CBD30 800BCD80 00126C00 */  sll        $t5, $s2, 16
    /* CBD34 800BCD84 0C007660 */  jal        sins
    /* CBD38 800BCD88 000D9403 */   sra       $s2, $t5, 16
    /* CBD3C 800BCD8C 44822000 */  mtc1       $v0, $f4
    /* CBD40 800BCD90 44925000 */  mtc1       $s2, $f10
    /* CBD44 800BCD94 3C038005 */  lui        $v1, %hi(D_80052B58)
    /* CBD48 800BCD98 46802420 */  cvt.s.w    $f16, $f4
    /* CBD4C 800BCD9C 8C632B58 */  lw         $v1, %lo(D_80052B58)($v1)
    /* CBD50 800BCDA0 322B0001 */  andi       $t3, $s1, 0x1
    /* CBD54 800BCDA4 26310001 */  addiu      $s1, $s1, 0x1
    /* CBD58 800BCDA8 007E082A */  slt        $at, $v1, $fp
    /* CBD5C 800BCDAC 46805121 */  cvt.d.w    $f4, $f10
    /* CBD60 800BCDB0 33C200FF */  andi       $v0, $fp, 0xFF
    /* CBD64 800BCDB4 460084A1 */  cvt.d.s    $f18, $f16
    /* CBD68 800BCDB8 46349203 */  div.d      $f8, $f18, $f20
    /* CBD6C 800BCDBC 46384182 */  mul.d      $f6, $f8, $f24
    /* CBD70 800BCDC0 46243400 */  add.d      $f16, $f6, $f4
    /* CBD74 800BCDC4 4620848D */  trunc.w.d  $f18, $f16
    /* CBD78 800BCDC8 44129000 */  mfc1       $s2, $f18
    /* CBD7C 800BCDCC 00000000 */  nop
    /* CBD80 800BCDD0 00124C00 */  sll        $t1, $s2, 16
    /* CBD84 800BCDD4 10200003 */  beqz       $at, .L800BCDE4_CBD94
    /* CBD88 800BCDD8 00099403 */   sra       $s2, $t1, 16
    /* CBD8C 800BCDDC 10000001 */  b          .L800BCDE4_CBD94
    /* CBD90 800BCDE0 306200FF */   andi      $v0, $v1, 0xFF
  .L800BCDE4_CBD94:
    /* CBD94 800BCDE4 5560001B */  bnel       $t3, $zero, .L800BCE54_CBE04
    /* CBD98 800BCDE8 8E190000 */   lw        $t9, 0x0($s0)
    /* CBD9C 800BCDEC 8E0D0000 */  lw         $t5, 0x0($s0)
    /* CBDA0 800BCDF0 240E0003 */  addiu      $t6, $zero, 0x3
    /* CBDA4 800BCDF4 240A0047 */  addiu      $t2, $zero, 0x47
    /* CBDA8 800BCDF8 A5B50000 */  sh         $s5, 0x0($t5)
    /* CBDAC 800BCDFC 8E0C0000 */  lw         $t4, 0x0($s0)
    /* CBDB0 800BCE00 240D000A */  addiu      $t5, $zero, 0xA
    /* CBDB4 800BCE04 A5920002 */  sh         $s2, 0x2($t4)
    /* CBDB8 800BCE08 8E0F0000 */  lw         $t7, 0x0($s0)
    /* CBDBC 800BCE0C A5EE0004 */  sh         $t6, 0x4($t7)
    /* CBDC0 800BCE10 8E180000 */  lw         $t8, 0x0($s0)
    /* CBDC4 800BCE14 240E00D4 */  addiu      $t6, $zero, 0xD4
    /* CBDC8 800BCE18 A7000006 */  sh         $zero, 0x6($t8)
    /* CBDCC 800BCE1C 8E190000 */  lw         $t9, 0x0($s0)
    /* CBDD0 800BCE20 A7200008 */  sh         $zero, 0x8($t9)
    /* CBDD4 800BCE24 8E090000 */  lw         $t1, 0x0($s0)
    /* CBDD8 800BCE28 A520000A */  sh         $zero, 0xA($t1)
    /* CBDDC 800BCE2C 8E0B0000 */  lw         $t3, 0x0($s0)
    /* CBDE0 800BCE30 A16A000C */  sb         $t2, 0xC($t3)
    /* CBDE4 800BCE34 8E0C0000 */  lw         $t4, 0x0($s0)
    /* CBDE8 800BCE38 A18D000D */  sb         $t5, 0xD($t4)
    /* CBDEC 800BCE3C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* CBDF0 800BCE40 A1EE000E */  sb         $t6, 0xE($t7)
    /* CBDF4 800BCE44 8E180000 */  lw         $t8, 0x0($s0)
    /* CBDF8 800BCE48 10000019 */  b          .L800BCEB0_CBE60
    /* CBDFC 800BCE4C A302000F */   sb        $v0, 0xF($t8)
    /* CBE00 800BCE50 8E190000 */  lw         $t9, 0x0($s0)
  .L800BCE54_CBE04:
    /* CBE04 800BCE54 240A0003 */  addiu      $t2, $zero, 0x3
    /* CBE08 800BCE58 240F0062 */  addiu      $t7, $zero, 0x62
    /* CBE0C 800BCE5C A7350000 */  sh         $s5, 0x0($t9)
    /* CBE10 800BCE60 8E090000 */  lw         $t1, 0x0($s0)
    /* CBE14 800BCE64 241900EF */  addiu      $t9, $zero, 0xEF
    /* CBE18 800BCE68 A5320002 */  sh         $s2, 0x2($t1)
    /* CBE1C 800BCE6C 8E0B0000 */  lw         $t3, 0x0($s0)
    /* CBE20 800BCE70 A56A0004 */  sh         $t2, 0x4($t3)
    /* CBE24 800BCE74 8E0D0000 */  lw         $t5, 0x0($s0)
    /* CBE28 800BCE78 240A00FF */  addiu      $t2, $zero, 0xFF
    /* CBE2C 800BCE7C A5A00006 */  sh         $zero, 0x6($t5)
    /* CBE30 800BCE80 8E0C0000 */  lw         $t4, 0x0($s0)
    /* CBE34 800BCE84 A5800008 */  sh         $zero, 0x8($t4)
    /* CBE38 800BCE88 8E0E0000 */  lw         $t6, 0x0($s0)
    /* CBE3C 800BCE8C A5C0000A */  sh         $zero, 0xA($t6)
    /* CBE40 800BCE90 8E180000 */  lw         $t8, 0x0($s0)
    /* CBE44 800BCE94 A30F000C */  sb         $t7, 0xC($t8)
    /* CBE48 800BCE98 8E090000 */  lw         $t1, 0x0($s0)
    /* CBE4C 800BCE9C A139000D */  sb         $t9, 0xD($t1)
    /* CBE50 800BCEA0 8E0B0000 */  lw         $t3, 0x0($s0)
    /* CBE54 800BCEA4 A16A000E */  sb         $t2, 0xE($t3)
    /* CBE58 800BCEA8 8E0D0000 */  lw         $t5, 0x0($s0)
    /* CBE5C 800BCEAC A1A2000F */  sb         $v0, 0xF($t5)
  .L800BCEB0_CBE60:
    /* CBE60 800BCEB0 8E0C0000 */  lw         $t4, 0x0($s0)
    /* CBE64 800BCEB4 00117C00 */  sll        $t7, $s1, 16
    /* CBE68 800BCEB8 000F8C03 */  sra        $s1, $t7, 16
    /* CBE6C 800BCEBC 2A21000A */  slti       $at, $s1, 0xA
    /* CBE70 800BCEC0 258E0010 */  addiu      $t6, $t4, 0x10
    /* CBE74 800BCEC4 1420FF5F */  bnez       $at, .L800BCC44_CBBF4
    /* CBE78 800BCEC8 AE0E0000 */   sw        $t6, 0x0($s0)
    /* CBE7C 800BCECC 8EE30000 */  lw         $v1, 0x0($s7)
    /* CBE80 800BCED0 3C140400 */  lui        $s4, (0x400554F >> 16)
    /* CBE84 800BCED4 3694554F */  ori        $s4, $s4, (0x400554F & 0xFFFF)
    /* CBE88 800BCED8 24790008 */  addiu      $t9, $v1, 0x8
    /* CBE8C 800BCEDC AEF90000 */  sw         $t9, 0x0($s7)
    /* CBE90 800BCEE0 AC740000 */  sw         $s4, 0x0($v1)
    /* CBE94 800BCEE4 8E090000 */  lw         $t1, 0x0($s0)
    /* CBE98 800BCEE8 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* CBE9C 800BCEEC 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* CBEA0 800BCEF0 252AFEB0 */  addiu      $t2, $t1, -0x150
    /* CBEA4 800BCEF4 01415824 */  and        $t3, $t2, $at
    /* CBEA8 800BCEF8 24110001 */  addiu      $s1, $zero, 0x1
    /* CBEAC 800BCEFC 3C13BF00 */  lui        $s3, (0xBF000000 >> 16)
    /* CBEB0 800BCF00 AC6B0004 */  sw         $t3, 0x4($v1)
  .L800BCF04_CBEB4:
    /* CBEB4 800BCF04 00111040 */  sll        $v0, $s1, 1
    /* CBEB8 800BCF08 8EE30000 */  lw         $v1, 0x0($s7)
    /* CBEBC 800BCF0C 26310001 */  addiu      $s1, $s1, 0x1
    /* CBEC0 800BCF10 00114C00 */  sll        $t1, $s1, 16
    /* CBEC4 800BCF14 304C00FF */  andi       $t4, $v0, 0xFF
    /* CBEC8 800BCF18 244F0002 */  addiu      $t7, $v0, 0x2
    /* CBECC 800BCF1C 00098C03 */  sra        $s1, $t1, 16
    /* CBED0 800BCF20 31F800FF */  andi       $t8, $t7, 0xFF
    /* CBED4 800BCF24 000C7200 */  sll        $t6, $t4, 8
    /* CBED8 800BCF28 246D0008 */  addiu      $t5, $v1, 0x8
    /* CBEDC 800BCF2C 2A21000A */  slti       $at, $s1, 0xA
    /* CBEE0 800BCF30 AEED0000 */  sw         $t5, 0x0($s7)
    /* CBEE4 800BCF34 01D8C825 */  or         $t9, $t6, $t8
    /* CBEE8 800BCF38 AC790004 */  sw         $t9, 0x4($v1)
    /* CBEEC 800BCF3C 1420FFF1 */  bnez       $at, .L800BCF04_CBEB4
    /* CBEF0 800BCF40 AC730000 */   sw        $s3, 0x0($v1)
    /* CBEF4 800BCF44 8EE30000 */  lw         $v1, 0x0($s7)
    /* CBEF8 800BCF48 24151402 */  addiu      $s5, $zero, 0x1402
    /* CBEFC 800BCF4C 24110001 */  addiu      $s1, $zero, 0x1
    /* CBF00 800BCF50 246B0008 */  addiu      $t3, $v1, 0x8
    /* CBF04 800BCF54 AEEB0000 */  sw         $t3, 0x0($s7)
    /* CBF08 800BCF58 3C12B100 */  lui        $s2, (0xB1000000 >> 16)
    /* CBF0C 800BCF5C AC750004 */  sw         $s5, 0x4($v1)
    /* CBF10 800BCF60 AC730000 */  sw         $s3, 0x0($v1)
  .L800BCF64_CBF14:
    /* CBF14 800BCF64 00111040 */  sll        $v0, $s1, 1
    /* CBF18 800BCF68 8EE30000 */  lw         $v1, 0x0($s7)
    /* CBF1C 800BCF6C 24440002 */  addiu      $a0, $v0, 0x2
    /* CBF20 800BCF70 308C00FF */  andi       $t4, $a0, 0xFF
    /* CBF24 800BCF74 24460014 */  addiu      $a2, $v0, 0x14
    /* CBF28 800BCF78 305800FF */  andi       $t8, $v0, 0xFF
    /* CBF2C 800BCF7C 0018CA00 */  sll        $t9, $t8, 8
    /* CBF30 800BCF80 30CF00FF */  andi       $t7, $a2, 0xFF
    /* CBF34 800BCF84 000C7400 */  sll        $t6, $t4, 16
    /* CBF38 800BCF88 246D0008 */  addiu      $t5, $v1, 0x8
    /* CBF3C 800BCF8C AEED0000 */  sw         $t5, 0x0($s7)
    /* CBF40 800BCF90 01D94825 */  or         $t1, $t6, $t9
    /* CBF44 800BCF94 01802025 */  or         $a0, $t4, $zero
    /* CBF48 800BCF98 244C0016 */  addiu      $t4, $v0, 0x16
    /* CBF4C 800BCF9C 012F5025 */  or         $t2, $t1, $t7
    /* CBF50 800BCFA0 000F6C00 */  sll        $t5, $t7, 16
    /* CBF54 800BCFA4 26310001 */  addiu      $s1, $s1, 0x1
    /* CBF58 800BCFA8 318F00FF */  andi       $t7, $t4, 0xFF
    /* CBF5C 800BCFAC 00114C00 */  sll        $t1, $s1, 16
    /* CBF60 800BCFB0 000FC200 */  sll        $t8, $t7, 8
    /* CBF64 800BCFB4 00098C03 */  sra        $s1, $t1, 16
    /* CBF68 800BCFB8 01B87025 */  or         $t6, $t5, $t8
    /* CBF6C 800BCFBC 2A21000A */  slti       $at, $s1, 0xA
    /* CBF70 800BCFC0 01C4C825 */  or         $t9, $t6, $a0
    /* CBF74 800BCFC4 01525825 */  or         $t3, $t2, $s2
    /* CBF78 800BCFC8 AC6B0000 */  sw         $t3, 0x0($v1)
    /* CBF7C 800BCFCC 1420FFE5 */  bnez       $at, .L800BCF64_CBF14
    /* CBF80 800BCFD0 AC790004 */   sw        $t9, 0x4($v1)
    /* CBF84 800BCFD4 8EE30000 */  lw         $v1, 0x0($s7)
    /* CBF88 800BCFD8 3C16B102 */  lui        $s6, (0xB1021428 >> 16)
    /* CBF8C 800BCFDC 3C1E0028 */  lui        $fp, (0x281602 >> 16)
    /* CBF90 800BCFE0 246B0008 */  addiu      $t3, $v1, 0x8
    /* CBF94 800BCFE4 AEEB0000 */  sw         $t3, 0x0($s7)
    /* CBF98 800BCFE8 37DE1602 */  ori        $fp, $fp, (0x281602 & 0xFFFF)
    /* CBF9C 800BCFEC 36D61428 */  ori        $s6, $s6, (0xB1021428 & 0xFFFF)
    /* CBFA0 800BCFF0 AC760000 */  sw         $s6, 0x0($v1)
    /* CBFA4 800BCFF4 AC7E0004 */  sw         $fp, 0x4($v1)
    /* CBFA8 800BCFF8 340C8000 */  ori        $t4, $zero, 0x8000
    /* CBFAC 800BCFFC 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* CBFB0 800BD000 A7AC00D8 */  sh         $t4, 0xD8($sp)
    /* CBFB4 800BD004 A7A000DA */  sh         $zero, 0xDA($sp)
    /* CBFB8 800BD008 A7A000DC */  sh         $zero, 0xDC($sp)
    /* CBFBC 800BD00C 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* CBFC0 800BD010 00002025 */  or         $a0, $zero, $zero
    /* CBFC4 800BD014 27A500D8 */  addiu      $a1, $sp, 0xD8
    /* CBFC8 800BD018 0C000E74 */  jal        func_800039D0_45D0
    /* CBFCC 800BD01C 00003025 */   or        $a2, $zero, $zero
    /* CBFD0 800BD020 8EE30000 */  lw         $v1, 0x0($s7)
    /* CBFD4 800BD024 3C0D0104 */  lui        $t5, (0x1040040 >> 16)
    /* CBFD8 800BD028 35AD0040 */  ori        $t5, $t5, (0x1040040 & 0xFFFF)
    /* CBFDC 800BD02C 246F0008 */  addiu      $t7, $v1, 0x8
    /* CBFE0 800BD030 AEEF0000 */  sw         $t7, 0x0($s7)
    /* CBFE4 800BD034 3C188006 */  lui        $t8, %hi(D_8005BB38)
    /* CBFE8 800BD038 AC6D0000 */  sw         $t5, 0x0($v1)
    /* CBFEC 800BD03C 8F18BB38 */  lw         $t8, %lo(D_8005BB38)($t8)
    /* CBFF0 800BD040 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* CBFF4 800BD044 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* CBFF8 800BD048 03017024 */  and        $t6, $t8, $at
    /* CBFFC 800BD04C 3C198006 */  lui        $t9, %hi(D_8005BB38)
    /* CC000 800BD050 AC6E0004 */  sw         $t6, 0x4($v1)
    /* CC004 800BD054 8F39BB38 */  lw         $t9, %lo(D_8005BB38)($t9)
    /* CC008 800BD058 3C018006 */  lui        $at, %hi(D_8005BB38)
    /* CC00C 800BD05C 24110001 */  addiu      $s1, $zero, 0x1
    /* CC010 800BD060 27290040 */  addiu      $t1, $t9, 0x40
    /* CC014 800BD064 AC29BB38 */  sw         $t1, %lo(D_8005BB38)($at)
    /* CC018 800BD068 8EE30000 */  lw         $v1, 0x0($s7)
    /* CC01C 800BD06C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* CC020 800BD070 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* CC024 800BD074 246A0008 */  addiu      $t2, $v1, 0x8
    /* CC028 800BD078 AEEA0000 */  sw         $t2, 0x0($s7)
    /* CC02C 800BD07C AC740000 */  sw         $s4, 0x0($v1)
    /* CC030 800BD080 8E0B0000 */  lw         $t3, 0x0($s0)
    /* CC034 800BD084 256CFEB0 */  addiu      $t4, $t3, -0x150
    /* CC038 800BD088 01817824 */  and        $t7, $t4, $at
    /* CC03C 800BD08C AC6F0004 */  sw         $t7, 0x4($v1)
  .L800BD090_CC040:
    /* CC040 800BD090 00111040 */  sll        $v0, $s1, 1
    /* CC044 800BD094 8EE30000 */  lw         $v1, 0x0($s7)
    /* CC048 800BD098 26310001 */  addiu      $s1, $s1, 0x1
    /* CC04C 800BD09C 00115C00 */  sll        $t3, $s1, 16
    /* CC050 800BD0A0 305800FF */  andi       $t8, $v0, 0xFF
    /* CC054 800BD0A4 24590002 */  addiu      $t9, $v0, 0x2
    /* CC058 800BD0A8 000B8C03 */  sra        $s1, $t3, 16
    /* CC05C 800BD0AC 332900FF */  andi       $t1, $t9, 0xFF
    /* CC060 800BD0B0 00187200 */  sll        $t6, $t8, 8
    /* CC064 800BD0B4 246D0008 */  addiu      $t5, $v1, 0x8
    /* CC068 800BD0B8 2A21000A */  slti       $at, $s1, 0xA
    /* CC06C 800BD0BC AEED0000 */  sw         $t5, 0x0($s7)
    /* CC070 800BD0C0 01C95025 */  or         $t2, $t6, $t1
    /* CC074 800BD0C4 AC6A0004 */  sw         $t2, 0x4($v1)
    /* CC078 800BD0C8 1420FFF1 */  bnez       $at, .L800BD090_CC040
    /* CC07C 800BD0CC AC730000 */   sw        $s3, 0x0($v1)
    /* CC080 800BD0D0 8EE30000 */  lw         $v1, 0x0($s7)
    /* CC084 800BD0D4 24110001 */  addiu      $s1, $zero, 0x1
    /* CC088 800BD0D8 246F0008 */  addiu      $t7, $v1, 0x8
    /* CC08C 800BD0DC AEEF0000 */  sw         $t7, 0x0($s7)
    /* CC090 800BD0E0 AC750004 */  sw         $s5, 0x4($v1)
    /* CC094 800BD0E4 AC730000 */  sw         $s3, 0x0($v1)
  .L800BD0E8_CC098:
    /* CC098 800BD0E8 00111040 */  sll        $v0, $s1, 1
    /* CC09C 800BD0EC 8EE30000 */  lw         $v1, 0x0($s7)
    /* CC0A0 800BD0F0 24440002 */  addiu      $a0, $v0, 0x2
    /* CC0A4 800BD0F4 309800FF */  andi       $t8, $a0, 0xFF
    /* CC0A8 800BD0F8 24460014 */  addiu      $a2, $v0, 0x14
    /* CC0AC 800BD0FC 304900FF */  andi       $t1, $v0, 0xFF
    /* CC0B0 800BD100 00095200 */  sll        $t2, $t1, 8
    /* CC0B4 800BD104 30D900FF */  andi       $t9, $a2, 0xFF
    /* CC0B8 800BD108 00187400 */  sll        $t6, $t8, 16
    /* CC0BC 800BD10C 246D0008 */  addiu      $t5, $v1, 0x8
    /* CC0C0 800BD110 AEED0000 */  sw         $t5, 0x0($s7)
    /* CC0C4 800BD114 01CA5825 */  or         $t3, $t6, $t2
    /* CC0C8 800BD118 03002025 */  or         $a0, $t8, $zero
    /* CC0CC 800BD11C 24580016 */  addiu      $t8, $v0, 0x16
    /* CC0D0 800BD120 01796025 */  or         $t4, $t3, $t9
    /* CC0D4 800BD124 00196C00 */  sll        $t5, $t9, 16
    /* CC0D8 800BD128 26310001 */  addiu      $s1, $s1, 0x1
    /* CC0DC 800BD12C 331900FF */  andi       $t9, $t8, 0xFF
    /* CC0E0 800BD130 00115C00 */  sll        $t3, $s1, 16
    /* CC0E4 800BD134 00194A00 */  sll        $t1, $t9, 8
    /* CC0E8 800BD138 000B8C03 */  sra        $s1, $t3, 16
    /* CC0EC 800BD13C 01A97025 */  or         $t6, $t5, $t1
    /* CC0F0 800BD140 2A21000A */  slti       $at, $s1, 0xA
    /* CC0F4 800BD144 01C45025 */  or         $t2, $t6, $a0
    /* CC0F8 800BD148 01927825 */  or         $t7, $t4, $s2
    /* CC0FC 800BD14C AC6F0000 */  sw         $t7, 0x0($v1)
    /* CC100 800BD150 1420FFE5 */  bnez       $at, .L800BD0E8_CC098
    /* CC104 800BD154 AC6A0004 */   sw        $t2, 0x4($v1)
    /* CC108 800BD158 8EE30000 */  lw         $v1, 0x0($s7)
    /* CC10C 800BD15C 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* CC110 800BD160 3C08BD00 */  lui        $t0, (0xBD000000 >> 16)
    /* CC114 800BD164 246F0008 */  addiu      $t7, $v1, 0x8
    /* CC118 800BD168 AEEF0000 */  sw         $t7, 0x0($s7)
    /* CC11C 800BD16C AC7E0004 */  sw         $fp, 0x4($v1)
    /* CC120 800BD170 AC760000 */  sw         $s6, 0x0($v1)
    /* CC124 800BD174 8EE30000 */  lw         $v1, 0x0($s7)
    /* CC128 800BD178 3C0AB600 */  lui        $t2, (0xB6000000 >> 16)
    /* CC12C 800BD17C 240B2000 */  addiu      $t3, $zero, 0x2000
    /* CC130 800BD180 24780008 */  addiu      $t8, $v1, 0x8
    /* CC134 800BD184 AEF80000 */  sw         $t8, 0x0($s7)
    /* CC138 800BD188 AC600004 */  sw         $zero, 0x4($v1)
    /* CC13C 800BD18C AC790000 */  sw         $t9, 0x0($v1)
    /* CC140 800BD190 8EE30000 */  lw         $v1, 0x0($s7)
    /* CC144 800BD194 246D0008 */  addiu      $t5, $v1, 0x8
    /* CC148 800BD198 AEED0000 */  sw         $t5, 0x0($s7)
    /* CC14C 800BD19C AC600004 */  sw         $zero, 0x4($v1)
    /* CC150 800BD1A0 AC680000 */  sw         $t0, 0x0($v1)
    /* CC154 800BD1A4 8EE30000 */  lw         $v1, 0x0($s7)
    /* CC158 800BD1A8 24690008 */  addiu      $t1, $v1, 0x8
    /* CC15C 800BD1AC AEE90000 */  sw         $t1, 0x0($s7)
    /* CC160 800BD1B0 AC600004 */  sw         $zero, 0x4($v1)
    /* CC164 800BD1B4 AC680000 */  sw         $t0, 0x0($v1)
    /* CC168 800BD1B8 8EE30000 */  lw         $v1, 0x0($s7)
    /* CC16C 800BD1BC 246E0008 */  addiu      $t6, $v1, 0x8
    /* CC170 800BD1C0 AEEE0000 */  sw         $t6, 0x0($s7)
    /* CC174 800BD1C4 AC6B0004 */  sw         $t3, 0x4($v1)
    /* CC178 800BD1C8 AC6A0000 */  sw         $t2, 0x0($v1)
    /* CC17C 800BD1CC 8FBF005C */  lw         $ra, 0x5C($sp)
    /* CC180 800BD1D0 8FBE0058 */  lw         $fp, 0x58($sp)
    /* CC184 800BD1D4 8FB70054 */  lw         $s7, 0x54($sp)
    /* CC188 800BD1D8 8FB60050 */  lw         $s6, 0x50($sp)
    /* CC18C 800BD1DC 8FB5004C */  lw         $s5, 0x4C($sp)
    /* CC190 800BD1E0 8FB40048 */  lw         $s4, 0x48($sp)
    /* CC194 800BD1E4 8FB30044 */  lw         $s3, 0x44($sp)
    /* CC198 800BD1E8 8FB20040 */  lw         $s2, 0x40($sp)
    /* CC19C 800BD1EC 8FB1003C */  lw         $s1, 0x3C($sp)
    /* CC1A0 800BD1F0 8FB00038 */  lw         $s0, 0x38($sp)
    /* CC1A4 800BD1F4 D7BA0030 */  ldc1       $f26, 0x30($sp)
    /* CC1A8 800BD1F8 D7B80028 */  ldc1       $f24, 0x28($sp)
    /* CC1AC 800BD1FC D7B60020 */  ldc1       $f22, 0x20($sp)
    /* CC1B0 800BD200 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* CC1B4 800BD204 03E00008 */  jr         $ra
    /* CC1B8 800BD208 27BD00F0 */   addiu     $sp, $sp, 0xF0
endlabel func_800BC760_CB710
