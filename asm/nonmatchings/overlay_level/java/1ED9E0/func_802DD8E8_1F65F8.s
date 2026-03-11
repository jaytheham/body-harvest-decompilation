nonmatching func_802DD8E8_1F65F8, 0x17C

glabel func_802DD8E8_1F65F8
    /* 1F65F8 802DD8E8 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 1F65FC 802DD8EC AFA40030 */  sw         $a0, 0x30($sp)
    /* 1F6600 802DD8F0 93AE0033 */  lbu        $t6, 0x33($sp)
    /* 1F6604 802DD8F4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F6608 802DD8F8 AFB00020 */  sw         $s0, 0x20($sp)
    /* 1F660C 802DD8FC 000E7880 */  sll        $t7, $t6, 2
    /* 1F6610 802DD900 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F6614 802DD904 000F7900 */  sll        $t7, $t7, 4
    /* 1F6618 802DD908 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F661C 802DD90C 01F88021 */  addu       $s0, $t7, $t8
    /* 1F6620 802DD910 8E020020 */  lw         $v0, 0x20($s0)
    /* 1F6624 802DD914 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 1F6628 802DD918 30590600 */  andi       $t9, $v0, 0x600
    /* 1F662C 802DD91C 1320004C */  beqz       $t9, .L802DDA50_1F6760
    /* 1F6630 802DD920 000242C0 */   sll       $t0, $v0, 11
    /* 1F6634 802DD924 05020045 */  bltzl      $t0, .L802DDA3C_1F674C
    /* 1F6638 802DD928 93A40033 */   lbu       $a0, 0x33($sp)
    /* 1F663C 802DD92C 0C007660 */  jal        sins
    /* 1F6640 802DD930 96040006 */   lhu       $a0, 0x6($s0)
    /* 1F6644 802DD934 A7A20028 */  sh         $v0, 0x28($sp)
    /* 1F6648 802DD938 0C007654 */  jal        coss
    /* 1F664C 802DD93C 96040006 */   lhu       $a0, 0x6($s0)
    /* 1F6650 802DD940 87AA0028 */  lh         $t2, 0x28($sp)
    /* 1F6654 802DD944 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F6658 802DD948 44810800 */  mtc1       $at, $f1
    /* 1F665C 802DD94C 448A4000 */  mtc1       $t2, $f8
    /* 1F6660 802DD950 44800000 */  mtc1       $zero, $f0
    /* 1F6664 802DD954 86090000 */  lh         $t1, 0x0($s0)
    /* 1F6668 802DD958 468042A0 */  cvt.s.w    $f10, $f8
    /* 1F666C 802DD95C 3C01802E */  lui        $at, %hi(D_802E0F80)
    /* 1F6670 802DD960 44892000 */  mtc1       $t1, $f4
    /* 1F6674 802DD964 D4220F80 */  ldc1       $f2, %lo(D_802E0F80)($at)
    /* 1F6678 802DD968 860E0004 */  lh         $t6, 0x4($s0)
    /* 1F667C 802DD96C 468021A1 */  cvt.d.w    $f6, $f4
    /* 1F6680 802DD970 9208001A */  lbu        $t0, 0x1A($s0)
    /* 1F6684 802DD974 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 1F6688 802DD978 240A0002 */  addiu      $t2, $zero, 0x2
    /* 1F668C 802DD97C 46005421 */  cvt.d.s    $f16, $f10
    /* 1F6690 802DD980 00084880 */  sll        $t1, $t0, 2
    /* 1F6694 802DD984 46208483 */  div.d      $f18, $f16, $f0
    /* 1F6698 802DD988 44828000 */  mtc1       $v0, $f16
    /* 1F669C 802DD98C 01284823 */  subu       $t1, $t1, $t0
    /* 1F66A0 802DD990 00094880 */  sll        $t1, $t1, 2
    /* 1F66A4 802DD994 01284821 */  addu       $t1, $t1, $t0
    /* 1F66A8 802DD998 000948C0 */  sll        $t1, $t1, 3
    /* 1F66AC 802DD99C 00E93821 */  addu       $a3, $a3, $t1
    /* 1F66B0 802DD9A0 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 1F66B4 802DD9A4 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 1F66B8 802DD9A8 86050002 */  lh         $a1, 0x2($s0)
    /* 1F66BC 802DD9AC 46229102 */  mul.d      $f4, $f18, $f2
    /* 1F66C0 802DD9B0 468084A0 */  cvt.s.w    $f18, $f16
    /* 1F66C4 802DD9B4 46243201 */  sub.d      $f8, $f6, $f4
    /* 1F66C8 802DD9B8 460091A1 */  cvt.d.s    $f6, $f18
    /* 1F66CC 802DD9BC 4620428D */  trunc.w.d  $f10, $f8
    /* 1F66D0 802DD9C0 46203103 */  div.d      $f4, $f6, $f0
    /* 1F66D4 802DD9C4 44045000 */  mfc1       $a0, $f10
    /* 1F66D8 802DD9C8 448E5000 */  mtc1       $t6, $f10
    /* 1F66DC 802DD9CC 00046400 */  sll        $t4, $a0, 16
    /* 1F66E0 802DD9D0 46805421 */  cvt.d.w    $f16, $f10
    /* 1F66E4 802DD9D4 000C2403 */  sra        $a0, $t4, 16
    /* 1F66E8 802DD9D8 46222202 */  mul.d      $f8, $f4, $f2
    /* 1F66EC 802DD9DC 46304480 */  add.d      $f18, $f8, $f16
    /* 1F66F0 802DD9E0 4620918D */  trunc.w.d  $f6, $f18
    /* 1F66F4 802DD9E4 44063000 */  mfc1       $a2, $f6
    /* 1F66F8 802DD9E8 00000000 */  nop
    /* 1F66FC 802DD9EC 0006C400 */  sll        $t8, $a2, 16
    /* 1F6700 802DD9F0 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F6704 802DD9F4 00183403 */   sra       $a2, $t8, 16
    /* 1F6708 802DD9F8 860B000C */  lh         $t3, 0xC($s0)
    /* 1F670C 802DD9FC 3C078015 */  lui        $a3, %hi(D_8014DD50)
    /* 1F6710 802DDA00 24E7DD50 */  addiu      $a3, $a3, %lo(D_8014DD50)
    /* 1F6714 802DDA04 000B6100 */  sll        $t4, $t3, 4
    /* 1F6718 802DDA08 00EC6821 */  addu       $t5, $a3, $t4
    /* 1F671C 802DDA0C 91A3000C */  lbu        $v1, 0xC($t5)
    /* 1F6720 802DDA10 00037100 */  sll        $t6, $v1, 4
    /* 1F6724 802DDA14 00EE7821 */  addu       $t7, $a3, $t6
    /* 1F6728 802DDA18 91E5000C */  lbu        $a1, 0xC($t7)
    /* 1F672C 802DDA1C 0005C100 */  sll        $t8, $a1, 4
    /* 1F6730 802DDA20 00F8C821 */  addu       $t9, $a3, $t8
    /* 1F6734 802DDA24 9326000D */  lbu        $a2, 0xD($t9)
    /* 1F6738 802DDA28 00062400 */  sll        $a0, $a2, 16
    /* 1F673C 802DDA2C 00044403 */  sra        $t0, $a0, 16
    /* 1F6740 802DDA30 0C022384 */  jal        func_80088E10_97DC0
    /* 1F6744 802DDA34 01002025 */   or        $a0, $t0, $zero
    /* 1F6748 802DDA38 93A40033 */  lbu        $a0, 0x33($sp)
  .L802DDA3C_1F674C:
    /* 1F674C 802DDA3C 0C0B7450 */  jal        func_802DD140_1F5E50
    /* 1F6750 802DDA40 24050004 */   addiu     $a1, $zero, 0x4
    /* 1F6754 802DDA44 86090008 */  lh         $t1, 0x8($s0)
    /* 1F6758 802DDA48 252AFED4 */  addiu      $t2, $t1, -0x12C
    /* 1F675C 802DDA4C A60A0008 */  sh         $t2, 0x8($s0)
  .L802DDA50_1F6760:
    /* 1F6760 802DDA50 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 1F6764 802DDA54 8FB00020 */  lw         $s0, 0x20($sp)
    /* 1F6768 802DDA58 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 1F676C 802DDA5C 03E00008 */  jr         $ra
    /* 1F6770 802DDA60 00000000 */   nop
endlabel func_802DD8E8_1F65F8
