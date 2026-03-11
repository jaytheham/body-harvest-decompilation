nonmatching func_800F9E0C_108DBC, 0xB8

glabel func_800F9E0C_108DBC
    /* 108DBC 800F9E0C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 108DC0 800F9E10 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 108DC4 800F9E14 AFA40030 */  sw         $a0, 0x30($sp)
    /* 108DC8 800F9E18 AFA50034 */  sw         $a1, 0x34($sp)
    /* 108DCC 800F9E1C AFA60038 */  sw         $a2, 0x38($sp)
    /* 108DD0 800F9E20 AFA7003C */  sw         $a3, 0x3C($sp)
    /* 108DD4 800F9E24 87A50036 */  lh         $a1, 0x36($sp)
    /* 108DD8 800F9E28 0C02E173 */  jal        func_800B85CC_C757C
    /* 108DDC 800F9E2C 87A40032 */   lh        $a0, 0x32($sp)
    /* 108DE0 800F9E30 8FAF0038 */  lw         $t7, 0x38($sp)
    /* 108DE4 800F9E34 00027203 */  sra        $t6, $v0, 8
    /* 108DE8 800F9E38 27A6002A */  addiu      $a2, $sp, 0x2A
    /* 108DEC 800F9E3C A5EE0000 */  sh         $t6, 0x0($t7)
    /* 108DF0 800F9E40 8FB80048 */  lw         $t8, 0x48($sp)
    /* 108DF4 800F9E44 8FA70044 */  lw         $a3, 0x44($sp)
    /* 108DF8 800F9E48 87A50036 */  lh         $a1, 0x36($sp)
    /* 108DFC 800F9E4C 87A40032 */  lh         $a0, 0x32($sp)
    /* 108E00 800F9E50 0C0479E2 */  jal        func_8011E788_12D738
    /* 108E04 800F9E54 AFB80010 */   sw        $t8, 0x10($sp)
    /* 108E08 800F9E58 2401FFFF */  addiu      $at, $zero, -0x1
    /* 108E0C 800F9E5C 1041000D */  beq        $v0, $at, .L800F9E94_108E44
    /* 108E10 800F9E60 00401825 */   or        $v1, $v0, $zero
    /* 108E14 800F9E64 0002C880 */  sll        $t9, $v0, 2
    /* 108E18 800F9E68 0322C823 */  subu       $t9, $t9, $v0
    /* 108E1C 800F9E6C 0019C8C0 */  sll        $t9, $t9, 3
    /* 108E20 800F9E70 3C088005 */  lui        $t0, %hi(D_80050ADA)
    /* 108E24 800F9E74 01194021 */  addu       $t0, $t0, $t9
    /* 108E28 800F9E78 85080ADA */  lh         $t0, %lo(D_80050ADA)($t0)
    /* 108E2C 800F9E7C 8FA9003C */  lw         $t1, 0x3C($sp)
    /* 108E30 800F9E80 A5280000 */  sh         $t0, 0x0($t1)
    /* 108E34 800F9E84 8FAB0040 */  lw         $t3, 0x40($sp)
    /* 108E38 800F9E88 87AA002A */  lh         $t2, 0x2A($sp)
    /* 108E3C 800F9E8C 10000007 */  b          .L800F9EAC_108E5C
    /* 108E40 800F9E90 A56A0000 */   sh        $t2, 0x0($t3)
  .L800F9E94_108E44:
    /* 108E44 800F9E94 8FAC0038 */  lw         $t4, 0x38($sp)
    /* 108E48 800F9E98 8FAD003C */  lw         $t5, 0x3C($sp)
    /* 108E4C 800F9E9C 85820000 */  lh         $v0, 0x0($t4)
    /* 108E50 800F9EA0 A5A20000 */  sh         $v0, 0x0($t5)
    /* 108E54 800F9EA4 8FAE0040 */  lw         $t6, 0x40($sp)
    /* 108E58 800F9EA8 A5C20000 */  sh         $v0, 0x0($t6)
  .L800F9EAC_108E5C:
    /* 108E5C 800F9EAC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 108E60 800F9EB0 00031400 */  sll        $v0, $v1, 16
    /* 108E64 800F9EB4 00027C03 */  sra        $t7, $v0, 16
    /* 108E68 800F9EB8 01E01025 */  or         $v0, $t7, $zero
    /* 108E6C 800F9EBC 03E00008 */  jr         $ra
    /* 108E70 800F9EC0 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_800F9E0C_108DBC
