nonmatching func_80000ED4_1AD4, 0x17C

glabel func_80000ED4_1AD4
    /* 1AD4 80000ED4 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 1AD8 80000ED8 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 1ADC 80000EDC AFB5002C */  sw         $s5, 0x2C($sp)
    /* 1AE0 80000EE0 AFB20020 */  sw         $s2, 0x20($sp)
    /* 1AE4 80000EE4 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 1AE8 80000EE8 AFB70034 */  sw         $s7, 0x34($sp)
    /* 1AEC 80000EEC AFB60030 */  sw         $s6, 0x30($sp)
    /* 1AF0 80000EF0 AFB40028 */  sw         $s4, 0x28($sp)
    /* 1AF4 80000EF4 AFB30024 */  sw         $s3, 0x24($sp)
    /* 1AF8 80000EF8 3C118004 */  lui        $s1, %hi(D_80047678)
    /* 1AFC 80000EFC 3C128004 */  lui        $s2, %hi(D_80047610)
    /* 1B00 80000F00 3C158004 */  lui        $s5, %hi(D_800433A8)
    /* 1B04 80000F04 3C1E8004 */  lui        $fp, %hi(D_80043388)
    /* 1B08 80000F08 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 1B0C 80000F0C AFB00018 */  sw         $s0, 0x18($sp)
    /* 1B10 80000F10 27DE3388 */  addiu      $fp, $fp, %lo(D_80043388)
    /* 1B14 80000F14 26B533A8 */  addiu      $s5, $s5, %lo(D_800433A8)
    /* 1B18 80000F18 26527610 */  addiu      $s2, $s2, %lo(D_80047610)
    /* 1B1C 80000F1C 26317678 */  addiu      $s1, $s1, %lo(D_80047678)
    /* 1B20 80000F20 24130068 */  addiu      $s3, $zero, 0x68
    /* 1B24 80000F24 24140001 */  addiu      $s4, $zero, 0x1
    /* 1B28 80000F28 27B60058 */  addiu      $s6, $sp, 0x58
    /* 1B2C 80000F2C 24170002 */  addiu      $s7, $zero, 0x2
    /* 1B30 80000F30 02A02025 */  or         $a0, $s5, $zero
  .L80000F34_1B34:
    /* 1B34 80000F34 02C02825 */  or         $a1, $s6, $zero
    /* 1B38 80000F38 0C006E9C */  jal        osRecvMesg
    /* 1B3C 80000F3C 02803025 */   or        $a2, $s4, $zero
    /* 1B40 80000F40 922E0000 */  lbu        $t6, 0x0($s1)
    /* 1B44 80000F44 568EFFFB */  bnel       $s4, $t6, .L80000F34_1B34
    /* 1B48 80000F48 02A02025 */   or        $a0, $s5, $zero
    /* 1B4C 80000F4C 0C003FD0 */  jal        func_8000FF40_10B40
    /* 1B50 80000F50 00000000 */   nop
    /* 1B54 80000F54 8FAF0058 */  lw         $t7, 0x58($sp)
    /* 1B58 80000F58 85E20000 */  lh         $v0, 0x0($t7)
    /* 1B5C 80000F5C 8DE30004 */  lw         $v1, 0x4($t7)
    /* 1B60 80000F60 10400010 */  beqz       $v0, .L80000FA4_1BA4
    /* 1B64 80000F64 00000000 */   nop
    /* 1B68 80000F68 10540005 */  beq        $v0, $s4, .L80000F80_1B80
    /* 1B6C 80000F6C 00000000 */   nop
    /* 1B70 80000F70 10570015 */  beq        $v0, $s7, .L80000FC8_1BC8
    /* 1B74 80000F74 00000000 */   nop
    /* 1B78 80000F78 1000001F */  b          .L80000FF8_1BF8
    /* 1B7C 80000F7C 00000000 */   nop
  .L80000F80_1B80:
    /* 1B80 80000F80 00730019 */  multu      $v1, $s3
    /* 1B84 80000F84 0000C012 */  mflo       $t8
    /* 1B88 80000F88 02582021 */  addu       $a0, $s2, $t8
    /* 1B8C 80000F8C 0C0071E6 */  jal        osMotorStart
    /* 1B90 80000F90 00000000 */   nop
    /* 1B94 80000F94 10400018 */  beqz       $v0, .L80000FF8_1BF8
    /* 1B98 80000F98 00000000 */   nop
    /* 1B9C 80000F9C 10000016 */  b          .L80000FF8_1BF8
    /* 1BA0 80000FA0 A2200000 */   sb        $zero, 0x0($s1)
  .L80000FA4_1BA4:
    /* 1BA4 80000FA4 00730019 */  multu      $v1, $s3
    /* 1BA8 80000FA8 0000C812 */  mflo       $t9
    /* 1BAC 80000FAC 02592021 */  addu       $a0, $s2, $t9
    /* 1BB0 80000FB0 0C00718C */  jal        osMotorStop
    /* 1BB4 80000FB4 00000000 */   nop
    /* 1BB8 80000FB8 1040000F */  beqz       $v0, .L80000FF8_1BF8
    /* 1BBC 80000FBC 00000000 */   nop
    /* 1BC0 80000FC0 1000000D */  b          .L80000FF8_1BF8
    /* 1BC4 80000FC4 A2200000 */   sb        $zero, 0x0($s1)
  .L80000FC8_1BC8:
    /* 1BC8 80000FC8 00730019 */  multu      $v1, $s3
    /* 1BCC 80000FCC 03C02025 */  or         $a0, $fp, $zero
    /* 1BD0 80000FD0 00003025 */  or         $a2, $zero, $zero
    /* 1BD4 80000FD4 00004012 */  mflo       $t0
    /* 1BD8 80000FD8 02488021 */  addu       $s0, $s2, $t0
    /* 1BDC 80000FDC 0C0072A0 */  jal        osMotorInit
    /* 1BE0 80000FE0 02002825 */   or        $a1, $s0, $zero
    /* 1BE4 80000FE4 14400002 */  bnez       $v0, .L80000FF0_1BF0
    /* 1BE8 80000FE8 24090001 */   addiu     $t1, $zero, 0x1
    /* 1BEC 80000FEC A2290000 */  sb         $t1, 0x0($s1)
  .L80000FF0_1BF0:
    /* 1BF0 80000FF0 0C00718C */  jal        osMotorStop
    /* 1BF4 80000FF4 02002025 */   or        $a0, $s0, $zero
  .L80000FF8_1BF8:
    /* 1BF8 80000FF8 0C003FE2 */  jal        __osSiRelAccess
    /* 1BFC 80000FFC 00000000 */   nop
    /* 1C00 80001000 1000FFCC */  b          .L80000F34_1B34
    /* 1C04 80001004 02A02025 */   or        $a0, $s5, $zero
    /* 1C08 80001008 00000000 */  nop
    /* 1C0C 8000100C 00000000 */  nop
    /* 1C10 80001010 00000000 */  nop
    /* 1C14 80001014 00000000 */  nop
    /* 1C18 80001018 00000000 */  nop
    /* 1C1C 8000101C 00000000 */  nop
    /* 1C20 80001020 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 1C24 80001024 8FB00018 */  lw         $s0, 0x18($sp)
    /* 1C28 80001028 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 1C2C 8000102C 8FB20020 */  lw         $s2, 0x20($sp)
    /* 1C30 80001030 8FB30024 */  lw         $s3, 0x24($sp)
    /* 1C34 80001034 8FB40028 */  lw         $s4, 0x28($sp)
    /* 1C38 80001038 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 1C3C 8000103C 8FB60030 */  lw         $s6, 0x30($sp)
    /* 1C40 80001040 8FB70034 */  lw         $s7, 0x34($sp)
    /* 1C44 80001044 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 1C48 80001048 03E00008 */  jr         $ra
    /* 1C4C 8000104C 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_80000ED4_1AD4
