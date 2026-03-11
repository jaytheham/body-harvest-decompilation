nonmatching func_8010F9B4_11E964, 0x108

glabel func_8010F9B4_11E964
    /* 11E964 8010F9B4 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 11E968 8010F9B8 2401FFFF */  addiu      $at, $zero, -0x1
    /* 11E96C 8010F9BC AFBF001C */  sw         $ra, 0x1C($sp)
    /* 11E970 8010F9C0 AFB00018 */  sw         $s0, 0x18($sp)
    /* 11E974 8010F9C4 14A10006 */  bne        $a1, $at, .L8010F9E0_11E990
    /* 11E978 8010F9C8 AFA40030 */   sw        $a0, 0x30($sp)
    /* 11E97C 8010F9CC 84900000 */  lh         $s0, 0x0($a0)
    /* 11E980 8010F9D0 84860002 */  lh         $a2, 0x2($a0)
    /* 11E984 8010F9D4 84870004 */  lh         $a3, 0x4($a0)
    /* 11E988 8010F9D8 10000030 */  b          .L8010FA9C_11EA4C
    /* 11E98C 8010F9DC 26100001 */   addiu     $s0, $s0, 0x1
  .L8010F9E0_11E990:
    /* 11E990 8010F9E0 00057880 */  sll        $t7, $a1, 2
    /* 11E994 8010F9E4 01E57821 */  addu       $t7, $t7, $a1
    /* 11E998 8010F9E8 3C188026 */  lui        $t8, %hi(D_80259D90)
    /* 11E99C 8010F9EC 27189D90 */  addiu      $t8, $t8, %lo(D_80259D90)
    /* 11E9A0 8010F9F0 000F7900 */  sll        $t7, $t7, 4
    /* 11E9A4 8010F9F4 01F81021 */  addu       $v0, $t7, $t8
    /* 11E9A8 8010F9F8 80590000 */  lb         $t9, 0x0($v0)
    /* 11E9AC 8010F9FC 2B21000E */  slti       $at, $t9, 0xE
    /* 11E9B0 8010FA00 5420001B */  bnel       $at, $zero, .L8010FA70_11EA20
    /* 11E9B4 8010FA04 84500004 */   lh        $s0, 0x4($v0)
    /* 11E9B8 8010FA08 84480040 */  lh         $t0, 0x40($v0)
    /* 11E9BC 8010FA0C 84490020 */  lh         $t1, 0x20($v0)
    /* 11E9C0 8010FA10 844B0042 */  lh         $t3, 0x42($v0)
    /* 11E9C4 8010FA14 844C0022 */  lh         $t4, 0x22($v0)
    /* 11E9C8 8010FA18 01098021 */  addu       $s0, $t0, $t1
    /* 11E9CC 8010FA1C 844E0044 */  lh         $t6, 0x44($v0)
    /* 11E9D0 8010FA20 844F0024 */  lh         $t7, 0x24($v0)
    /* 11E9D4 8010FA24 06010003 */  bgez       $s0, .L8010FA34_11E9E4
    /* 11E9D8 8010FA28 00105043 */   sra       $t2, $s0, 1
    /* 11E9DC 8010FA2C 26010001 */  addiu      $at, $s0, 0x1
    /* 11E9E0 8010FA30 00015043 */  sra        $t2, $at, 1
  .L8010FA34_11E9E4:
    /* 11E9E4 8010FA34 016C3021 */  addu       $a2, $t3, $t4
    /* 11E9E8 8010FA38 01CF3821 */  addu       $a3, $t6, $t7
    /* 11E9EC 8010FA3C 01408025 */  or         $s0, $t2, $zero
    /* 11E9F0 8010FA40 04C10003 */  bgez       $a2, .L8010FA50_11EA00
    /* 11E9F4 8010FA44 00066843 */   sra       $t5, $a2, 1
    /* 11E9F8 8010FA48 24C10001 */  addiu      $at, $a2, 0x1
    /* 11E9FC 8010FA4C 00016843 */  sra        $t5, $at, 1
  .L8010FA50_11EA00:
    /* 11EA00 8010FA50 01A03025 */  or         $a2, $t5, $zero
    /* 11EA04 8010FA54 04E10003 */  bgez       $a3, .L8010FA64_11EA14
    /* 11EA08 8010FA58 0007C043 */   sra       $t8, $a3, 1
    /* 11EA0C 8010FA5C 24E10001 */  addiu      $at, $a3, 0x1
    /* 11EA10 8010FA60 0001C043 */  sra        $t8, $at, 1
  .L8010FA64_11EA14:
    /* 11EA14 8010FA64 1000000D */  b          .L8010FA9C_11EA4C
    /* 11EA18 8010FA68 03003825 */   or        $a3, $t8, $zero
    /* 11EA1C 8010FA6C 84500004 */  lh         $s0, 0x4($v0)
  .L8010FA70_11EA20:
    /* 11EA20 8010FA70 84470006 */  lh         $a3, 0x6($v0)
    /* 11EA24 8010FA74 00102400 */  sll        $a0, $s0, 16
    /* 11EA28 8010FA78 00072C00 */  sll        $a1, $a3, 16
    /* 11EA2C 8010FA7C 00054403 */  sra        $t0, $a1, 16
    /* 11EA30 8010FA80 0004CC03 */  sra        $t9, $a0, 16
    /* 11EA34 8010FA84 03202025 */  or         $a0, $t9, $zero
    /* 11EA38 8010FA88 01002825 */  or         $a1, $t0, $zero
    /* 11EA3C 8010FA8C 0C02E134 */  jal        func_800B84D0_C7480
    /* 11EA40 8010FA90 AFA70024 */   sw        $a3, 0x24($sp)
    /* 11EA44 8010FA94 8FA70024 */  lw         $a3, 0x24($sp)
    /* 11EA48 8010FA98 00023203 */  sra        $a2, $v0, 8
  .L8010FA9C_11EA4C:
    /* 11EA4C 8010FA9C 8FA40030 */  lw         $a0, 0x30($sp)
    /* 11EA50 8010FAA0 0C043E0D */  jal        func_8010F834_11E7E4
    /* 11EA54 8010FAA4 02002825 */   or        $a1, $s0, $zero
    /* 11EA58 8010FAA8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 11EA5C 8010FAAC 8FB00018 */  lw         $s0, 0x18($sp)
    /* 11EA60 8010FAB0 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 11EA64 8010FAB4 03E00008 */  jr         $ra
    /* 11EA68 8010FAB8 00000000 */   nop
endlabel func_8010F9B4_11E964
