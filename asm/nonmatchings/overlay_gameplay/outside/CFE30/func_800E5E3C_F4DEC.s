nonmatching func_800E5E3C_F4DEC, 0x1EC

glabel func_800E5E3C_F4DEC
    /* F4DEC 800E5E3C 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* F4DF0 800E5E40 AFB00018 */  sw         $s0, 0x18($sp)
    /* F4DF4 800E5E44 309000FF */  andi       $s0, $a0, 0xFF
    /* F4DF8 800E5E48 AFA40058 */  sw         $a0, 0x58($sp)
    /* F4DFC 800E5E4C AFBF003C */  sw         $ra, 0x3C($sp)
    /* F4E00 800E5E50 AFA5005C */  sw         $a1, 0x5C($sp)
    /* F4E04 800E5E54 30A600FF */  andi       $a2, $a1, 0xFF
    /* F4E08 800E5E58 3C048014 */  lui        $a0, %hi(D_80143F7C)
    /* F4E0C 800E5E5C AFBE0038 */  sw         $fp, 0x38($sp)
    /* F4E10 800E5E60 AFB70034 */  sw         $s7, 0x34($sp)
    /* F4E14 800E5E64 AFB60030 */  sw         $s6, 0x30($sp)
    /* F4E18 800E5E68 AFB5002C */  sw         $s5, 0x2C($sp)
    /* F4E1C 800E5E6C AFB40028 */  sw         $s4, 0x28($sp)
    /* F4E20 800E5E70 AFB30024 */  sw         $s3, 0x24($sp)
    /* F4E24 800E5E74 AFB20020 */  sw         $s2, 0x20($sp)
    /* F4E28 800E5E78 AFB1001C */  sw         $s1, 0x1C($sp)
    /* F4E2C 800E5E7C 24843F7C */  addiu      $a0, $a0, %lo(D_80143F7C)
    /* F4E30 800E5E80 00C02825 */  or         $a1, $a2, $zero
    /* F4E34 800E5E84 0C00731B */  jal        osSyncPrintf
    /* F4E38 800E5E88 AFA6004C */   sw        $a2, 0x4C($sp)
    /* F4E3C 800E5E8C 3C068015 */  lui        $a2, %hi(D_80152C96)
    /* F4E40 800E5E90 84C62C96 */  lh         $a2, %lo(D_80152C96)($a2)
    /* F4E44 800E5E94 00009025 */  or         $s2, $zero, $zero
    /* F4E48 800E5E98 02003825 */  or         $a3, $s0, $zero
    /* F4E4C 800E5E9C 04C00056 */  bltz       $a2, .L800E5FF8_F4FA8
    /* F4E50 800E5EA0 241E0001 */   addiu     $fp, $zero, 0x1
    /* F4E54 800E5EA4 3C178014 */  lui        $s7, %hi(D_80143F94)
    /* F4E58 800E5EA8 3C148005 */  lui        $s4, %hi(vehicleInstances)
    /* F4E5C 800E5EAC 3C108015 */  lui        $s0, %hi(D_80152CA0)
    /* F4E60 800E5EB0 26102CA0 */  addiu      $s0, $s0, %lo(D_80152CA0)
    /* F4E64 800E5EB4 2694DCD0 */  addiu      $s4, $s4, %lo(vehicleInstances)
    /* F4E68 800E5EB8 26F73F94 */  addiu      $s7, $s7, %lo(D_80143F94)
    /* F4E6C 800E5EBC 2416FF7F */  addiu      $s6, $zero, -0x81
    /* F4E70 800E5EC0 2415005C */  addiu      $s5, $zero, 0x5C
    /* F4E74 800E5EC4 24130002 */  addiu      $s3, $zero, 0x2
    /* F4E78 800E5EC8 24110003 */  addiu      $s1, $zero, 0x3
  .L800E5ECC_F4E7C:
    /* F4E7C 800E5ECC 02510019 */  multu      $s2, $s1
    /* F4E80 800E5ED0 8FAF004C */  lw         $t7, 0x4C($sp)
    /* F4E84 800E5ED4 00007012 */  mflo       $t6
    /* F4E88 800E5ED8 020E1821 */  addu       $v1, $s0, $t6
    /* F4E8C 800E5EDC 90620001 */  lbu        $v0, 0x1($v1)
    /* F4E90 800E5EE0 54E20040 */  bnel       $a3, $v0, .L800E5FE4_F4F94
    /* F4E94 800E5EE4 26520001 */   addiu     $s2, $s2, 0x1
    /* F4E98 800E5EE8 90650000 */  lbu        $a1, 0x0($v1)
    /* F4E9C 800E5EEC 55E5003D */  bnel       $t7, $a1, .L800E5FE4_F4F94
    /* F4EA0 800E5EF0 26520001 */   addiu     $s2, $s2, 0x1
    /* F4EA4 800E5EF4 16620008 */  bne        $s3, $v0, .L800E5F18_F4EC8
    /* F4EA8 800E5EF8 00000000 */   nop
    /* F4EAC 800E5EFC 00B50019 */  multu      $a1, $s5
    /* F4EB0 800E5F00 0000C012 */  mflo       $t8
    /* F4EB4 800E5F04 02981021 */  addu       $v0, $s4, $t8
    /* F4EB8 800E5F08 94590020 */  lhu        $t9, 0x20($v0)
    /* F4EBC 800E5F0C 03364024 */  and        $t0, $t9, $s6
    /* F4EC0 800E5F10 10000010 */  b          .L800E5F54_F4F04
    /* F4EC4 800E5F14 A4480020 */   sh        $t0, 0x20($v0)
  .L800E5F18_F4EC8:
    /* F4EC8 800E5F18 17C2000E */  bne        $fp, $v0, .L800E5F54_F4F04
    /* F4ECC 800E5F1C 00054880 */   sll       $t1, $a1, 2
    /* F4ED0 800E5F20 01254823 */  subu       $t1, $t1, $a1
    /* F4ED4 800E5F24 3C0A8005 */  lui        $t2, %hi(buildingInstances)
    /* F4ED8 800E5F28 254A0AD8 */  addiu      $t2, $t2, %lo(buildingInstances)
    /* F4EDC 800E5F2C 000948C0 */  sll        $t1, $t1, 3
    /* F4EE0 800E5F30 012A1021 */  addu       $v0, $t1, $t2
    /* F4EE4 800E5F34 8C430008 */  lw         $v1, 0x8($v0)
    /* F4EE8 800E5F38 2401EFFF */  addiu      $at, $zero, -0x1001
    /* F4EEC 800E5F3C 00032302 */  srl        $a0, $v1, 12
    /* F4EF0 800E5F40 00815824 */  and        $t3, $a0, $at
    /* F4EF4 800E5F44 01646026 */  xor        $t4, $t3, $a0
    /* F4EF8 800E5F48 000C6B00 */  sll        $t5, $t4, 12
    /* F4EFC 800E5F4C 01A37026 */  xor        $t6, $t5, $v1
    /* F4F00 800E5F50 AC4E0008 */  sw         $t6, 0x8($v0)
  .L800E5F54_F4F04:
    /* F4F04 800E5F54 00121400 */  sll        $v0, $s2, 16
    /* F4F08 800E5F58 24C5FFFF */  addiu      $a1, $a2, -0x1
    /* F4F0C 800E5F5C 0245082A */  slt        $at, $s2, $a1
    /* F4F10 800E5F60 00027C03 */  sra        $t7, $v0, 16
    /* F4F14 800E5F64 10200010 */  beqz       $at, .L800E5FA8_F4F58
    /* F4F18 800E5F68 01E01025 */   or        $v0, $t7, $zero
  .L800E5F6C_F4F1C:
    /* F4F1C 800E5F6C 00510019 */  multu      $v0, $s1
    /* F4F20 800E5F70 24420001 */  addiu      $v0, $v0, 0x1
    /* F4F24 800E5F74 00024C00 */  sll        $t1, $v0, 16
    /* F4F28 800E5F78 00091403 */  sra        $v0, $t1, 16
    /* F4F2C 800E5F7C 0000C012 */  mflo       $t8
    /* F4F30 800E5F80 02181821 */  addu       $v1, $s0, $t8
    /* F4F34 800E5F84 90610003 */  lbu        $at, 0x3($v1)
    /* F4F38 800E5F88 90680004 */  lbu        $t0, 0x4($v1)
    /* F4F3C 800E5F8C A0610000 */  sb         $at, 0x0($v1)
    /* F4F40 800E5F90 90610005 */  lbu        $at, 0x5($v1)
    /* F4F44 800E5F94 A0680001 */  sb         $t0, 0x1($v1)
    /* F4F48 800E5F98 A0610002 */  sb         $at, 0x2($v1)
    /* F4F4C 800E5F9C 0045082A */  slt        $at, $v0, $a1
    /* F4F50 800E5FA0 1420FFF2 */  bnez       $at, .L800E5F6C_F4F1C
    /* F4F54 800E5FA4 00000000 */   nop
  .L800E5FA8_F4F58:
    /* F4F58 800E5FA8 00510019 */  multu      $v0, $s1
    /* F4F5C 800E5FAC 3C018015 */  lui        $at, %hi(D_80152C96)
    /* F4F60 800E5FB0 A4252C96 */  sh         $a1, %lo(D_80152C96)($at)
    /* F4F64 800E5FB4 02E02025 */  or         $a0, $s7, $zero
    /* F4F68 800E5FB8 AFA70040 */  sw         $a3, 0x40($sp)
    /* F4F6C 800E5FBC 00005812 */  mflo       $t3
    /* F4F70 800E5FC0 020B1821 */  addu       $v1, $s0, $t3
    /* F4F74 800E5FC4 A0600005 */  sb         $zero, 0x5($v1)
    /* F4F78 800E5FC8 A0600003 */  sb         $zero, 0x3($v1)
    /* F4F7C 800E5FCC 0C00731B */  jal        osSyncPrintf
    /* F4F80 800E5FD0 A0600004 */   sb        $zero, 0x4($v1)
    /* F4F84 800E5FD4 3C068015 */  lui        $a2, %hi(D_80152C96)
    /* F4F88 800E5FD8 84C62C96 */  lh         $a2, %lo(D_80152C96)($a2)
    /* F4F8C 800E5FDC 8FA70040 */  lw         $a3, 0x40($sp)
    /* F4F90 800E5FE0 26520001 */  addiu      $s2, $s2, 0x1
  .L800E5FE4_F4F94:
    /* F4F94 800E5FE4 00126400 */  sll        $t4, $s2, 16
    /* F4F98 800E5FE8 000C9403 */  sra        $s2, $t4, 16
    /* F4F9C 800E5FEC 00D2082A */  slt        $at, $a2, $s2
    /* F4FA0 800E5FF0 1020FFB6 */  beqz       $at, .L800E5ECC_F4E7C
    /* F4FA4 800E5FF4 00000000 */   nop
  .L800E5FF8_F4FA8:
    /* F4FA8 800E5FF8 8FBF003C */  lw         $ra, 0x3C($sp)
    /* F4FAC 800E5FFC 8FB00018 */  lw         $s0, 0x18($sp)
    /* F4FB0 800E6000 8FB1001C */  lw         $s1, 0x1C($sp)
    /* F4FB4 800E6004 8FB20020 */  lw         $s2, 0x20($sp)
    /* F4FB8 800E6008 8FB30024 */  lw         $s3, 0x24($sp)
    /* F4FBC 800E600C 8FB40028 */  lw         $s4, 0x28($sp)
    /* F4FC0 800E6010 8FB5002C */  lw         $s5, 0x2C($sp)
    /* F4FC4 800E6014 8FB60030 */  lw         $s6, 0x30($sp)
    /* F4FC8 800E6018 8FB70034 */  lw         $s7, 0x34($sp)
    /* F4FCC 800E601C 8FBE0038 */  lw         $fp, 0x38($sp)
    /* F4FD0 800E6020 03E00008 */  jr         $ra
    /* F4FD4 800E6024 27BD0058 */   addiu     $sp, $sp, 0x58
endlabel func_800E5E3C_F4DEC
