nonmatching func_802DB7A4_1F44B4, 0x3B4

glabel func_802DB7A4_1F44B4
    /* 1F44B4 802DB7A4 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 1F44B8 802DB7A8 AFA40050 */  sw         $a0, 0x50($sp)
    /* 1F44BC 802DB7AC 93AE0053 */  lbu        $t6, 0x53($sp)
    /* 1F44C0 802DB7B0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F44C4 802DB7B4 AFB00040 */  sw         $s0, 0x40($sp)
    /* 1F44C8 802DB7B8 000E7880 */  sll        $t7, $t6, 2
    /* 1F44CC 802DB7BC 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F44D0 802DB7C0 000F7900 */  sll        $t7, $t7, 4
    /* 1F44D4 802DB7C4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F44D8 802DB7C8 01F88021 */  addu       $s0, $t7, $t8
    /* 1F44DC 802DB7CC 8E020020 */  lw         $v0, 0x20($s0)
    /* 1F44E0 802DB7D0 9203001A */  lbu        $v1, 0x1A($s0)
    /* 1F44E4 802DB7D4 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 1F44E8 802DB7D8 30450600 */  andi       $a1, $v0, 0x600
    /* 1F44EC 802DB7DC 10A000D9 */  beqz       $a1, .L802DBB44_1F4854
    /* 1F44F0 802DB7E0 A7A3004E */   sh        $v1, 0x4E($sp)
    /* 1F44F4 802DB7E4 0002CAC0 */  sll        $t9, $v0, 11
    /* 1F44F8 802DB7E8 07200040 */  bltz       $t9, .L802DB8EC_1F45FC
    /* 1F44FC 802DB7EC 3C014000 */   lui       $at, (0x40000000 >> 16)
    /* 1F4500 802DB7F0 10A00038 */  beqz       $a1, .L802DB8D4_1F45E4
    /* 1F4504 802DB7F4 00034080 */   sll       $t0, $v1, 2
    /* 1F4508 802DB7F8 01034023 */  subu       $t0, $t0, $v1
    /* 1F450C 802DB7FC 00084080 */  sll        $t0, $t0, 2
    /* 1F4510 802DB800 01034021 */  addu       $t0, $t0, $v1
    /* 1F4514 802DB804 000840C0 */  sll        $t0, $t0, 3
    /* 1F4518 802DB808 3C098025 */  lui        $t1, %hi(D_8025668C)
    /* 1F451C 802DB80C 01284821 */  addu       $t1, $t1, $t0
    /* 1F4520 802DB810 8529668C */  lh         $t1, %lo(D_8025668C)($t1)
    /* 1F4524 802DB814 3C013FE8 */  lui        $at, (0x3FE80000 >> 16)
    /* 1F4528 802DB818 44814800 */  mtc1       $at, $f9
    /* 1F452C 802DB81C 44892000 */  mtc1       $t1, $f4
    /* 1F4530 802DB820 44804000 */  mtc1       $zero, $f8
    /* 1F4534 802DB824 24070001 */  addiu      $a3, $zero, 0x1
    /* 1F4538 802DB828 468021A1 */  cvt.d.w    $f6, $f4
    /* 1F453C 802DB82C 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
    /* 1F4540 802DB830 86040000 */  lh         $a0, 0x0($s0)
    /* 1F4544 802DB834 86050002 */  lh         $a1, 0x2($s0)
    /* 1F4548 802DB838 86060004 */  lh         $a2, 0x4($s0)
    /* 1F454C 802DB83C 46283282 */  mul.d      $f10, $f6, $f8
    /* 1F4550 802DB840 444AF800 */  cfc1       $t2, $31
    /* 1F4554 802DB844 44C7F800 */  ctc1       $a3, $31
    /* 1F4558 802DB848 00000000 */  nop
    /* 1F455C 802DB84C 46205424 */  cvt.w.d    $f16, $f10
    /* 1F4560 802DB850 4447F800 */  cfc1       $a3, $31
    /* 1F4564 802DB854 00000000 */  nop
    /* 1F4568 802DB858 30E70078 */  andi       $a3, $a3, 0x78
    /* 1F456C 802DB85C 50E00014 */  beql       $a3, $zero, .L802DB8B0_1F45C0
    /* 1F4570 802DB860 44078000 */   mfc1      $a3, $f16
    /* 1F4574 802DB864 44818800 */  mtc1       $at, $f17
    /* 1F4578 802DB868 44808000 */  mtc1       $zero, $f16
    /* 1F457C 802DB86C 24070001 */  addiu      $a3, $zero, 0x1
    /* 1F4580 802DB870 46305401 */  sub.d      $f16, $f10, $f16
    /* 1F4584 802DB874 44C7F800 */  ctc1       $a3, $31
    /* 1F4588 802DB878 00000000 */  nop
    /* 1F458C 802DB87C 46208424 */  cvt.w.d    $f16, $f16
    /* 1F4590 802DB880 4447F800 */  cfc1       $a3, $31
    /* 1F4594 802DB884 00000000 */  nop
    /* 1F4598 802DB888 30E70078 */  andi       $a3, $a3, 0x78
    /* 1F459C 802DB88C 14E00005 */  bnez       $a3, .L802DB8A4_1F45B4
    /* 1F45A0 802DB890 00000000 */   nop
    /* 1F45A4 802DB894 44078000 */  mfc1       $a3, $f16
    /* 1F45A8 802DB898 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 1F45AC 802DB89C 10000007 */  b          .L802DB8BC_1F45CC
    /* 1F45B0 802DB8A0 00E13825 */   or        $a3, $a3, $at
  .L802DB8A4_1F45B4:
    /* 1F45B4 802DB8A4 10000005 */  b          .L802DB8BC_1F45CC
    /* 1F45B8 802DB8A8 2407FFFF */   addiu     $a3, $zero, -0x1
    /* 1F45BC 802DB8AC 44078000 */  mfc1       $a3, $f16
  .L802DB8B0_1F45C0:
    /* 1F45C0 802DB8B0 00000000 */  nop
    /* 1F45C4 802DB8B4 04E0FFFB */  bltz       $a3, .L802DB8A4_1F45B4
    /* 1F45C8 802DB8B8 00000000 */   nop
  .L802DB8BC_1F45CC:
    /* 1F45CC 802DB8BC 44CAF800 */  ctc1       $t2, $31
    /* 1F45D0 802DB8C0 30EBFFFF */  andi       $t3, $a3, 0xFFFF
    /* 1F45D4 802DB8C4 01603825 */  or         $a3, $t3, $zero
    /* 1F45D8 802DB8C8 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F45DC 802DB8CC AFA00010 */   sw        $zero, 0x10($sp)
    /* 1F45E0 802DB8D0 8E020020 */  lw         $v0, 0x20($s0)
  .L802DB8D4_1F45E4:
    /* 1F45E4 802DB8D4 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 1F45E8 802DB8D8 240C7FFF */  addiu      $t4, $zero, 0x7FFF
    /* 1F45EC 802DB8DC 00416825 */  or         $t5, $v0, $at
    /* 1F45F0 802DB8E0 A60C002C */  sh         $t4, 0x2C($s0)
    /* 1F45F4 802DB8E4 10000097 */  b          .L802DBB44_1F4854
    /* 1F45F8 802DB8E8 AE0D0020 */   sw        $t5, 0x20($s0)
  .L802DB8EC_1F45FC:
    /* 1F45FC 802DB8EC 00411824 */  and        $v1, $v0, $at
    /* 1F4600 802DB8F0 10600008 */  beqz       $v1, .L802DB914_1F4624
    /* 1F4604 802DB8F4 00000000 */   nop
    /* 1F4608 802DB8F8 860E0010 */  lh         $t6, 0x10($s0)
    /* 1F460C 802DB8FC 8E030020 */  lw         $v1, 0x20($s0)
    /* 1F4610 802DB900 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 1F4614 802DB904 25CF0040 */  addiu      $t7, $t6, 0x40
    /* 1F4618 802DB908 0061C024 */  and        $t8, $v1, $at
    /* 1F461C 802DB90C 03001825 */  or         $v1, $t8, $zero
    /* 1F4620 802DB910 A60F0010 */  sh         $t7, 0x10($s0)
  .L802DB914_1F4624:
    /* 1F4624 802DB914 50600006 */  beql       $v1, $zero, .L802DB930_1F4640
    /* 1F4628 802DB918 8609002C */   lh        $t1, 0x2C($s0)
    /* 1F462C 802DB91C 92190047 */  lbu        $t9, 0x47($s0)
    /* 1F4630 802DB920 33280001 */  andi       $t0, $t9, 0x1
    /* 1F4634 802DB924 5100004D */  beql       $t0, $zero, .L802DBA5C_1F476C
    /* 1F4638 802DB928 8602002C */   lh        $v0, 0x2C($s0)
    /* 1F463C 802DB92C 8609002C */  lh         $t1, 0x2C($s0)
  .L802DB930_1F4640:
    /* 1F4640 802DB930 3C0A8022 */  lui        $t2, %hi(D_80222A70)
    /* 1F4644 802DB934 2921004C */  slti       $at, $t1, 0x4C
    /* 1F4648 802DB938 54200048 */  bnel       $at, $zero, .L802DBA5C_1F476C
    /* 1F464C 802DB93C 8602002C */   lh        $v0, 0x2C($s0)
    /* 1F4650 802DB940 86050002 */  lh         $a1, 0x2($s0)
    /* 1F4654 802DB944 8D4A2A70 */  lw         $t2, %lo(D_80222A70)($t2)
    /* 1F4658 802DB948 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 1F465C 802DB94C 24180008 */  addiu      $t8, $zero, 0x8
    /* 1F4660 802DB950 0145082A */  slt        $at, $t2, $a1
    /* 1F4664 802DB954 1420001A */  bnez       $at, .L802DB9C0_1F46D0
    /* 1F4668 802DB958 24190006 */   addiu     $t9, $zero, 0x6
    /* 1F466C 802DB95C 93AB0053 */  lbu        $t3, 0x53($sp)
    /* 1F4670 802DB960 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 1F4674 802DB964 86040000 */  lh         $a0, 0x0($s0)
    /* 1F4678 802DB968 000B6080 */  sll        $t4, $t3, 2
    /* 1F467C 802DB96C 018B6023 */  subu       $t4, $t4, $t3
    /* 1F4680 802DB970 000C6080 */  sll        $t4, $t4, 2
    /* 1F4684 802DB974 018B6021 */  addu       $t4, $t4, $t3
    /* 1F4688 802DB978 000C60C0 */  sll        $t4, $t4, 3
    /* 1F468C 802DB97C 00EC3821 */  addu       $a3, $a3, $t4
    /* 1F4690 802DB980 84E7668C */  lh         $a3, %lo(D_8025668C)($a3)
    /* 1F4694 802DB984 86060004 */  lh         $a2, 0x4($s0)
    /* 1F4698 802DB988 AFA00010 */  sw         $zero, 0x10($sp)
    /* 1F469C 802DB98C 00076880 */  sll        $t5, $a3, 2
    /* 1F46A0 802DB990 01A76823 */  subu       $t5, $t5, $a3
    /* 1F46A4 802DB994 0C037E12 */  jal        func_800DF848_EE7F8
    /* 1F46A8 802DB998 31A7FFFF */   andi      $a3, $t5, 0xFFFF
    /* 1F46AC 802DB99C 240F0002 */  addiu      $t7, $zero, 0x2
    /* 1F46B0 802DB9A0 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F46B4 802DB9A4 86040000 */  lh         $a0, 0x0($s0)
    /* 1F46B8 802DB9A8 86050002 */  lh         $a1, 0x2($s0)
    /* 1F46BC 802DB9AC 86060004 */  lh         $a2, 0x4($s0)
    /* 1F46C0 802DB9B0 0C037BCB */  jal        func_800DEF2C_EDEDC
    /* 1F46C4 802DB9B4 240700FF */   addiu     $a3, $zero, 0xFF
    /* 1F46C8 802DB9B8 10000027 */  b          .L802DBA58_1F4768
    /* 1F46CC 802DB9BC A600002C */   sh        $zero, 0x2C($s0)
  .L802DB9C0_1F46D0:
    /* 1F46D0 802DB9C0 2408001E */  addiu      $t0, $zero, 0x1E
    /* 1F46D4 802DB9C4 240900C8 */  addiu      $t1, $zero, 0xC8
    /* 1F46D8 802DB9C8 240A00C8 */  addiu      $t2, $zero, 0xC8
    /* 1F46DC 802DB9CC 240B0032 */  addiu      $t3, $zero, 0x32
    /* 1F46E0 802DB9D0 AFAB0024 */  sw         $t3, 0x24($sp)
    /* 1F46E4 802DB9D4 AFAA0020 */  sw         $t2, 0x20($sp)
    /* 1F46E8 802DB9D8 AFA9001C */  sw         $t1, 0x1C($sp)
    /* 1F46EC 802DB9DC AFA80018 */  sw         $t0, 0x18($sp)
    /* 1F46F0 802DB9E0 86040000 */  lh         $a0, 0x0($s0)
    /* 1F46F4 802DB9E4 86060004 */  lh         $a2, 0x4($s0)
    /* 1F46F8 802DB9E8 AFB80010 */  sw         $t8, 0x10($sp)
    /* 1F46FC 802DB9EC AFB90014 */  sw         $t9, 0x14($sp)
    /* 1F4700 802DB9F0 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 1F4704 802DB9F4 AFA00028 */   sw        $zero, 0x28($sp)
    /* 1F4708 802DB9F8 86040000 */  lh         $a0, 0x0($s0)
    /* 1F470C 802DB9FC 86050002 */  lh         $a1, 0x2($s0)
    /* 1F4710 802DBA00 86060004 */  lh         $a2, 0x4($s0)
    /* 1F4714 802DBA04 0C04D751 */  jal        func_80135D44_144CF4
    /* 1F4718 802DBA08 3C074000 */   lui       $a3, (0x40000000 >> 16)
    /* 1F471C 802DBA0C 86050002 */  lh         $a1, 0x2($s0)
    /* 1F4720 802DBA10 240E0014 */  addiu      $t6, $zero, 0x14
    /* 1F4724 802DBA14 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 1F4728 802DBA18 24A50005 */  addiu      $a1, $a1, 0x5
    /* 1F472C 802DBA1C 00056400 */  sll        $t4, $a1, 16
    /* 1F4730 802DBA20 000C2C03 */  sra        $a1, $t4, 16
    /* 1F4734 802DBA24 86040000 */  lh         $a0, 0x0($s0)
    /* 1F4738 802DBA28 86060004 */  lh         $a2, 0x4($s0)
    /* 1F473C 802DBA2C 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* 1F4740 802DBA30 24070078 */   addiu     $a3, $zero, 0x78
    /* 1F4744 802DBA34 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 1F4748 802DBA38 2419004B */  addiu      $t9, $zero, 0x4B
    /* 1F474C 802DBA3C 24080001 */  addiu      $t0, $zero, 0x1
    /* 1F4750 802DBA40 000FC040 */  sll        $t8, $t7, 1
    /* 1F4754 802DBA44 07020004 */  bltzl      $t8, .L802DBA58_1F4768
    /* 1F4758 802DBA48 A608002C */   sh        $t0, 0x2C($s0)
    /* 1F475C 802DBA4C 10000002 */  b          .L802DBA58_1F4768
    /* 1F4760 802DBA50 A619002C */   sh        $t9, 0x2C($s0)
    /* 1F4764 802DBA54 A608002C */  sh         $t0, 0x2C($s0)
  .L802DBA58_1F4768:
    /* 1F4768 802DBA58 8602002C */  lh         $v0, 0x2C($s0)
  .L802DBA5C_1F476C:
    /* 1F476C 802DBA5C 2841004C */  slti       $at, $v0, 0x4C
    /* 1F4770 802DBA60 50200024 */  beql       $at, $zero, .L802DBAF4_1F4804
    /* 1F4774 802DBA64 24010001 */   addiu     $at, $zero, 0x1
    /* 1F4778 802DBA68 10400021 */  beqz       $v0, .L802DBAF0_1F4800
    /* 1F477C 802DBA6C 24010019 */   addiu     $at, $zero, 0x19
    /* 1F4780 802DBA70 0041001A */  div        $zero, $v0, $at
    /* 1F4784 802DBA74 00004810 */  mfhi       $t1
    /* 1F4788 802DBA78 3C0A8022 */  lui        $t2, %hi(D_80222A70)
    /* 1F478C 802DBA7C 5520001D */  bnel       $t1, $zero, .L802DBAF4_1F4804
    /* 1F4790 802DBA80 24010001 */   addiu     $at, $zero, 0x1
    /* 1F4794 802DBA84 86050002 */  lh         $a1, 0x2($s0)
    /* 1F4798 802DBA88 8D4A2A70 */  lw         $t2, %lo(D_80222A70)($t2)
    /* 1F479C 802DBA8C 00003825 */  or         $a3, $zero, $zero
    /* 1F47A0 802DBA90 240B0001 */  addiu      $t3, $zero, 0x1
    /* 1F47A4 802DBA94 0145082A */  slt        $at, $t2, $a1
    /* 1F47A8 802DBA98 10200015 */  beqz       $at, .L802DBAF0_1F4800
    /* 1F47AC 802DBA9C 240C003C */   addiu     $t4, $zero, 0x3C
    /* 1F47B0 802DBAA0 240D0008 */  addiu      $t5, $zero, 0x8
    /* 1F47B4 802DBAA4 240E000C */  addiu      $t6, $zero, 0xC
    /* 1F47B8 802DBAA8 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 1F47BC 802DBAAC 241800C8 */  addiu      $t8, $zero, 0xC8
    /* 1F47C0 802DBAB0 24190032 */  addiu      $t9, $zero, 0x32
    /* 1F47C4 802DBAB4 240800FF */  addiu      $t0, $zero, 0xFF
    /* 1F47C8 802DBAB8 AFA80034 */  sw         $t0, 0x34($sp)
    /* 1F47CC 802DBABC AFB9002C */  sw         $t9, 0x2C($sp)
    /* 1F47D0 802DBAC0 AFB80028 */  sw         $t8, 0x28($sp)
    /* 1F47D4 802DBAC4 AFAF0024 */  sw         $t7, 0x24($sp)
    /* 1F47D8 802DBAC8 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 1F47DC 802DBACC AFAD001C */  sw         $t5, 0x1C($sp)
    /* 1F47E0 802DBAD0 86040000 */  lh         $a0, 0x0($s0)
    /* 1F47E4 802DBAD4 86060004 */  lh         $a2, 0x4($s0)
    /* 1F47E8 802DBAD8 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 1F47EC 802DBADC AFA00014 */  sw         $zero, 0x14($sp)
    /* 1F47F0 802DBAE0 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 1F47F4 802DBAE4 0C03297B */  jal        func_800CA5EC_D959C
    /* 1F47F8 802DBAE8 AFA00030 */   sw        $zero, 0x30($sp)
    /* 1F47FC 802DBAEC 8602002C */  lh         $v0, 0x2C($s0)
  .L802DBAF0_1F4800:
    /* 1F4800 802DBAF0 24010001 */  addiu      $at, $zero, 0x1
  .L802DBAF4_1F4804:
    /* 1F4804 802DBAF4 14410013 */  bne        $v0, $at, .L802DBB44_1F4854
    /* 1F4808 802DBAF8 87A9004E */   lh        $t1, 0x4E($sp)
    /* 1F480C 802DBAFC 00095080 */  sll        $t2, $t1, 2
    /* 1F4810 802DBB00 01495023 */  subu       $t2, $t2, $t1
    /* 1F4814 802DBB04 000A5080 */  sll        $t2, $t2, 2
    /* 1F4818 802DBB08 01495021 */  addu       $t2, $t2, $t1
    /* 1F481C 802DBB0C 000A50C0 */  sll        $t2, $t2, 3
    /* 1F4820 802DBB10 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 1F4824 802DBB14 00EA3821 */  addu       $a3, $a3, $t2
    /* 1F4828 802DBB18 84E7668C */  lh         $a3, %lo(D_8025668C)($a3)
    /* 1F482C 802DBB1C 3C0D802E */  lui        $t5, %hi(D_802E0878)
    /* 1F4830 802DBB20 25AD0878 */  addiu      $t5, $t5, %lo(D_802E0878)
    /* 1F4834 802DBB24 00075840 */  sll        $t3, $a3, 1
    /* 1F4838 802DBB28 3167FFFF */  andi       $a3, $t3, 0xFFFF
    /* 1F483C 802DBB2C AFAD0014 */  sw         $t5, 0x14($sp)
    /* 1F4840 802DBB30 86040000 */  lh         $a0, 0x0($s0)
    /* 1F4844 802DBB34 86050002 */  lh         $a1, 0x2($s0)
    /* 1F4848 802DBB38 86060004 */  lh         $a2, 0x4($s0)
    /* 1F484C 802DBB3C 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1F4850 802DBB40 AFA00010 */   sw        $zero, 0x10($sp)
  .L802DBB44_1F4854:
    /* 1F4854 802DBB44 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 1F4858 802DBB48 8FB00040 */  lw         $s0, 0x40($sp)
    /* 1F485C 802DBB4C 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 1F4860 802DBB50 03E00008 */  jr         $ra
    /* 1F4864 802DBB54 00000000 */   nop
endlabel func_802DB7A4_1F44B4
