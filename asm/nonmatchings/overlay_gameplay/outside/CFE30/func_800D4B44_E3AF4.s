nonmatching func_800D4B44_E3AF4, 0xCC

glabel func_800D4B44_E3AF4
    /* E3AF4 800D4B44 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* E3AF8 800D4B48 AFB10020 */  sw         $s1, 0x20($sp)
    /* E3AFC 800D4B4C 3C118015 */  lui        $s1, %hi(D_801542B2)
    /* E3B00 800D4B50 863142B2 */  lh         $s1, %lo(D_801542B2)($s1)
    /* E3B04 800D4B54 AFB4002C */  sw         $s4, 0x2C($sp)
    /* E3B08 800D4B58 2414FFFB */  addiu      $s4, $zero, -0x5
    /* E3B0C 800D4B5C AFBF0034 */  sw         $ra, 0x34($sp)
    /* E3B10 800D4B60 AFB50030 */  sw         $s5, 0x30($sp)
    /* E3B14 800D4B64 AFB30028 */  sw         $s3, 0x28($sp)
    /* E3B18 800D4B68 AFB20024 */  sw         $s2, 0x24($sp)
    /* E3B1C 800D4B6C 12340003 */  beq        $s1, $s4, .L800D4B7C_E3B2C
    /* E3B20 800D4B70 AFB0001C */   sw        $s0, 0x1C($sp)
    /* E3B24 800D4B74 2415FFFA */  addiu      $s5, $zero, -0x6
    /* E3B28 800D4B78 16350005 */  bne        $s1, $s5, .L800D4B90_E3B40
  .L800D4B7C_E3B2C:
    /* E3B2C 800D4B7C 2404000F */   addiu     $a0, $zero, 0xF
    /* E3B30 800D4B80 0C030506 */  jal        func_800C1418_D03C8
    /* E3B34 800D4B84 24050001 */   addiu     $a1, $zero, 0x1
    /* E3B38 800D4B88 10000019 */  b          .L800D4BF0_E3BA0
    /* E3B3C 800D4B8C 8FBF0034 */   lw        $ra, 0x34($sp)
  .L800D4B90_E3B40:
    /* E3B40 800D4B90 52340017 */  beql       $s1, $s4, .L800D4BF0_E3BA0
    /* E3B44 800D4B94 8FBF0034 */   lw        $ra, 0x34($sp)
    /* E3B48 800D4B98 12350014 */  beq        $s1, $s5, .L800D4BEC_E3B9C
    /* E3B4C 800D4B9C 2413001C */   addiu     $s3, $zero, 0x1C
    /* E3B50 800D4BA0 3C128015 */  lui        $s2, %hi(D_80154318)
    /* E3B54 800D4BA4 26524318 */  addiu      $s2, $s2, %lo(D_80154318)
  .L800D4BA8_E3B58:
    /* E3B58 800D4BA8 02330019 */  multu      $s1, $s3
    /* E3B5C 800D4BAC 2407000C */  addiu      $a3, $zero, 0xC
    /* E3B60 800D4BB0 AFB10010 */  sw         $s1, 0x10($sp)
    /* E3B64 800D4BB4 00007012 */  mflo       $t6
    /* E3B68 800D4BB8 024E8021 */  addu       $s0, $s2, $t6
    /* E3B6C 800D4BBC 920F0014 */  lbu        $t7, 0x14($s0)
    /* E3B70 800D4BC0 86040008 */  lh         $a0, 0x8($s0)
    /* E3B74 800D4BC4 8605000A */  lh         $a1, 0xA($s0)
    /* E3B78 800D4BC8 25F80001 */  addiu      $t8, $t7, 0x1
    /* E3B7C 800D4BCC A2180014 */  sb         $t8, 0x14($s0)
    /* E3B80 800D4BD0 0C04DCDA */  jal        func_80137368_146318
    /* E3B84 800D4BD4 8606000C */   lh        $a2, 0xC($s0)
    /* E3B88 800D4BD8 86110004 */  lh         $s1, 0x4($s0)
    /* E3B8C 800D4BDC 52340004 */  beql       $s1, $s4, .L800D4BF0_E3BA0
    /* E3B90 800D4BE0 8FBF0034 */   lw        $ra, 0x34($sp)
    /* E3B94 800D4BE4 1635FFF0 */  bne        $s1, $s5, .L800D4BA8_E3B58
    /* E3B98 800D4BE8 00000000 */   nop
  .L800D4BEC_E3B9C:
    /* E3B9C 800D4BEC 8FBF0034 */  lw         $ra, 0x34($sp)
  .L800D4BF0_E3BA0:
    /* E3BA0 800D4BF0 8FB0001C */  lw         $s0, 0x1C($sp)
    /* E3BA4 800D4BF4 8FB10020 */  lw         $s1, 0x20($sp)
    /* E3BA8 800D4BF8 8FB20024 */  lw         $s2, 0x24($sp)
    /* E3BAC 800D4BFC 8FB30028 */  lw         $s3, 0x28($sp)
    /* E3BB0 800D4C00 8FB4002C */  lw         $s4, 0x2C($sp)
    /* E3BB4 800D4C04 8FB50030 */  lw         $s5, 0x30($sp)
    /* E3BB8 800D4C08 03E00008 */  jr         $ra
    /* E3BBC 800D4C0C 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800D4B44_E3AF4
