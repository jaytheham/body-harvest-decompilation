nonmatching func_800B2CF0_C1CA0, 0x47C

glabel func_800B2CF0_C1CA0
    /* C1CA0 800B2CF0 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* C1CA4 800B2CF4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* C1CA8 800B2CF8 AFA5003C */  sw         $a1, 0x3C($sp)
    /* C1CAC 800B2CFC AFA60040 */  sw         $a2, 0x40($sp)
    /* C1CB0 800B2D00 908F0001 */  lbu        $t7, 0x1($a0)
    /* C1CB4 800B2D04 908E0003 */  lbu        $t6, 0x3($a0)
    /* C1CB8 800B2D08 908B0000 */  lbu        $t3, 0x0($a0)
    /* C1CBC 800B2D0C 908A0004 */  lbu        $t2, 0x4($a0)
    /* C1CC0 800B2D10 01CFC023 */  subu       $t8, $t6, $t7
    /* C1CC4 800B2D14 0018C940 */  sll        $t9, $t8, 5
    /* C1CC8 800B2D18 44992000 */  mtc1       $t9, $f4
    /* C1CCC 800B2D1C 014B6023 */  subu       $t4, $t2, $t3
    /* C1CD0 800B2D20 000C6940 */  sll        $t5, $t4, 5
    /* C1CD4 800B2D24 468023A0 */  cvt.s.w    $f14, $f4
    /* C1CD8 800B2D28 448D3000 */  mtc1       $t5, $f6
    /* C1CDC 800B2D2C 3C014880 */  lui        $at, (0x48800000 >> 16)
    /* C1CE0 800B2D30 44815000 */  mtc1       $at, $f10
    /* C1CE4 800B2D34 AFA40038 */  sw         $a0, 0x38($sp)
    /* C1CE8 800B2D38 46803420 */  cvt.s.w    $f16, $f6
    /* C1CEC 800B2D3C 460E7202 */  mul.s      $f8, $f14, $f14
    /* C1CF0 800B2D40 E7AE002C */  swc1       $f14, 0x2C($sp)
    /* C1CF4 800B2D44 46108102 */  mul.s      $f4, $f16, $f16
    /* C1CF8 800B2D48 E7B00028 */  swc1       $f16, 0x28($sp)
    /* C1CFC 800B2D4C 460A4480 */  add.s      $f18, $f8, $f10
    /* C1D00 800B2D50 0C007650 */  jal        sqrtf
    /* C1D04 800B2D54 46049300 */   add.s     $f12, $f18, $f4
    /* C1D08 800B2D58 3C018014 */  lui        $at, %hi(D_80142E18)
    /* C1D0C 800B2D5C D42C2E18 */  ldc1       $f12, %lo(D_80142E18)($at)
    /* C1D10 800B2D60 460001A1 */  cvt.d.s    $f6, $f0
    /* C1D14 800B2D64 C7AE002C */  lwc1       $f14, 0x2C($sp)
    /* C1D18 800B2D68 46266203 */  div.d      $f8, $f12, $f6
    /* C1D1C 800B2D6C 3C014400 */  lui        $at, (0x44000000 >> 16)
    /* C1D20 800B2D70 44812000 */  mtc1       $at, $f4
    /* C1D24 800B2D74 C7B00028 */  lwc1       $f16, 0x28($sp)
    /* C1D28 800B2D78 3C038014 */  lui        $v1, %hi(D_8013DAC0)
    /* C1D2C 800B2D7C 2463DAC0 */  addiu      $v1, $v1, %lo(D_8013DAC0)
    /* C1D30 800B2D80 3C0C8014 */  lui        $t4, %hi(D_8013DA48)
    /* C1D34 800B2D84 8FA40038 */  lw         $a0, 0x38($sp)
    /* C1D38 800B2D88 8FA80040 */  lw         $t0, 0x40($sp)
    /* C1D3C 800B2D8C 8FA9003C */  lw         $t1, 0x3C($sp)
    /* C1D40 800B2D90 258CDA48 */  addiu      $t4, $t4, %lo(D_8013DA48)
    /* C1D44 800B2D94 462040A0 */  cvt.s.d    $f2, $f8
    /* C1D48 800B2D98 460E1282 */  mul.s      $f10, $f2, $f14
    /* C1D4C 800B2D9C 4600548D */  trunc.w.s  $f18, $f10
    /* C1D50 800B2DA0 46041182 */  mul.s      $f6, $f2, $f4
    /* C1D54 800B2DA4 44059000 */  mfc1       $a1, $f18
    /* C1D58 800B2DA8 46101282 */  mul.s      $f10, $f2, $f16
    /* C1D5C 800B2DAC 00057E00 */  sll        $t7, $a1, 24
    /* C1D60 800B2DB0 000F2E03 */  sra        $a1, $t7, 24
    /* C1D64 800B2DB4 44852000 */  mtc1       $a1, $f4
    /* C1D68 800B2DB8 A3A50018 */  sb         $a1, 0x18($sp)
    /* C1D6C 800B2DBC 4600320D */  trunc.w.s  $f8, $f6
    /* C1D70 800B2DC0 4600548D */  trunc.w.s  $f18, $f10
    /* C1D74 800B2DC4 44064000 */  mfc1       $a2, $f8
    /* C1D78 800B2DC8 C4680000 */  lwc1       $f8, 0x0($v1)
    /* C1D7C 800B2DCC 468021A0 */  cvt.s.w    $f6, $f4
    /* C1D80 800B2DD0 00065600 */  sll        $t2, $a2, 24
    /* C1D84 800B2DD4 44079000 */  mfc1       $a3, $f18
    /* C1D88 800B2DD8 000A3603 */  sra        $a2, $t2, 24
    /* C1D8C 800B2DDC 44869000 */  mtc1       $a2, $f18
    /* C1D90 800B2DE0 00076E00 */  sll        $t5, $a3, 24
    /* C1D94 800B2DE4 46083282 */  mul.s      $f10, $f6, $f8
    /* C1D98 800B2DE8 C4660004 */  lwc1       $f6, 0x4($v1)
    /* C1D9C 800B2DEC 000D3E03 */  sra        $a3, $t5, 24
    /* C1DA0 800B2DF0 A3A7001A */  sb         $a3, 0x1A($sp)
    /* C1DA4 800B2DF4 A3A60019 */  sb         $a2, 0x19($sp)
    /* C1DA8 800B2DF8 46809120 */  cvt.s.w    $f4, $f18
    /* C1DAC 800B2DFC 46062202 */  mul.s      $f8, $f4, $f6
    /* C1DB0 800B2E00 44873000 */  mtc1       $a3, $f6
    /* C1DB4 800B2E04 C4640008 */  lwc1       $f4, 0x8($v1)
    /* C1DB8 800B2E08 46085480 */  add.s      $f18, $f10, $f8
    /* C1DBC 800B2E0C 468032A0 */  cvt.s.w    $f10, $f6
    /* C1DC0 800B2E10 460A2202 */  mul.s      $f8, $f4, $f10
    /* C1DC4 800B2E14 46124180 */  add.s      $f6, $f8, $f18
    /* C1DC8 800B2E18 4600310D */  trunc.w.s  $f4, $f6
    /* C1DCC 800B2E1C 44022000 */  mfc1       $v0, $f4
    /* C1DD0 800B2E20 00000000 */  nop
    /* C1DD4 800B2E24 1C400003 */  bgtz       $v0, .L800B2E34_C1DE4
    /* C1DD8 800B2E28 28410080 */   slti      $at, $v0, 0x80
    /* C1DDC 800B2E2C 10000004 */  b          .L800B2E40_C1DF0
    /* C1DE0 800B2E30 24020001 */   addiu     $v0, $zero, 0x1
  .L800B2E34_C1DE4:
    /* C1DE4 800B2E34 54200003 */  bnel       $at, $zero, .L800B2E44_C1DF4
    /* C1DE8 800B2E38 44825000 */   mtc1      $v0, $f10
    /* C1DEC 800B2E3C 2402007F */  addiu      $v0, $zero, 0x7F
  .L800B2E40_C1DF0:
    /* C1DF0 800B2E40 44825000 */  mtc1       $v0, $f10
  .L800B2E44_C1DF4:
    /* C1DF4 800B2E44 90980002 */  lbu        $t8, 0x2($a0)
    /* C1DF8 800B2E48 3C0A8022 */  lui        $t2, %hi(D_80222A70)
    /* C1DFC 800B2E4C 46805221 */  cvt.d.w    $f8, $f10
    /* C1E00 800B2E50 8D4A2A70 */  lw         $t2, %lo(D_80222A70)($t2)
    /* C1E04 800B2E54 0018C940 */  sll        $t9, $t8, 5
    /* C1E08 800B2E58 3C048004 */  lui        $a0, %hi(currentLevel)
    /* C1E0C 800B2E5C 032A082A */  slt        $at, $t9, $t2
    /* C1E10 800B2E60 462C4483 */  div.d      $f18, $f8, $f12
    /* C1E14 800B2E64 1020001C */  beqz       $at, .L800B2ED8_C1E88
    /* C1E18 800B2E68 46209020 */   cvt.s.d   $f0, $f18
    /* C1E1C 800B2E6C 8C847F90 */  lw         $a0, %lo(currentLevel)($a0)
    /* C1E20 800B2E70 3C0D8014 */  lui        $t5, %hi(D_8013DA84)
    /* C1E24 800B2E74 25ADDA84 */  addiu      $t5, $t5, %lo(D_8013DA84)
    /* C1E28 800B2E78 00045880 */  sll        $t3, $a0, 2
    /* C1E2C 800B2E7C 01645823 */  subu       $t3, $t3, $a0
    /* C1E30 800B2E80 000B5880 */  sll        $t3, $t3, 2
    /* C1E34 800B2E84 016C1021 */  addu       $v0, $t3, $t4
    /* C1E38 800B2E88 016D1821 */  addu       $v1, $t3, $t5
    /* C1E3C 800B2E8C C466FFF4 */  lwc1       $f6, -0xC($v1)
    /* C1E40 800B2E90 C442FFF4 */  lwc1       $f2, -0xC($v0)
    /* C1E44 800B2E94 C472FFF8 */  lwc1       $f18, -0x8($v1)
    /* C1E48 800B2E98 C44CFFF8 */  lwc1       $f12, -0x8($v0)
    /* C1E4C 800B2E9C 46023101 */  sub.s      $f4, $f6, $f2
    /* C1E50 800B2EA0 C44EFFFC */  lwc1       $f14, -0x4($v0)
    /* C1E54 800B2EA4 460C9181 */  sub.s      $f6, $f18, $f12
    /* C1E58 800B2EA8 46040282 */  mul.s      $f10, $f0, $f4
    /* C1E5C 800B2EAC 460A1200 */  add.s      $f8, $f2, $f10
    /* C1E60 800B2EB0 46060102 */  mul.s      $f4, $f0, $f6
    /* C1E64 800B2EB4 E7A8001C */  swc1       $f8, 0x1C($sp)
    /* C1E68 800B2EB8 C468FFFC */  lwc1       $f8, -0x4($v1)
    /* C1E6C 800B2EBC 460E4481 */  sub.s      $f18, $f8, $f14
    /* C1E70 800B2EC0 46046280 */  add.s      $f10, $f12, $f4
    /* C1E74 800B2EC4 46120182 */  mul.s      $f6, $f0, $f18
    /* C1E78 800B2EC8 E7AA0020 */  swc1       $f10, 0x20($sp)
    /* C1E7C 800B2ECC 46067100 */  add.s      $f4, $f14, $f6
    /* C1E80 800B2ED0 1000001E */  b          .L800B2F4C_C1EFC
    /* C1E84 800B2ED4 E7A40024 */   swc1      $f4, 0x24($sp)
  .L800B2ED8_C1E88:
    /* C1E88 800B2ED8 3C048004 */  lui        $a0, %hi(currentLevel)
    /* C1E8C 800B2EDC 8C847F90 */  lw         $a0, %lo(currentLevel)($a0)
    /* C1E90 800B2EE0 3C0F8014 */  lui        $t7, %hi(D_8013D9D0)
    /* C1E94 800B2EE4 3C188014 */  lui        $t8, %hi(D_8013DA0C)
    /* C1E98 800B2EE8 00047080 */  sll        $t6, $a0, 2
    /* C1E9C 800B2EEC 01C47023 */  subu       $t6, $t6, $a0
    /* C1EA0 800B2EF0 000E7080 */  sll        $t6, $t6, 2
    /* C1EA4 800B2EF4 2718DA0C */  addiu      $t8, $t8, %lo(D_8013DA0C)
    /* C1EA8 800B2EF8 25EFD9D0 */  addiu      $t7, $t7, %lo(D_8013D9D0)
    /* C1EAC 800B2EFC 01CF1021 */  addu       $v0, $t6, $t7
    /* C1EB0 800B2F00 01D81821 */  addu       $v1, $t6, $t8
    /* C1EB4 800B2F04 C46AFFF4 */  lwc1       $f10, -0xC($v1)
    /* C1EB8 800B2F08 C442FFF4 */  lwc1       $f2, -0xC($v0)
    /* C1EBC 800B2F0C C464FFF8 */  lwc1       $f4, -0x8($v1)
    /* C1EC0 800B2F10 C44CFFF8 */  lwc1       $f12, -0x8($v0)
    /* C1EC4 800B2F14 46025201 */  sub.s      $f8, $f10, $f2
    /* C1EC8 800B2F18 C44EFFFC */  lwc1       $f14, -0x4($v0)
    /* C1ECC 800B2F1C 460C2281 */  sub.s      $f10, $f4, $f12
    /* C1ED0 800B2F20 46080482 */  mul.s      $f18, $f0, $f8
    /* C1ED4 800B2F24 46121180 */  add.s      $f6, $f2, $f18
    /* C1ED8 800B2F28 460A0202 */  mul.s      $f8, $f0, $f10
    /* C1EDC 800B2F2C E7A6001C */  swc1       $f6, 0x1C($sp)
    /* C1EE0 800B2F30 C466FFFC */  lwc1       $f6, -0x4($v1)
    /* C1EE4 800B2F34 460E3101 */  sub.s      $f4, $f6, $f14
    /* C1EE8 800B2F38 46086480 */  add.s      $f18, $f12, $f8
    /* C1EEC 800B2F3C 46040282 */  mul.s      $f10, $f0, $f4
    /* C1EF0 800B2F40 E7B20020 */  swc1       $f18, 0x20($sp)
    /* C1EF4 800B2F44 460A7200 */  add.s      $f8, $f14, $f10
    /* C1EF8 800B2F48 E7A80024 */  swc1       $f8, 0x24($sp)
  .L800B2F4C_C1EFC:
    /* C1EFC 800B2F4C 91390000 */  lbu        $t9, 0x0($t1)
    /* C1F00 800B2F50 C7AA001C */  lwc1       $f10, 0x1C($sp)
    /* C1F04 800B2F54 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* C1F08 800B2F58 44999000 */  mtc1       $t9, $f18
    /* C1F0C 800B2F5C 07210004 */  bgez       $t9, .L800B2F70_C1F20
    /* C1F10 800B2F60 468091A0 */   cvt.s.w   $f6, $f18
    /* C1F14 800B2F64 44812000 */  mtc1       $at, $f4
    /* C1F18 800B2F68 00000000 */  nop
    /* C1F1C 800B2F6C 46043180 */  add.s      $f6, $f6, $f4
  .L800B2F70_C1F20:
    /* C1F20 800B2F70 460A3202 */  mul.s      $f8, $f6, $f10
    /* C1F24 800B2F74 240B0001 */  addiu      $t3, $zero, 0x1
    /* C1F28 800B2F78 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* C1F2C 800B2F7C 444AF800 */  cfc1       $t2, $31
    /* C1F30 800B2F80 44CBF800 */  ctc1       $t3, $31
    /* C1F34 800B2F84 00000000 */  nop
    /* C1F38 800B2F88 460044A4 */  cvt.w.s    $f18, $f8
    /* C1F3C 800B2F8C 444BF800 */  cfc1       $t3, $31
    /* C1F40 800B2F90 00000000 */  nop
    /* C1F44 800B2F94 316B0078 */  andi       $t3, $t3, 0x78
    /* C1F48 800B2F98 51600013 */  beql       $t3, $zero, .L800B2FE8_C1F98
    /* C1F4C 800B2F9C 440B9000 */   mfc1      $t3, $f18
    /* C1F50 800B2FA0 44819000 */  mtc1       $at, $f18
    /* C1F54 800B2FA4 240B0001 */  addiu      $t3, $zero, 0x1
    /* C1F58 800B2FA8 46124481 */  sub.s      $f18, $f8, $f18
    /* C1F5C 800B2FAC 44CBF800 */  ctc1       $t3, $31
    /* C1F60 800B2FB0 00000000 */  nop
    /* C1F64 800B2FB4 460094A4 */  cvt.w.s    $f18, $f18
    /* C1F68 800B2FB8 444BF800 */  cfc1       $t3, $31
    /* C1F6C 800B2FBC 00000000 */  nop
    /* C1F70 800B2FC0 316B0078 */  andi       $t3, $t3, 0x78
    /* C1F74 800B2FC4 15600005 */  bnez       $t3, .L800B2FDC_C1F8C
    /* C1F78 800B2FC8 00000000 */   nop
    /* C1F7C 800B2FCC 440B9000 */  mfc1       $t3, $f18
    /* C1F80 800B2FD0 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* C1F84 800B2FD4 10000007 */  b          .L800B2FF4_C1FA4
    /* C1F88 800B2FD8 01615825 */   or        $t3, $t3, $at
  .L800B2FDC_C1F8C:
    /* C1F8C 800B2FDC 10000005 */  b          .L800B2FF4_C1FA4
    /* C1F90 800B2FE0 240BFFFF */   addiu     $t3, $zero, -0x1
    /* C1F94 800B2FE4 440B9000 */  mfc1       $t3, $f18
  .L800B2FE8_C1F98:
    /* C1F98 800B2FE8 00000000 */  nop
    /* C1F9C 800B2FEC 0560FFFB */  bltz       $t3, .L800B2FDC_C1F8C
    /* C1FA0 800B2FF0 00000000 */   nop
  .L800B2FF4_C1FA4:
    /* C1FA4 800B2FF4 A10B0000 */  sb         $t3, 0x0($t0)
    /* C1FA8 800B2FF8 912C0001 */  lbu        $t4, 0x1($t1)
    /* C1FAC 800B2FFC 44CAF800 */  ctc1       $t2, $31
    /* C1FB0 800B3000 C7A80020 */  lwc1       $f8, 0x20($sp)
    /* C1FB4 800B3004 448C2000 */  mtc1       $t4, $f4
    /* C1FB8 800B3008 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* C1FBC 800B300C 05810004 */  bgez       $t4, .L800B3020_C1FD0
    /* C1FC0 800B3010 468021A0 */   cvt.s.w   $f6, $f4
    /* C1FC4 800B3014 44815000 */  mtc1       $at, $f10
    /* C1FC8 800B3018 00000000 */  nop
    /* C1FCC 800B301C 460A3180 */  add.s      $f6, $f6, $f10
  .L800B3020_C1FD0:
    /* C1FD0 800B3020 46083482 */  mul.s      $f18, $f6, $f8
    /* C1FD4 800B3024 240E0001 */  addiu      $t6, $zero, 0x1
    /* C1FD8 800B3028 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* C1FDC 800B302C 444DF800 */  cfc1       $t5, $31
    /* C1FE0 800B3030 44CEF800 */  ctc1       $t6, $31
    /* C1FE4 800B3034 00000000 */  nop
    /* C1FE8 800B3038 46009124 */  cvt.w.s    $f4, $f18
    /* C1FEC 800B303C 444EF800 */  cfc1       $t6, $31
    /* C1FF0 800B3040 00000000 */  nop
    /* C1FF4 800B3044 31CE0078 */  andi       $t6, $t6, 0x78
    /* C1FF8 800B3048 51C00013 */  beql       $t6, $zero, .L800B3098_C2048
    /* C1FFC 800B304C 440E2000 */   mfc1      $t6, $f4
    /* C2000 800B3050 44812000 */  mtc1       $at, $f4
    /* C2004 800B3054 240E0001 */  addiu      $t6, $zero, 0x1
    /* C2008 800B3058 46049101 */  sub.s      $f4, $f18, $f4
    /* C200C 800B305C 44CEF800 */  ctc1       $t6, $31
    /* C2010 800B3060 00000000 */  nop
    /* C2014 800B3064 46002124 */  cvt.w.s    $f4, $f4
    /* C2018 800B3068 444EF800 */  cfc1       $t6, $31
    /* C201C 800B306C 00000000 */  nop
    /* C2020 800B3070 31CE0078 */  andi       $t6, $t6, 0x78
    /* C2024 800B3074 15C00005 */  bnez       $t6, .L800B308C_C203C
    /* C2028 800B3078 00000000 */   nop
    /* C202C 800B307C 440E2000 */  mfc1       $t6, $f4
    /* C2030 800B3080 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* C2034 800B3084 10000007 */  b          .L800B30A4_C2054
    /* C2038 800B3088 01C17025 */   or        $t6, $t6, $at
  .L800B308C_C203C:
    /* C203C 800B308C 10000005 */  b          .L800B30A4_C2054
    /* C2040 800B3090 240EFFFF */   addiu     $t6, $zero, -0x1
    /* C2044 800B3094 440E2000 */  mfc1       $t6, $f4
  .L800B3098_C2048:
    /* C2048 800B3098 00000000 */  nop
    /* C204C 800B309C 05C0FFFB */  bltz       $t6, .L800B308C_C203C
    /* C2050 800B30A0 00000000 */   nop
  .L800B30A4_C2054:
    /* C2054 800B30A4 A10E0001 */  sb         $t6, 0x1($t0)
    /* C2058 800B30A8 912F0002 */  lbu        $t7, 0x2($t1)
    /* C205C 800B30AC 44CDF800 */  ctc1       $t5, $31
    /* C2060 800B30B0 C7B20024 */  lwc1       $f18, 0x24($sp)
    /* C2064 800B30B4 448F5000 */  mtc1       $t7, $f10
    /* C2068 800B30B8 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* C206C 800B30BC 05E10004 */  bgez       $t7, .L800B30D0_C2080
    /* C2070 800B30C0 468051A0 */   cvt.s.w   $f6, $f10
    /* C2074 800B30C4 44814000 */  mtc1       $at, $f8
    /* C2078 800B30C8 00000000 */  nop
    /* C207C 800B30CC 46083180 */  add.s      $f6, $f6, $f8
  .L800B30D0_C2080:
    /* C2080 800B30D0 46123102 */  mul.s      $f4, $f6, $f18
    /* C2084 800B30D4 24190001 */  addiu      $t9, $zero, 0x1
    /* C2088 800B30D8 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* C208C 800B30DC 4458F800 */  cfc1       $t8, $31
    /* C2090 800B30E0 44D9F800 */  ctc1       $t9, $31
    /* C2094 800B30E4 00000000 */  nop
    /* C2098 800B30E8 460022A4 */  cvt.w.s    $f10, $f4
    /* C209C 800B30EC 4459F800 */  cfc1       $t9, $31
    /* C20A0 800B30F0 00000000 */  nop
    /* C20A4 800B30F4 33390078 */  andi       $t9, $t9, 0x78
    /* C20A8 800B30F8 53200013 */  beql       $t9, $zero, .L800B3148_C20F8
    /* C20AC 800B30FC 44195000 */   mfc1      $t9, $f10
    /* C20B0 800B3100 44815000 */  mtc1       $at, $f10
    /* C20B4 800B3104 24190001 */  addiu      $t9, $zero, 0x1
    /* C20B8 800B3108 460A2281 */  sub.s      $f10, $f4, $f10
    /* C20BC 800B310C 44D9F800 */  ctc1       $t9, $31
    /* C20C0 800B3110 00000000 */  nop
    /* C20C4 800B3114 460052A4 */  cvt.w.s    $f10, $f10
    /* C20C8 800B3118 4459F800 */  cfc1       $t9, $31
    /* C20CC 800B311C 00000000 */  nop
    /* C20D0 800B3120 33390078 */  andi       $t9, $t9, 0x78
    /* C20D4 800B3124 17200005 */  bnez       $t9, .L800B313C_C20EC
    /* C20D8 800B3128 00000000 */   nop
    /* C20DC 800B312C 44195000 */  mfc1       $t9, $f10
    /* C20E0 800B3130 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* C20E4 800B3134 10000007 */  b          .L800B3154_C2104
    /* C20E8 800B3138 0321C825 */   or        $t9, $t9, $at
  .L800B313C_C20EC:
    /* C20EC 800B313C 10000005 */  b          .L800B3154_C2104
    /* C20F0 800B3140 2419FFFF */   addiu     $t9, $zero, -0x1
    /* C20F4 800B3144 44195000 */  mfc1       $t9, $f10
  .L800B3148_C20F8:
    /* C20F8 800B3148 00000000 */  nop
    /* C20FC 800B314C 0720FFFB */  bltz       $t9, .L800B313C_C20EC
    /* C2100 800B3150 00000000 */   nop
  .L800B3154_C2104:
    /* C2104 800B3154 A1190002 */  sb         $t9, 0x2($t0)
    /* C2108 800B3158 8FBF0014 */  lw         $ra, 0x14($sp)
    /* C210C 800B315C 44D8F800 */  ctc1       $t8, $31
    /* C2110 800B3160 27BD0038 */  addiu      $sp, $sp, 0x38
    /* C2114 800B3164 03E00008 */  jr         $ra
    /* C2118 800B3168 00000000 */   nop
endlabel func_800B2CF0_C1CA0
