nonmatching func_800B879C_C774C, 0x490

glabel func_800B879C_C774C
    /* C774C 800B879C 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* C7750 800B87A0 3C0E8005 */  lui        $t6, %hi(gameplayMode)
    /* C7754 800B87A4 8DCE2ADC */  lw         $t6, %lo(gameplayMode)($t6)
    /* C7758 800B87A8 24010002 */  addiu      $at, $zero, 0x2
    /* C775C 800B87AC AFBF0044 */  sw         $ra, 0x44($sp)
    /* C7760 800B87B0 AFBE0040 */  sw         $fp, 0x40($sp)
    /* C7764 800B87B4 AFB7003C */  sw         $s7, 0x3C($sp)
    /* C7768 800B87B8 AFB60038 */  sw         $s6, 0x38($sp)
    /* C776C 800B87BC AFB50034 */  sw         $s5, 0x34($sp)
    /* C7770 800B87C0 AFB40030 */  sw         $s4, 0x30($sp)
    /* C7774 800B87C4 AFB3002C */  sw         $s3, 0x2C($sp)
    /* C7778 800B87C8 AFB20028 */  sw         $s2, 0x28($sp)
    /* C777C 800B87CC AFB10024 */  sw         $s1, 0x24($sp)
    /* C7780 800B87D0 AFB00020 */  sw         $s0, 0x20($sp)
    /* C7784 800B87D4 11C10108 */  beq        $t6, $at, .L800B8BF8_C7BA8
    /* C7788 800B87D8 F7B40018 */   sdc1      $f20, 0x18($sp)
    /* C778C 800B87DC 3C0F8015 */  lui        $t7, %hi(D_8014F838)
    /* C7790 800B87E0 8DEFF838 */  lw         $t7, %lo(D_8014F838)($t7)
    /* C7794 800B87E4 24010001 */  addiu      $at, $zero, 0x1
    /* C7798 800B87E8 3C118016 */  lui        $s1, %hi(D_80158FD8)
    /* C779C 800B87EC 15E10007 */  bne        $t7, $at, .L800B880C_C77BC
    /* C77A0 800B87F0 3C138015 */   lui       $s3, %hi(D_8014F842)
    /* C77A4 800B87F4 3C038022 */  lui        $v1, %hi(D_80222A70)
    /* C77A8 800B87F8 24632A70 */  addiu      $v1, $v1, %lo(D_80222A70)
    /* C77AC 800B87FC 8C620000 */  lw         $v0, 0x0($v1)
    /* C77B0 800B8800 0002C083 */  sra        $t8, $v0, 2
    /* C77B4 800B8804 0058C823 */  subu       $t9, $v0, $t8
    /* C77B8 800B8808 AC790000 */  sw         $t9, 0x0($v1)
  .L800B880C_C77BC:
    /* C77BC 800B880C 86318FD8 */  lh         $s1, %lo(D_80158FD8)($s1)
    /* C77C0 800B8810 3C088016 */  lui        $t0, %hi(D_80158E80)
    /* C77C4 800B8814 25088E80 */  addiu      $t0, $t0, %lo(D_80158E80)
    /* C77C8 800B8818 02201025 */  or         $v0, $s1, $zero
    /* C77CC 800B881C 12200022 */  beqz       $s1, .L800B88A8_C7858
    /* C77D0 800B8820 2631FFFF */   addiu     $s1, $s1, -0x1
    /* C77D4 800B8824 3C078015 */  lui        $a3, %hi(D_8014F83E)
    /* C77D8 800B8828 3C068015 */  lui        $a2, %hi(D_8014F83C)
    /* C77DC 800B882C 3C048005 */  lui        $a0, %hi(vehicleInstances)
    /* C77E0 800B8830 2484DCD0 */  addiu      $a0, $a0, %lo(vehicleInstances)
    /* C77E4 800B8834 24C6F83C */  addiu      $a2, $a2, %lo(D_8014F83C)
    /* C77E8 800B8838 24E7F83E */  addiu      $a3, $a3, %lo(D_8014F83E)
    /* C77EC 800B883C 02281821 */  addu       $v1, $s1, $t0
    /* C77F0 800B8840 2405005C */  addiu      $a1, $zero, 0x5C
  .L800B8844_C77F4:
    /* C77F4 800B8844 90690000 */  lbu        $t1, 0x0($v1)
    /* C77F8 800B8848 84CD0000 */  lh         $t5, 0x0($a2)
    /* C77FC 800B884C 2463FFFF */  addiu      $v1, $v1, -0x1
    /* C7800 800B8850 01250019 */  multu      $t1, $a1
    /* C7804 800B8854 00005012 */  mflo       $t2
    /* C7808 800B8858 008A1021 */  addu       $v0, $a0, $t2
    /* C780C 800B885C 844B0000 */  lh         $t3, 0x0($v0)
    /* C7810 800B8860 000B6203 */  sra        $t4, $t3, 8
    /* C7814 800B8864 018D7023 */  subu       $t6, $t4, $t5
    /* C7818 800B8868 29C10060 */  slti       $at, $t6, 0x60
    /* C781C 800B886C 5020000C */  beql       $at, $zero, .L800B88A0_C7850
    /* C7820 800B8870 02201025 */   or        $v0, $s1, $zero
    /* C7824 800B8874 844F0004 */  lh         $t7, 0x4($v0)
    /* C7828 800B8878 84F90000 */  lh         $t9, 0x0($a3)
    /* C782C 800B887C 000FC203 */  sra        $t8, $t7, 8
    /* C7830 800B8880 03194023 */  subu       $t0, $t8, $t9
    /* C7834 800B8884 29010060 */  slti       $at, $t0, 0x60
    /* C7838 800B8888 50200005 */  beql       $at, $zero, .L800B88A0_C7850
    /* C783C 800B888C 02201025 */   or        $v0, $s1, $zero
    /* C7840 800B8890 94490020 */  lhu        $t1, 0x20($v0)
    /* C7844 800B8894 352A0001 */  ori        $t2, $t1, 0x1
    /* C7848 800B8898 A44A0020 */  sh         $t2, 0x20($v0)
    /* C784C 800B889C 02201025 */  or         $v0, $s1, $zero
  .L800B88A0_C7850:
    /* C7850 800B88A0 1620FFE8 */  bnez       $s1, .L800B8844_C77F4
    /* C7854 800B88A4 2631FFFF */   addiu     $s1, $s1, -0x1
  .L800B88A8_C7858:
    /* C7858 800B88A8 3C018015 */  lui        $at, %hi(D_8014F84C)
    /* C785C 800B88AC C422F84C */  lwc1       $f2, %lo(D_8014F84C)($at)
    /* C7860 800B88B0 3C078015 */  lui        $a3, %hi(D_8014F83E)
    /* C7864 800B88B4 24E7F83E */  addiu      $a3, $a3, %lo(D_8014F83E)
    /* C7868 800B88B8 4600110D */  trunc.w.s  $f4, $f2
    /* C786C 800B88BC 3C068015 */  lui        $a2, %hi(D_8014F83C)
    /* C7870 800B88C0 84EC0000 */  lh         $t4, 0x0($a3)
    /* C7874 800B88C4 8673F842 */  lh         $s3, %lo(D_8014F842)($s3)
    /* C7878 800B88C8 44122000 */  mfc1       $s2, $f4
    /* C787C 800B88CC 24C6F83C */  addiu      $a2, $a2, %lo(D_8014F83C)
    /* C7880 800B88D0 3C0B8005 */  lui        $t3, %hi(D_80052A94)
    /* C7884 800B88D4 8D6B2A94 */  lw         $t3, %lo(D_80052A94)($t3)
    /* C7888 800B88D8 84CF0000 */  lh         $t7, 0x0($a2)
    /* C788C 800B88DC 000C6A40 */  sll        $t5, $t4, 9
    /* C7890 800B88E0 02601025 */  or         $v0, $s3, $zero
    /* C7894 800B88E4 00124400 */  sll        $t0, $s2, 16
    /* C7898 800B88E8 00084C03 */  sra        $t1, $t0, 16
    /* C789C 800B88EC 016D7021 */  addu       $t6, $t3, $t5
    /* C78A0 800B88F0 000FC040 */  sll        $t8, $t7, 1
    /* C78A4 800B88F4 01D88021 */  addu       $s0, $t6, $t8
    /* C78A8 800B88F8 01209025 */  or         $s2, $t1, $zero
    /* C78AC 800B88FC 12600085 */  beqz       $s3, .L800B8B14_C7AC4
    /* C78B0 800B8900 2673FFFF */   addiu     $s3, $s3, -0x1
    /* C78B4 800B8904 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* C78B8 800B8908 3C168015 */  lui        $s6, %hi(D_8014F834)
    /* C78BC 800B890C 3C158015 */  lui        $s5, %hi(D_8014F848)
    /* C78C0 800B8910 3C148015 */  lui        $s4, %hi(D_8014F846)
    /* C78C4 800B8914 4481A000 */  mtc1       $at, $f20
    /* C78C8 800B8918 2694F846 */  addiu      $s4, $s4, %lo(D_8014F846)
    /* C78CC 800B891C 26B5F848 */  addiu      $s5, $s5, %lo(D_8014F848)
    /* C78D0 800B8920 26D6F834 */  addiu      $s6, $s6, %lo(D_8014F834)
    /* C78D4 800B8924 241EFFFF */  addiu      $fp, $zero, -0x1
    /* C78D8 800B8928 2417003F */  addiu      $s7, $zero, 0x3F
  .L800B892C_C78DC:
    /* C78DC 800B892C 3C118015 */  lui        $s1, %hi(D_8014F840)
    /* C78E0 800B8930 8631F840 */  lh         $s1, %lo(D_8014F840)($s1)
    /* C78E4 800B8934 02201025 */  or         $v0, $s1, $zero
    /* C78E8 800B8938 1220006D */  beqz       $s1, .L800B8AF0_C7AA0
    /* C78EC 800B893C 2631FFFF */   addiu     $s1, $s1, -0x1
  .L800B8940_C78F0:
    /* C78F0 800B8940 868A0000 */  lh         $t2, 0x0($s4)
    /* C78F4 800B8944 86AC0000 */  lh         $t4, 0x0($s5)
    /* C78F8 800B8948 01513021 */  addu       $a2, $t2, $s1
    /* C78FC 800B894C 24C2FFD0 */  addiu      $v0, $a2, -0x30
    /* C7900 800B8950 00420019 */  multu      $v0, $v0
    /* C7904 800B8954 026C3821 */  addu       $a3, $s3, $t4
    /* C7908 800B8958 24E3FFD0 */  addiu      $v1, $a3, -0x30
    /* C790C 800B895C 00005812 */  mflo       $t3
    /* C7910 800B8960 00000000 */  nop
    /* C7914 800B8964 00000000 */  nop
    /* C7918 800B8968 00630019 */  multu      $v1, $v1
    /* C791C 800B896C 00006812 */  mflo       $t5
    /* C7920 800B8970 016D2021 */  addu       $a0, $t3, $t5
    /* C7924 800B8974 0092082A */  slt        $at, $a0, $s2
    /* C7928 800B8978 10200059 */  beqz       $at, .L800B8AE0_C7A90
    /* C792C 800B897C 3C018015 */   lui       $at, %hi(D_8014F850)
    /* C7930 800B8980 C42AF850 */  lwc1       $f10, %lo(D_8014F850)($at)
    /* C7934 800B8984 44923000 */  mtc1       $s2, $f6
    /* C7938 800B8988 44842000 */  mtc1       $a0, $f4
    /* C793C 800B898C 46145402 */  mul.s      $f16, $f10, $f20
    /* C7940 800B8990 00062600 */  sll        $a0, $a2, 24
    /* C7944 800B8994 00047E03 */  sra        $t7, $a0, 24
    /* C7948 800B8998 00072E00 */  sll        $a1, $a3, 24
    /* C794C 800B899C 00057603 */  sra        $t6, $a1, 24
    /* C7950 800B89A0 01E02025 */  or         $a0, $t7, $zero
    /* C7954 800B89A4 46803220 */  cvt.s.w    $f8, $f6
    /* C7958 800B89A8 468021A0 */  cvt.s.w    $f6, $f4
    /* C795C 800B89AC 46104481 */  sub.s      $f18, $f8, $f16
    /* C7960 800B89B0 4606903C */  c.lt.s     $f18, $f6
    /* C7964 800B89B4 00000000 */  nop
    /* C7968 800B89B8 4500003A */  bc1f       .L800B8AA4_C7A54
    /* C796C 800B89BC 00000000 */   nop
    /* C7970 800B89C0 3C0F8015 */  lui        $t7, %hi(D_8014F830)
    /* C7974 800B89C4 3C0E8015 */  lui        $t6, %hi(D_8014F832)
    /* C7978 800B89C8 85CEF832 */  lh         $t6, %lo(D_8014F832)($t6)
    /* C797C 800B89CC 85EFF830 */  lh         $t7, %lo(D_8014F830)($t7)
    /* C7980 800B89D0 86C20000 */  lh         $v0, 0x0($s6)
    /* C7984 800B89D4 448E8000 */  mtc1       $t6, $f16
    /* C7988 800B89D8 448F5000 */  mtc1       $t7, $f10
    /* C798C 800B89DC 02E2C023 */  subu       $t8, $s7, $v0
    /* C7990 800B89E0 46808120 */  cvt.s.w    $f4, $f16
    /* C7994 800B89E4 44983000 */  mtc1       $t8, $f6
    /* C7998 800B89E8 24080001 */  addiu      $t0, $zero, 0x1
    /* C799C 800B89EC 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* C79A0 800B89F0 46805220 */  cvt.s.w    $f8, $f10
    /* C79A4 800B89F4 468032A0 */  cvt.s.w    $f10, $f6
    /* C79A8 800B89F8 46044483 */  div.s      $f18, $f8, $f4
    /* C79AC 800B89FC 44824000 */  mtc1       $v0, $f8
    /* C79B0 800B8A00 00000000 */  nop
    /* C79B4 800B8A04 46804120 */  cvt.s.w    $f4, $f8
    /* C79B8 800B8A08 46125402 */  mul.s      $f16, $f10, $f18
    /* C79BC 800B8A0C 46102180 */  add.s      $f6, $f4, $f16
    /* C79C0 800B8A10 4459F800 */  cfc1       $t9, $31
    /* C79C4 800B8A14 44C8F800 */  ctc1       $t0, $31
    /* C79C8 800B8A18 00000000 */  nop
    /* C79CC 800B8A1C 460032A4 */  cvt.w.s    $f10, $f6
    /* C79D0 800B8A20 4448F800 */  cfc1       $t0, $31
    /* C79D4 800B8A24 00000000 */  nop
    /* C79D8 800B8A28 31080078 */  andi       $t0, $t0, 0x78
    /* C79DC 800B8A2C 51000013 */  beql       $t0, $zero, .L800B8A7C_C7A2C
    /* C79E0 800B8A30 44085000 */   mfc1      $t0, $f10
    /* C79E4 800B8A34 44815000 */  mtc1       $at, $f10
    /* C79E8 800B8A38 24080001 */  addiu      $t0, $zero, 0x1
    /* C79EC 800B8A3C 460A3281 */  sub.s      $f10, $f6, $f10
    /* C79F0 800B8A40 44C8F800 */  ctc1       $t0, $31
    /* C79F4 800B8A44 00000000 */  nop
    /* C79F8 800B8A48 460052A4 */  cvt.w.s    $f10, $f10
    /* C79FC 800B8A4C 4448F800 */  cfc1       $t0, $31
    /* C7A00 800B8A50 00000000 */  nop
    /* C7A04 800B8A54 31080078 */  andi       $t0, $t0, 0x78
    /* C7A08 800B8A58 15000005 */  bnez       $t0, .L800B8A70_C7A20
    /* C7A0C 800B8A5C 00000000 */   nop
    /* C7A10 800B8A60 44085000 */  mfc1       $t0, $f10
    /* C7A14 800B8A64 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* C7A18 800B8A68 10000007 */  b          .L800B8A88_C7A38
    /* C7A1C 800B8A6C 01014025 */   or        $t0, $t0, $at
  .L800B8A70_C7A20:
    /* C7A20 800B8A70 10000005 */  b          .L800B8A88_C7A38
    /* C7A24 800B8A74 2408FFFF */   addiu     $t0, $zero, -0x1
    /* C7A28 800B8A78 44085000 */  mfc1       $t0, $f10
  .L800B8A7C_C7A2C:
    /* C7A2C 800B8A7C 00000000 */  nop
    /* C7A30 800B8A80 0500FFFB */  bltz       $t0, .L800B8A70_C7A20
    /* C7A34 800B8A84 00000000 */   nop
  .L800B8A88_C7A38:
    /* C7A38 800B8A88 920C0001 */  lbu        $t4, 0x1($s0)
    /* C7A3C 800B8A8C 310A003F */  andi       $t2, $t0, 0x3F
    /* C7A40 800B8A90 44D9F800 */  ctc1       $t9, $31
    /* C7A44 800B8A94 318BFFC0 */  andi       $t3, $t4, 0xFFC0
    /* C7A48 800B8A98 014B6825 */  or         $t5, $t2, $t3
    /* C7A4C 800B8A9C 10000010 */  b          .L800B8AE0_C7A90
    /* C7A50 800B8AA0 A20D0001 */   sb        $t5, 0x1($s0)
  .L800B8AA4_C7A54:
    /* C7A54 800B8AA4 0C047498 */  jal        func_8011D260_12C210
    /* C7A58 800B8AA8 01C02825 */   or        $a1, $t6, $zero
    /* C7A5C 800B8AAC 505E0004 */  beql       $v0, $fp, .L800B8AC0_C7A70
    /* C7A60 800B8AB0 96020000 */   lhu       $v0, 0x0($s0)
    /* C7A64 800B8AB4 0C047020 */  jal        func_8011C080_12B030
    /* C7A68 800B8AB8 304400FF */   andi      $a0, $v0, 0xFF
    /* C7A6C 800B8ABC 96020000 */  lhu        $v0, 0x0($s0)
  .L800B8AC0_C7A70:
    /* C7A70 800B8AC0 920A0001 */  lbu        $t2, 0x1($s0)
    /* C7A74 800B8AC4 3058003F */  andi       $t8, $v0, 0x3F
    /* C7A78 800B8AC8 0018C883 */  sra        $t9, $t8, 2
    /* C7A7C 800B8ACC 03194823 */  subu       $t1, $t8, $t9
    /* C7A80 800B8AD0 312C003F */  andi       $t4, $t1, 0x3F
    /* C7A84 800B8AD4 314BFFC0 */  andi       $t3, $t2, 0xFFC0
    /* C7A88 800B8AD8 018B6825 */  or         $t5, $t4, $t3
    /* C7A8C 800B8ADC A20D0001 */  sb         $t5, 0x1($s0)
  .L800B8AE0_C7A90:
    /* C7A90 800B8AE0 02201025 */  or         $v0, $s1, $zero
    /* C7A94 800B8AE4 26100002 */  addiu      $s0, $s0, 0x2
    /* C7A98 800B8AE8 1620FF95 */  bnez       $s1, .L800B8940_C78F0
    /* C7A9C 800B8AEC 2631FFFF */   addiu     $s1, $s1, -0x1
  .L800B8AF0_C7AA0:
    /* C7AA0 800B8AF0 3C0F8015 */  lui        $t7, %hi(D_8014F844)
    /* C7AA4 800B8AF4 85EFF844 */  lh         $t7, %lo(D_8014F844)($t7)
    /* C7AA8 800B8AF8 02601025 */  or         $v0, $s3, $zero
    /* C7AAC 800B8AFC 000F7040 */  sll        $t6, $t7, 1
    /* C7AB0 800B8B00 020E8021 */  addu       $s0, $s0, $t6
    /* C7AB4 800B8B04 1660FF89 */  bnez       $s3, .L800B892C_C78DC
    /* C7AB8 800B8B08 2673FFFF */   addiu     $s3, $s3, -0x1
    /* C7ABC 800B8B0C 3C018015 */  lui        $at, %hi(D_8014F84C)
    /* C7AC0 800B8B10 C422F84C */  lwc1       $f2, %lo(D_8014F84C)($at)
  .L800B8B14_C7AC4:
    /* C7AC4 800B8B14 3C018015 */  lui        $at, %hi(D_8014F850)
    /* C7AC8 800B8B18 C420F850 */  lwc1       $f0, %lo(D_8014F850)($at)
    /* C7ACC 800B8B1C 3C018015 */  lui        $at, %hi(D_8014F84C)
    /* C7AD0 800B8B20 3C188015 */  lui        $t8, %hi(D_8014F830)
    /* C7AD4 800B8B24 46001480 */  add.s      $f18, $f2, $f0
    /* C7AD8 800B8B28 8718F830 */  lh         $t8, %lo(D_8014F830)($t8)
    /* C7ADC 800B8B2C 3C108020 */  lui        $s0, %hi(D_801FEA30)
    /* C7AE0 800B8B30 46000221 */  cvt.d.s    $f8, $f0
    /* C7AE4 800B8B34 E432F84C */  swc1       $f18, %lo(D_8014F84C)($at)
    /* C7AE8 800B8B38 3C018014 */  lui        $at, %hi(D_80142E40)
    /* C7AEC 800B8B3C D4242E40 */  ldc1       $f4, %lo(D_80142E40)($at)
    /* C7AF0 800B8B40 3C018015 */  lui        $at, %hi(D_8014F850)
    /* C7AF4 800B8B44 2610EA30 */  addiu      $s0, $s0, %lo(D_801FEA30)
    /* C7AF8 800B8B48 46244402 */  mul.d      $f16, $f8, $f4
    /* C7AFC 800B8B4C 3C048015 */  lui        $a0, %hi(D_8014F89C)
    /* C7B00 800B8B50 3C058015 */  lui        $a1, %hi(D_8014F89D)
    /* C7B04 800B8B54 27190001 */  addiu      $t9, $t8, 0x1
    /* C7B08 800B8B58 90A5F89D */  lbu        $a1, %lo(D_8014F89D)($a1)
    /* C7B0C 800B8B5C 9084F89C */  lbu        $a0, %lo(D_8014F89C)($a0)
    /* C7B10 800B8B60 02003025 */  or         $a2, $s0, $zero
    /* C7B14 800B8B64 00003825 */  or         $a3, $zero, $zero
    /* C7B18 800B8B68 462081A0 */  cvt.s.d    $f6, $f16
    /* C7B1C 800B8B6C E426F850 */  swc1       $f6, %lo(D_8014F850)($at)
    /* C7B20 800B8B70 3C018015 */  lui        $at, %hi(D_8014F830)
    /* C7B24 800B8B74 0C02D014 */  jal        func_800B4050_C3000
    /* C7B28 800B8B78 A439F830 */   sh        $t9, %lo(D_8014F830)($at)
    /* C7B2C 800B8B7C 3C048015 */  lui        $a0, %hi(D_80149434)
    /* C7B30 800B8B80 3C058015 */  lui        $a1, %hi(D_80149436)
    /* C7B34 800B8B84 84A59436 */  lh         $a1, %lo(D_80149436)($a1)
    /* C7B38 800B8B88 0C01DBF3 */  jal        func_80076FCC_85F7C
    /* C7B3C 800B8B8C 84849434 */   lh        $a0, %lo(D_80149434)($a0)
    /* C7B40 800B8B90 3C088015 */  lui        $t0, %hi(D_8014F830)
    /* C7B44 800B8B94 3C098015 */  lui        $t1, %hi(D_8014F832)
    /* C7B48 800B8B98 8529F832 */  lh         $t1, %lo(D_8014F832)($t1)
    /* C7B4C 800B8B9C 8508F830 */  lh         $t0, %lo(D_8014F830)($t0)
    /* C7B50 800B8BA0 0109082A */  slt        $at, $t0, $t1
    /* C7B54 800B8BA4 54200015 */  bnel       $at, $zero, .L800B8BFC_C7BAC
    /* C7B58 800B8BA8 8FBF0044 */   lw        $ra, 0x44($sp)
    /* C7B5C 800B8BAC 0C02CCAB */  jal        func_800B32AC_C225C
    /* C7B60 800B8BB0 02002025 */   or        $a0, $s0, $zero
    /* C7B64 800B8BB4 3C028004 */  lui        $v0, %hi(currentLevel)
    /* C7B68 800B8BB8 8C427F90 */  lw         $v0, %lo(currentLevel)($v0)
    /* C7B6C 800B8BBC 3C0B8003 */  lui        $t3, %hi(D_80031634)
    /* C7B70 800B8BC0 3C0F8003 */  lui        $t7, %hi(D_80031620)
    /* C7B74 800B8BC4 244AFFFF */  addiu      $t2, $v0, -0x1
    /* C7B78 800B8BC8 000A6080 */  sll        $t4, $t2, 2
    /* C7B7C 800B8BCC 016C5821 */  addu       $t3, $t3, $t4
    /* C7B80 800B8BD0 856B1634 */  lh         $t3, %lo(D_80031634)($t3)
    /* C7B84 800B8BD4 000A6880 */  sll        $t5, $t2, 2
    /* C7B88 800B8BD8 01ED7821 */  addu       $t7, $t7, $t5
    /* C7B8C 800B8BDC 91EF1620 */  lbu        $t7, %lo(D_80031620)($t7)
    /* C7B90 800B8BE0 3C018003 */  lui        $at, %hi(D_800313F8)
    /* C7B94 800B8BE4 A42B13F8 */  sh         $t3, %lo(D_800313F8)($at)
    /* C7B98 800B8BE8 3C018003 */  lui        $at, %hi(D_800313E8)
    /* C7B9C 800B8BEC A02F13E8 */  sb         $t7, %lo(D_800313E8)($at)
    /* C7BA0 800B8BF0 3C018015 */  lui        $at, %hi(D_8014F838)
    /* C7BA4 800B8BF4 AC20F838 */  sw         $zero, %lo(D_8014F838)($at)
  .L800B8BF8_C7BA8:
    /* C7BA8 800B8BF8 8FBF0044 */  lw         $ra, 0x44($sp)
  .L800B8BFC_C7BAC:
    /* C7BAC 800B8BFC D7B40018 */  ldc1       $f20, 0x18($sp)
    /* C7BB0 800B8C00 8FB00020 */  lw         $s0, 0x20($sp)
    /* C7BB4 800B8C04 8FB10024 */  lw         $s1, 0x24($sp)
    /* C7BB8 800B8C08 8FB20028 */  lw         $s2, 0x28($sp)
    /* C7BBC 800B8C0C 8FB3002C */  lw         $s3, 0x2C($sp)
    /* C7BC0 800B8C10 8FB40030 */  lw         $s4, 0x30($sp)
    /* C7BC4 800B8C14 8FB50034 */  lw         $s5, 0x34($sp)
    /* C7BC8 800B8C18 8FB60038 */  lw         $s6, 0x38($sp)
    /* C7BCC 800B8C1C 8FB7003C */  lw         $s7, 0x3C($sp)
    /* C7BD0 800B8C20 8FBE0040 */  lw         $fp, 0x40($sp)
    /* C7BD4 800B8C24 03E00008 */  jr         $ra
    /* C7BD8 800B8C28 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_800B879C_C774C
