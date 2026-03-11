nonmatching func_800ED55C_FC50C, 0x230

glabel func_800ED55C_FC50C
    /* FC50C 800ED55C 27BDFF68 */  addiu      $sp, $sp, -0x98
    /* FC510 800ED560 3C0F8014 */  lui        $t7, %hi(D_8013FC14)
    /* FC514 800ED564 25EFFC14 */  addiu      $t7, $t7, %lo(D_8013FC14)
    /* FC518 800ED568 27A6003C */  addiu      $a2, $sp, 0x3C
    /* FC51C 800ED56C 27A70018 */  addiu      $a3, $sp, 0x18
    /* FC520 800ED570 25ED0024 */  addiu      $t5, $t7, 0x24
    /* FC524 800ED574 27AE0060 */  addiu      $t6, $sp, 0x60
  .L800ED578_FC528:
    /* FC528 800ED578 8DE10000 */  lw         $at, 0x0($t7)
    /* FC52C 800ED57C 25EF000C */  addiu      $t7, $t7, 0xC
    /* FC530 800ED580 25CE000C */  addiu      $t6, $t6, 0xC
    /* FC534 800ED584 ADC1FFF4 */  sw         $at, -0xC($t6)
    /* FC538 800ED588 8DE1FFF8 */  lw         $at, -0x8($t7)
    /* FC53C 800ED58C ADC1FFF8 */  sw         $at, -0x8($t6)
    /* FC540 800ED590 8DE1FFFC */  lw         $at, -0x4($t7)
    /* FC544 800ED594 15EDFFF8 */  bne        $t7, $t5, .L800ED578_FC528
    /* FC548 800ED598 ADC1FFFC */   sw        $at, -0x4($t6)
    /* FC54C 800ED59C 3C198014 */  lui        $t9, %hi(D_8013FC38)
    /* FC550 800ED5A0 2739FC38 */  addiu      $t9, $t9, %lo(D_8013FC38)
    /* FC554 800ED5A4 272F0024 */  addiu      $t7, $t9, 0x24
    /* FC558 800ED5A8 00C07025 */  or         $t6, $a2, $zero
  .L800ED5AC_FC55C:
    /* FC55C 800ED5AC 8F210000 */  lw         $at, 0x0($t9)
    /* FC560 800ED5B0 2739000C */  addiu      $t9, $t9, 0xC
    /* FC564 800ED5B4 25CE000C */  addiu      $t6, $t6, 0xC
    /* FC568 800ED5B8 ADC1FFF4 */  sw         $at, -0xC($t6)
    /* FC56C 800ED5BC 8F21FFF8 */  lw         $at, -0x8($t9)
    /* FC570 800ED5C0 ADC1FFF8 */  sw         $at, -0x8($t6)
    /* FC574 800ED5C4 8F21FFFC */  lw         $at, -0x4($t9)
    /* FC578 800ED5C8 172FFFF8 */  bne        $t9, $t7, .L800ED5AC_FC55C
    /* FC57C 800ED5CC ADC1FFFC */   sw        $at, -0x4($t6)
    /* FC580 800ED5D0 3C0D8014 */  lui        $t5, %hi(D_8013FC5C)
    /* FC584 800ED5D4 25ADFC5C */  addiu      $t5, $t5, %lo(D_8013FC5C)
    /* FC588 800ED5D8 25B90024 */  addiu      $t9, $t5, 0x24
    /* FC58C 800ED5DC 00E07025 */  or         $t6, $a3, $zero
  .L800ED5E0_FC590:
    /* FC590 800ED5E0 8DA10000 */  lw         $at, 0x0($t5)
    /* FC594 800ED5E4 25AD000C */  addiu      $t5, $t5, 0xC
    /* FC598 800ED5E8 25CE000C */  addiu      $t6, $t6, 0xC
    /* FC59C 800ED5EC ADC1FFF4 */  sw         $at, -0xC($t6)
    /* FC5A0 800ED5F0 8DA1FFF8 */  lw         $at, -0x8($t5)
    /* FC5A4 800ED5F4 ADC1FFF8 */  sw         $at, -0x8($t6)
    /* FC5A8 800ED5F8 8DA1FFFC */  lw         $at, -0x4($t5)
    /* FC5AC 800ED5FC 15B9FFF8 */  bne        $t5, $t9, .L800ED5E0_FC590
    /* FC5B0 800ED600 ADC1FFFC */   sw        $at, -0x4($t6)
    /* FC5B4 800ED604 8488000E */  lh         $t0, 0xE($a0)
    /* FC5B8 800ED608 3C010001 */  lui        $at, (0x10000 >> 16)
    /* FC5BC 800ED60C 8FA90060 */  lw         $t1, 0x60($sp)
    /* FC5C0 800ED610 01014021 */  addu       $t0, $t0, $at
    /* FC5C4 800ED614 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* FC5C8 800ED618 05010004 */  bgez       $t0, .L800ED62C_FC5DC
    /* FC5CC 800ED61C 01017824 */   and       $t7, $t0, $at
    /* FC5D0 800ED620 11E00002 */  beqz       $t7, .L800ED62C_FC5DC
    /* FC5D4 800ED624 24210001 */   addiu     $at, $at, 0x1
    /* FC5D8 800ED628 01E17823 */  subu       $t7, $t7, $at
  .L800ED62C_FC5DC:
    /* FC5DC 800ED62C 3C010001 */  lui        $at, (0x18000 >> 16)
    /* FC5E0 800ED630 34218000 */  ori        $at, $at, (0x18000 & 0xFFFF)
    /* FC5E4 800ED634 00A1C021 */  addu       $t8, $a1, $at
    /* FC5E8 800ED638 01E04025 */  or         $t0, $t7, $zero
    /* FC5EC 800ED63C 3402FA00 */  ori        $v0, $zero, 0xFA00
    /* FC5F0 800ED640 2403001A */  addiu      $v1, $zero, 0x1A
    /* FC5F4 800ED644 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* FC5F8 800ED648 07010004 */  bgez       $t8, .L800ED65C_FC60C
    /* FC5FC 800ED64C 0301C824 */   and       $t9, $t8, $at
    /* FC600 800ED650 13200002 */  beqz       $t9, .L800ED65C_FC60C
    /* FC604 800ED654 24210001 */   addiu     $at, $at, 0x1
    /* FC608 800ED658 0321C823 */  subu       $t9, $t9, $at
  .L800ED65C_FC60C:
    /* FC60C 800ED65C 3C010001 */  lui        $at, (0x14000 >> 16)
    /* FC610 800ED660 34214000 */  ori        $at, $at, (0x14000 & 0xFFFF)
    /* FC614 800ED664 03282023 */  subu       $a0, $t9, $t0
    /* FC618 800ED668 00812021 */  addu       $a0, $a0, $at
    /* FC61C 800ED66C 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* FC620 800ED670 04810004 */  bgez       $a0, .L800ED684_FC634
    /* FC624 800ED674 00816824 */   and       $t5, $a0, $at
    /* FC628 800ED678 11A00002 */  beqz       $t5, .L800ED684_FC634
    /* FC62C 800ED67C 24210001 */   addiu     $at, $at, 0x1
    /* FC630 800ED680 01A16823 */  subu       $t5, $t5, $at
  .L800ED684_FC634:
    /* FC634 800ED684 012D5023 */  subu       $t2, $t1, $t5
    /* FC638 800ED688 05400003 */  bltz       $t2, .L800ED698_FC648
    /* FC63C 800ED68C 01A02025 */   or        $a0, $t5, $zero
    /* FC640 800ED690 10000002 */  b          .L800ED69C_FC64C
    /* FC644 800ED694 01402825 */   or        $a1, $t2, $zero
  .L800ED698_FC648:
    /* FC648 800ED698 000A2823 */  negu       $a1, $t2
  .L800ED69C_FC64C:
    /* FC64C 800ED69C 3401FA00 */  ori        $at, $zero, 0xFA00
    /* FC650 800ED6A0 00A1082A */  slt        $at, $a1, $at
    /* FC654 800ED6A4 1020000B */  beqz       $at, .L800ED6D4_FC684
    /* FC658 800ED6A8 24080004 */   addiu     $t0, $zero, 0x4
    /* FC65C 800ED6AC 3C0B8015 */  lui        $t3, %hi(D_80157A3E)
    /* FC660 800ED6B0 256B7A3E */  addiu      $t3, $t3, %lo(D_80157A3E)
    /* FC664 800ED6B4 856E0000 */  lh         $t6, 0x0($t3)
    /* FC668 800ED6B8 00A01025 */  or         $v0, $a1, $zero
    /* FC66C 800ED6BC 8FA30018 */  lw         $v1, 0x18($sp)
    /* FC670 800ED6C0 29C10046 */  slti       $at, $t6, 0x46
    /* FC674 800ED6C4 14200003 */  bnez       $at, .L800ED6D4_FC684
    /* FC678 800ED6C8 00000000 */   nop
    /* FC67C 800ED6CC 10000001 */  b          .L800ED6D4_FC684
    /* FC680 800ED6D0 8FA3003C */   lw        $v1, 0x3C($sp)
  .L800ED6D4_FC684:
    /* FC684 800ED6D4 3C0B8015 */  lui        $t3, %hi(D_80157A3E)
    /* FC688 800ED6D8 256B7A3E */  addiu      $t3, $t3, %lo(D_80157A3E)
    /* FC68C 800ED6DC 27A90064 */  addiu      $t1, $sp, 0x64
    /* FC690 800ED6E0 27AC0084 */  addiu      $t4, $sp, 0x84
  .L800ED6E4_FC694:
    /* FC694 800ED6E4 8D2F0000 */  lw         $t7, 0x0($t1)
    /* FC698 800ED6E8 01E45023 */  subu       $t2, $t7, $a0
    /* FC69C 800ED6EC 05400003 */  bltz       $t2, .L800ED6FC_FC6AC
    /* FC6A0 800ED6F0 000A2823 */   negu      $a1, $t2
    /* FC6A4 800ED6F4 10000001 */  b          .L800ED6FC_FC6AC
    /* FC6A8 800ED6F8 01402825 */   or        $a1, $t2, $zero
  .L800ED6FC_FC6AC:
    /* FC6AC 800ED6FC 00A2082A */  slt        $at, $a1, $v0
    /* FC6B0 800ED700 5020000B */  beql       $at, $zero, .L800ED730_FC6E0
    /* FC6B4 800ED704 8D2E0004 */   lw        $t6, 0x4($t1)
    /* FC6B8 800ED708 85780000 */  lh         $t8, 0x0($t3)
    /* FC6BC 800ED70C 00A01025 */  or         $v0, $a1, $zero
    /* FC6C0 800ED710 00C8C821 */  addu       $t9, $a2, $t0
    /* FC6C4 800ED714 2B010046 */  slti       $at, $t8, 0x46
    /* FC6C8 800ED718 14200003 */  bnez       $at, .L800ED728_FC6D8
    /* FC6CC 800ED71C 00E86821 */   addu      $t5, $a3, $t0
    /* FC6D0 800ED720 10000002 */  b          .L800ED72C_FC6DC
    /* FC6D4 800ED724 8F230000 */   lw        $v1, 0x0($t9)
  .L800ED728_FC6D8:
    /* FC6D8 800ED728 8DA30000 */  lw         $v1, 0x0($t5)
  .L800ED72C_FC6DC:
    /* FC6DC 800ED72C 8D2E0004 */  lw         $t6, 0x4($t1)
  .L800ED730_FC6E0:
    /* FC6E0 800ED730 25290008 */  addiu      $t1, $t1, 0x8
    /* FC6E4 800ED734 01C45023 */  subu       $t2, $t6, $a0
    /* FC6E8 800ED738 05400003 */  bltz       $t2, .L800ED748_FC6F8
    /* FC6EC 800ED73C 000A2823 */   negu      $a1, $t2
    /* FC6F0 800ED740 10000001 */  b          .L800ED748_FC6F8
    /* FC6F4 800ED744 01402825 */   or        $a1, $t2, $zero
  .L800ED748_FC6F8:
    /* FC6F8 800ED748 00A2082A */  slt        $at, $a1, $v0
    /* FC6FC 800ED74C 1020000A */  beqz       $at, .L800ED778_FC728
    /* FC700 800ED750 00000000 */   nop
    /* FC704 800ED754 856F0000 */  lh         $t7, 0x0($t3)
    /* FC708 800ED758 00A01025 */  or         $v0, $a1, $zero
    /* FC70C 800ED75C 00E8C821 */  addu       $t9, $a3, $t0
    /* FC710 800ED760 29E10046 */  slti       $at, $t7, 0x46
    /* FC714 800ED764 14200003 */  bnez       $at, .L800ED774_FC724
    /* FC718 800ED768 00C8C021 */   addu      $t8, $a2, $t0
    /* FC71C 800ED76C 10000002 */  b          .L800ED778_FC728
    /* FC720 800ED770 8F030004 */   lw        $v1, 0x4($t8)
  .L800ED774_FC724:
    /* FC724 800ED774 8F230004 */  lw         $v1, 0x4($t9)
  .L800ED778_FC728:
    /* FC728 800ED778 152CFFDA */  bne        $t1, $t4, .L800ED6E4_FC694
    /* FC72C 800ED77C 25080008 */   addiu     $t0, $t0, 0x8
    /* FC730 800ED780 00601025 */  or         $v0, $v1, $zero
    /* FC734 800ED784 03E00008 */  jr         $ra
    /* FC738 800ED788 27BD0098 */   addiu     $sp, $sp, 0x98
endlabel func_800ED55C_FC50C
