nonmatching func_800D4AB0_E3A60, 0x94

glabel func_800D4AB0_E3A60
    /* E3A60 800D4AB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* E3A64 800D4AB4 00047400 */  sll        $t6, $a0, 16
    /* E3A68 800D4AB8 000E7C03 */  sra        $t7, $t6, 16
    /* E3A6C 800D4ABC 0005C400 */  sll        $t8, $a1, 16
    /* E3A70 800D4AC0 00064400 */  sll        $t0, $a2, 16
    /* E3A74 800D4AC4 00075400 */  sll        $t2, $a3, 16
    /* E3A78 800D4AC8 2401FFFD */  addiu      $at, $zero, -0x3
    /* E3A7C 800D4ACC 000A5C03 */  sra        $t3, $t2, 16
    /* E3A80 800D4AD0 00084C03 */  sra        $t1, $t0, 16
    /* E3A84 800D4AD4 0018CC03 */  sra        $t9, $t8, 16
    /* E3A88 800D4AD8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* E3A8C 800D4ADC AFA40018 */  sw         $a0, 0x18($sp)
    /* E3A90 800D4AE0 AFA5001C */  sw         $a1, 0x1C($sp)
    /* E3A94 800D4AE4 AFA60020 */  sw         $a2, 0x20($sp)
    /* E3A98 800D4AE8 11E1000F */  beq        $t7, $at, .L800D4B28_E3AD8
    /* E3A9C 800D4AEC AFA70024 */   sw        $a3, 0x24($sp)
    /* E3AA0 800D4AF0 000F60C0 */  sll        $t4, $t7, 3
    /* E3AA4 800D4AF4 018F6023 */  subu       $t4, $t4, $t7
    /* E3AA8 800D4AF8 3C0D8015 */  lui        $t5, %hi(D_80154318)
    /* E3AAC 800D4AFC 25AD4318 */  addiu      $t5, $t5, %lo(D_80154318)
    /* E3AB0 800D4B00 000C6080 */  sll        $t4, $t4, 2
    /* E3AB4 800D4B04 018D1021 */  addu       $v0, $t4, $t5
    /* E3AB8 800D4B08 904E0000 */  lbu        $t6, 0x0($v0)
    /* E3ABC 800D4B0C 31CF0001 */  andi       $t7, $t6, 0x1
    /* E3AC0 800D4B10 11E00005 */  beqz       $t7, .L800D4B28_E3AD8
    /* E3AC4 800D4B14 00000000 */   nop
    /* E3AC8 800D4B18 A459000E */  sh         $t9, 0xE($v0)
    /* E3ACC 800D4B1C A4490010 */  sh         $t1, 0x10($v0)
    /* E3AD0 800D4B20 10000004 */  b          .L800D4B34_E3AE4
    /* E3AD4 800D4B24 A44B0012 */   sh        $t3, 0x12($v0)
  .L800D4B28_E3AD8:
    /* E3AD8 800D4B28 3C048014 */  lui        $a0, %hi(D_80143814)
    /* E3ADC 800D4B2C 0C00731B */  jal        osSyncPrintf
    /* E3AE0 800D4B30 24843814 */   addiu     $a0, $a0, %lo(D_80143814)
  .L800D4B34_E3AE4:
    /* E3AE4 800D4B34 8FBF0014 */  lw         $ra, 0x14($sp)
    /* E3AE8 800D4B38 27BD0018 */  addiu      $sp, $sp, 0x18
    /* E3AEC 800D4B3C 03E00008 */  jr         $ra
    /* E3AF0 800D4B40 00000000 */   nop
endlabel func_800D4AB0_E3A60
