nonmatching func_80084980_16CA40, 0x298

glabel func_80084980_16CA40
    /* 16CA40 80084980 308E00FF */  andi       $t6, $a0, 0xFF
    /* 16CA44 80084984 000EC080 */  sll        $t8, $t6, 2
    /* 16CA48 80084988 030EC023 */  subu       $t8, $t8, $t6
    /* 16CA4C 8008498C 0018C080 */  sll        $t8, $t8, 2
    /* 16CA50 80084990 3C198010 */  lui        $t9, %hi(D_800FB6FE)
    /* 16CA54 80084994 0338C821 */  addu       $t9, $t9, $t8
    /* 16CA58 80084998 8739B6FE */  lh         $t9, %lo(D_800FB6FE)($t9)
    /* 16CA5C 8008499C 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 16CA60 800849A0 3C098010 */  lui        $t1, %hi(D_800FB7B0)
    /* 16CA64 800849A4 00194080 */  sll        $t0, $t9, 2
    /* 16CA68 800849A8 01194023 */  subu       $t0, $t0, $t9
    /* 16CA6C 800849AC 00084080 */  sll        $t0, $t0, 2
    /* 16CA70 800849B0 01194023 */  subu       $t0, $t0, $t9
    /* 16CA74 800849B4 00084040 */  sll        $t0, $t0, 1
    /* 16CA78 800849B8 2529B7B0 */  addiu      $t1, $t1, %lo(D_800FB7B0)
    /* 16CA7C 800849BC 01091021 */  addu       $v0, $t0, $t1
    /* 16CA80 800849C0 844B0002 */  lh         $t3, 0x2($v0)
    /* 16CA84 800849C4 30AF00FF */  andi       $t7, $a1, 0xFF
    /* 16CA88 800849C8 244A0008 */  addiu      $t2, $v0, 0x8
    /* 16CA8C 800849CC 240100FB */  addiu      $at, $zero, 0xFB
    /* 16CA90 800849D0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 16CA94 800849D4 AFB10018 */  sw         $s1, 0x18($sp)
    /* 16CA98 800849D8 AFB00014 */  sw         $s0, 0x14($sp)
    /* 16CA9C 800849DC AFA40038 */  sw         $a0, 0x38($sp)
    /* 16CAA0 800849E0 AFA5003C */  sw         $a1, 0x3C($sp)
    /* 16CAA4 800849E4 AFAA0030 */  sw         $t2, 0x30($sp)
    /* 16CAA8 800849E8 11E10086 */  beq        $t7, $at, .L80084C04_16CCC4
    /* 16CAAC 800849EC A7AB002E */   sh        $t3, 0x2E($sp)
    /* 16CAB0 800849F0 0C020CE4 */  jal        func_80083390_16B450
    /* 16CAB4 800849F4 31E400FF */   andi      $a0, $t7, 0xFF
    /* 16CAB8 800849F8 00028400 */  sll        $s0, $v0, 16
    /* 16CABC 800849FC 00106403 */  sra        $t4, $s0, 16
    /* 16CAC0 80084A00 2401FFFD */  addiu      $at, $zero, -0x3
    /* 16CAC4 80084A04 1041007F */  beq        $v0, $at, .L80084C04_16CCC4
    /* 16CAC8 80084A08 01808025 */   or        $s0, $t4, $zero
    /* 16CACC 80084A0C 0C000E38 */  jal        func_800038E0_44E0
    /* 16CAD0 80084A10 00000000 */   nop
    /* 16CAD4 80084A14 87B1002E */  lh         $s1, 0x2E($sp)
    /* 16CAD8 80084A18 00106880 */  sll        $t5, $s0, 2
    /* 16CADC 80084A1C 01B06823 */  subu       $t5, $t5, $s0
    /* 16CAE0 80084A20 000D6880 */  sll        $t5, $t5, 2
    /* 16CAE4 80084A24 01B06823 */  subu       $t5, $t5, $s0
    /* 16CAE8 80084A28 3C0E8010 */  lui        $t6, %hi(D_800FB7B0)
    /* 16CAEC 80084A2C 25CEB7B0 */  addiu      $t6, $t6, %lo(D_800FB7B0)
    /* 16CAF0 80084A30 000D6840 */  sll        $t5, $t5, 1
    /* 16CAF4 80084A34 01AE1821 */  addu       $v1, $t5, $t6
    /* 16CAF8 80084A38 06210003 */  bgez       $s1, .L80084A48_16CB08
    /* 16CAFC 80084A3C 00117883 */   sra       $t7, $s1, 2
    /* 16CB00 80084A40 26210003 */  addiu      $at, $s1, 0x3
    /* 16CB04 80084A44 00017883 */  sra        $t7, $at, 2
  .L80084A48_16CB08:
    /* 16CB08 80084A48 24010005 */  addiu      $at, $zero, 0x5
    /* 16CB0C 80084A4C 0041001A */  div        $zero, $v0, $at
    /* 16CB10 80084A50 0000C810 */  mfhi       $t9
    /* 16CB14 80084A54 31F8FFFF */  andi       $t8, $t7, 0xFFFF
    /* 16CB18 80084A58 03384021 */  addu       $t0, $t9, $t8
    /* 16CB1C 80084A5C A4680002 */  sh         $t0, 0x2($v1)
    /* 16CB20 80084A60 03008825 */  or         $s1, $t8, $zero
    /* 16CB24 80084A64 0C000E38 */  jal        func_800038E0_44E0
    /* 16CB28 80084A68 AFA30024 */   sw        $v1, 0x24($sp)
    /* 16CB2C 80084A6C 87A9002E */  lh         $t1, 0x2E($sp)
    /* 16CB30 80084A70 8FAC0030 */  lw         $t4, 0x30($sp)
    /* 16CB34 80084A74 8FA30024 */  lw         $v1, 0x24($sp)
    /* 16CB38 80084A78 0049001A */  div        $zero, $v0, $t1
    /* 16CB3C 80084A7C 858D0000 */  lh         $t5, 0x0($t4)
    /* 16CB40 80084A80 00005010 */  mfhi       $t2
    /* 16CB44 80084A84 24700008 */  addiu      $s0, $v1, 0x8
    /* 16CB48 80084A88 15200002 */  bnez       $t1, .L80084A94_16CB54
    /* 16CB4C 80084A8C 00000000 */   nop
    /* 16CB50 80084A90 0007000D */  break      7
  .L80084A94_16CB54:
    /* 16CB54 80084A94 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16CB58 80084A98 15210004 */  bne        $t1, $at, .L80084AAC_16CB6C
    /* 16CB5C 80084A9C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16CB60 80084AA0 14410002 */  bne        $v0, $at, .L80084AAC_16CB6C
    /* 16CB64 80084AA4 00000000 */   nop
    /* 16CB68 80084AA8 0006000D */  break      6
  .L80084AAC_16CB6C:
    /* 16CB6C 80084AAC 05410003 */  bgez       $t2, .L80084ABC_16CB7C
    /* 16CB70 80084AB0 000A5843 */   sra       $t3, $t2, 1
    /* 16CB74 80084AB4 25410001 */  addiu      $at, $t2, 0x1
    /* 16CB78 80084AB8 00015843 */  sra        $t3, $at, 1
  .L80084ABC_16CB7C:
    /* 16CB7C 80084ABC 016D7021 */  addu       $t6, $t3, $t5
    /* 16CB80 80084AC0 01D17823 */  subu       $t7, $t6, $s1
    /* 16CB84 80084AC4 0C000E38 */  jal        func_800038E0_44E0
    /* 16CB88 80084AC8 A60F0000 */   sh        $t7, 0x0($s0)
    /* 16CB8C 80084ACC 2401000A */  addiu      $at, $zero, 0xA
    /* 16CB90 80084AD0 0041001A */  div        $zero, $v0, $at
    /* 16CB94 80084AD4 8FB90030 */  lw         $t9, 0x30($sp)
    /* 16CB98 80084AD8 0000C010 */  mfhi       $t8
    /* 16CB9C 80084ADC 87280002 */  lh         $t0, 0x2($t9)
    /* 16CBA0 80084AE0 03084821 */  addu       $t1, $t8, $t0
    /* 16CBA4 80084AE4 01315021 */  addu       $t2, $t1, $s1
    /* 16CBA8 80084AE8 0C000E38 */  jal        func_800038E0_44E0
    /* 16CBAC 80084AEC A60A0002 */   sh        $t2, 0x2($s0)
    /* 16CBB0 80084AF0 87AC002E */  lh         $t4, 0x2E($sp)
    /* 16CBB4 80084AF4 8FAE0030 */  lw         $t6, 0x30($sp)
    /* 16CBB8 80084AF8 2408003C */  addiu      $t0, $zero, 0x3C
    /* 16CBBC 80084AFC 004C001A */  div        $zero, $v0, $t4
    /* 16CBC0 80084B00 15800002 */  bnez       $t4, .L80084B0C_16CBCC
    /* 16CBC4 80084B04 00000000 */   nop
    /* 16CBC8 80084B08 0007000D */  break      7
  .L80084B0C_16CBCC:
    /* 16CBCC 80084B0C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16CBD0 80084B10 15810004 */  bne        $t4, $at, .L80084B24_16CBE4
    /* 16CBD4 80084B14 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16CBD8 80084B18 14410002 */  bne        $v0, $at, .L80084B24_16CBE4
    /* 16CBDC 80084B1C 00000000 */   nop
    /* 16CBE0 80084B20 0006000D */  break      6
  .L80084B24_16CBE4:
    /* 16CBE4 80084B24 85CF0004 */  lh         $t7, 0x4($t6)
    /* 16CBE8 80084B28 00005810 */  mfhi       $t3
    /* 16CBEC 80084B2C A2080009 */  sb         $t0, 0x9($s0)
    /* 16CBF0 80084B30 05610003 */  bgez       $t3, .L80084B40_16CC00
    /* 16CBF4 80084B34 000B6843 */   sra       $t5, $t3, 1
    /* 16CBF8 80084B38 25610001 */  addiu      $at, $t3, 0x1
    /* 16CBFC 80084B3C 00016843 */  sra        $t5, $at, 1
  .L80084B40_16CC00:
    /* 16CC00 80084B40 01AFC821 */  addu       $t9, $t5, $t7
    /* 16CC04 80084B44 0331C023 */  subu       $t8, $t9, $s1
    /* 16CC08 80084B48 A6180004 */  sh         $t8, 0x4($s0)
    /* 16CC0C 80084B4C 0C000E38 */  jal        func_800038E0_44E0
    /* 16CC10 80084B50 A200000A */   sb        $zero, 0xA($s0)
    /* 16CC14 80084B54 2411001E */  addiu      $s1, $zero, 0x1E
    /* 16CC18 80084B58 0051001A */  div        $zero, $v0, $s1
    /* 16CC1C 80084B5C 00004810 */  mfhi       $t1
    /* 16CC20 80084B60 252A00B4 */  addiu      $t2, $t1, 0xB4
    /* 16CC24 80084B64 16200002 */  bnez       $s1, .L80084B70_16CC30
    /* 16CC28 80084B68 00000000 */   nop
    /* 16CC2C 80084B6C 0007000D */  break      7
  .L80084B70_16CC30:
    /* 16CC30 80084B70 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16CC34 80084B74 16210004 */  bne        $s1, $at, .L80084B88_16CC48
    /* 16CC38 80084B78 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16CC3C 80084B7C 14410002 */  bne        $v0, $at, .L80084B88_16CC48
    /* 16CC40 80084B80 00000000 */   nop
    /* 16CC44 80084B84 0006000D */  break      6
  .L80084B88_16CC48:
    /* 16CC48 80084B88 A20A0006 */  sb         $t2, 0x6($s0)
    /* 16CC4C 80084B8C 0C000E38 */  jal        func_800038E0_44E0
    /* 16CC50 80084B90 00000000 */   nop
    /* 16CC54 80084B94 0051001A */  div        $zero, $v0, $s1
    /* 16CC58 80084B98 00006010 */  mfhi       $t4
    /* 16CC5C 80084B9C 258B00A0 */  addiu      $t3, $t4, 0xA0
    /* 16CC60 80084BA0 16200002 */  bnez       $s1, .L80084BAC_16CC6C
    /* 16CC64 80084BA4 00000000 */   nop
    /* 16CC68 80084BA8 0007000D */  break      7
  .L80084BAC_16CC6C:
    /* 16CC6C 80084BAC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16CC70 80084BB0 16210004 */  bne        $s1, $at, .L80084BC4_16CC84
    /* 16CC74 80084BB4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16CC78 80084BB8 14410002 */  bne        $v0, $at, .L80084BC4_16CC84
    /* 16CC7C 80084BBC 00000000 */   nop
    /* 16CC80 80084BC0 0006000D */  break      6
  .L80084BC4_16CC84:
    /* 16CC84 80084BC4 A20B0007 */  sb         $t3, 0x7($s0)
    /* 16CC88 80084BC8 0C000E38 */  jal        func_800038E0_44E0
    /* 16CC8C 80084BCC 00000000 */   nop
    /* 16CC90 80084BD0 0051001A */  div        $zero, $v0, $s1
    /* 16CC94 80084BD4 00007010 */  mfhi       $t6
    /* 16CC98 80084BD8 25CD00A0 */  addiu      $t5, $t6, 0xA0
    /* 16CC9C 80084BDC A20D0008 */  sb         $t5, 0x8($s0)
    /* 16CCA0 80084BE0 16200002 */  bnez       $s1, .L80084BEC_16CCAC
    /* 16CCA4 80084BE4 00000000 */   nop
    /* 16CCA8 80084BE8 0007000D */  break      7
  .L80084BEC_16CCAC:
    /* 16CCAC 80084BEC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 16CCB0 80084BF0 16210004 */  bne        $s1, $at, .L80084C04_16CCC4
    /* 16CCB4 80084BF4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 16CCB8 80084BF8 14410002 */  bne        $v0, $at, .L80084C04_16CCC4
    /* 16CCBC 80084BFC 00000000 */   nop
    /* 16CCC0 80084C00 0006000D */  break      6
  .L80084C04_16CCC4:
    /* 16CCC4 80084C04 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 16CCC8 80084C08 8FB00014 */  lw         $s0, 0x14($sp)
    /* 16CCCC 80084C0C 8FB10018 */  lw         $s1, 0x18($sp)
    /* 16CCD0 80084C10 03E00008 */  jr         $ra
    /* 16CCD4 80084C14 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_80084980_16CA40
