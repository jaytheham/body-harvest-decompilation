nonmatching func_8000D8DC_E4DC, 0x220

glabel func_8000D8DC_E4DC
    /* E4DC 8000D8DC 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* E4E0 8000D8E0 AFB40048 */  sw         $s4, 0x48($sp)
    /* E4E4 8000D8E4 AFB30044 */  sw         $s3, 0x44($sp)
    /* E4E8 8000D8E8 AFB20040 */  sw         $s2, 0x40($sp)
    /* E4EC 8000D8EC AFB1003C */  sw         $s1, 0x3C($sp)
    /* E4F0 8000D8F0 AFB00038 */  sw         $s0, 0x38($sp)
    /* E4F4 8000D8F4 00A08825 */  or         $s1, $a1, $zero
    /* E4F8 8000D8F8 00809025 */  or         $s2, $a0, $zero
    /* E4FC 8000D8FC 00E09825 */  or         $s3, $a3, $zero
    /* E500 8000D900 00C0A025 */  or         $s4, $a2, $zero
    /* E504 8000D904 AFBF004C */  sw         $ra, 0x4C($sp)
    /* E508 8000D908 F7B80030 */  sdc1       $f24, 0x30($sp)
    /* E50C 8000D90C F7B60028 */  sdc1       $f22, 0x28($sp)
    /* E510 8000D910 F7B40020 */  sdc1       $f20, 0x20($sp)
    /* E514 8000D914 10E0006E */  beqz       $a3, .L8000DAD0_E6D0
    /* E518 8000D918 00008025 */   or        $s0, $zero, $zero
    /* E51C 8000D91C C7B80060 */  lwc1       $f24, 0x60($sp)
    /* E520 8000D920 C7B60064 */  lwc1       $f22, 0x64($sp)
  .L8000D924_E524:
    /* E524 8000D924 00107180 */  sll        $t6, $s0, 6
    /* E528 8000D928 01D43021 */  addu       $a2, $t6, $s4
    /* E52C 8000D92C 8CCF0014 */  lw         $t7, 0x14($a2)
    /* E530 8000D930 51E00064 */  beql       $t7, $zero, .L8000DAC4_E6C4
    /* E534 8000D934 26100001 */   addiu     $s0, $s0, 0x1
    /* E538 8000D938 C4D2001C */  lwc1       $f18, 0x1C($a2)
    /* E53C 8000D93C C4D40020 */  lwc1       $f20, 0x20($a2)
    /* E540 8000D940 84C20000 */  lh         $v0, 0x0($a2)
    /* E544 8000D944 84D8002A */  lh         $t8, 0x2A($a2)
    /* E548 8000D948 4612A101 */  sub.s      $f4, $f20, $f18
    /* E54C 8000D94C 84C30002 */  lh         $v1, 0x2($a2)
    /* E550 8000D950 0302C823 */  subu       $t9, $t8, $v0
    /* E554 8000D954 44993000 */  mtc1       $t9, $f6
    /* E558 8000D958 4604B403 */  div.s      $f16, $f22, $f4
    /* E55C 8000D95C 44822000 */  mtc1       $v0, $f4
    /* E560 8000D960 84CA002C */  lh         $t2, 0x2C($a2)
    /* E564 8000D964 84C40004 */  lh         $a0, 0x4($a2)
    /* E568 8000D968 46803220 */  cvt.s.w    $f8, $f6
    /* E56C 8000D96C 01435823 */  subu       $t3, $t2, $v1
    /* E570 8000D970 84CE002E */  lh         $t6, 0x2E($a2)
    /* E574 8000D974 84C80024 */  lh         $t0, 0x24($a2)
    /* E578 8000D978 C4C20008 */  lwc1       $f2, 0x8($a2)
    /* E57C 8000D97C 01C47823 */  subu       $t7, $t6, $a0
    /* E580 8000D980 84CA0028 */  lh         $t2, 0x28($a2)
    /* E584 8000D984 C4C0000C */  lwc1       $f0, 0xC($a2)
    /* E588 8000D988 468021A0 */  cvt.s.w    $f6, $f4
    /* E58C 8000D98C 46104282 */  mul.s      $f10, $f8, $f16
    /* E590 8000D990 46065200 */  add.s      $f8, $f10, $f6
    /* E594 8000D994 448B5000 */  mtc1       $t3, $f10
    /* E598 8000D998 4600410D */  trunc.w.s  $f4, $f8
    /* E59C 8000D99C 468051A0 */  cvt.s.w    $f6, $f10
    /* E5A0 8000D9A0 44092000 */  mfc1       $t1, $f4
    /* E5A4 8000D9A4 44832000 */  mtc1       $v1, $f4
    /* E5A8 8000D9A8 A4C90000 */  sh         $t1, 0x0($a2)
    /* E5AC 8000D9AC 468022A0 */  cvt.s.w    $f10, $f4
    /* E5B0 8000D9B0 46103202 */  mul.s      $f8, $f6, $f16
    /* E5B4 8000D9B4 84C90026 */  lh         $t1, 0x26($a2)
    /* E5B8 8000D9B8 460A4180 */  add.s      $f6, $f8, $f10
    /* E5BC 8000D9BC 448F4000 */  mtc1       $t7, $f8
    /* E5C0 8000D9C0 4600310D */  trunc.w.s  $f4, $f6
    /* E5C4 8000D9C4 468042A0 */  cvt.s.w    $f10, $f8
    /* E5C8 8000D9C8 440D2000 */  mfc1       $t5, $f4
    /* E5CC 8000D9CC 44842000 */  mtc1       $a0, $f4
    /* E5D0 8000D9D0 A4CD0002 */  sh         $t5, 0x2($a2)
    /* E5D4 8000D9D4 46802220 */  cvt.s.w    $f8, $f4
    /* E5D8 8000D9D8 46105182 */  mul.s      $f6, $f10, $f16
    /* E5DC 8000D9DC 46083280 */  add.s      $f10, $f6, $f8
    /* E5E0 8000D9E0 44883000 */  mtc1       $t0, $f6
    /* E5E4 8000D9E4 00000000 */  nop
    /* E5E8 8000D9E8 46803220 */  cvt.s.w    $f8, $f6
    /* E5EC 8000D9EC 4600510D */  trunc.w.s  $f4, $f10
    /* E5F0 8000D9F0 46024281 */  sub.s      $f10, $f8, $f2
    /* E5F4 8000D9F4 44894000 */  mtc1       $t1, $f8
    /* E5F8 8000D9F8 44192000 */  mfc1       $t9, $f4
    /* E5FC 8000D9FC 46804320 */  cvt.s.w    $f12, $f8
    /* E600 8000DA00 46105102 */  mul.s      $f4, $f10, $f16
    /* E604 8000DA04 448A4000 */  mtc1       $t2, $f8
    /* E608 8000DA08 A4D90004 */  sh         $t9, 0x4($a2)
    /* E60C 8000DA0C 46006281 */  sub.s      $f10, $f12, $f0
    /* E610 8000DA10 468043A0 */  cvt.s.w    $f14, $f8
    /* E614 8000DA14 46022180 */  add.s      $f6, $f4, $f2
    /* E618 8000DA18 46105102 */  mul.s      $f4, $f10, $f16
    /* E61C 8000DA1C C4C20010 */  lwc1       $f2, 0x10($a2)
    /* E620 8000DA20 46169200 */  add.s      $f8, $f18, $f22
    /* E624 8000DA24 E4C60008 */  swc1       $f6, 0x8($a2)
    /* E628 8000DA28 46027281 */  sub.s      $f10, $f14, $f2
    /* E62C 8000DA2C E4C8001C */  swc1       $f8, 0x1C($a2)
    /* E630 8000DA30 46002180 */  add.s      $f6, $f4, $f0
    /* E634 8000DA34 46105102 */  mul.s      $f4, $f10, $f16
    /* E638 8000DA38 C4CA001C */  lwc1       $f10, 0x1C($a2)
    /* E63C 8000DA3C E4C6000C */  swc1       $f6, 0xC($a2)
    /* E640 8000DA40 460AA03E */  c.le.s     $f20, $f10
    /* E644 8000DA44 46022180 */  add.s      $f6, $f4, $f2
    /* E648 8000DA48 4500001D */  bc1f       .L8000DAC0_E6C0
    /* E64C 8000DA4C E4C60010 */   swc1      $f6, 0x10($a2)
    /* E650 8000DA50 84CB0024 */  lh         $t3, 0x24($a2)
    /* E654 8000DA54 8CCF0018 */  lw         $t7, 0x18($a2)
    /* E658 8000DA58 8CC80014 */  lw         $t0, 0x14($a2)
    /* E65C 8000DA5C 448B2000 */  mtc1       $t3, $f4
    /* E660 8000DA60 84CC002A */  lh         $t4, 0x2A($a2)
    /* E664 8000DA64 84CD002C */  lh         $t5, 0x2C($a2)
    /* E668 8000DA68 468021A0 */  cvt.s.w    $f6, $f4
    /* E66C 8000DA6C 84CE002E */  lh         $t6, 0x2E($a2)
    /* E670 8000DA70 25F80001 */  addiu      $t8, $t7, 0x1
    /* E674 8000DA74 E4CC000C */  swc1       $f12, 0xC($a2)
    /* E678 8000DA78 E4CE0010 */  swc1       $f14, 0x10($a2)
    /* E67C 8000DA7C ACD80018 */  sw         $t8, 0x18($a2)
    /* E680 8000DA80 E4C60008 */  swc1       $f6, 0x8($a2)
    /* E684 8000DA84 A4CC0000 */  sh         $t4, 0x0($a2)
    /* E688 8000DA88 A4CD0002 */  sh         $t5, 0x2($a2)
    /* E68C 8000DA8C 17080007 */  bne        $t8, $t0, .L8000DAAC_E6AC
    /* E690 8000DA90 A4CE0004 */   sh        $t6, 0x4($a2)
    /* E694 8000DA94 ACC00014 */  sw         $zero, 0x14($a2)
    /* E698 8000DA98 16000009 */  bnez       $s0, .L8000DAC0_E6C0
    /* E69C 8000DA9C ACC00018 */   sw        $zero, 0x18($a2)
    /* E6A0 8000DAA0 AE200E50 */  sw         $zero, 0xE50($s1)
    /* E6A4 8000DAA4 10000006 */  b          .L8000DAC0_E6C0
    /* E6A8 8000DAA8 AE400E50 */   sw        $zero, 0xE50($s2)
  .L8000DAAC_E6AC:
    /* E6AC 8000DAAC 02402025 */  or         $a0, $s2, $zero
    /* E6B0 8000DAB0 02202825 */  or         $a1, $s1, $zero
    /* E6B4 8000DAB4 320700FF */  andi       $a3, $s0, 0xFF
    /* E6B8 8000DAB8 0C003562 */  jal        func_8000D588_E188
    /* E6BC 8000DABC E7B80010 */   swc1      $f24, 0x10($sp)
  .L8000DAC0_E6C0:
    /* E6C0 8000DAC0 26100001 */  addiu      $s0, $s0, 0x1
  .L8000DAC4_E6C4:
    /* E6C4 8000DAC4 320900FF */  andi       $t1, $s0, 0xFF
    /* E6C8 8000DAC8 1669FF96 */  bne        $s3, $t1, .L8000D924_E524
    /* E6CC 8000DACC 01208025 */   or        $s0, $t1, $zero
  .L8000DAD0_E6D0:
    /* E6D0 8000DAD0 8FBF004C */  lw         $ra, 0x4C($sp)
    /* E6D4 8000DAD4 D7B40020 */  ldc1       $f20, 0x20($sp)
    /* E6D8 8000DAD8 D7B60028 */  ldc1       $f22, 0x28($sp)
    /* E6DC 8000DADC D7B80030 */  ldc1       $f24, 0x30($sp)
    /* E6E0 8000DAE0 8FB00038 */  lw         $s0, 0x38($sp)
    /* E6E4 8000DAE4 8FB1003C */  lw         $s1, 0x3C($sp)
    /* E6E8 8000DAE8 8FB20040 */  lw         $s2, 0x40($sp)
    /* E6EC 8000DAEC 8FB30044 */  lw         $s3, 0x44($sp)
    /* E6F0 8000DAF0 8FB40048 */  lw         $s4, 0x48($sp)
    /* E6F4 8000DAF4 03E00008 */  jr         $ra
    /* E6F8 8000DAF8 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_8000D8DC_E4DC
