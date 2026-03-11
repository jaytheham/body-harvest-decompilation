nonmatching func_8007BEC0_8AE70, 0x184

glabel func_8007BEC0_8AE70
    /* 8AE70 8007BEC0 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 8AE74 8007BEC4 3C0E8015 */  lui        $t6, %hi(D_8014ECD0)
    /* 8AE78 8007BEC8 8DCEECD0 */  lw         $t6, %lo(D_8014ECD0)($t6)
    /* 8AE7C 8007BECC AFBF003C */  sw         $ra, 0x3C($sp)
    /* 8AE80 8007BED0 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 8AE84 8007BED4 AFB70034 */  sw         $s7, 0x34($sp)
    /* 8AE88 8007BED8 AFB60030 */  sw         $s6, 0x30($sp)
    /* 8AE8C 8007BEDC AFB5002C */  sw         $s5, 0x2C($sp)
    /* 8AE90 8007BEE0 AFB40028 */  sw         $s4, 0x28($sp)
    /* 8AE94 8007BEE4 AFB30024 */  sw         $s3, 0x24($sp)
    /* 8AE98 8007BEE8 AFB20020 */  sw         $s2, 0x20($sp)
    /* 8AE9C 8007BEEC AFB1001C */  sw         $s1, 0x1C($sp)
    /* 8AEA0 8007BEF0 11C00048 */  beqz       $t6, .L8007C014_8AFC4
    /* 8AEA4 8007BEF4 AFB00018 */   sw        $s0, 0x18($sp)
    /* 8AEA8 8007BEF8 3C048015 */  lui        $a0, %hi(D_8014ECCC)
    /* 8AEAC 8007BEFC 8C84ECCC */  lw         $a0, %lo(D_8014ECCC)($a0)
    /* 8AEB0 8007BF00 3C118015 */  lui        $s1, %hi(D_8014D510)
    /* 8AEB4 8007BF04 2631D510 */  addiu      $s1, $s1, %lo(D_8014D510)
    /* 8AEB8 8007BF08 10800042 */  beqz       $a0, .L8007C014_8AFC4
    /* 8AEBC 8007BF0C 00009025 */   or        $s2, $zero, $zero
    /* 8AEC0 8007BF10 3C178004 */  lui        $s7, %hi(currentLevel)
    /* 8AEC4 8007BF14 3C138005 */  lui        $s3, %hi(alienInstances)
    /* 8AEC8 8007BF18 26738198 */  addiu      $s3, $s3, %lo(alienInstances)
    /* 8AECC 8007BF1C 26F77F90 */  addiu      $s7, $s7, %lo(currentLevel)
    /* 8AED0 8007BF20 241E0022 */  addiu      $fp, $zero, 0x22
    /* 8AED4 8007BF24 24160001 */  addiu      $s6, $zero, 0x1
    /* 8AED8 8007BF28 3C150008 */  lui        $s5, (0x80000 >> 16)
    /* 8AEDC 8007BF2C 24140050 */  addiu      $s4, $zero, 0x50
  .L8007BF30_8AEE0:
    /* 8AEE0 8007BF30 92220000 */  lbu        $v0, 0x0($s1)
    /* 8AEE4 8007BF34 00540019 */  multu      $v0, $s4
    /* 8AEE8 8007BF38 00007812 */  mflo       $t7
    /* 8AEEC 8007BF3C 026F8021 */  addu       $s0, $s3, $t7
    /* 8AEF0 8007BF40 8E030020 */  lw         $v1, 0x20($s0)
    /* 8AEF4 8007BF44 30780200 */  andi       $t8, $v1, 0x200
    /* 8AEF8 8007BF48 13000003 */  beqz       $t8, .L8007BF58_8AF08
    /* 8AEFC 8007BF4C 0075C824 */   and       $t9, $v1, $s5
    /* 8AF00 8007BF50 1320002A */  beqz       $t9, .L8007BFFC_8AFAC
    /* 8AF04 8007BF54 00000000 */   nop
  .L8007BF58_8AF08:
    /* 8AF08 8007BF58 8EE20000 */  lw         $v0, 0x0($s7)
    /* 8AF0C 8007BF5C 24010003 */  addiu      $at, $zero, 0x3
    /* 8AF10 8007BF60 16C20007 */  bne        $s6, $v0, .L8007BF80_8AF30
    /* 8AF14 8007BF64 00000000 */   nop
    /* 8AF18 8007BF68 9208001A */  lbu        $t0, 0x1A($s0)
    /* 8AF1C 8007BF6C 30694000 */  andi       $t1, $v1, 0x4000
    /* 8AF20 8007BF70 17C80003 */  bne        $fp, $t0, .L8007BF80_8AF30
    /* 8AF24 8007BF74 00000000 */   nop
    /* 8AF28 8007BF78 51200023 */  beql       $t1, $zero, .L8007C008_8AFB8
    /* 8AF2C 8007BF7C 26520001 */   addiu     $s2, $s2, 0x1
  .L8007BF80_8AF30:
    /* 8AF30 8007BF80 14410007 */  bne        $v0, $at, .L8007BFA0_8AF50
    /* 8AF34 8007BF84 27A60058 */   addiu     $a2, $sp, 0x58
    /* 8AF38 8007BF88 9202001A */  lbu        $v0, 0x1A($s0)
    /* 8AF3C 8007BF8C 24010009 */  addiu      $at, $zero, 0x9
    /* 8AF40 8007BF90 1041001C */  beq        $v0, $at, .L8007C004_8AFB4
    /* 8AF44 8007BF94 24010008 */   addiu     $at, $zero, 0x8
    /* 8AF48 8007BF98 5041001B */  beql       $v0, $at, .L8007C008_8AFB8
    /* 8AF4C 8007BF9C 26520001 */   addiu     $s2, $s2, 0x1
  .L8007BFA0_8AF50:
    /* 8AF50 8007BFA0 86040000 */  lh         $a0, 0x0($s0)
    /* 8AF54 8007BFA4 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* 8AF58 8007BFA8 86050004 */   lh        $a1, 0x4($s0)
    /* 8AF5C 8007BFAC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 8AF60 8007BFB0 10410003 */  beq        $v0, $at, .L8007BFC0_8AF70
    /* 8AF64 8007BFB4 3C048015 */   lui       $a0, %hi(D_8014ECCC)
    /* 8AF68 8007BFB8 10000012 */  b          .L8007C004_8AFB4
    /* 8AF6C 8007BFBC 8C84ECCC */   lw        $a0, %lo(D_8014ECCC)($a0)
  .L8007BFC0_8AF70:
    /* 8AF70 8007BFC0 8E0A0020 */  lw         $t2, 0x20($s0)
    /* 8AF74 8007BFC4 02002025 */  or         $a0, $s0, $zero
    /* 8AF78 8007BFC8 000A58C0 */  sll        $t3, $t2, 3
    /* 8AF7C 8007BFCC 0561000B */  bgez       $t3, .L8007BFFC_8AFAC
    /* 8AF80 8007BFD0 00000000 */   nop
    /* 8AF84 8007BFD4 9202001A */  lbu        $v0, 0x1A($s0)
    /* 8AF88 8007BFD8 3C0D8025 */  lui        $t5, %hi(alienSpecs)
    /* 8AF8C 8007BFDC 25AD6680 */  addiu      $t5, $t5, %lo(alienSpecs)
    /* 8AF90 8007BFE0 00026080 */  sll        $t4, $v0, 2
    /* 8AF94 8007BFE4 01826023 */  subu       $t4, $t4, $v0
    /* 8AF98 8007BFE8 000C6080 */  sll        $t4, $t4, 2
    /* 8AF9C 8007BFEC 01826021 */  addu       $t4, $t4, $v0
    /* 8AFA0 8007BFF0 000C60C0 */  sll        $t4, $t4, 3
    /* 8AFA4 8007BFF4 0C03A623 */  jal        func_800E988C_F883C
    /* 8AFA8 8007BFF8 018D2821 */   addu      $a1, $t4, $t5
  .L8007BFFC_8AFAC:
    /* 8AFAC 8007BFFC 3C048015 */  lui        $a0, %hi(D_8014ECCC)
    /* 8AFB0 8007C000 8C84ECCC */  lw         $a0, %lo(D_8014ECCC)($a0)
  .L8007C004_8AFB4:
    /* 8AFB4 8007C004 26520001 */  addiu      $s2, $s2, 0x1
  .L8007C008_8AFB8:
    /* 8AFB8 8007C008 0244082B */  sltu       $at, $s2, $a0
    /* 8AFBC 8007C00C 1420FFC8 */  bnez       $at, .L8007BF30_8AEE0
    /* 8AFC0 8007C010 26310001 */   addiu     $s1, $s1, 0x1
  .L8007C014_8AFC4:
    /* 8AFC4 8007C014 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 8AFC8 8007C018 8FB00018 */  lw         $s0, 0x18($sp)
    /* 8AFCC 8007C01C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 8AFD0 8007C020 8FB20020 */  lw         $s2, 0x20($sp)
    /* 8AFD4 8007C024 8FB30024 */  lw         $s3, 0x24($sp)
    /* 8AFD8 8007C028 8FB40028 */  lw         $s4, 0x28($sp)
    /* 8AFDC 8007C02C 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 8AFE0 8007C030 8FB60030 */  lw         $s6, 0x30($sp)
    /* 8AFE4 8007C034 8FB70034 */  lw         $s7, 0x34($sp)
    /* 8AFE8 8007C038 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 8AFEC 8007C03C 03E00008 */  jr         $ra
    /* 8AFF0 8007C040 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_8007BEC0_8AE70
