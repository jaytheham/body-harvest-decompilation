nonmatching func_800A7B84_B6B34, 0xE8

glabel func_800A7B84_B6B34
    /* B6B34 800A7B84 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* B6B38 800A7B88 AFB1001C */  sw         $s1, 0x1C($sp)
    /* B6B3C 800A7B8C 3C118016 */  lui        $s1, %hi(D_80158FD8)
    /* B6B40 800A7B90 86318FD8 */  lh         $s1, %lo(D_80158FD8)($s1)
    /* B6B44 800A7B94 AFBF0034 */  sw         $ra, 0x34($sp)
    /* B6B48 800A7B98 AFB60030 */  sw         $s6, 0x30($sp)
    /* B6B4C 800A7B9C 02201025 */  or         $v0, $s1, $zero
    /* B6B50 800A7BA0 AFB5002C */  sw         $s5, 0x2C($sp)
    /* B6B54 800A7BA4 AFB40028 */  sw         $s4, 0x28($sp)
    /* B6B58 800A7BA8 AFB30024 */  sw         $s3, 0x24($sp)
    /* B6B5C 800A7BAC AFB20020 */  sw         $s2, 0x20($sp)
    /* B6B60 800A7BB0 AFB00018 */  sw         $s0, 0x18($sp)
    /* B6B64 800A7BB4 12200023 */  beqz       $s1, .L800A7C44_B6BF4
    /* B6B68 800A7BB8 2631FFFF */   addiu     $s1, $s1, -0x1
    /* B6B6C 800A7BBC 3C0E8016 */  lui        $t6, %hi(D_80158E80)
    /* B6B70 800A7BC0 00049C00 */  sll        $s3, $a0, 16
    /* B6B74 800A7BC4 0005A400 */  sll        $s4, $a1, 16
    /* B6B78 800A7BC8 0014C403 */  sra        $t8, $s4, 16
    /* B6B7C 800A7BCC 00137C03 */  sra        $t7, $s3, 16
    /* B6B80 800A7BD0 25CE8E80 */  addiu      $t6, $t6, %lo(D_80158E80)
    /* B6B84 800A7BD4 3C158005 */  lui        $s5, %hi(vehicleInstances)
    /* B6B88 800A7BD8 26B5DCD0 */  addiu      $s5, $s5, %lo(vehicleInstances)
    /* B6B8C 800A7BDC 022E8021 */  addu       $s0, $s1, $t6
    /* B6B90 800A7BE0 01E09825 */  or         $s3, $t7, $zero
    /* B6B94 800A7BE4 0300A025 */  or         $s4, $t8, $zero
    /* B6B98 800A7BE8 2416005C */  addiu      $s6, $zero, 0x5C
  .L800A7BEC_B6B9C:
    /* B6B9C 800A7BEC 92020000 */  lbu        $v0, 0x0($s0)
    /* B6BA0 800A7BF0 00560019 */  multu      $v0, $s6
    /* B6BA4 800A7BF4 0000C812 */  mflo       $t9
    /* B6BA8 800A7BF8 02B99021 */  addu       $s2, $s5, $t9
    /* B6BAC 800A7BFC 0C04313B */  jal        func_8010C4EC_11B49C
    /* B6BB0 800A7C00 02402025 */   or        $a0, $s2, $zero
    /* B6BB4 800A7C04 00132400 */  sll        $a0, $s3, 16
    /* B6BB8 800A7C08 00142C00 */  sll        $a1, $s4, 16
    /* B6BBC 800A7C0C 00054C03 */  sra        $t1, $a1, 16
    /* B6BC0 800A7C10 00044403 */  sra        $t0, $a0, 16
    /* B6BC4 800A7C14 01002025 */  or         $a0, $t0, $zero
    /* B6BC8 800A7C18 0C0433DF */  jal        func_8010CF7C_11BF2C
    /* B6BCC 800A7C1C 01202825 */   or        $a1, $t1, $zero
    /* B6BD0 800A7C20 10400005 */  beqz       $v0, .L800A7C38_B6BE8
    /* B6BD4 800A7C24 2610FFFF */   addiu     $s0, $s0, -0x1
    /* B6BD8 800A7C28 0C048EB1 */  jal        func_80123AC4_132A74
    /* B6BDC 800A7C2C 02402025 */   or        $a0, $s2, $zero
    /* B6BE0 800A7C30 10000005 */  b          .L800A7C48_B6BF8
    /* B6BE4 800A7C34 8FBF0034 */   lw        $ra, 0x34($sp)
  .L800A7C38_B6BE8:
    /* B6BE8 800A7C38 02201025 */  or         $v0, $s1, $zero
    /* B6BEC 800A7C3C 1620FFEB */  bnez       $s1, .L800A7BEC_B6B9C
    /* B6BF0 800A7C40 2631FFFF */   addiu     $s1, $s1, -0x1
  .L800A7C44_B6BF4:
    /* B6BF4 800A7C44 8FBF0034 */  lw         $ra, 0x34($sp)
  .L800A7C48_B6BF8:
    /* B6BF8 800A7C48 8FB00018 */  lw         $s0, 0x18($sp)
    /* B6BFC 800A7C4C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* B6C00 800A7C50 8FB20020 */  lw         $s2, 0x20($sp)
    /* B6C04 800A7C54 8FB30024 */  lw         $s3, 0x24($sp)
    /* B6C08 800A7C58 8FB40028 */  lw         $s4, 0x28($sp)
    /* B6C0C 800A7C5C 8FB5002C */  lw         $s5, 0x2C($sp)
    /* B6C10 800A7C60 8FB60030 */  lw         $s6, 0x30($sp)
    /* B6C14 800A7C64 03E00008 */  jr         $ra
    /* B6C18 800A7C68 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800A7B84_B6B34
