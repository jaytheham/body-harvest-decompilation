nonmatching func_8007FDD8_8ED88, 0x304

glabel func_8007FDD8_8ED88
    /* 8ED88 8007FDD8 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 8ED8C 8007FDDC AFB60030 */  sw         $s6, 0x30($sp)
    /* 8ED90 8007FDE0 AFB30024 */  sw         $s3, 0x24($sp)
    /* 8ED94 8007FDE4 AFB40028 */  sw         $s4, 0x28($sp)
    /* 8ED98 8007FDE8 AFB20020 */  sw         $s2, 0x20($sp)
    /* 8ED9C 8007FDEC AFB1001C */  sw         $s1, 0x1C($sp)
    /* 8EDA0 8007FDF0 AFB00018 */  sw         $s0, 0x18($sp)
    /* 8EDA4 8007FDF4 3C138025 */  lui        $s3, %hi(alienSpecs)
    /* 8EDA8 8007FDF8 3C16FFFB */  lui        $s6, (0xFFFBFFFF >> 16)
    /* 8EDAC 8007FDFC 3C038005 */  lui        $v1, %hi(alienInstances)
    /* 8EDB0 8007FE00 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 8EDB4 8007FE04 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 8EDB8 8007FE08 24638198 */  addiu      $v1, $v1, %lo(alienInstances)
    /* 8EDBC 8007FE0C 36D6FFFF */  ori        $s6, $s6, (0xFFFBFFFF & 0xFFFF)
    /* 8EDC0 8007FE10 26736680 */  addiu      $s3, $s3, %lo(alienSpecs)
    /* 8EDC4 8007FE14 2410FFF1 */  addiu      $s0, $zero, -0xF
    /* 8EDC8 8007FE18 00008825 */  or         $s1, $zero, $zero
    /* 8EDCC 8007FE1C 2412FFFE */  addiu      $s2, $zero, -0x2
    /* 8EDD0 8007FE20 24140068 */  addiu      $s4, $zero, 0x68
  .L8007FE24_8EDD4:
    /* 8EDD4 8007FE24 9065001A */  lbu        $a1, 0x1A($v1)
    /* 8EDD8 8007FE28 50A00030 */  beql       $a1, $zero, .L8007FEEC_8EE9C
    /* 8EDDC 8007FE2C 26310001 */   addiu     $s1, $s1, 0x1
    /* 8EDE0 8007FE30 906E0047 */  lbu        $t6, 0x47($v1)
    /* 8EDE4 8007FE34 322400FF */  andi       $a0, $s1, 0xFF
    /* 8EDE8 8007FE38 01D07824 */  and        $t7, $t6, $s0
    /* 8EDEC 8007FE3C 31F90001 */  andi       $t9, $t7, 0x1
    /* 8EDF0 8007FE40 13200017 */  beqz       $t9, .L8007FEA0_8EE50
    /* 8EDF4 8007FE44 A06F0047 */   sb        $t7, 0x47($v1)
    /* 8EDF8 8007FE48 84680034 */  lh         $t0, 0x34($v1)
    /* 8EDFC 8007FE4C 2509FFFF */  addiu      $t1, $t0, -0x1
    /* 8EE00 8007FE50 A4690034 */  sh         $t1, 0x34($v1)
    /* 8EE04 8007FE54 846A0034 */  lh         $t2, 0x34($v1)
    /* 8EE08 8007FE58 05430012 */  bgezl      $t2, .L8007FEA4_8EE54
    /* 8EE0C 8007FE5C 846A0040 */   lh        $t2, 0x40($v1)
    /* 8EE10 8007FE60 00B40019 */  multu      $a1, $s4
    /* 8EE14 8007FE64 01E05825 */  or         $t3, $t7, $zero
    /* 8EE18 8007FE68 01726024 */  and        $t4, $t3, $s2
    /* 8EE1C 8007FE6C A4600034 */  sh         $zero, 0x34($v1)
    /* 8EE20 8007FE70 A06C0047 */  sb         $t4, 0x47($v1)
    /* 8EE24 8007FE74 00006812 */  mflo       $t5
    /* 8EE28 8007FE78 026D7021 */  addu       $t6, $s3, $t5
    /* 8EE2C 8007FE7C 8DCF0054 */  lw         $t7, 0x54($t6)
    /* 8EE30 8007FE80 31F82000 */  andi       $t8, $t7, 0x2000
    /* 8EE34 8007FE84 57000007 */  bnel       $t8, $zero, .L8007FEA4_8EE54
    /* 8EE38 8007FE88 846A0040 */   lh        $t2, 0x40($v1)
    /* 8EE3C 8007FE8C 8C790020 */  lw         $t9, 0x20($v1)
    /* 8EE40 8007FE90 84690006 */  lh         $t1, 0x6($v1)
    /* 8EE44 8007FE94 03364024 */  and        $t0, $t9, $s6
    /* 8EE48 8007FE98 AC680020 */  sw         $t0, 0x20($v1)
    /* 8EE4C 8007FE9C A469000E */  sh         $t1, 0xE($v1)
  .L8007FEA0_8EE50:
    /* 8EE50 8007FEA0 846A0040 */  lh         $t2, 0x40($v1)
  .L8007FEA4_8EE54:
    /* 8EE54 8007FEA4 1540000D */  bnez       $t2, .L8007FEDC_8EE8C
    /* 8EE58 8007FEA8 00000000 */   nop
    /* 8EE5C 8007FEAC 846B0000 */  lh         $t3, 0x0($v1)
    /* 8EE60 8007FEB0 846D002E */  lh         $t5, 0x2E($v1)
    /* 8EE64 8007FEB4 000B6203 */  sra        $t4, $t3, 8
    /* 8EE68 8007FEB8 000D7203 */  sra        $t6, $t5, 8
    /* 8EE6C 8007FEBC 158E0007 */  bne        $t4, $t6, .L8007FEDC_8EE8C
    /* 8EE70 8007FEC0 00000000 */   nop
    /* 8EE74 8007FEC4 846F0004 */  lh         $t7, 0x4($v1)
    /* 8EE78 8007FEC8 84790032 */  lh         $t9, 0x32($v1)
    /* 8EE7C 8007FECC 000FC203 */  sra        $t8, $t7, 8
    /* 8EE80 8007FED0 00194203 */  sra        $t0, $t9, 8
    /* 8EE84 8007FED4 53080005 */  beql       $t8, $t0, .L8007FEEC_8EE9C
    /* 8EE88 8007FED8 26310001 */   addiu     $s1, $s1, 0x1
  .L8007FEDC_8EE8C:
    /* 8EE8C 8007FEDC 0C01FEC2 */  jal        func_8007FB08_8EAB8
    /* 8EE90 8007FEE0 AFA30038 */   sw        $v1, 0x38($sp)
    /* 8EE94 8007FEE4 8FA30038 */  lw         $v1, 0x38($sp)
    /* 8EE98 8007FEE8 26310001 */  addiu      $s1, $s1, 0x1
  .L8007FEEC_8EE9C:
    /* 8EE9C 8007FEEC 2A2100FF */  slti       $at, $s1, 0xFF
    /* 8EEA0 8007FEF0 1420FFCC */  bnez       $at, .L8007FE24_8EDD4
    /* 8EEA4 8007FEF4 24630050 */   addiu     $v1, $v1, 0x50
    /* 8EEA8 8007FEF8 3C068015 */  lui        $a2, %hi(D_8014ECCC)
    /* 8EEAC 8007FEFC 8CC6ECCC */  lw         $a2, %lo(D_8014ECCC)($a2)
    /* 8EEB0 8007FF00 3C128015 */  lui        $s2, %hi(D_8014D510)
    /* 8EEB4 8007FF04 2652D510 */  addiu      $s2, $s2, %lo(D_8014D510)
    /* 8EEB8 8007FF08 10C00027 */  beqz       $a2, .L8007FFA8_8EF58
    /* 8EEBC 8007FF0C 00008825 */   or        $s1, $zero, $zero
    /* 8EEC0 8007FF10 3C158005 */  lui        $s5, %hi(alienInstances)
    /* 8EEC4 8007FF14 26B58198 */  addiu      $s5, $s5, %lo(alienInstances)
  .L8007FF18_8EEC8:
    /* 8EEC8 8007FF18 92440000 */  lbu        $a0, 0x0($s2)
    /* 8EECC 8007FF1C 00044880 */  sll        $t1, $a0, 2
    /* 8EED0 8007FF20 01244821 */  addu       $t1, $t1, $a0
    /* 8EED4 8007FF24 00094900 */  sll        $t1, $t1, 4
    /* 8EED8 8007FF28 02A91021 */  addu       $v0, $s5, $t1
    /* 8EEDC 8007FF2C 9045001A */  lbu        $a1, 0x1A($v0)
    /* 8EEE0 8007FF30 00B40019 */  multu      $a1, $s4
    /* 8EEE4 8007FF34 28A10003 */  slti       $at, $a1, 0x3
    /* 8EEE8 8007FF38 00005012 */  mflo       $t2
    /* 8EEEC 8007FF3C 026A5821 */  addu       $t3, $s3, $t2
    /* 8EEF0 8007FF40 8D6D0054 */  lw         $t5, 0x54($t3)
    /* 8EEF4 8007FF44 31AC003E */  andi       $t4, $t5, 0x3E
    /* 8EEF8 8007FF48 11800007 */  beqz       $t4, .L8007FF68_8EF18
    /* 8EEFC 8007FF4C 00000000 */   nop
    /* 8EF00 8007FF50 10200007 */  beqz       $at, .L8007FF70_8EF20
    /* 8EF04 8007FF54 2419FFFF */   addiu     $t9, $zero, -0x1
    /* 8EF08 8007FF58 8C4E0020 */  lw         $t6, 0x20($v0)
    /* 8EF0C 8007FF5C 000E7AC0 */  sll        $t7, $t6, 11
    /* 8EF10 8007FF60 05E10003 */  bgez       $t7, .L8007FF70_8EF20
    /* 8EF14 8007FF64 00000000 */   nop
  .L8007FF68_8EF18:
    /* 8EF18 8007FF68 1000000B */  b          .L8007FF98_8EF48
    /* 8EF1C 8007FF6C 26300001 */   addiu     $s0, $s1, 0x1
  .L8007FF70_8EF20:
    /* 8EF20 8007FF70 3C018015 */  lui        $at, %hi(D_8014ECD8)
    /* 8EF24 8007FF74 AC39ECD8 */  sw         $t9, %lo(D_8014ECD8)($at)
    /* 8EF28 8007FF78 3C018015 */  lui        $at, %hi(D_8014D304)
    /* 8EF2C 8007FF7C 26300001 */  addiu      $s0, $s1, 0x1
    /* 8EF30 8007FF80 AC20D304 */  sw         $zero, %lo(D_8014D304)($at)
    /* 8EF34 8007FF84 320500FF */  andi       $a1, $s0, 0xFF
    /* 8EF38 8007FF88 0C01FC3A */  jal        func_8007F0E8_8E098
    /* 8EF3C 8007FF8C 24060001 */   addiu     $a2, $zero, 0x1
    /* 8EF40 8007FF90 3C068015 */  lui        $a2, %hi(D_8014ECCC)
    /* 8EF44 8007FF94 8CC6ECCC */  lw         $a2, %lo(D_8014ECCC)($a2)
  .L8007FF98_8EF48:
    /* 8EF48 8007FF98 0206082B */  sltu       $at, $s0, $a2
    /* 8EF4C 8007FF9C 02008825 */  or         $s1, $s0, $zero
    /* 8EF50 8007FFA0 1420FFDD */  bnez       $at, .L8007FF18_8EEC8
    /* 8EF54 8007FFA4 26520001 */   addiu     $s2, $s2, 0x1
  .L8007FFA8_8EF58:
    /* 8EF58 8007FFA8 3C158005 */  lui        $s5, %hi(alienInstances)
    /* 8EF5C 8007FFAC 3C038005 */  lui        $v1, %hi(alienInstances)
    /* 8EF60 8007FFB0 3C078005 */  lui        $a3, %hi(D_8004D148)
    /* 8EF64 8007FFB4 26B58198 */  addiu      $s5, $s5, %lo(alienInstances)
    /* 8EF68 8007FFB8 24E7D148 */  addiu      $a3, $a3, %lo(D_8004D148)
    /* 8EF6C 8007FFBC 24638198 */  addiu      $v1, $v1, %lo(alienInstances)
    /* 8EF70 8007FFC0 9065001A */  lbu        $a1, 0x1A($v1)
  .L8007FFC4_8EF74:
    /* 8EF74 8007FFC4 00B40019 */  multu      $a1, $s4
    /* 8EF78 8007FFC8 0000C012 */  mflo       $t8
    /* 8EF7C 8007FFCC 02784021 */  addu       $t0, $s3, $t8
    /* 8EF80 8007FFD0 8D040054 */  lw         $a0, 0x54($t0)
    /* 8EF84 8007FFD4 3089003E */  andi       $t1, $a0, 0x3E
    /* 8EF88 8007FFD8 51200010 */  beql       $t1, $zero, .L8008001C_8EFCC
    /* 8EF8C 8007FFDC 24630050 */   addiu     $v1, $v1, 0x50
    /* 8EF90 8007FFE0 50A0000E */  beql       $a1, $zero, .L8008001C_8EFCC
    /* 8EF94 8007FFE4 24630050 */   addiu     $v1, $v1, 0x50
    /* 8EF98 8007FFE8 90620047 */  lbu        $v0, 0x47($v1)
    /* 8EF9C 8007FFEC 308D2000 */  andi       $t5, $a0, 0x2000
    /* 8EFA0 8007FFF0 304A000E */  andi       $t2, $v0, 0xE
    /* 8EFA4 8007FFF4 11400008 */  beqz       $t2, .L80080018_8EFC8
    /* 8EFA8 8007FFF8 344B0001 */   ori       $t3, $v0, 0x1
    /* 8EFAC 8007FFFC 15A00006 */  bnez       $t5, .L80080018_8EFC8
    /* 8EFB0 80080000 A06B0047 */   sb        $t3, 0x47($v1)
    /* 8EFB4 80080004 8C6C0020 */  lw         $t4, 0x20($v1)
    /* 8EFB8 80080008 846F0006 */  lh         $t7, 0x6($v1)
    /* 8EFBC 8008000C 01967024 */  and        $t6, $t4, $s6
    /* 8EFC0 80080010 AC6E0020 */  sw         $t6, 0x20($v1)
    /* 8EFC4 80080014 A46F000E */  sh         $t7, 0xE($v1)
  .L80080018_8EFC8:
    /* 8EFC8 80080018 24630050 */  addiu      $v1, $v1, 0x50
  .L8008001C_8EFCC:
    /* 8EFCC 8008001C 0067082B */  sltu       $at, $v1, $a3
    /* 8EFD0 80080020 5420FFE8 */  bnel       $at, $zero, .L8007FFC4_8EF74
    /* 8EFD4 80080024 9065001A */   lbu       $a1, 0x1A($v1)
    /* 8EFD8 80080028 10C00022 */  beqz       $a2, .L800800B4_8F064
    /* 8EFDC 8008002C 00008825 */   or        $s1, $zero, $zero
    /* 8EFE0 80080030 3C128015 */  lui        $s2, %hi(D_8014D510)
    /* 8EFE4 80080034 2652D510 */  addiu      $s2, $s2, %lo(D_8014D510)
  .L80080038_8EFE8:
    /* 8EFE8 80080038 92420000 */  lbu        $v0, 0x0($s2)
    /* 8EFEC 8008003C 0002C880 */  sll        $t9, $v0, 2
    /* 8EFF0 80080040 0322C821 */  addu       $t9, $t9, $v0
    /* 8EFF4 80080044 0019C900 */  sll        $t9, $t9, 4
    /* 8EFF8 80080048 02B98021 */  addu       $s0, $s5, $t9
    /* 8EFFC 8008004C 92180047 */  lbu        $t8, 0x47($s0)
    /* 8F000 80080050 33080080 */  andi       $t0, $t8, 0x80
    /* 8F004 80080054 51000014 */  beql       $t0, $zero, .L800800A8_8F058
    /* 8F008 80080058 26310001 */   addiu     $s1, $s1, 0x1
    /* 8F00C 8008005C 0C01E9AD */  jal        func_8007A6B4_89664
    /* 8F010 80080060 304400FF */   andi      $a0, $v0, 0xFF
    /* 8F014 80080064 92090047 */  lbu        $t1, 0x47($s0)
    /* 8F018 80080068 02202025 */  or         $a0, $s1, $zero
    /* 8F01C 8008006C 312AFF7F */  andi       $t2, $t1, 0xFF7F
    /* 8F020 80080070 0C01E93E */  jal        func_8007A4F8_894A8
    /* 8F024 80080074 A20A0047 */   sb        $t2, 0x47($s0)
    /* 8F028 80080078 10400006 */  beqz       $v0, .L80080094_8F044
    /* 8F02C 8008007C 3C048014 */   lui       $a0, %hi(D_80141D50)
    /* 8F030 80080080 3C068015 */  lui        $a2, %hi(D_8014ECCC)
    /* 8F034 80080084 8CC6ECCC */  lw         $a2, %lo(D_8014ECCC)($a2)
    /* 8F038 80080088 2631FFFF */  addiu      $s1, $s1, -0x1
    /* 8F03C 8008008C 10000005 */  b          .L800800A4_8F054
    /* 8F040 80080090 2652FFFF */   addiu     $s2, $s2, -0x1
  .L80080094_8F044:
    /* 8F044 80080094 0C00731B */  jal        osSyncPrintf
    /* 8F048 80080098 24841D50 */   addiu     $a0, $a0, %lo(D_80141D50)
    /* 8F04C 8008009C 3C068015 */  lui        $a2, %hi(D_8014ECCC)
    /* 8F050 800800A0 8CC6ECCC */  lw         $a2, %lo(D_8014ECCC)($a2)
  .L800800A4_8F054:
    /* 8F054 800800A4 26310001 */  addiu      $s1, $s1, 0x1
  .L800800A8_8F058:
    /* 8F058 800800A8 0226082B */  sltu       $at, $s1, $a2
    /* 8F05C 800800AC 1420FFE2 */  bnez       $at, .L80080038_8EFE8
    /* 8F060 800800B0 26520001 */   addiu     $s2, $s2, 0x1
  .L800800B4_8F064:
    /* 8F064 800800B4 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 8F068 800800B8 8FB00018 */  lw         $s0, 0x18($sp)
    /* 8F06C 800800BC 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 8F070 800800C0 8FB20020 */  lw         $s2, 0x20($sp)
    /* 8F074 800800C4 8FB30024 */  lw         $s3, 0x24($sp)
    /* 8F078 800800C8 8FB40028 */  lw         $s4, 0x28($sp)
    /* 8F07C 800800CC 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 8F080 800800D0 8FB60030 */  lw         $s6, 0x30($sp)
    /* 8F084 800800D4 03E00008 */  jr         $ra
    /* 8F088 800800D8 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_8007FDD8_8ED88
