nonmatching func_800A2D98_B1D48, 0x6F8

glabel func_800A2D98_B1D48
    /* B1D48 800A2D98 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* B1D4C 800A2D9C AFA60098 */  sw         $a2, 0x98($sp)
    /* B1D50 800A2DA0 87B9009A */  lh         $t9, 0x9A($sp)
    /* B1D54 800A2DA4 AFA40090 */  sw         $a0, 0x90($sp)
    /* B1D58 800A2DA8 AFA50094 */  sw         $a1, 0x94($sp)
    /* B1D5C 800A2DAC 87AF0092 */  lh         $t7, 0x92($sp)
    /* B1D60 800A2DB0 87B80096 */  lh         $t8, 0x96($sp)
    /* B1D64 800A2DB4 44994000 */  mtc1       $t9, $f8
    /* B1D68 800A2DB8 448F2000 */  mtc1       $t7, $f4
    /* B1D6C 800A2DBC 44983000 */  mtc1       $t8, $f6
    /* B1D70 800A2DC0 468042A0 */  cvt.s.w    $f10, $f8
    /* B1D74 800A2DC4 AFB10018 */  sw         $s1, 0x18($sp)
    /* B1D78 800A2DC8 3C118006 */  lui        $s1, %hi(D_8005BB2C)
    /* B1D7C 800A2DCC AFB00014 */  sw         $s0, 0x14($sp)
    /* B1D80 800A2DD0 3C108015 */  lui        $s0, %hi(D_8014F618)
    /* B1D84 800A2DD4 46802020 */  cvt.s.w    $f0, $f4
    /* B1D88 800A2DD8 2631BB2C */  addiu      $s1, $s1, %lo(D_8005BB2C)
    /* B1D8C 800A2DDC 8E220000 */  lw         $v0, 0x0($s1)
    /* B1D90 800A2DE0 2610F618 */  addiu      $s0, $s0, %lo(D_8014F618)
    /* B1D94 800A2DE4 240E0001 */  addiu      $t6, $zero, 0x1
    /* B1D98 800A2DE8 468034A0 */  cvt.s.w    $f18, $f6
    /* B1D9C 800A2DEC A20E0066 */  sb         $t6, 0x66($s0)
    /* B1DA0 800A2DF0 3C188003 */  lui        $t8, %hi(D_80031160)
    /* B1DA4 800A2DF4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* B1DA8 800A2DF8 244E0008 */  addiu      $t6, $v0, 0x8
    /* B1DAC 800A2DFC AFBF001C */  sw         $ra, 0x1C($sp)
    /* B1DB0 800A2E00 AFA7009C */  sw         $a3, 0x9C($sp)
    /* B1DB4 800A2E04 E6000000 */  swc1       $f0, 0x0($s0)
    /* B1DB8 800A2E08 E6120004 */  swc1       $f18, 0x4($s0)
    /* B1DBC 800A2E0C E60A0008 */  swc1       $f10, 0x8($s0)
    /* B1DC0 800A2E10 E7AA0020 */  swc1       $f10, 0x20($sp)
    /* B1DC4 800A2E14 AE2E0000 */  sw         $t6, 0x0($s1)
    /* B1DC8 800A2E18 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* B1DCC 800A2E1C 27181160 */  addiu      $t8, $t8, %lo(D_80031160)
    /* B1DD0 800A2E20 3C0F0102 */  lui        $t7, (0x1020040 >> 16)
    /* B1DD4 800A2E24 35EF0040 */  ori        $t7, $t7, (0x1020040 & 0xFFFF)
    /* B1DD8 800A2E28 0301C824 */  and        $t9, $t8, $at
    /* B1DDC 800A2E2C AC590004 */  sw         $t9, 0x4($v0)
    /* B1DE0 800A2E30 AC4F0000 */  sw         $t7, 0x0($v0)
    /* B1DE4 800A2E34 8E220000 */  lw         $v0, 0x0($s1)
    /* B1DE8 800A2E38 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* B1DEC 800A2E3C 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
    /* B1DF0 800A2E40 244E0008 */  addiu      $t6, $v0, 0x8
    /* B1DF4 800A2E44 AE2E0000 */  sw         $t6, 0x0($s1)
    /* B1DF8 800A2E48 AC400004 */  sw         $zero, 0x4($v0)
    /* B1DFC 800A2E4C AC4F0000 */  sw         $t7, 0x0($v0)
    /* B1E00 800A2E50 8E220000 */  lw         $v0, 0x0($s1)
    /* B1E04 800A2E54 3C0E0003 */  lui        $t6, (0x32001 >> 16)
    /* B1E08 800A2E58 35CE2001 */  ori        $t6, $t6, (0x32001 & 0xFFFF)
    /* B1E0C 800A2E5C 24580008 */  addiu      $t8, $v0, 0x8
    /* B1E10 800A2E60 AE380000 */  sw         $t8, 0x0($s1)
    /* B1E14 800A2E64 AC4E0004 */  sw         $t6, 0x4($v0)
    /* B1E18 800A2E68 AC590000 */  sw         $t9, 0x0($v0)
    /* B1E1C 800A2E6C 8E220000 */  lw         $v0, 0x0($s1)
    /* B1E20 800A2E70 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* B1E24 800A2E74 3C0EB700 */  lui        $t6, (0xB7000000 >> 16)
    /* B1E28 800A2E78 244F0008 */  addiu      $t7, $v0, 0x8
    /* B1E2C 800A2E7C AE2F0000 */  sw         $t7, 0x0($s1)
    /* B1E30 800A2E80 AC400004 */  sw         $zero, 0x4($v0)
    /* B1E34 800A2E84 AC580000 */  sw         $t8, 0x0($v0)
    /* B1E38 800A2E88 8E220000 */  lw         $v0, 0x0($s1)
    /* B1E3C 800A2E8C 240F0004 */  addiu      $t7, $zero, 0x4
    /* B1E40 800A2E90 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
    /* B1E44 800A2E94 24590008 */  addiu      $t9, $v0, 0x8
    /* B1E48 800A2E98 AE390000 */  sw         $t9, 0x0($s1)
    /* B1E4C 800A2E9C AC4F0004 */  sw         $t7, 0x4($v0)
    /* B1E50 800A2EA0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* B1E54 800A2EA4 8E220000 */  lw         $v0, 0x0($s1)
    /* B1E58 800A2EA8 3C0E8000 */  lui        $t6, (0x80008000 >> 16)
    /* B1E5C 800A2EAC 3C19BB00 */  lui        $t9, (0xBB000001 >> 16)
    /* B1E60 800A2EB0 24580008 */  addiu      $t8, $v0, 0x8
    /* B1E64 800A2EB4 AE380000 */  sw         $t8, 0x0($s1)
    /* B1E68 800A2EB8 37390001 */  ori        $t9, $t9, (0xBB000001 & 0xFFFF)
    /* B1E6C 800A2EBC 35CE8000 */  ori        $t6, $t6, (0x80008000 & 0xFFFF)
    /* B1E70 800A2EC0 AC4E0004 */  sw         $t6, 0x4($v0)
    /* B1E74 800A2EC4 AC590000 */  sw         $t9, 0x0($v0)
    /* B1E78 800A2EC8 8E220000 */  lw         $v0, 0x0($s1)
    /* B1E7C 800A2ECC 3C18BA00 */  lui        $t8, (0xBA000C02 >> 16)
    /* B1E80 800A2ED0 37180C02 */  ori        $t8, $t8, (0xBA000C02 & 0xFFFF)
    /* B1E84 800A2ED4 244F0008 */  addiu      $t7, $v0, 0x8
    /* B1E88 800A2ED8 AE2F0000 */  sw         $t7, 0x0($s1)
    /* B1E8C 800A2EDC 24192000 */  addiu      $t9, $zero, 0x2000
    /* B1E90 800A2EE0 AC590004 */  sw         $t9, 0x4($v0)
    /* B1E94 800A2EE4 AC580000 */  sw         $t8, 0x0($v0)
    /* B1E98 800A2EE8 8E220000 */  lw         $v0, 0x0($s1)
    /* B1E9C 800A2EEC 3C0FBA00 */  lui        $t7, (0xBA000602 >> 16)
    /* B1EA0 800A2EF0 35EF0602 */  ori        $t7, $t7, (0xBA000602 & 0xFFFF)
    /* B1EA4 800A2EF4 244E0008 */  addiu      $t6, $v0, 0x8
    /* B1EA8 800A2EF8 AE2E0000 */  sw         $t6, 0x0($s1)
    /* B1EAC 800A2EFC AC400004 */  sw         $zero, 0x4($v0)
    /* B1EB0 800A2F00 AC4F0000 */  sw         $t7, 0x0($v0)
    /* B1EB4 800A2F04 8E220000 */  lw         $v0, 0x0($s1)
    /* B1EB8 800A2F08 3C19BA00 */  lui        $t9, (0xBA001301 >> 16)
    /* B1EBC 800A2F0C 37391301 */  ori        $t9, $t9, (0xBA001301 & 0xFFFF)
    /* B1EC0 800A2F10 24580008 */  addiu      $t8, $v0, 0x8
    /* B1EC4 800A2F14 AE380000 */  sw         $t8, 0x0($s1)
    /* B1EC8 800A2F18 3C0E0008 */  lui        $t6, (0x80000 >> 16)
    /* B1ECC 800A2F1C AC4E0004 */  sw         $t6, 0x4($v0)
    /* B1ED0 800A2F20 AC590000 */  sw         $t9, 0x0($v0)
    /* B1ED4 800A2F24 8E220000 */  lw         $v0, 0x0($s1)
    /* B1ED8 800A2F28 3C190050 */  lui        $t9, (0x504240 >> 16)
    /* B1EDC 800A2F2C 3C18B900 */  lui        $t8, (0xB900031D >> 16)
    /* B1EE0 800A2F30 244F0008 */  addiu      $t7, $v0, 0x8
    /* B1EE4 800A2F34 AE2F0000 */  sw         $t7, 0x0($s1)
    /* B1EE8 800A2F38 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
    /* B1EEC 800A2F3C 37394240 */  ori        $t9, $t9, (0x504240 & 0xFFFF)
    /* B1EF0 800A2F40 AC590004 */  sw         $t9, 0x4($v0)
    /* B1EF4 800A2F44 AC580000 */  sw         $t8, 0x0($v0)
    /* B1EF8 800A2F48 8E220000 */  lw         $v0, 0x0($s1)
    /* B1EFC 800A2F4C 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
    /* B1F00 800A2F50 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
    /* B1F04 800A2F54 244E0008 */  addiu      $t6, $v0, 0x8
    /* B1F08 800A2F58 AE2E0000 */  sw         $t6, 0x0($s1)
    /* B1F0C 800A2F5C AC400004 */  sw         $zero, 0x4($v0)
    /* B1F10 800A2F60 AC4F0000 */  sw         $t7, 0x0($v0)
    /* B1F14 800A2F64 8E220000 */  lw         $v0, 0x0($s1)
    /* B1F18 800A2F68 24070001 */  addiu      $a3, $zero, 0x1
    /* B1F1C 800A2F6C 24580008 */  addiu      $t8, $v0, 0x8
    /* B1F20 800A2F70 AE380000 */  sw         $t8, 0x0($s1)
    /* B1F24 800A2F74 AC400004 */  sw         $zero, 0x4($v0)
    /* B1F28 800A2F78 AC480000 */  sw         $t0, 0x0($v0)
    /* B1F2C 800A2F7C 92060070 */  lbu        $a2, 0x70($s0)
    /* B1F30 800A2F80 54E60007 */  bnel       $a3, $a2, .L800A2FA0_B1F50
    /* B1F34 800A2F84 24010002 */   addiu     $at, $zero, 0x2
    /* B1F38 800A2F88 9219006F */  lbu        $t9, 0x6F($s0)
    /* B1F3C 800A2F8C 272E000F */  addiu      $t6, $t9, 0xF
    /* B1F40 800A2F90 A20E006F */  sb         $t6, 0x6F($s0)
    /* B1F44 800A2F94 10000015 */  b          .L800A2FEC_B1F9C
    /* B1F48 800A2F98 31C200FF */   andi      $v0, $t6, 0xFF
    /* B1F4C 800A2F9C 24010002 */  addiu      $at, $zero, 0x2
  .L800A2FA0_B1F50:
    /* B1F50 800A2FA0 54C10007 */  bnel       $a2, $at, .L800A2FC0_B1F70
    /* B1F54 800A2FA4 9202006F */   lbu       $v0, 0x6F($s0)
    /* B1F58 800A2FA8 920F006F */  lbu        $t7, 0x6F($s0)
    /* B1F5C 800A2FAC 25F8FFF1 */  addiu      $t8, $t7, -0xF
    /* B1F60 800A2FB0 A218006F */  sb         $t8, 0x6F($s0)
    /* B1F64 800A2FB4 1000000D */  b          .L800A2FEC_B1F9C
    /* B1F68 800A2FB8 330200FF */   andi      $v0, $t8, 0xFF
    /* B1F6C 800A2FBC 9202006F */  lbu        $v0, 0x6F($s0)
  .L800A2FC0_B1F70:
    /* B1F70 800A2FC0 2841000A */  slti       $at, $v0, 0xA
    /* B1F74 800A2FC4 10200004 */  beqz       $at, .L800A2FD8_B1F88
    /* B1F78 800A2FC8 2459000A */   addiu     $t9, $v0, 0xA
    /* B1F7C 800A2FCC A219006F */  sb         $t9, 0x6F($s0)
    /* B1F80 800A2FD0 10000006 */  b          .L800A2FEC_B1F9C
    /* B1F84 800A2FD4 332200FF */   andi      $v0, $t9, 0xFF
  .L800A2FD8_B1F88:
    /* B1F88 800A2FD8 28410015 */  slti       $at, $v0, 0x15
    /* B1F8C 800A2FDC 14200003 */  bnez       $at, .L800A2FEC_B1F9C
    /* B1F90 800A2FE0 244EFFF6 */   addiu     $t6, $v0, -0xA
    /* B1F94 800A2FE4 A20E006F */  sb         $t6, 0x6F($s0)
    /* B1F98 800A2FE8 31C200FF */  andi       $v0, $t6, 0xFF
  .L800A2FEC_B1F9C:
    /* B1F9C 800A2FEC 28410079 */  slti       $at, $v0, 0x79
    /* B1FA0 800A2FF0 54200005 */  bnel       $at, $zero, .L800A3008_B1FB8
    /* B1FA4 800A2FF4 2841000F */   slti      $at, $v0, 0xF
    /* B1FA8 800A2FF8 14E60002 */  bne        $a3, $a2, .L800A3004_B1FB4
    /* B1FAC 800A2FFC 240F0002 */   addiu     $t7, $zero, 0x2
    /* B1FB0 800A3000 A20F0070 */  sb         $t7, 0x70($s0)
  .L800A3004_B1FB4:
    /* B1FB4 800A3004 2841000F */  slti       $at, $v0, 0xF
  .L800A3008_B1FB8:
    /* B1FB8 800A3008 50200008 */  beql       $at, $zero, .L800A302C_B1FDC
    /* B1FBC 800A300C 8E220000 */   lw        $v0, 0x0($s1)
    /* B1FC0 800A3010 92180070 */  lbu        $t8, 0x70($s0)
    /* B1FC4 800A3014 24010002 */  addiu      $at, $zero, 0x2
    /* B1FC8 800A3018 24190001 */  addiu      $t9, $zero, 0x1
    /* B1FCC 800A301C 57010003 */  bnel       $t8, $at, .L800A302C_B1FDC
    /* B1FD0 800A3020 8E220000 */   lw        $v0, 0x0($s1)
    /* B1FD4 800A3024 A2190070 */  sb         $t9, 0x70($s0)
    /* B1FD8 800A3028 8E220000 */  lw         $v0, 0x0($s1)
  .L800A302C_B1FDC:
    /* B1FDC 800A302C 3C18FCFF */  lui        $t8, (0xFCFFB3FF >> 16)
    /* B1FE0 800A3030 3C19FF65 */  lui        $t9, (0xFF65FEFF >> 16)
    /* B1FE4 800A3034 244E0008 */  addiu      $t6, $v0, 0x8
    /* B1FE8 800A3038 AE2E0000 */  sw         $t6, 0x0($s1)
    /* B1FEC 800A303C AC400004 */  sw         $zero, 0x4($v0)
    /* B1FF0 800A3040 AC480000 */  sw         $t0, 0x0($v0)
    /* B1FF4 800A3044 8E220000 */  lw         $v0, 0x0($s1)
    /* B1FF8 800A3048 3739FEFF */  ori        $t9, $t9, (0xFF65FEFF & 0xFFFF)
    /* B1FFC 800A304C 3718B3FF */  ori        $t8, $t8, (0xFCFFB3FF & 0xFFFF)
    /* B2000 800A3050 244F0008 */  addiu      $t7, $v0, 0x8
    /* B2004 800A3054 AE2F0000 */  sw         $t7, 0x0($s1)
    /* B2008 800A3058 AC590004 */  sw         $t9, 0x4($v0)
    /* B200C 800A305C AC580000 */  sw         $t8, 0x0($v0)
    /* B2010 800A3060 8E220000 */  lw         $v0, 0x0($s1)
    /* B2014 800A3064 3C0FFA00 */  lui        $t7, (0xFA000000 >> 16)
    /* B2018 800A3068 3C038005 */  lui        $v1, %hi(D_80052B34)
    /* B201C 800A306C 244E0008 */  addiu      $t6, $v0, 0x8
    /* B2020 800A3070 AE2E0000 */  sw         $t6, 0x0($s1)
    /* B2024 800A3074 AC4F0000 */  sw         $t7, 0x0($v0)
    /* B2028 800A3078 92190079 */  lbu        $t9, 0x79($s0)
    /* B202C 800A307C 92180077 */  lbu        $t8, 0x77($s0)
    /* B2030 800A3080 00197200 */  sll        $t6, $t9, 8
    /* B2034 800A3084 0018CE00 */  sll        $t9, $t8, 24
    /* B2038 800A3088 01D97825 */  or         $t7, $t6, $t9
    /* B203C 800A308C 920E0078 */  lbu        $t6, 0x78($s0)
    /* B2040 800A3090 000ECC00 */  sll        $t9, $t6, 16
    /* B2044 800A3094 01F9C025 */  or         $t8, $t7, $t9
    /* B2048 800A3098 920F0069 */  lbu        $t7, 0x69($s0)
    /* B204C 800A309C 030FC825 */  or         $t9, $t8, $t7
    /* B2050 800A30A0 AC590004 */  sw         $t9, 0x4($v0)
    /* B2054 800A30A4 8C632B34 */  lw         $v1, %lo(D_80052B34)($v1)
    /* B2058 800A30A8 87B80092 */  lh         $t8, 0x92($sp)
    /* B205C 800A30AC 846E0000 */  lh         $t6, 0x0($v1)
    /* B2060 800A30B0 84790002 */  lh         $t9, 0x2($v1)
    /* B2064 800A30B4 01D87823 */  subu       $t7, $t6, $t8
    /* B2068 800A30B8 87AE0096 */  lh         $t6, 0x96($sp)
    /* B206C 800A30BC 448F2000 */  mtc1       $t7, $f4
    /* B2070 800A30C0 846F0004 */  lh         $t7, 0x4($v1)
    /* B2074 800A30C4 032EC023 */  subu       $t8, $t9, $t6
    /* B2078 800A30C8 468020A0 */  cvt.s.w    $f2, $f4
    /* B207C 800A30CC 44983000 */  mtc1       $t8, $f6
    /* B2080 800A30D0 87B9009A */  lh         $t9, 0x9A($sp)
    /* B2084 800A30D4 E7B20024 */  swc1       $f18, 0x24($sp)
    /* B2088 800A30D8 E7A00028 */  swc1       $f0, 0x28($sp)
    /* B208C 800A30DC 468033A0 */  cvt.s.w    $f14, $f6
    /* B2090 800A30E0 01F97023 */  subu       $t6, $t7, $t9
    /* B2094 800A30E4 448E4000 */  mtc1       $t6, $f8
    /* B2098 800A30E8 46021282 */  mul.s      $f10, $f2, $f2
    /* B209C 800A30EC 00000000 */  nop
    /* B20A0 800A30F0 460E7102 */  mul.s      $f4, $f14, $f14
    /* B20A4 800A30F4 46804420 */  cvt.s.w    $f16, $f8
    /* B20A8 800A30F8 46045180 */  add.s      $f6, $f10, $f4
    /* B20AC 800A30FC 46108202 */  mul.s      $f8, $f16, $f16
    /* B20B0 800A3100 0C007650 */  jal        sqrtf
    /* B20B4 800A3104 46083300 */   add.s     $f12, $f6, $f8
    /* B20B8 800A3108 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* B20BC 800A310C 44819000 */  mtc1       $at, $f18
    /* B20C0 800A3110 3C018004 */  lui        $at, %hi(D_80047954)
    /* B20C4 800A3114 C42A7954 */  lwc1       $f10, %lo(D_80047954)($at)
    /* B20C8 800A3118 3C018004 */  lui        $at, %hi(D_80047958)
    /* B20CC 800A311C C4287958 */  lwc1       $f8, %lo(D_80047958)($at)
    /* B20D0 800A3120 46125102 */  mul.s      $f4, $f10, $f18
    /* B20D4 800A3124 C7A60028 */  lwc1       $f6, 0x28($sp)
    /* B20D8 800A3128 3C018004 */  lui        $at, %hi(D_8004795C)
    /* B20DC 800A312C 46124282 */  mul.s      $f10, $f8, $f18
    /* B20E0 800A3130 46062081 */  sub.s      $f2, $f4, $f6
    /* B20E4 800A3134 C426795C */  lwc1       $f6, %lo(D_8004795C)($at)
    /* B20E8 800A3138 C7A40024 */  lwc1       $f4, 0x24($sp)
    /* B20EC 800A313C 46123202 */  mul.s      $f8, $f6, $f18
    /* B20F0 800A3140 46045381 */  sub.s      $f14, $f10, $f4
    /* B20F4 800A3144 C7AA0020 */  lwc1       $f10, 0x20($sp)
    /* B20F8 800A3148 46021102 */  mul.s      $f4, $f2, $f2
    /* B20FC 800A314C 00000000 */  nop
    /* B2100 800A3150 460E7182 */  mul.s      $f6, $f14, $f14
    /* B2104 800A3154 460A4401 */  sub.s      $f16, $f8, $f10
    /* B2108 800A3158 46108282 */  mul.s      $f10, $f16, $f16
    /* B210C 800A315C 46062200 */  add.s      $f8, $f4, $f6
    /* B2110 800A3160 0C007650 */  jal        sqrtf
    /* B2114 800A3164 460A4300 */   add.s     $f12, $f8, $f10
    /* B2118 800A3168 4458F800 */  cfc1       $t8, $31
    /* B211C 800A316C 240F0001 */  addiu      $t7, $zero, 0x1
    /* B2120 800A3170 44CFF800 */  ctc1       $t7, $31
    /* B2124 800A3174 3C028015 */  lui        $v0, %hi(D_80153AB8)
    /* B2128 800A3178 24423AB8 */  addiu      $v0, $v0, %lo(D_80153AB8)
    /* B212C 800A317C 46000124 */  cvt.w.s    $f4, $f0
    /* B2130 800A3180 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* B2134 800A3184 444FF800 */  cfc1       $t7, $31
    /* B2138 800A3188 00000000 */  nop
    /* B213C 800A318C 31EF0078 */  andi       $t7, $t7, 0x78
    /* B2140 800A3190 51E00013 */  beql       $t7, $zero, .L800A31E0_B2190
    /* B2144 800A3194 440F2000 */   mfc1      $t7, $f4
    /* B2148 800A3198 44812000 */  mtc1       $at, $f4
    /* B214C 800A319C 240F0001 */  addiu      $t7, $zero, 0x1
    /* B2150 800A31A0 46040101 */  sub.s      $f4, $f0, $f4
    /* B2154 800A31A4 44CFF800 */  ctc1       $t7, $31
    /* B2158 800A31A8 00000000 */  nop
    /* B215C 800A31AC 46002124 */  cvt.w.s    $f4, $f4
    /* B2160 800A31B0 444FF800 */  cfc1       $t7, $31
    /* B2164 800A31B4 00000000 */  nop
    /* B2168 800A31B8 31EF0078 */  andi       $t7, $t7, 0x78
    /* B216C 800A31BC 15E00005 */  bnez       $t7, .L800A31D4_B2184
    /* B2170 800A31C0 00000000 */   nop
    /* B2174 800A31C4 440F2000 */  mfc1       $t7, $f4
    /* B2178 800A31C8 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* B217C 800A31CC 10000007 */  b          .L800A31EC_B219C
    /* B2180 800A31D0 01E17825 */   or        $t7, $t7, $at
  .L800A31D4_B2184:
    /* B2184 800A31D4 10000005 */  b          .L800A31EC_B219C
    /* B2188 800A31D8 240FFFFF */   addiu     $t7, $zero, -0x1
    /* B218C 800A31DC 440F2000 */  mfc1       $t7, $f4
  .L800A31E0_B2190:
    /* B2190 800A31E0 00000000 */  nop
    /* B2194 800A31E4 05E0FFFB */  bltz       $t7, .L800A31D4_B2184
    /* B2198 800A31E8 00000000 */   nop
  .L800A31EC_B219C:
    /* B219C 800A31EC 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* B21A0 800A31F0 44D8F800 */  ctc1       $t8, $31
    /* B21A4 800A31F4 44813000 */  mtc1       $at, $f6
    /* B21A8 800A31F8 C4480000 */  lwc1       $f8, 0x0($v0)
    /* B21AC 800A31FC C4440004 */  lwc1       $f4, 0x4($v0)
    /* B21B0 800A3200 46060083 */  div.s      $f2, $f0, $f6
    /* B21B4 800A3204 A60F0060 */  sh         $t7, 0x60($s0)
    /* B21B8 800A3208 46081282 */  mul.s      $f10, $f2, $f8
    /* B21BC 800A320C C4480008 */  lwc1       $f8, 0x8($v0)
    /* B21C0 800A3210 E7A2007C */  swc1       $f2, 0x7C($sp)
    /* B21C4 800A3214 46041182 */  mul.s      $f6, $f2, $f4
    /* B21C8 800A3218 C444000C */  lwc1       $f4, 0xC($v0)
    /* B21CC 800A321C E60A000C */  swc1       $f10, 0xC($s0)
    /* B21D0 800A3220 46081282 */  mul.s      $f10, $f2, $f8
    /* B21D4 800A3224 C4480010 */  lwc1       $f8, 0x10($v0)
    /* B21D8 800A3228 E6060010 */  swc1       $f6, 0x10($s0)
    /* B21DC 800A322C 46041182 */  mul.s      $f6, $f2, $f4
    /* B21E0 800A3230 C4440014 */  lwc1       $f4, 0x14($v0)
    /* B21E4 800A3234 E60A0014 */  swc1       $f10, 0x14($s0)
    /* B21E8 800A3238 46081282 */  mul.s      $f10, $f2, $f8
    /* B21EC 800A323C C6080000 */  lwc1       $f8, 0x0($s0)
    /* B21F0 800A3240 E6060018 */  swc1       $f6, 0x18($s0)
    /* B21F4 800A3244 46041182 */  mul.s      $f6, $f2, $f4
    /* B21F8 800A3248 E60A001C */  swc1       $f10, 0x1C($s0)
    /* B21FC 800A324C C60A0018 */  lwc1       $f10, 0x18($s0)
    /* B2200 800A3250 E6060020 */  swc1       $f6, 0x20($s0)
    /* B2204 800A3254 460A4100 */  add.s      $f4, $f8, $f10
    /* B2208 800A3258 C608001C */  lwc1       $f8, 0x1C($s0)
    /* B220C 800A325C C6060004 */  lwc1       $f6, 0x4($s0)
    /* B2210 800A3260 E6040024 */  swc1       $f4, 0x24($s0)
    /* B2214 800A3264 46083280 */  add.s      $f10, $f6, $f8
    /* B2218 800A3268 C6060020 */  lwc1       $f6, 0x20($s0)
    /* B221C 800A326C C6040008 */  lwc1       $f4, 0x8($s0)
    /* B2220 800A3270 E60A0028 */  swc1       $f10, 0x28($s0)
    /* B2224 800A3274 46062200 */  add.s      $f8, $f4, $f6
    /* B2228 800A3278 0C028898 */  jal        func_800A2260_B1210
    /* B222C 800A327C E608002C */   swc1      $f8, 0x2C($s0)
    /* B2230 800A3280 8E220000 */  lw         $v0, 0x0($s1)
    /* B2234 800A3284 3C0EFA00 */  lui        $t6, (0xFA000000 >> 16)
    /* B2238 800A3288 3C038005 */  lui        $v1, %hi(D_80052B2C)
    /* B223C 800A328C 24590008 */  addiu      $t9, $v0, 0x8
    /* B2240 800A3290 AE390000 */  sw         $t9, 0x0($s1)
    /* B2244 800A3294 AC4E0000 */  sw         $t6, 0x0($v0)
    /* B2248 800A3298 920F0073 */  lbu        $t7, 0x73($s0)
    /* B224C 800A329C 92180071 */  lbu        $t8, 0x71($s0)
    /* B2250 800A32A0 000FCA00 */  sll        $t9, $t7, 8
    /* B2254 800A32A4 00187E00 */  sll        $t7, $t8, 24
    /* B2258 800A32A8 032F7025 */  or         $t6, $t9, $t7
    /* B225C 800A32AC 92190072 */  lbu        $t9, 0x72($s0)
    /* B2260 800A32B0 00197C00 */  sll        $t7, $t9, 16
    /* B2264 800A32B4 01CFC025 */  or         $t8, $t6, $t7
    /* B2268 800A32B8 920E006B */  lbu        $t6, 0x6B($s0)
    /* B226C 800A32BC 030E7825 */  or         $t7, $t8, $t6
    /* B2270 800A32C0 AC4F0004 */  sw         $t7, 0x4($v0)
    /* B2274 800A32C4 8C632B2C */  lw         $v1, %lo(D_80052B2C)($v1)
    /* B2278 800A32C8 C7A40028 */  lwc1       $f4, 0x28($sp)
    /* B227C 800A32CC C46A0000 */  lwc1       $f10, 0x0($v1)
    /* B2280 800A32D0 46045001 */  sub.s      $f0, $f10, $f4
    /* B2284 800A32D4 C7A40020 */  lwc1       $f4, 0x20($sp)
    /* B2288 800A32D8 C46A0008 */  lwc1       $f10, 0x8($v1)
    /* B228C 800A32DC 46000182 */  mul.s      $f6, $f0, $f0
    /* B2290 800A32E0 46045081 */  sub.s      $f2, $f10, $f4
    /* B2294 800A32E4 46021282 */  mul.s      $f10, $f2, $f2
    /* B2298 800A32E8 4600320D */  trunc.w.s  $f8, $f6
    /* B229C 800A32EC 44054000 */  mfc1       $a1, $f8
    /* B22A0 800A32F0 00000000 */  nop
    /* B22A4 800A32F4 44853000 */  mtc1       $a1, $f6
    /* B22A8 800A32F8 00000000 */  nop
    /* B22AC 800A32FC 46803220 */  cvt.s.w    $f8, $f6
    /* B22B0 800A3300 460A4100 */  add.s      $f4, $f8, $f10
    /* B22B4 800A3304 4600218D */  trunc.w.s  $f6, $f4
    /* B22B8 800A3308 44053000 */  mfc1       $a1, $f6
    /* B22BC 800A330C 00000000 */  nop
    /* B22C0 800A3310 44854000 */  mtc1       $a1, $f8
    /* B22C4 800A3314 0C007650 */  jal        sqrtf
    /* B22C8 800A3318 46804320 */   cvt.s.w   $f12, $f8
    /* B22CC 800A331C 3C028005 */  lui        $v0, %hi(D_80052B40)
    /* B22D0 800A3320 87AF0092 */  lh         $t7, 0x92($sp)
    /* B22D4 800A3324 87B90096 */  lh         $t9, 0x96($sp)
    /* B22D8 800A3328 87B8009A */  lh         $t8, 0x9A($sp)
    /* B22DC 800A332C 24422B40 */  addiu      $v0, $v0, %lo(D_80052B40)
    /* B22E0 800A3330 3C038005 */  lui        $v1, %hi(D_80052B2C)
    /* B22E4 800A3334 A44F0000 */  sh         $t7, 0x0($v0)
    /* B22E8 800A3338 A4590002 */  sh         $t9, 0x2($v0)
    /* B22EC 800A333C A4580004 */  sh         $t8, 0x4($v0)
    /* B22F0 800A3340 8C632B2C */  lw         $v1, %lo(D_80052B2C)($v1)
    /* B22F4 800A3344 4600028D */  trunc.w.s  $f10, $f0
    /* B22F8 800A3348 C4640014 */  lwc1       $f4, 0x14($v1)
    /* B22FC 800A334C C4660008 */  lwc1       $f6, 0x8($v1)
    /* B2300 800A3350 44055000 */  mfc1       $a1, $f10
    /* B2304 800A3354 C46A0000 */  lwc1       $f10, 0x0($v1)
    /* B2308 800A3358 C468000C */  lwc1       $f8, 0xC($v1)
    /* B230C 800A335C 46062301 */  sub.s      $f12, $f4, $f6
    /* B2310 800A3360 AFA5008C */  sw         $a1, 0x8C($sp)
    /* B2314 800A3364 0C000E09 */  jal        func_80003824_4424
    /* B2318 800A3368 460A4381 */   sub.s     $f14, $f8, $f10
    /* B231C 800A336C 920E006D */  lbu        $t6, 0x6D($s0)
    /* B2320 800A3370 3C038005 */  lui        $v1, %hi(D_80052B48)
    /* B2324 800A3374 24632B48 */  addiu      $v1, $v1, %lo(D_80052B48)
    /* B2328 800A3378 000E7A00 */  sll        $t7, $t6, 8
    /* B232C 800A337C A4620000 */  sh         $v0, 0x0($v1)
    /* B2330 800A3380 A46F0002 */  sh         $t7, 0x2($v1)
    /* B2334 800A3384 3C198005 */  lui        $t9, %hi(D_80052B2C)
    /* B2338 800A3388 8FA5008C */  lw         $a1, 0x8C($sp)
    /* B233C 800A338C 8F392B2C */  lw         $t9, %lo(D_80052B2C)($t9)
    /* B2340 800A3390 C7A60024 */  lwc1       $f6, 0x24($sp)
    /* B2344 800A3394 44854000 */  mtc1       $a1, $f8
    /* B2348 800A3398 C7240004 */  lwc1       $f4, 0x4($t9)
    /* B234C 800A339C 468043A0 */  cvt.s.w    $f14, $f8
    /* B2350 800A33A0 0C000E09 */  jal        func_80003824_4424
    /* B2354 800A33A4 46062301 */   sub.s     $f12, $f4, $f6
    /* B2358 800A33A8 920F006F */  lbu        $t7, 0x6F($s0)
    /* B235C 800A33AC 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* B2360 800A33B0 24184000 */  addiu      $t8, $zero, 0x4000
    /* B2364 800A33B4 448F5000 */  mtc1       $t7, $f10
    /* B2368 800A33B8 03027023 */  subu       $t6, $t8, $v0
    /* B236C 800A33BC 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* B2370 800A33C0 3C068005 */  lui        $a2, %hi(D_80052B50)
    /* B2374 800A33C4 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* B2378 800A33C8 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* B237C 800A33CC 24C62B50 */  addiu      $a2, $a2, %lo(D_80052B50)
    /* B2380 800A33D0 A4AE0004 */  sh         $t6, 0x4($a1)
    /* B2384 800A33D4 05E10005 */  bgez       $t7, .L800A33EC_B239C
    /* B2388 800A33D8 46805120 */   cvt.s.w   $f4, $f10
    /* B238C 800A33DC 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* B2390 800A33E0 44813000 */  mtc1       $at, $f6
    /* B2394 800A33E4 00000000 */  nop
    /* B2398 800A33E8 46062100 */  add.s      $f4, $f4, $f6
  .L800A33EC_B239C:
    /* B239C 800A33EC C7A8007C */  lwc1       $f8, 0x7C($sp)
    /* B23A0 800A33F0 3C048005 */  lui        $a0, %hi(D_80052B40)
    /* B23A4 800A33F4 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* B23A8 800A33F8 46082280 */  add.s      $f10, $f4, $f8
    /* B23AC 800A33FC 8D070000 */  lw         $a3, 0x0($t0)
    /* B23B0 800A3400 4600518D */  trunc.w.s  $f6, $f10
    /* B23B4 800A3404 440E3000 */  mfc1       $t6, $f6
    /* B23B8 800A3408 00000000 */  nop
    /* B23BC 800A340C A4CE0004 */  sh         $t6, 0x4($a2)
    /* B23C0 800A3410 A4CE0002 */  sh         $t6, 0x2($a2)
    /* B23C4 800A3414 0C000E74 */  jal        func_800039D0_45D0
    /* B23C8 800A3418 A4CE0000 */   sh        $t6, 0x0($a2)
    /* B23CC 800A341C 8E220000 */  lw         $v0, 0x0($s1)
    /* B23D0 800A3420 3C190100 */  lui        $t9, (0x1000040 >> 16)
    /* B23D4 800A3424 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* B23D8 800A3428 244F0008 */  addiu      $t7, $v0, 0x8
    /* B23DC 800A342C AE2F0000 */  sw         $t7, 0x0($s1)
    /* B23E0 800A3430 37390040 */  ori        $t9, $t9, (0x1000040 & 0xFFFF)
    /* B23E4 800A3434 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* B23E8 800A3438 AC590000 */  sw         $t9, 0x0($v0)
    /* B23EC 800A343C 8D180000 */  lw         $t8, 0x0($t0)
    /* B23F0 800A3440 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* B23F4 800A3444 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* B23F8 800A3448 03017024 */  and        $t6, $t8, $at
    /* B23FC 800A344C AC4E0004 */  sw         $t6, 0x4($v0)
    /* B2400 800A3450 8D0F0000 */  lw         $t7, 0x0($t0)
    /* B2404 800A3454 8E220000 */  lw         $v0, 0x0($s1)
    /* B2408 800A3458 3C0E0600 */  lui        $t6, (0x6000000 >> 16)
    /* B240C 800A345C 25F90040 */  addiu      $t9, $t7, 0x40
    /* B2410 800A3460 24580008 */  addiu      $t8, $v0, 0x8
    /* B2414 800A3464 AD190000 */  sw         $t9, 0x0($t0)
    /* B2418 800A3468 AE380000 */  sw         $t8, 0x0($s1)
    /* B241C 800A346C 3C0F0101 */  lui        $t7, %hi(D_100ACB0)
    /* B2420 800A3470 25EFACB0 */  addiu      $t7, $t7, %lo(D_100ACB0)
    /* B2424 800A3474 AC4F0004 */  sw         $t7, 0x4($v0)
    /* B2428 800A3478 AC4E0000 */  sw         $t6, 0x0($v0)
    /* B242C 800A347C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* B2430 800A3480 8FB10018 */  lw         $s1, 0x18($sp)
    /* B2434 800A3484 8FB00014 */  lw         $s0, 0x14($sp)
    /* B2438 800A3488 03E00008 */  jr         $ra
    /* B243C 800A348C 27BD0090 */   addiu     $sp, $sp, 0x90
endlabel func_800A2D98_B1D48
