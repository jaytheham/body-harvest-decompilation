nonmatching func_802DE594_1F72A4, 0x424

glabel func_802DE594_1F72A4
    /* 1F72A4 802DE594 308600FF */  andi       $a2, $a0, 0xFF
    /* 1F72A8 802DE598 24030050 */  addiu      $v1, $zero, 0x50
    /* 1F72AC 802DE59C 00C30019 */  multu      $a2, $v1
    /* 1F72B0 802DE5A0 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* 1F72B4 802DE5A4 3C028005 */  lui        $v0, %hi(alienInstances)
    /* 1F72B8 802DE5A8 24428198 */  addiu      $v0, $v0, %lo(alienInstances)
    /* 1F72BC 802DE5AC AFB00040 */  sw         $s0, 0x40($sp)
    /* 1F72C0 802DE5B0 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 1F72C4 802DE5B4 AFA40080 */  sw         $a0, 0x80($sp)
    /* 1F72C8 802DE5B8 00007012 */  mflo       $t6
    /* 1F72CC 802DE5BC 004E8021 */  addu       $s0, $v0, $t6
    /* 1F72D0 802DE5C0 920F0025 */  lbu        $t7, 0x25($s0)
    /* 1F72D4 802DE5C4 01E30019 */  multu      $t7, $v1
    /* 1F72D8 802DE5C8 0000C012 */  mflo       $t8
    /* 1F72DC 802DE5CC 0058C821 */  addu       $t9, $v0, $t8
    /* 1F72E0 802DE5D0 AFB9007C */  sw         $t9, 0x7C($sp)
    /* 1F72E4 802DE5D4 8F290020 */  lw         $t1, 0x20($t9)
    /* 1F72E8 802DE5D8 000953C0 */  sll        $t2, $t1, 15
    /* 1F72EC 802DE5DC 054200F2 */  bltzl      $t2, .L802DE9A8_1F76B8
    /* 1F72F0 802DE5E0 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 1F72F4 802DE5E4 860B0012 */  lh         $t3, 0x12($s0)
    /* 1F72F8 802DE5E8 00C02025 */  or         $a0, $a2, $zero
    /* 1F72FC 802DE5EC 2405025D */  addiu      $a1, $zero, 0x25D
    /* 1F7300 802DE5F0 51600009 */  beql       $t3, $zero, .L802DE618_1F7328
    /* 1F7304 802DE5F4 AFA60050 */   sw        $a2, 0x50($sp)
    /* 1F7308 802DE5F8 00C02025 */  or         $a0, $a2, $zero
    /* 1F730C 802DE5FC 2405025E */  addiu      $a1, $zero, 0x25E
    /* 1F7310 802DE600 AFA60050 */  sw         $a2, 0x50($sp)
    /* 1F7314 802DE604 0C04DD1A */  jal        func_80137468_146418
    /* 1F7318 802DE608 A3A60083 */   sb        $a2, 0x83($sp)
    /* 1F731C 802DE60C 10000005 */  b          .L802DE624_1F7334
    /* 1F7320 802DE610 8FAC007C */   lw        $t4, 0x7C($sp)
    /* 1F7324 802DE614 AFA60050 */  sw         $a2, 0x50($sp)
  .L802DE618_1F7328:
    /* 1F7328 802DE618 0C04DD1A */  jal        func_80137468_146418
    /* 1F732C 802DE61C A3A60083 */   sb        $a2, 0x83($sp)
    /* 1F7330 802DE620 8FAC007C */  lw         $t4, 0x7C($sp)
  .L802DE624_1F7334:
    /* 1F7334 802DE624 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 1F7338 802DE628 00002825 */  or         $a1, $zero, $zero
    /* 1F733C 802DE62C 8D8D0020 */  lw         $t5, 0x20($t4)
    /* 1F7340 802DE630 31AE1000 */  andi       $t6, $t5, 0x1000
    /* 1F7344 802DE634 55C0003A */  bnel       $t6, $zero, .L802DE720_1F7430
    /* 1F7348 802DE638 860D0006 */   lh        $t5, 0x6($s0)
    /* 1F734C 802DE63C 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 1F7350 802DE640 0C021395 */  jal        func_80084E54_93E04
    /* 1F7354 802DE644 02002825 */   or        $a1, $s0, $zero
    /* 1F7358 802DE648 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* 1F735C 802DE64C 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* 1F7360 802DE650 AFA20060 */  sw         $v0, 0x60($sp)
    /* 1F7364 802DE654 86180000 */  lh         $t8, 0x0($s0)
    /* 1F7368 802DE658 86090004 */  lh         $t1, 0x4($s0)
    /* 1F736C 802DE65C 84680004 */  lh         $t0, 0x4($v1)
    /* 1F7370 802DE660 846F0000 */  lh         $t7, 0x0($v1)
    /* 1F7374 802DE664 01095023 */  subu       $t2, $t0, $t1
    /* 1F7378 802DE668 01F8C823 */  subu       $t9, $t7, $t8
    /* 1F737C 802DE66C 44992000 */  mtc1       $t9, $f4
    /* 1F7380 802DE670 448A3000 */  mtc1       $t2, $f6
    /* 1F7384 802DE674 46802320 */  cvt.s.w    $f12, $f4
    /* 1F7388 802DE678 0C000E09 */  jal        func_80003824_4424
    /* 1F738C 802DE67C 468033A0 */   cvt.s.w   $f14, $f6
    /* 1F7390 802DE680 8E030020 */  lw         $v1, 0x20($s0)
    /* 1F7394 802DE684 3401F000 */  ori        $at, $zero, 0xF000
    /* 1F7398 802DE688 2405044C */  addiu      $a1, $zero, 0x44C
    /* 1F739C 802DE68C 306BF000 */  andi       $t3, $v1, 0xF000
    /* 1F73A0 802DE690 1161001A */  beq        $t3, $at, .L802DE6FC_1F740C
    /* 1F73A4 802DE694 306C8000 */   andi      $t4, $v1, 0x8000
    /* 1F73A8 802DE698 11800018 */  beqz       $t4, .L802DE6FC_1F740C
    /* 1F73AC 802DE69C 8FAD0060 */   lw        $t5, 0x60($sp)
    /* 1F73B0 802DE6A0 29A107D0 */  slti       $at, $t5, 0x7D0
    /* 1F73B4 802DE6A4 50200016 */  beql       $at, $zero, .L802DE700_1F7410
    /* 1F73B8 802DE6A8 93A40083 */   lbu       $a0, 0x83($sp)
    /* 1F73BC 802DE6AC 8618000E */  lh         $t8, 0xE($s0)
    /* 1F73C0 802DE6B0 24060258 */  addiu      $a2, $zero, 0x258
    /* 1F73C4 802DE6B4 00581823 */  subu       $v1, $v0, $t8
    /* 1F73C8 802DE6B8 0003CC00 */  sll        $t9, $v1, 16
    /* 1F73CC 802DE6BC 00194403 */  sra        $t0, $t9, 16
    /* 1F73D0 802DE6C0 00082023 */  negu       $a0, $t0
    /* 1F73D4 802DE6C4 0088082A */  slt        $at, $a0, $t0
    /* 1F73D8 802DE6C8 10200003 */  beqz       $at, .L802DE6D8_1F73E8
    /* 1F73DC 802DE6CC 00801025 */   or        $v0, $a0, $zero
    /* 1F73E0 802DE6D0 10000001 */  b          .L802DE6D8_1F73E8
    /* 1F73E4 802DE6D4 01001025 */   or        $v0, $t0, $zero
  .L802DE6D8_1F73E8:
    /* 1F73E8 802DE6D8 28414001 */  slti       $at, $v0, 0x4001
    /* 1F73EC 802DE6DC 14200007 */  bnez       $at, .L802DE6FC_1F740C
    /* 1F73F0 802DE6E0 93A40083 */   lbu       $a0, 0x83($sp)
    /* 1F73F4 802DE6E4 0C021D47 */  jal        func_8008751C_964CC
    /* 1F73F8 802DE6E8 240501F4 */   addiu     $a1, $zero, 0x1F4
    /* 1F73FC 802DE6EC 8E090020 */  lw         $t1, 0x20($s0)
    /* 1F7400 802DE6F0 352A0040 */  ori        $t2, $t1, 0x40
    /* 1F7404 802DE6F4 1000000D */  b          .L802DE72C_1F743C
    /* 1F7408 802DE6F8 AE0A0020 */   sw        $t2, 0x20($s0)
  .L802DE6FC_1F740C:
    /* 1F740C 802DE6FC 93A40083 */  lbu        $a0, 0x83($sp)
  .L802DE700_1F7410:
    /* 1F7410 802DE700 0C021D47 */  jal        func_8008751C_964CC
    /* 1F7414 802DE704 24060514 */   addiu     $a2, $zero, 0x514
    /* 1F7418 802DE708 8E0B0020 */  lw         $t3, 0x20($s0)
    /* 1F741C 802DE70C 2401FFBF */  addiu      $at, $zero, -0x41
    /* 1F7420 802DE710 01616024 */  and        $t4, $t3, $at
    /* 1F7424 802DE714 10000005 */  b          .L802DE72C_1F743C
    /* 1F7428 802DE718 AE0C0020 */   sw        $t4, 0x20($s0)
    /* 1F742C 802DE71C 860D0006 */  lh         $t5, 0x6($s0)
  .L802DE720_1F7430:
    /* 1F7430 802DE720 93A40083 */  lbu        $a0, 0x83($sp)
    /* 1F7434 802DE724 0C021D07 */  jal        func_8008741C_963CC
    /* 1F7438 802DE728 A60D002A */   sh        $t5, 0x2A($s0)
  .L802DE72C_1F743C:
    /* 1F743C 802DE72C 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 1F7440 802DE730 8FB8007C */  lw         $t8, 0x7C($sp)
    /* 1F7444 802DE734 93A40083 */  lbu        $a0, 0x83($sp)
    /* 1F7448 802DE738 31CF8000 */  andi       $t7, $t6, 0x8000
    /* 1F744C 802DE73C 15E00006 */  bnez       $t7, .L802DE758_1F7468
    /* 1F7450 802DE740 00000000 */   nop
    /* 1F7454 802DE744 93050000 */  lbu        $a1, 0x0($t8)
    /* 1F7458 802DE748 0C0B7699 */  jal        func_802DDA64_1F6774
    /* 1F745C 802DE74C 93060003 */   lbu       $a2, 0x3($t8)
    /* 1F7460 802DE750 10000006 */  b          .L802DE76C_1F747C
    /* 1F7464 802DE754 8E190020 */   lw        $t9, 0x20($s0)
  .L802DE758_1F7468:
    /* 1F7468 802DE758 0C0B7832 */  jal        func_802DE0C8_1F6DD8
    /* 1F746C 802DE75C 93A40083 */   lbu       $a0, 0x83($sp)
    /* 1F7470 802DE760 0C0B7781 */  jal        func_802DDE04_1F6B14
    /* 1F7474 802DE764 93A40083 */   lbu       $a0, 0x83($sp)
    /* 1F7478 802DE768 8E190020 */  lw         $t9, 0x20($s0)
  .L802DE76C_1F747C:
    /* 1F747C 802DE76C 3401F000 */  ori        $at, $zero, 0xF000
    /* 1F7480 802DE770 3C098003 */  lui        $t1, %hi(D_80031420)
    /* 1F7484 802DE774 3328F000 */  andi       $t0, $t9, 0xF000
    /* 1F7488 802DE778 55010068 */  bnel       $t0, $at, .L802DE91C_1F762C
    /* 1F748C 802DE77C 8602001E */   lh        $v0, 0x1E($s0)
    /* 1F7490 802DE780 8D291420 */  lw         $t1, %lo(D_80031420)($t1)
    /* 1F7494 802DE784 02002025 */  or         $a0, $s0, $zero
    /* 1F7498 802DE788 00002825 */  or         $a1, $zero, $zero
    /* 1F749C 802DE78C 312A0003 */  andi       $t2, $t1, 0x3
    /* 1F74A0 802DE790 11400048 */  beqz       $t2, .L802DE8B4_1F75C4
    /* 1F74A4 802DE794 00003025 */   or        $a2, $zero, $zero
    /* 1F74A8 802DE798 27AB006C */  addiu      $t3, $sp, 0x6C
    /* 1F74AC 802DE79C 27AC0068 */  addiu      $t4, $sp, 0x68
    /* 1F74B0 802DE7A0 27AD0064 */  addiu      $t5, $sp, 0x64
    /* 1F74B4 802DE7A4 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 1F74B8 802DE7A8 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 1F74BC 802DE7AC AFAB0010 */  sw         $t3, 0x10($sp)
    /* 1F74C0 802DE7B0 0C04A10A */  jal        func_80128428_1373D8
    /* 1F74C4 802DE7B4 240700C6 */   addiu     $a3, $zero, 0xC6
    /* 1F74C8 802DE7B8 86040006 */  lh         $a0, 0x6($s0)
    /* 1F74CC 802DE7BC 24844000 */  addiu      $a0, $a0, 0x4000
    /* 1F74D0 802DE7C0 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* 1F74D4 802DE7C4 0C007660 */  jal        sins
    /* 1F74D8 802DE7C8 01C02025 */   or        $a0, $t6, $zero
    /* 1F74DC 802DE7CC 44824000 */  mtc1       $v0, $f8
    /* 1F74E0 802DE7D0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F74E4 802DE7D4 44819800 */  mtc1       $at, $f19
    /* 1F74E8 802DE7D8 468042A0 */  cvt.s.w    $f10, $f8
    /* 1F74EC 802DE7DC 44809000 */  mtc1       $zero, $f18
    /* 1F74F0 802DE7E0 86040006 */  lh         $a0, 0x6($s0)
    /* 1F74F4 802DE7E4 24844000 */  addiu      $a0, $a0, 0x4000
    /* 1F74F8 802DE7E8 46005421 */  cvt.d.s    $f16, $f10
    /* 1F74FC 802DE7EC 308FFFFF */  andi       $t7, $a0, 0xFFFF
    /* 1F7500 802DE7F0 46328103 */  div.d      $f4, $f16, $f18
    /* 1F7504 802DE7F4 01E02025 */  or         $a0, $t7, $zero
    /* 1F7508 802DE7F8 462021A0 */  cvt.s.d    $f6, $f4
    /* 1F750C 802DE7FC 0C007654 */  jal        coss
    /* 1F7510 802DE800 E7A60074 */   swc1      $f6, 0x74($sp)
    /* 1F7514 802DE804 3C014300 */  lui        $at, (0x43000000 >> 16)
    /* 1F7518 802DE808 44810000 */  mtc1       $at, $f0
    /* 1F751C 802DE80C C7A80074 */  lwc1       $f8, 0x74($sp)
    /* 1F7520 802DE810 44829000 */  mtc1       $v0, $f18
    /* 1F7524 802DE814 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F7528 802DE818 46004282 */  mul.s      $f10, $f8, $f0
    /* 1F752C 802DE81C 44804000 */  mtc1       $zero, $f8
    /* 1F7530 802DE820 44814800 */  mtc1       $at, $f9
    /* 1F7534 802DE824 3C038014 */  lui        $v1, %hi(D_8013E3C0)
    /* 1F7538 802DE828 2463E3C0 */  addiu      $v1, $v1, %lo(D_8013E3C0)
    /* 1F753C 802DE82C 906F0003 */  lbu        $t7, 0x3($v1)
    /* 1F7540 802DE830 46809120 */  cvt.s.w    $f4, $f18
    /* 1F7544 802DE834 90780004 */  lbu        $t8, 0x4($v1)
    /* 1F7548 802DE838 240B0028 */  addiu      $t3, $zero, 0x28
    /* 1F754C 802DE83C 240C0014 */  addiu      $t4, $zero, 0x14
    /* 1F7550 802DE840 240D0001 */  addiu      $t5, $zero, 0x1
    /* 1F7554 802DE844 4600540D */  trunc.w.s  $f16, $f10
    /* 1F7558 802DE848 240E0096 */  addiu      $t6, $zero, 0x96
    /* 1F755C 802DE84C 240800FF */  addiu      $t0, $zero, 0xFF
    /* 1F7560 802DE850 460021A1 */  cvt.d.s    $f6, $f4
    /* 1F7564 802DE854 44078000 */  mfc1       $a3, $f16
    /* 1F7568 802DE858 46283283 */  div.d      $f10, $f6, $f8
    /* 1F756C 802DE85C AFA80034 */  sw         $t0, 0x34($sp)
    /* 1F7570 802DE860 0007CE00 */  sll        $t9, $a3, 24
    /* 1F7574 802DE864 00193E03 */  sra        $a3, $t9, 24
    /* 1F7578 802DE868 90790005 */  lbu        $t9, 0x5($v1)
    /* 1F757C 802DE86C AFAE0024 */  sw         $t6, 0x24($sp)
    /* 1F7580 802DE870 AFAD0020 */  sw         $t5, 0x20($sp)
    /* 1F7584 802DE874 AFAC001C */  sw         $t4, 0x1C($sp)
    /* 1F7588 802DE878 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 1F758C 802DE87C 87A4006E */  lh         $a0, 0x6E($sp)
    /* 1F7590 802DE880 87A5006A */  lh         $a1, 0x6A($sp)
    /* 1F7594 802DE884 87A60066 */  lh         $a2, 0x66($sp)
    /* 1F7598 802DE888 AFA00010 */  sw         $zero, 0x10($sp)
    /* 1F759C 802DE88C AFAF0028 */  sw         $t7, 0x28($sp)
    /* 1F75A0 802DE890 AFB8002C */  sw         $t8, 0x2C($sp)
    /* 1F75A4 802DE894 AFB90030 */  sw         $t9, 0x30($sp)
    /* 1F75A8 802DE898 46205407 */  neg.d      $f16, $f10
    /* 1F75AC 802DE89C 462084A0 */  cvt.s.d    $f18, $f16
    /* 1F75B0 802DE8A0 46009102 */  mul.s      $f4, $f18, $f0
    /* 1F75B4 802DE8A4 4600218D */  trunc.w.s  $f6, $f4
    /* 1F75B8 802DE8A8 440A3000 */  mfc1       $t2, $f6
    /* 1F75BC 802DE8AC 0C03297B */  jal        func_800CA5EC_D959C
    /* 1F75C0 802DE8B0 AFAA0014 */   sw        $t2, 0x14($sp)
  .L802DE8B4_1F75C4:
    /* 1F75C4 802DE8B4 8FA9007C */  lw         $t1, 0x7C($sp)
    /* 1F75C8 802DE8B8 8FAC007C */  lw         $t4, 0x7C($sp)
    /* 1F75CC 802DE8BC 3C01F7FF */  lui        $at, (0xF7FFFFFF >> 16)
    /* 1F75D0 802DE8C0 8D220020 */  lw         $v0, 0x20($t1)
    /* 1F75D4 802DE8C4 304A6000 */  andi       $t2, $v0, 0x6000
    /* 1F75D8 802DE8C8 15400013 */  bnez       $t2, .L802DE918_1F7628
    /* 1F75DC 802DE8CC 344B5000 */   ori       $t3, $v0, 0x5000
    /* 1F75E0 802DE8D0 AD8B0020 */  sw         $t3, 0x20($t4)
    /* 1F75E4 802DE8D4 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 1F75E8 802DE8D8 3421FFFF */  ori        $at, $at, (0xF7FFFFFF & 0xFFFF)
    /* 1F75EC 802DE8DC A2000036 */  sb         $zero, 0x36($s0)
    /* 1F75F0 802DE8E0 01A17024 */  and        $t6, $t5, $at
    /* 1F75F4 802DE8E4 0C000E38 */  jal        func_800038E0_44E0
    /* 1F75F8 802DE8E8 AE0E0020 */   sw        $t6, 0x20($s0)
    /* 1F75FC 802DE8EC 860F0000 */  lh         $t7, 0x0($s0)
    /* 1F7600 802DE8F0 0002C0C3 */  sra        $t8, $v0, 3
    /* 1F7604 802DE8F4 01F8C823 */  subu       $t9, $t7, $t8
    /* 1F7608 802DE8F8 27281000 */  addiu      $t0, $t9, 0x1000
    /* 1F760C 802DE8FC 0C000E38 */  jal        func_800038E0_44E0
    /* 1F7610 802DE900 A6080014 */   sh        $t0, 0x14($s0)
    /* 1F7614 802DE904 86090004 */  lh         $t1, 0x4($s0)
    /* 1F7618 802DE908 000250C3 */  sra        $t2, $v0, 3
    /* 1F761C 802DE90C 012A5823 */  subu       $t3, $t1, $t2
    /* 1F7620 802DE910 256C1000 */  addiu      $t4, $t3, 0x1000
    /* 1F7624 802DE914 A60C0018 */  sh         $t4, 0x18($s0)
  .L802DE918_1F7628:
    /* 1F7628 802DE918 8602001E */  lh         $v0, 0x1E($s0)
  .L802DE91C_1F762C:
    /* 1F762C 802DE91C 3405F000 */  ori        $a1, $zero, 0xF000
    /* 1F7630 802DE920 10400002 */  beqz       $v0, .L802DE92C_1F763C
    /* 1F7634 802DE924 244DFFFF */   addiu     $t5, $v0, -0x1
    /* 1F7638 802DE928 A60D001E */  sh         $t5, 0x1E($s0)
  .L802DE92C_1F763C:
    /* 1F763C 802DE92C 0C02A4B8 */  jal        func_800A92E0_B8290
    /* 1F7640 802DE930 93A40083 */   lbu       $a0, 0x83($sp)
    /* 1F7644 802DE934 920E0026 */  lbu        $t6, 0x26($s0)
    /* 1F7648 802DE938 51C00007 */  beql       $t6, $zero, .L802DE958_1F7668
    /* 1F764C 802DE93C 8E190020 */   lw        $t9, 0x20($s0)
    /* 1F7650 802DE940 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 1F7654 802DE944 3C010040 */  lui        $at, (0x400000 >> 16)
    /* 1F7658 802DE948 01E1C025 */  or         $t8, $t7, $at
    /* 1F765C 802DE94C 10000006 */  b          .L802DE968_1F7678
    /* 1F7660 802DE950 AE180020 */   sw        $t8, 0x20($s0)
    /* 1F7664 802DE954 8E190020 */  lw         $t9, 0x20($s0)
  .L802DE958_1F7668:
    /* 1F7668 802DE958 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
    /* 1F766C 802DE95C 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
    /* 1F7670 802DE960 03214024 */  and        $t0, $t9, $at
    /* 1F7674 802DE964 AE080020 */  sw         $t0, 0x20($s0)
  .L802DE968_1F7678:
    /* 1F7678 802DE968 8E030020 */  lw         $v1, 0x20($s0)
    /* 1F767C 802DE96C 30691000 */  andi       $t1, $v1, 0x1000
    /* 1F7680 802DE970 1520000A */  bnez       $t1, .L802DE99C_1F76AC
    /* 1F7684 802DE974 306A6000 */   andi      $t2, $v1, 0x6000
    /* 1F7688 802DE978 11400006 */  beqz       $t2, .L802DE994_1F76A4
    /* 1F768C 802DE97C 8FA40050 */   lw        $a0, 0x50($sp)
    /* 1F7690 802DE980 8FA40050 */  lw         $a0, 0x50($sp)
    /* 1F7694 802DE984 0C04DD1A */  jal        func_80137468_146418
    /* 1F7698 802DE988 240500D4 */   addiu     $a1, $zero, 0xD4
    /* 1F769C 802DE98C 10000003 */  b          .L802DE99C_1F76AC
    /* 1F76A0 802DE990 00000000 */   nop
  .L802DE994_1F76A4:
    /* 1F76A4 802DE994 0C04DD1A */  jal        func_80137468_146418
    /* 1F76A8 802DE998 240500D3 */   addiu     $a1, $zero, 0xD3
  .L802DE99C_1F76AC:
    /* 1F76AC 802DE99C 0C02A7CD */  jal        func_800A9F34_B8EE4
    /* 1F76B0 802DE9A0 93A40083 */   lbu       $a0, 0x83($sp)
    /* 1F76B4 802DE9A4 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DE9A8_1F76B8:
    /* 1F76B8 802DE9A8 8FB00040 */  lw         $s0, 0x40($sp)
    /* 1F76BC 802DE9AC 27BD0080 */  addiu      $sp, $sp, 0x80
    /* 1F76C0 802DE9B0 03E00008 */  jr         $ra
    /* 1F76C4 802DE9B4 00000000 */   nop
endlabel func_802DE594_1F72A4
