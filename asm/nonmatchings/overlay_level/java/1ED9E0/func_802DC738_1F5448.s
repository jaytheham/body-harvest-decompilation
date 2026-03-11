nonmatching func_802DC738_1F5448, 0x31C

glabel func_802DC738_1F5448
    /* 1F5448 802DC738 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 1F544C 802DC73C AFA40078 */  sw         $a0, 0x78($sp)
    /* 1F5450 802DC740 93AE007B */  lbu        $t6, 0x7B($sp)
    /* 1F5454 802DC744 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F5458 802DC748 AFB00028 */  sw         $s0, 0x28($sp)
    /* 1F545C 802DC74C 000E7880 */  sll        $t7, $t6, 2
    /* 1F5460 802DC750 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F5464 802DC754 000F7900 */  sll        $t7, $t7, 4
    /* 1F5468 802DC758 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F546C 802DC75C 01F88021 */  addu       $s0, $t7, $t8
    /* 1F5470 802DC760 8619000C */  lh         $t9, 0xC($s0)
    /* 1F5474 802DC764 3C058015 */  lui        $a1, %hi(D_8014DD50)
    /* 1F5478 802DC768 24A5DD50 */  addiu      $a1, $a1, %lo(D_8014DD50)
    /* 1F547C 802DC76C 00194100 */  sll        $t0, $t9, 4
    /* 1F5480 802DC770 00A84821 */  addu       $t1, $a1, $t0
    /* 1F5484 802DC774 9122000C */  lbu        $v0, 0xC($t1)
    /* 1F5488 802DC778 920D0036 */  lbu        $t5, 0x36($s0)
    /* 1F548C 802DC77C AFBF002C */  sw         $ra, 0x2C($sp)
    /* 1F5490 802DC780 00025100 */  sll        $t2, $v0, 4
    /* 1F5494 802DC784 00AA5821 */  addu       $t3, $a1, $t2
    /* 1F5498 802DC788 816C000D */  lb         $t4, 0xD($t3)
    /* 1F549C 802DC78C 31AE00FF */  andi       $t6, $t5, 0xFF
    /* 1F54A0 802DC790 29C10004 */  slti       $at, $t6, 0x4
    /* 1F54A4 802DC794 AFAE0040 */  sw         $t6, 0x40($sp)
    /* 1F54A8 802DC798 A3AD0077 */  sb         $t5, 0x77($sp)
    /* 1F54AC 802DC79C 10200076 */  beqz       $at, .L802DC978_1F5688
    /* 1F54B0 802DC7A0 A3AC0075 */   sb        $t4, 0x75($sp)
    /* 1F54B4 802DC7A4 318F00FF */  andi       $t7, $t4, 0xFF
    /* 1F54B8 802DC7A8 000FC100 */  sll        $t8, $t7, 4
    /* 1F54BC 802DC7AC 00B81821 */  addu       $v1, $a1, $t8
    /* 1F54C0 802DC7B0 8462000A */  lh         $v0, 0xA($v1)
    /* 1F54C4 802DC7B4 84790000 */  lh         $t9, 0x0($v1)
    /* 1F54C8 802DC7B8 AFA3003C */  sw         $v1, 0x3C($sp)
    /* 1F54CC 802DC7BC 3044FFFF */  andi       $a0, $v0, 0xFFFF
    /* 1F54D0 802DC7C0 27280017 */  addiu      $t0, $t9, 0x17
    /* 1F54D4 802DC7C4 AFA8006C */  sw         $t0, 0x6C($sp)
    /* 1F54D8 802DC7C8 0C007654 */  jal        coss
    /* 1F54DC 802DC7CC AFA40038 */   sw        $a0, 0x38($sp)
    /* 1F54E0 802DC7D0 A7A20048 */  sh         $v0, 0x48($sp)
    /* 1F54E4 802DC7D4 0C007660 */  jal        sins
    /* 1F54E8 802DC7D8 97A4003A */   lhu       $a0, 0x3A($sp)
    /* 1F54EC 802DC7DC 87A90048 */  lh         $t1, 0x48($sp)
    /* 1F54F0 802DC7E0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F54F4 802DC7E4 44810800 */  mtc1       $at, $f1
    /* 1F54F8 802DC7E8 44893000 */  mtc1       $t1, $f6
    /* 1F54FC 802DC7EC 44800000 */  mtc1       $zero, $f0
    /* 1F5500 802DC7F0 3C01802E */  lui        $at, %hi(D_802E0F68)
    /* 1F5504 802DC7F4 46803220 */  cvt.s.w    $f8, $f6
    /* 1F5508 802DC7F8 D4240F68 */  ldc1       $f4, %lo(D_802E0F68)($at)
    /* 1F550C 802DC7FC 8FAA003C */  lw         $t2, 0x3C($sp)
    /* 1F5510 802DC800 97A4003A */  lhu        $a0, 0x3A($sp)
    /* 1F5514 802DC804 854B0002 */  lh         $t3, 0x2($t2)
    /* 1F5518 802DC808 460042A1 */  cvt.d.s    $f10, $f8
    /* 1F551C 802DC80C 46205403 */  div.d      $f16, $f10, $f0
    /* 1F5520 802DC810 448B3000 */  mtc1       $t3, $f6
    /* 1F5524 802DC814 00000000 */  nop
    /* 1F5528 802DC818 46803221 */  cvt.d.w    $f8, $f6
    /* 1F552C 802DC81C 46302482 */  mul.d      $f18, $f4, $f16
    /* 1F5530 802DC820 44822000 */  mtc1       $v0, $f4
    /* 1F5534 802DC824 00000000 */  nop
    /* 1F5538 802DC828 46802420 */  cvt.s.w    $f16, $f4
    /* 1F553C 802DC82C 46324280 */  add.d      $f10, $f8, $f18
    /* 1F5540 802DC830 44809000 */  mtc1       $zero, $f18
    /* 1F5544 802DC834 44809800 */  mtc1       $zero, $f19
    /* 1F5548 802DC838 460081A1 */  cvt.d.s    $f6, $f16
    /* 1F554C 802DC83C 46203203 */  div.d      $f8, $f6, $f0
    /* 1F5550 802DC840 46324102 */  mul.d      $f4, $f8, $f18
    /* 1F5554 802DC844 46245401 */  sub.d      $f16, $f10, $f4
    /* 1F5558 802DC848 4620818D */  trunc.w.d  $f6, $f16
    /* 1F555C 802DC84C 0C007660 */  jal        sins
    /* 1F5560 802DC850 E7A60068 */   swc1      $f6, 0x68($sp)
    /* 1F5564 802DC854 A7A20048 */  sh         $v0, 0x48($sp)
    /* 1F5568 802DC858 0C007654 */  jal        coss
    /* 1F556C 802DC85C 97A4003A */   lhu       $a0, 0x3A($sp)
    /* 1F5570 802DC860 44824000 */  mtc1       $v0, $f8
    /* 1F5574 802DC864 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F5578 802DC868 44810800 */  mtc1       $at, $f1
    /* 1F557C 802DC86C 468044A0 */  cvt.s.w    $f18, $f8
    /* 1F5580 802DC870 44800000 */  mtc1       $zero, $f0
    /* 1F5584 802DC874 87AD0048 */  lh         $t5, 0x48($sp)
    /* 1F5588 802DC878 44808800 */  mtc1       $zero, $f17
    /* 1F558C 802DC87C 44808000 */  mtc1       $zero, $f16
    /* 1F5590 802DC880 8FAE003C */  lw         $t6, 0x3C($sp)
    /* 1F5594 802DC884 460092A1 */  cvt.d.s    $f10, $f18
    /* 1F5598 802DC888 448D9000 */  mtc1       $t5, $f18
    /* 1F559C 802DC88C 46205103 */  div.d      $f4, $f10, $f0
    /* 1F55A0 802DC890 3C01802E */  lui        $at, %hi(D_802E0F70)
    /* 1F55A4 802DC894 D4280F70 */  ldc1       $f8, %lo(D_802E0F70)($at)
    /* 1F55A8 802DC898 85CF0004 */  lh         $t7, 0x4($t6)
    /* 1F55AC 802DC89C 468092A0 */  cvt.s.w    $f10, $f18
    /* 1F55B0 802DC8A0 87A6006A */  lh         $a2, 0x6A($sp)
    /* 1F55B4 802DC8A4 27A80060 */  addiu      $t0, $sp, 0x60
    /* 1F55B8 802DC8A8 27A9005C */  addiu      $t1, $sp, 0x5C
    /* 1F55BC 802DC8AC 27AA0058 */  addiu      $t2, $sp, 0x58
    /* 1F55C0 802DC8B0 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 1F55C4 802DC8B4 AFA90014 */  sw         $t1, 0x14($sp)
    /* 1F55C8 802DC8B8 AFA80010 */  sw         $t0, 0x10($sp)
    /* 1F55CC 802DC8BC 02002025 */  or         $a0, $s0, $zero
    /* 1F55D0 802DC8C0 87A5006E */  lh         $a1, 0x6E($sp)
    /* 1F55D4 802DC8C4 AFA60038 */  sw         $a2, 0x38($sp)
    /* 1F55D8 802DC8C8 46302182 */  mul.d      $f6, $f4, $f16
    /* 1F55DC 802DC8CC 46005121 */  cvt.d.s    $f4, $f10
    /* 1F55E0 802DC8D0 448F5000 */  mtc1       $t7, $f10
    /* 1F55E4 802DC8D4 46202403 */  div.d      $f16, $f4, $f0
    /* 1F55E8 802DC8D8 46805121 */  cvt.d.w    $f4, $f10
    /* 1F55EC 802DC8DC 46304482 */  mul.d      $f18, $f8, $f16
    /* 1F55F0 802DC8E0 46322200 */  add.d      $f8, $f4, $f18
    /* 1F55F4 802DC8E4 46283400 */  add.d      $f16, $f6, $f8
    /* 1F55F8 802DC8E8 4620828D */  trunc.w.d  $f10, $f16
    /* 1F55FC 802DC8EC 44035000 */  mfc1       $v1, $f10
    /* 1F5600 802DC8F0 00000000 */  nop
    /* 1F5604 802DC8F4 00033C00 */  sll        $a3, $v1, 16
    /* 1F5608 802DC8F8 0007CC03 */  sra        $t9, $a3, 16
    /* 1F560C 802DC8FC 03203825 */  or         $a3, $t9, $zero
    /* 1F5610 802DC900 AFB90034 */  sw         $t9, 0x34($sp)
    /* 1F5614 802DC904 0C04A10A */  jal        func_80128428_1373D8
    /* 1F5618 802DC908 AFA30064 */   sw        $v1, 0x64($sp)
    /* 1F561C 802DC90C 8FA5006C */  lw         $a1, 0x6C($sp)
    /* 1F5620 802DC910 27AD0054 */  addiu      $t5, $sp, 0x54
    /* 1F5624 802DC914 27AE0050 */  addiu      $t6, $sp, 0x50
    /* 1F5628 802DC918 00052823 */  negu       $a1, $a1
    /* 1F562C 802DC91C 00055C00 */  sll        $t3, $a1, 16
    /* 1F5630 802DC920 27AF004C */  addiu      $t7, $sp, 0x4C
    /* 1F5634 802DC924 8FA60038 */  lw         $a2, 0x38($sp)
    /* 1F5638 802DC928 8FA70034 */  lw         $a3, 0x34($sp)
    /* 1F563C 802DC92C AFAF0018 */  sw         $t7, 0x18($sp)
    /* 1F5640 802DC930 000B2C03 */  sra        $a1, $t3, 16
    /* 1F5644 802DC934 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 1F5648 802DC938 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1F564C 802DC93C 0C04A10A */  jal        func_80128428_1373D8
    /* 1F5650 802DC940 02002025 */   or        $a0, $s0, $zero
    /* 1F5654 802DC944 8FB80050 */  lw         $t8, 0x50($sp)
    /* 1F5658 802DC948 8FB9004C */  lw         $t9, 0x4C($sp)
    /* 1F565C 802DC94C 24080001 */  addiu      $t0, $zero, 0x1
    /* 1F5660 802DC950 AFA80018 */  sw         $t0, 0x18($sp)
    /* 1F5664 802DC954 87A40062 */  lh         $a0, 0x62($sp)
    /* 1F5668 802DC958 87A5005E */  lh         $a1, 0x5E($sp)
    /* 1F566C 802DC95C 87A6005A */  lh         $a2, 0x5A($sp)
    /* 1F5670 802DC960 87A70056 */  lh         $a3, 0x56($sp)
    /* 1F5674 802DC964 AFB80010 */  sw         $t8, 0x10($sp)
    /* 1F5678 802DC968 0C0345AF */  jal        func_800D16BC_E066C
    /* 1F567C 802DC96C AFB90014 */   sw        $t9, 0x14($sp)
    /* 1F5680 802DC970 3C058015 */  lui        $a1, %hi(D_8014DD50)
    /* 1F5684 802DC974 24A5DD50 */  addiu      $a1, $a1, %lo(D_8014DD50)
  .L802DC978_1F5688:
    /* 1F5688 802DC978 93A90075 */  lbu        $t1, 0x75($sp)
    /* 1F568C 802DC97C 8FAD0040 */  lw         $t5, 0x40($sp)
    /* 1F5690 802DC980 24010003 */  addiu      $at, $zero, 0x3
    /* 1F5694 802DC984 00095100 */  sll        $t2, $t1, 4
    /* 1F5698 802DC988 00AA5821 */  addu       $t3, $a1, $t2
    /* 1F569C 802DC98C 856C000E */  lh         $t4, 0xE($t3)
    /* 1F56A0 802DC990 15800029 */  bnez       $t4, .L802DCA38_1F5748
    /* 1F56A4 802DC994 00000000 */   nop
    /* 1F56A8 802DC998 15A10013 */  bne        $t5, $at, .L802DC9E8_1F56F8
    /* 1F56AC 802DC99C 3C0F8025 */   lui       $t7, %hi(alienSpecs)
    /* 1F56B0 802DC9A0 9203001A */  lbu        $v1, 0x1A($s0)
    /* 1F56B4 802DC9A4 25EF6680 */  addiu      $t7, $t7, %lo(alienSpecs)
    /* 1F56B8 802DC9A8 8FB80068 */  lw         $t8, 0x68($sp)
    /* 1F56BC 802DC9AC 00037080 */  sll        $t6, $v1, 2
    /* 1F56C0 802DC9B0 01C37023 */  subu       $t6, $t6, $v1
    /* 1F56C4 802DC9B4 000E7080 */  sll        $t6, $t6, 2
    /* 1F56C8 802DC9B8 01C37021 */  addu       $t6, $t6, $v1
    /* 1F56CC 802DC9BC 000E70C0 */  sll        $t6, $t6, 3
    /* 1F56D0 802DC9C0 8FB90064 */  lw         $t9, 0x64($sp)
    /* 1F56D4 802DC9C4 01CF1021 */  addu       $v0, $t6, $t7
    /* 1F56D8 802DC9C8 A4400020 */  sh         $zero, 0x20($v0)
    /* 1F56DC 802DC9CC A600001E */  sh         $zero, 0x1E($s0)
    /* 1F56E0 802DC9D0 93A4007B */  lbu        $a0, 0x7B($sp)
    /* 1F56E4 802DC9D4 00002825 */  or         $a1, $zero, $zero
    /* 1F56E8 802DC9D8 24060020 */  addiu      $a2, $zero, 0x20
    /* 1F56EC 802DC9DC A4580022 */  sh         $t8, 0x22($v0)
    /* 1F56F0 802DC9E0 0C021C62 */  jal        func_80087188_96138
    /* 1F56F4 802DC9E4 A4590024 */   sh        $t9, 0x24($v0)
  .L802DC9E8_1F56F8:
    /* 1F56F8 802DC9E8 8FA80040 */  lw         $t0, 0x40($sp)
    /* 1F56FC 802DC9EC 93A90077 */  lbu        $t1, 0x77($sp)
    /* 1F5700 802DC9F0 93A40075 */  lbu        $a0, 0x75($sp)
    /* 1F5704 802DC9F4 29010005 */  slti       $at, $t0, 0x5
    /* 1F5708 802DC9F8 10200007 */  beqz       $at, .L802DCA18_1F5728
    /* 1F570C 802DC9FC 00095100 */   sll       $t2, $t1, 4
    /* 1F5710 802DCA00 3C0B802E */  lui        $t3, %hi(D_802E0890)
    /* 1F5714 802DCA04 256B0890 */  addiu      $t3, $t3, %lo(D_802E0890)
    /* 1F5718 802DCA08 0C020721 */  jal        func_80081C84_90C34
    /* 1F571C 802DCA0C 014B2821 */   addu      $a1, $t2, $t3
    /* 1F5720 802DCA10 10000007 */  b          .L802DCA30_1F5740
    /* 1F5724 802DCA14 920E0036 */   lbu       $t6, 0x36($s0)
  .L802DCA18_1F5728:
    /* 1F5728 802DCA18 8E0C0020 */  lw         $t4, 0x20($s0)
    /* 1F572C 802DCA1C 3C01FFFF */  lui        $at, (0xFFFF5FFF >> 16)
    /* 1F5730 802DCA20 34215FFF */  ori        $at, $at, (0xFFFF5FFF & 0xFFFF)
    /* 1F5734 802DCA24 01816824 */  and        $t5, $t4, $at
    /* 1F5738 802DCA28 AE0D0020 */  sw         $t5, 0x20($s0)
    /* 1F573C 802DCA2C 920E0036 */  lbu        $t6, 0x36($s0)
  .L802DCA30_1F5740:
    /* 1F5740 802DCA30 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 1F5744 802DCA34 A20F0036 */  sb         $t7, 0x36($s0)
  .L802DCA38_1F5748:
    /* 1F5748 802DCA38 0C020797 */  jal        func_80081E5C_90E0C
    /* 1F574C 802DCA3C 93A40075 */   lbu       $a0, 0x75($sp)
    /* 1F5750 802DCA40 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 1F5754 802DCA44 8FB00028 */  lw         $s0, 0x28($sp)
    /* 1F5758 802DCA48 27BD0078 */  addiu      $sp, $sp, 0x78
    /* 1F575C 802DCA4C 03E00008 */  jr         $ra
    /* 1F5760 802DCA50 00000000 */   nop
endlabel func_802DC738_1F5448
