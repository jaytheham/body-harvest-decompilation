nonmatching func_800D9B54_E8B04, 0x10C

glabel func_800D9B54_E8B04
    /* E8B04 800D9B54 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* E8B08 800D9B58 AFB1001C */  sw         $s1, 0x1C($sp)
    /* E8B0C 800D9B5C 3C118015 */  lui        $s1, %hi(D_801542FA)
    /* E8B10 800D9B60 863142FA */  lh         $s1, %lo(D_801542FA)($s1)
    /* E8B14 800D9B64 AFB5002C */  sw         $s5, 0x2C($sp)
    /* E8B18 800D9B68 2415FFFB */  addiu      $s5, $zero, -0x5
    /* E8B1C 800D9B6C AFBF0034 */  sw         $ra, 0x34($sp)
    /* E8B20 800D9B70 AFB60030 */  sw         $s6, 0x30($sp)
    /* E8B24 800D9B74 AFB40028 */  sw         $s4, 0x28($sp)
    /* E8B28 800D9B78 AFB30024 */  sw         $s3, 0x24($sp)
    /* E8B2C 800D9B7C AFB20020 */  sw         $s2, 0x20($sp)
    /* E8B30 800D9B80 12350003 */  beq        $s1, $s5, .L800D9B90_E8B40
    /* E8B34 800D9B84 AFB00018 */   sw        $s0, 0x18($sp)
    /* E8B38 800D9B88 2416FFFA */  addiu      $s6, $zero, -0x6
    /* E8B3C 800D9B8C 16360005 */  bne        $s1, $s6, .L800D9BA4_E8B54
  .L800D9B90_E8B40:
    /* E8B40 800D9B90 24040015 */   addiu     $a0, $zero, 0x15
    /* E8B44 800D9B94 0C030506 */  jal        func_800C1418_D03C8
    /* E8B48 800D9B98 24050001 */   addiu     $a1, $zero, 0x1
    /* E8B4C 800D9B9C 10000027 */  b          .L800D9C3C_E8BEC
    /* E8B50 800D9BA0 8FBF0034 */   lw        $ra, 0x34($sp)
  .L800D9BA4_E8B54:
    /* E8B54 800D9BA4 52350025 */  beql       $s1, $s5, .L800D9C3C_E8BEC
    /* E8B58 800D9BA8 8FBF0034 */   lw        $ra, 0x34($sp)
    /* E8B5C 800D9BAC 12360022 */  beq        $s1, $s6, .L800D9C38_E8BE8
    /* E8B60 800D9BB0 2414001C */   addiu     $s4, $zero, 0x1C
    /* E8B64 800D9BB4 3C138015 */  lui        $s3, %hi(D_80154318)
    /* E8B68 800D9BB8 26734318 */  addiu      $s3, $s3, %lo(D_80154318)
  .L800D9BBC_E8B6C:
    /* E8B6C 800D9BBC 02340019 */  multu      $s1, $s4
    /* E8B70 800D9BC0 00112400 */  sll        $a0, $s1, 16
    /* E8B74 800D9BC4 0004CC03 */  sra        $t9, $a0, 16
    /* E8B78 800D9BC8 03202025 */  or         $a0, $t9, $zero
    /* E8B7C 800D9BCC 00007012 */  mflo       $t6
    /* E8B80 800D9BD0 026E8021 */  addu       $s0, $s3, $t6
    /* E8B84 800D9BD4 86050004 */  lh         $a1, 0x4($s0)
    /* E8B88 800D9BD8 8E190008 */  lw         $t9, 0x8($s0)
    /* E8B8C 800D9BDC 00B40019 */  multu      $a1, $s4
    /* E8B90 800D9BE0 00007812 */  mflo       $t7
    /* E8B94 800D9BE4 026FC021 */  addu       $t8, $s3, $t7
    /* E8B98 800D9BE8 0320F809 */  jalr       $t9
    /* E8B9C 800D9BEC 87120004 */   lh        $s2, 0x4($t8)
    /* E8BA0 800D9BF0 26020008 */  addiu      $v0, $s0, 0x8
    /* E8BA4 800D9BF4 84430004 */  lh         $v1, 0x4($v0)
    /* E8BA8 800D9BF8 00112400 */  sll        $a0, $s1, 16
    /* E8BAC 800D9BFC 00044C03 */  sra        $t1, $a0, 16
    /* E8BB0 800D9C00 10600004 */  beqz       $v1, .L800D9C14_E8BC4
    /* E8BB4 800D9C04 01202025 */   or        $a0, $t1, $zero
    /* E8BB8 800D9C08 2468FFFF */  addiu      $t0, $v1, -0x1
    /* E8BBC 800D9C0C 10000004 */  b          .L800D9C20_E8BD0
    /* E8BC0 800D9C10 A4480004 */   sh        $t0, 0x4($v0)
  .L800D9C14_E8BC4:
    /* E8BC4 800D9C14 24050015 */  addiu      $a1, $zero, 0x15
    /* E8BC8 800D9C18 0C030789 */  jal        func_800C1E24_D0DD4
    /* E8BCC 800D9C1C 24060001 */   addiu     $a2, $zero, 0x1
  .L800D9C20_E8BD0:
    /* E8BD0 800D9C20 00128C00 */  sll        $s1, $s2, 16
    /* E8BD4 800D9C24 00115403 */  sra        $t2, $s1, 16
    /* E8BD8 800D9C28 12550003 */  beq        $s2, $s5, .L800D9C38_E8BE8
    /* E8BDC 800D9C2C 01408825 */   or        $s1, $t2, $zero
    /* E8BE0 800D9C30 1556FFE2 */  bne        $t2, $s6, .L800D9BBC_E8B6C
    /* E8BE4 800D9C34 00000000 */   nop
  .L800D9C38_E8BE8:
    /* E8BE8 800D9C38 8FBF0034 */  lw         $ra, 0x34($sp)
  .L800D9C3C_E8BEC:
    /* E8BEC 800D9C3C 8FB00018 */  lw         $s0, 0x18($sp)
    /* E8BF0 800D9C40 8FB1001C */  lw         $s1, 0x1C($sp)
    /* E8BF4 800D9C44 8FB20020 */  lw         $s2, 0x20($sp)
    /* E8BF8 800D9C48 8FB30024 */  lw         $s3, 0x24($sp)
    /* E8BFC 800D9C4C 8FB40028 */  lw         $s4, 0x28($sp)
    /* E8C00 800D9C50 8FB5002C */  lw         $s5, 0x2C($sp)
    /* E8C04 800D9C54 8FB60030 */  lw         $s6, 0x30($sp)
    /* E8C08 800D9C58 03E00008 */  jr         $ra
    /* E8C0C 800D9C5C 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800D9B54_E8B04
