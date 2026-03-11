nonmatching func_800FB504_10A4B4, 0xCC8

glabel func_800FB504_10A4B4
    /* 10A4B4 800FB504 27BDFF68 */  addiu      $sp, $sp, -0x98
    /* 10A4B8 800FB508 AFB00020 */  sw         $s0, 0x20($sp)
    /* 10A4BC 800FB50C 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 10A4C0 800FB510 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 10A4C4 800FB514 3C0F8016 */  lui        $t7, %hi(D_80159318)
    /* 10A4C8 800FB518 85EF9318 */  lh         $t7, %lo(D_80159318)($t7)
    /* 10A4CC 800FB51C 240EFFFF */  addiu      $t6, $zero, -0x1
    /* 10A4D0 800FB520 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 10A4D4 800FB524 A7AE008E */  sh         $t6, 0x8E($sp)
    /* 10A4D8 800FB528 16000004 */  bnez       $s0, .L800FB53C_10A4EC
    /* 10A4DC 800FB52C A7AF0068 */   sh        $t7, 0x68($sp)
    /* 10A4E0 800FB530 3C018016 */  lui        $at, %hi(D_80158FF4)
    /* 10A4E4 800FB534 10000320 */  b          .L800FC1B8_10B168
    /* 10A4E8 800FB538 AC208FF4 */   sw        $zero, %lo(D_80158FF4)($at)
  .L800FB53C_10A4EC:
    /* 10A4EC 800FB53C 9218001A */  lbu        $t8, 0x1A($s0)
    /* 10A4F0 800FB540 3C0A8025 */  lui        $t2, %hi(vehicleSpecs)
    /* 10A4F4 800FB544 254A7A00 */  addiu      $t2, $t2, %lo(vehicleSpecs)
    /* 10A4F8 800FB548 0018C8C0 */  sll        $t9, $t8, 3
    /* 10A4FC 800FB54C 0338C823 */  subu       $t9, $t9, $t8
    /* 10A500 800FB550 0019C900 */  sll        $t9, $t9, 4
    /* 10A504 800FB554 032A1821 */  addu       $v1, $t9, $t2
    /* 10A508 800FB558 8462003C */  lh         $v0, 0x3C($v1)
    /* 10A50C 800FB55C 3C0C8005 */  lui        $t4, %hi(D_80052B2C)
    /* 10A510 800FB560 04420004 */  bltzl      $v0, .L800FB574_10A524
    /* 10A514 800FB564 00025823 */   negu      $t3, $v0
    /* 10A518 800FB568 10000003 */  b          .L800FB578_10A528
    /* 10A51C 800FB56C A7A2006A */   sh        $v0, 0x6A($sp)
    /* 10A520 800FB570 00025823 */  negu       $t3, $v0
  .L800FB574_10A524:
    /* 10A524 800FB574 A7AB006A */  sh         $t3, 0x6A($sp)
  .L800FB578_10A528:
    /* 10A528 800FB578 8D8C2B2C */  lw         $t4, %lo(D_80052B2C)($t4)
    /* 10A52C 800FB57C 3C0E8005 */  lui        $t6, %hi(D_80050AD4)
    /* 10A530 800FB580 8DCE0AD4 */  lw         $t6, %lo(D_80050AD4)($t6)
    /* 10A534 800FB584 858D0036 */  lh         $t5, 0x36($t4)
    /* 10A538 800FB588 24010001 */  addiu      $at, $zero, 0x1
    /* 10A53C 800FB58C 15C10015 */  bne        $t6, $at, .L800FB5E4_10A594
    /* 10A540 800FB590 A7AD0082 */   sh        $t5, 0x82($sp)
    /* 10A544 800FB594 8C6F004C */  lw         $t7, 0x4C($v1)
    /* 10A548 800FB598 24050001 */  addiu      $a1, $zero, 0x1
    /* 10A54C 800FB59C 27A6004C */  addiu      $a2, $sp, 0x4C
    /* 10A550 800FB5A0 000FC100 */  sll        $t8, $t7, 4
    /* 10A554 800FB5A4 07010008 */  bgez       $t8, .L800FB5C8_10A578
    /* 10A558 800FB5A8 27A70048 */   addiu     $a3, $sp, 0x48
    /* 10A55C 800FB5AC 8462002C */  lh         $v0, 0x2C($v1)
    /* 10A560 800FB5B0 04410005 */  bgez       $v0, .L800FB5C8_10A578
    /* 10A564 800FB5B4 AFA20040 */   sw        $v0, 0x40($sp)
    /* 10A568 800FB5B8 0002C823 */  negu       $t9, $v0
    /* 10A56C 800FB5BC A479002C */  sh         $t9, 0x2C($v1)
    /* 10A570 800FB5C0 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 10A574 800FB5C4 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
  .L800FB5C8_10A578:
    /* 10A578 800FB5C8 27AA0044 */  addiu      $t2, $sp, 0x44
    /* 10A57C 800FB5CC AFAA0010 */  sw         $t2, 0x10($sp)
    /* 10A580 800FB5D0 02002025 */  or         $a0, $s0, $zero
    /* 10A584 800FB5D4 0C04A141 */  jal        func_80128504_1374B4
    /* 10A588 800FB5D8 AFA30088 */   sw        $v1, 0x88($sp)
    /* 10A58C 800FB5DC 10000014 */  b          .L800FB630_10A5E0
    /* 10A590 800FB5E0 8FAF0088 */   lw        $t7, 0x88($sp)
  .L800FB5E4_10A594:
    /* 10A594 800FB5E4 8C6B004C */  lw         $t3, 0x4C($v1)
    /* 10A598 800FB5E8 00002825 */  or         $a1, $zero, $zero
    /* 10A59C 800FB5EC 27A6004C */  addiu      $a2, $sp, 0x4C
    /* 10A5A0 800FB5F0 000B6100 */  sll        $t4, $t3, 4
    /* 10A5A4 800FB5F4 05810008 */  bgez       $t4, .L800FB618_10A5C8
    /* 10A5A8 800FB5F8 27A70048 */   addiu     $a3, $sp, 0x48
    /* 10A5AC 800FB5FC 84620020 */  lh         $v0, 0x20($v1)
    /* 10A5B0 800FB600 04410005 */  bgez       $v0, .L800FB618_10A5C8
    /* 10A5B4 800FB604 AFA20040 */   sw        $v0, 0x40($sp)
    /* 10A5B8 800FB608 00026823 */  negu       $t5, $v0
    /* 10A5BC 800FB60C A46D0020 */  sh         $t5, 0x20($v1)
    /* 10A5C0 800FB610 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 10A5C4 800FB614 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
  .L800FB618_10A5C8:
    /* 10A5C8 800FB618 27AE0044 */  addiu      $t6, $sp, 0x44
    /* 10A5CC 800FB61C AFAE0010 */  sw         $t6, 0x10($sp)
    /* 10A5D0 800FB620 02002025 */  or         $a0, $s0, $zero
    /* 10A5D4 800FB624 0C04A141 */  jal        func_80128504_1374B4
    /* 10A5D8 800FB628 AFA30088 */   sw        $v1, 0x88($sp)
    /* 10A5DC 800FB62C 8FAF0088 */  lw         $t7, 0x88($sp)
  .L800FB630_10A5E0:
    /* 10A5E0 800FB630 8DE2004C */  lw         $v0, 0x4C($t7)
    /* 10A5E4 800FB634 0002C200 */  sll        $t8, $v0, 8
    /* 10A5E8 800FB638 0700004C */  bltz       $t8, .L800FB76C_10A71C
    /* 10A5EC 800FB63C 3C010001 */   lui       $at, (0x10000 >> 16)
    /* 10A5F0 800FB640 00411824 */  and        $v1, $v0, $at
    /* 10A5F4 800FB644 14600002 */  bnez       $v1, .L800FB650_10A600
    /* 10A5F8 800FB648 0002CB00 */   sll       $t9, $v0, 12
    /* 10A5FC 800FB64C 0721003D */  bgez       $t9, .L800FB744_10A6F4
  .L800FB650_10A600:
    /* 10A600 800FB650 3C0A8004 */   lui       $t2, %hi(currentControllerStates)
    /* 10A604 800FB654 954A7588 */  lhu        $t2, %lo(currentControllerStates)($t2)
    /* 10A608 800FB658 3C0C8004 */  lui        $t4, %hi(currentLevel)
    /* 10A60C 800FB65C 314B0010 */  andi       $t3, $t2, 0x10
    /* 10A610 800FB660 1560000B */  bnez       $t3, .L800FB690_10A640
    /* 10A614 800FB664 00000000 */   nop
    /* 10A618 800FB668 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* 10A61C 800FB66C 24010002 */  addiu      $at, $zero, 0x2
    /* 10A620 800FB670 3C0D8005 */  lui        $t5, %hi(D_80052B34)
    /* 10A624 800FB674 15810033 */  bne        $t4, $at, .L800FB744_10A6F4
    /* 10A628 800FB678 00000000 */   nop
    /* 10A62C 800FB67C 8DAD2B34 */  lw         $t5, %lo(D_80052B34)($t5)
    /* 10A630 800FB680 24010001 */  addiu      $at, $zero, 0x1
    /* 10A634 800FB684 91AE001A */  lbu        $t6, 0x1A($t5)
    /* 10A638 800FB688 15C1002E */  bne        $t6, $at, .L800FB744_10A6F4
    /* 10A63C 800FB68C 00000000 */   nop
  .L800FB690_10A640:
    /* 10A640 800FB690 1060000E */  beqz       $v1, .L800FB6CC_10A67C
    /* 10A644 800FB694 3C0B8004 */   lui       $t3, %hi(D_8004758B)
    /* 10A648 800FB698 3C028004 */  lui        $v0, %hi(D_8004758A)
    /* 10A64C 800FB69C 8042758A */  lb         $v0, %lo(D_8004758A)($v0)
    /* 10A650 800FB6A0 87B90082 */  lh         $t9, 0x82($sp)
    /* 10A654 800FB6A4 00420019 */  multu      $v0, $v0
    /* 10A658 800FB6A8 00007812 */  mflo       $t7
    /* 10A65C 800FB6AC 00000000 */  nop
    /* 10A660 800FB6B0 00000000 */  nop
    /* 10A664 800FB6B4 01E20019 */  multu      $t7, $v0
    /* 10A668 800FB6B8 00001012 */  mflo       $v0
    /* 10A66C 800FB6BC 0002C203 */  sra        $t8, $v0, 8
    /* 10A670 800FB6C0 03385023 */  subu       $t2, $t9, $t8
    /* 10A674 800FB6C4 10000002 */  b          .L800FB6D0_10A680
    /* 10A678 800FB6C8 A7AA0082 */   sh        $t2, 0x82($sp)
  .L800FB6CC_10A67C:
    /* 10A67C 800FB6CC A7A00082 */  sh         $zero, 0x82($sp)
  .L800FB6D0_10A680:
    /* 10A680 800FB6D0 816B758B */  lb         $t3, %lo(D_8004758B)($t3)
    /* 10A684 800FB6D4 3C0F8003 */  lui        $t7, %hi(D_80031420)
    /* 10A688 800FB6D8 8DEF1420 */  lw         $t7, %lo(D_80031420)($t7)
    /* 10A68C 800FB6DC 016B0019 */  multu      $t3, $t3
    /* 10A690 800FB6E0 3C028016 */  lui        $v0, %hi(D_80159320)
    /* 10A694 800FB6E4 AFAB0070 */  sw         $t3, 0x70($sp)
    /* 10A698 800FB6E8 31F80004 */  andi       $t8, $t7, 0x4
    /* 10A69C 800FB6EC 87B90068 */  lh         $t9, 0x68($sp)
    /* 10A6A0 800FB6F0 24429320 */  addiu      $v0, $v0, %lo(D_80159320)
    /* 10A6A4 800FB6F4 00006012 */  mflo       $t4
    /* 10A6A8 800FB6F8 00000000 */  nop
    /* 10A6AC 800FB6FC 00000000 */  nop
    /* 10A6B0 800FB700 018B0019 */  multu      $t4, $t3
    /* 10A6B4 800FB704 87AC0068 */  lh         $t4, 0x68($sp)
    /* 10A6B8 800FB708 00006812 */  mflo       $t5
    /* 10A6BC 800FB70C 000D7243 */  sra        $t6, $t5, 9
    /* 10A6C0 800FB710 13000004 */  beqz       $t8, .L800FB724_10A6D4
    /* 10A6C4 800FB714 AFAE0070 */   sw        $t6, 0x70($sp)
    /* 10A6C8 800FB718 032E5021 */  addu       $t2, $t9, $t6
    /* 10A6CC 800FB71C 10000004 */  b          .L800FB730_10A6E0
    /* 10A6D0 800FB720 A7AA0068 */   sh        $t2, 0x68($sp)
  .L800FB724_10A6D4:
    /* 10A6D4 800FB724 8FAB0070 */  lw         $t3, 0x70($sp)
    /* 10A6D8 800FB728 018B6823 */  subu       $t5, $t4, $t3
    /* 10A6DC 800FB72C A7AD0068 */  sh         $t5, 0x68($sp)
  .L800FB730_10A6E0:
    /* 10A6E0 800FB730 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 10A6E4 800FB734 3C010004 */  lui        $at, (0x40000 >> 16)
    /* 10A6E8 800FB738 01E1C025 */  or         $t8, $t7, $at
    /* 10A6EC 800FB73C 10000024 */  b          .L800FB7D0_10A780
    /* 10A6F0 800FB740 AC580000 */   sw        $t8, 0x0($v0)
  .L800FB744_10A6F4:
    /* 10A6F4 800FB744 3C028016 */  lui        $v0, %hi(D_80159320)
    /* 10A6F8 800FB748 24429320 */  addiu      $v0, $v0, %lo(D_80159320)
    /* 10A6FC 800FB74C 8C590000 */  lw         $t9, 0x0($v0)
    /* 10A700 800FB750 3C01FFFB */  lui        $at, (0xFFFBFFFF >> 16)
    /* 10A704 800FB754 3421FFFF */  ori        $at, $at, (0xFFFBFFFF & 0xFFFF)
    /* 10A708 800FB758 03217024 */  and        $t6, $t9, $at
    /* 10A70C 800FB75C A7A00068 */  sh         $zero, 0x68($sp)
    /* 10A710 800FB760 A7A00082 */  sh         $zero, 0x82($sp)
    /* 10A714 800FB764 1000001A */  b          .L800FB7D0_10A780
    /* 10A718 800FB768 AC4E0000 */   sw        $t6, 0x0($v0)
  .L800FB76C_10A71C:
    /* 10A71C 800FB76C 3C028016 */  lui        $v0, %hi(D_80159320)
    /* 10A720 800FB770 24429320 */  addiu      $v0, $v0, %lo(D_80159320)
    /* 10A724 800FB774 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 10A728 800FB778 3C01FFFB */  lui        $at, (0xFFFBFFFF >> 16)
    /* 10A72C 800FB77C 3421FFFF */  ori        $at, $at, (0xFFFBFFFF & 0xFFFF)
    /* 10A730 800FB780 01416024 */  and        $t4, $t2, $at
    /* 10A734 800FB784 AC4C0000 */  sw         $t4, 0x0($v0)
    /* 10A738 800FB788 3C0B8004 */  lui        $t3, %hi(currentControllerStates)
    /* 10A73C 800FB78C 956B7588 */  lhu        $t3, %lo(currentControllerStates)($t3)
    /* 10A740 800FB790 A7A00082 */  sh         $zero, 0x82($sp)
    /* 10A744 800FB794 A7A00068 */  sh         $zero, 0x68($sp)
    /* 10A748 800FB798 316D0010 */  andi       $t5, $t3, 0x10
    /* 10A74C 800FB79C 11A0000A */  beqz       $t5, .L800FB7C8_10A778
    /* 10A750 800FB7A0 3C0F8005 */   lui       $t7, %hi(D_80052B34)
    /* 10A754 800FB7A4 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* 10A758 800FB7A8 240E0001 */  addiu      $t6, $zero, 0x1
    /* 10A75C 800FB7AC 3C018016 */  lui        $at, %hi(D_801591BC)
    /* 10A760 800FB7B0 95F80020 */  lhu        $t8, 0x20($t7)
    /* 10A764 800FB7B4 33190002 */  andi       $t9, $t8, 0x2
    /* 10A768 800FB7B8 13200003 */  beqz       $t9, .L800FB7C8_10A778
    /* 10A76C 800FB7BC 00000000 */   nop
    /* 10A770 800FB7C0 10000003 */  b          .L800FB7D0_10A780
    /* 10A774 800FB7C4 AC2E91BC */   sw        $t6, %lo(D_801591BC)($at)
  .L800FB7C8_10A778:
    /* 10A778 800FB7C8 3C018016 */  lui        $at, %hi(D_801591BC)
    /* 10A77C 800FB7CC AC2091BC */  sw         $zero, %lo(D_801591BC)($at)
  .L800FB7D0_10A780:
    /* 10A780 800FB7D0 3C0A8016 */  lui        $t2, %hi(D_80159048)
    /* 10A784 800FB7D4 8D4A9048 */  lw         $t2, %lo(D_80159048)($t2)
    /* 10A788 800FB7D8 3C018016 */  lui        $at, %hi(D_80158FF0)
    /* 10A78C 800FB7DC AC208FF0 */  sw         $zero, %lo(D_80158FF0)($at)
    /* 10A790 800FB7E0 15400061 */  bnez       $t2, .L800FB968_10A918
    /* 10A794 800FB7E4 3C068005 */   lui       $a2, %hi(D_8004D0F8)
    /* 10A798 800FB7E8 240817E8 */  addiu      $t0, $zero, 0x17E8
    /* 10A79C 800FB7EC 24C6D0F8 */  addiu      $a2, $a2, %lo(D_8004D0F8)
    /* 10A7A0 800FB7F0 240700FE */  addiu      $a3, $zero, 0xFE
  .L800FB7F4_10A7A4:
    /* 10A7A4 800FB7F4 90C2001A */  lbu        $v0, 0x1A($a2)
    /* 10A7A8 800FB7F8 28410002 */  slti       $at, $v0, 0x2
    /* 10A7AC 800FB7FC 54200048 */  bnel       $at, $zero, .L800FB920_10A8D0
    /* 10A7B0 800FB800 00E08025 */   or        $s0, $a3, $zero
    /* 10A7B4 800FB804 8CC30020 */  lw         $v1, 0x20($a2)
    /* 10A7B8 800FB808 000362C0 */  sll        $t4, $v1, 11
    /* 10A7BC 800FB80C 05800043 */  bltz       $t4, .L800FB91C_10A8CC
    /* 10A7C0 800FB810 00035A40 */   sll       $t3, $v1, 9
    /* 10A7C4 800FB814 05620042 */  bltzl      $t3, .L800FB920_10A8D0
    /* 10A7C8 800FB818 00E08025 */   or        $s0, $a3, $zero
    /* 10A7CC 800FB81C 1040003F */  beqz       $v0, .L800FB91C_10A8CC
    /* 10A7D0 800FB820 24010001 */   addiu     $at, $zero, 0x1
    /* 10A7D4 800FB824 1041003D */  beq        $v0, $at, .L800FB91C_10A8CC
    /* 10A7D8 800FB828 8FAD004C */   lw        $t5, 0x4C($sp)
    /* 10A7DC 800FB82C 84CF0000 */  lh         $t7, 0x0($a2)
    /* 10A7E0 800FB830 8FB90044 */  lw         $t9, 0x44($sp)
    /* 10A7E4 800FB834 84CE0004 */  lh         $t6, 0x4($a2)
    /* 10A7E8 800FB838 01AF2823 */  subu       $a1, $t5, $t7
    /* 10A7EC 800FB83C 0005C043 */  sra        $t8, $a1, 1
    /* 10A7F0 800FB840 03180019 */  multu      $t8, $t8
    /* 10A7F4 800FB844 032E1823 */  subu       $v1, $t9, $t6
    /* 10A7F8 800FB848 00035043 */  sra        $t2, $v1, 1
    /* 10A7FC 800FB84C 3C01003C */  lui        $at, (0x3C8000 >> 16)
    /* 10A800 800FB850 34218000 */  ori        $at, $at, (0x3C8000 & 0xFFFF)
    /* 10A804 800FB854 03002825 */  or         $a1, $t8, $zero
    /* 10A808 800FB858 01401825 */  or         $v1, $t2, $zero
    /* 10A80C 800FB85C 00006012 */  mflo       $t4
    /* 10A810 800FB860 00000000 */  nop
    /* 10A814 800FB864 00000000 */  nop
    /* 10A818 800FB868 014A0019 */  multu      $t2, $t2
    /* 10A81C 800FB86C 00005812 */  mflo       $t3
    /* 10A820 800FB870 018B6821 */  addu       $t5, $t4, $t3
    /* 10A824 800FB874 01A1082B */  sltu       $at, $t5, $at
    /* 10A828 800FB878 50200029 */  beql       $at, $zero, .L800FB920_10A8D0
    /* 10A82C 800FB87C 00E08025 */   or        $s0, $a3, $zero
    /* 10A830 800FB880 44852000 */  mtc1       $a1, $f4
    /* 10A834 800FB884 44833000 */  mtc1       $v1, $f6
    /* 10A838 800FB888 AFA60030 */  sw         $a2, 0x30($sp)
    /* 10A83C 800FB88C AFA70094 */  sw         $a3, 0x94($sp)
    /* 10A840 800FB890 AFA80090 */  sw         $t0, 0x90($sp)
    /* 10A844 800FB894 46802320 */  cvt.s.w    $f12, $f4
    /* 10A848 800FB898 0C000E09 */  jal        func_80003824_4424
    /* 10A84C 800FB89C 468033A0 */   cvt.s.w   $f14, $f6
    /* 10A850 800FB8A0 3C0F8005 */  lui        $t7, %hi(D_80052B34)
    /* 10A854 800FB8A4 3C198005 */  lui        $t9, %hi(D_80052B2C)
    /* 10A858 800FB8A8 8F392B2C */  lw         $t9, %lo(D_80052B2C)($t9)
    /* 10A85C 800FB8AC 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* 10A860 800FB8B0 00022C00 */  sll        $a1, $v0, 16
    /* 10A864 800FB8B4 872E0036 */  lh         $t6, 0x36($t9)
    /* 10A868 800FB8B8 85F80006 */  lh         $t8, 0x6($t7)
    /* 10A86C 800FB8BC 00055C03 */  sra        $t3, $a1, 16
    /* 10A870 800FB8C0 01602825 */  or         $a1, $t3, $zero
    /* 10A874 800FB8C4 030E2023 */  subu       $a0, $t8, $t6
    /* 10A878 800FB8C8 00045400 */  sll        $t2, $a0, 16
    /* 10A87C 800FB8CC 0C03E714 */  jal        func_800F9C50_108C00
    /* 10A880 800FB8D0 000A2403 */   sra       $a0, $t2, 16
    /* 10A884 800FB8D4 24018000 */  addiu      $at, $zero, -0x8000
    /* 10A888 800FB8D8 00412021 */  addu       $a0, $v0, $at
    /* 10A88C 800FB8DC 28818000 */  slti       $at, $a0, -0x8000
    /* 10A890 800FB8E0 00801825 */  or         $v1, $a0, $zero
    /* 10A894 800FB8E4 8FA60030 */  lw         $a2, 0x30($sp)
    /* 10A898 800FB8E8 8FA70094 */  lw         $a3, 0x94($sp)
    /* 10A89C 800FB8EC 10200003 */  beqz       $at, .L800FB8FC_10A8AC
    /* 10A8A0 800FB8F0 8FA80090 */   lw        $t0, 0x90($sp)
    /* 10A8A4 800FB8F4 3C010001 */  lui        $at, (0x10000 >> 16)
    /* 10A8A8 800FB8F8 00811821 */  addu       $v1, $a0, $at
  .L800FB8FC_10A8AC:
    /* 10A8AC 800FB8FC 04630003 */  bgezl      $v1, .L800FB90C_10A8BC
    /* 10A8B0 800FB900 0068082A */   slt       $at, $v1, $t0
    /* 10A8B4 800FB904 00031823 */  negu       $v1, $v1
    /* 10A8B8 800FB908 0068082A */  slt        $at, $v1, $t0
  .L800FB90C_10A8BC:
    /* 10A8BC 800FB90C 50200004 */  beql       $at, $zero, .L800FB920_10A8D0
    /* 10A8C0 800FB910 00E08025 */   or        $s0, $a3, $zero
    /* 10A8C4 800FB914 00604025 */  or         $t0, $v1, $zero
    /* 10A8C8 800FB918 A7A7008E */  sh         $a3, 0x8E($sp)
  .L800FB91C_10A8CC:
    /* 10A8CC 800FB91C 00E08025 */  or         $s0, $a3, $zero
  .L800FB920_10A8D0:
    /* 10A8D0 800FB920 24C6FFB0 */  addiu      $a2, $a2, -0x50
    /* 10A8D4 800FB924 14E0FFB3 */  bnez       $a3, .L800FB7F4_10A7A4
    /* 10A8D8 800FB928 24E7FFFF */   addiu     $a3, $a3, -0x1
    /* 10A8DC 800FB92C 87AD008E */  lh         $t5, 0x8E($sp)
    /* 10A8E0 800FB930 87AF008E */  lh         $t7, 0x8E($sp)
    /* 10A8E4 800FB934 2401FFFF */  addiu      $at, $zero, -0x1
    /* 10A8E8 800FB938 15A10004 */  bne        $t5, $at, .L800FB94C_10A8FC
    /* 10A8EC 800FB93C 000FC880 */   sll       $t9, $t7, 2
    /* 10A8F0 800FB940 3C018016 */  lui        $at, %hi(D_80158FEC)
    /* 10A8F4 800FB944 10000008 */  b          .L800FB968_10A918
    /* 10A8F8 800FB948 AC208FEC */   sw        $zero, %lo(D_80158FEC)($at)
  .L800FB94C_10A8FC:
    /* 10A8FC 800FB94C 032FC821 */  addu       $t9, $t9, $t7
    /* 10A900 800FB950 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 10A904 800FB954 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 10A908 800FB958 0019C900 */  sll        $t9, $t9, 4
    /* 10A90C 800FB95C 03387021 */  addu       $t6, $t9, $t8
    /* 10A910 800FB960 3C018016 */  lui        $at, %hi(D_80158FEC)
    /* 10A914 800FB964 AC2E8FEC */  sw         $t6, %lo(D_80158FEC)($at)
  .L800FB968_10A918:
    /* 10A918 800FB968 3C028016 */  lui        $v0, %hi(D_80158FEC)
    /* 10A91C 800FB96C 8C428FEC */  lw         $v0, %lo(D_80158FEC)($v0)
    /* 10A920 800FB970 10400017 */  beqz       $v0, .L800FB9D0_10A980
    /* 10A924 800FB974 00000000 */   nop
    /* 10A928 800FB978 8FAA004C */  lw         $t2, 0x4C($sp)
    /* 10A92C 800FB97C 844C0000 */  lh         $t4, 0x0($v0)
    /* 10A930 800FB980 8FAD0044 */  lw         $t5, 0x44($sp)
    /* 10A934 800FB984 844F0004 */  lh         $t7, 0x4($v0)
    /* 10A938 800FB988 014C2823 */  subu       $a1, $t2, $t4
    /* 10A93C 800FB98C 00055843 */  sra        $t3, $a1, 1
    /* 10A940 800FB990 016B0019 */  multu      $t3, $t3
    /* 10A944 800FB994 01AF1823 */  subu       $v1, $t5, $t7
    /* 10A948 800FB998 0003C843 */  sra        $t9, $v1, 1
    /* 10A94C 800FB99C 0000C012 */  mflo       $t8
    /* 10A950 800FB9A0 00000000 */  nop
    /* 10A954 800FB9A4 00000000 */  nop
    /* 10A958 800FB9A8 03390019 */  multu      $t9, $t9
    /* 10A95C 800FB9AC 00007012 */  mflo       $t6
    /* 10A960 800FB9B0 030E5021 */  addu       $t2, $t8, $t6
    /* 10A964 800FB9B4 448A4000 */  mtc1       $t2, $f8
    /* 10A968 800FB9B8 0C007650 */  jal        sqrtf
    /* 10A96C 800FB9BC 46804320 */   cvt.s.w   $f12, $f8
    /* 10A970 800FB9C0 4600028D */  trunc.w.s  $f10, $f0
    /* 10A974 800FB9C4 440B5000 */  mfc1       $t3, $f10
    /* 10A978 800FB9C8 00000000 */  nop
    /* 10A97C 800FB9CC AFAB0070 */  sw         $t3, 0x70($sp)
  .L800FB9D0_10A980:
    /* 10A980 800FB9D0 3C0D8004 */  lui        $t5, %hi(currentControllerStates)
    /* 10A984 800FB9D4 95AD7588 */  lhu        $t5, %lo(currentControllerStates)($t5)
    /* 10A988 800FB9D8 31AF0010 */  andi       $t7, $t5, 0x10
    /* 10A98C 800FB9DC 11E00003 */  beqz       $t7, .L800FB9EC_10A99C
    /* 10A990 800FB9E0 3C108005 */   lui       $s0, %hi(D_80052B34)
    /* 10A994 800FB9E4 10000017 */  b          .L800FBA44_10A9F4
    /* 10A998 800FB9E8 8E102B34 */   lw        $s0, %lo(D_80052B34)($s0)
  .L800FB9EC_10A99C:
    /* 10A99C 800FB9EC 3C028016 */  lui        $v0, %hi(D_80158FEC)
    /* 10A9A0 800FB9F0 8C428FEC */  lw         $v0, %lo(D_80158FEC)($v0)
    /* 10A9A4 800FB9F4 8FB90070 */  lw         $t9, 0x70($sp)
    /* 10A9A8 800FB9F8 8FAE0048 */  lw         $t6, 0x48($sp)
    /* 10A9AC 800FB9FC 1040000D */  beqz       $v0, .L800FBA34_10A9E4
    /* 10A9B0 800FBA00 3C108005 */   lui       $s0, %hi(D_80052B34)
    /* 10A9B4 800FBA04 84580002 */  lh         $t8, 0x2($v0)
    /* 10A9B8 800FBA08 44998000 */  mtc1       $t9, $f16
    /* 10A9BC 800FBA0C 030E5023 */  subu       $t2, $t8, $t6
    /* 10A9C0 800FBA10 000A6043 */  sra        $t4, $t2, 1
    /* 10A9C4 800FBA14 448C9000 */  mtc1       $t4, $f18
    /* 10A9C8 800FBA18 46808320 */  cvt.s.w    $f12, $f16
    /* 10A9CC 800FBA1C 0C000E09 */  jal        func_80003824_4424
    /* 10A9D0 800FBA20 468093A0 */   cvt.s.w   $f14, $f18
    /* 10A9D4 800FBA24 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 10A9D8 800FBA28 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 10A9DC 800FBA2C 10000003 */  b          .L800FBA3C_10A9EC
    /* 10A9E0 800FBA30 A7A20068 */   sh        $v0, 0x68($sp)
  .L800FBA34_10A9E4:
    /* 10A9E4 800FBA34 A7A00068 */  sh         $zero, 0x68($sp)
    /* 10A9E8 800FBA38 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
  .L800FBA3C_10A9EC:
    /* 10A9EC 800FBA3C 3C018016 */  lui        $at, %hi(D_80159048)
    /* 10A9F0 800FBA40 AC209048 */  sw         $zero, %lo(D_80159048)($at)
  .L800FBA44_10A9F4:
    /* 10A9F4 800FBA44 87AB0068 */  lh         $t3, 0x68($sp)
    /* 10A9F8 800FBA48 3C0C8005 */  lui        $t4, %hi(D_80052B2C)
    /* 10A9FC 800FBA4C 29611F41 */  slti       $at, $t3, 0x1F41
    /* 10AA00 800FBA50 14200002 */  bnez       $at, .L800FBA5C_10AA0C
    /* 10AA04 800FBA54 24031F40 */   addiu     $v1, $zero, 0x1F40
    /* 10AA08 800FBA58 A7A30068 */  sh         $v1, 0x68($sp)
  .L800FBA5C_10AA0C:
    /* 10AA0C 800FBA5C 920D001A */  lbu        $t5, 0x1A($s0)
    /* 10AA10 800FBA60 87A30068 */  lh         $v1, 0x68($sp)
    /* 10AA14 800FBA64 87A4006A */  lh         $a0, 0x6A($sp)
    /* 10AA18 800FBA68 11A00006 */  beqz       $t5, .L800FBA84_10AA34
    /* 10AA1C 800FBA6C 87B80082 */   lh        $t8, 0x82($sp)
    /* 10AA20 800FBA70 960F0020 */  lhu        $t7, 0x20($s0)
    /* 10AA24 800FBA74 2861F830 */  slti       $at, $v1, -0x7D0
    /* 10AA28 800FBA78 31F90002 */  andi       $t9, $t7, 0x2
    /* 10AA2C 800FBA7C 13200006 */  beqz       $t9, .L800FBA98_10AA48
    /* 10AA30 800FBA80 00000000 */   nop
  .L800FBA84_10AA34:
    /* 10AA34 800FBA84 2861E0C0 */  slti       $at, $v1, -0x1F40
    /* 10AA38 800FBA88 50200007 */  beql       $at, $zero, .L800FBAA8_10AA58
    /* 10AA3C 800FBA8C 0098082A */   slt       $at, $a0, $t8
    /* 10AA40 800FBA90 10000004 */  b          .L800FBAA4_10AA54
    /* 10AA44 800FBA94 2403E0C0 */   addiu     $v1, $zero, -0x1F40
  .L800FBA98_10AA48:
    /* 10AA48 800FBA98 50200003 */  beql       $at, $zero, .L800FBAA8_10AA58
    /* 10AA4C 800FBA9C 0098082A */   slt       $at, $a0, $t8
    /* 10AA50 800FBAA0 2403F830 */  addiu      $v1, $zero, -0x7D0
  .L800FBAA4_10AA54:
    /* 10AA54 800FBAA4 0098082A */  slt        $at, $a0, $t8
  .L800FBAA8_10AA58:
    /* 10AA58 800FBAA8 50200003 */  beql       $at, $zero, .L800FBAB8_10AA68
    /* 10AA5C 800FBAAC 87A50082 */   lh        $a1, 0x82($sp)
    /* 10AA60 800FBAB0 A7A40082 */  sh         $a0, 0x82($sp)
    /* 10AA64 800FBAB4 87A50082 */  lh         $a1, 0x82($sp)
  .L800FBAB8_10AA68:
    /* 10AA68 800FBAB8 00041023 */  negu       $v0, $a0
    /* 10AA6C 800FBABC 00A2082A */  slt        $at, $a1, $v0
    /* 10AA70 800FBAC0 10200004 */  beqz       $at, .L800FBAD4_10AA84
    /* 10AA74 800FBAC4 00000000 */   nop
    /* 10AA78 800FBAC8 00022C00 */  sll        $a1, $v0, 16
    /* 10AA7C 800FBACC 00055403 */  sra        $t2, $a1, 16
    /* 10AA80 800FBAD0 01402825 */  or         $a1, $t2, $zero
  .L800FBAD4_10AA84:
    /* 10AA84 800FBAD4 8D8C2B2C */  lw         $t4, %lo(D_80052B2C)($t4)
    /* 10AA88 800FBAD8 85840036 */  lh         $a0, 0x36($t4)
    /* 10AA8C 800FBADC A7A50082 */  sh         $a1, 0x82($sp)
    /* 10AA90 800FBAE0 0C03E714 */  jal        func_800F9C50_108C00
    /* 10AA94 800FBAE4 A7A30068 */   sh        $v1, 0x68($sp)
    /* 10AA98 800FBAE8 00021823 */  negu       $v1, $v0
    /* 10AA9C 800FBAEC 0062082A */  slt        $at, $v1, $v0
    /* 10AAA0 800FBAF0 10200003 */  beqz       $at, .L800FBB00_10AAB0
    /* 10AAA4 800FBAF4 3C188004 */   lui       $t8, %hi(currentLevel)
    /* 10AAA8 800FBAF8 10000002 */  b          .L800FBB04_10AAB4
    /* 10AAAC 800FBAFC 00408025 */   or        $s0, $v0, $zero
  .L800FBB00_10AAB0:
    /* 10AAB0 800FBB00 00608025 */  or         $s0, $v1, $zero
  .L800FBB04_10AAB4:
    /* 10AAB4 800FBB04 3C038016 */  lui        $v1, %hi(D_8015929C)
    /* 10AAB8 800FBB08 8463929C */  lh         $v1, %lo(D_8015929C)($v1)
    /* 10AABC 800FBB0C 0203082A */  slt        $at, $s0, $v1
    /* 10AAC0 800FBB10 10200005 */  beqz       $at, .L800FBB28_10AAD8
    /* 10AAC4 800FBB14 3C0D8005 */   lui       $t5, %hi(D_80052B2C)
    /* 10AAC8 800FBB18 8DAD2B2C */  lw         $t5, %lo(D_80052B2C)($t5)
    /* 10AACC 800FBB1C 87AB0082 */  lh         $t3, 0x82($sp)
    /* 10AAD0 800FBB20 1000000A */  b          .L800FBB4C_10AAFC
    /* 10AAD4 800FBB24 A5AB0036 */   sh        $t3, 0x36($t5)
  .L800FBB28_10AAD8:
    /* 10AAD8 800FBB28 04410003 */  bgez       $v0, .L800FBB38_10AAE8
    /* 10AADC 800FBB2C 00038023 */   negu      $s0, $v1
    /* 10AAE0 800FBB30 10000001 */  b          .L800FBB38_10AAE8
    /* 10AAE4 800FBB34 00608025 */   or        $s0, $v1, $zero
  .L800FBB38_10AAE8:
    /* 10AAE8 800FBB38 3C028005 */  lui        $v0, %hi(D_80052B2C)
    /* 10AAEC 800FBB3C 8C422B2C */  lw         $v0, %lo(D_80052B2C)($v0)
    /* 10AAF0 800FBB40 844F0036 */  lh         $t7, 0x36($v0)
    /* 10AAF4 800FBB44 01F0C821 */  addu       $t9, $t7, $s0
    /* 10AAF8 800FBB48 A4590036 */  sh         $t9, 0x36($v0)
  .L800FBB4C_10AAFC:
    /* 10AAFC 800FBB4C 8F187F90 */  lw         $t8, %lo(currentLevel)($t8)
    /* 10AB00 800FBB50 24010004 */  addiu      $at, $zero, 0x4
    /* 10AB04 800FBB54 17010026 */  bne        $t8, $at, .L800FBBF0_10ABA0
    /* 10AB08 800FBB58 3C0E8005 */   lui       $t6, %hi(D_80052B34)
    /* 10AB0C 800FBB5C 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* 10AB10 800FBB60 2401000C */  addiu      $at, $zero, 0xC
    /* 10AB14 800FBB64 3C0C8005 */  lui        $t4, %hi(D_80052B2C)
    /* 10AB18 800FBB68 91CA001A */  lbu        $t2, 0x1A($t6)
    /* 10AB1C 800FBB6C 15410020 */  bne        $t2, $at, .L800FBBF0_10ABA0
    /* 10AB20 800FBB70 00000000 */   nop
    /* 10AB24 800FBB74 8D8C2B2C */  lw         $t4, %lo(D_80052B2C)($t4)
    /* 10AB28 800FBB78 85820036 */  lh         $v0, 0x36($t4)
    /* 10AB2C 800FBB7C 04400003 */  bltz       $v0, .L800FBB8C_10AB3C
    /* 10AB30 800FBB80 00028023 */   negu      $s0, $v0
    /* 10AB34 800FBB84 10000001 */  b          .L800FBB8C_10AB3C
    /* 10AB38 800FBB88 00408025 */   or        $s0, $v0, $zero
  .L800FBB8C_10AB3C:
    /* 10AB3C 800FBB8C 2A014000 */  slti       $at, $s0, 0x4000
    /* 10AB40 800FBB90 10200017 */  beqz       $at, .L800FBBF0_10ABA0
    /* 10AB44 800FBB94 00000000 */   nop
    /* 10AB48 800FBB98 0C007654 */  jal        coss
    /* 10AB4C 800FBB9C 3044FFFF */   andi      $a0, $v0, 0xFFFF
    /* 10AB50 800FBBA0 44822000 */  mtc1       $v0, $f4
    /* 10AB54 800FBBA4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 10AB58 800FBBA8 44815800 */  mtc1       $at, $f11
    /* 10AB5C 800FBBAC 468021A0 */  cvt.s.w    $f6, $f4
    /* 10AB60 800FBBB0 44805000 */  mtc1       $zero, $f10
    /* 10AB64 800FBBB4 3C018014 */  lui        $at, %hi(D_80144A58)
    /* 10AB68 800FBBB8 D4324A58 */  ldc1       $f18, %lo(D_80144A58)($at)
    /* 10AB6C 800FBBBC 87B90068 */  lh         $t9, 0x68($sp)
    /* 10AB70 800FBBC0 46003221 */  cvt.d.s    $f8, $f6
    /* 10AB74 800FBBC4 462A4403 */  div.d      $f16, $f8, $f10
    /* 10AB78 800FBBC8 46328102 */  mul.d      $f4, $f16, $f18
    /* 10AB7C 800FBBCC 4620218D */  trunc.w.d  $f6, $f4
    /* 10AB80 800FBBD0 44033000 */  mfc1       $v1, $f6
    /* 10AB84 800FBBD4 00000000 */  nop
    /* 10AB88 800FBBD8 00036C00 */  sll        $t5, $v1, 16
    /* 10AB8C 800FBBDC 000D7C03 */  sra        $t7, $t5, 16
    /* 10AB90 800FBBE0 032F082A */  slt        $at, $t9, $t7
    /* 10AB94 800FBBE4 10200002 */  beqz       $at, .L800FBBF0_10ABA0
    /* 10AB98 800FBBE8 00000000 */   nop
    /* 10AB9C 800FBBEC A7AF0068 */  sh         $t7, 0x68($sp)
  .L800FBBF0_10ABA0:
    /* 10ABA0 800FBBF0 3C048016 */  lui        $a0, %hi(D_80159318)
    /* 10ABA4 800FBBF4 84849318 */  lh         $a0, %lo(D_80159318)($a0)
    /* 10ABA8 800FBBF8 0C03E714 */  jal        func_800F9C50_108C00
    /* 10ABAC 800FBBFC 87A50068 */   lh        $a1, 0x68($sp)
    /* 10ABB0 800FBC00 00021823 */  negu       $v1, $v0
    /* 10ABB4 800FBC04 0062082A */  slt        $at, $v1, $v0
    /* 10ABB8 800FBC08 50200004 */  beql       $at, $zero, .L800FBC1C_10ABCC
    /* 10ABBC 800FBC0C 00608025 */   or        $s0, $v1, $zero
    /* 10ABC0 800FBC10 10000002 */  b          .L800FBC1C_10ABCC
    /* 10ABC4 800FBC14 00408025 */   or        $s0, $v0, $zero
    /* 10ABC8 800FBC18 00608025 */  or         $s0, $v1, $zero
  .L800FBC1C_10ABCC:
    /* 10ABCC 800FBC1C 2A010190 */  slti       $at, $s0, 0x190
    /* 10ABD0 800FBC20 10200005 */  beqz       $at, .L800FBC38_10ABE8
    /* 10ABD4 800FBC24 00000000 */   nop
    /* 10ABD8 800FBC28 87B80068 */  lh         $t8, 0x68($sp)
    /* 10ABDC 800FBC2C 3C018016 */  lui        $at, %hi(D_80159318)
    /* 10ABE0 800FBC30 1000000A */  b          .L800FBC5C_10AC0C
    /* 10ABE4 800FBC34 A4389318 */   sh        $t8, %lo(D_80159318)($at)
  .L800FBC38_10ABE8:
    /* 10ABE8 800FBC38 04410003 */  bgez       $v0, .L800FBC48_10ABF8
    /* 10ABEC 800FBC3C 3C0E8016 */   lui       $t6, %hi(D_80159318)
    /* 10ABF0 800FBC40 10000002 */  b          .L800FBC4C_10ABFC
    /* 10ABF4 800FBC44 24100190 */   addiu     $s0, $zero, 0x190
  .L800FBC48_10ABF8:
    /* 10ABF8 800FBC48 2410FE70 */  addiu      $s0, $zero, -0x190
  .L800FBC4C_10ABFC:
    /* 10ABFC 800FBC4C 85CE9318 */  lh         $t6, %lo(D_80159318)($t6)
    /* 10AC00 800FBC50 3C018016 */  lui        $at, %hi(D_80159318)
    /* 10AC04 800FBC54 01D05021 */  addu       $t2, $t6, $s0
    /* 10AC08 800FBC58 A42A9318 */  sh         $t2, %lo(D_80159318)($at)
  .L800FBC5C_10AC0C:
    /* 10AC0C 800FBC5C 8FAC0088 */  lw         $t4, 0x88($sp)
    /* 10AC10 800FBC60 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 10AC14 800FBC64 858B003C */  lh         $t3, 0x3C($t4)
    /* 10AC18 800FBC68 05610006 */  bgez       $t3, .L800FBC84_10AC34
    /* 10AC1C 800FBC6C 3C028005 */   lui       $v0, %hi(D_80052B2C)
    /* 10AC20 800FBC70 8C422B2C */  lw         $v0, %lo(D_80052B2C)($v0)
    /* 10AC24 800FBC74 34018000 */  ori        $at, $zero, 0x8000
    /* 10AC28 800FBC78 844D0036 */  lh         $t5, 0x36($v0)
    /* 10AC2C 800FBC7C 01A17821 */  addu       $t7, $t5, $at
    /* 10AC30 800FBC80 A44F0036 */  sh         $t7, 0x36($v0)
  .L800FBC84_10AC34:
    /* 10AC34 800FBC84 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 10AC38 800FBC88 96190020 */  lhu        $t9, 0x20($s0)
    /* 10AC3C 800FBC8C 33380002 */  andi       $t8, $t9, 0x2
    /* 10AC40 800FBC90 1300000F */  beqz       $t8, .L800FBCD0_10AC80
    /* 10AC44 800FBC94 2419002C */   addiu     $t9, $zero, 0x2C
    /* 10AC48 800FBC98 920E001A */  lbu        $t6, 0x1A($s0)
    /* 10AC4C 800FBC9C 3C0C8025 */  lui        $t4, %hi(D_80257A4C)
    /* 10AC50 800FBCA0 000E50C0 */  sll        $t2, $t6, 3
    /* 10AC54 800FBCA4 014E5023 */  subu       $t2, $t2, $t6
    /* 10AC58 800FBCA8 000A5100 */  sll        $t2, $t2, 4
    /* 10AC5C 800FBCAC 018A6021 */  addu       $t4, $t4, $t2
    /* 10AC60 800FBCB0 8D8C7A4C */  lw         $t4, %lo(D_80257A4C)($t4)
    /* 10AC64 800FBCB4 000C5880 */  sll        $t3, $t4, 2
    /* 10AC68 800FBCB8 05610005 */  bgez       $t3, .L800FBCD0_10AC80
    /* 10AC6C 800FBCBC 00000000 */   nop
    /* 10AC70 800FBCC0 860D000A */  lh         $t5, 0xA($s0)
    /* 10AC74 800FBCC4 3C018016 */  lui        $at, %hi(D_80159318)
    /* 10AC78 800FBCC8 000D7823 */  negu       $t7, $t5
    /* 10AC7C 800FBCCC A42F9318 */  sh         $t7, %lo(D_80159318)($at)
  .L800FBCD0_10AC80:
    /* 10AC80 800FBCD0 3C0E8005 */  lui        $t6, %hi(D_80052B2C)
    /* 10AC84 800FBCD4 8DCE2B2C */  lw         $t6, %lo(D_80052B2C)($t6)
    /* 10AC88 800FBCD8 3C018016 */  lui        $at, %hi(D_8015F9F0)
    /* 10AC8C 800FBCDC A439F9F0 */  sh         $t9, %lo(D_8015F9F0)($at)
    /* 10AC90 800FBCE0 86180006 */  lh         $t8, 0x6($s0)
    /* 10AC94 800FBCE4 85CA0036 */  lh         $t2, 0x36($t6)
    /* 10AC98 800FBCE8 030A2023 */  subu       $a0, $t8, $t2
    /* 10AC9C 800FBCEC 308CFFFF */  andi       $t4, $a0, 0xFFFF
    /* 10ACA0 800FBCF0 0C007654 */  jal        coss
    /* 10ACA4 800FBCF4 01802025 */   or        $a0, $t4, $zero
    /* 10ACA8 800FBCF8 3C048016 */  lui        $a0, %hi(D_80159318)
    /* 10ACAC 800FBCFC 94849318 */  lhu        $a0, %lo(D_80159318)($a0)
    /* 10ACB0 800FBD00 0C007654 */  jal        coss
    /* 10ACB4 800FBD04 A7A2003A */   sh        $v0, 0x3A($sp)
    /* 10ACB8 800FBD08 87AB003A */  lh         $t3, 0x3A($sp)
    /* 10ACBC 800FBD0C 44824000 */  mtc1       $v0, $f8
    /* 10ACC0 800FBD10 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 10ACC4 800FBD14 448B2000 */  mtc1       $t3, $f4
    /* 10ACC8 800FBD18 468042A0 */  cvt.s.w    $f10, $f8
    /* 10ACCC 800FBD1C 44810800 */  mtc1       $at, $f1
    /* 10ACD0 800FBD20 44800000 */  mtc1       $zero, $f0
    /* 10ACD4 800FBD24 3C018014 */  lui        $at, %hi(D_80144A60)
    /* 10ACD8 800FBD28 8FA6004C */  lw         $a2, 0x4C($sp)
    /* 10ACDC 800FBD2C 468021A0 */  cvt.s.w    $f6, $f4
    /* 10ACE0 800FBD30 D4244A60 */  ldc1       $f4, %lo(D_80144A60)($at)
    /* 10ACE4 800FBD34 3C048016 */  lui        $a0, %hi(D_80159318)
    /* 10ACE8 800FBD38 94849318 */  lhu        $a0, %lo(D_80159318)($a0)
    /* 10ACEC 800FBD3C 46005421 */  cvt.d.s    $f16, $f10
    /* 10ACF0 800FBD40 46003221 */  cvt.d.s    $f8, $f6
    /* 10ACF4 800FBD44 46208483 */  div.d      $f18, $f16, $f0
    /* 10ACF8 800FBD48 46204283 */  div.d      $f10, $f8, $f0
    /* 10ACFC 800FBD4C 44864000 */  mtc1       $a2, $f8
    /* 10AD00 800FBD50 462A9402 */  mul.d      $f16, $f18, $f10
    /* 10AD04 800FBD54 468044A1 */  cvt.d.w    $f18, $f8
    /* 10AD08 800FBD58 46248182 */  mul.d      $f6, $f16, $f4
    /* 10AD0C 800FBD5C 46323280 */  add.d      $f10, $f6, $f18
    /* 10AD10 800FBD60 4620540D */  trunc.w.d  $f16, $f10
    /* 10AD14 800FBD64 44058000 */  mfc1       $a1, $f16
    /* 10AD18 800FBD68 0C007660 */  jal        sins
    /* 10AD1C 800FBD6C AFA5007C */   sw        $a1, 0x7C($sp)
    /* 10AD20 800FBD70 44822000 */  mtc1       $v0, $f4
    /* 10AD24 800FBD74 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 10AD28 800FBD78 44810800 */  mtc1       $at, $f1
    /* 10AD2C 800FBD7C 46802220 */  cvt.s.w    $f8, $f4
    /* 10AD30 800FBD80 44800000 */  mtc1       $zero, $f0
    /* 10AD34 800FBD84 3C018014 */  lui        $at, %hi(D_80144A68)
    /* 10AD38 800FBD88 D42A4A68 */  ldc1       $f10, %lo(D_80144A68)($at)
    /* 10AD3C 800FBD8C 8FAF0048 */  lw         $t7, 0x48($sp)
    /* 10AD40 800FBD90 3C0E8005 */  lui        $t6, %hi(D_80052B34)
    /* 10AD44 800FBD94 460041A1 */  cvt.d.s    $f6, $f8
    /* 10AD48 800FBD98 448F2000 */  mtc1       $t7, $f4
    /* 10AD4C 800FBD9C 46203483 */  div.d      $f18, $f6, $f0
    /* 10AD50 800FBDA0 3C0A8005 */  lui        $t2, %hi(D_80052B2C)
    /* 10AD54 800FBDA4 8D4A2B2C */  lw         $t2, %lo(D_80052B2C)($t2)
    /* 10AD58 800FBDA8 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* 10AD5C 800FBDAC 46802221 */  cvt.d.w    $f8, $f4
    /* 10AD60 800FBDB0 854C0036 */  lh         $t4, 0x36($t2)
    /* 10AD64 800FBDB4 85D80006 */  lh         $t8, 0x6($t6)
    /* 10AD68 800FBDB8 030C2023 */  subu       $a0, $t8, $t4
    /* 10AD6C 800FBDBC 308BFFFF */  andi       $t3, $a0, 0xFFFF
    /* 10AD70 800FBDC0 01602025 */  or         $a0, $t3, $zero
    /* 10AD74 800FBDC4 462A9402 */  mul.d      $f16, $f18, $f10
    /* 10AD78 800FBDC8 46288180 */  add.d      $f6, $f16, $f8
    /* 10AD7C 800FBDCC 4620348D */  trunc.w.d  $f18, $f6
    /* 10AD80 800FBDD0 44109000 */  mfc1       $s0, $f18
    /* 10AD84 800FBDD4 0C007660 */  jal        sins
    /* 10AD88 800FBDD8 00000000 */   nop
    /* 10AD8C 800FBDDC 3C048016 */  lui        $a0, %hi(D_80159318)
    /* 10AD90 800FBDE0 94849318 */  lhu        $a0, %lo(D_80159318)($a0)
    /* 10AD94 800FBDE4 0C007654 */  jal        coss
    /* 10AD98 800FBDE8 A7A2003A */   sh        $v0, 0x3A($sp)
    /* 10AD9C 800FBDEC 87AD003A */  lh         $t5, 0x3A($sp)
    /* 10ADA0 800FBDF0 44825000 */  mtc1       $v0, $f10
    /* 10ADA4 800FBDF4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 10ADA8 800FBDF8 448D3000 */  mtc1       $t5, $f6
    /* 10ADAC 800FBDFC 46805120 */  cvt.s.w    $f4, $f10
    /* 10ADB0 800FBE00 44810800 */  mtc1       $at, $f1
    /* 10ADB4 800FBE04 44800000 */  mtc1       $zero, $f0
    /* 10ADB8 800FBE08 3C018014 */  lui        $at, %hi(D_80144A70)
    /* 10ADBC 800FBE0C 8FA40044 */  lw         $a0, 0x44($sp)
    /* 10ADC0 800FBE10 468034A0 */  cvt.s.w    $f18, $f6
    /* 10ADC4 800FBE14 D4264A70 */  ldc1       $f6, %lo(D_80144A70)($at)
    /* 10ADC8 800FBE18 3C088015 */  lui        $t0, %hi(D_801493A0)
    /* 10ADCC 800FBE1C 8D0893A0 */  lw         $t0, %lo(D_801493A0)($t0)
    /* 10ADD0 800FBE20 8FA5007C */  lw         $a1, 0x7C($sp)
    /* 10ADD4 800FBE24 46002421 */  cvt.d.s    $f16, $f4
    /* 10ADD8 800FBE28 460092A1 */  cvt.d.s    $f10, $f18
    /* 10ADDC 800FBE2C 46208203 */  div.d      $f8, $f16, $f0
    /* 10ADE0 800FBE30 8FA6004C */  lw         $a2, 0x4C($sp)
    /* 10ADE4 800FBE34 0008CA00 */  sll        $t9, $t0, 8
    /* 10ADE8 800FBE38 00B9082A */  slt        $at, $a1, $t9
    /* 10ADEC 800FBE3C 3C088015 */  lui        $t0, %hi(D_801493A4)
    /* 10ADF0 800FBE40 03267023 */  subu       $t6, $t9, $a2
    /* 10ADF4 800FBE44 00A65023 */  subu       $t2, $a1, $a2
    /* 10ADF8 800FBE48 46205103 */  div.d      $f4, $f10, $f0
    /* 10ADFC 800FBE4C 44845000 */  mtc1       $a0, $f10
    /* 10AE00 800FBE50 46244402 */  mul.d      $f16, $f8, $f4
    /* 10AE04 800FBE54 46805221 */  cvt.d.w    $f8, $f10
    /* 10AE08 800FBE58 46268482 */  mul.d      $f18, $f16, $f6
    /* 10AE0C 800FBE5C 46289100 */  add.d      $f4, $f18, $f8
    /* 10AE10 800FBE60 4620240D */  trunc.w.d  $f16, $f4
    /* 10AE14 800FBE64 44078000 */  mfc1       $a3, $f16
    /* 10AE18 800FBE68 1020001C */  beqz       $at, .L800FBEDC_10AE8C
    /* 10AE1C 800FBE6C 00E01825 */   or        $v1, $a3, $zero
    /* 10AE20 800FBE70 448E3000 */  mtc1       $t6, $f6
    /* 10AE24 800FBE74 448A9000 */  mtc1       $t2, $f18
    /* 10AE28 800FBE78 8FA20048 */  lw         $v0, 0x48($sp)
    /* 10AE2C 800FBE7C 468032A0 */  cvt.s.w    $f10, $f6
    /* 10AE30 800FBE80 00E45823 */  subu       $t3, $a3, $a0
    /* 10AE34 800FBE84 0202C023 */  subu       $t8, $s0, $v0
    /* 10AE38 800FBE88 44983000 */  mtc1       $t8, $f6
    /* 10AE3C 800FBE8C 44822000 */  mtc1       $v0, $f4
    /* 10AE40 800FBE90 46809220 */  cvt.s.w    $f8, $f18
    /* 10AE44 800FBE94 03202825 */  or         $a1, $t9, $zero
    /* 10AE48 800FBE98 468034A0 */  cvt.s.w    $f18, $f6
    /* 10AE4C 800FBE9C 44843000 */  mtc1       $a0, $f6
    /* 10AE50 800FBEA0 46085003 */  div.s      $f0, $f10, $f8
    /* 10AE54 800FBEA4 46802420 */  cvt.s.w    $f16, $f4
    /* 10AE58 800FBEA8 46009282 */  mul.s      $f10, $f18, $f0
    /* 10AE5C 800FBEAC 468034A0 */  cvt.s.w    $f18, $f6
    /* 10AE60 800FBEB0 460A8200 */  add.s      $f8, $f16, $f10
    /* 10AE64 800FBEB4 448B8000 */  mtc1       $t3, $f16
    /* 10AE68 800FBEB8 00000000 */  nop
    /* 10AE6C 800FBEBC 468082A0 */  cvt.s.w    $f10, $f16
    /* 10AE70 800FBEC0 4600410D */  trunc.w.s  $f4, $f8
    /* 10AE74 800FBEC4 46005202 */  mul.s      $f8, $f10, $f0
    /* 10AE78 800FBEC8 44102000 */  mfc1       $s0, $f4
    /* 10AE7C 800FBECC 46089100 */  add.s      $f4, $f18, $f8
    /* 10AE80 800FBED0 4600218D */  trunc.w.s  $f6, $f4
    /* 10AE84 800FBED4 44033000 */  mfc1       $v1, $f6
    /* 10AE88 800FBED8 00000000 */  nop
  .L800FBEDC_10AE8C:
    /* 10AE8C 800FBEDC 8D0893A4 */  lw         $t0, %lo(D_801493A4)($t0)
    /* 10AE90 800FBEE0 8FA20048 */  lw         $v0, 0x48($sp)
    /* 10AE94 800FBEE4 8FA6004C */  lw         $a2, 0x4C($sp)
    /* 10AE98 800FBEE8 00087A00 */  sll        $t7, $t0, 8
    /* 10AE9C 800FBEEC 006F082A */  slt        $at, $v1, $t7
    /* 10AEA0 800FBEF0 1020001E */  beqz       $at, .L800FBF6C_10AF1C
    /* 10AEA4 800FBEF4 3C088015 */   lui       $t0, %hi(D_80149398)
    /* 10AEA8 800FBEF8 01E4C823 */  subu       $t9, $t7, $a0
    /* 10AEAC 800FBEFC 00647023 */  subu       $t6, $v1, $a0
    /* 10AEB0 800FBF00 448E9000 */  mtc1       $t6, $f18
    /* 10AEB4 800FBF04 44998000 */  mtc1       $t9, $f16
    /* 10AEB8 800FBF08 00A65023 */  subu       $t2, $a1, $a2
    /* 10AEBC 800FBF0C 46809220 */  cvt.s.w    $f8, $f18
    /* 10AEC0 800FBF10 44862000 */  mtc1       $a2, $f4
    /* 10AEC4 800FBF14 02026023 */  subu       $t4, $s0, $v0
    /* 10AEC8 800FBF18 01E01825 */  or         $v1, $t7, $zero
    /* 10AECC 800FBF1C 468082A0 */  cvt.s.w    $f10, $f16
    /* 10AED0 800FBF20 448A8000 */  mtc1       $t2, $f16
    /* 10AED4 800FBF24 00000000 */  nop
    /* 10AED8 800FBF28 468084A0 */  cvt.s.w    $f18, $f16
    /* 10AEDC 800FBF2C 44828000 */  mtc1       $v0, $f16
    /* 10AEE0 800FBF30 46085003 */  div.s      $f0, $f10, $f8
    /* 10AEE4 800FBF34 468021A0 */  cvt.s.w    $f6, $f4
    /* 10AEE8 800FBF38 46009282 */  mul.s      $f10, $f18, $f0
    /* 10AEEC 800FBF3C 468084A0 */  cvt.s.w    $f18, $f16
    /* 10AEF0 800FBF40 460A3200 */  add.s      $f8, $f6, $f10
    /* 10AEF4 800FBF44 448C3000 */  mtc1       $t4, $f6
    /* 10AEF8 800FBF48 00000000 */  nop
    /* 10AEFC 800FBF4C 468032A0 */  cvt.s.w    $f10, $f6
    /* 10AF00 800FBF50 4600410D */  trunc.w.s  $f4, $f8
    /* 10AF04 800FBF54 46005202 */  mul.s      $f8, $f10, $f0
    /* 10AF08 800FBF58 44052000 */  mfc1       $a1, $f4
    /* 10AF0C 800FBF5C 46089100 */  add.s      $f4, $f18, $f8
    /* 10AF10 800FBF60 4600240D */  trunc.w.s  $f16, $f4
    /* 10AF14 800FBF64 44108000 */  mfc1       $s0, $f16
    /* 10AF18 800FBF68 00000000 */  nop
  .L800FBF6C_10AF1C:
    /* 10AF1C 800FBF6C 8D089398 */  lw         $t0, %lo(D_80149398)($t0)
    /* 10AF20 800FBF70 00A6C823 */  subu       $t9, $a1, $a2
    /* 10AF24 800FBF74 00086A00 */  sll        $t5, $t0, 8
    /* 10AF28 800FBF78 01A5082A */  slt        $at, $t5, $a1
    /* 10AF2C 800FBF7C 1020001C */  beqz       $at, .L800FBFF0_10AFA0
    /* 10AF30 800FBF80 3C088015 */   lui       $t0, %hi(D_8014939C)
    /* 10AF34 800FBF84 01A67823 */  subu       $t7, $t5, $a2
    /* 10AF38 800FBF88 448F3000 */  mtc1       $t7, $f6
    /* 10AF3C 800FBF8C 44999000 */  mtc1       $t9, $f18
    /* 10AF40 800FBF90 02027023 */  subu       $t6, $s0, $v0
    /* 10AF44 800FBF94 468032A0 */  cvt.s.w    $f10, $f6
    /* 10AF48 800FBF98 448E3000 */  mtc1       $t6, $f6
    /* 10AF4C 800FBF9C 44822000 */  mtc1       $v0, $f4
    /* 10AF50 800FBFA0 0064C023 */  subu       $t8, $v1, $a0
    /* 10AF54 800FBFA4 01A02825 */  or         $a1, $t5, $zero
    /* 10AF58 800FBFA8 46809220 */  cvt.s.w    $f8, $f18
    /* 10AF5C 800FBFAC 468034A0 */  cvt.s.w    $f18, $f6
    /* 10AF60 800FBFB0 44843000 */  mtc1       $a0, $f6
    /* 10AF64 800FBFB4 46085003 */  div.s      $f0, $f10, $f8
    /* 10AF68 800FBFB8 46802420 */  cvt.s.w    $f16, $f4
    /* 10AF6C 800FBFBC 46009282 */  mul.s      $f10, $f18, $f0
    /* 10AF70 800FBFC0 468034A0 */  cvt.s.w    $f18, $f6
    /* 10AF74 800FBFC4 460A8200 */  add.s      $f8, $f16, $f10
    /* 10AF78 800FBFC8 44988000 */  mtc1       $t8, $f16
    /* 10AF7C 800FBFCC 00000000 */  nop
    /* 10AF80 800FBFD0 468082A0 */  cvt.s.w    $f10, $f16
    /* 10AF84 800FBFD4 4600410D */  trunc.w.s  $f4, $f8
    /* 10AF88 800FBFD8 46005202 */  mul.s      $f8, $f10, $f0
    /* 10AF8C 800FBFDC 44102000 */  mfc1       $s0, $f4
    /* 10AF90 800FBFE0 46089100 */  add.s      $f4, $f18, $f8
    /* 10AF94 800FBFE4 4600218D */  trunc.w.s  $f6, $f4
    /* 10AF98 800FBFE8 44033000 */  mfc1       $v1, $f6
    /* 10AF9C 800FBFEC 00000000 */  nop
  .L800FBFF0_10AFA0:
    /* 10AFA0 800FBFF0 8D08939C */  lw         $t0, %lo(D_8014939C)($t0)
    /* 10AFA4 800FBFF4 00647823 */  subu       $t7, $v1, $a0
    /* 10AFA8 800FBFF8 240E0001 */  addiu      $t6, $zero, 0x1
    /* 10AFAC 800FBFFC 00085A00 */  sll        $t3, $t0, 8
    /* 10AFB0 800FC000 0163082A */  slt        $at, $t3, $v1
    /* 10AFB4 800FC004 1020001B */  beqz       $at, .L800FC074_10B024
    /* 10AFB8 800FC008 01646823 */   subu      $t5, $t3, $a0
    /* 10AFBC 800FC00C 448D8000 */  mtc1       $t5, $f16
    /* 10AFC0 800FC010 448F9000 */  mtc1       $t7, $f18
    /* 10AFC4 800FC014 00A6C823 */  subu       $t9, $a1, $a2
    /* 10AFC8 800FC018 468082A0 */  cvt.s.w    $f10, $f16
    /* 10AFCC 800FC01C 44998000 */  mtc1       $t9, $f16
    /* 10AFD0 800FC020 44862000 */  mtc1       $a2, $f4
    /* 10AFD4 800FC024 02025023 */  subu       $t2, $s0, $v0
    /* 10AFD8 800FC028 01601825 */  or         $v1, $t3, $zero
    /* 10AFDC 800FC02C 46809220 */  cvt.s.w    $f8, $f18
    /* 10AFE0 800FC030 468084A0 */  cvt.s.w    $f18, $f16
    /* 10AFE4 800FC034 44828000 */  mtc1       $v0, $f16
    /* 10AFE8 800FC038 46085003 */  div.s      $f0, $f10, $f8
    /* 10AFEC 800FC03C 468021A0 */  cvt.s.w    $f6, $f4
    /* 10AFF0 800FC040 46009282 */  mul.s      $f10, $f18, $f0
    /* 10AFF4 800FC044 468084A0 */  cvt.s.w    $f18, $f16
    /* 10AFF8 800FC048 460A3200 */  add.s      $f8, $f6, $f10
    /* 10AFFC 800FC04C 448A3000 */  mtc1       $t2, $f6
    /* 10B000 800FC050 00000000 */  nop
    /* 10B004 800FC054 468032A0 */  cvt.s.w    $f10, $f6
    /* 10B008 800FC058 4600410D */  trunc.w.s  $f4, $f8
    /* 10B00C 800FC05C 46005202 */  mul.s      $f8, $f10, $f0
    /* 10B010 800FC060 44052000 */  mfc1       $a1, $f4
    /* 10B014 800FC064 46089100 */  add.s      $f4, $f18, $f8
    /* 10B018 800FC068 4600240D */  trunc.w.s  $f16, $f4
    /* 10B01C 800FC06C 44108000 */  mfc1       $s0, $f16
    /* 10B020 800FC070 00000000 */  nop
  .L800FC074_10B024:
    /* 10B024 800FC074 3C028016 */  lui        $v0, %hi(D_80159000)
    /* 10B028 800FC078 24429000 */  addiu      $v0, $v0, %lo(D_80159000)
    /* 10B02C 800FC07C A4450000 */  sh         $a1, 0x0($v0)
    /* 10B030 800FC080 A4500002 */  sh         $s0, 0x2($v0)
    /* 10B034 800FC084 A4430004 */  sh         $v1, 0x4($v0)
    /* 10B038 800FC088 3C048005 */  lui        $a0, %hi(D_80050AD4)
    /* 10B03C 800FC08C 8C840AD4 */  lw         $a0, %lo(D_80050AD4)($a0)
    /* 10B040 800FC090 24010001 */  addiu      $at, $zero, 0x1
    /* 10B044 800FC094 3C0F8014 */  lui        $t7, %hi(D_80145BE0)
    /* 10B048 800FC098 14810004 */  bne        $a0, $at, .L800FC0AC_10B05C
    /* 10B04C 800FC09C 25EF5BE0 */   addiu     $t7, $t7, %lo(D_80145BE0)
    /* 10B050 800FC0A0 8FAC0088 */  lw         $t4, 0x88($sp)
    /* 10B054 800FC0A4 10000003 */  b          .L800FC0B4_10B064
    /* 10B058 800FC0A8 8D820028 */   lw        $v0, 0x28($t4)
  .L800FC0AC_10B05C:
    /* 10B05C 800FC0AC 8FAB0088 */  lw         $t3, 0x88($sp)
    /* 10B060 800FC0B0 8D62001C */  lw         $v0, 0x1C($t3)
  .L800FC0B4_10B064:
    /* 10B064 800FC0B4 00026880 */  sll        $t5, $v0, 2
    /* 10B068 800FC0B8 01A26823 */  subu       $t5, $t5, $v0
    /* 10B06C 800FC0BC 000D68C0 */  sll        $t5, $t5, 3
    /* 10B070 800FC0C0 01AF4021 */  addu       $t0, $t5, $t7
    /* 10B074 800FC0C4 95090000 */  lhu        $t1, 0x0($t0)
    /* 10B078 800FC0C8 24191194 */  addiu      $t9, $zero, 0x1194
    /* 10B07C 800FC0CC 3C028016 */  lui        $v0, %hi(D_80158FEC)
    /* 10B080 800FC0D0 29211195 */  slti       $at, $t1, 0x1195
    /* 10B084 800FC0D4 14200002 */  bnez       $at, .L800FC0E0_10B090
    /* 10B088 800FC0D8 00002825 */   or        $a1, $zero, $zero
    /* 10B08C 800FC0DC A5190000 */  sh         $t9, 0x0($t0)
  .L800FC0E0_10B090:
    /* 10B090 800FC0E0 3C018016 */  lui        $at, %hi(D_801591A8)
    /* 10B094 800FC0E4 AC2E91A8 */  sw         $t6, %lo(D_801591A8)($at)
    /* 10B098 800FC0E8 24010001 */  addiu      $at, $zero, 0x1
    /* 10B09C 800FC0EC 14810003 */  bne        $a0, $at, .L800FC0FC_10B0AC
    /* 10B0A0 800FC0F0 3C068016 */   lui       $a2, %hi(D_80158FF4)
    /* 10B0A4 800FC0F4 10000001 */  b          .L800FC0FC_10B0AC
    /* 10B0A8 800FC0F8 24050001 */   addiu     $a1, $zero, 0x1
  .L800FC0FC_10B0AC:
    /* 10B0AC 800FC0FC 8C428FEC */  lw         $v0, %lo(D_80158FEC)($v0)
    /* 10B0B0 800FC100 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 10B0B4 800FC104 10400004 */  beqz       $v0, .L800FC118_10B0C8
    /* 10B0B8 800FC108 00408025 */   or        $s0, $v0, $zero
    /* 10B0BC 800FC10C 3C068016 */  lui        $a2, %hi(D_80158FF4)
    /* 10B0C0 800FC110 10000003 */  b          .L800FC120_10B0D0
    /* 10B0C4 800FC114 8CC68FF4 */   lw        $a2, %lo(D_80158FF4)($a2)
  .L800FC118_10B0C8:
    /* 10B0C8 800FC118 8CC68FF4 */  lw         $a2, %lo(D_80158FF4)($a2)
    /* 10B0CC 800FC11C 00C08025 */  or         $s0, $a2, $zero
  .L800FC120_10B0D0:
    /* 10B0D0 800FC120 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 10B0D4 800FC124 02003825 */  or         $a3, $s0, $zero
    /* 10B0D8 800FC128 AFA8002C */  sw         $t0, 0x2C($sp)
    /* 10B0DC 800FC12C 0C04AC54 */  jal        func_8012B150_13A100
    /* 10B0E0 800FC130 AFA90050 */   sw        $t1, 0x50($sp)
    /* 10B0E4 800FC134 3C028016 */  lui        $v0, %hi(D_801591F8)
    /* 10B0E8 800FC138 244291F8 */  addiu      $v0, $v0, %lo(D_801591F8)
    /* 10B0EC 800FC13C 8C4A0008 */  lw         $t2, 0x8($v0)
    /* 10B0F0 800FC140 3C018016 */  lui        $at, %hi(D_801591B4)
    /* 10B0F4 800FC144 3C038016 */  lui        $v1, %hi(D_80159028)
    /* 10B0F8 800FC148 AC2A91B4 */  sw         $t2, %lo(D_801591B4)($at)
    /* 10B0FC 800FC14C 8FA8002C */  lw         $t0, 0x2C($sp)
    /* 10B100 800FC150 8FA90050 */  lw         $t1, 0x50($sp)
    /* 10B104 800FC154 84580000 */  lh         $t8, 0x0($v0)
    /* 10B108 800FC158 844C0002 */  lh         $t4, 0x2($v0)
    /* 10B10C 800FC15C 844B0004 */  lh         $t3, 0x4($v0)
    /* 10B110 800FC160 24639028 */  addiu      $v1, $v1, %lo(D_80159028)
    /* 10B114 800FC164 8FAD0088 */  lw         $t5, 0x88($sp)
    /* 10B118 800FC168 3C018016 */  lui        $at, %hi(D_801591A8)
    /* 10B11C 800FC16C A5090000 */  sh         $t1, 0x0($t0)
    /* 10B120 800FC170 A4780000 */  sh         $t8, 0x0($v1)
    /* 10B124 800FC174 A46C0002 */  sh         $t4, 0x2($v1)
    /* 10B128 800FC178 A46B0004 */  sh         $t3, 0x4($v1)
    /* 10B12C 800FC17C AC2091A8 */  sw         $zero, %lo(D_801591A8)($at)
    /* 10B130 800FC180 8DAF004C */  lw         $t7, 0x4C($t5)
    /* 10B134 800FC184 3C0E8005 */  lui        $t6, %hi(D_80050AD4)
    /* 10B138 800FC188 000FC900 */  sll        $t9, $t7, 4
    /* 10B13C 800FC18C 0723000B */  bgezl      $t9, .L800FC1BC_10B16C
    /* 10B140 800FC190 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 10B144 800FC194 8DCE0AD4 */  lw         $t6, %lo(D_80050AD4)($t6)
    /* 10B148 800FC198 24010001 */  addiu      $at, $zero, 0x1
    /* 10B14C 800FC19C 8FB80040 */  lw         $t8, 0x40($sp)
    /* 10B150 800FC1A0 15C10004 */  bne        $t6, $at, .L800FC1B4_10B164
    /* 10B154 800FC1A4 8FAC0088 */   lw        $t4, 0x88($sp)
    /* 10B158 800FC1A8 8FAA0040 */  lw         $t2, 0x40($sp)
    /* 10B15C 800FC1AC 10000002 */  b          .L800FC1B8_10B168
    /* 10B160 800FC1B0 A5AA002C */   sh        $t2, 0x2C($t5)
  .L800FC1B4_10B164:
    /* 10B164 800FC1B4 A5980020 */  sh         $t8, 0x20($t4)
  .L800FC1B8_10B168:
    /* 10B168 800FC1B8 8FBF0024 */  lw         $ra, 0x24($sp)
  .L800FC1BC_10B16C:
    /* 10B16C 800FC1BC 8FB00020 */  lw         $s0, 0x20($sp)
    /* 10B170 800FC1C0 27BD0098 */  addiu      $sp, $sp, 0x98
    /* 10B174 800FC1C4 03E00008 */  jr         $ra
    /* 10B178 800FC1C8 00000000 */   nop
endlabel func_800FB504_10A4B4
