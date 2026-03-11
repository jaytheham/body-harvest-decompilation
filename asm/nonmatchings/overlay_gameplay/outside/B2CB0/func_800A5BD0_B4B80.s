nonmatching func_800A5BD0_B4B80, 0x16C

glabel func_800A5BD0_B4B80
    /* B4B80 800A5BD0 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* B4B84 800A5BD4 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* B4B88 800A5BD8 0004C880 */  sll        $t9, $a0, 2
    /* B4B8C 800A5BDC 3C0A8003 */  lui        $t2, %hi(D_8003154C)
    /* B4B90 800A5BE0 000E7880 */  sll        $t7, $t6, 2
    /* B4B94 800A5BE4 01EE7823 */  subu       $t7, $t7, $t6
    /* B4B98 800A5BE8 000F78C0 */  sll        $t7, $t7, 3
    /* B4B9C 800A5BEC 01F94821 */  addu       $t1, $t7, $t9
    /* B4BA0 800A5BF0 254A154C */  addiu      $t2, $t2, %lo(D_8003154C)
    /* B4BA4 800A5BF4 012A1021 */  addu       $v0, $t1, $t2
    /* B4BA8 800A5BF8 804BFFE8 */  lb         $t3, -0x18($v0)
    /* B4BAC 800A5BFC 804CFFE9 */  lb         $t4, -0x17($v0)
    /* B4BB0 800A5C00 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* B4BB4 800A5C04 AFA40060 */  sw         $a0, 0x60($sp)
    /* B4BB8 800A5C08 000B2600 */  sll        $a0, $t3, 24
    /* B4BBC 800A5C0C 000C2E00 */  sll        $a1, $t4, 24
    /* B4BC0 800A5C10 AFBF003C */  sw         $ra, 0x3C($sp)
    /* B4BC4 800A5C14 00057403 */  sra        $t6, $a1, 16
    /* B4BC8 800A5C18 00046C03 */  sra        $t5, $a0, 16
    /* B4BCC 800A5C1C 01A02025 */  or         $a0, $t5, $zero
    /* B4BD0 800A5C20 AFAD004C */  sw         $t5, 0x4C($sp)
    /* B4BD4 800A5C24 01C02825 */  or         $a1, $t6, $zero
    /* B4BD8 800A5C28 0C02E134 */  jal        func_800B84D0_C7480
    /* B4BDC 800A5C2C AFAE0048 */   sw        $t6, 0x48($sp)
    /* B4BE0 800A5C30 3C188004 */  lui        $t8, %hi(currentLevel)
    /* B4BE4 800A5C34 8F187F90 */  lw         $t8, %lo(currentLevel)($t8)
    /* B4BE8 800A5C38 24010003 */  addiu      $at, $zero, 0x3
    /* B4BEC 800A5C3C 8FA80060 */  lw         $t0, 0x60($sp)
    /* B4BF0 800A5C40 17010004 */  bne        $t8, $at, .L800A5C54_B4C04
    /* B4BF4 800A5C44 00021A03 */   sra       $v1, $v0, 8
    /* B4BF8 800A5C48 55000003 */  bnel       $t0, $zero, .L800A5C58_B4C08
    /* B4BFC 800A5C4C 00081040 */   sll       $v0, $t0, 1
    /* B4C00 800A5C50 240307D0 */  addiu      $v1, $zero, 0x7D0
  .L800A5C54_B4C04:
    /* B4C04 800A5C54 00081040 */  sll        $v0, $t0, 1
  .L800A5C58_B4C08:
    /* B4C08 800A5C58 8FA90048 */  lw         $t1, 0x48($sp)
    /* B4C0C 800A5C5C 24451000 */  addiu      $a1, $v0, 0x1000
    /* B4C10 800A5C60 00033C00 */  sll        $a3, $v1, 16
    /* B4C14 800A5C64 3C0D800A */  lui        $t5, %hi(func_800A5B30_B4AE0)
    /* B4C18 800A5C68 25AD5B30 */  addiu      $t5, $t5, %lo(func_800A5B30_B4AE0)
    /* B4C1C 800A5C6C 0007CC03 */  sra        $t9, $a3, 16
    /* B4C20 800A5C70 30AFFFFF */  andi       $t7, $a1, 0xFFFF
    /* B4C24 800A5C74 240A0019 */  addiu      $t2, $zero, 0x19
    /* B4C28 800A5C78 240B0019 */  addiu      $t3, $zero, 0x19
    /* B4C2C 800A5C7C 240C0050 */  addiu      $t4, $zero, 0x50
    /* B4C30 800A5C80 AFAC0028 */  sw         $t4, 0x28($sp)
    /* B4C34 800A5C84 AFAB0024 */  sw         $t3, 0x24($sp)
    /* B4C38 800A5C88 AFAA0020 */  sw         $t2, 0x20($sp)
    /* B4C3C 800A5C8C 01E02825 */  or         $a1, $t7, $zero
    /* B4C40 800A5C90 03203825 */  or         $a3, $t9, $zero
    /* B4C44 800A5C94 AFB90040 */  sw         $t9, 0x40($sp)
    /* B4C48 800A5C98 AFAD002C */  sw         $t5, 0x2C($sp)
    /* B4C4C 800A5C9C AFA20044 */  sw         $v0, 0x44($sp)
    /* B4C50 800A5CA0 24040004 */  addiu      $a0, $zero, 0x4
    /* B4C54 800A5CA4 87A6004E */  lh         $a2, 0x4E($sp)
    /* B4C58 800A5CA8 AFA00014 */  sw         $zero, 0x14($sp)
    /* B4C5C 800A5CAC AFA00018 */  sw         $zero, 0x18($sp)
    /* B4C60 800A5CB0 AFA0001C */  sw         $zero, 0x1C($sp)
    /* B4C64 800A5CB4 AFA00030 */  sw         $zero, 0x30($sp)
    /* B4C68 800A5CB8 0C04B5C0 */  jal        func_8012D700_13C6B0
    /* B4C6C 800A5CBC AFA90010 */   sw        $t1, 0x10($sp)
    /* B4C70 800A5CC0 0C04B5A1 */  jal        func_8012D684_13C634
    /* B4C74 800A5CC4 00402025 */   or        $a0, $v0, $zero
    /* B4C78 800A5CC8 8FA50044 */  lw         $a1, 0x44($sp)
    /* B4C7C 800A5CCC 8FB80048 */  lw         $t8, 0x48($sp)
    /* B4C80 800A5CD0 3C0A8013 */  lui        $t2, %hi(func_8012E1F8_13D1A8)
    /* B4C84 800A5CD4 24A51001 */  addiu      $a1, $a1, 0x1001
    /* B4C88 800A5CD8 30AEFFFF */  andi       $t6, $a1, 0xFFFF
    /* B4C8C 800A5CDC 254AE1F8 */  addiu      $t2, $t2, %lo(func_8012E1F8_13D1A8)
    /* B4C90 800A5CE0 240F000F */  addiu      $t7, $zero, 0xF
    /* B4C94 800A5CE4 2419000F */  addiu      $t9, $zero, 0xF
    /* B4C98 800A5CE8 24090050 */  addiu      $t1, $zero, 0x50
    /* B4C9C 800A5CEC AFA90028 */  sw         $t1, 0x28($sp)
    /* B4CA0 800A5CF0 AFB90024 */  sw         $t9, 0x24($sp)
    /* B4CA4 800A5CF4 AFAF0020 */  sw         $t7, 0x20($sp)
    /* B4CA8 800A5CF8 AFAA0030 */  sw         $t2, 0x30($sp)
    /* B4CAC 800A5CFC 01C02825 */  or         $a1, $t6, $zero
    /* B4CB0 800A5D00 24040005 */  addiu      $a0, $zero, 0x5
    /* B4CB4 800A5D04 87A6004E */  lh         $a2, 0x4E($sp)
    /* B4CB8 800A5D08 87A70042 */  lh         $a3, 0x42($sp)
    /* B4CBC 800A5D0C AFA00014 */  sw         $zero, 0x14($sp)
    /* B4CC0 800A5D10 AFA00018 */  sw         $zero, 0x18($sp)
    /* B4CC4 800A5D14 AFA0001C */  sw         $zero, 0x1C($sp)
    /* B4CC8 800A5D18 AFA0002C */  sw         $zero, 0x2C($sp)
    /* B4CCC 800A5D1C 0C04B5C0 */  jal        func_8012D700_13C6B0
    /* B4CD0 800A5D20 AFB80010 */   sw        $t8, 0x10($sp)
    /* B4CD4 800A5D24 0C04B5A1 */  jal        func_8012D684_13C634
    /* B4CD8 800A5D28 00402025 */   or        $a0, $v0, $zero
    /* B4CDC 800A5D2C 8FBF003C */  lw         $ra, 0x3C($sp)
    /* B4CE0 800A5D30 27BD0060 */  addiu      $sp, $sp, 0x60
    /* B4CE4 800A5D34 03E00008 */  jr         $ra
    /* B4CE8 800A5D38 00000000 */   nop
endlabel func_800A5BD0_B4B80
