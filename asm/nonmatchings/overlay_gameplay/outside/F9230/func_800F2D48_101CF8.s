nonmatching func_800F2D48_101CF8, 0x190

glabel func_800F2D48_101CF8
    /* 101CF8 800F2D48 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 101CFC 800F2D4C 308700FF */  andi       $a3, $a0, 0xFF
    /* 101D00 800F2D50 00067400 */  sll        $t6, $a2, 16
    /* 101D04 800F2D54 000E7C03 */  sra        $t7, $t6, 16
    /* 101D08 800F2D58 AFA60030 */  sw         $a2, 0x30($sp)
    /* 101D0C 800F2D5C 28E10009 */  slti       $at, $a3, 0x9
    /* 101D10 800F2D60 01E03025 */  or         $a2, $t7, $zero
    /* 101D14 800F2D64 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 101D18 800F2D68 AFA40028 */  sw         $a0, 0x28($sp)
    /* 101D1C 800F2D6C 14200008 */  bnez       $at, .L800F2D90_101D40
    /* 101D20 800F2D70 AFA5002C */   sw        $a1, 0x2C($sp)
    /* 101D24 800F2D74 3C048014 */  lui        $a0, %hi(D_801446E8)
    /* 101D28 800F2D78 248446E8 */  addiu      $a0, $a0, %lo(D_801446E8)
    /* 101D2C 800F2D7C A7AF0032 */  sh         $t7, 0x32($sp)
    /* 101D30 800F2D80 0C00731B */  jal        osSyncPrintf
    /* 101D34 800F2D84 A3A7002B */   sb        $a3, 0x2B($sp)
    /* 101D38 800F2D88 87A60032 */  lh         $a2, 0x32($sp)
    /* 101D3C 800F2D8C 93A7002B */  lbu        $a3, 0x2B($sp)
  .L800F2D90_101D40:
    /* 101D40 800F2D90 3C188015 */  lui        $t8, %hi(D_80157FF0)
    /* 101D44 800F2D94 0307C021 */  addu       $t8, $t8, $a3
    /* 101D48 800F2D98 83187FF0 */  lb         $t8, %lo(D_80157FF0)($t8)
    /* 101D4C 800F2D9C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 101D50 800F2DA0 3C048014 */  lui        $a0, %hi(D_80144700)
    /* 101D54 800F2DA4 13010006 */  beq        $t8, $at, .L800F2DC0_101D70
    /* 101D58 800F2DA8 24844700 */   addiu     $a0, $a0, %lo(D_80144700)
    /* 101D5C 800F2DAC A7A60032 */  sh         $a2, 0x32($sp)
    /* 101D60 800F2DB0 0C00731B */  jal        osSyncPrintf
    /* 101D64 800F2DB4 A3A7002B */   sb        $a3, 0x2B($sp)
    /* 101D68 800F2DB8 87A60032 */  lh         $a2, 0x32($sp)
    /* 101D6C 800F2DBC 93A7002B */  lbu        $a3, 0x2B($sp)
  .L800F2DC0_101D70:
    /* 101D70 800F2DC0 0007C880 */  sll        $t9, $a3, 2
    /* 101D74 800F2DC4 0327C823 */  subu       $t9, $t9, $a3
    /* 101D78 800F2DC8 0019C8C0 */  sll        $t9, $t9, 3
    /* 101D7C 800F2DCC 0327C823 */  subu       $t9, $t9, $a3
    /* 101D80 800F2DD0 3C088016 */  lui        $t0, %hi(D_80158000)
    /* 101D84 800F2DD4 25088000 */  addiu      $t0, $t0, %lo(D_80158000)
    /* 101D88 800F2DD8 0019C900 */  sll        $t9, $t9, 4
    /* 101D8C 800F2DDC 03282821 */  addu       $a1, $t9, $t0
    /* 101D90 800F2DE0 90A90022 */  lbu        $t1, 0x22($a1)
    /* 101D94 800F2DE4 24010002 */  addiu      $at, $zero, 0x2
    /* 101D98 800F2DE8 87AA002E */  lh         $t2, 0x2E($sp)
    /* 101D9C 800F2DEC 51210037 */  beql       $t1, $at, .L800F2ECC_101E7C
    /* 101DA0 800F2DF0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 101DA4 800F2DF4 ACAA0000 */  sw         $t2, 0x0($a1)
    /* 101DA8 800F2DF8 ACA60004 */  sw         $a2, 0x4($a1)
    /* 101DAC 800F2DFC 87AB002E */  lh         $t3, 0x2E($sp)
    /* 101DB0 800F2E00 ACA60014 */  sw         $a2, 0x14($a1)
    /* 101DB4 800F2E04 00A02025 */  or         $a0, $a1, $zero
    /* 101DB8 800F2E08 ACAB0010 */  sw         $t3, 0x10($a1)
    /* 101DBC 800F2E0C 87AC002E */  lh         $t4, 0x2E($sp)
    /* 101DC0 800F2E10 ACA6000C */  sw         $a2, 0xC($a1)
    /* 101DC4 800F2E14 A4A0001C */  sh         $zero, 0x1C($a1)
    /* 101DC8 800F2E18 ACAC0008 */  sw         $t4, 0x8($a1)
    /* 101DCC 800F2E1C 0C03CA60 */  jal        func_800F2980_101930
    /* 101DD0 800F2E20 AFA50018 */   sw        $a1, 0x18($sp)
    /* 101DD4 800F2E24 8FA50018 */  lw         $a1, 0x18($sp)
    /* 101DD8 800F2E28 3C028016 */  lui        $v0, %hi(D_801601FC)
    /* 101DDC 800F2E2C 00002025 */  or         $a0, $zero, $zero
    /* 101DE0 800F2E30 90AD0023 */  lbu        $t5, 0x23($a1)
    /* 101DE4 800F2E34 24060024 */  addiu      $a2, $zero, 0x24
    /* 101DE8 800F2E38 000D7080 */  sll        $t6, $t5, 2
    /* 101DEC 800F2E3C 01CD7023 */  subu       $t6, $t6, $t5
    /* 101DF0 800F2E40 000E7080 */  sll        $t6, $t6, 2
    /* 101DF4 800F2E44 01CD7023 */  subu       $t6, $t6, $t5
    /* 101DF8 800F2E48 000E7040 */  sll        $t6, $t6, 1
    /* 101DFC 800F2E4C 004E1021 */  addu       $v0, $v0, $t6
    /* 101E00 800F2E50 904701FC */  lbu        $a3, %lo(D_801601FC)($v0)
    /* 101E04 800F2E54 58E0001A */  blezl      $a3, .L800F2EC0_101E70
    /* 101E08 800F2E58 A4A0001E */   sh        $zero, 0x1E($a1)
  .L800F2E5C_101E0C:
    /* 101E0C 800F2E5C 00860019 */  multu      $a0, $a2
    /* 101E10 800F2E60 24840001 */  addiu      $a0, $a0, 0x1
    /* 101E14 800F2E64 0004CC00 */  sll        $t9, $a0, 16
    /* 101E18 800F2E68 00192403 */  sra        $a0, $t9, 16
    /* 101E1C 800F2E6C 0087082A */  slt        $at, $a0, $a3
    /* 101E20 800F2E70 00007812 */  mflo       $t7
    /* 101E24 800F2E74 00AF1021 */  addu       $v0, $a1, $t7
    /* 101E28 800F2E78 90580047 */  lbu        $t8, 0x47($v0)
    /* 101E2C 800F2E7C 1700000D */  bnez       $t8, .L800F2EB4_101E64
    /* 101E30 800F2E80 00000000 */   nop
    /* 101E34 800F2E84 8443003E */  lh         $v1, 0x3E($v0)
    /* 101E38 800F2E88 A4430042 */  sh         $v1, 0x42($v0)
    /* 101E3C 800F2E8C A4430038 */  sh         $v1, 0x38($v0)
    /* 101E40 800F2E90 84430040 */  lh         $v1, 0x40($v0)
    /* 101E44 800F2E94 A4430044 */  sh         $v1, 0x44($v0)
    /* 101E48 800F2E98 A443003C */  sh         $v1, 0x3C($v0)
    /* 101E4C 800F2E9C 8443002A */  lh         $v1, 0x2A($v0)
    /* 101E50 800F2EA0 A443002E */  sh         $v1, 0x2E($v0)
    /* 101E54 800F2EA4 A4430024 */  sh         $v1, 0x24($v0)
    /* 101E58 800F2EA8 8443002C */  lh         $v1, 0x2C($v0)
    /* 101E5C 800F2EAC A4430030 */  sh         $v1, 0x30($v0)
    /* 101E60 800F2EB0 A4430028 */  sh         $v1, 0x28($v0)
  .L800F2EB4_101E64:
    /* 101E64 800F2EB4 1420FFE9 */  bnez       $at, .L800F2E5C_101E0C
    /* 101E68 800F2EB8 00000000 */   nop
    /* 101E6C 800F2EBC A4A0001E */  sh         $zero, 0x1E($a1)
  .L800F2EC0_101E70:
    /* 101E70 800F2EC0 0C03D269 */  jal        func_800F49A4_103954
    /* 101E74 800F2EC4 00A02025 */   or        $a0, $a1, $zero
    /* 101E78 800F2EC8 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800F2ECC_101E7C:
    /* 101E7C 800F2ECC 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 101E80 800F2ED0 03E00008 */  jr         $ra
    /* 101E84 800F2ED4 00000000 */   nop
endlabel func_800F2D48_101CF8
