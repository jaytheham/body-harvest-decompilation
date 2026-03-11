nonmatching func_800CA848_D97F8, 0x380

glabel func_800CA848_D97F8
    /* D97F8 800CA848 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* D97FC 800CA84C AFB40034 */  sw         $s4, 0x34($sp)
    /* D9800 800CA850 309400FF */  andi       $s4, $a0, 0xFF
    /* D9804 800CA854 00147080 */  sll        $t6, $s4, 2
    /* D9808 800CA858 01D47023 */  subu       $t6, $t6, $s4
    /* D980C 800CA85C 3C0F8015 */  lui        $t7, %hi(D_80154088)
    /* D9810 800CA860 AFB6003C */  sw         $s6, 0x3C($sp)
    /* D9814 800CA864 25EF4088 */  addiu      $t7, $t7, %lo(D_80154088)
    /* D9818 800CA868 000E7080 */  sll        $t6, $t6, 2
    /* D981C 800CA86C 01CFB021 */  addu       $s6, $t6, $t7
    /* D9820 800CA870 86C20006 */  lh         $v0, 0x6($s6)
    /* D9824 800CA874 2409001C */  addiu      $t1, $zero, 0x1C
    /* D9828 800CA878 3C088015 */  lui        $t0, %hi(D_80154318)
    /* D982C 800CA87C 00490019 */  multu      $v0, $t1
    /* D9830 800CA880 25084318 */  addiu      $t0, $t0, %lo(D_80154318)
    /* D9834 800CA884 AFB70040 */  sw         $s7, 0x40($sp)
    /* D9838 800CA888 AFB50038 */  sw         $s5, 0x38($sp)
    /* D983C 800CA88C AFB30030 */  sw         $s3, 0x30($sp)
    /* D9840 800CA890 2401FFFB */  addiu      $at, $zero, -0x5
    /* D9844 800CA894 AFBF0044 */  sw         $ra, 0x44($sp)
    /* D9848 800CA898 AFB2002C */  sw         $s2, 0x2C($sp)
    /* D984C 800CA89C AFB10028 */  sw         $s1, 0x28($sp)
    /* D9850 800CA8A0 AFB00024 */  sw         $s0, 0x24($sp)
    /* D9854 800CA8A4 0000C012 */  mflo       $t8
    /* D9858 800CA8A8 0118B821 */  addu       $s7, $t0, $t8
    /* D985C 800CA8AC 86E30004 */  lh         $v1, 0x4($s7)
    /* D9860 800CA8B0 AFA40048 */  sw         $a0, 0x48($sp)
    /* D9864 800CA8B4 00690019 */  multu      $v1, $t1
    /* D9868 800CA8B8 0000C812 */  mflo       $t9
    /* D986C 800CA8BC 0119A821 */  addu       $s5, $t0, $t9
    /* D9870 800CA8C0 86B30004 */  lh         $s3, 0x4($s5)
    /* D9874 800CA8C4 12610086 */  beq        $s3, $at, .L800CAAE0_D9A90
    /* D9878 800CA8C8 2401FFFA */   addiu     $at, $zero, -0x6
    /* D987C 800CA8CC 12610084 */  beq        $s3, $at, .L800CAAE0_D9A90
    /* D9880 800CA8D0 2409001C */   addiu     $t1, $zero, 0x1C
  .L800CA8D4_D9884:
    /* D9884 800CA8D4 02690019 */  multu      $s3, $t1
    /* D9888 800CA8D8 3C088015 */  lui        $t0, %hi(D_80154318)
    /* D988C 800CA8DC 25084318 */  addiu      $t0, $t0, %lo(D_80154318)
    /* D9890 800CA8E0 3C028022 */  lui        $v0, %hi(D_80222A70)
    /* D9894 800CA8E4 8C422A70 */  lw         $v0, %lo(D_80222A70)($v0)
    /* D9898 800CA8E8 24070032 */  addiu      $a3, $zero, 0x32
    /* D989C 800CA8EC 240E0001 */  addiu      $t6, $zero, 0x1
    /* D98A0 800CA8F0 24450003 */  addiu      $a1, $v0, 0x3
    /* D98A4 800CA8F4 00056400 */  sll        $t4, $a1, 16
    /* D98A8 800CA8F8 000C2C03 */  sra        $a1, $t4, 16
    /* D98AC 800CA8FC 00005012 */  mflo       $t2
    /* D98B0 800CA900 010A9021 */  addu       $s2, $t0, $t2
    /* D98B4 800CA904 864B000A */  lh         $t3, 0xA($s2)
    /* D98B8 800CA908 26F10008 */  addiu      $s1, $s7, 0x8
    /* D98BC 800CA90C 26500008 */  addiu      $s0, $s2, 0x8
    /* D98C0 800CA910 004B082A */  slt        $at, $v0, $t3
    /* D98C4 800CA914 5420002A */  bnel       $at, $zero, .L800CA9C0_D9970
    /* D98C8 800CA918 8202000B */   lb        $v0, 0xB($s0)
    /* D98CC 800CA91C 26500008 */  addiu      $s0, $s2, 0x8
    /* D98D0 800CA920 86040000 */  lh         $a0, 0x0($s0)
    /* D98D4 800CA924 86060004 */  lh         $a2, 0x4($s0)
    /* D98D8 800CA928 0C037BCB */  jal        func_800DEF2C_EDEDC
    /* D98DC 800CA92C AFAE0010 */   sw        $t6, 0x10($sp)
    /* D98E0 800CA930 922F0007 */  lbu        $t7, 0x7($s1)
    /* D98E4 800CA934 86040000 */  lh         $a0, 0x0($s0)
    /* D98E8 800CA938 86050004 */  lh         $a1, 0x4($s0)
    /* D98EC 800CA93C 92270006 */  lbu        $a3, 0x6($s1)
    /* D98F0 800CA940 AFAF0010 */  sw         $t7, 0x10($sp)
    /* D98F4 800CA944 92380008 */  lbu        $t8, 0x8($s1)
    /* D98F8 800CA948 96460002 */  lhu        $a2, 0x2($s2)
    /* D98FC 800CA94C AFB80014 */  sw         $t8, 0x14($sp)
    /* D9900 800CA950 92190009 */  lbu        $t9, 0x9($s0)
    /* D9904 800CA954 0C03254C */  jal        func_800C9530_D84E0
    /* D9908 800CA958 AFB90018 */   sw        $t9, 0x18($sp)
    /* D990C 800CA95C 92CA0004 */  lbu        $t2, 0x4($s6)
    /* D9910 800CA960 00132400 */  sll        $a0, $s3, 16
    /* D9914 800CA964 00046403 */  sra        $t4, $a0, 16
    /* D9918 800CA968 29410004 */  slti       $at, $t2, 0x4
    /* D991C 800CA96C 1020000B */  beqz       $at, .L800CA99C_D994C
    /* D9920 800CA970 01802025 */   or        $a0, $t4, $zero
    /* D9924 800CA974 92AB000D */  lbu        $t3, 0xD($s5)
    /* D9928 800CA978 55600009 */  bnel       $t3, $zero, .L800CA9A0_D9950
    /* D992C 800CA97C 86500004 */   lh        $s0, 0x4($s2)
    /* D9930 800CA980 328400FF */  andi       $a0, $s4, 0xFF
    /* D9934 800CA984 0C030506 */  jal        func_800C1418_D03C8
    /* D9938 800CA988 00002825 */   or        $a1, $zero, $zero
    /* D993C 800CA98C 0C0304E1 */  jal        func_800C1384_D0334
    /* D9940 800CA990 328400FF */   andi      $a0, $s4, 0xFF
    /* D9944 800CA994 10000082 */  b          .L800CABA0_D9B50
    /* D9948 800CA998 8FBF0044 */   lw        $ra, 0x44($sp)
  .L800CA99C_D994C:
    /* D994C 800CA99C 86500004 */  lh         $s0, 0x4($s2)
  .L800CA9A0_D9950:
    /* D9950 800CA9A0 328500FF */  andi       $a1, $s4, 0xFF
    /* D9954 800CA9A4 0C030693 */  jal        func_800C1A4C_D09FC
    /* D9958 800CA9A8 00003025 */   or        $a2, $zero, $zero
    /* D995C 800CA9AC 00109C00 */  sll        $s3, $s0, 16
    /* D9960 800CA9B0 00136C03 */  sra        $t5, $s3, 16
    /* D9964 800CA9B4 10000045 */  b          .L800CAACC_D9A7C
    /* D9968 800CA9B8 01A09825 */   or        $s3, $t5, $zero
    /* D996C 800CA9BC 8202000B */  lb         $v0, 0xB($s0)
  .L800CA9C0_D9970:
    /* D9970 800CA9C0 860E0000 */  lh         $t6, 0x0($s0)
    /* D9974 800CA9C4 820F000A */  lb         $t7, 0xA($s0)
    /* D9978 800CA9C8 86190004 */  lh         $t9, 0x4($s0)
    /* D997C 800CA9CC 820A000C */  lb         $t2, 0xC($s0)
    /* D9980 800CA9D0 860C0002 */  lh         $t4, 0x2($s0)
    /* D9984 800CA9D4 2841FFED */  slti       $at, $v0, -0x13
    /* D9988 800CA9D8 01CFC021 */  addu       $t8, $t6, $t7
    /* D998C 800CA9DC 032A5821 */  addu       $t3, $t9, $t2
    /* D9990 800CA9E0 01826821 */  addu       $t5, $t4, $v0
    /* D9994 800CA9E4 A6180000 */  sh         $t8, 0x0($s0)
    /* D9998 800CA9E8 A60B0004 */  sh         $t3, 0x4($s0)
    /* D999C 800CA9EC 14200004 */  bnez       $at, .L800CAA00_D99B0
    /* D99A0 800CA9F0 A60D0002 */   sh        $t5, 0x2($s0)
    /* D99A4 800CA9F4 244EFFFF */  addiu      $t6, $v0, -0x1
    /* D99A8 800CA9F8 10000003 */  b          .L800CAA08_D99B8
    /* D99AC 800CA9FC A20E000B */   sb        $t6, 0xB($s0)
  .L800CAA00_D99B0:
    /* D99B0 800CAA00 240FFFEC */  addiu      $t7, $zero, -0x14
    /* D99B4 800CAA04 A20F000B */  sb         $t7, 0xB($s0)
  .L800CAA08_D99B8:
    /* D99B8 800CAA08 86040000 */  lh         $a0, 0x0($s0)
    /* D99BC 800CAA0C 0C02E134 */  jal        func_800B84D0_C7480
    /* D99C0 800CAA10 86050004 */   lh        $a1, 0x4($s0)
    /* D99C4 800CAA14 860B0002 */  lh         $t3, 0x2($s0)
    /* D99C8 800CAA18 0002C203 */  sra        $t8, $v0, 8
    /* D99CC 800CAA1C 0018CC00 */  sll        $t9, $t8, 16
    /* D99D0 800CAA20 00195403 */  sra        $t2, $t9, 16
    /* D99D4 800CAA24 014B082A */  slt        $at, $t2, $t3
    /* D99D8 800CAA28 14200027 */  bnez       $at, .L800CAAC8_D9A78
    /* D99DC 800CAA2C 26F10008 */   addiu     $s1, $s7, 0x8
    /* D99E0 800CAA30 922C000C */  lbu        $t4, 0xC($s1)
    /* D99E4 800CAA34 5580000D */  bnel       $t4, $zero, .L800CAA6C_D9A1C
    /* D99E8 800CAA38 92D80004 */   lbu       $t8, 0x4($s6)
    /* D99EC 800CAA3C 922D0007 */  lbu        $t5, 0x7($s1)
    /* D99F0 800CAA40 86040000 */  lh         $a0, 0x0($s0)
    /* D99F4 800CAA44 86050004 */  lh         $a1, 0x4($s0)
    /* D99F8 800CAA48 92270006 */  lbu        $a3, 0x6($s1)
    /* D99FC 800CAA4C AFAD0010 */  sw         $t5, 0x10($sp)
    /* D9A00 800CAA50 922E0008 */  lbu        $t6, 0x8($s1)
    /* D9A04 800CAA54 96460002 */  lhu        $a2, 0x2($s2)
    /* D9A08 800CAA58 AFAE0014 */  sw         $t6, 0x14($sp)
    /* D9A0C 800CAA5C 920F0009 */  lbu        $t7, 0x9($s0)
    /* D9A10 800CAA60 0C03254C */  jal        func_800C9530_D84E0
    /* D9A14 800CAA64 AFAF0018 */   sw        $t7, 0x18($sp)
    /* D9A18 800CAA68 92D80004 */  lbu        $t8, 0x4($s6)
  .L800CAA6C_D9A1C:
    /* D9A1C 800CAA6C 00132400 */  sll        $a0, $s3, 16
    /* D9A20 800CAA70 00045403 */  sra        $t2, $a0, 16
    /* D9A24 800CAA74 2B010004 */  slti       $at, $t8, 0x4
    /* D9A28 800CAA78 1020000B */  beqz       $at, .L800CAAA8_D9A58
    /* D9A2C 800CAA7C 01402025 */   or        $a0, $t2, $zero
    /* D9A30 800CAA80 92B9000D */  lbu        $t9, 0xD($s5)
    /* D9A34 800CAA84 57200009 */  bnel       $t9, $zero, .L800CAAAC_D9A5C
    /* D9A38 800CAA88 86500004 */   lh        $s0, 0x4($s2)
    /* D9A3C 800CAA8C 328400FF */  andi       $a0, $s4, 0xFF
    /* D9A40 800CAA90 0C030506 */  jal        func_800C1418_D03C8
    /* D9A44 800CAA94 00002825 */   or        $a1, $zero, $zero
    /* D9A48 800CAA98 0C0304E1 */  jal        func_800C1384_D0334
    /* D9A4C 800CAA9C 328400FF */   andi      $a0, $s4, 0xFF
    /* D9A50 800CAAA0 1000003F */  b          .L800CABA0_D9B50
    /* D9A54 800CAAA4 8FBF0044 */   lw        $ra, 0x44($sp)
  .L800CAAA8_D9A58:
    /* D9A58 800CAAA8 86500004 */  lh         $s0, 0x4($s2)
  .L800CAAAC_D9A5C:
    /* D9A5C 800CAAAC 328500FF */  andi       $a1, $s4, 0xFF
    /* D9A60 800CAAB0 0C030693 */  jal        func_800C1A4C_D09FC
    /* D9A64 800CAAB4 00003025 */   or        $a2, $zero, $zero
    /* D9A68 800CAAB8 00109C00 */  sll        $s3, $s0, 16
    /* D9A6C 800CAABC 00135C03 */  sra        $t3, $s3, 16
    /* D9A70 800CAAC0 10000002 */  b          .L800CAACC_D9A7C
    /* D9A74 800CAAC4 01609825 */   or        $s3, $t3, $zero
  .L800CAAC8_D9A78:
    /* D9A78 800CAAC8 86530004 */  lh         $s3, 0x4($s2)
  .L800CAACC_D9A7C:
    /* D9A7C 800CAACC 2401FFFB */  addiu      $at, $zero, -0x5
    /* D9A80 800CAAD0 12610003 */  beq        $s3, $at, .L800CAAE0_D9A90
    /* D9A84 800CAAD4 2401FFFA */   addiu     $at, $zero, -0x6
    /* D9A88 800CAAD8 5661FF7E */  bnel       $s3, $at, .L800CA8D4_D9884
    /* D9A8C 800CAADC 2409001C */   addiu     $t1, $zero, 0x1C
  .L800CAAE0_D9A90:
    /* D9A90 800CAAE0 26B00008 */  addiu      $s0, $s5, 0x8
    /* D9A94 800CAAE4 96020006 */  lhu        $v0, 0x6($s0)
    /* D9A98 800CAAE8 18400003 */  blez       $v0, .L800CAAF8_D9AA8
    /* D9A9C 800CAAEC 244CFFFF */   addiu     $t4, $v0, -0x1
    /* D9AA0 800CAAF0 1000002A */  b          .L800CAB9C_D9B4C
    /* D9AA4 800CAAF4 A60C0006 */   sh        $t4, 0x6($s0)
  .L800CAAF8_D9AA8:
    /* D9AA8 800CAAF8 0C000E38 */  jal        func_800038E0_44E0
    /* D9AAC 800CAAFC 00000000 */   nop
    /* D9AB0 800CAB00 24010003 */  addiu      $at, $zero, 0x3
    /* D9AB4 800CAB04 0041001A */  div        $zero, $v0, $at
    /* D9AB8 800CAB08 00001810 */  mfhi       $v1
    /* D9ABC 800CAB0C 24630002 */  addiu      $v1, $v1, 0x2
    /* D9AC0 800CAB10 306D00FF */  andi       $t5, $v1, 0xFF
    /* D9AC4 800CAB14 306400FF */  andi       $a0, $v1, 0xFF
    /* D9AC8 800CAB18 19A0000F */  blez       $t5, .L800CAB58_D9B08
    /* D9ACC 800CAB1C 00008825 */   or        $s1, $zero, $zero
    /* D9AD0 800CAB20 00809025 */  or         $s2, $a0, $zero
  .L800CAB24_D9AD4:
    /* D9AD4 800CAB24 920E0005 */  lbu        $t6, 0x5($s0)
    /* D9AD8 800CAB28 59C00007 */  blezl      $t6, .L800CAB48_D9AF8
    /* D9ADC 800CAB2C 26310001 */   addiu     $s1, $s1, 0x1
    /* D9AE0 800CAB30 0C03286C */  jal        func_800CA1B0_D9160
    /* D9AE4 800CAB34 328400FF */   andi      $a0, $s4, 0xFF
    /* D9AE8 800CAB38 920F0005 */  lbu        $t7, 0x5($s0)
    /* D9AEC 800CAB3C 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* D9AF0 800CAB40 A2180005 */  sb         $t8, 0x5($s0)
    /* D9AF4 800CAB44 26310001 */  addiu      $s1, $s1, 0x1
  .L800CAB48_D9AF8:
    /* D9AF8 800CAB48 323900FF */  andi       $t9, $s1, 0xFF
    /* D9AFC 800CAB4C 0332082A */  slt        $at, $t9, $s2
    /* D9B00 800CAB50 1420FFF4 */  bnez       $at, .L800CAB24_D9AD4
    /* D9B04 800CAB54 03208825 */   or        $s1, $t9, $zero
  .L800CAB58_D9B08:
    /* D9B08 800CAB58 92CA0004 */  lbu        $t2, 0x4($s6)
    /* D9B0C 800CAB5C 328400FF */  andi       $a0, $s4, 0xFF
    /* D9B10 800CAB60 26F10008 */  addiu      $s1, $s7, 0x8
    /* D9B14 800CAB64 29410003 */  slti       $at, $t2, 0x3
    /* D9B18 800CAB68 10200007 */  beqz       $at, .L800CAB88_D9B38
    /* D9B1C 800CAB6C 24070006 */   addiu     $a3, $zero, 0x6
    /* D9B20 800CAB70 0C030506 */  jal        func_800C1418_D03C8
    /* D9B24 800CAB74 00002825 */   or        $a1, $zero, $zero
    /* D9B28 800CAB78 0C0304E1 */  jal        func_800C1384_D0334
    /* D9B2C 800CAB7C 328400FF */   andi      $a0, $s4, 0xFF
    /* D9B30 800CAB80 10000007 */  b          .L800CABA0_D9B50
    /* D9B34 800CAB84 8FBF0044 */   lw        $ra, 0x44($sp)
  .L800CAB88_D9B38:
    /* D9B38 800CAB88 86240000 */  lh         $a0, 0x0($s1)
    /* D9B3C 800CAB8C 86250002 */  lh         $a1, 0x2($s1)
    /* D9B40 800CAB90 86260004 */  lh         $a2, 0x4($s1)
    /* D9B44 800CAB94 0C04DCDA */  jal        func_80137368_146318
    /* D9B48 800CAB98 AFB40010 */   sw        $s4, 0x10($sp)
  .L800CAB9C_D9B4C:
    /* D9B4C 800CAB9C 8FBF0044 */  lw         $ra, 0x44($sp)
  .L800CABA0_D9B50:
    /* D9B50 800CABA0 8FB00024 */  lw         $s0, 0x24($sp)
    /* D9B54 800CABA4 8FB10028 */  lw         $s1, 0x28($sp)
    /* D9B58 800CABA8 8FB2002C */  lw         $s2, 0x2C($sp)
    /* D9B5C 800CABAC 8FB30030 */  lw         $s3, 0x30($sp)
    /* D9B60 800CABB0 8FB40034 */  lw         $s4, 0x34($sp)
    /* D9B64 800CABB4 8FB50038 */  lw         $s5, 0x38($sp)
    /* D9B68 800CABB8 8FB6003C */  lw         $s6, 0x3C($sp)
    /* D9B6C 800CABBC 8FB70040 */  lw         $s7, 0x40($sp)
    /* D9B70 800CABC0 03E00008 */  jr         $ra
    /* D9B74 800CABC4 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_800CA848_D97F8
