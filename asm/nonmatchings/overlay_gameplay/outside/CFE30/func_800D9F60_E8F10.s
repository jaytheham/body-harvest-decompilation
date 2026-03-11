nonmatching func_800D9F60_E8F10, 0x98

glabel func_800D9F60_E8F10
    /* E8F10 800D9F60 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* E8F14 800D9F64 AFA40028 */  sw         $a0, 0x28($sp)
    /* E8F18 800D9F68 8FAE0028 */  lw         $t6, 0x28($sp)
    /* E8F1C 800D9F6C 3C188005 */  lui        $t8, %hi(vehicleInstances)
    /* E8F20 800D9F70 2718DCD0 */  addiu      $t8, $t8, %lo(vehicleInstances)
    /* E8F24 800D9F74 000E7880 */  sll        $t7, $t6, 2
    /* E8F28 800D9F78 01EE7823 */  subu       $t7, $t7, $t6
    /* E8F2C 800D9F7C 000F78C0 */  sll        $t7, $t7, 3
    /* E8F30 800D9F80 01EE7823 */  subu       $t7, $t7, $t6
    /* E8F34 800D9F84 000F7880 */  sll        $t7, $t7, 2
    /* E8F38 800D9F88 01F81021 */  addu       $v0, $t7, $t8
    /* E8F3C 800D9F8C 84590004 */  lh         $t9, 0x4($v0)
    /* E8F40 800D9F90 AFBF001C */  sw         $ra, 0x1C($sp)
    /* E8F44 800D9F94 3C04800E */  lui        $a0, %hi(func_800D9E38_E8DE8)
    /* E8F48 800D9F98 24849E38 */  addiu      $a0, $a0, %lo(func_800D9E38_E8DE8)
    /* E8F4C 800D9F9C 84460000 */  lh         $a2, 0x0($v0)
    /* E8F50 800D9FA0 84470002 */  lh         $a3, 0x2($v0)
    /* E8F54 800D9FA4 24050010 */  addiu      $a1, $zero, 0x10
    /* E8F58 800D9FA8 0C03667D */  jal        func_800D99F4_E89A4
    /* E8F5C 800D9FAC AFB90010 */   sw        $t9, 0x10($sp)
    /* E8F60 800D9FB0 00023C00 */  sll        $a3, $v0, 16
    /* E8F64 800D9FB4 2401FFFD */  addiu      $at, $zero, -0x3
    /* E8F68 800D9FB8 1041000B */  beq        $v0, $at, .L800D9FE8_E8F98
    /* E8F6C 800D9FBC 00074403 */   sra       $t0, $a3, 16
    /* E8F70 800D9FC0 24040183 */  addiu      $a0, $zero, 0x183
    /* E8F74 800D9FC4 0C0054F6 */  jal        func_800153D8_15FD8
    /* E8F78 800D9FC8 A7A80026 */   sh        $t0, 0x26($sp)
    /* E8F7C 800D9FCC 87A70026 */  lh         $a3, 0x26($sp)
    /* E8F80 800D9FD0 00002825 */  or         $a1, $zero, $zero
    /* E8F84 800D9FD4 87A6002A */  lh         $a2, 0x2A($sp)
    /* E8F88 800D9FD8 00072400 */  sll        $a0, $a3, 16
    /* E8F8C 800D9FDC 00044C03 */  sra        $t1, $a0, 16
    /* E8F90 800D9FE0 0C0366A3 */  jal        func_800D9A8C_E8A3C
    /* E8F94 800D9FE4 01202025 */   or        $a0, $t1, $zero
  .L800D9FE8_E8F98:
    /* E8F98 800D9FE8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* E8F9C 800D9FEC 27BD0028 */  addiu      $sp, $sp, 0x28
    /* E8FA0 800D9FF0 03E00008 */  jr         $ra
    /* E8FA4 800D9FF4 00000000 */   nop
endlabel func_800D9F60_E8F10
