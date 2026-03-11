nonmatching func_80095D4C_A4CFC, 0x1BC

glabel func_80095D4C_A4CFC
    /* A4CFC 80095D4C AFA50004 */  sw         $a1, 0x4($sp)
    /* A4D00 80095D50 0005C400 */  sll        $t8, $a1, 16
    /* A4D04 80095D54 00182C03 */  sra        $a1, $t8, 16
    /* A4D08 80095D58 93B80013 */  lbu        $t8, 0x13($sp)
    /* A4D0C 80095D5C AFA40000 */  sw         $a0, 0x0($sp)
    /* A4D10 80095D60 00047400 */  sll        $t6, $a0, 16
    /* A4D14 80095D64 000E2403 */  sra        $a0, $t6, 16
    /* A4D18 80095D68 30CE00FF */  andi       $t6, $a2, 0xFF
    /* A4D1C 80095D6C AFA60008 */  sw         $a2, 0x8($sp)
    /* A4D20 80095D70 AFA7000C */  sw         $a3, 0xC($sp)
    /* A4D24 80095D74 30EF00FF */  andi       $t7, $a3, 0xFF
    /* A4D28 80095D78 01E03825 */  or         $a3, $t7, $zero
    /* A4D2C 80095D7C 170E0002 */  bne        $t8, $t6, .L80095D88_A4D38
    /* A4D30 80095D80 01C03025 */   or        $a2, $t6, $zero
    /* A4D34 80095D84 11E0000D */  beqz       $t7, .L80095DBC_A4D6C
  .L80095D88_A4D38:
    /* A4D38 80095D88 0005CA03 */   sra       $t9, $a1, 8
    /* A4D3C 80095D8C 272E0080 */  addiu      $t6, $t9, 0x80
    /* A4D40 80095D90 000E7883 */  sra        $t7, $t6, 2
    /* A4D44 80095D94 0004CA03 */  sra        $t9, $a0, 8
    /* A4D48 80095D98 272E0080 */  addiu      $t6, $t9, 0x80
    /* A4D4C 80095D9C 000FC180 */  sll        $t8, $t7, 6
    /* A4D50 80095DA0 000E7883 */  sra        $t7, $t6, 2
    /* A4D54 80095DA4 030FC821 */  addu       $t9, $t8, $t7
    /* A4D58 80095DA8 3C0E8022 */  lui        $t6, %hi(D_8021EA30)
    /* A4D5C 80095DAC 01D97021 */  addu       $t6, $t6, $t9
    /* A4D60 80095DB0 91CEEA30 */  lbu        $t6, %lo(D_8021EA30)($t6)
    /* A4D64 80095DB4 31D800F0 */  andi       $t8, $t6, 0xF0
    /* A4D68 80095DB8 13000051 */  beqz       $t8, .L80095F00_A4EB0
  .L80095DBC_A4D6C:
    /* A4D6C 80095DBC 3C0C8006 */   lui       $t4, %hi(D_8005BB34)
    /* A4D70 80095DC0 258CBB34 */  addiu      $t4, $t4, %lo(D_8005BB34)
    /* A4D74 80095DC4 8D830000 */  lw         $v1, 0x0($t4)
    /* A4D78 80095DC8 0004C943 */  sra        $t9, $a0, 5
    /* A4D7C 80095DCC 241800FF */  addiu      $t8, $zero, 0xFF
    /* A4D80 80095DD0 03202025 */  or         $a0, $t9, $zero
    /* A4D84 80095DD4 03052823 */  subu       $a1, $t8, $a1
    /* A4D88 80095DD8 2498FFF9 */  addiu      $t8, $a0, -0x7
    /* A4D8C 80095DDC A4780000 */  sh         $t8, 0x0($v1)
    /* A4D90 80095DE0 8D8F0000 */  lw         $t7, 0x0($t4)
    /* A4D94 80095DE4 0005C943 */  sra        $t9, $a1, 5
    /* A4D98 80095DE8 03202825 */  or         $a1, $t9, $zero
    /* A4D9C 80095DEC 25F90010 */  addiu      $t9, $t7, 0x10
    /* A4DA0 80095DF0 AD990000 */  sw         $t9, 0x0($t4)
    /* A4DA4 80095DF4 240D0400 */  addiu      $t5, $zero, 0x400
    /* A4DA8 80095DF8 24A9FFF2 */  addiu      $t1, $a1, -0xE
    /* A4DAC 80095DFC A4690002 */  sh         $t1, 0x2($v1)
    /* A4DB0 80095E00 A4600004 */  sh         $zero, 0x4($v1)
    /* A4DB4 80095E04 A46D0008 */  sh         $t5, 0x8($v1)
    /* A4DB8 80095E08 A46D000A */  sh         $t5, 0xA($v1)
    /* A4DBC 80095E0C 8D8A0000 */  lw         $t2, 0x0($t4)
    /* A4DC0 80095E10 248E0007 */  addiu      $t6, $a0, 0x7
    /* A4DC4 80095E14 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* A4DC8 80095E18 A54E0000 */  sh         $t6, 0x0($t2)
    /* A4DCC 80095E1C 8D980000 */  lw         $t8, 0x0($t4)
    /* A4DD0 80095E20 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* A4DD4 80095E24 270F0010 */  addiu      $t7, $t8, 0x10
    /* A4DD8 80095E28 AD8F0000 */  sw         $t7, 0x0($t4)
    /* A4DDC 80095E2C A5490002 */  sh         $t1, 0x2($t2)
    /* A4DE0 80095E30 A5400004 */  sh         $zero, 0x4($t2)
    /* A4DE4 80095E34 A54D0008 */  sh         $t5, 0x8($t2)
    /* A4DE8 80095E38 A540000A */  sh         $zero, 0xA($t2)
    /* A4DEC 80095E3C 8D880000 */  lw         $t0, 0x0($t4)
    /* A4DF0 80095E40 0061C024 */  and        $t8, $v1, $at
    /* A4DF4 80095E44 A5040000 */  sh         $a0, 0x0($t0)
    /* A4DF8 80095E48 8D990000 */  lw         $t9, 0x0($t4)
    /* A4DFC 80095E4C 272E0010 */  addiu      $t6, $t9, 0x10
    /* A4E00 80095E50 AD8E0000 */  sw         $t6, 0x0($t4)
    /* A4E04 80095E54 A5050002 */  sh         $a1, 0x2($t0)
    /* A4E08 80095E58 A5000004 */  sh         $zero, 0x4($t0)
    /* A4E0C 80095E5C A5000008 */  sh         $zero, 0x8($t0)
    /* A4E10 80095E60 A50D000A */  sh         $t5, 0xA($t0)
    /* A4E14 80095E64 A5000006 */  sh         $zero, 0x6($t0)
    /* A4E18 80095E68 A5400006 */  sh         $zero, 0x6($t2)
    /* A4E1C 80095E6C A4600006 */  sh         $zero, 0x6($v1)
    /* A4E20 80095E70 A106000C */  sb         $a2, 0xC($t0)
    /* A4E24 80095E74 A146000C */  sb         $a2, 0xC($t2)
    /* A4E28 80095E78 A066000C */  sb         $a2, 0xC($v1)
    /* A4E2C 80095E7C A107000D */  sb         $a3, 0xD($t0)
    /* A4E30 80095E80 A147000D */  sb         $a3, 0xD($t2)
    /* A4E34 80095E84 A067000D */  sb         $a3, 0xD($v1)
    /* A4E38 80095E88 93A20013 */  lbu        $v0, 0x13($sp)
    /* A4E3C 80095E8C 3C0E0400 */  lui        $t6, (0x4000C2F >> 16)
    /* A4E40 80095E90 35CE0C2F */  ori        $t6, $t6, (0x4000C2F & 0xFFFF)
    /* A4E44 80095E94 A102000E */  sb         $v0, 0xE($t0)
    /* A4E48 80095E98 A142000E */  sb         $v0, 0xE($t2)
    /* A4E4C 80095E9C A062000E */  sb         $v0, 0xE($v1)
    /* A4E50 80095EA0 240200FF */  addiu      $v0, $zero, 0xFF
    /* A4E54 80095EA4 A102000F */  sb         $v0, 0xF($t0)
    /* A4E58 80095EA8 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* A4E5C 80095EAC A142000F */  sb         $v0, 0xF($t2)
    /* A4E60 80095EB0 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* A4E64 80095EB4 A062000F */  sb         $v0, 0xF($v1)
    /* A4E68 80095EB8 8D050000 */  lw         $a1, 0x0($t0)
    /* A4E6C 80095EBC 24B90008 */  addiu      $t9, $a1, 0x8
    /* A4E70 80095EC0 AD190000 */  sw         $t9, 0x0($t0)
    /* A4E74 80095EC4 ACB80004 */  sw         $t8, 0x4($a1)
    /* A4E78 80095EC8 ACAE0000 */  sw         $t6, 0x0($a1)
    /* A4E7C 80095ECC 8D050000 */  lw         $a1, 0x0($t0)
    /* A4E80 80095ED0 240E0204 */  addiu      $t6, $zero, 0x204
    /* A4E84 80095ED4 3C19BF00 */  lui        $t9, (0xBF000000 >> 16)
    /* A4E88 80095ED8 24AF0008 */  addiu      $t7, $a1, 0x8
    /* A4E8C 80095EDC AD0F0000 */  sw         $t7, 0x0($t0)
    /* A4E90 80095EE0 ACAE0004 */  sw         $t6, 0x4($a1)
    /* A4E94 80095EE4 ACB90000 */  sw         $t9, 0x0($a1)
    /* A4E98 80095EE8 8D050000 */  lw         $a1, 0x0($t0)
    /* A4E9C 80095EEC 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* A4EA0 80095EF0 24B80008 */  addiu      $t8, $a1, 0x8
    /* A4EA4 80095EF4 AD180000 */  sw         $t8, 0x0($t0)
    /* A4EA8 80095EF8 ACA00004 */  sw         $zero, 0x4($a1)
    /* A4EAC 80095EFC ACAF0000 */  sw         $t7, 0x0($a1)
  .L80095F00_A4EB0:
    /* A4EB0 80095F00 03E00008 */  jr         $ra
    /* A4EB4 80095F04 00000000 */   nop
endlabel func_80095D4C_A4CFC
