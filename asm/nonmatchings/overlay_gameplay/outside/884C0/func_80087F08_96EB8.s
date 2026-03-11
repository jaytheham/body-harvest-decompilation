nonmatching func_80087F08_96EB8, 0xF8

glabel func_80087F08_96EB8
    /* 96EB8 80087F08 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 96EBC 80087F0C AFBE0038 */  sw         $fp, 0x38($sp)
    /* 96EC0 80087F10 AFB00018 */  sw         $s0, 0x18($sp)
    /* 96EC4 80087F14 AFB70034 */  sw         $s7, 0x34($sp)
    /* 96EC8 80087F18 AFB60030 */  sw         $s6, 0x30($sp)
    /* 96ECC 80087F1C AFB5002C */  sw         $s5, 0x2C($sp)
    /* 96ED0 80087F20 AFB40028 */  sw         $s4, 0x28($sp)
    /* 96ED4 80087F24 AFB30024 */  sw         $s3, 0x24($sp)
    /* 96ED8 80087F28 AFB20020 */  sw         $s2, 0x20($sp)
    /* 96EDC 80087F2C AFB1001C */  sw         $s1, 0x1C($sp)
    /* 96EE0 80087F30 3C108005 */  lui        $s0, %hi(alienInstances)
    /* 96EE4 80087F34 3C1E8022 */  lui        $fp, %hi(D_80223780)
    /* 96EE8 80087F38 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 96EEC 80087F3C 27DE3780 */  addiu      $fp, $fp, %lo(D_80223780)
    /* 96EF0 80087F40 26108198 */  addiu      $s0, $s0, %lo(alienInstances)
    /* 96EF4 80087F44 00008825 */  or         $s1, $zero, $zero
    /* 96EF8 80087F48 241200FF */  addiu      $s2, $zero, 0xFF
    /* 96EFC 80087F4C 24130002 */  addiu      $s3, $zero, 0x2
    /* 96F00 80087F50 24140020 */  addiu      $s4, $zero, 0x20
    /* 96F04 80087F54 24150001 */  addiu      $s5, $zero, 0x1
    /* 96F08 80087F58 24160018 */  addiu      $s6, $zero, 0x18
    /* 96F0C 80087F5C 24170017 */  addiu      $s7, $zero, 0x17
  .L80087F60_96F10:
    /* 96F10 80087F60 9202001A */  lbu        $v0, 0x1A($s0)
    /* 96F14 80087F64 12620003 */  beq        $s3, $v0, .L80087F74_96F24
    /* 96F18 80087F68 00000000 */   nop
    /* 96F1C 80087F6C 16820005 */  bne        $s4, $v0, .L80087F84_96F34
    /* 96F20 80087F70 00000000 */   nop
  .L80087F74_96F24:
    /* 96F24 80087F74 0C0221D8 */  jal        func_80088760_97710
    /* 96F28 80087F78 02002025 */   or        $a0, $s0, $zero
    /* 96F2C 80087F7C 10000012 */  b          .L80087FC8_96F78
    /* 96F30 80087F80 26310001 */   addiu     $s1, $s1, 0x1
  .L80087F84_96F34:
    /* 96F34 80087F84 52A20010 */  beql       $s5, $v0, .L80087FC8_96F78
    /* 96F38 80087F88 26310001 */   addiu     $s1, $s1, 0x1
    /* 96F3C 80087F8C 52C2000E */  beql       $s6, $v0, .L80087FC8_96F78
    /* 96F40 80087F90 26310001 */   addiu     $s1, $s1, 0x1
    /* 96F44 80087F94 52E2000C */  beql       $s7, $v0, .L80087FC8_96F78
    /* 96F48 80087F98 26310001 */   addiu     $s1, $s1, 0x1
    /* 96F4C 80087F9C 9202003E */  lbu        $v0, 0x3E($s0)
    /* 96F50 80087FA0 240E0001 */  addiu      $t6, $zero, 0x1
    /* 96F54 80087FA4 12420005 */  beq        $s2, $v0, .L80087FBC_96F6C
    /* 96F58 80087FA8 00027880 */   sll       $t7, $v0, 2
    /* 96F5C 80087FAC 01E27821 */  addu       $t7, $t7, $v0
    /* 96F60 80087FB0 000F7880 */  sll        $t7, $t7, 2
    /* 96F64 80087FB4 03CFC021 */  addu       $t8, $fp, $t7
    /* 96F68 80087FB8 A30E0011 */  sb         $t6, 0x11($t8)
  .L80087FBC_96F6C:
    /* 96F6C 80087FBC 0C021EAB */  jal        func_80087AAC_96A5C
    /* 96F70 80087FC0 322400FF */   andi      $a0, $s1, 0xFF
    /* 96F74 80087FC4 26310001 */  addiu      $s1, $s1, 0x1
  .L80087FC8_96F78:
    /* 96F78 80087FC8 1632FFE5 */  bne        $s1, $s2, .L80087F60_96F10
    /* 96F7C 80087FCC 26100050 */   addiu     $s0, $s0, 0x50
    /* 96F80 80087FD0 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 96F84 80087FD4 8FB00018 */  lw         $s0, 0x18($sp)
    /* 96F88 80087FD8 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 96F8C 80087FDC 8FB20020 */  lw         $s2, 0x20($sp)
    /* 96F90 80087FE0 8FB30024 */  lw         $s3, 0x24($sp)
    /* 96F94 80087FE4 8FB40028 */  lw         $s4, 0x28($sp)
    /* 96F98 80087FE8 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 96F9C 80087FEC 8FB60030 */  lw         $s6, 0x30($sp)
    /* 96FA0 80087FF0 8FB70034 */  lw         $s7, 0x34($sp)
    /* 96FA4 80087FF4 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 96FA8 80087FF8 03E00008 */  jr         $ra
    /* 96FAC 80087FFC 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_80087F08_96EB8
