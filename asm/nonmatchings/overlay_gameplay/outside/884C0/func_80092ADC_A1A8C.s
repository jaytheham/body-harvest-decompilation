nonmatching func_80092ADC_A1A8C, 0xE0

glabel func_80092ADC_A1A8C
    /* A1A8C 80092ADC 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* A1A90 80092AE0 AFB40028 */  sw         $s4, 0x28($sp)
    /* A1A94 80092AE4 AFB30024 */  sw         $s3, 0x24($sp)
    /* A1A98 80092AE8 AFB1001C */  sw         $s1, 0x1C($sp)
    /* A1A9C 80092AEC AFB00018 */  sw         $s0, 0x18($sp)
    /* A1AA0 80092AF0 AFB60030 */  sw         $s6, 0x30($sp)
    /* A1AA4 80092AF4 AFB5002C */  sw         $s5, 0x2C($sp)
    /* A1AA8 80092AF8 AFB20020 */  sw         $s2, 0x20($sp)
    /* A1AAC 80092AFC 3C108014 */  lui        $s0, %hi(D_8013CA00)
    /* A1AB0 80092B00 3C118005 */  lui        $s1, %hi(D_8004817C)
    /* A1AB4 80092B04 3C138014 */  lui        $s3, %hi(D_8013CA0A)
    /* A1AB8 80092B08 3C148005 */  lui        $s4, %hi(alienInstances)
    /* A1ABC 80092B0C AFBF0034 */  sw         $ra, 0x34($sp)
    /* A1AC0 80092B10 26948198 */  addiu      $s4, $s4, %lo(alienInstances)
    /* A1AC4 80092B14 2673CA0A */  addiu      $s3, $s3, %lo(D_8013CA0A)
    /* A1AC8 80092B18 2631817C */  addiu      $s1, $s1, %lo(D_8004817C)
    /* A1ACC 80092B1C 2610CA00 */  addiu      $s0, $s0, %lo(D_8013CA00)
    /* A1AD0 80092B20 241200FF */  addiu      $s2, $zero, 0xFF
    /* A1AD4 80092B24 24150050 */  addiu      $s5, $zero, 0x50
    /* A1AD8 80092B28 2416002F */  addiu      $s6, $zero, 0x2F
    /* A1ADC 80092B2C 820E0000 */  lb         $t6, 0x0($s0)
  .L80092B30_A1AE0:
    /* A1AE0 80092B30 82190001 */  lb         $t9, 0x1($s0)
    /* A1AE4 80092B34 24060010 */  addiu      $a2, $zero, 0x10
    /* A1AE8 80092B38 000E7E00 */  sll        $t7, $t6, 24
    /* A1AEC 80092B3C 00194600 */  sll        $t0, $t9, 24
    /* A1AF0 80092B40 00082C03 */  sra        $a1, $t0, 16
    /* A1AF4 80092B44 0C024A94 */  jal        func_80092A50_A1A00
    /* A1AF8 80092B48 000F2403 */   sra       $a0, $t7, 16
    /* A1AFC 80092B4C 304A00FF */  andi       $t2, $v0, 0xFF
    /* A1B00 80092B50 124A000D */  beq        $s2, $t2, .L80092B88_A1B38
    /* A1B04 80092B54 304400FF */   andi      $a0, $v0, 0xFF
    /* A1B08 80092B58 00950019 */  multu      $a0, $s5
    /* A1B0C 80092B5C 8E2E0000 */  lw         $t6, 0x0($s1)
    /* A1B10 80092B60 25CF0001 */  addiu      $t7, $t6, 0x1
    /* A1B14 80092B64 AE2F0000 */  sw         $t7, 0x0($s1)
    /* A1B18 80092B68 00005812 */  mflo       $t3
    /* A1B1C 80092B6C 028B1021 */  addu       $v0, $s4, $t3
    /* A1B20 80092B70 8C4C0020 */  lw         $t4, 0x20($v0)
    /* A1B24 80092B74 A0400026 */  sb         $zero, 0x26($v0)
    /* A1B28 80092B78 A4560038 */  sh         $s6, 0x38($v0)
    /* A1B2C 80092B7C 358D4000 */  ori        $t5, $t4, 0x4000
    /* A1B30 80092B80 0C024AEF */  jal        func_80092BBC_A1B6C
    /* A1B34 80092B84 AC4D0020 */   sw        $t5, 0x20($v0)
  .L80092B88_A1B38:
    /* A1B38 80092B88 26100002 */  addiu      $s0, $s0, 0x2
    /* A1B3C 80092B8C 5613FFE8 */  bnel       $s0, $s3, .L80092B30_A1AE0
    /* A1B40 80092B90 820E0000 */   lb        $t6, 0x0($s0)
    /* A1B44 80092B94 8FBF0034 */  lw         $ra, 0x34($sp)
    /* A1B48 80092B98 8FB00018 */  lw         $s0, 0x18($sp)
    /* A1B4C 80092B9C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* A1B50 80092BA0 8FB20020 */  lw         $s2, 0x20($sp)
    /* A1B54 80092BA4 8FB30024 */  lw         $s3, 0x24($sp)
    /* A1B58 80092BA8 8FB40028 */  lw         $s4, 0x28($sp)
    /* A1B5C 80092BAC 8FB5002C */  lw         $s5, 0x2C($sp)
    /* A1B60 80092BB0 8FB60030 */  lw         $s6, 0x30($sp)
    /* A1B64 80092BB4 03E00008 */  jr         $ra
    /* A1B68 80092BB8 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_80092ADC_A1A8C
