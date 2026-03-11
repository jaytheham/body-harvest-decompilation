nonmatching func_800C5D14_D4CC4, 0x428

glabel func_800C5D14_D4CC4
    /* D4CC4 800C5D14 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* D4CC8 800C5D18 308E00FF */  andi       $t6, $a0, 0xFF
    /* D4CCC 800C5D1C 000E7880 */  sll        $t7, $t6, 2
    /* D4CD0 800C5D20 01EE7823 */  subu       $t7, $t7, $t6
    /* D4CD4 800C5D24 3C188015 */  lui        $t8, %hi(D_80154088)
    /* D4CD8 800C5D28 27184088 */  addiu      $t8, $t8, %lo(D_80154088)
    /* D4CDC 800C5D2C 000F7880 */  sll        $t7, $t7, 2
    /* D4CE0 800C5D30 01F8C821 */  addu       $t9, $t7, $t8
    /* D4CE4 800C5D34 AFBF0034 */  sw         $ra, 0x34($sp)
    /* D4CE8 800C5D38 AFB60030 */  sw         $s6, 0x30($sp)
    /* D4CEC 800C5D3C AFB5002C */  sw         $s5, 0x2C($sp)
    /* D4CF0 800C5D40 AFB40028 */  sw         $s4, 0x28($sp)
    /* D4CF4 800C5D44 AFB30024 */  sw         $s3, 0x24($sp)
    /* D4CF8 800C5D48 AFB20020 */  sw         $s2, 0x20($sp)
    /* D4CFC 800C5D4C AFB1001C */  sw         $s1, 0x1C($sp)
    /* D4D00 800C5D50 AFB00018 */  sw         $s0, 0x18($sp)
    /* D4D04 800C5D54 AFA40068 */  sw         $a0, 0x68($sp)
    /* D4D08 800C5D58 AFB9003C */  sw         $t9, 0x3C($sp)
    /* D4D0C 800C5D5C 872E0006 */  lh         $t6, 0x6($t9)
    /* D4D10 800C5D60 2416001C */  addiu      $s6, $zero, 0x1C
    /* D4D14 800C5D64 3C188015 */  lui        $t8, %hi(D_80156EDA)
    /* D4D18 800C5D68 01D60019 */  multu      $t6, $s6
    /* D4D1C 800C5D6C 87186EDA */  lh         $t8, %lo(D_80156EDA)($t8)
    /* D4D20 800C5D70 3C158015 */  lui        $s5, %hi(D_80154318)
    /* D4D24 800C5D74 26B54318 */  addiu      $s5, $s5, %lo(D_80154318)
    /* D4D28 800C5D78 2B0101F5 */  slti       $at, $t8, 0x1F5
    /* D4D2C 800C5D7C 3C198015 */  lui        $t9, %hi(D_80156ED9)
    /* D4D30 800C5D80 00007812 */  mflo       $t7
    /* D4D34 800C5D84 02AF1021 */  addu       $v0, $s5, $t7
    /* D4D38 800C5D88 84490004 */  lh         $t1, 0x4($v0)
    /* D4D3C 800C5D8C 102000E1 */  beqz       $at, .L800C6114_D50C4
    /* D4D40 800C5D90 24430008 */   addiu     $v1, $v0, 0x8
    /* D4D44 800C5D94 93396ED9 */  lbu        $t9, %lo(D_80156ED9)($t9)
    /* D4D48 800C5D98 24010002 */  addiu      $at, $zero, 0x2
    /* D4D4C 800C5D9C 3C0E8015 */  lui        $t6, %hi(D_80153B88)
    /* D4D50 800C5DA0 532100DD */  beql       $t9, $at, .L800C6118_D50C8
    /* D4D54 800C5DA4 8FBF0034 */   lw        $ra, 0x34($sp)
    /* D4D58 800C5DA8 85CE3B88 */  lh         $t6, %lo(D_80153B88)($t6)
    /* D4D5C 800C5DAC 29C10079 */  slti       $at, $t6, 0x79
    /* D4D60 800C5DB0 502000D9 */  beql       $at, $zero, .L800C6118_D50C8
    /* D4D64 800C5DB4 8FBF0034 */   lw        $ra, 0x34($sp)
    /* D4D68 800C5DB8 90620006 */  lbu        $v0, 0x6($v1)
    /* D4D6C 800C5DBC 1440003E */  bnez       $v0, .L800C5EB8_D4E68
    /* D4D70 800C5DC0 304A00FF */   andi      $t2, $v0, 0xFF
    /* D4D74 800C5DC4 906F0007 */  lbu        $t7, 0x7($v1)
    /* D4D78 800C5DC8 55E0003C */  bnel       $t7, $zero, .L800C5EBC_D4E6C
    /* D4D7C 800C5DCC 906B0007 */   lbu       $t3, 0x7($v1)
    /* D4D80 800C5DD0 90780008 */  lbu        $t8, 0x8($v1)
    /* D4D84 800C5DD4 57000039 */  bnel       $t8, $zero, .L800C5EBC_D4E6C
    /* D4D88 800C5DD8 906B0007 */   lbu       $t3, 0x7($v1)
    /* D4D8C 800C5DDC 0C000E38 */  jal        func_800038E0_44E0
    /* D4D90 800C5DE0 A7A90066 */   sh        $t1, 0x66($sp)
    /* D4D94 800C5DE4 24100037 */  addiu      $s0, $zero, 0x37
    /* D4D98 800C5DE8 0050001A */  div        $zero, $v0, $s0
    /* D4D9C 800C5DEC 00005010 */  mfhi       $t2
    /* D4DA0 800C5DF0 255900C8 */  addiu      $t9, $t2, 0xC8
    /* D4DA4 800C5DF4 87A90066 */  lh         $t1, 0x66($sp)
    /* D4DA8 800C5DF8 16000002 */  bnez       $s0, .L800C5E04_D4DB4
    /* D4DAC 800C5DFC 00000000 */   nop
    /* D4DB0 800C5E00 0007000D */  break      7
  .L800C5E04_D4DB4:
    /* D4DB4 800C5E04 2401FFFF */  addiu      $at, $zero, -0x1
    /* D4DB8 800C5E08 16010004 */  bne        $s0, $at, .L800C5E1C_D4DCC
    /* D4DBC 800C5E0C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D4DC0 800C5E10 14410002 */  bne        $v0, $at, .L800C5E1C_D4DCC
    /* D4DC4 800C5E14 00000000 */   nop
    /* D4DC8 800C5E18 0006000D */  break      6
  .L800C5E1C_D4DCC:
    /* D4DCC 800C5E1C A3B9004F */  sb         $t9, 0x4F($sp)
    /* D4DD0 800C5E20 0C000E38 */  jal        func_800038E0_44E0
    /* D4DD4 800C5E24 00000000 */   nop
    /* D4DD8 800C5E28 0050001A */  div        $zero, $v0, $s0
    /* D4DDC 800C5E2C 00005810 */  mfhi       $t3
    /* D4DE0 800C5E30 256E00C8 */  addiu      $t6, $t3, 0xC8
    /* D4DE4 800C5E34 87A90066 */  lh         $t1, 0x66($sp)
    /* D4DE8 800C5E38 93AA004F */  lbu        $t2, 0x4F($sp)
    /* D4DEC 800C5E3C 16000002 */  bnez       $s0, .L800C5E48_D4DF8
    /* D4DF0 800C5E40 00000000 */   nop
    /* D4DF4 800C5E44 0007000D */  break      7
  .L800C5E48_D4DF8:
    /* D4DF8 800C5E48 2401FFFF */  addiu      $at, $zero, -0x1
    /* D4DFC 800C5E4C 16010004 */  bne        $s0, $at, .L800C5E60_D4E10
    /* D4E00 800C5E50 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D4E04 800C5E54 14410002 */  bne        $v0, $at, .L800C5E60_D4E10
    /* D4E08 800C5E58 00000000 */   nop
    /* D4E0C 800C5E5C 0006000D */  break      6
  .L800C5E60_D4E10:
    /* D4E10 800C5E60 A3AE004E */  sb         $t6, 0x4E($sp)
    /* D4E14 800C5E64 0C000E38 */  jal        func_800038E0_44E0
    /* D4E18 800C5E68 00000000 */   nop
    /* D4E1C 800C5E6C 0050001A */  div        $zero, $v0, $s0
    /* D4E20 800C5E70 00006010 */  mfhi       $t4
    /* D4E24 800C5E74 258C00C8 */  addiu      $t4, $t4, 0xC8
    /* D4E28 800C5E78 318F00FF */  andi       $t7, $t4, 0xFF
    /* D4E2C 800C5E7C 01E06025 */  or         $t4, $t7, $zero
    /* D4E30 800C5E80 87A90066 */  lh         $t1, 0x66($sp)
    /* D4E34 800C5E84 93AA004F */  lbu        $t2, 0x4F($sp)
    /* D4E38 800C5E88 93AB004E */  lbu        $t3, 0x4E($sp)
    /* D4E3C 800C5E8C 16000002 */  bnez       $s0, .L800C5E98_D4E48
    /* D4E40 800C5E90 00000000 */   nop
    /* D4E44 800C5E94 0007000D */  break      7
  .L800C5E98_D4E48:
    /* D4E48 800C5E98 2401FFFF */  addiu      $at, $zero, -0x1
    /* D4E4C 800C5E9C 16010004 */  bne        $s0, $at, .L800C5EB0_D4E60
    /* D4E50 800C5EA0 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D4E54 800C5EA4 14410002 */  bne        $v0, $at, .L800C5EB0_D4E60
    /* D4E58 800C5EA8 00000000 */   nop
    /* D4E5C 800C5EAC 0006000D */  break      6
  .L800C5EB0_D4E60:
    /* D4E60 800C5EB0 10000004 */  b          .L800C5EC4_D4E74
    /* D4E64 800C5EB4 240DFFFB */   addiu     $t5, $zero, -0x5
  .L800C5EB8_D4E68:
    /* D4E68 800C5EB8 906B0007 */  lbu        $t3, 0x7($v1)
  .L800C5EBC_D4E6C:
    /* D4E6C 800C5EBC 906C0008 */  lbu        $t4, 0x8($v1)
    /* D4E70 800C5EC0 240DFFFB */  addiu      $t5, $zero, -0x5
  .L800C5EC4_D4E74:
    /* D4E74 800C5EC4 112D0087 */  beq        $t1, $t5, .L800C60E4_D5094
    /* D4E78 800C5EC8 3C018015 */   lui       $at, %hi(D_80156EDA)
    /* D4E7C 800C5ECC 241FFFFA */  addiu      $ra, $zero, -0x6
    /* D4E80 800C5ED0 113F0084 */  beq        $t1, $ra, .L800C60E4_D5094
    /* D4E84 800C5ED4 3C14E700 */   lui       $s4, (0xE7000000 >> 16)
    /* D4E88 800C5ED8 3C121FFF */  lui        $s2, (0x1FFFFFFF >> 16)
    /* D4E8C 800C5EDC 3C110400 */  lui        $s1, (0x400081F >> 16)
    /* D4E90 800C5EE0 3C088006 */  lui        $t0, %hi(D_8005BB30)
    /* D4E94 800C5EE4 3C038006 */  lui        $v1, %hi(D_8005BB34)
    /* D4E98 800C5EE8 2463BB34 */  addiu      $v1, $v1, %lo(D_8005BB34)
    /* D4E9C 800C5EEC 2508BB30 */  addiu      $t0, $t0, %lo(D_8005BB30)
    /* D4EA0 800C5EF0 3631081F */  ori        $s1, $s1, (0x400081F & 0xFFFF)
    /* D4EA4 800C5EF4 3652FFFF */  ori        $s2, $s2, (0x1FFFFFFF & 0xFFFF)
    /* D4EA8 800C5EF8 3C13B500 */  lui        $s3, (0xB5000000 >> 16)
    /* D4EAC 800C5EFC 24100014 */  addiu      $s0, $zero, 0x14
  .L800C5F00_D4EB0:
    /* D4EB0 800C5F00 01360019 */  multu      $t1, $s6
    /* D4EB4 800C5F04 0000C012 */  mflo       $t8
    /* D4EB8 800C5F08 02B81021 */  addu       $v0, $s5, $t8
    /* D4EBC 800C5F0C 84590008 */  lh         $t9, 0x8($v0)
    /* D4EC0 800C5F10 8C780000 */  lw         $t8, 0x0($v1)
    /* D4EC4 800C5F14 44992000 */  mtc1       $t9, $f4
    /* D4EC8 800C5F18 00000000 */  nop
    /* D4ECC 800C5F1C 468021A0 */  cvt.s.w    $f6, $f4
    /* D4ED0 800C5F20 4600320D */  trunc.w.s  $f8, $f6
    /* D4ED4 800C5F24 440F4000 */  mfc1       $t7, $f8
    /* D4ED8 800C5F28 00000000 */  nop
    /* D4EDC 800C5F2C A70F0000 */  sh         $t7, 0x0($t8)
    /* D4EE0 800C5F30 8459000A */  lh         $t9, 0xA($v0)
    /* D4EE4 800C5F34 8C780000 */  lw         $t8, 0x0($v1)
    /* D4EE8 800C5F38 44995000 */  mtc1       $t9, $f10
    /* D4EEC 800C5F3C 00000000 */  nop
    /* D4EF0 800C5F40 46805420 */  cvt.s.w    $f16, $f10
    /* D4EF4 800C5F44 4600848D */  trunc.w.s  $f18, $f16
    /* D4EF8 800C5F48 440F9000 */  mfc1       $t7, $f18
    /* D4EFC 800C5F4C 00000000 */  nop
    /* D4F00 800C5F50 A70F0002 */  sh         $t7, 0x2($t8)
    /* D4F04 800C5F54 8459000C */  lh         $t9, 0xC($v0)
    /* D4F08 800C5F58 8C780000 */  lw         $t8, 0x0($v1)
    /* D4F0C 800C5F5C 44992000 */  mtc1       $t9, $f4
    /* D4F10 800C5F60 00000000 */  nop
    /* D4F14 800C5F64 468021A0 */  cvt.s.w    $f6, $f4
    /* D4F18 800C5F68 4600320D */  trunc.w.s  $f8, $f6
    /* D4F1C 800C5F6C 440F4000 */  mfc1       $t7, $f8
    /* D4F20 800C5F70 00000000 */  nop
    /* D4F24 800C5F74 A70F0004 */  sh         $t7, 0x4($t8)
    /* D4F28 800C5F78 8C790000 */  lw         $t9, 0x0($v1)
    /* D4F2C 800C5F7C A7200006 */  sh         $zero, 0x6($t9)
    /* D4F30 800C5F80 8C6E0000 */  lw         $t6, 0x0($v1)
    /* D4F34 800C5F84 A5C00008 */  sh         $zero, 0x8($t6)
    /* D4F38 800C5F88 8C6F0000 */  lw         $t7, 0x0($v1)
    /* D4F3C 800C5F8C A5E0000A */  sh         $zero, 0xA($t7)
    /* D4F40 800C5F90 8C780000 */  lw         $t8, 0x0($v1)
    /* D4F44 800C5F94 A30A000C */  sb         $t2, 0xC($t8)
    /* D4F48 800C5F98 8C790000 */  lw         $t9, 0x0($v1)
    /* D4F4C 800C5F9C A32B000D */  sb         $t3, 0xD($t9)
    /* D4F50 800C5FA0 8C6E0000 */  lw         $t6, 0x0($v1)
    /* D4F54 800C5FA4 A1CC000E */  sb         $t4, 0xE($t6)
    /* D4F58 800C5FA8 8C780000 */  lw         $t8, 0x0($v1)
    /* D4F5C 800C5FAC 904F0011 */  lbu        $t7, 0x11($v0)
    /* D4F60 800C5FB0 A30F000F */  sb         $t7, 0xF($t8)
    /* D4F64 800C5FB4 8C790000 */  lw         $t9, 0x0($v1)
    /* D4F68 800C5FB8 8058000E */  lb         $t8, 0xE($v0)
    /* D4F6C 800C5FBC 844F0008 */  lh         $t7, 0x8($v0)
    /* D4F70 800C5FC0 272E0010 */  addiu      $t6, $t9, 0x10
    /* D4F74 800C5FC4 AC6E0000 */  sw         $t6, 0x0($v1)
    /* D4F78 800C5FC8 01F8C823 */  subu       $t9, $t7, $t8
    /* D4F7C 800C5FCC 44995000 */  mtc1       $t9, $f10
    /* D4F80 800C5FD0 00000000 */  nop
    /* D4F84 800C5FD4 46805420 */  cvt.s.w    $f16, $f10
    /* D4F88 800C5FD8 4600848D */  trunc.w.s  $f18, $f16
    /* D4F8C 800C5FDC 440F9000 */  mfc1       $t7, $f18
    /* D4F90 800C5FE0 00000000 */  nop
    /* D4F94 800C5FE4 A5CF0000 */  sh         $t7, 0x0($t6)
    /* D4F98 800C5FE8 804E000F */  lb         $t6, 0xF($v0)
    /* D4F9C 800C5FEC 8459000A */  lh         $t9, 0xA($v0)
    /* D4FA0 800C5FF0 032E7823 */  subu       $t7, $t9, $t6
    /* D4FA4 800C5FF4 448F2000 */  mtc1       $t7, $f4
    /* D4FA8 800C5FF8 8C6E0000 */  lw         $t6, 0x0($v1)
    /* D4FAC 800C5FFC 468021A0 */  cvt.s.w    $f6, $f4
    /* D4FB0 800C6000 4600320D */  trunc.w.s  $f8, $f6
    /* D4FB4 800C6004 44194000 */  mfc1       $t9, $f8
    /* D4FB8 800C6008 00000000 */  nop
    /* D4FBC 800C600C A5D90002 */  sh         $t9, 0x2($t6)
    /* D4FC0 800C6010 80580010 */  lb         $t8, 0x10($v0)
    /* D4FC4 800C6014 844F000C */  lh         $t7, 0xC($v0)
    /* D4FC8 800C6018 01F8C823 */  subu       $t9, $t7, $t8
    /* D4FCC 800C601C 44995000 */  mtc1       $t9, $f10
    /* D4FD0 800C6020 8C780000 */  lw         $t8, 0x0($v1)
    /* D4FD4 800C6024 46805420 */  cvt.s.w    $f16, $f10
    /* D4FD8 800C6028 4600848D */  trunc.w.s  $f18, $f16
    /* D4FDC 800C602C 440F9000 */  mfc1       $t7, $f18
    /* D4FE0 800C6030 00000000 */  nop
    /* D4FE4 800C6034 A70F0004 */  sh         $t7, 0x4($t8)
    /* D4FE8 800C6038 8C790000 */  lw         $t9, 0x0($v1)
    /* D4FEC 800C603C A7200006 */  sh         $zero, 0x6($t9)
    /* D4FF0 800C6040 8C6E0000 */  lw         $t6, 0x0($v1)
    /* D4FF4 800C6044 A5C00008 */  sh         $zero, 0x8($t6)
    /* D4FF8 800C6048 8C6F0000 */  lw         $t7, 0x0($v1)
    /* D4FFC 800C604C A5E0000A */  sh         $zero, 0xA($t7)
    /* D5000 800C6050 8C780000 */  lw         $t8, 0x0($v1)
    /* D5004 800C6054 A30A000C */  sb         $t2, 0xC($t8)
    /* D5008 800C6058 8C790000 */  lw         $t9, 0x0($v1)
    /* D500C 800C605C A32B000D */  sb         $t3, 0xD($t9)
    /* D5010 800C6060 8C6E0000 */  lw         $t6, 0x0($v1)
    /* D5014 800C6064 A1CC000E */  sb         $t4, 0xE($t6)
    /* D5018 800C6068 8C6F0000 */  lw         $t7, 0x0($v1)
    /* D501C 800C606C A1F0000F */  sb         $s0, 0xF($t7)
    /* D5020 800C6070 8C780000 */  lw         $t8, 0x0($v1)
    /* D5024 800C6074 8D040000 */  lw         $a0, 0x0($t0)
    /* D5028 800C6078 27190010 */  addiu      $t9, $t8, 0x10
    /* D502C 800C607C 248E0008 */  addiu      $t6, $a0, 0x8
    /* D5030 800C6080 AC790000 */  sw         $t9, 0x0($v1)
    /* D5034 800C6084 AD0E0000 */  sw         $t6, 0x0($t0)
    /* D5038 800C6088 AC910000 */  sw         $s1, 0x0($a0)
    /* D503C 800C608C 8C6F0000 */  lw         $t7, 0x0($v1)
    /* D5040 800C6090 25F8FFE0 */  addiu      $t8, $t7, -0x20
    /* D5044 800C6094 0312C824 */  and        $t9, $t8, $s2
    /* D5048 800C6098 AC990004 */  sw         $t9, 0x4($a0)
    /* D504C 800C609C 8D040000 */  lw         $a0, 0x0($t0)
    /* D5050 800C60A0 248E0008 */  addiu      $t6, $a0, 0x8
    /* D5054 800C60A4 AD0E0000 */  sw         $t6, 0x0($t0)
    /* D5058 800C60A8 AC930000 */  sw         $s3, 0x0($a0)
    /* D505C 800C60AC 844F0002 */  lh         $t7, 0x2($v0)
    /* D5060 800C60B0 31F800FF */  andi       $t8, $t7, 0xFF
    /* D5064 800C60B4 37190200 */  ori        $t9, $t8, 0x200
    /* D5068 800C60B8 AC990004 */  sw         $t9, 0x4($a0)
    /* D506C 800C60BC 8D040000 */  lw         $a0, 0x0($t0)
    /* D5070 800C60C0 248E0008 */  addiu      $t6, $a0, 0x8
    /* D5074 800C60C4 AD0E0000 */  sw         $t6, 0x0($t0)
    /* D5078 800C60C8 AC800004 */  sw         $zero, 0x4($a0)
    /* D507C 800C60CC AC940000 */  sw         $s4, 0x0($a0)
    /* D5080 800C60D0 84490004 */  lh         $t1, 0x4($v0)
    /* D5084 800C60D4 512D0004 */  beql       $t1, $t5, .L800C60E8_D5098
    /* D5088 800C60D8 8FAF003C */   lw        $t7, 0x3C($sp)
    /* D508C 800C60DC 153FFF88 */  bne        $t1, $ra, .L800C5F00_D4EB0
    /* D5090 800C60E0 00000000 */   nop
  .L800C60E4_D5094:
    /* D5094 800C60E4 8FAF003C */  lw         $t7, 0x3C($sp)
  .L800C60E8_D5098:
    /* D5098 800C60E8 3C188015 */  lui        $t8, %hi(D_80156EDA)
    /* D509C 800C60EC 87186EDA */  lh         $t8, %lo(D_80156EDA)($t8)
    /* D50A0 800C60F0 91E20004 */  lbu        $v0, 0x4($t7)
    /* D50A4 800C60F4 3C0F8015 */  lui        $t7, %hi(D_80153B88)
    /* D50A8 800C60F8 85EF3B88 */  lh         $t7, %lo(D_80153B88)($t7)
    /* D50AC 800C60FC 0002C840 */  sll        $t9, $v0, 1
    /* D50B0 800C6100 03197021 */  addu       $t6, $t8, $t9
    /* D50B4 800C6104 A42E6EDA */  sh         $t6, %lo(D_80156EDA)($at)
    /* D50B8 800C6108 3C018015 */  lui        $at, %hi(D_80153B88)
    /* D50BC 800C610C 01E2C021 */  addu       $t8, $t7, $v0
    /* D50C0 800C6110 A4383B88 */  sh         $t8, %lo(D_80153B88)($at)
  .L800C6114_D50C4:
    /* D50C4 800C6114 8FBF0034 */  lw         $ra, 0x34($sp)
  .L800C6118_D50C8:
    /* D50C8 800C6118 8FB00018 */  lw         $s0, 0x18($sp)
    /* D50CC 800C611C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* D50D0 800C6120 8FB20020 */  lw         $s2, 0x20($sp)
    /* D50D4 800C6124 8FB30024 */  lw         $s3, 0x24($sp)
    /* D50D8 800C6128 8FB40028 */  lw         $s4, 0x28($sp)
    /* D50DC 800C612C 8FB5002C */  lw         $s5, 0x2C($sp)
    /* D50E0 800C6130 8FB60030 */  lw         $s6, 0x30($sp)
    /* D50E4 800C6134 03E00008 */  jr         $ra
    /* D50E8 800C6138 27BD0068 */   addiu     $sp, $sp, 0x68
endlabel func_800C5D14_D4CC4
