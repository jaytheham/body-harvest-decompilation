nonmatching func_800ACE40_BBDF0, 0x15C

glabel func_800ACE40_BBDF0
    /* BBDF0 800ACE40 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* BBDF4 800ACE44 AFB10018 */  sw         $s1, 0x18($sp)
    /* BBDF8 800ACE48 309100FF */  andi       $s1, $a0, 0xFF
    /* BBDFC 800ACE4C 00117080 */  sll        $t6, $s1, 2
    /* BBE00 800ACE50 01D17021 */  addu       $t6, $t6, $s1
    /* BBE04 800ACE54 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* BBE08 800ACE58 AFB00014 */  sw         $s0, 0x14($sp)
    /* BBE0C 800ACE5C 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* BBE10 800ACE60 000E7100 */  sll        $t6, $t6, 4
    /* BBE14 800ACE64 01CF8021 */  addu       $s0, $t6, $t7
    /* BBE18 800ACE68 8E180020 */  lw         $t8, 0x20($s0)
    /* BBE1C 800ACE6C AFBF001C */  sw         $ra, 0x1C($sp)
    /* BBE20 800ACE70 AFA40020 */  sw         $a0, 0x20($sp)
    /* BBE24 800ACE74 0018C840 */  sll        $t9, $t8, 1
    /* BBE28 800ACE78 07220044 */  bltzl      $t9, .L800ACF8C_BBF3C
    /* BBE2C 800ACE7C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* BBE30 800ACE80 86080048 */  lh         $t0, 0x48($s0)
    /* BBE34 800ACE84 322400FF */  andi       $a0, $s1, 0xFF
    /* BBE38 800ACE88 0C02B28F */  jal        func_800ACA3C_BB9EC
    /* BBE3C 800ACE8C A6080012 */   sh        $t0, 0x12($s0)
    /* BBE40 800ACE90 5040003E */  beql       $v0, $zero, .L800ACF8C_BBF3C
    /* BBE44 800ACE94 8FBF001C */   lw        $ra, 0x1C($sp)
    /* BBE48 800ACE98 0C000E38 */  jal        func_800038E0_44E0
    /* BBE4C 800ACE9C 00000000 */   nop
    /* BBE50 800ACEA0 8609000E */  lh         $t1, 0xE($s0)
    /* BBE54 800ACEA4 920D0024 */  lbu        $t5, 0x24($s0)
    /* BBE58 800ACEA8 00025203 */  sra        $t2, $v0, 8
    /* BBE5C 800ACEAC 012A5821 */  addu       $t3, $t1, $t2
    /* BBE60 800ACEB0 256CFF80 */  addiu      $t4, $t3, -0x80
    /* BBE64 800ACEB4 11A00007 */  beqz       $t5, .L800ACED4_BBE84
    /* BBE68 800ACEB8 A60C000E */   sh        $t4, 0xE($s0)
    /* BBE6C 800ACEBC 0C02AF32 */  jal        func_800ABCC8_BAC78
    /* BBE70 800ACEC0 322400FF */   andi      $a0, $s1, 0xFF
    /* BBE74 800ACEC4 10400011 */  beqz       $v0, .L800ACF0C_BBEBC
    /* BBE78 800ACEC8 00000000 */   nop
    /* BBE7C 800ACECC 1000002F */  b          .L800ACF8C_BBF3C
    /* BBE80 800ACED0 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800ACED4_BBE84:
    /* BBE84 800ACED4 8E0E0020 */  lw         $t6, 0x20($s0)
    /* BBE88 800ACED8 31CF1000 */  andi       $t7, $t6, 0x1000
    /* BBE8C 800ACEDC 15E0000B */  bnez       $t7, .L800ACF0C_BBEBC
    /* BBE90 800ACEE0 00000000 */   nop
    /* BBE94 800ACEE4 0C02AFF0 */  jal        func_800ABFC0_BAF70
    /* BBE98 800ACEE8 322400FF */   andi      $a0, $s1, 0xFF
    /* BBE9C 800ACEEC 0C02B16F */  jal        func_800AC5BC_BB56C
    /* BBEA0 800ACEF0 322400FF */   andi      $a0, $s1, 0xFF
    /* BBEA4 800ACEF4 8E020020 */  lw         $v0, 0x20($s0)
    /* BBEA8 800ACEF8 0002C000 */  sll        $t8, $v0, 0
    /* BBEAC 800ACEFC 07010022 */  bgez       $t8, .L800ACF88_BBF38
    /* BBEB0 800ACF00 34591000 */   ori       $t9, $v0, 0x1000
    /* BBEB4 800ACF04 10000020 */  b          .L800ACF88_BBF38
    /* BBEB8 800ACF08 AE190020 */   sw        $t9, 0x20($s0)
  .L800ACF0C_BBEBC:
    /* BBEBC 800ACF0C 0C02B019 */  jal        func_800AC064_BB014
    /* BBEC0 800ACF10 322400FF */   andi      $a0, $s1, 0xFF
    /* BBEC4 800ACF14 8E020020 */  lw         $v0, 0x20($s0)
    /* BBEC8 800ACF18 3C010800 */  lui        $at, (0x80000A0 >> 16)
    /* BBECC 800ACF1C 342100A0 */  ori        $at, $at, (0x80000A0 & 0xFFFF)
    /* BBED0 800ACF20 30480100 */  andi       $t0, $v0, 0x100
    /* BBED4 800ACF24 1100000F */  beqz       $t0, .L800ACF64_BBF14
    /* BBED8 800ACF28 00414824 */   and       $t1, $v0, $at
    /* BBEDC 800ACF2C 1520000D */  bnez       $t1, .L800ACF64_BBF14
    /* BBEE0 800ACF30 322400FF */   andi      $a0, $s1, 0xFF
    /* BBEE4 800ACF34 0C020210 */  jal        func_80080840_8F7F0
    /* BBEE8 800ACF38 24050014 */   addiu     $a1, $zero, 0x14
    /* BBEEC 800ACF3C 10400009 */  beqz       $v0, .L800ACF64_BBF14
    /* BBEF0 800ACF40 02202825 */   or        $a1, $s1, $zero
    /* BBEF4 800ACF44 0C046D61 */  jal        func_8011B584_12A534
    /* BBEF8 800ACF48 86040038 */   lh        $a0, 0x38($s0)
    /* BBEFC 800ACF4C 54400006 */  bnel       $v0, $zero, .L800ACF68_BBF18
    /* BBF00 800ACF50 322400FF */   andi      $a0, $s1, 0xFF
    /* BBF04 800ACF54 8E0A0020 */  lw         $t2, 0x20($s0)
    /* BBF08 800ACF58 2401FE5F */  addiu      $at, $zero, -0x1A1
    /* BBF0C 800ACF5C 01415824 */  and        $t3, $t2, $at
    /* BBF10 800ACF60 AE0B0020 */  sw         $t3, 0x20($s0)
  .L800ACF64_BBF14:
    /* BBF14 800ACF64 322400FF */  andi       $a0, $s1, 0xFF
  .L800ACF68_BBF18:
    /* BBF18 800ACF68 0C02023C */  jal        func_800808F0_8F8A0
    /* BBF1C 800ACF6C 2605000E */   addiu     $a1, $s0, 0xE
    /* BBF20 800ACF70 0C02B0BF */  jal        func_800AC2FC_BB2AC
    /* BBF24 800ACF74 322400FF */   andi      $a0, $s1, 0xFF
    /* BBF28 800ACF78 50400004 */  beql       $v0, $zero, .L800ACF8C_BBF3C
    /* BBF2C 800ACF7C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* BBF30 800ACF80 0C02B2CF */  jal        func_800ACB3C_BBAEC
    /* BBF34 800ACF84 322400FF */   andi      $a0, $s1, 0xFF
  .L800ACF88_BBF38:
    /* BBF38 800ACF88 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800ACF8C_BBF3C:
    /* BBF3C 800ACF8C 8FB00014 */  lw         $s0, 0x14($sp)
    /* BBF40 800ACF90 8FB10018 */  lw         $s1, 0x18($sp)
    /* BBF44 800ACF94 03E00008 */  jr         $ra
    /* BBF48 800ACF98 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_800ACE40_BBDF0
