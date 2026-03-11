nonmatching func_80084D80_93D30, 0xD4

glabel func_80084D80_93D30
    /* 93D30 80084D80 308E00FF */  andi       $t6, $a0, 0xFF
    /* 93D34 80084D84 000E7880 */  sll        $t7, $t6, 2
    /* 93D38 80084D88 01EE7821 */  addu       $t7, $t7, $t6
    /* 93D3C 80084D8C 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 93D40 80084D90 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 93D44 80084D94 000F7900 */  sll        $t7, $t7, 4
    /* 93D48 80084D98 01F81021 */  addu       $v0, $t7, $t8
    /* 93D4C 80084D9C 8C590020 */  lw         $t9, 0x20($v0)
    /* 93D50 80084DA0 3C01FEFF */  lui        $at, (0xFEFFFFFF >> 16)
    /* 93D54 80084DA4 3421FFFF */  ori        $at, $at, (0xFEFFFFFF & 0xFFFF)
    /* 93D58 80084DA8 03214024 */  and        $t0, $t9, $at
    /* 93D5C 80084DAC AC480020 */  sw         $t0, 0x20($v0)
    /* 93D60 80084DB0 3C098005 */  lui        $t1, %hi(D_80052ACA)
    /* 93D64 80084DB4 91292ACA */  lbu        $t1, %lo(D_80052ACA)($t1)
    /* 93D68 80084DB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 93D6C 80084DBC 24010002 */  addiu      $at, $zero, 0x2
    /* 93D70 80084DC0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 93D74 80084DC4 1121001F */  beq        $t1, $at, .L80084E44_93DF4
    /* 93D78 80084DC8 AFA40020 */   sw        $a0, 0x20($sp)
    /* 93D7C 80084DCC 00085AC0 */  sll        $t3, $t0, 11
    /* 93D80 80084DD0 0562001D */  bltzl      $t3, .L80084E48_93DF8
    /* 93D84 80084DD4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 93D88 80084DD8 90440025 */  lbu        $a0, 0x25($v0)
    /* 93D8C 80084DDC 0C029054 */  jal        func_800A4150_B3100
    /* 93D90 80084DE0 AFA2001C */   sw        $v0, 0x1C($sp)
    /* 93D94 80084DE4 8FA2001C */  lw         $v0, 0x1C($sp)
    /* 93D98 80084DE8 3C0D8005 */  lui        $t5, %hi(D_800481B2)
    /* 93D9C 80084DEC 24010019 */  addiu      $at, $zero, 0x19
    /* 93DA0 80084DF0 90430026 */  lbu        $v1, 0x26($v0)
    /* 93DA4 80084DF4 00036080 */  sll        $t4, $v1, 2
    /* 93DA8 80084DF8 01836021 */  addu       $t4, $t4, $v1
    /* 93DAC 80084DFC 000C6100 */  sll        $t4, $t4, 4
    /* 93DB0 80084E00 01AC6821 */  addu       $t5, $t5, $t4
    /* 93DB4 80084E04 91AD81B2 */  lbu        $t5, %lo(D_800481B2)($t5)
    /* 93DB8 80084E08 55A1000E */  bnel       $t5, $at, .L80084E44_93DF4
    /* 93DBC 80084E0C A0400026 */   sb        $zero, 0x26($v0)
    /* 93DC0 80084E10 904E001A */  lbu        $t6, 0x1A($v0)
    /* 93DC4 80084E14 24010003 */  addiu      $at, $zero, 0x3
    /* 93DC8 80084E18 A0430025 */  sb         $v1, 0x25($v0)
    /* 93DCC 80084E1C 15C10008 */  bne        $t6, $at, .L80084E40_93DF0
    /* 93DD0 80084E20 306900FF */   andi      $t1, $v1, 0xFF
    /* 93DD4 80084E24 8C4F0020 */  lw         $t7, 0x20($v0)
    /* 93DD8 80084E28 2401F7FF */  addiu      $at, $zero, -0x801
    /* 93DDC 80084E2C A4490038 */  sh         $t1, 0x38($v0)
    /* 93DE0 80084E30 35F82020 */  ori        $t8, $t7, 0x2020
    /* 93DE4 80084E34 AC580020 */  sw         $t8, 0x20($v0)
    /* 93DE8 80084E38 03014024 */  and        $t0, $t8, $at
    /* 93DEC 80084E3C AC480020 */  sw         $t0, 0x20($v0)
  .L80084E40_93DF0:
    /* 93DF0 80084E40 A0400026 */  sb         $zero, 0x26($v0)
  .L80084E44_93DF4:
    /* 93DF4 80084E44 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80084E48_93DF8:
    /* 93DF8 80084E48 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 93DFC 80084E4C 03E00008 */  jr         $ra
    /* 93E00 80084E50 00000000 */   nop
endlabel func_80084D80_93D30
