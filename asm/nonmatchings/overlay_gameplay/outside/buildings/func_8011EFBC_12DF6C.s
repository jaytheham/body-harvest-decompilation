nonmatching func_8011EFBC_12DF6C, 0xD8

glabel func_8011EFBC_12DF6C
    /* 12DF6C 8011EFBC 3C0B8014 */  lui        $t3, %hi(D_80145BE0)
    /* 12DF70 8011EFC0 256B5BE0 */  addiu      $t3, $t3, %lo(D_80145BE0)
    /* 12DF74 8011EFC4 008B6023 */  subu       $t4, $a0, $t3
    /* 12DF78 8011EFC8 24010018 */  addiu      $at, $zero, 0x18
    /* 12DF7C 8011EFCC 0181001A */  div        $zero, $t4, $at
    /* 12DF80 8011EFD0 00057400 */  sll        $t6, $a1, 16
    /* 12DF84 8011EFD4 000E7C03 */  sra        $t7, $t6, 16
    /* 12DF88 8011EFD8 000FC080 */  sll        $t8, $t7, 2
    /* 12DF8C 8011EFDC 030FC023 */  subu       $t8, $t8, $t7
    /* 12DF90 8011EFE0 0018C100 */  sll        $t8, $t8, 4
    /* 12DF94 8011EFE4 3C198016 */  lui        $t9, %hi(D_8015FAEE)
    /* 12DF98 8011EFE8 0338C821 */  addu       $t9, $t9, $t8
    /* 12DF9C 8011EFEC 8739FAEE */  lh         $t9, %lo(D_8015FAEE)($t9)
    /* 12DFA0 8011EFF0 3C0A8005 */  lui        $t2, %hi(buildingInstances)
    /* 12DFA4 8011EFF4 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 12DFA8 8011EFF8 00194103 */  sra        $t0, $t9, 4
    /* 12DFAC 8011EFFC 00084880 */  sll        $t1, $t0, 2
    /* 12DFB0 8011F000 01284823 */  subu       $t1, $t1, $t0
    /* 12DFB4 8011F004 000948C0 */  sll        $t1, $t1, 3
    /* 12DFB8 8011F008 254A0AD8 */  addiu      $t2, $t2, %lo(buildingInstances)
    /* 12DFBC 8011F00C 00006812 */  mflo       $t5
    /* 12DFC0 8011F010 2401004F */  addiu      $at, $zero, 0x4F
    /* 12DFC4 8011F014 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 12DFC8 8011F018 AFA50024 */  sw         $a1, 0x24($sp)
    /* 12DFCC 8011F01C 15A10019 */  bne        $t5, $at, .L8011F084_12E034
    /* 12DFD0 8011F020 012A1021 */   addu      $v0, $t1, $t2
    /* 12DFD4 8011F024 904E000D */  lbu        $t6, 0xD($v0)
    /* 12DFD8 8011F028 24010002 */  addiu      $at, $zero, 0x2
    /* 12DFDC 8011F02C 240F0001 */  addiu      $t7, $zero, 0x1
    /* 12DFE0 8011F030 11C10002 */  beq        $t6, $at, .L8011F03C_12DFEC
    /* 12DFE4 8011F034 24040000 */   addiu     $a0, $zero, 0x0
    /* 12DFE8 8011F038 A04F000D */  sb         $t7, 0xD($v0)
  .L8011F03C_12DFEC:
    /* 12DFEC 8011F03C 0C001C9B */  jal        func_8000726C_7E6C
    /* 12DFF0 8011F040 24050012 */   addiu     $a1, $zero, 0x12
    /* 12DFF4 8011F044 1440000C */  bnez       $v0, .L8011F078_12E028
    /* 12DFF8 8011F048 00002025 */   or        $a0, $zero, $zero
    /* 12DFFC 8011F04C 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 12E000 8011F050 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 12E004 8011F054 3C018014 */  lui        $at, %hi(D_80144FC8)
    /* 12E008 8011F058 C4244FC8 */  lwc1       $f4, %lo(D_80144FC8)($at)
    /* 12E00C 8011F05C 84580004 */  lh         $t8, 0x4($v0)
    /* 12E010 8011F060 84460000 */  lh         $a2, 0x0($v0)
    /* 12E014 8011F064 84470002 */  lh         $a3, 0x2($v0)
    /* 12E018 8011F068 24050177 */  addiu      $a1, $zero, 0x177
    /* 12E01C 8011F06C E7A40014 */  swc1       $f4, 0x14($sp)
    /* 12E020 8011F070 0C04DC6E */  jal        func_801371B8_146168
    /* 12E024 8011F074 AFB80010 */   sw        $t8, 0x10($sp)
  .L8011F078_12E028:
    /* 12E028 8011F078 24040000 */  addiu      $a0, $zero, 0x0
    /* 12E02C 8011F07C 0C001CB3 */  jal        func_800072CC_7ECC
    /* 12E030 8011F080 24050012 */   addiu     $a1, $zero, 0x12
  .L8011F084_12E034:
    /* 12E034 8011F084 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 12E038 8011F088 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 12E03C 8011F08C 03E00008 */  jr         $ra
    /* 12E040 8011F090 00000000 */   nop
endlabel func_8011EFBC_12DF6C
