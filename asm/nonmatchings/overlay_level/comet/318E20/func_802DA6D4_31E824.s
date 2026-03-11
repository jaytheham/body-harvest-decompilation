nonmatching func_802DA6D4_31E824, 0x2EC

glabel func_802DA6D4_31E824
    /* 31E824 802DA6D4 308E00FF */  andi       $t6, $a0, 0xFF
    /* 31E828 802DA6D8 000E7880 */  sll        $t7, $t6, 2
    /* 31E82C 802DA6DC 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* 31E830 802DA6E0 01EE7821 */  addu       $t7, $t7, $t6
    /* 31E834 802DA6E4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 31E838 802DA6E8 AFB00030 */  sw         $s0, 0x30($sp)
    /* 31E83C 802DA6EC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 31E840 802DA6F0 000F7900 */  sll        $t7, $t7, 4
    /* 31E844 802DA6F4 01F88021 */  addu       $s0, $t7, $t8
    /* 31E848 802DA6F8 8619000C */  lh         $t9, 0xC($s0)
    /* 31E84C 802DA6FC 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 31E850 802DA700 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 31E854 802DA704 00194900 */  sll        $t1, $t9, 4
    /* 31E858 802DA708 00495021 */  addu       $t2, $v0, $t1
    /* 31E85C 802DA70C 8145000C */  lb         $a1, 0xC($t2)
    /* 31E860 802DA710 AFA40090 */  sw         $a0, 0x90($sp)
    /* 31E864 802DA714 01C02025 */  or         $a0, $t6, $zero
    /* 31E868 802DA718 00055900 */  sll        $t3, $a1, 4
    /* 31E86C 802DA71C 004B6021 */  addu       $t4, $v0, $t3
    /* 31E870 802DA720 818D000D */  lb         $t5, 0xD($t4)
    /* 31E874 802DA724 8E090020 */  lw         $t1, 0x20($s0)
    /* 31E878 802DA728 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 31E87C 802DA72C A7AD008C */  sh         $t5, 0x8C($sp)
    /* 31E880 802DA730 87AE008C */  lh         $t6, 0x8C($sp)
    /* 31E884 802DA734 000952C0 */  sll        $t2, $t1, 11
    /* 31E888 802DA738 24050096 */  addiu      $a1, $zero, 0x96
    /* 31E88C 802DA73C 000E7900 */  sll        $t7, $t6, 4
    /* 31E890 802DA740 004F1821 */  addu       $v1, $v0, $t7
    /* 31E894 802DA744 8068000D */  lb         $t0, 0xD($v1)
    /* 31E898 802DA748 240F1F40 */  addiu      $t7, $zero, 0x1F40
    /* 31E89C 802DA74C 00003025 */  or         $a2, $zero, $zero
    /* 31E8A0 802DA750 0008C100 */  sll        $t8, $t0, 4
    /* 31E8A4 802DA754 0058C821 */  addu       $t9, $v0, $t8
    /* 31E8A8 802DA758 05400013 */  bltz       $t2, .L802DA7A8_31E8F8
    /* 31E8AC 802DA75C 8327000D */   lb        $a3, 0xD($t9)
    /* 31E8B0 802DA760 846B0004 */  lh         $t3, 0x4($v1)
    /* 31E8B4 802DA764 240C0019 */  addiu      $t4, $zero, 0x19
    /* 31E8B8 802DA768 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 31E8BC 802DA76C 01C02825 */  or         $a1, $t6, $zero
    /* 31E8C0 802DA770 84660000 */  lh         $a2, 0x0($v1)
    /* 31E8C4 802DA774 84670002 */  lh         $a3, 0x2($v1)
    /* 31E8C8 802DA778 AFA00014 */  sw         $zero, 0x14($sp)
    /* 31E8CC 802DA77C AFA0001C */  sw         $zero, 0x1C($sp)
    /* 31E8D0 802DA780 A3A40093 */  sb         $a0, 0x93($sp)
    /* 31E8D4 802DA784 0C022390 */  jal        func_80088E40_97DF0
    /* 31E8D8 802DA788 AFAB0010 */   sw        $t3, 0x10($sp)
    /* 31E8DC 802DA78C 240D003C */  addiu      $t5, $zero, 0x3C
    /* 31E8E0 802DA790 A60D002C */  sh         $t5, 0x2C($s0)
    /* 31E8E4 802DA794 93A40093 */  lbu        $a0, 0x93($sp)
    /* 31E8E8 802DA798 0C04DD1A */  jal        func_80137468_146418
    /* 31E8EC 802DA79C 24050010 */   addiu     $a1, $zero, 0x10
    /* 31E8F0 802DA7A0 10000083 */  b          .L802DA9B0_31EB00
    /* 31E8F4 802DA7A4 8FBF0034 */   lw        $ra, 0x34($sp)
  .L802DA7A8_31E8F8:
    /* 31E8F8 802DA7A8 3C01802E */  lui        $at, %hi(D_802E7B50)
    /* 31E8FC 802DA7AC C4247B50 */  lwc1       $f4, %lo(D_802E7B50)($at)
    /* 31E900 802DA7B0 2418EC78 */  addiu      $t8, $zero, -0x1388
    /* 31E904 802DA7B4 241909C4 */  addiu      $t9, $zero, 0x9C4
    /* 31E908 802DA7B8 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 31E90C 802DA7BC AFB80018 */  sw         $t8, 0x18($sp)
    /* 31E910 802DA7C0 AFA80010 */  sw         $t0, 0x10($sp)
    /* 31E914 802DA7C4 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 31E918 802DA7C8 0C0B665F */  jal        func_802D997C_31DACC
    /* 31E91C 802DA7CC E7A40020 */   swc1      $f4, 0x20($sp)
    /* 31E920 802DA7D0 8603002C */  lh         $v1, 0x2C($s0)
    /* 31E924 802DA7D4 30690003 */  andi       $t1, $v1, 0x3
    /* 31E928 802DA7D8 5520004A */  bnel       $t1, $zero, .L802DA904_31EA54
    /* 31E92C 802DA7DC 24010001 */   addiu     $at, $zero, 0x1
    /* 31E930 802DA7E0 0C000E38 */  jal        func_800038E0_44E0
    /* 31E934 802DA7E4 00000000 */   nop
    /* 31E938 802DA7E8 0C000E38 */  jal        func_800038E0_44E0
    /* 31E93C 802DA7EC A7A2003E */   sh        $v0, 0x3E($sp)
    /* 31E940 802DA7F0 0C000E38 */  jal        func_800038E0_44E0
    /* 31E944 802DA7F4 A7A20040 */   sh        $v0, 0x40($sp)
    /* 31E948 802DA7F8 0C000E38 */  jal        func_800038E0_44E0
    /* 31E94C 802DA7FC A7A20042 */   sh        $v0, 0x42($sp)
    /* 31E950 802DA800 24030190 */  addiu      $v1, $zero, 0x190
    /* 31E954 802DA804 97AA003E */  lhu        $t2, 0x3E($sp)
    /* 31E958 802DA808 97AF0040 */  lhu        $t7, 0x40($sp)
    /* 31E95C 802DA80C 860B0000 */  lh         $t3, 0x0($s0)
    /* 31E960 802DA810 0143001A */  div        $zero, $t2, $v1
    /* 31E964 802DA814 00007010 */  mfhi       $t6
    /* 31E968 802DA818 01CB2021 */  addu       $a0, $t6, $t3
    /* 31E96C 802DA81C 97AE0042 */  lhu        $t6, 0x42($sp)
    /* 31E970 802DA820 01E3001A */  div        $zero, $t7, $v1
    /* 31E974 802DA824 0000C010 */  mfhi       $t8
    /* 31E978 802DA828 2484FF38 */  addiu      $a0, $a0, -0xC8
    /* 31E97C 802DA82C 14600002 */  bnez       $v1, .L802DA838_31E988
    /* 31E980 802DA830 00000000 */   nop
    /* 31E984 802DA834 0007000D */  break      7
  .L802DA838_31E988:
    /* 31E988 802DA838 2401FFFF */  addiu      $at, $zero, -0x1
    /* 31E98C 802DA83C 14610004 */  bne        $v1, $at, .L802DA850_31E9A0
    /* 31E990 802DA840 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 31E994 802DA844 15410002 */  bne        $t2, $at, .L802DA850_31E9A0
    /* 31E998 802DA848 00000000 */   nop
    /* 31E99C 802DA84C 0006000D */  break      6
  .L802DA850_31E9A0:
    /* 31E9A0 802DA850 01C3001A */  div        $zero, $t6, $v1
    /* 31E9A4 802DA854 00005810 */  mfhi       $t3
    /* 31E9A8 802DA858 00046400 */  sll        $t4, $a0, 16
    /* 31E9AC 802DA85C 86190002 */  lh         $t9, 0x2($s0)
    /* 31E9B0 802DA860 000C6C03 */  sra        $t5, $t4, 16
    /* 31E9B4 802DA864 860C0004 */  lh         $t4, 0x4($s0)
    /* 31E9B8 802DA868 03192821 */  addu       $a1, $t8, $t9
    /* 31E9BC 802DA86C 24A5FF38 */  addiu      $a1, $a1, -0xC8
    /* 31E9C0 802DA870 016C3021 */  addu       $a2, $t3, $t4
    /* 31E9C4 802DA874 24C6FF38 */  addiu      $a2, $a2, -0xC8
    /* 31E9C8 802DA878 00054C00 */  sll        $t1, $a1, 16
    /* 31E9CC 802DA87C 01A02025 */  or         $a0, $t5, $zero
    /* 31E9D0 802DA880 14600002 */  bnez       $v1, .L802DA88C_31E9DC
    /* 31E9D4 802DA884 00000000 */   nop
    /* 31E9D8 802DA888 0007000D */  break      7
  .L802DA88C_31E9DC:
    /* 31E9DC 802DA88C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 31E9E0 802DA890 14610004 */  bne        $v1, $at, .L802DA8A4_31E9F4
    /* 31E9E4 802DA894 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 31E9E8 802DA898 15E10002 */  bne        $t7, $at, .L802DA8A4_31E9F4
    /* 31E9EC 802DA89C 00000000 */   nop
    /* 31E9F0 802DA8A0 0006000D */  break      6
  .L802DA8A4_31E9F4:
    /* 31E9F4 802DA8A4 00066C00 */  sll        $t5, $a2, 16
    /* 31E9F8 802DA8A8 00095403 */  sra        $t2, $t1, 16
    /* 31E9FC 802DA8AC 01402825 */  or         $a1, $t2, $zero
    /* 31EA00 802DA8B0 14600002 */  bnez       $v1, .L802DA8BC_31EA0C
    /* 31EA04 802DA8B4 00000000 */   nop
    /* 31EA08 802DA8B8 0007000D */  break      7
  .L802DA8BC_31EA0C:
    /* 31EA0C 802DA8BC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 31EA10 802DA8C0 14610004 */  bne        $v1, $at, .L802DA8D4_31EA24
    /* 31EA14 802DA8C4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 31EA18 802DA8C8 15C10002 */  bne        $t6, $at, .L802DA8D4_31EA24
    /* 31EA1C 802DA8CC 00000000 */   nop
    /* 31EA20 802DA8D0 0006000D */  break      6
  .L802DA8D4_31EA24:
    /* 31EA24 802DA8D4 24010032 */  addiu      $at, $zero, 0x32
    /* 31EA28 802DA8D8 0041001A */  div        $zero, $v0, $at
    /* 31EA2C 802DA8DC 00003810 */  mfhi       $a3
    /* 31EA30 802DA8E0 24E7001E */  addiu      $a3, $a3, 0x1E
    /* 31EA34 802DA8E4 30F8FFFF */  andi       $t8, $a3, 0xFFFF
    /* 31EA38 802DA8E8 03003825 */  or         $a3, $t8, $zero
    /* 31EA3C 802DA8EC 000D3403 */  sra        $a2, $t5, 16
    /* 31EA40 802DA8F0 AFA00010 */  sw         $zero, 0x10($sp)
    /* 31EA44 802DA8F4 0C037C0E */  jal        func_800DF038_EDFE8
    /* 31EA48 802DA8F8 AFA00014 */   sw        $zero, 0x14($sp)
    /* 31EA4C 802DA8FC 8603002C */  lh         $v1, 0x2C($s0)
    /* 31EA50 802DA900 24010001 */  addiu      $at, $zero, 0x1
  .L802DA904_31EA54:
    /* 31EA54 802DA904 5461002A */  bnel       $v1, $at, .L802DA9B0_31EB00
    /* 31EA58 802DA908 8FBF0034 */   lw        $ra, 0x34($sp)
    /* 31EA5C 802DA90C 9219001A */  lbu        $t9, 0x1A($s0)
    /* 31EA60 802DA910 3C0A8025 */  lui        $t2, %hi(D_802566D4)
    /* 31EA64 802DA914 00194880 */  sll        $t1, $t9, 2
    /* 31EA68 802DA918 01394823 */  subu       $t1, $t1, $t9
    /* 31EA6C 802DA91C 00094880 */  sll        $t1, $t1, 2
    /* 31EA70 802DA920 01394821 */  addu       $t1, $t1, $t9
    /* 31EA74 802DA924 000948C0 */  sll        $t1, $t1, 3
    /* 31EA78 802DA928 01495021 */  addu       $t2, $t2, $t1
    /* 31EA7C 802DA92C 8D4A66D4 */  lw         $t2, %lo(D_802566D4)($t2)
    /* 31EA80 802DA930 000A7180 */  sll        $t6, $t2, 6
    /* 31EA84 802DA934 05C3000E */  bgezl      $t6, .L802DA970_31EAC0
    /* 31EA88 802DA938 920B001A */   lbu       $t3, 0x1A($s0)
    /* 31EA8C 802DA93C 8202003C */  lb         $v0, 0x3C($s0)
    /* 31EA90 802DA940 240100FB */  addiu      $at, $zero, 0xFB
    /* 31EA94 802DA944 50410004 */  beql       $v0, $at, .L802DA958_31EAA8
    /* 31EA98 802DA948 8202003D */   lb        $v0, 0x3D($s0)
    /* 31EA9C 802DA94C 0C0334E4 */  jal        func_800CD390_DC340
    /* 31EAA0 802DA950 304400FF */   andi      $a0, $v0, 0xFF
    /* 31EAA4 802DA954 8202003D */  lb         $v0, 0x3D($s0)
  .L802DA958_31EAA8:
    /* 31EAA8 802DA958 240100FB */  addiu      $at, $zero, 0xFB
    /* 31EAAC 802DA95C 50410004 */  beql       $v0, $at, .L802DA970_31EAC0
    /* 31EAB0 802DA960 920B001A */   lbu       $t3, 0x1A($s0)
    /* 31EAB4 802DA964 0C0334E4 */  jal        func_800CD390_DC340
    /* 31EAB8 802DA968 304400FF */   andi      $a0, $v0, 0xFF
    /* 31EABC 802DA96C 920B001A */  lbu        $t3, 0x1A($s0)
  .L802DA970_31EAC0:
    /* 31EAC0 802DA970 3C078025 */  lui        $a3, %hi(D_8025668C)
    /* 31EAC4 802DA974 240D0006 */  addiu      $t5, $zero, 0x6
    /* 31EAC8 802DA978 000B6080 */  sll        $t4, $t3, 2
    /* 31EACC 802DA97C 018B6023 */  subu       $t4, $t4, $t3
    /* 31EAD0 802DA980 000C6080 */  sll        $t4, $t4, 2
    /* 31EAD4 802DA984 018B6021 */  addu       $t4, $t4, $t3
    /* 31EAD8 802DA988 000C60C0 */  sll        $t4, $t4, 3
    /* 31EADC 802DA98C 00EC3821 */  addu       $a3, $a3, $t4
    /* 31EAE0 802DA990 94E7668C */  lhu        $a3, %lo(D_8025668C)($a3)
    /* 31EAE4 802DA994 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 31EAE8 802DA998 86040000 */  lh         $a0, 0x0($s0)
    /* 31EAEC 802DA99C 86050002 */  lh         $a1, 0x2($s0)
    /* 31EAF0 802DA9A0 86060004 */  lh         $a2, 0x4($s0)
    /* 31EAF4 802DA9A4 0C037C0E */  jal        func_800DF038_EDFE8
    /* 31EAF8 802DA9A8 AFA00014 */   sw        $zero, 0x14($sp)
    /* 31EAFC 802DA9AC 8FBF0034 */  lw         $ra, 0x34($sp)
  .L802DA9B0_31EB00:
    /* 31EB00 802DA9B0 8FB00030 */  lw         $s0, 0x30($sp)
    /* 31EB04 802DA9B4 27BD0090 */  addiu      $sp, $sp, 0x90
    /* 31EB08 802DA9B8 03E00008 */  jr         $ra
    /* 31EB0C 802DA9BC 00000000 */   nop
endlabel func_802DA6D4_31E824
