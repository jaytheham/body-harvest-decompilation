nonmatching func_802D923C_2BB66C, 0x8CC

glabel func_802D923C_2BB66C
    /* 2BB66C 802D923C 27BDFF40 */  addiu      $sp, $sp, -0xC0
    /* 2BB670 802D9240 AFA400C0 */  sw         $a0, 0xC0($sp)
    /* 2BB674 802D9244 93AE00C3 */  lbu        $t6, 0xC3($sp)
    /* 2BB678 802D9248 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BB67C 802D924C AFB00048 */  sw         $s0, 0x48($sp)
    /* 2BB680 802D9250 000E7880 */  sll        $t7, $t6, 2
    /* 2BB684 802D9254 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BB688 802D9258 000F7900 */  sll        $t7, $t7, 4
    /* 2BB68C 802D925C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BB690 802D9260 01F88021 */  addu       $s0, $t7, $t8
    /* 2BB694 802D9264 8E020020 */  lw         $v0, 0x20($s0)
    /* 2BB698 802D9268 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 2BB69C 802D926C F7B40040 */  sdc1       $f20, 0x40($sp)
    /* 2BB6A0 802D9270 30590600 */  andi       $t9, $v0, 0x600
    /* 2BB6A4 802D9274 1320021F */  beqz       $t9, .L802D9AF4_2BBF24
    /* 2BB6A8 802D9278 000272C0 */   sll       $t6, $v0, 11
    /* 2BB6AC 802D927C 05C00019 */  bltz       $t6, .L802D92E4_2BB714
    /* 2BB6B0 802D9280 240F0064 */   addiu     $t7, $zero, 0x64
    /* 2BB6B4 802D9284 A2000036 */  sb         $zero, 0x36($s0)
    /* 2BB6B8 802D9288 A200004B */  sb         $zero, 0x4B($s0)
    /* 2BB6BC 802D928C A60F002C */  sh         $t7, 0x2C($s0)
    /* 2BB6C0 802D9290 0C021F14 */  jal        func_80087C50_96C00
    /* 2BB6C4 802D9294 93A400C3 */   lbu       $a0, 0xC3($sp)
    /* 2BB6C8 802D9298 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2BB6CC 802D929C 0C04DD1A */  jal        func_80137468_146418
    /* 2BB6D0 802D92A0 24050010 */   addiu     $a1, $zero, 0x10
    /* 2BB6D4 802D92A4 9218001A */  lbu        $t8, 0x1A($s0)
    /* 2BB6D8 802D92A8 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 2BB6DC 802D92AC 86040000 */  lh         $a0, 0x0($s0)
    /* 2BB6E0 802D92B0 0018C880 */  sll        $t9, $t8, 2
    /* 2BB6E4 802D92B4 0338C823 */  subu       $t9, $t9, $t8
    /* 2BB6E8 802D92B8 0019C880 */  sll        $t9, $t9, 2
    /* 2BB6EC 802D92BC 0338C821 */  addu       $t9, $t9, $t8
    /* 2BB6F0 802D92C0 0019C8C0 */  sll        $t9, $t9, 3
    /* 2BB6F4 802D92C4 00F93821 */  addu       $a3, $a3, $t9
    /* 2BB6F8 802D92C8 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 2BB6FC 802D92CC 86050002 */  lh         $a1, 0x2($s0)
    /* 2BB700 802D92D0 86060004 */  lh         $a2, 0x4($s0)
    /* 2BB704 802D92D4 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2BB708 802D92D8 AFA00010 */   sw        $zero, 0x10($sp)
    /* 2BB70C 802D92DC 10000206 */  b          .L802D9AF8_2BBF28
    /* 2BB710 802D92E0 8FBF004C */   lw        $ra, 0x4C($sp)
  .L802D92E4_2BB714:
    /* 2BB714 802D92E4 860E000C */  lh         $t6, 0xC($s0)
    /* 2BB718 802D92E8 3C0A8015 */  lui        $t2, %hi(D_8014DD50)
    /* 2BB71C 802D92EC 254ADD50 */  addiu      $t2, $t2, %lo(D_8014DD50)
    /* 2BB720 802D92F0 000E7900 */  sll        $t7, $t6, 4
    /* 2BB724 802D92F4 014FC021 */  addu       $t8, $t2, $t7
    /* 2BB728 802D92F8 8302000C */  lb         $v0, 0xC($t8)
    /* 2BB72C 802D92FC 0002C900 */  sll        $t9, $v0, 4
    /* 2BB730 802D9300 01591821 */  addu       $v1, $t2, $t9
    /* 2BB734 802D9304 8064000D */  lb         $a0, 0xD($v1)
    /* 2BB738 802D9308 8068000C */  lb         $t0, 0xC($v1)
    /* 2BB73C 802D930C 00047100 */  sll        $t6, $a0, 4
    /* 2BB740 802D9310 014E5821 */  addu       $t3, $t2, $t6
    /* 2BB744 802D9314 8165000D */  lb         $a1, 0xD($t3)
    /* 2BB748 802D9318 920E0036 */  lbu        $t6, 0x36($s0)
    /* 2BB74C 802D931C 816D000C */  lb         $t5, 0xC($t3)
    /* 2BB750 802D9320 00057900 */  sll        $t7, $a1, 4
    /* 2BB754 802D9324 014F6021 */  addu       $t4, $t2, $t7
    /* 2BB758 802D9328 8186000C */  lb         $a2, 0xC($t4)
    /* 2BB75C 802D932C 8187000D */  lb         $a3, 0xD($t4)
    /* 2BB760 802D9330 29C10004 */  slti       $at, $t6, 0x4
    /* 2BB764 802D9334 0006C100 */  sll        $t8, $a2, 4
    /* 2BB768 802D9338 0158C821 */  addu       $t9, $t2, $t8
    /* 2BB76C 802D933C AFB90058 */  sw         $t9, 0x58($sp)
    /* 2BB770 802D9340 833F000C */  lb         $ra, 0xC($t9)
    /* 2BB774 802D9344 00077900 */  sll        $t7, $a3, 4
    /* 2BB778 802D9348 014F4821 */  addu       $t1, $t2, $t7
    /* 2BB77C 802D934C 8138000C */  lb         $t8, 0xC($t1)
    /* 2BB780 802D9350 A7A20090 */  sh         $v0, 0x90($sp)
    /* 2BB784 802D9354 A7A40098 */  sh         $a0, 0x98($sp)
    /* 2BB788 802D9358 A7B800AE */  sh         $t8, 0xAE($sp)
    /* 2BB78C 802D935C 87B900AE */  lh         $t9, 0xAE($sp)
    /* 2BB790 802D9360 A7A80092 */  sh         $t0, 0x92($sp)
    /* 2BB794 802D9364 A7A5009C */  sh         $a1, 0x9C($sp)
    /* 2BB798 802D9368 A7AD009A */  sh         $t5, 0x9A($sp)
    /* 2BB79C 802D936C A7A6009E */  sh         $a2, 0x9E($sp)
    /* 2BB7A0 802D9370 A7A70094 */  sh         $a3, 0x94($sp)
    /* 2BB7A4 802D9374 A7BF00A0 */  sh         $ra, 0xA0($sp)
    /* 2BB7A8 802D9378 10200005 */  beqz       $at, .L802D9390_2BB7C0
    /* 2BB7AC 802D937C A7B90096 */   sh        $t9, 0x96($sp)
    /* 2BB7B0 802D9380 860F000A */  lh         $t7, 0xA($s0)
    /* 2BB7B4 802D9384 25F8FF06 */  addiu      $t8, $t7, -0xFA
    /* 2BB7B8 802D9388 10000008 */  b          .L802D93AC_2BB7DC
    /* 2BB7BC 802D938C A618000A */   sh        $t8, 0xA($s0)
  .L802D9390_2BB7C0:
    /* 2BB7C0 802D9390 8602000A */  lh         $v0, 0xA($s0)
    /* 2BB7C4 802D9394 24420096 */  addiu      $v0, $v0, 0x96
    /* 2BB7C8 802D9398 58400004 */  blezl      $v0, .L802D93AC_2BB7DC
    /* 2BB7CC 802D939C A602000A */   sh        $v0, 0xA($s0)
    /* 2BB7D0 802D93A0 10000002 */  b          .L802D93AC_2BB7DC
    /* 2BB7D4 802D93A4 A600000A */   sh        $zero, 0xA($s0)
    /* 2BB7D8 802D93A8 A602000A */  sh         $v0, 0xA($s0)
  .L802D93AC_2BB7DC:
    /* 2BB7DC 802D93AC 85630004 */  lh         $v1, 0x4($t3)
    /* 2BB7E0 802D93B0 A7BF00B2 */  sh         $ra, 0xB2($sp)
    /* 2BB7E4 802D93B4 9604000A */  lhu        $a0, 0xA($s0)
    /* 2BB7E8 802D93B8 AFA90054 */  sw         $t1, 0x54($sp)
    /* 2BB7EC 802D93BC AFAB0060 */  sw         $t3, 0x60($sp)
    /* 2BB7F0 802D93C0 AFAC005C */  sw         $t4, 0x5C($sp)
    /* 2BB7F4 802D93C4 A7AD00B8 */  sh         $t5, 0xB8($sp)
    /* 2BB7F8 802D93C8 0C007654 */  jal        coss
    /* 2BB7FC 802D93CC AFA30080 */   sw        $v1, 0x80($sp)
    /* 2BB800 802D93D0 44822000 */  mtc1       $v0, $f4
    /* 2BB804 802D93D4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2BB808 802D93D8 4481A800 */  mtc1       $at, $f21
    /* 2BB80C 802D93DC 468021A0 */  cvt.s.w    $f6, $f4
    /* 2BB810 802D93E0 4480A000 */  mtc1       $zero, $f20
    /* 2BB814 802D93E4 8FA30080 */  lw         $v1, 0x80($sp)
    /* 2BB818 802D93E8 44838000 */  mtc1       $v1, $f16
    /* 2BB81C 802D93EC 46003221 */  cvt.d.s    $f8, $f6
    /* 2BB820 802D93F0 00630019 */  multu      $v1, $v1
    /* 2BB824 802D93F4 46344283 */  div.d      $f10, $f8, $f20
    /* 2BB828 802D93F8 468084A1 */  cvt.d.w    $f18, $f16
    /* 2BB82C 802D93FC 0000C812 */  mflo       $t9
    /* 2BB830 802D9400 44993000 */  mtc1       $t9, $f6
    /* 2BB834 802D9404 00000000 */  nop
    /* 2BB838 802D9408 46803220 */  cvt.s.w    $f8, $f6
    /* 2BB83C 802D940C 46325102 */  mul.d      $f4, $f10, $f18
    /* 2BB840 802D9410 46202020 */  cvt.s.d    $f0, $f4
    /* 2BB844 802D9414 46000402 */  mul.s      $f16, $f0, $f0
    /* 2BB848 802D9418 E7A00070 */  swc1       $f0, 0x70($sp)
    /* 2BB84C 802D941C 0C007650 */  jal        sqrtf
    /* 2BB850 802D9420 46104301 */   sub.s     $f12, $f8, $f16
    /* 2BB854 802D9424 920E004B */  lbu        $t6, 0x4B($s0)
    /* 2BB858 802D9428 8FA90054 */  lw         $t1, 0x54($sp)
    /* 2BB85C 802D942C E7A00074 */  swc1       $f0, 0x74($sp)
    /* 2BB860 802D9430 15C0000C */  bnez       $t6, .L802D9464_2BB894
    /* 2BB864 802D9434 93A400C3 */   lbu       $a0, 0xC3($sp)
    /* 2BB868 802D9438 3C0F802E */  lui        $t7, %hi(D_802E1D00)
    /* 2BB86C 802D943C 25EF1D00 */  addiu      $t7, $t7, %lo(D_802E1D00)
    /* 2BB870 802D9440 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2BB874 802D9444 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2BB878 802D9448 24050009 */  addiu      $a1, $zero, 0x9
    /* 2BB87C 802D944C 24060006 */  addiu      $a2, $zero, 0x6
    /* 2BB880 802D9450 27A70090 */  addiu      $a3, $sp, 0x90
    /* 2BB884 802D9454 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BB888 802D9458 AFA90054 */   sw        $t1, 0x54($sp)
    /* 2BB88C 802D945C 1000000A */  b          .L802D9488_2BB8B8
    /* 2BB890 802D9460 8FA90054 */   lw        $t1, 0x54($sp)
  .L802D9464_2BB894:
    /* 2BB894 802D9464 3C18802E */  lui        $t8, %hi(D_802E1D24)
    /* 2BB898 802D9468 27181D24 */  addiu      $t8, $t8, %lo(D_802E1D24)
    /* 2BB89C 802D946C AFB80010 */  sw         $t8, 0x10($sp)
    /* 2BB8A0 802D9470 24050004 */  addiu      $a1, $zero, 0x4
    /* 2BB8A4 802D9474 24060006 */  addiu      $a2, $zero, 0x6
    /* 2BB8A8 802D9478 27A70090 */  addiu      $a3, $sp, 0x90
    /* 2BB8AC 802D947C 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2BB8B0 802D9480 AFA90054 */   sw        $t1, 0x54($sp)
    /* 2BB8B4 802D9484 8FA90054 */  lw         $t1, 0x54($sp)
  .L802D9488_2BB8B8:
    /* 2BB8B8 802D9488 10400007 */  beqz       $v0, .L802D94A8_2BB8D8
    /* 2BB8BC 802D948C 24010003 */   addiu     $at, $zero, 0x3
    /* 2BB8C0 802D9490 10410023 */  beq        $v0, $at, .L802D9520_2BB950
    /* 2BB8C4 802D9494 24010006 */   addiu     $at, $zero, 0x6
    /* 2BB8C8 802D9498 504100B5 */  beql       $v0, $at, .L802D9770_2BBBA0
    /* 2BB8CC 802D949C 9218004B */   lbu       $t8, 0x4B($s0)
    /* 2BB8D0 802D94A0 100000B7 */  b          .L802D9780_2BBBB0
    /* 2BB8D4 802D94A4 9202004B */   lbu       $v0, 0x4B($s0)
  .L802D94A8_2BB8D8:
    /* 2BB8D8 802D94A8 9202004B */  lbu        $v0, 0x4B($s0)
    /* 2BB8DC 802D94AC 24010001 */  addiu      $at, $zero, 0x1
    /* 2BB8E0 802D94B0 87A500AE */  lh         $a1, 0xAE($sp)
    /* 2BB8E4 802D94B4 144100B2 */  bne        $v0, $at, .L802D9780_2BBBB0
    /* 2BB8E8 802D94B8 93A400C3 */   lbu       $a0, 0xC3($sp)
    /* 2BB8EC 802D94BC 3C0E8015 */  lui        $t6, %hi(D_8014DD50)
    /* 2BB8F0 802D94C0 25CEDD50 */  addiu      $t6, $t6, %lo(D_8014DD50)
    /* 2BB8F4 802D94C4 0005C900 */  sll        $t9, $a1, 4
    /* 2BB8F8 802D94C8 032E1021 */  addu       $v0, $t9, $t6
    /* 2BB8FC 802D94CC 844F0000 */  lh         $t7, 0x0($v0)
    /* 2BB900 802D94D0 85380000 */  lh         $t8, 0x0($t1)
    /* 2BB904 802D94D4 240E0014 */  addiu      $t6, $zero, 0x14
    /* 2BB908 802D94D8 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 2BB90C 802D94DC 01F83021 */  addu       $a2, $t7, $t8
    /* 2BB910 802D94E0 85380002 */  lh         $t8, 0x2($t1)
    /* 2BB914 802D94E4 844F0002 */  lh         $t7, 0x2($v0)
    /* 2BB918 802D94E8 0006CC00 */  sll        $t9, $a2, 16
    /* 2BB91C 802D94EC 00193403 */  sra        $a2, $t9, 16
    /* 2BB920 802D94F0 01F83821 */  addu       $a3, $t7, $t8
    /* 2BB924 802D94F4 85380004 */  lh         $t8, 0x4($t1)
    /* 2BB928 802D94F8 844F0004 */  lh         $t7, 0x4($v0)
    /* 2BB92C 802D94FC 0007CC00 */  sll        $t9, $a3, 16
    /* 2BB930 802D9500 00193C03 */  sra        $a3, $t9, 16
    /* 2BB934 802D9504 01F8C821 */  addu       $t9, $t7, $t8
    /* 2BB938 802D9508 AFB90010 */  sw         $t9, 0x10($sp)
    /* 2BB93C 802D950C AFA00014 */  sw         $zero, 0x14($sp)
    /* 2BB940 802D9510 0C022390 */  jal        func_80088E40_97DF0
    /* 2BB944 802D9514 AFA0001C */   sw        $zero, 0x1C($sp)
    /* 2BB948 802D9518 10000099 */  b          .L802D9780_2BBBB0
    /* 2BB94C 802D951C 9202004B */   lbu       $v0, 0x4B($s0)
  .L802D9520_2BB950:
    /* 2BB950 802D9520 9202004B */  lbu        $v0, 0x4B($s0)
    /* 2BB954 802D9524 14400096 */  bnez       $v0, .L802D9780_2BBBB0
    /* 2BB958 802D9528 00000000 */   nop
    /* 2BB95C 802D952C 86020006 */  lh         $v0, 0x6($s0)
    /* 2BB960 802D9530 24422000 */  addiu      $v0, $v0, 0x2000
    /* 2BB964 802D9534 3044FFFF */  andi       $a0, $v0, 0xFFFF
    /* 2BB968 802D9538 0C007660 */  jal        sins
    /* 2BB96C 802D953C AFA40054 */   sw        $a0, 0x54($sp)
    /* 2BB970 802D9540 44825000 */  mtc1       $v0, $f10
    /* 2BB974 802D9544 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 2BB978 802D9548 44814800 */  mtc1       $at, $f9
    /* 2BB97C 802D954C 468054A0 */  cvt.s.w    $f18, $f10
    /* 2BB980 802D9550 44804000 */  mtc1       $zero, $f8
    /* 2BB984 802D9554 8FA40054 */  lw         $a0, 0x54($sp)
    /* 2BB988 802D9558 46009121 */  cvt.d.s    $f4, $f18
    /* 2BB98C 802D955C 46342183 */  div.d      $f6, $f4, $f20
    /* 2BB990 802D9560 46283402 */  mul.d      $f16, $f6, $f8
    /* 2BB994 802D9564 462082A0 */  cvt.s.d    $f10, $f16
    /* 2BB998 802D9568 0C007654 */  jal        coss
    /* 2BB99C 802D956C E7AA007C */   swc1      $f10, 0x7C($sp)
    /* 2BB9A0 802D9570 87A500B8 */  lh         $a1, 0xB8($sp)
    /* 2BB9A4 802D9574 3C188015 */  lui        $t8, %hi(D_8014DD50)
    /* 2BB9A8 802D9578 8FAE0060 */  lw         $t6, 0x60($sp)
    /* 2BB9AC 802D957C 2718DD50 */  addiu      $t8, $t8, %lo(D_8014DD50)
    /* 2BB9B0 802D9580 00057900 */  sll        $t7, $a1, 4
    /* 2BB9B4 802D9584 01F81821 */  addu       $v1, $t7, $t8
    /* 2BB9B8 802D9588 84790000 */  lh         $t9, 0x0($v1)
    /* 2BB9BC 802D958C 85CF0000 */  lh         $t7, 0x0($t6)
    /* 2BB9C0 802D9590 C7A60074 */  lwc1       $f6, 0x74($sp)
    /* 2BB9C4 802D9594 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 2BB9C8 802D9598 032F3021 */  addu       $a2, $t9, $t7
    /* 2BB9CC 802D959C 84790002 */  lh         $t9, 0x2($v1)
    /* 2BB9D0 802D95A0 0006C400 */  sll        $t8, $a2, 16
    /* 2BB9D4 802D95A4 00183403 */  sra        $a2, $t8, 16
    /* 2BB9D8 802D95A8 44999000 */  mtc1       $t9, $f18
    /* 2BB9DC 802D95AC 84790004 */  lh         $t9, 0x4($v1)
    /* 2BB9E0 802D95B0 240F000F */  addiu      $t7, $zero, 0xF
    /* 2BB9E4 802D95B4 46809120 */  cvt.s.w    $f4, $f18
    /* 2BB9E8 802D95B8 44995000 */  mtc1       $t9, $f10
    /* 2BB9EC 802D95BC AFAF0018 */  sw         $t7, 0x18($sp)
    /* 2BB9F0 802D95C0 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2BB9F4 802D95C4 468054A0 */  cvt.s.w    $f18, $f10
    /* 2BB9F8 802D95C8 46062200 */  add.s      $f8, $f4, $f6
    /* 2BB9FC 802D95CC C7A40070 */  lwc1       $f4, 0x70($sp)
    /* 2BBA00 802D95D0 46049180 */  add.s      $f6, $f18, $f4
    /* 2BBA04 802D95D4 44829000 */  mtc1       $v0, $f18
    /* 2BBA08 802D95D8 4600440D */  trunc.w.s  $f16, $f8
    /* 2BBA0C 802D95DC 44818800 */  mtc1       $at, $f17
    /* 2BBA10 802D95E0 46809120 */  cvt.s.w    $f4, $f18
    /* 2BBA14 802D95E4 44078000 */  mfc1       $a3, $f16
    /* 2BBA18 802D95E8 C7B0007C */  lwc1       $f16, 0x7C($sp)
    /* 2BBA1C 802D95EC 0007C400 */  sll        $t8, $a3, 16
    /* 2BBA20 802D95F0 4600320D */  trunc.w.s  $f8, $f6
    /* 2BBA24 802D95F4 00183C03 */  sra        $a3, $t8, 16
    /* 2BBA28 802D95F8 460021A1 */  cvt.d.s    $f6, $f4
    /* 2BBA2C 802D95FC 44184000 */  mfc1       $t8, $f8
    /* 2BBA30 802D9600 46343203 */  div.d      $f8, $f6, $f20
    /* 2BBA34 802D9604 AFB80010 */  sw         $t8, 0x10($sp)
    /* 2BBA38 802D9608 4600828D */  trunc.w.s  $f10, $f16
    /* 2BBA3C 802D960C 44808000 */  mtc1       $zero, $f16
    /* 2BBA40 802D9610 44195000 */  mfc1       $t9, $f10
    /* 2BBA44 802D9614 00000000 */  nop
    /* 2BBA48 802D9618 AFB90014 */  sw         $t9, 0x14($sp)
    /* 2BBA4C 802D961C 46304282 */  mul.d      $f10, $f8, $f16
    /* 2BBA50 802D9620 462054A0 */  cvt.s.d    $f18, $f10
    /* 2BBA54 802D9624 4600910D */  trunc.w.s  $f4, $f18
    /* 2BBA58 802D9628 440E2000 */  mfc1       $t6, $f4
    /* 2BBA5C 802D962C 0C022390 */  jal        func_80088E40_97DF0
    /* 2BBA60 802D9630 AFAE001C */   sw        $t6, 0x1C($sp)
    /* 2BBA64 802D9634 86020006 */  lh         $v0, 0x6($s0)
    /* 2BBA68 802D9638 24426000 */  addiu      $v0, $v0, 0x6000
    /* 2BBA6C 802D963C 3044FFFF */  andi       $a0, $v0, 0xFFFF
    /* 2BBA70 802D9640 0C007660 */  jal        sins
    /* 2BBA74 802D9644 AFA40054 */   sw        $a0, 0x54($sp)
    /* 2BBA78 802D9648 44823000 */  mtc1       $v0, $f6
    /* 2BBA7C 802D964C 3C01402E */  lui        $at, (0x402E0000 >> 16)
    /* 2BBA80 802D9650 44819800 */  mtc1       $at, $f19
    /* 2BBA84 802D9654 46803220 */  cvt.s.w    $f8, $f6
    /* 2BBA88 802D9658 44809000 */  mtc1       $zero, $f18
    /* 2BBA8C 802D965C 8FA40054 */  lw         $a0, 0x54($sp)
    /* 2BBA90 802D9660 46004421 */  cvt.d.s    $f16, $f8
    /* 2BBA94 802D9664 46348283 */  div.d      $f10, $f16, $f20
    /* 2BBA98 802D9668 46325102 */  mul.d      $f4, $f10, $f18
    /* 2BBA9C 802D966C 462021A0 */  cvt.s.d    $f6, $f4
    /* 2BBAA0 802D9670 0C007654 */  jal        coss
    /* 2BBAA4 802D9674 E7A6007C */   swc1      $f6, 0x7C($sp)
    /* 2BBAA8 802D9678 87A500B2 */  lh         $a1, 0xB2($sp)
    /* 2BBAAC 802D967C 8FAE005C */  lw         $t6, 0x5C($sp)
    /* 2BBAB0 802D9680 3C0F8015 */  lui        $t7, %hi(D_8014DD50)
    /* 2BBAB4 802D9684 25EFDD50 */  addiu      $t7, $t7, %lo(D_8014DD50)
    /* 2BBAB8 802D9688 0005C900 */  sll        $t9, $a1, 4
    /* 2BBABC 802D968C 8FA80058 */  lw         $t0, 0x58($sp)
    /* 2BBAC0 802D9690 032F1821 */  addu       $v1, $t9, $t7
    /* 2BBAC4 802D9694 85D90000 */  lh         $t9, 0x0($t6)
    /* 2BBAC8 802D9698 84780000 */  lh         $t8, 0x0($v1)
    /* 2BBACC 802D969C 850E0000 */  lh         $t6, 0x0($t0)
    /* 2BBAD0 802D96A0 C7A80074 */  lwc1       $f8, 0x74($sp)
    /* 2BBAD4 802D96A4 03197821 */  addu       $t7, $t8, $t9
    /* 2BBAD8 802D96A8 01EE3021 */  addu       $a2, $t7, $t6
    /* 2BBADC 802D96AC 850F0002 */  lh         $t7, 0x2($t0)
    /* 2BBAE0 802D96B0 846E0002 */  lh         $t6, 0x2($v1)
    /* 2BBAE4 802D96B4 0006C400 */  sll        $t8, $a2, 16
    /* 2BBAE8 802D96B8 448F8000 */  mtc1       $t7, $f16
    /* 2BBAEC 802D96BC 448E2000 */  mtc1       $t6, $f4
    /* 2BBAF0 802D96C0 850E0004 */  lh         $t6, 0x4($t0)
    /* 2BBAF4 802D96C4 468082A0 */  cvt.s.w    $f10, $f16
    /* 2BBAF8 802D96C8 00183403 */  sra        $a2, $t8, 16
    /* 2BBAFC 802D96CC 84780004 */  lh         $t8, 0x4($v1)
    /* 2BBB00 802D96D0 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
    /* 2BBB04 802D96D4 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2BBB08 802D96D8 468021A0 */  cvt.s.w    $f6, $f4
    /* 2BBB0C 802D96DC 448E2000 */  mtc1       $t6, $f4
    /* 2BBB10 802D96E0 460A4480 */  add.s      $f18, $f8, $f10
    /* 2BBB14 802D96E4 C7AA0070 */  lwc1       $f10, 0x70($sp)
    /* 2BBB18 802D96E8 46123400 */  add.s      $f16, $f6, $f18
    /* 2BBB1C 802D96EC 468021A0 */  cvt.s.w    $f6, $f4
    /* 2BBB20 802D96F0 44813800 */  mtc1       $at, $f7
    /* 2BBB24 802D96F4 4600820D */  trunc.w.s  $f8, $f16
    /* 2BBB28 802D96F8 44988000 */  mtc1       $t8, $f16
    /* 2BBB2C 802D96FC 46065480 */  add.s      $f18, $f10, $f6
    /* 2BBB30 802D9700 44074000 */  mfc1       $a3, $f8
    /* 2BBB34 802D9704 C7A6007C */  lwc1       $f6, 0x7C($sp)
    /* 2BBB38 802D9708 46808220 */  cvt.s.w    $f8, $f16
    /* 2BBB3C 802D970C 0007CC00 */  sll        $t9, $a3, 16
    /* 2BBB40 802D9710 00193C03 */  sra        $a3, $t9, 16
    /* 2BBB44 802D9714 2419000F */  addiu      $t9, $zero, 0xF
    /* 2BBB48 802D9718 AFB90018 */  sw         $t9, 0x18($sp)
    /* 2BBB4C 802D971C 4600340D */  trunc.w.s  $f16, $f6
    /* 2BBB50 802D9720 44803000 */  mtc1       $zero, $f6
    /* 2BBB54 802D9724 46124100 */  add.s      $f4, $f8, $f18
    /* 2BBB58 802D9728 44824000 */  mtc1       $v0, $f8
    /* 2BBB5C 802D972C 44188000 */  mfc1       $t8, $f16
    /* 2BBB60 802D9730 468044A0 */  cvt.s.w    $f18, $f8
    /* 2BBB64 802D9734 AFB80014 */  sw         $t8, 0x14($sp)
    /* 2BBB68 802D9738 4600228D */  trunc.w.s  $f10, $f4
    /* 2BBB6C 802D973C 46009121 */  cvt.d.s    $f4, $f18
    /* 2BBB70 802D9740 440F5000 */  mfc1       $t7, $f10
    /* 2BBB74 802D9744 46342283 */  div.d      $f10, $f4, $f20
    /* 2BBB78 802D9748 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2BBB7C 802D974C 46265402 */  mul.d      $f16, $f10, $f6
    /* 2BBB80 802D9750 46208220 */  cvt.s.d    $f8, $f16
    /* 2BBB84 802D9754 4600448D */  trunc.w.s  $f18, $f8
    /* 2BBB88 802D9758 440E9000 */  mfc1       $t6, $f18
    /* 2BBB8C 802D975C 0C022390 */  jal        func_80088E40_97DF0
    /* 2BBB90 802D9760 AFAE001C */   sw        $t6, 0x1C($sp)
    /* 2BBB94 802D9764 10000006 */  b          .L802D9780_2BBBB0
    /* 2BBB98 802D9768 9202004B */   lbu       $v0, 0x4B($s0)
    /* 2BBB9C 802D976C 9218004B */  lbu        $t8, 0x4B($s0)
  .L802D9770_2BBBA0:
    /* 2BBBA0 802D9770 A2000036 */  sb         $zero, 0x36($s0)
    /* 2BBBA4 802D9774 27190001 */  addiu      $t9, $t8, 0x1
    /* 2BBBA8 802D9778 A219004B */  sb         $t9, 0x4B($s0)
    /* 2BBBAC 802D977C 332200FF */  andi       $v0, $t9, 0xFF
  .L802D9780_2BBBB0:
    /* 2BBBB0 802D9780 14400005 */  bnez       $v0, .L802D9798_2BBBC8
    /* 2BBBB4 802D9784 3C0E8005 */   lui       $t6, %hi(D_80052A8C)
    /* 2BBBB8 802D9788 920F0036 */  lbu        $t7, 0x36($s0)
    /* 2BBBBC 802D978C 29E10005 */  slti       $at, $t7, 0x5
    /* 2BBBC0 802D9790 542000C7 */  bnel       $at, $zero, .L802D9AB0_2BBEE0
    /* 2BBBC4 802D9794 8619002C */   lh        $t9, 0x2C($s0)
  .L802D9798_2BBBC8:
    /* 2BBBC8 802D9798 8DCE2A8C */  lw         $t6, %lo(D_80052A8C)($t6)
    /* 2BBBCC 802D979C 31D80003 */  andi       $t8, $t6, 0x3
    /* 2BBBD0 802D97A0 570000C3 */  bnel       $t8, $zero, .L802D9AB0_2BBEE0
    /* 2BBBD4 802D97A4 8619002C */   lh        $t9, 0x2C($s0)
    /* 2BBBD8 802D97A8 8619000E */  lh         $t9, 0xE($s0)
    /* 2BBBDC 802D97AC 93A400C3 */  lbu        $a0, 0xC3($sp)
    /* 2BBBE0 802D97B0 0C021F1D */  jal        func_80087C74_96C24
    /* 2BBBE4 802D97B4 A6190006 */   sh        $t9, 0x6($s0)
    /* 2BBBE8 802D97B8 3C0F8003 */  lui        $t7, %hi(D_80031420)
    /* 2BBBEC 802D97BC 8DEF1420 */  lw         $t7, %lo(D_80031420)($t7)
    /* 2BBBF0 802D97C0 87B800B8 */  lh         $t8, 0xB8($sp)
    /* 2BBBF4 802D97C4 C7A40074 */  lwc1       $f4, 0x74($sp)
    /* 2BBBF8 802D97C8 31EE0003 */  andi       $t6, $t7, 0x3
    /* 2BBBFC 802D97CC 11C000B7 */  beqz       $t6, .L802D9AAC_2BBEDC
    /* 2BBC00 802D97D0 0018C900 */   sll       $t9, $t8, 4
    /* 2BBC04 802D97D4 8FB80060 */  lw         $t8, 0x60($sp)
    /* 2BBC08 802D97D8 3C0F8015 */  lui        $t7, %hi(D_8014DD50)
    /* 2BBC0C 802D97DC 25EFDD50 */  addiu      $t7, $t7, %lo(D_8014DD50)
    /* 2BBC10 802D97E0 032F1821 */  addu       $v1, $t9, $t7
    /* 2BBC14 802D97E4 87190000 */  lh         $t9, 0x0($t8)
    /* 2BBC18 802D97E8 84780004 */  lh         $t8, 0x4($v1)
    /* 2BBC1C 802D97EC C7A80070 */  lwc1       $f8, 0x70($sp)
    /* 2BBC20 802D97F0 4600228D */  trunc.w.s  $f10, $f4
    /* 2BBC24 802D97F4 44983000 */  mtc1       $t8, $f6
    /* 2BBC28 802D97F8 846E0000 */  lh         $t6, 0x0($v1)
    /* 2BBC2C 802D97FC 27B8008C */  addiu      $t8, $sp, 0x8C
    /* 2BBC30 802D9800 46803420 */  cvt.s.w    $f16, $f6
    /* 2BBC34 802D9804 44065000 */  mfc1       $a2, $f10
    /* 2BBC38 802D9808 01D92821 */  addu       $a1, $t6, $t9
    /* 2BBC3C 802D980C 00057C00 */  sll        $t7, $a1, 16
    /* 2BBC40 802D9810 0006CC00 */  sll        $t9, $a2, 16
    /* 2BBC44 802D9814 00193403 */  sra        $a2, $t9, 16
    /* 2BBC48 802D9818 46088480 */  add.s      $f18, $f16, $f8
    /* 2BBC4C 802D981C 27AE0088 */  addiu      $t6, $sp, 0x88
    /* 2BBC50 802D9820 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 2BBC54 802D9824 AFA60054 */  sw         $a2, 0x54($sp)
    /* 2BBC58 802D9828 4600910D */  trunc.w.s  $f4, $f18
    /* 2BBC5C 802D982C 000F2C03 */  sra        $a1, $t7, 16
    /* 2BBC60 802D9830 AFB80010 */  sw         $t8, 0x10($sp)
    /* 2BBC64 802D9834 02002025 */  or         $a0, $s0, $zero
    /* 2BBC68 802D9838 44072000 */  mfc1       $a3, $f4
    /* 2BBC6C 802D983C 00000000 */  nop
    /* 2BBC70 802D9840 0007CC00 */  sll        $t9, $a3, 16
    /* 2BBC74 802D9844 00193C03 */  sra        $a3, $t9, 16
    /* 2BBC78 802D9848 27B90084 */  addiu      $t9, $sp, 0x84
    /* 2BBC7C 802D984C 0C04A10A */  jal        func_80128428_1373D8
    /* 2BBC80 802D9850 AFB90018 */   sw        $t9, 0x18($sp)
    /* 2BBC84 802D9854 0C007660 */  jal        sins
    /* 2BBC88 802D9858 96040006 */   lhu       $a0, 0x6($s0)
    /* 2BBC8C 802D985C 44825000 */  mtc1       $v0, $f10
    /* 2BBC90 802D9860 96040006 */  lhu        $a0, 0x6($s0)
    /* 2BBC94 802D9864 468051A0 */  cvt.s.w    $f6, $f10
    /* 2BBC98 802D9868 46003421 */  cvt.d.s    $f16, $f6
    /* 2BBC9C 802D986C 46348203 */  div.d      $f8, $f16, $f20
    /* 2BBCA0 802D9870 462044A0 */  cvt.s.d    $f18, $f8
    /* 2BBCA4 802D9874 0C007654 */  jal        coss
    /* 2BBCA8 802D9878 E7B2007C */   swc1      $f18, 0x7C($sp)
    /* 2BBCAC 802D987C 44822000 */  mtc1       $v0, $f4
    /* 2BBCB0 802D9880 00000000 */  nop
    /* 2BBCB4 802D9884 468022A0 */  cvt.s.w    $f10, $f4
    /* 2BBCB8 802D9888 460051A1 */  cvt.d.s    $f6, $f10
    /* 2BBCBC 802D988C 46343403 */  div.d      $f16, $f6, $f20
    /* 2BBCC0 802D9890 46208207 */  neg.d      $f8, $f16
    /* 2BBCC4 802D9894 462044A0 */  cvt.s.d    $f18, $f8
    /* 2BBCC8 802D9898 0C000E38 */  jal        func_800038E0_44E0
    /* 2BBCCC 802D989C E7B20078 */   swc1      $f18, 0x78($sp)
    /* 2BBCD0 802D98A0 3C014300 */  lui        $at, (0x43000000 >> 16)
    /* 2BBCD4 802D98A4 44810000 */  mtc1       $at, $f0
    /* 2BBCD8 802D98A8 24010050 */  addiu      $at, $zero, 0x50
    /* 2BBCDC 802D98AC 0041001A */  div        $zero, $v0, $at
    /* 2BBCE0 802D98B0 C7A4007C */  lwc1       $f4, 0x7C($sp)
    /* 2BBCE4 802D98B4 C7B00078 */  lwc1       $f16, 0x78($sp)
    /* 2BBCE8 802D98B8 8FA50088 */  lw         $a1, 0x88($sp)
    /* 2BBCEC 802D98BC 46002282 */  mul.s      $f10, $f4, $f0
    /* 2BBCF0 802D98C0 24180003 */  addiu      $t8, $zero, 0x3
    /* 2BBCF4 802D98C4 24A5FFD8 */  addiu      $a1, $a1, -0x28
    /* 2BBCF8 802D98C8 46008202 */  mul.s      $f8, $f16, $f0
    /* 2BBCFC 802D98CC 00057C00 */  sll        $t7, $a1, 16
    /* 2BBD00 802D98D0 000F2C03 */  sra        $a1, $t7, 16
    /* 2BBD04 802D98D4 240F000A */  addiu      $t7, $zero, 0xA
    /* 2BBD08 802D98D8 AFAF001C */  sw         $t7, 0x1C($sp)
    /* 2BBD0C 802D98DC 240F00B4 */  addiu      $t7, $zero, 0xB4
    /* 2BBD10 802D98E0 4600518D */  trunc.w.s  $f6, $f10
    /* 2BBD14 802D98E4 AFB80020 */  sw         $t8, 0x20($sp)
    /* 2BBD18 802D98E8 87A4008E */  lh         $a0, 0x8E($sp)
    /* 2BBD1C 802D98EC 4600448D */  trunc.w.s  $f18, $f8
    /* 2BBD20 802D98F0 44073000 */  mfc1       $a3, $f6
    /* 2BBD24 802D98F4 87A60086 */  lh         $a2, 0x86($sp)
    /* 2BBD28 802D98F8 AFA00010 */  sw         $zero, 0x10($sp)
    /* 2BBD2C 802D98FC 0007CE00 */  sll        $t9, $a3, 24
    /* 2BBD30 802D9900 00193E03 */  sra        $a3, $t9, 24
    /* 2BBD34 802D9904 440E9000 */  mfc1       $t6, $f18
    /* 2BBD38 802D9908 24190028 */  addiu      $t9, $zero, 0x28
    /* 2BBD3C 802D990C AFB90018 */  sw         $t9, 0x18($sp)
    /* 2BBD40 802D9910 0000C810 */  mfhi       $t9
    /* 2BBD44 802D9914 01F9C023 */  subu       $t8, $t7, $t9
    /* 2BBD48 802D9918 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 2BBD4C 802D991C 240E0032 */  addiu      $t6, $zero, 0x32
    /* 2BBD50 802D9920 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 2BBD54 802D9924 AFAF0034 */  sw         $t7, 0x34($sp)
    /* 2BBD58 802D9928 AFAE0024 */  sw         $t6, 0x24($sp)
    /* 2BBD5C 802D992C AFAE0030 */  sw         $t6, 0x30($sp)
    /* 2BBD60 802D9930 AFB80028 */  sw         $t8, 0x28($sp)
    /* 2BBD64 802D9934 0C03297B */  jal        func_800CA5EC_D959C
    /* 2BBD68 802D9938 AFA0002C */   sw        $zero, 0x2C($sp)
    /* 2BBD6C 802D993C 8FA30058 */  lw         $v1, 0x58($sp)
    /* 2BBD70 802D9940 8FB8005C */  lw         $t8, 0x5C($sp)
    /* 2BBD74 802D9944 C7A60070 */  lwc1       $f6, 0x70($sp)
    /* 2BBD78 802D9948 84790000 */  lh         $t9, 0x0($v1)
    /* 2BBD7C 802D994C 870E0000 */  lh         $t6, 0x0($t8)
    /* 2BBD80 802D9950 02002025 */  or         $a0, $s0, $zero
    /* 2BBD84 802D9954 87A60056 */  lh         $a2, 0x56($sp)
    /* 2BBD88 802D9958 032E2821 */  addu       $a1, $t9, $t6
    /* 2BBD8C 802D995C 84790004 */  lh         $t9, 0x4($v1)
    /* 2BBD90 802D9960 00057C00 */  sll        $t7, $a1, 16
    /* 2BBD94 802D9964 000F2C03 */  sra        $a1, $t7, 16
    /* 2BBD98 802D9968 44992000 */  mtc1       $t9, $f4
    /* 2BBD9C 802D996C 27B9008C */  addiu      $t9, $sp, 0x8C
    /* 2BBDA0 802D9970 27AE0088 */  addiu      $t6, $sp, 0x88
    /* 2BBDA4 802D9974 468022A0 */  cvt.s.w    $f10, $f4
    /* 2BBDA8 802D9978 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 2BBDAC 802D997C AFB90010 */  sw         $t9, 0x10($sp)
    /* 2BBDB0 802D9980 46065400 */  add.s      $f16, $f10, $f6
    /* 2BBDB4 802D9984 4600820D */  trunc.w.s  $f8, $f16
    /* 2BBDB8 802D9988 44074000 */  mfc1       $a3, $f8
    /* 2BBDBC 802D998C 00000000 */  nop
    /* 2BBDC0 802D9990 00077C00 */  sll        $t7, $a3, 16
    /* 2BBDC4 802D9994 000F3C03 */  sra        $a3, $t7, 16
    /* 2BBDC8 802D9998 27AF0084 */  addiu      $t7, $sp, 0x84
    /* 2BBDCC 802D999C 0C04A10A */  jal        func_80128428_1373D8
    /* 2BBDD0 802D99A0 AFAF0018 */   sw        $t7, 0x18($sp)
    /* 2BBDD4 802D99A4 86040006 */  lh         $a0, 0x6($s0)
    /* 2BBDD8 802D99A8 34018000 */  ori        $at, $zero, 0x8000
    /* 2BBDDC 802D99AC 00812021 */  addu       $a0, $a0, $at
    /* 2BBDE0 802D99B0 3098FFFF */  andi       $t8, $a0, 0xFFFF
    /* 2BBDE4 802D99B4 0C007660 */  jal        sins
    /* 2BBDE8 802D99B8 03002025 */   or        $a0, $t8, $zero
    /* 2BBDEC 802D99BC 44829000 */  mtc1       $v0, $f18
    /* 2BBDF0 802D99C0 86040006 */  lh         $a0, 0x6($s0)
    /* 2BBDF4 802D99C4 34018000 */  ori        $at, $zero, 0x8000
    /* 2BBDF8 802D99C8 46809120 */  cvt.s.w    $f4, $f18
    /* 2BBDFC 802D99CC 00812021 */  addu       $a0, $a0, $at
    /* 2BBE00 802D99D0 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* 2BBE04 802D99D4 03202025 */  or         $a0, $t9, $zero
    /* 2BBE08 802D99D8 460022A1 */  cvt.d.s    $f10, $f4
    /* 2BBE0C 802D99DC 46345183 */  div.d      $f6, $f10, $f20
    /* 2BBE10 802D99E0 46203420 */  cvt.s.d    $f16, $f6
    /* 2BBE14 802D99E4 0C007654 */  jal        coss
    /* 2BBE18 802D99E8 E7B0007C */   swc1      $f16, 0x7C($sp)
    /* 2BBE1C 802D99EC 44824000 */  mtc1       $v0, $f8
    /* 2BBE20 802D99F0 00000000 */  nop
    /* 2BBE24 802D99F4 468044A0 */  cvt.s.w    $f18, $f8
    /* 2BBE28 802D99F8 46009121 */  cvt.d.s    $f4, $f18
    /* 2BBE2C 802D99FC 46342283 */  div.d      $f10, $f4, $f20
    /* 2BBE30 802D9A00 46205187 */  neg.d      $f6, $f10
    /* 2BBE34 802D9A04 46203420 */  cvt.s.d    $f16, $f6
    /* 2BBE38 802D9A08 0C000E38 */  jal        func_800038E0_44E0
    /* 2BBE3C 802D9A0C E7B00078 */   swc1      $f16, 0x78($sp)
    /* 2BBE40 802D9A10 3C014300 */  lui        $at, (0x43000000 >> 16)
    /* 2BBE44 802D9A14 44810000 */  mtc1       $at, $f0
    /* 2BBE48 802D9A18 24010050 */  addiu      $at, $zero, 0x50
    /* 2BBE4C 802D9A1C 0041001A */  div        $zero, $v0, $at
    /* 2BBE50 802D9A20 C7A8007C */  lwc1       $f8, 0x7C($sp)
    /* 2BBE54 802D9A24 C7AA0078 */  lwc1       $f10, 0x78($sp)
    /* 2BBE58 802D9A28 8FA50088 */  lw         $a1, 0x88($sp)
    /* 2BBE5C 802D9A2C 46004482 */  mul.s      $f18, $f8, $f0
    /* 2BBE60 802D9A30 240F0003 */  addiu      $t7, $zero, 0x3
    /* 2BBE64 802D9A34 24A5FFD8 */  addiu      $a1, $a1, -0x28
    /* 2BBE68 802D9A38 46005182 */  mul.s      $f6, $f10, $f0
    /* 2BBE6C 802D9A3C 00057400 */  sll        $t6, $a1, 16
    /* 2BBE70 802D9A40 000E2C03 */  sra        $a1, $t6, 16
    /* 2BBE74 802D9A44 240E000A */  addiu      $t6, $zero, 0xA
    /* 2BBE78 802D9A48 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 2BBE7C 802D9A4C 240E00B4 */  addiu      $t6, $zero, 0xB4
    /* 2BBE80 802D9A50 4600910D */  trunc.w.s  $f4, $f18
    /* 2BBE84 802D9A54 AFAF0020 */  sw         $t7, 0x20($sp)
    /* 2BBE88 802D9A58 87A4008E */  lh         $a0, 0x8E($sp)
    /* 2BBE8C 802D9A5C 4600340D */  trunc.w.s  $f16, $f6
    /* 2BBE90 802D9A60 44072000 */  mfc1       $a3, $f4
    /* 2BBE94 802D9A64 87A60086 */  lh         $a2, 0x86($sp)
    /* 2BBE98 802D9A68 AFA00010 */  sw         $zero, 0x10($sp)
    /* 2BBE9C 802D9A6C 0007CE00 */  sll        $t9, $a3, 24
    /* 2BBEA0 802D9A70 00193E03 */  sra        $a3, $t9, 24
    /* 2BBEA4 802D9A74 44188000 */  mfc1       $t8, $f16
    /* 2BBEA8 802D9A78 24190028 */  addiu      $t9, $zero, 0x28
    /* 2BBEAC 802D9A7C AFB90018 */  sw         $t9, 0x18($sp)
    /* 2BBEB0 802D9A80 0000C810 */  mfhi       $t9
    /* 2BBEB4 802D9A84 01D97823 */  subu       $t7, $t6, $t9
    /* 2BBEB8 802D9A88 AFB80014 */  sw         $t8, 0x14($sp)
    /* 2BBEBC 802D9A8C 24180032 */  addiu      $t8, $zero, 0x32
    /* 2BBEC0 802D9A90 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 2BBEC4 802D9A94 AFAE0034 */  sw         $t6, 0x34($sp)
    /* 2BBEC8 802D9A98 AFB80024 */  sw         $t8, 0x24($sp)
    /* 2BBECC 802D9A9C AFB80030 */  sw         $t8, 0x30($sp)
    /* 2BBED0 802D9AA0 AFAF0028 */  sw         $t7, 0x28($sp)
    /* 2BBED4 802D9AA4 0C03297B */  jal        func_800CA5EC_D959C
    /* 2BBED8 802D9AA8 AFA0002C */   sw        $zero, 0x2C($sp)
  .L802D9AAC_2BBEDC:
    /* 2BBEDC 802D9AAC 8619002C */  lh         $t9, 0x2C($s0)
  .L802D9AB0_2BBEE0:
    /* 2BBEE0 802D9AB0 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 2BBEE4 802D9AB4 240E0006 */  addiu      $t6, $zero, 0x6
    /* 2BBEE8 802D9AB8 5720000F */  bnel       $t9, $zero, .L802D9AF8_2BBF28
    /* 2BBEEC 802D9ABC 8FBF004C */   lw        $ra, 0x4C($sp)
    /* 2BBEF0 802D9AC0 920F001A */  lbu        $t7, 0x1A($s0)
    /* 2BBEF4 802D9AC4 86040000 */  lh         $a0, 0x0($s0)
    /* 2BBEF8 802D9AC8 86050002 */  lh         $a1, 0x2($s0)
    /* 2BBEFC 802D9ACC 000FC080 */  sll        $t8, $t7, 2
    /* 2BBF00 802D9AD0 030FC023 */  subu       $t8, $t8, $t7
    /* 2BBF04 802D9AD4 0018C080 */  sll        $t8, $t8, 2
    /* 2BBF08 802D9AD8 030FC021 */  addu       $t8, $t8, $t7
    /* 2BBF0C 802D9ADC 0018C0C0 */  sll        $t8, $t8, 3
    /* 2BBF10 802D9AE0 00F83821 */  addu       $a3, $a3, $t8
    /* 2BBF14 802D9AE4 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 2BBF18 802D9AE8 86060004 */  lh         $a2, 0x4($s0)
    /* 2BBF1C 802D9AEC 0C037E12 */  jal        func_800DF848_EE7F8
    /* 2BBF20 802D9AF0 AFAE0010 */   sw        $t6, 0x10($sp)
  .L802D9AF4_2BBF24:
    /* 2BBF24 802D9AF4 8FBF004C */  lw         $ra, 0x4C($sp)
  .L802D9AF8_2BBF28:
    /* 2BBF28 802D9AF8 D7B40040 */  ldc1       $f20, 0x40($sp)
    /* 2BBF2C 802D9AFC 8FB00048 */  lw         $s0, 0x48($sp)
    /* 2BBF30 802D9B00 03E00008 */  jr         $ra
    /* 2BBF34 802D9B04 27BD00C0 */   addiu     $sp, $sp, 0xC0
endlabel func_802D923C_2BB66C
