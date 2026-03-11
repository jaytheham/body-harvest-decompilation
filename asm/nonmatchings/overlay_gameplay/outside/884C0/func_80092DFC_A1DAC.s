nonmatching func_80092DFC_A1DAC, 0xF8

glabel func_80092DFC_A1DAC
    /* A1DAC 80092DFC 308E00FF */  andi       $t6, $a0, 0xFF
    /* A1DB0 80092E00 000E7880 */  sll        $t7, $t6, 2
    /* A1DB4 80092E04 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* A1DB8 80092E08 01EE7821 */  addu       $t7, $t7, $t6
    /* A1DBC 80092E0C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* A1DC0 80092E10 AFB00020 */  sw         $s0, 0x20($sp)
    /* A1DC4 80092E14 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* A1DC8 80092E18 000F7900 */  sll        $t7, $t7, 4
    /* A1DCC 80092E1C 01F88021 */  addu       $s0, $t7, $t8
    /* A1DD0 80092E20 8E190020 */  lw         $t9, 0x20($s0)
    /* A1DD4 80092E24 AFA40028 */  sw         $a0, 0x28($sp)
    /* A1DD8 80092E28 01C02025 */  or         $a0, $t6, $zero
    /* A1DDC 80092E2C 33280800 */  andi       $t0, $t9, 0x800
    /* A1DE0 80092E30 11000005 */  beqz       $t0, .L80092E48_A1DF8
    /* A1DE4 80092E34 AFBF0024 */   sw        $ra, 0x24($sp)
    /* A1DE8 80092E38 0C020193 */  jal        func_8008064C_8F5FC
    /* A1DEC 80092E3C A3AE002B */   sb        $t6, 0x2B($sp)
    /* A1DF0 80092E40 10000004 */  b          .L80092E54_A1E04
    /* A1DF4 80092E44 8E020020 */   lw        $v0, 0x20($s0)
  .L80092E48_A1DF8:
    /* A1DF8 80092E48 0C0201DB */  jal        func_8008076C_8F71C
    /* A1DFC 80092E4C A3A4002B */   sb        $a0, 0x2B($sp)
    /* A1E00 80092E50 8E020020 */  lw         $v0, 0x20($s0)
  .L80092E54_A1E04:
    /* A1E04 80092E54 30496000 */  andi       $t1, $v0, 0x6000
    /* A1E08 80092E58 11200021 */  beqz       $t1, .L80092EE0_A1E90
    /* A1E0C 80092E5C 304A1000 */   andi      $t2, $v0, 0x1000
    /* A1E10 80092E60 1140001D */  beqz       $t2, .L80092ED8_A1E88
    /* A1E14 80092E64 00000000 */   nop
    /* A1E18 80092E68 8602002C */  lh         $v0, 0x2C($s0)
    /* A1E1C 80092E6C 18400003 */  blez       $v0, .L80092E7C_A1E2C
    /* A1E20 80092E70 244BFFFC */   addiu     $t3, $v0, -0x4
    /* A1E24 80092E74 1000001A */  b          .L80092EE0_A1E90
    /* A1E28 80092E78 A60B002C */   sh        $t3, 0x2C($s0)
  .L80092E7C_A1E2C:
    /* A1E2C 80092E7C 9204003F */  lbu        $a0, 0x3F($s0)
    /* A1E30 80092E80 240100FF */  addiu      $at, $zero, 0xFF
    /* A1E34 80092E84 50810004 */  beql       $a0, $at, .L80092E98_A1E48
    /* A1E38 80092E88 02002025 */   or        $a0, $s0, $zero
    /* A1E3C 80092E8C 0C01D971 */  jal        func_800765C4_85574
    /* A1E40 80092E90 00000000 */   nop
    /* A1E44 80092E94 02002025 */  or         $a0, $s0, $zero
  .L80092E98_A1E48:
    /* A1E48 80092E98 00002825 */  or         $a1, $zero, $zero
    /* A1E4C 80092E9C 00003025 */  or         $a2, $zero, $zero
    /* A1E50 80092EA0 00003825 */  or         $a3, $zero, $zero
    /* A1E54 80092EA4 0C04A4D5 */  jal        func_80129354_138304
    /* A1E58 80092EA8 AFA00010 */   sw        $zero, 0x10($sp)
    /* A1E5C 80092EAC 0C0221D8 */  jal        func_80088760_97710
    /* A1E60 80092EB0 02002025 */   or        $a0, $s0, $zero
    /* A1E64 80092EB4 240C0100 */  addiu      $t4, $zero, 0x100
    /* A1E68 80092EB8 AFAC0010 */  sw         $t4, 0x10($sp)
    /* A1E6C 80092EBC 86040000 */  lh         $a0, 0x0($s0)
    /* A1E70 80092EC0 86050002 */  lh         $a1, 0x2($s0)
    /* A1E74 80092EC4 86060004 */  lh         $a2, 0x4($s0)
    /* A1E78 80092EC8 0C0492D7 */  jal        func_80124B5C_133B0C
    /* A1E7C 80092ECC 2407012C */   addiu     $a3, $zero, 0x12C
    /* A1E80 80092ED0 10000004 */  b          .L80092EE4_A1E94
    /* A1E84 80092ED4 8FBF0024 */   lw        $ra, 0x24($sp)
  .L80092ED8_A1E88:
    /* A1E88 80092ED8 0C024B10 */  jal        func_80092C40_A1BF0
    /* A1E8C 80092EDC 93A4002B */   lbu       $a0, 0x2B($sp)
  .L80092EE0_A1E90:
    /* A1E90 80092EE0 8FBF0024 */  lw         $ra, 0x24($sp)
  .L80092EE4_A1E94:
    /* A1E94 80092EE4 8FB00020 */  lw         $s0, 0x20($sp)
    /* A1E98 80092EE8 27BD0028 */  addiu      $sp, $sp, 0x28
    /* A1E9C 80092EEC 03E00008 */  jr         $ra
    /* A1EA0 80092EF0 00000000 */   nop
endlabel func_80092DFC_A1DAC
