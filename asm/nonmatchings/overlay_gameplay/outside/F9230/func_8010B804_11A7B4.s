nonmatching func_8010B804_11A7B4, 0x16C

glabel func_8010B804_11A7B4
    /* 11A7B4 8010B804 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 11A7B8 8010B808 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 11A7BC 8010B80C AFB00018 */  sw         $s0, 0x18($sp)
    /* 11A7C0 8010B810 AFA40030 */  sw         $a0, 0x30($sp)
    /* 11A7C4 8010B814 AFA60038 */  sw         $a2, 0x38($sp)
    /* 11A7C8 8010B818 AFA7003C */  sw         $a3, 0x3C($sp)
    /* 11A7CC 8010B81C 90AE001A */  lbu        $t6, 0x1A($a1)
    /* 11A7D0 8010B820 3C188025 */  lui        $t8, %hi(vehicleSpecs)
    /* 11A7D4 8010B824 27187A00 */  addiu      $t8, $t8, %lo(vehicleSpecs)
    /* 11A7D8 8010B828 000E78C0 */  sll        $t7, $t6, 3
    /* 11A7DC 8010B82C 01EE7823 */  subu       $t7, $t7, $t6
    /* 11A7E0 8010B830 000F7900 */  sll        $t7, $t7, 4
    /* 11A7E4 8010B834 01F8C821 */  addu       $t9, $t7, $t8
    /* 11A7E8 8010B838 00A08025 */  or         $s0, $a1, $zero
    /* 11A7EC 8010B83C AFB9002C */  sw         $t9, 0x2C($sp)
    /* 11A7F0 8010B840 0C03EC47 */  jal        func_800FB11C_10A0CC
    /* 11A7F4 8010B844 00A02025 */   or        $a0, $a1, $zero
    /* 11A7F8 8010B848 4600010D */  trunc.w.s  $f4, $f0
    /* 11A7FC 8010B84C 8FAA002C */  lw         $t2, 0x2C($sp)
    /* 11A800 8010B850 87AC003A */  lh         $t4, 0x3A($sp)
    /* 11A804 8010B854 87AE003E */  lh         $t6, 0x3E($sp)
    /* 11A808 8010B858 44022000 */  mfc1       $v0, $f4
    /* 11A80C 8010B85C 954B0032 */  lhu        $t3, 0x32($t2)
    /* 11A810 8010B860 318DFFF0 */  andi       $t5, $t4, 0xFFF0
    /* 11A814 8010B864 31CFFFF0 */  andi       $t7, $t6, 0xFFF0
    /* 11A818 8010B868 01620019 */  multu      $t3, $v0
    /* 11A81C 8010B86C A7AD003A */  sh         $t5, 0x3A($sp)
    /* 11A820 8010B870 A7AF003E */  sh         $t7, 0x3E($sp)
    /* 11A824 8010B874 9218001A */  lbu        $t8, 0x1A($s0)
    /* 11A828 8010B878 000D3400 */  sll        $a2, $t5, 16
    /* 11A82C 8010B87C 00022903 */  sra        $a1, $v0, 4
    /* 11A830 8010B880 0005CC00 */  sll        $t9, $a1, 16
    /* 11A834 8010B884 00065403 */  sra        $t2, $a2, 16
    /* 11A838 8010B888 01403025 */  or         $a2, $t2, $zero
    /* 11A83C 8010B88C 00192C03 */  sra        $a1, $t9, 16
    /* 11A840 8010B890 00004012 */  mflo       $t0
    /* 11A844 8010B894 000F3C00 */  sll        $a3, $t7, 16
    /* 11A848 8010B898 13000006 */  beqz       $t8, .L8010B8B4_11A864
    /* 11A84C 8010B89C 02002025 */   or        $a0, $s0, $zero
    /* 11A850 8010B8A0 00075C03 */  sra        $t3, $a3, 16
    /* 11A854 8010B8A4 01603825 */  or         $a3, $t3, $zero
    /* 11A858 8010B8A8 0C048949 */  jal        func_80122524_1314D4
    /* 11A85C 8010B8AC AFA80024 */   sw        $t0, 0x24($sp)
    /* 11A860 8010B8B0 8FA80024 */  lw         $t0, 0x24($sp)
  .L8010B8B4_11A864:
    /* 11A864 8010B8B4 3C0C8004 */  lui        $t4, %hi(currentLevel)
    /* 11A868 8010B8B8 8D8C7F90 */  lw         $t4, %lo(currentLevel)($t4)
    /* 11A86C 8010B8BC 8FB80030 */  lw         $t8, 0x30($sp)
    /* 11A870 8010B8C0 3C028014 */  lui        $v0, %hi(D_8013BB6C)
    /* 11A874 8010B8C4 000C7140 */  sll        $t6, $t4, 5
    /* 11A878 8010B8C8 0018C840 */  sll        $t9, $t8, 1
    /* 11A87C 8010B8CC 01D94821 */  addu       $t1, $t6, $t9
    /* 11A880 8010B8D0 00491021 */  addu       $v0, $v0, $t1
    /* 11A884 8010B8D4 8442BB6C */  lh         $v0, %lo(D_8013BB6C)($v0)
    /* 11A888 8010B8D8 8FAA002C */  lw         $t2, 0x2C($sp)
    /* 11A88C 8010B8DC 00026880 */  sll        $t5, $v0, 2
    /* 11A890 8010B8E0 01A26821 */  addu       $t5, $t5, $v0
    /* 11A894 8010B8E4 000D6880 */  sll        $t5, $t5, 2
    /* 11A898 8010B8E8 01A26823 */  subu       $t5, $t5, $v0
    /* 11A89C 8010B8EC 000D6880 */  sll        $t5, $t5, 2
    /* 11A8A0 8010B8F0 01A26823 */  subu       $t5, $t5, $v0
    /* 11A8A4 8010B8F4 000D6880 */  sll        $t5, $t5, 2
    /* 11A8A8 8010B8F8 01A8082A */  slt        $at, $t5, $t0
    /* 11A8AC 8010B8FC 14200009 */  bnez       $at, .L8010B924_11A8D4
    /* 11A8B0 8010B900 00000000 */   nop
    /* 11A8B4 8010B904 8D4F004C */  lw         $t7, 0x4C($t2)
    /* 11A8B8 8010B908 000F5880 */  sll        $t3, $t7, 2
    /* 11A8BC 8010B90C 05630013 */  bgezl      $t3, .L8010B95C_11A90C
    /* 11A8C0 8010B910 00001025 */   or        $v0, $zero, $zero
    /* 11A8C4 8010B914 960C0020 */  lhu        $t4, 0x20($s0)
    /* 11A8C8 8010B918 31980002 */  andi       $t8, $t4, 0x2
    /* 11A8CC 8010B91C 5300000F */  beql       $t8, $zero, .L8010B95C_11A90C
    /* 11A8D0 8010B920 00001025 */   or        $v0, $zero, $zero
  .L8010B924_11A8D4:
    /* 11A8D4 8010B924 0C03EC58 */  jal        func_800FB160_10A110
    /* 11A8D8 8010B928 02002025 */   or        $a0, $s0, $zero
    /* 11A8DC 8010B92C 87A4003A */  lh         $a0, 0x3A($sp)
    /* 11A8E0 8010B930 87A5003E */  lh         $a1, 0x3E($sp)
    /* 11A8E4 8010B934 3046FFFF */  andi       $a2, $v0, 0xFFFF
    /* 11A8E8 8010B938 0C01E20A */  jal        func_80078828_877D8
    /* 11A8EC 8010B93C 24070001 */   addiu     $a3, $zero, 0x1
    /* 11A8F0 8010B940 50400006 */  beql       $v0, $zero, .L8010B95C_11A90C
    /* 11A8F4 8010B944 00001025 */   or        $v0, $zero, $zero
    /* 11A8F8 8010B948 0C005060 */  jal        func_80014180_14D80
    /* 11A8FC 8010B94C 83A40033 */   lb        $a0, 0x33($sp)
    /* 11A900 8010B950 10000002 */  b          .L8010B95C_11A90C
    /* 11A904 8010B954 24020001 */   addiu     $v0, $zero, 0x1
    /* 11A908 8010B958 00001025 */  or         $v0, $zero, $zero
  .L8010B95C_11A90C:
    /* 11A90C 8010B95C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 11A910 8010B960 8FB00018 */  lw         $s0, 0x18($sp)
    /* 11A914 8010B964 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 11A918 8010B968 03E00008 */  jr         $ra
    /* 11A91C 8010B96C 00000000 */   nop
endlabel func_8010B804_11A7B4
