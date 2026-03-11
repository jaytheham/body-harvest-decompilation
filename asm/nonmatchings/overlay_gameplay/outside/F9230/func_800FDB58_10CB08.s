nonmatching func_800FDB58_10CB08, 0xD8

glabel func_800FDB58_10CB08
    /* 10CB08 800FDB58 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 10CB0C 800FDB5C AFB00020 */  sw         $s0, 0x20($sp)
    /* 10CB10 800FDB60 00808025 */  or         $s0, $a0, $zero
    /* 10CB14 800FDB64 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 10CB18 800FDB68 86060004 */  lh         $a2, 0x4($s0)
    /* 10CB1C 800FDB6C 86050002 */  lh         $a1, 0x2($s0)
    /* 10CB20 800FDB70 84840000 */  lh         $a0, 0x0($a0)
    /* 10CB24 800FDB74 3C070001 */  lui        $a3, (0x1D4C0 >> 16)
    /* 10CB28 800FDB78 240E0DAC */  addiu      $t6, $zero, 0xDAC
    /* 10CB2C 800FDB7C AFAE0010 */  sw         $t6, 0x10($sp)
    /* 10CB30 800FDB80 34E7D4C0 */  ori        $a3, $a3, (0x1D4C0 & 0xFFFF)
    /* 10CB34 800FDB84 0C04905C */  jal        func_80124170_133120
    /* 10CB38 800FDB88 AFB00014 */   sw        $s0, 0x14($sp)
    /* 10CB3C 800FDB8C 0C03F763 */  jal        func_800FDD8C_10CD3C
    /* 10CB40 800FDB90 02002025 */   or        $a0, $s0, $zero
    /* 10CB44 800FDB94 86040000 */  lh         $a0, 0x0($s0)
    /* 10CB48 800FDB98 86050002 */  lh         $a1, 0x2($s0)
    /* 10CB4C 800FDB9C 86060004 */  lh         $a2, 0x4($s0)
    /* 10CB50 800FDBA0 0C035AB7 */  jal        func_800D6ADC_E5A8C
    /* 10CB54 800FDBA4 24070005 */   addiu     $a3, $zero, 0x5
    /* 10CB58 800FDBA8 86040000 */  lh         $a0, 0x0($s0)
    /* 10CB5C 800FDBAC 86050004 */  lh         $a1, 0x4($s0)
    /* 10CB60 800FDBB0 00003025 */  or         $a2, $zero, $zero
    /* 10CB64 800FDBB4 00047A03 */  sra        $t7, $a0, 8
    /* 10CB68 800FDBB8 00054203 */  sra        $t0, $a1, 8
    /* 10CB6C 800FDBBC 00084C00 */  sll        $t1, $t0, 16
    /* 10CB70 800FDBC0 000FC400 */  sll        $t8, $t7, 16
    /* 10CB74 800FDBC4 00182403 */  sra        $a0, $t8, 16
    /* 10CB78 800FDBC8 0C02E3CC */  jal        func_800B8F30_C7EE0
    /* 10CB7C 800FDBCC 00092C03 */   sra       $a1, $t1, 16
    /* 10CB80 800FDBD0 24040000 */  addiu      $a0, $zero, 0x0
    /* 10CB84 800FDBD4 0C001CB3 */  jal        func_800072CC_7ECC
    /* 10CB88 800FDBD8 2405001C */   addiu     $a1, $zero, 0x1C
    /* 10CB8C 800FDBDC 3C0B8016 */  lui        $t3, %hi(D_80159316)
    /* 10CB90 800FDBE0 856B9316 */  lh         $t3, %lo(D_80159316)($t3)
    /* 10CB94 800FDBE4 3C0D8005 */  lui        $t5, %hi(D_8004DCF0)
    /* 10CB98 800FDBE8 24040050 */  addiu      $a0, $zero, 0x50
    /* 10CB9C 800FDBEC 000B6080 */  sll        $t4, $t3, 2
    /* 10CBA0 800FDBF0 018B6023 */  subu       $t4, $t4, $t3
    /* 10CBA4 800FDBF4 000C60C0 */  sll        $t4, $t4, 3
    /* 10CBA8 800FDBF8 018B6023 */  subu       $t4, $t4, $t3
    /* 10CBAC 800FDBFC 000C6080 */  sll        $t4, $t4, 2
    /* 10CBB0 800FDC00 01AC6821 */  addu       $t5, $t5, $t4
    /* 10CBB4 800FDC04 95ADDCF0 */  lhu        $t5, %lo(D_8004DCF0)($t5)
    /* 10CBB8 800FDC08 31AE8000 */  andi       $t6, $t5, 0x8000
    /* 10CBBC 800FDC0C 55C00004 */  bnel       $t6, $zero, .L800FDC20_10CBD0
    /* 10CBC0 800FDC10 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 10CBC4 800FDC14 0C001B6B */  jal        func_80006DAC_79AC
    /* 10CBC8 800FDC18 00002825 */   or        $a1, $zero, $zero
    /* 10CBCC 800FDC1C 8FBF0024 */  lw         $ra, 0x24($sp)
  .L800FDC20_10CBD0:
    /* 10CBD0 800FDC20 8FB00020 */  lw         $s0, 0x20($sp)
    /* 10CBD4 800FDC24 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 10CBD8 800FDC28 03E00008 */  jr         $ra
    /* 10CBDC 800FDC2C 00000000 */   nop
endlabel func_800FDB58_10CB08
