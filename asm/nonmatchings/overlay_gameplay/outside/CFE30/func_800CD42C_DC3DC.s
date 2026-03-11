nonmatching func_800CD42C_DC3DC, 0x3D0

glabel func_800CD42C_DC3DC
    /* DC3DC 800CD42C 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* DC3E0 800CD430 AFBE0038 */  sw         $fp, 0x38($sp)
    /* DC3E4 800CD434 309E00FF */  andi       $fp, $a0, 0xFF
    /* DC3E8 800CD438 001E7080 */  sll        $t6, $fp, 2
    /* DC3EC 800CD43C 01DE7023 */  subu       $t6, $t6, $fp
    /* DC3F0 800CD440 3C0F8015 */  lui        $t7, %hi(D_80154088)
    /* DC3F4 800CD444 AFB5002C */  sw         $s5, 0x2C($sp)
    /* DC3F8 800CD448 25EF4088 */  addiu      $t7, $t7, %lo(D_80154088)
    /* DC3FC 800CD44C 000E7080 */  sll        $t6, $t6, 2
    /* DC400 800CD450 01CFA821 */  addu       $s5, $t6, $t7
    /* DC404 800CD454 86A20006 */  lh         $v0, 0x6($s5)
    /* DC408 800CD458 AFB00018 */  sw         $s0, 0x18($sp)
    /* DC40C 800CD45C AFB70034 */  sw         $s7, 0x34($sp)
    /* DC410 800CD460 00028400 */  sll        $s0, $v0, 16
    /* DC414 800CD464 2417001C */  addiu      $s7, $zero, 0x1C
    /* DC418 800CD468 0010C403 */  sra        $t8, $s0, 16
    /* DC41C 800CD46C 03170019 */  multu      $t8, $s7
    /* DC420 800CD470 AFB60030 */  sw         $s6, 0x30($sp)
    /* DC424 800CD474 3C168015 */  lui        $s6, %hi(D_80154318)
    /* DC428 800CD478 26D64318 */  addiu      $s6, $s6, %lo(D_80154318)
    /* DC42C 800CD47C 2403FFFB */  addiu      $v1, $zero, -0x5
    /* DC430 800CD480 AFBF003C */  sw         $ra, 0x3C($sp)
    /* DC434 800CD484 AFB40028 */  sw         $s4, 0x28($sp)
    /* DC438 800CD488 AFB30024 */  sw         $s3, 0x24($sp)
    /* DC43C 800CD48C AFB20020 */  sw         $s2, 0x20($sp)
    /* DC440 800CD490 AFB1001C */  sw         $s1, 0x1C($sp)
    /* DC444 800CD494 0000C812 */  mflo       $t9
    /* DC448 800CD498 02D94021 */  addu       $t0, $s6, $t9
    /* DC44C 800CD49C 85100004 */  lh         $s0, 0x4($t0)
    /* DC450 800CD4A0 AFA40040 */  sw         $a0, 0x40($sp)
    /* DC454 800CD4A4 2401FFFA */  addiu      $at, $zero, -0x6
    /* DC458 800CD4A8 12030003 */  beq        $s0, $v1, .L800CD4B8_DC468
    /* DC45C 800CD4AC 00000000 */   nop
    /* DC460 800CD4B0 1601000E */  bne        $s0, $at, .L800CD4EC_DC49C
    /* DC464 800CD4B4 00000000 */   nop
  .L800CD4B8_DC468:
    /* DC468 800CD4B8 00570019 */  multu      $v0, $s7
    /* DC46C 800CD4BC 33C400FF */  andi       $a0, $fp, 0xFF
    /* DC470 800CD4C0 00004812 */  mflo       $t1
    /* DC474 800CD4C4 02C95021 */  addu       $t2, $s6, $t1
    /* DC478 800CD4C8 914B0011 */  lbu        $t3, 0x11($t2)
    /* DC47C 800CD4CC 15600007 */  bnez       $t3, .L800CD4EC_DC49C
    /* DC480 800CD4D0 00000000 */   nop
    /* DC484 800CD4D4 0C030506 */  jal        func_800C1418_D03C8
    /* DC488 800CD4D8 00002825 */   or        $a1, $zero, $zero
    /* DC48C 800CD4DC 0C0304E1 */  jal        func_800C1384_D0334
    /* DC490 800CD4E0 33C400FF */   andi      $a0, $fp, 0xFF
    /* DC494 800CD4E4 100000BA */  b          .L800CD7D0_DC780
    /* DC498 800CD4E8 8FBF003C */   lw        $ra, 0x3C($sp)
  .L800CD4EC_DC49C:
    /* DC49C 800CD4EC 120300AD */  beq        $s0, $v1, .L800CD7A4_DC754
    /* DC4A0 800CD4F0 2401FFFA */   addiu     $at, $zero, -0x6
    /* DC4A4 800CD4F4 120100AB */  beq        $s0, $at, .L800CD7A4_DC754
    /* DC4A8 800CD4F8 24140006 */   addiu     $s4, $zero, 0x6
    /* DC4AC 800CD4FC 24130014 */  addiu      $s3, $zero, 0x14
  .L800CD500_DC4B0:
    /* DC4B0 800CD500 02170019 */  multu      $s0, $s7
    /* DC4B4 800CD504 00006012 */  mflo       $t4
    /* DC4B8 800CD508 02CC8821 */  addu       $s1, $s6, $t4
    /* DC4BC 800CD50C 922D0011 */  lbu        $t5, 0x11($s1)
    /* DC4C0 800CD510 29A1000D */  slti       $at, $t5, 0xD
    /* DC4C4 800CD514 5020001E */  beql       $at, $zero, .L800CD590_DC540
    /* DC4C8 800CD518 26300008 */   addiu     $s0, $s1, 0x8
    /* DC4CC 800CD51C 92AE0004 */  lbu        $t6, 0x4($s5)
    /* DC4D0 800CD520 00102400 */  sll        $a0, $s0, 16
    /* DC4D4 800CD524 00044C03 */  sra        $t1, $a0, 16
    /* DC4D8 800CD528 29C10003 */  slti       $at, $t6, 0x3
    /* DC4DC 800CD52C 1020000F */  beqz       $at, .L800CD56C_DC51C
    /* DC4E0 800CD530 01202025 */   or        $a0, $t1, $zero
    /* DC4E4 800CD534 86AF0006 */  lh         $t7, 0x6($s5)
    /* DC4E8 800CD538 01F70019 */  multu      $t7, $s7
    /* DC4EC 800CD53C 0000C012 */  mflo       $t8
    /* DC4F0 800CD540 02D8C821 */  addu       $t9, $s6, $t8
    /* DC4F4 800CD544 93280011 */  lbu        $t0, 0x11($t9)
    /* DC4F8 800CD548 55000009 */  bnel       $t0, $zero, .L800CD570_DC520
    /* DC4FC 800CD54C 86320004 */   lh        $s2, 0x4($s1)
    /* DC500 800CD550 33C400FF */  andi       $a0, $fp, 0xFF
    /* DC504 800CD554 0C030506 */  jal        func_800C1418_D03C8
    /* DC508 800CD558 00002825 */   or        $a1, $zero, $zero
    /* DC50C 800CD55C 0C0304E1 */  jal        func_800C1384_D0334
    /* DC510 800CD560 33C400FF */   andi      $a0, $fp, 0xFF
    /* DC514 800CD564 1000009A */  b          .L800CD7D0_DC780
    /* DC518 800CD568 8FBF003C */   lw        $ra, 0x3C($sp)
  .L800CD56C_DC51C:
    /* DC51C 800CD56C 86320004 */  lh         $s2, 0x4($s1)
  .L800CD570_DC520:
    /* DC520 800CD570 33C500FF */  andi       $a1, $fp, 0xFF
    /* DC524 800CD574 0C030693 */  jal        func_800C1A4C_D09FC
    /* DC528 800CD578 00003025 */   or        $a2, $zero, $zero
    /* DC52C 800CD57C 00128400 */  sll        $s0, $s2, 16
    /* DC530 800CD580 00105403 */  sra        $t2, $s0, 16
    /* DC534 800CD584 10000082 */  b          .L800CD790_DC740
    /* DC538 800CD588 01408025 */   or        $s0, $t2, $zero
    /* DC53C 800CD58C 26300008 */  addiu      $s0, $s1, 0x8
  .L800CD590_DC540:
    /* DC540 800CD590 920B000D */  lbu        $t3, 0xD($s0)
    /* DC544 800CD594 15600015 */  bnez       $t3, .L800CD5EC_DC59C
    /* DC548 800CD598 00000000 */   nop
    /* DC54C 800CD59C 0C000E38 */  jal        func_800038E0_44E0
    /* DC550 800CD5A0 00000000 */   nop
    /* DC554 800CD5A4 920C0009 */  lbu        $t4, 0x9($s0)
    /* DC558 800CD5A8 04410004 */  bgez       $v0, .L800CD5BC_DC56C
    /* DC55C 800CD5AC 304D0003 */   andi      $t5, $v0, 0x3
    /* DC560 800CD5B0 11A00002 */  beqz       $t5, .L800CD5BC_DC56C
    /* DC564 800CD5B4 00000000 */   nop
    /* DC568 800CD5B8 25ADFFFC */  addiu      $t5, $t5, -0x4
  .L800CD5BC_DC56C:
    /* DC56C 800CD5BC 018D7023 */  subu       $t6, $t4, $t5
    /* DC570 800CD5C0 25CFFFFC */  addiu      $t7, $t6, -0x4
    /* DC574 800CD5C4 0C000E38 */  jal        func_800038E0_44E0
    /* DC578 800CD5C8 A20F0009 */   sb        $t7, 0x9($s0)
    /* DC57C 800CD5CC 24010003 */  addiu      $at, $zero, 0x3
    /* DC580 800CD5D0 0041001A */  div        $zero, $v0, $at
    /* DC584 800CD5D4 86380002 */  lh         $t8, 0x2($s1)
    /* DC588 800CD5D8 0000C810 */  mfhi       $t9
    /* DC58C 800CD5DC 03194021 */  addu       $t0, $t8, $t9
    /* DC590 800CD5E0 25090003 */  addiu      $t1, $t0, 0x3
    /* DC594 800CD5E4 10000023 */  b          .L800CD674_DC624
    /* DC598 800CD5E8 A6290002 */   sh        $t1, 0x2($s1)
  .L800CD5EC_DC59C:
    /* DC59C 800CD5EC 0C000E38 */  jal        func_800038E0_44E0
    /* DC5A0 800CD5F0 00000000 */   nop
    /* DC5A4 800CD5F4 0054001A */  div        $zero, $v0, $s4
    /* DC5A8 800CD5F8 920A0009 */  lbu        $t2, 0x9($s0)
    /* DC5AC 800CD5FC 00005810 */  mfhi       $t3
    /* DC5B0 800CD600 014B6023 */  subu       $t4, $t2, $t3
    /* DC5B4 800CD604 258DFFFA */  addiu      $t5, $t4, -0x6
    /* DC5B8 800CD608 16800002 */  bnez       $s4, .L800CD614_DC5C4
    /* DC5BC 800CD60C 00000000 */   nop
    /* DC5C0 800CD610 0007000D */  break      7
  .L800CD614_DC5C4:
    /* DC5C4 800CD614 2401FFFF */  addiu      $at, $zero, -0x1
    /* DC5C8 800CD618 16810004 */  bne        $s4, $at, .L800CD62C_DC5DC
    /* DC5CC 800CD61C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DC5D0 800CD620 14410002 */  bne        $v0, $at, .L800CD62C_DC5DC
    /* DC5D4 800CD624 00000000 */   nop
    /* DC5D8 800CD628 0006000D */  break      6
  .L800CD62C_DC5DC:
    /* DC5DC 800CD62C A20D0009 */  sb         $t5, 0x9($s0)
    /* DC5E0 800CD630 0C000E38 */  jal        func_800038E0_44E0
    /* DC5E4 800CD634 00000000 */   nop
    /* DC5E8 800CD638 0054001A */  div        $zero, $v0, $s4
    /* DC5EC 800CD63C 862E0002 */  lh         $t6, 0x2($s1)
    /* DC5F0 800CD640 00007810 */  mfhi       $t7
    /* DC5F4 800CD644 01CFC021 */  addu       $t8, $t6, $t7
    /* DC5F8 800CD648 27190006 */  addiu      $t9, $t8, 0x6
    /* DC5FC 800CD64C A6390002 */  sh         $t9, 0x2($s1)
    /* DC600 800CD650 16800002 */  bnez       $s4, .L800CD65C_DC60C
    /* DC604 800CD654 00000000 */   nop
    /* DC608 800CD658 0007000D */  break      7
  .L800CD65C_DC60C:
    /* DC60C 800CD65C 2401FFFF */  addiu      $at, $zero, -0x1
    /* DC610 800CD660 16810004 */  bne        $s4, $at, .L800CD674_DC624
    /* DC614 800CD664 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DC618 800CD668 14410002 */  bne        $v0, $at, .L800CD674_DC624
    /* DC61C 800CD66C 00000000 */   nop
    /* DC620 800CD670 0006000D */  break      6
  .L800CD674_DC624:
    /* DC624 800CD674 86080000 */  lh         $t0, 0x0($s0)
    /* DC628 800CD678 8209000A */  lb         $t1, 0xA($s0)
    /* DC62C 800CD67C 860B0002 */  lh         $t3, 0x2($s0)
    /* DC630 800CD680 820C000B */  lb         $t4, 0xB($s0)
    /* DC634 800CD684 860E0004 */  lh         $t6, 0x4($s0)
    /* DC638 800CD688 820F000C */  lb         $t7, 0xC($s0)
    /* DC63C 800CD68C 01095021 */  addu       $t2, $t0, $t1
    /* DC640 800CD690 016C6821 */  addu       $t5, $t3, $t4
    /* DC644 800CD694 92190006 */  lbu        $t9, 0x6($s0)
    /* DC648 800CD698 92090007 */  lbu        $t1, 0x7($s0)
    /* DC64C 800CD69C 920B0008 */  lbu        $t3, 0x8($s0)
    /* DC650 800CD6A0 A60A0000 */  sh         $t2, 0x0($s0)
    /* DC654 800CD6A4 01CFC021 */  addu       $t8, $t6, $t7
    /* DC658 800CD6A8 A6180004 */  sh         $t8, 0x4($s0)
    /* DC65C 800CD6AC 2728FFFC */  addiu      $t0, $t9, -0x4
    /* DC660 800CD6B0 252AFFFC */  addiu      $t2, $t1, -0x4
    /* DC664 800CD6B4 256CFFFC */  addiu      $t4, $t3, -0x4
    /* DC668 800CD6B8 A60D0002 */  sh         $t5, 0x2($s0)
    /* DC66C 800CD6BC A2080006 */  sb         $t0, 0x6($s0)
    /* DC670 800CD6C0 A20A0007 */  sb         $t2, 0x7($s0)
    /* DC674 800CD6C4 A20C0008 */  sb         $t4, 0x8($s0)
    /* DC678 800CD6C8 86050004 */  lh         $a1, 0x4($s0)
    /* DC67C 800CD6CC 0C02E134 */  jal        func_800B84D0_C7480
    /* DC680 800CD6D0 86040000 */   lh        $a0, 0x0($s0)
    /* DC684 800CD6D4 860F0002 */  lh         $t7, 0x2($s0)
    /* DC688 800CD6D8 00021A03 */  sra        $v1, $v0, 8
    /* DC68C 800CD6DC 00036C00 */  sll        $t5, $v1, 16
    /* DC690 800CD6E0 000D7403 */  sra        $t6, $t5, 16
    /* DC694 800CD6E4 01EE082A */  slt        $at, $t7, $t6
    /* DC698 800CD6E8 50200029 */  beql       $at, $zero, .L800CD790_DC740
    /* DC69C 800CD6EC 86300004 */   lh        $s0, 0x4($s1)
    /* DC6A0 800CD6F0 9218000D */  lbu        $t8, 0xD($s0)
    /* DC6A4 800CD6F4 A60E0002 */  sh         $t6, 0x2($s0)
    /* DC6A8 800CD6F8 24190001 */  addiu      $t9, $zero, 0x1
    /* DC6AC 800CD6FC 57000024 */  bnel       $t8, $zero, .L800CD790_DC740
    /* DC6B0 800CD700 86300004 */   lh        $s0, 0x4($s1)
    /* DC6B4 800CD704 0C000E38 */  jal        func_800038E0_44E0
    /* DC6B8 800CD708 A219000D */   sb        $t9, 0xD($s0)
    /* DC6BC 800CD70C 0053001A */  div        $zero, $v0, $s3
    /* DC6C0 800CD710 8208000A */  lb         $t0, 0xA($s0)
    /* DC6C4 800CD714 00004810 */  mfhi       $t1
    /* DC6C8 800CD718 01095021 */  addu       $t2, $t0, $t1
    /* DC6CC 800CD71C 254BFFF6 */  addiu      $t3, $t2, -0xA
    /* DC6D0 800CD720 16600002 */  bnez       $s3, .L800CD72C_DC6DC
    /* DC6D4 800CD724 00000000 */   nop
    /* DC6D8 800CD728 0007000D */  break      7
  .L800CD72C_DC6DC:
    /* DC6DC 800CD72C 2401FFFF */  addiu      $at, $zero, -0x1
    /* DC6E0 800CD730 16610004 */  bne        $s3, $at, .L800CD744_DC6F4
    /* DC6E4 800CD734 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DC6E8 800CD738 14410002 */  bne        $v0, $at, .L800CD744_DC6F4
    /* DC6EC 800CD73C 00000000 */   nop
    /* DC6F0 800CD740 0006000D */  break      6
  .L800CD744_DC6F4:
    /* DC6F4 800CD744 A20B000A */  sb         $t3, 0xA($s0)
    /* DC6F8 800CD748 0C000E38 */  jal        func_800038E0_44E0
    /* DC6FC 800CD74C 00000000 */   nop
    /* DC700 800CD750 0053001A */  div        $zero, $v0, $s3
    /* DC704 800CD754 820C000C */  lb         $t4, 0xC($s0)
    /* DC708 800CD758 00006810 */  mfhi       $t5
    /* DC70C 800CD75C 018D7021 */  addu       $t6, $t4, $t5
    /* DC710 800CD760 25CFFFF6 */  addiu      $t7, $t6, -0xA
    /* DC714 800CD764 A20F000C */  sb         $t7, 0xC($s0)
    /* DC718 800CD768 16600002 */  bnez       $s3, .L800CD774_DC724
    /* DC71C 800CD76C 00000000 */   nop
    /* DC720 800CD770 0007000D */  break      7
  .L800CD774_DC724:
    /* DC724 800CD774 2401FFFF */  addiu      $at, $zero, -0x1
    /* DC728 800CD778 16610004 */  bne        $s3, $at, .L800CD78C_DC73C
    /* DC72C 800CD77C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DC730 800CD780 14410002 */  bne        $v0, $at, .L800CD78C_DC73C
    /* DC734 800CD784 00000000 */   nop
    /* DC738 800CD788 0006000D */  break      6
  .L800CD78C_DC73C:
    /* DC73C 800CD78C 86300004 */  lh         $s0, 0x4($s1)
  .L800CD790_DC740:
    /* DC740 800CD790 2401FFFB */  addiu      $at, $zero, -0x5
    /* DC744 800CD794 12010003 */  beq        $s0, $at, .L800CD7A4_DC754
    /* DC748 800CD798 2401FFFA */   addiu     $at, $zero, -0x6
    /* DC74C 800CD79C 1601FF58 */  bne        $s0, $at, .L800CD500_DC4B0
    /* DC750 800CD7A0 00000000 */   nop
  .L800CD7A4_DC754:
    /* DC754 800CD7A4 86B80006 */  lh         $t8, 0x6($s5)
    /* DC758 800CD7A8 24010001 */  addiu      $at, $zero, 0x1
    /* DC75C 800CD7AC 03170019 */  multu      $t8, $s7
    /* DC760 800CD7B0 0000C812 */  mflo       $t9
    /* DC764 800CD7B4 02D94021 */  addu       $t0, $s6, $t9
    /* DC768 800CD7B8 91090011 */  lbu        $t1, 0x11($t0)
    /* DC76C 800CD7BC 55210004 */  bnel       $t1, $at, .L800CD7D0_DC780
    /* DC770 800CD7C0 8FBF003C */   lw        $ra, 0x3C($sp)
    /* DC774 800CD7C4 0C03342C */  jal        func_800CD0B0_DC060
    /* DC778 800CD7C8 33C400FF */   andi      $a0, $fp, 0xFF
    /* DC77C 800CD7CC 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800CD7D0_DC780:
    /* DC780 800CD7D0 8FB00018 */  lw         $s0, 0x18($sp)
    /* DC784 800CD7D4 8FB1001C */  lw         $s1, 0x1C($sp)
    /* DC788 800CD7D8 8FB20020 */  lw         $s2, 0x20($sp)
    /* DC78C 800CD7DC 8FB30024 */  lw         $s3, 0x24($sp)
    /* DC790 800CD7E0 8FB40028 */  lw         $s4, 0x28($sp)
    /* DC794 800CD7E4 8FB5002C */  lw         $s5, 0x2C($sp)
    /* DC798 800CD7E8 8FB60030 */  lw         $s6, 0x30($sp)
    /* DC79C 800CD7EC 8FB70034 */  lw         $s7, 0x34($sp)
    /* DC7A0 800CD7F0 8FBE0038 */  lw         $fp, 0x38($sp)
    /* DC7A4 800CD7F4 03E00008 */  jr         $ra
    /* DC7A8 800CD7F8 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800CD42C_DC3DC
