nonmatching func_800CDBF4_DCBA4, 0x188

glabel func_800CDBF4_DCBA4
    /* DCBA4 800CDBF4 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* DCBA8 800CDBF8 AFB2002C */  sw         $s2, 0x2C($sp)
    /* DCBAC 800CDBFC 3C128015 */  lui        $s2, %hi(D_8015426A)
    /* DCBB0 800CDC00 8652426A */  lh         $s2, %lo(D_8015426A)($s2)
    /* DCBB4 800CDC04 AFB6003C */  sw         $s6, 0x3C($sp)
    /* DCBB8 800CDC08 2416FFFB */  addiu      $s6, $zero, -0x5
    /* DCBBC 800CDC0C AFBF0044 */  sw         $ra, 0x44($sp)
    /* DCBC0 800CDC10 AFB70040 */  sw         $s7, 0x40($sp)
    /* DCBC4 800CDC14 AFB50038 */  sw         $s5, 0x38($sp)
    /* DCBC8 800CDC18 AFB40034 */  sw         $s4, 0x34($sp)
    /* DCBCC 800CDC1C AFB30030 */  sw         $s3, 0x30($sp)
    /* DCBD0 800CDC20 AFB10028 */  sw         $s1, 0x28($sp)
    /* DCBD4 800CDC24 AFB00024 */  sw         $s0, 0x24($sp)
    /* DCBD8 800CDC28 12560003 */  beq        $s2, $s6, .L800CDC38_DCBE8
    /* DCBDC 800CDC2C F7B40018 */   sdc1      $f20, 0x18($sp)
    /* DCBE0 800CDC30 2417FFFA */  addiu      $s7, $zero, -0x6
    /* DCBE4 800CDC34 16570005 */  bne        $s2, $s7, .L800CDC4C_DCBFC
  .L800CDC38_DCBE8:
    /* DCBE8 800CDC38 24040009 */   addiu     $a0, $zero, 0x9
    /* DCBEC 800CDC3C 0C030506 */  jal        func_800C1418_D03C8
    /* DCBF0 800CDC40 24050001 */   addiu     $a1, $zero, 0x1
    /* DCBF4 800CDC44 10000042 */  b          .L800CDD50_DCD00
    /* DCBF8 800CDC48 8FBF0044 */   lw        $ra, 0x44($sp)
  .L800CDC4C_DCBFC:
    /* DCBFC 800CDC4C 52560040 */  beql       $s2, $s6, .L800CDD50_DCD00
    /* DCC00 800CDC50 8FBF0044 */   lw        $ra, 0x44($sp)
    /* DCC04 800CDC54 1257003D */  beq        $s2, $s7, .L800CDD4C_DCCFC
    /* DCC08 800CDC58 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
    /* DCC0C 800CDC5C 3C138015 */  lui        $s3, %hi(D_80154318)
    /* DCC10 800CDC60 4481A000 */  mtc1       $at, $f20
    /* DCC14 800CDC64 26734318 */  addiu      $s3, $s3, %lo(D_80154318)
    /* DCC18 800CDC68 24150001 */  addiu      $s5, $zero, 0x1
    /* DCC1C 800CDC6C 2414001C */  addiu      $s4, $zero, 0x1C
  .L800CDC70_DCC20:
    /* DCC20 800CDC70 02540019 */  multu      $s2, $s4
    /* DCC24 800CDC74 00007012 */  mflo       $t6
    /* DCC28 800CDC78 026E8821 */  addu       $s1, $s3, $t6
    /* DCC2C 800CDC7C 922F0011 */  lbu        $t7, 0x11($s1)
    /* DCC30 800CDC80 26300008 */  addiu      $s0, $s1, 0x8
    /* DCC34 800CDC84 02002025 */  or         $a0, $s0, $zero
    /* DCC38 800CDC88 56AF0004 */  bnel       $s5, $t7, .L800CDC9C_DCC4C
    /* DCC3C 800CDC8C 86180006 */   lh        $t8, 0x6($s0)
    /* DCC40 800CDC90 1000002A */  b          .L800CDD3C_DCCEC
    /* DCC44 800CDC94 86320004 */   lh        $s2, 0x4($s1)
    /* DCC48 800CDC98 86180006 */  lh         $t8, 0x6($s0)
  .L800CDC9C_DCC4C:
    /* DCC4C 800CDC9C 24072711 */  addiu      $a3, $zero, 0x2711
    /* DCC50 800CDCA0 24190300 */  addiu      $t9, $zero, 0x300
    /* DCC54 800CDCA4 1700001B */  bnez       $t8, .L800CDD14_DCCC4
    /* DCC58 800CDCA8 240500FE */   addiu     $a1, $zero, 0xFE
    /* DCC5C 800CDCAC 86040000 */  lh         $a0, 0x0($s0)
    /* DCC60 800CDCB0 86050002 */  lh         $a1, 0x2($s0)
    /* DCC64 800CDCB4 86060004 */  lh         $a2, 0x4($s0)
    /* DCC68 800CDCB8 AFA00014 */  sw         $zero, 0x14($sp)
    /* DCC6C 800CDCBC 0C04905C */  jal        func_80124170_133120
    /* DCC70 800CDCC0 AFB90010 */   sw        $t9, 0x10($sp)
    /* DCC74 800CDCC4 86040000 */  lh         $a0, 0x0($s0)
    /* DCC78 800CDCC8 86050002 */  lh         $a1, 0x2($s0)
    /* DCC7C 800CDCCC 86060004 */  lh         $a2, 0x4($s0)
    /* DCC80 800CDCD0 24080006 */  addiu      $t0, $zero, 0x6
    /* DCC84 800CDCD4 AFA80010 */  sw         $t0, 0x10($sp)
    /* DCC88 800CDCD8 0C037EEA */  jal        func_800DFBA8_EEB58
    /* DCC8C 800CDCDC 240700B4 */   addiu     $a3, $zero, 0xB4
    /* DCC90 800CDCE0 0C0377C6 */  jal        func_800DDF18_ECEC8
    /* DCC94 800CDCE4 92040008 */   lbu       $a0, 0x8($s0)
    /* DCC98 800CDCE8 00122400 */  sll        $a0, $s2, 16
    /* DCC9C 800CDCEC 00044C03 */  sra        $t1, $a0, 16
    /* DCCA0 800CDCF0 86300004 */  lh         $s0, 0x4($s1)
    /* DCCA4 800CDCF4 01202025 */  or         $a0, $t1, $zero
    /* DCCA8 800CDCF8 24050009 */  addiu      $a1, $zero, 0x9
    /* DCCAC 800CDCFC 0C030693 */  jal        func_800C1A4C_D09FC
    /* DCCB0 800CDD00 02A03025 */   or        $a2, $s5, $zero
    /* DCCB4 800CDD04 00109400 */  sll        $s2, $s0, 16
    /* DCCB8 800CDD08 00125403 */  sra        $t2, $s2, 16
    /* DCCBC 800CDD0C 1000000B */  b          .L800CDD3C_DCCEC
    /* DCCC0 800CDD10 01409025 */   or        $s2, $t2, $zero
  .L800CDD14_DCCC4:
    /* DCCC4 800CDD14 848B0006 */  lh         $t3, 0x6($a0)
    /* DCCC8 800CDD18 848D0004 */  lh         $t5, 0x4($a0)
    /* DCCCC 800CDD1C 84860000 */  lh         $a2, 0x0($a0)
    /* DCCD0 800CDD20 256CFFFF */  addiu      $t4, $t3, -0x1
    /* DCCD4 800CDD24 A48C0006 */  sh         $t4, 0x6($a0)
    /* DCCD8 800CDD28 84870002 */  lh         $a3, 0x2($a0)
    /* DCCDC 800CDD2C 86320004 */  lh         $s2, 0x4($s1)
    /* DCCE0 800CDD30 E7B40014 */  swc1       $f20, 0x14($sp)
    /* DCCE4 800CDD34 0C04DC6E */  jal        func_801371B8_146168
    /* DCCE8 800CDD38 AFAD0010 */   sw        $t5, 0x10($sp)
  .L800CDD3C_DCCEC:
    /* DCCEC 800CDD3C 52560004 */  beql       $s2, $s6, .L800CDD50_DCD00
    /* DCCF0 800CDD40 8FBF0044 */   lw        $ra, 0x44($sp)
    /* DCCF4 800CDD44 1657FFCA */  bne        $s2, $s7, .L800CDC70_DCC20
    /* DCCF8 800CDD48 00000000 */   nop
  .L800CDD4C_DCCFC:
    /* DCCFC 800CDD4C 8FBF0044 */  lw         $ra, 0x44($sp)
  .L800CDD50_DCD00:
    /* DCD00 800CDD50 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* DCD04 800CDD54 8FB00024 */  lw         $s0, 0x24($sp)
    /* DCD08 800CDD58 8FB10028 */  lw         $s1, 0x28($sp)
    /* DCD0C 800CDD5C 8FB2002C */  lw         $s2, 0x2C($sp)
    /* DCD10 800CDD60 8FB30030 */  lw         $s3, 0x30($sp)
    /* DCD14 800CDD64 8FB40034 */  lw         $s4, 0x34($sp)
    /* DCD18 800CDD68 8FB50038 */  lw         $s5, 0x38($sp)
    /* DCD1C 800CDD6C 8FB6003C */  lw         $s6, 0x3C($sp)
    /* DCD20 800CDD70 8FB70040 */  lw         $s7, 0x40($sp)
    /* DCD24 800CDD74 03E00008 */  jr         $ra
    /* DCD28 800CDD78 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_800CDBF4_DCBA4
