nonmatching func_800D6EAC_E5E5C, 0x180

glabel func_800D6EAC_E5E5C
    /* E5E5C 800D6EAC 308700FF */  andi       $a3, $a0, 0xFF
    /* E5E60 800D6EB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* E5E64 800D6EB4 00077080 */  sll        $t6, $a3, 2
    /* E5E68 800D6EB8 AFB00020 */  sw         $s0, 0x20($sp)
    /* E5E6C 800D6EBC 01C77023 */  subu       $t6, $t6, $a3
    /* E5E70 800D6EC0 000E7080 */  sll        $t6, $t6, 2
    /* E5E74 800D6EC4 3C108015 */  lui        $s0, %hi(D_8015408E)
    /* E5E78 800D6EC8 020E8021 */  addu       $s0, $s0, $t6
    /* E5E7C 800D6ECC 8610408E */  lh         $s0, %lo(D_8015408E)($s0)
    /* E5E80 800D6ED0 2401FFFB */  addiu      $at, $zero, -0x5
    /* E5E84 800D6ED4 AFBF0024 */  sw         $ra, 0x24($sp)
    /* E5E88 800D6ED8 12010004 */  beq        $s0, $at, .L800D6EEC_E5E9C
    /* E5E8C 800D6EDC AFA40028 */   sw        $a0, 0x28($sp)
    /* E5E90 800D6EE0 2401FFFA */  addiu      $at, $zero, -0x6
    /* E5E94 800D6EE4 16010009 */  bne        $s0, $at, .L800D6F0C_E5EBC
    /* E5E98 800D6EE8 001078C0 */   sll       $t7, $s0, 3
  .L800D6EEC_E5E9C:
    /* E5E9C 800D6EEC 30E400FF */  andi       $a0, $a3, 0xFF
    /* E5EA0 800D6EF0 00002825 */  or         $a1, $zero, $zero
    /* E5EA4 800D6EF4 0C030506 */  jal        func_800C1418_D03C8
    /* E5EA8 800D6EF8 A3A7002B */   sb        $a3, 0x2B($sp)
    /* E5EAC 800D6EFC 0C0304E1 */  jal        func_800C1384_D0334
    /* E5EB0 800D6F00 93A4002B */   lbu       $a0, 0x2B($sp)
    /* E5EB4 800D6F04 10000045 */  b          .L800D701C_E5FCC
    /* E5EB8 800D6F08 8FBF0024 */   lw        $ra, 0x24($sp)
  .L800D6F0C_E5EBC:
    /* E5EBC 800D6F0C 01F07823 */  subu       $t7, $t7, $s0
    /* E5EC0 800D6F10 3C188015 */  lui        $t8, %hi(D_80154318)
    /* E5EC4 800D6F14 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* E5EC8 800D6F18 000F7880 */  sll        $t7, $t7, 2
    /* E5ECC 800D6F1C 01F81821 */  addu       $v1, $t7, $t8
    /* E5ED0 800D6F20 9079000E */  lbu        $t9, 0xE($v1)
    /* E5ED4 800D6F24 24010037 */  addiu      $at, $zero, 0x37
    /* E5ED8 800D6F28 24620008 */  addiu      $v0, $v1, 0x8
    /* E5EDC 800D6F2C 1721000D */  bne        $t9, $at, .L800D6F64_E5F14
    /* E5EE0 800D6F30 00102400 */   sll       $a0, $s0, 16
    /* E5EE4 800D6F34 00102400 */  sll        $a0, $s0, 16
    /* E5EE8 800D6F38 00044403 */  sra        $t0, $a0, 16
    /* E5EEC 800D6F3C 01002025 */  or         $a0, $t0, $zero
    /* E5EF0 800D6F40 30E500FF */  andi       $a1, $a3, 0xFF
    /* E5EF4 800D6F44 00003025 */  or         $a2, $zero, $zero
    /* E5EF8 800D6F48 0C030693 */  jal        func_800C1A4C_D09FC
    /* E5EFC 800D6F4C A3A7002B */   sb        $a3, 0x2B($sp)
    /* E5F00 800D6F50 0C0304E1 */  jal        func_800C1384_D0334
    /* E5F04 800D6F54 93A4002B */   lbu       $a0, 0x2B($sp)
    /* E5F08 800D6F58 3C018015 */  lui        $at, %hi(D_80153AB0)
    /* E5F0C 800D6F5C 1000002E */  b          .L800D7018_E5FC8
    /* E5F10 800D6F60 A0203AB0 */   sb        $zero, %lo(D_80153AB0)($at)
  .L800D6F64_E5F14:
    /* E5F14 800D6F64 90490006 */  lbu        $t1, 0x6($v0)
    /* E5F18 800D6F68 00045C03 */  sra        $t3, $a0, 16
    /* E5F1C 800D6F6C 01602025 */  or         $a0, $t3, $zero
    /* E5F20 800D6F70 252A0001 */  addiu      $t2, $t1, 0x1
    /* E5F24 800D6F74 A04A0006 */  sb         $t2, 0x6($v0)
    /* E5F28 800D6F78 0C035B06 */  jal        func_800D6C18_E5BC8
    /* E5F2C 800D6F7C 00002825 */   or        $a1, $zero, $zero
    /* E5F30 800D6F80 00102400 */  sll        $a0, $s0, 16
    /* E5F34 800D6F84 00046403 */  sra        $t4, $a0, 16
    /* E5F38 800D6F88 01802025 */  or         $a0, $t4, $zero
    /* E5F3C 800D6F8C 0C035B06 */  jal        func_800D6C18_E5BC8
    /* E5F40 800D6F90 24050001 */   addiu     $a1, $zero, 0x1
    /* E5F44 800D6F94 00102400 */  sll        $a0, $s0, 16
    /* E5F48 800D6F98 00046C03 */  sra        $t5, $a0, 16
    /* E5F4C 800D6F9C 01A02025 */  or         $a0, $t5, $zero
    /* E5F50 800D6FA0 0C035B06 */  jal        func_800D6C18_E5BC8
    /* E5F54 800D6FA4 24050002 */   addiu     $a1, $zero, 0x2
    /* E5F58 800D6FA8 00102400 */  sll        $a0, $s0, 16
    /* E5F5C 800D6FAC 00047403 */  sra        $t6, $a0, 16
    /* E5F60 800D6FB0 01C02025 */  or         $a0, $t6, $zero
    /* E5F64 800D6FB4 0C035B06 */  jal        func_800D6C18_E5BC8
    /* E5F68 800D6FB8 24050003 */   addiu     $a1, $zero, 0x3
    /* E5F6C 800D6FBC 00102400 */  sll        $a0, $s0, 16
    /* E5F70 800D6FC0 00047C03 */  sra        $t7, $a0, 16
    /* E5F74 800D6FC4 01E02025 */  or         $a0, $t7, $zero
    /* E5F78 800D6FC8 0C035B06 */  jal        func_800D6C18_E5BC8
    /* E5F7C 800D6FCC 24050004 */   addiu     $a1, $zero, 0x4
    /* E5F80 800D6FD0 3C188005 */  lui        $t8, %hi(D_80052A8C)
    /* E5F84 800D6FD4 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* E5F88 800D6FD8 3C014120 */  lui        $at, (0x41200000 >> 16)
    /* E5F8C 800D6FDC 24050001 */  addiu      $a1, $zero, 0x1
    /* E5F90 800D6FE0 33190001 */  andi       $t9, $t8, 0x1
    /* E5F94 800D6FE4 1720000C */  bnez       $t9, .L800D7018_E5FC8
    /* E5F98 800D6FE8 24060001 */   addiu     $a2, $zero, 0x1
    /* E5F9C 800D6FEC 44816000 */  mtc1       $at, $f12
    /* E5FA0 800D6FF0 0C04D742 */  jal        func_80135D08_144CB8
    /* E5FA4 800D6FF4 24070001 */   addiu     $a3, $zero, 0x1
    /* E5FA8 800D6FF8 3C018014 */  lui        $at, %hi(D_80144024)
    /* E5FAC 800D6FFC C4244024 */  lwc1       $f4, %lo(D_80144024)($at)
    /* E5FB0 800D7000 00002025 */  or         $a0, $zero, $zero
    /* E5FB4 800D7004 240500EB */  addiu      $a1, $zero, 0xEB
    /* E5FB8 800D7008 24060000 */  addiu      $a2, $zero, 0x0
    /* E5FBC 800D700C 00003825 */  or         $a3, $zero, $zero
    /* E5FC0 800D7010 0C00528F */  jal        func_80014A3C_1563C
    /* E5FC4 800D7014 E7A40010 */   swc1      $f4, 0x10($sp)
  .L800D7018_E5FC8:
    /* E5FC8 800D7018 8FBF0024 */  lw         $ra, 0x24($sp)
  .L800D701C_E5FCC:
    /* E5FCC 800D701C 8FB00020 */  lw         $s0, 0x20($sp)
    /* E5FD0 800D7020 27BD0028 */  addiu      $sp, $sp, 0x28
    /* E5FD4 800D7024 03E00008 */  jr         $ra
    /* E5FD8 800D7028 00000000 */   nop
endlabel func_800D6EAC_E5E5C
