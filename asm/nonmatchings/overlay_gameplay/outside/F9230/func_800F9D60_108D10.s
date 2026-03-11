nonmatching func_800F9D60_108D10, 0xAC

glabel func_800F9D60_108D10
    /* 108D10 800F9D60 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 108D14 800F9D64 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 108D18 800F9D68 AFA40028 */  sw         $a0, 0x28($sp)
    /* 108D1C 800F9D6C AFA5002C */  sw         $a1, 0x2C($sp)
    /* 108D20 800F9D70 AFA60030 */  sw         $a2, 0x30($sp)
    /* 108D24 800F9D74 AFA70034 */  sw         $a3, 0x34($sp)
    /* 108D28 800F9D78 87A5002E */  lh         $a1, 0x2E($sp)
    /* 108D2C 800F9D7C 0C02E173 */  jal        func_800B85CC_C757C
    /* 108D30 800F9D80 87A4002A */   lh        $a0, 0x2A($sp)
    /* 108D34 800F9D84 8FAF0030 */  lw         $t7, 0x30($sp)
    /* 108D38 800F9D88 00027203 */  sra        $t6, $v0, 8
    /* 108D3C 800F9D8C 27A60022 */  addiu      $a2, $sp, 0x22
    /* 108D40 800F9D90 A5EE0000 */  sh         $t6, 0x0($t7)
    /* 108D44 800F9D94 87A5002E */  lh         $a1, 0x2E($sp)
    /* 108D48 800F9D98 0C0479BF */  jal        func_8011E6FC_12D6AC
    /* 108D4C 800F9D9C 87A4002A */   lh        $a0, 0x2A($sp)
    /* 108D50 800F9DA0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 108D54 800F9DA4 1041000D */  beq        $v0, $at, .L800F9DDC_108D8C
    /* 108D58 800F9DA8 00401825 */   or        $v1, $v0, $zero
    /* 108D5C 800F9DAC 0002C080 */  sll        $t8, $v0, 2
    /* 108D60 800F9DB0 0302C023 */  subu       $t8, $t8, $v0
    /* 108D64 800F9DB4 0018C0C0 */  sll        $t8, $t8, 3
    /* 108D68 800F9DB8 3C198005 */  lui        $t9, %hi(D_80050ADA)
    /* 108D6C 800F9DBC 0338C821 */  addu       $t9, $t9, $t8
    /* 108D70 800F9DC0 87390ADA */  lh         $t9, %lo(D_80050ADA)($t9)
    /* 108D74 800F9DC4 8FA80034 */  lw         $t0, 0x34($sp)
    /* 108D78 800F9DC8 A5190000 */  sh         $t9, 0x0($t0)
    /* 108D7C 800F9DCC 8FAA0038 */  lw         $t2, 0x38($sp)
    /* 108D80 800F9DD0 87A90022 */  lh         $t1, 0x22($sp)
    /* 108D84 800F9DD4 10000007 */  b          .L800F9DF4_108DA4
    /* 108D88 800F9DD8 A5490000 */   sh        $t1, 0x0($t2)
  .L800F9DDC_108D8C:
    /* 108D8C 800F9DDC 8FAB0030 */  lw         $t3, 0x30($sp)
    /* 108D90 800F9DE0 8FAC0034 */  lw         $t4, 0x34($sp)
    /* 108D94 800F9DE4 85620000 */  lh         $v0, 0x0($t3)
    /* 108D98 800F9DE8 A5820000 */  sh         $v0, 0x0($t4)
    /* 108D9C 800F9DEC 8FAD0038 */  lw         $t5, 0x38($sp)
    /* 108DA0 800F9DF0 A5A20000 */  sh         $v0, 0x0($t5)
  .L800F9DF4_108DA4:
    /* 108DA4 800F9DF4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 108DA8 800F9DF8 00031400 */  sll        $v0, $v1, 16
    /* 108DAC 800F9DFC 00027403 */  sra        $t6, $v0, 16
    /* 108DB0 800F9E00 01C01025 */  or         $v0, $t6, $zero
    /* 108DB4 800F9E04 03E00008 */  jr         $ra
    /* 108DB8 800F9E08 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_800F9D60_108D10
