nonmatching func_80086A34_16EAF4, 0x100

glabel func_80086A34_16EAF4
    /* 16EAF4 80086A34 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 16EAF8 80086A38 AFB00014 */  sw         $s0, 0x14($sp)
    /* 16EAFC 80086A3C 3C108010 */  lui        $s0, %hi(D_800FB782)
    /* 16EB00 80086A40 8610B782 */  lh         $s0, %lo(D_800FB782)($s0)
    /* 16EB04 80086A44 AFB40024 */  sw         $s4, 0x24($sp)
    /* 16EB08 80086A48 2414FFFB */  addiu      $s4, $zero, -0x5
    /* 16EB0C 80086A4C AFBF002C */  sw         $ra, 0x2C($sp)
    /* 16EB10 80086A50 AFB50028 */  sw         $s5, 0x28($sp)
    /* 16EB14 80086A54 AFB30020 */  sw         $s3, 0x20($sp)
    /* 16EB18 80086A58 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 16EB1C 80086A5C 1214002C */  beq        $s0, $s4, .L80086B10_16EBD0
    /* 16EB20 80086A60 AFB10018 */   sw        $s1, 0x18($sp)
    /* 16EB24 80086A64 2415FFFA */  addiu      $s5, $zero, -0x6
    /* 16EB28 80086A68 12150029 */  beq        $s0, $s5, .L80086B10_16EBD0
    /* 16EB2C 80086A6C 24130016 */   addiu     $s3, $zero, 0x16
    /* 16EB30 80086A70 3C128010 */  lui        $s2, %hi(D_800FB7B0)
    /* 16EB34 80086A74 2652B7B0 */  addiu      $s2, $s2, %lo(D_800FB7B0)
  .L80086A78_16EB38:
    /* 16EB38 80086A78 02130019 */  multu      $s0, $s3
    /* 16EB3C 80086A7C 2405000B */  addiu      $a1, $zero, 0xB
    /* 16EB40 80086A80 00007012 */  mflo       $t6
    /* 16EB44 80086A84 024E1021 */  addu       $v0, $s2, $t6
    /* 16EB48 80086A88 904F0012 */  lbu        $t7, 0x12($v0)
    /* 16EB4C 80086A8C 24440008 */  addiu      $a0, $v0, 0x8
    /* 16EB50 80086A90 00801825 */  or         $v1, $a0, $zero
    /* 16EB54 80086A94 29E10009 */  slti       $at, $t7, 0x9
    /* 16EB58 80086A98 5020000B */  beql       $at, $zero, .L80086AC8_16EB88
    /* 16EB5C 80086A9C 90880009 */   lbu       $t0, 0x9($a0)
    /* 16EB60 80086AA0 00102400 */  sll        $a0, $s0, 16
    /* 16EB64 80086AA4 0004C403 */  sra        $t8, $a0, 16
    /* 16EB68 80086AA8 84510004 */  lh         $s1, 0x4($v0)
    /* 16EB6C 80086AAC 0C020D7C */  jal        func_800835F0_16B6B0
    /* 16EB70 80086AB0 03002025 */   or        $a0, $t8, $zero
    /* 16EB74 80086AB4 00118400 */  sll        $s0, $s1, 16
    /* 16EB78 80086AB8 0010CC03 */  sra        $t9, $s0, 16
    /* 16EB7C 80086ABC 10000010 */  b          .L80086B00_16EBC0
    /* 16EB80 80086AC0 03208025 */   or        $s0, $t9, $zero
    /* 16EB84 80086AC4 90880009 */  lbu        $t0, 0x9($a0)
  .L80086AC8_16EB88:
    /* 16EB88 80086AC8 29010004 */  slti       $at, $t0, 0x4
    /* 16EB8C 80086ACC 50200006 */  beql       $at, $zero, .L80086AE8_16EBA8
    /* 16EB90 80086AD0 906C0009 */   lbu       $t4, 0x9($v1)
    /* 16EB94 80086AD4 84490002 */  lh         $t1, 0x2($v0)
    /* 16EB98 80086AD8 908A000B */  lbu        $t2, 0xB($a0)
    /* 16EB9C 80086ADC 012A5821 */  addu       $t3, $t1, $t2
    /* 16EBA0 80086AE0 A44B0002 */  sh         $t3, 0x2($v0)
    /* 16EBA4 80086AE4 906C0009 */  lbu        $t4, 0x9($v1)
  .L80086AE8_16EBA8:
    /* 16EBA8 80086AE8 906E000A */  lbu        $t6, 0xA($v1)
    /* 16EBAC 80086AEC 258D0001 */  addiu      $t5, $t4, 0x1
    /* 16EBB0 80086AF0 25CFFFF9 */  addiu      $t7, $t6, -0x7
    /* 16EBB4 80086AF4 A06D0009 */  sb         $t5, 0x9($v1)
    /* 16EBB8 80086AF8 A06F000A */  sb         $t7, 0xA($v1)
    /* 16EBBC 80086AFC 84500004 */  lh         $s0, 0x4($v0)
  .L80086B00_16EBC0:
    /* 16EBC0 80086B00 52140004 */  beql       $s0, $s4, .L80086B14_16EBD4
    /* 16EBC4 80086B04 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 16EBC8 80086B08 1615FFDB */  bne        $s0, $s5, .L80086A78_16EB38
    /* 16EBCC 80086B0C 00000000 */   nop
  .L80086B10_16EBD0:
    /* 16EBD0 80086B10 8FBF002C */  lw         $ra, 0x2C($sp)
  .L80086B14_16EBD4:
    /* 16EBD4 80086B14 8FB00014 */  lw         $s0, 0x14($sp)
    /* 16EBD8 80086B18 8FB10018 */  lw         $s1, 0x18($sp)
    /* 16EBDC 80086B1C 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 16EBE0 80086B20 8FB30020 */  lw         $s3, 0x20($sp)
    /* 16EBE4 80086B24 8FB40024 */  lw         $s4, 0x24($sp)
    /* 16EBE8 80086B28 8FB50028 */  lw         $s5, 0x28($sp)
    /* 16EBEC 80086B2C 03E00008 */  jr         $ra
    /* 16EBF0 80086B30 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_80086A34_16EAF4
