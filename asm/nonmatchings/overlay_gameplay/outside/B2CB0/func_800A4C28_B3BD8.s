nonmatching func_800A4C28_B3BD8, 0x6D0

glabel func_800A4C28_B3BD8
    /* B3BD8 800A4C28 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* B3BDC 800A4C2C AFA40088 */  sw         $a0, 0x88($sp)
    /* B3BE0 800A4C30 93AE008B */  lbu        $t6, 0x8B($sp)
    /* B3BE4 800A4C34 3C188005 */  lui        $t8, %hi(alienInstances)
    /* B3BE8 800A4C38 3C0A8004 */  lui        $t2, %hi(currentLevel)
    /* B3BEC 800A4C3C 000E7880 */  sll        $t7, $t6, 2
    /* B3BF0 800A4C40 01EE7821 */  addu       $t7, $t7, $t6
    /* B3BF4 800A4C44 8D4A7F90 */  lw         $t2, %lo(currentLevel)($t2)
    /* B3BF8 800A4C48 AFB00028 */  sw         $s0, 0x28($sp)
    /* B3BFC 800A4C4C 000F7900 */  sll        $t7, $t7, 4
    /* B3C00 800A4C50 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* B3C04 800A4C54 01F88021 */  addu       $s0, $t7, $t8
    /* B3C08 800A4C58 9219001A */  lbu        $t9, 0x1A($s0)
    /* B3C0C 800A4C5C 29410004 */  slti       $at, $t2, 0x4
    /* B3C10 800A4C60 AFBF002C */  sw         $ra, 0x2C($sp)
    /* B3C14 800A4C64 1020001A */  beqz       $at, .L800A4CD0_B3C80
    /* B3C18 800A4C68 A3B90087 */   sb        $t9, 0x87($sp)
    /* B3C1C 800A4C6C 860B000C */  lh         $t3, 0xC($s0)
    /* B3C20 800A4C70 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* B3C24 800A4C74 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* B3C28 800A4C78 000B6100 */  sll        $t4, $t3, 4
    /* B3C2C 800A4C7C 006C6821 */  addu       $t5, $v1, $t4
    /* B3C30 800A4C80 81AE000C */  lb         $t6, 0xC($t5)
    /* B3C34 800A4C84 A3AE0085 */  sb         $t6, 0x85($sp)
    /* B3C38 800A4C88 83AF0085 */  lb         $t7, 0x85($sp)
    /* B3C3C 800A4C8C 000FC100 */  sll        $t8, $t7, 4
    /* B3C40 800A4C90 0078C821 */  addu       $t9, $v1, $t8
    /* B3C44 800A4C94 AFB9003C */  sw         $t9, 0x3C($sp)
    /* B3C48 800A4C98 AFB80040 */  sw         $t8, 0x40($sp)
    /* B3C4C 800A4C9C 832B000C */  lb         $t3, 0xC($t9)
    /* B3C50 800A4CA0 A3AB0084 */  sb         $t3, 0x84($sp)
    /* B3C54 800A4CA4 8322000D */  lb         $v0, 0xD($t9)
    /* B3C58 800A4CA8 00026100 */  sll        $t4, $v0, 4
    /* B3C5C 800A4CAC 006C6821 */  addu       $t5, $v1, $t4
    /* B3C60 800A4CB0 81AE000D */  lb         $t6, 0xD($t5)
    /* B3C64 800A4CB4 A3AE0080 */  sb         $t6, 0x80($sp)
    /* B3C68 800A4CB8 83AF0080 */  lb         $t7, 0x80($sp)
    /* B3C6C 800A4CBC 000FC100 */  sll        $t8, $t7, 4
    /* B3C70 800A4CC0 0078C821 */  addu       $t9, $v1, $t8
    /* B3C74 800A4CC4 832B000D */  lb         $t3, 0xD($t9)
    /* B3C78 800A4CC8 10000024 */  b          .L800A4D5C_B3D0C
    /* B3C7C 800A4CCC A3AB007F */   sb        $t3, 0x7F($sp)
  .L800A4CD0_B3C80:
    /* B3C80 800A4CD0 8209000D */  lb         $t1, 0xD($s0)
    /* B3C84 800A4CD4 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* B3C88 800A4CD8 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
    /* B3C8C 800A4CDC 00095100 */  sll        $t2, $t1, 4
    /* B3C90 800A4CE0 006A6021 */  addu       $t4, $v1, $t2
    /* B3C94 800A4CE4 818D000C */  lb         $t5, 0xC($t4)
    /* B3C98 800A4CE8 93A4008B */  lbu        $a0, 0x8B($sp)
    /* B3C9C 800A4CEC 24062000 */  addiu      $a2, $zero, 0x2000
    /* B3CA0 800A4CF0 A3AD0085 */  sb         $t5, 0x85($sp)
    /* B3CA4 800A4CF4 83AE0085 */  lb         $t6, 0x85($sp)
    /* B3CA8 800A4CF8 000E7900 */  sll        $t7, $t6, 4
    /* B3CAC 800A4CFC 006F4021 */  addu       $t0, $v1, $t7
    /* B3CB0 800A4D00 8102000D */  lb         $v0, 0xD($t0)
    /* B3CB4 800A4D04 AFAF0040 */  sw         $t7, 0x40($sp)
    /* B3CB8 800A4D08 0002C100 */  sll        $t8, $v0, 4
    /* B3CBC 800A4D0C 0078C821 */  addu       $t9, $v1, $t8
    /* B3CC0 800A4D10 8327000D */  lb         $a3, 0xD($t9)
    /* B3CC4 800A4D14 00075900 */  sll        $t3, $a3, 4
    /* B3CC8 800A4D18 006B5021 */  addu       $t2, $v1, $t3
    /* B3CCC 800A4D1C 814C000D */  lb         $t4, 0xD($t2)
    /* B3CD0 800A4D20 A3AC0080 */  sb         $t4, 0x80($sp)
    /* B3CD4 800A4D24 83A50080 */  lb         $a1, 0x80($sp)
    /* B3CD8 800A4D28 00057100 */  sll        $t6, $a1, 4
    /* B3CDC 800A4D2C 006E7821 */  addu       $t7, $v1, $t6
    /* B3CE0 800A4D30 81F8000D */  lb         $t8, 0xD($t7)
    /* B3CE4 800A4D34 AFA8003C */  sw         $t0, 0x3C($sp)
    /* B3CE8 800A4D38 A3A90086 */  sb         $t1, 0x86($sp)
    /* B3CEC 800A4D3C 0C02188C */  jal        func_80086230_951E0
    /* B3CF0 800A4D40 A3B8007F */   sb        $t8, 0x7F($sp)
    /* B3CF4 800A4D44 93A4008B */  lbu        $a0, 0x8B($sp)
    /* B3CF8 800A4D48 83A5007F */  lb         $a1, 0x7F($sp)
    /* B3CFC 800A4D4C 0C02188C */  jal        func_80086230_951E0
    /* B3D00 800A4D50 24062000 */   addiu     $a2, $zero, 0x2000
    /* B3D04 800A4D54 3C038015 */  lui        $v1, %hi(D_8014DD50)
    /* B3D08 800A4D58 2463DD50 */  addiu      $v1, $v1, %lo(D_8014DD50)
  .L800A4D5C_B3D0C:
    /* B3D0C 800A4D5C 83B9007F */  lb         $t9, 0x7F($sp)
    /* B3D10 800A4D60 2401FFFF */  addiu      $at, $zero, -0x1
    /* B3D14 800A4D64 83A40080 */  lb         $a0, 0x80($sp)
    /* B3D18 800A4D68 00195900 */  sll        $t3, $t9, 4
    /* B3D1C 800A4D6C 006B5021 */  addu       $t2, $v1, $t3
    /* B3D20 800A4D70 814C000D */  lb         $t4, 0xD($t2)
    /* B3D24 800A4D74 3C0E8004 */  lui        $t6, %hi(currentLevel)
    /* B3D28 800A4D78 11810008 */  beq        $t4, $at, .L800A4D9C_B3D4C
    /* B3D2C 800A4D7C 00000000 */   nop
    /* B3D30 800A4D80 0C024252 */  jal        func_80090948_9F8F8
    /* B3D34 800A4D84 240507D0 */   addiu     $a1, $zero, 0x7D0
    /* B3D38 800A4D88 83A4007F */  lb         $a0, 0x7F($sp)
    /* B3D3C 800A4D8C 0C024252 */  jal        func_80090948_9F8F8
    /* B3D40 800A4D90 240507D0 */   addiu     $a1, $zero, 0x7D0
    /* B3D44 800A4D94 10000009 */  b          .L800A4DBC_B3D6C
    /* B3D48 800A4D98 93A4008B */   lbu       $a0, 0x8B($sp)
  .L800A4D9C_B3D4C:
    /* B3D4C 800A4D9C 8DCE7F90 */  lw         $t6, %lo(currentLevel)($t6)
    /* B3D50 800A4DA0 24010004 */  addiu      $at, $zero, 0x4
    /* B3D54 800A4DA4 240FFFFF */  addiu      $t7, $zero, -0x1
    /* B3D58 800A4DA8 11C10003 */  beq        $t6, $at, .L800A4DB8_B3D68
    /* B3D5C 800A4DAC 2418FFFF */   addiu     $t8, $zero, -0x1
    /* B3D60 800A4DB0 A3AF0080 */  sb         $t7, 0x80($sp)
    /* B3D64 800A4DB4 A3B8007F */  sb         $t8, 0x7F($sp)
  .L800A4DB8_B3D68:
    /* B3D68 800A4DB8 93A4008B */  lbu        $a0, 0x8B($sp)
  .L800A4DBC_B3D6C:
    /* B3D6C 800A4DBC 83A50085 */  lb         $a1, 0x85($sp)
    /* B3D70 800A4DC0 0C02178B */  jal        func_80085E2C_94DDC
    /* B3D74 800A4DC4 24064000 */   addiu     $a2, $zero, 0x4000
    /* B3D78 800A4DC8 8E0D0020 */  lw         $t5, 0x20($s0)
    /* B3D7C 800A4DCC 3C0B8004 */  lui        $t3, %hi(currentLevel)
    /* B3D80 800A4DD0 93A4008B */  lbu        $a0, 0x8B($sp)
    /* B3D84 800A4DD4 31B92000 */  andi       $t9, $t5, 0x2000
    /* B3D88 800A4DD8 13200119 */  beqz       $t9, .L800A5240_B41F0
    /* B3D8C 800A4DDC 00000000 */   nop
    /* B3D90 800A4DE0 8D6B7F90 */  lw         $t3, %lo(currentLevel)($t3)
    /* B3D94 800A4DE4 8FA8003C */  lw         $t0, 0x3C($sp)
    /* B3D98 800A4DE8 83AA0085 */  lb         $t2, 0x85($sp)
    /* B3D9C 800A4DEC 29610004 */  slti       $at, $t3, 0x4
    /* B3DA0 800A4DF0 102000BC */  beqz       $at, .L800A50E4_B4094
    /* B3DA4 800A4DF4 3C198014 */   lui       $t9, %hi(D_8013D888)
    /* B3DA8 800A4DF8 850E000E */  lh         $t6, 0xE($t0)
    /* B3DAC 800A4DFC 83AC0084 */  lb         $t4, 0x84($sp)
    /* B3DB0 800A4E00 A7AA0078 */  sh         $t2, 0x78($sp)
    /* B3DB4 800A4E04 95030006 */  lhu        $v1, 0x6($t0)
    /* B3DB8 800A4E08 15C00008 */  bnez       $t6, .L800A4E2C_B3DDC
    /* B3DBC 800A4E0C A7AC007A */   sh        $t4, 0x7A($sp)
    /* B3DC0 800A4E10 92020036 */  lbu        $v0, 0x36($s0)
    /* B3DC4 800A4E14 28410005 */  slti       $at, $v0, 0x5
    /* B3DC8 800A4E18 10200004 */  beqz       $at, .L800A4E2C_B3DDC
    /* B3DCC 800A4E1C 00027900 */   sll       $t7, $v0, 4
    /* B3DD0 800A4E20 3C018014 */  lui        $at, %hi(D_8013D786)
    /* B3DD4 800A4E24 002F0821 */  addu       $at, $at, $t7
    /* B3DD8 800A4E28 A423D786 */  sh         $v1, %lo(D_8013D786)($at)
  .L800A4E2C_B3DDC:
    /* B3DDC 800A4E2C 8FB80040 */  lw         $t8, 0x40($sp)
    /* B3DE0 800A4E30 3C018015 */  lui        $at, %hi(D_8014E4D6)
    /* B3DE4 800A4E34 3C0D8014 */  lui        $t5, %hi(D_8013D840)
    /* B3DE8 800A4E38 25ADD840 */  addiu      $t5, $t5, %lo(D_8013D840)
    /* B3DEC 800A4E3C 00380821 */  addu       $at, $at, $t8
    /* B3DF0 800A4E40 A423E4D6 */  sh         $v1, %lo(D_8014E4D6)($at)
    /* B3DF4 800A4E44 AFAD0010 */  sw         $t5, 0x10($sp)
    /* B3DF8 800A4E48 93A4008B */  lbu        $a0, 0x8B($sp)
    /* B3DFC 800A4E4C 24050002 */  addiu      $a1, $zero, 0x2
    /* B3E00 800A4E50 24060006 */  addiu      $a2, $zero, 0x6
    /* B3E04 800A4E54 27A70078 */  addiu      $a3, $sp, 0x78
    /* B3E08 800A4E58 0C0207C6 */  jal        func_80081F18_90EC8
    /* B3E0C 800A4E5C A7A30074 */   sh        $v1, 0x74($sp)
    /* B3E10 800A4E60 92190036 */  lbu        $t9, 0x36($s0)
    /* B3E14 800A4E64 24010003 */  addiu      $at, $zero, 0x3
    /* B3E18 800A4E68 A3A20077 */  sb         $v0, 0x77($sp)
    /* B3E1C 800A4E6C 57210043 */  bnel       $t9, $at, .L800A4F7C_B3F2C
    /* B3E20 800A4E70 83AE0077 */   lb        $t6, 0x77($sp)
    /* B3E24 800A4E74 0C007660 */  jal        sins
    /* B3E28 800A4E78 97A40074 */   lhu       $a0, 0x74($sp)
    /* B3E2C 800A4E7C A7A2004C */  sh         $v0, 0x4C($sp)
    /* B3E30 800A4E80 0C007654 */  jal        coss
    /* B3E34 800A4E84 97A40074 */   lhu       $a0, 0x74($sp)
    /* B3E38 800A4E88 87AF004C */  lh         $t7, 0x4C($sp)
    /* B3E3C 800A4E8C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B3E40 800A4E90 44811800 */  mtc1       $at, $f3
    /* B3E44 800A4E94 448F3000 */  mtc1       $t7, $f6
    /* B3E48 800A4E98 44801000 */  mtc1       $zero, $f2
    /* B3E4C 800A4E9C 93AB0087 */  lbu        $t3, 0x87($sp)
    /* B3E50 800A4EA0 46803220 */  cvt.s.w    $f8, $f6
    /* B3E54 800A4EA4 3C0C8025 */  lui        $t4, %hi(alienSpecs)
    /* B3E58 800A4EA8 000B5080 */  sll        $t2, $t3, 2
    /* B3E5C 800A4EAC 014B5023 */  subu       $t2, $t2, $t3
    /* B3E60 800A4EB0 000A5080 */  sll        $t2, $t2, 2
    /* B3E64 800A4EB4 014B5021 */  addu       $t2, $t2, $t3
    /* B3E68 800A4EB8 460042A1 */  cvt.d.s    $f10, $f8
    /* B3E6C 800A4EBC 000A50C0 */  sll        $t2, $t2, 3
    /* B3E70 800A4EC0 46225403 */  div.d      $f16, $f10, $f2
    /* B3E74 800A4EC4 258C6680 */  addiu      $t4, $t4, %lo(alienSpecs)
    /* B3E78 800A4EC8 014C1821 */  addu       $v1, $t2, $t4
    /* B3E7C 800A4ECC 846E0024 */  lh         $t6, 0x24($v1)
    /* B3E80 800A4ED0 44823000 */  mtc1       $v0, $f6
    /* B3E84 800A4ED4 8FAB003C */  lw         $t3, 0x3C($sp)
    /* B3E88 800A4ED8 448E2000 */  mtc1       $t6, $f4
    /* B3E8C 800A4EDC 46803220 */  cvt.s.w    $f8, $f6
    /* B3E90 800A4EE0 856A0004 */  lh         $t2, 0x4($t3)
    /* B3E94 800A4EE4 27B80070 */  addiu      $t8, $sp, 0x70
    /* B3E98 800A4EE8 27B90068 */  addiu      $t9, $sp, 0x68
    /* B3E9C 800A4EEC AFB90018 */  sw         $t9, 0x18($sp)
    /* B3EA0 800A4EF0 46802021 */  cvt.d.w    $f0, $f4
    /* B3EA4 800A4EF4 AFB80010 */  sw         $t8, 0x10($sp)
    /* B3EA8 800A4EF8 84660022 */  lh         $a2, 0x22($v1)
    /* B3EAC 800A4EFC 02002025 */  or         $a0, $s0, $zero
    /* B3EB0 800A4F00 460042A1 */  cvt.d.s    $f10, $f8
    /* B3EB4 800A4F04 46208482 */  mul.d      $f18, $f16, $f0
    /* B3EB8 800A4F08 46225403 */  div.d      $f16, $f10, $f2
    /* B3EBC 800A4F0C 4620910D */  trunc.w.d  $f4, $f18
    /* B3EC0 800A4F10 44052000 */  mfc1       $a1, $f4
    /* B3EC4 800A4F14 448A2000 */  mtc1       $t2, $f4
    /* B3EC8 800A4F18 00056C00 */  sll        $t5, $a1, 16
    /* B3ECC 800A4F1C 468021A1 */  cvt.d.w    $f6, $f4
    /* B3ED0 800A4F20 000D2C03 */  sra        $a1, $t5, 16
    /* B3ED4 800A4F24 27AD006C */  addiu      $t5, $sp, 0x6C
    /* B3ED8 800A4F28 AFAD0014 */  sw         $t5, 0x14($sp)
    /* B3EDC 800A4F2C 46208482 */  mul.d      $f18, $f16, $f0
    /* B3EE0 800A4F30 46269200 */  add.d      $f8, $f18, $f6
    /* B3EE4 800A4F34 4620428D */  trunc.w.d  $f10, $f8
    /* B3EE8 800A4F38 44075000 */  mfc1       $a3, $f10
    /* B3EEC 800A4F3C 00000000 */  nop
    /* B3EF0 800A4F40 00077400 */  sll        $t6, $a3, 16
    /* B3EF4 800A4F44 0C04A10A */  jal        func_80128428_1373D8
    /* B3EF8 800A4F48 000E3C03 */   sra       $a3, $t6, 16
    /* B3EFC 800A4F4C 240B000F */  addiu      $t3, $zero, 0xF
    /* B3F00 800A4F50 240A0003 */  addiu      $t2, $zero, 0x3
    /* B3F04 800A4F54 240C0028 */  addiu      $t4, $zero, 0x28
    /* B3F08 800A4F58 AFAC0018 */  sw         $t4, 0x18($sp)
    /* B3F0C 800A4F5C AFAA0014 */  sw         $t2, 0x14($sp)
    /* B3F10 800A4F60 AFAB0010 */  sw         $t3, 0x10($sp)
    /* B3F14 800A4F64 87A40072 */  lh         $a0, 0x72($sp)
    /* B3F18 800A4F68 87A5006E */  lh         $a1, 0x6E($sp)
    /* B3F1C 800A4F6C 87A6006A */  lh         $a2, 0x6A($sp)
    /* B3F20 800A4F70 0C0315A9 */  jal        func_800C56A4_D4654
    /* B3F24 800A4F74 2407008C */   addiu     $a3, $zero, 0x8C
    /* B3F28 800A4F78 83AE0077 */  lb         $t6, 0x77($sp)
  .L800A4F7C_B3F2C:
    /* B3F2C 800A4F7C 93AF0087 */  lbu        $t7, 0x87($sp)
    /* B3F30 800A4F80 24010004 */  addiu      $at, $zero, 0x4
    /* B3F34 800A4F84 15C1004D */  bne        $t6, $at, .L800A50BC_B406C
    /* B3F38 800A4F88 000FC080 */   sll       $t8, $t7, 2
    /* B3F3C 800A4F8C 030FC023 */  subu       $t8, $t8, $t7
    /* B3F40 800A4F90 0018C080 */  sll        $t8, $t8, 2
    /* B3F44 800A4F94 030FC021 */  addu       $t8, $t8, $t7
    /* B3F48 800A4F98 3C0D8025 */  lui        $t5, %hi(alienSpecs)
    /* B3F4C 800A4F9C 25AD6680 */  addiu      $t5, $t5, %lo(alienSpecs)
    /* B3F50 800A4FA0 0018C0C0 */  sll        $t8, $t8, 3
    /* B3F54 800A4FA4 030D1821 */  addu       $v1, $t8, $t5
    /* B3F58 800A4FA8 84790024 */  lh         $t9, 0x24($v1)
    /* B3F5C 800A4FAC A600001E */  sh         $zero, 0x1E($s0)
    /* B3F60 800A4FB0 AFA30040 */  sw         $v1, 0x40($sp)
    /* B3F64 800A4FB4 97A40074 */  lhu        $a0, 0x74($sp)
    /* B3F68 800A4FB8 0C007660 */  jal        sins
    /* B3F6C 800A4FBC AFB90064 */   sw        $t9, 0x64($sp)
    /* B3F70 800A4FC0 44822000 */  mtc1       $v0, $f4
    /* B3F74 800A4FC4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B3F78 800A4FC8 44814800 */  mtc1       $at, $f9
    /* B3F7C 800A4FCC 468024A0 */  cvt.s.w    $f18, $f4
    /* B3F80 800A4FD0 44804000 */  mtc1       $zero, $f8
    /* B3F84 800A4FD4 8FAB0064 */  lw         $t3, 0x64($sp)
    /* B3F88 800A4FD8 8FA30040 */  lw         $v1, 0x40($sp)
    /* B3F8C 800A4FDC 97A40074 */  lhu        $a0, 0x74($sp)
    /* B3F90 800A4FE0 448B8000 */  mtc1       $t3, $f16
    /* B3F94 800A4FE4 460091A1 */  cvt.d.s    $f6, $f18
    /* B3F98 800A4FE8 46283283 */  div.d      $f10, $f6, $f8
    /* B3F9C 800A4FEC 46808021 */  cvt.d.w    $f0, $f16
    /* B3FA0 800A4FF0 F7A00030 */  sdc1       $f0, 0x30($sp)
    /* B3FA4 800A4FF4 46205402 */  mul.d      $f16, $f10, $f0
    /* B3FA8 800A4FF8 4620810D */  trunc.w.d  $f4, $f16
    /* B3FAC 800A4FFC 440C2000 */  mfc1       $t4, $f4
    /* B3FB0 800A5000 0C007654 */  jal        coss
    /* B3FB4 800A5004 A46C0020 */   sh        $t4, 0x20($v1)
    /* B3FB8 800A5008 44829000 */  mtc1       $v0, $f18
    /* B3FBC 800A500C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* B3FC0 800A5010 44815800 */  mtc1       $at, $f11
    /* B3FC4 800A5014 468091A0 */  cvt.s.w    $f6, $f18
    /* B3FC8 800A5018 44805000 */  mtc1       $zero, $f10
    /* B3FCC 800A501C 8FAE003C */  lw         $t6, 0x3C($sp)
    /* B3FD0 800A5020 D7A00030 */  ldc1       $f0, 0x30($sp)
    /* B3FD4 800A5024 8FA30040 */  lw         $v1, 0x40($sp)
    /* B3FD8 800A5028 85CF0004 */  lh         $t7, 0x4($t6)
    /* B3FDC 800A502C 46003221 */  cvt.d.s    $f8, $f6
    /* B3FE0 800A5030 93A4008B */  lbu        $a0, 0x8B($sp)
    /* B3FE4 800A5034 462A4403 */  div.d      $f16, $f8, $f10
    /* B3FE8 800A5038 448F9000 */  mtc1       $t7, $f18
    /* B3FEC 800A503C 24053FFF */  addiu      $a1, $zero, 0x3FFF
    /* B3FF0 800A5040 468091A1 */  cvt.d.w    $f6, $f18
    /* B3FF4 800A5044 46208102 */  mul.d      $f4, $f16, $f0
    /* B3FF8 800A5048 46262200 */  add.d      $f8, $f4, $f6
    /* B3FFC 800A504C 4620428D */  trunc.w.d  $f10, $f8
    /* B4000 800A5050 440D5000 */  mfc1       $t5, $f10
    /* B4004 800A5054 0C0213FA */  jal        func_80084FE8_93F98
    /* B4008 800A5058 A46D0024 */   sh        $t5, 0x24($v1)
    /* B400C 800A505C 1440000B */  bnez       $v0, .L800A508C_B403C
    /* B4010 800A5060 8FA30040 */   lw        $v1, 0x40($sp)
    /* B4014 800A5064 97A60074 */  lhu        $a2, 0x74($sp)
    /* B4018 800A5068 93A4008B */  lbu        $a0, 0x8B($sp)
    /* B401C 800A506C 00002825 */  or         $a1, $zero, $zero
    /* B4020 800A5070 00063023 */  negu       $a2, $a2
    /* B4024 800A5074 0006CC00 */  sll        $t9, $a2, 16
    /* B4028 800A5078 00193403 */  sra        $a2, $t9, 16
    /* B402C 800A507C 0C021B5C */  jal        func_80086D70_95D20
    /* B4030 800A5080 AFA30040 */   sw        $v1, 0x40($sp)
    /* B4034 800A5084 10000007 */  b          .L800A50A4_B4054
    /* B4038 800A5088 8FA30040 */   lw        $v1, 0x40($sp)
  .L800A508C_B403C:
    /* B403C 800A508C 93A4008B */  lbu        $a0, 0x8B($sp)
    /* B4040 800A5090 00002825 */  or         $a1, $zero, $zero
    /* B4044 800A5094 00003025 */  or         $a2, $zero, $zero
    /* B4048 800A5098 0C021C73 */  jal        func_800871CC_9617C
    /* B404C 800A509C AFA30040 */   sw        $v1, 0x40($sp)
    /* B4050 800A50A0 8FA30040 */  lw         $v1, 0x40($sp)
  .L800A50A4_B4054:
    /* B4054 800A50A4 860C003A */  lh         $t4, 0x3A($s0)
    /* B4058 800A50A8 8FAA0064 */  lw         $t2, 0x64($sp)
    /* B405C 800A50AC 240E0002 */  addiu      $t6, $zero, 0x2
    /* B4060 800A50B0 11800002 */  beqz       $t4, .L800A50BC_B406C
    /* B4064 800A50B4 A46A0024 */   sh        $t2, 0x24($v1)
    /* B4068 800A50B8 A20E0036 */  sb         $t6, 0x36($s0)
  .L800A50BC_B406C:
    /* B406C 800A50BC 83AF0077 */  lb         $t7, 0x77($sp)
    /* B4070 800A50C0 24010006 */  addiu      $at, $zero, 0x6
    /* B4074 800A50C4 15E1007E */  bne        $t7, $at, .L800A52C0_B4270
    /* B4078 800A50C8 00000000 */   nop
    /* B407C 800A50CC 8E180020 */  lw         $t8, 0x20($s0)
    /* B4080 800A50D0 3C01FFBF */  lui        $at, (0xFFBFDFFF >> 16)
    /* B4084 800A50D4 3421DFFF */  ori        $at, $at, (0xFFBFDFFF & 0xFFFF)
    /* B4088 800A50D8 03016824 */  and        $t5, $t8, $at
    /* B408C 800A50DC 10000078 */  b          .L800A52C0_B4270
    /* B4090 800A50E0 AE0D0020 */   sw        $t5, 0x20($s0)
  .L800A50E4_B4094:
    /* B4094 800A50E4 8F39D888 */  lw         $t9, %lo(D_8013D888)($t9)
    /* B4098 800A50E8 240E003D */  addiu      $t6, $zero, 0x3D
    /* B409C 800A50EC 240F0009 */  addiu      $t7, $zero, 0x9
    /* B40A0 800A50F0 1320000D */  beqz       $t9, .L800A5128_B40D8
    /* B40A4 800A50F4 24180072 */   addiu     $t8, $zero, 0x72
    /* B40A8 800A50F8 240BFFC3 */  addiu      $t3, $zero, -0x3D
    /* B40AC 800A50FC 240A0009 */  addiu      $t2, $zero, 0x9
    /* B40B0 800A5100 240C0072 */  addiu      $t4, $zero, 0x72
    /* B40B4 800A5104 A7AB005C */  sh         $t3, 0x5C($sp)
    /* B40B8 800A5108 A7AA005E */  sh         $t2, 0x5E($sp)
    /* B40BC 800A510C A7AC0060 */  sh         $t4, 0x60($sp)
    /* B40C0 800A5110 83A40080 */  lb         $a0, 0x80($sp)
    /* B40C4 800A5114 27A5005C */  addiu      $a1, $sp, 0x5C
    /* B40C8 800A5118 0C02A4C7 */  jal        func_800A931C_B82CC
    /* B40CC 800A511C 27A60050 */   addiu     $a2, $sp, 0x50
    /* B40D0 800A5120 10000009 */  b          .L800A5148_B40F8
    /* B40D4 800A5124 8FAD0050 */   lw        $t5, 0x50($sp)
  .L800A5128_B40D8:
    /* B40D8 800A5128 A7AE005C */  sh         $t6, 0x5C($sp)
    /* B40DC 800A512C A7AF005E */  sh         $t7, 0x5E($sp)
    /* B40E0 800A5130 A7B80060 */  sh         $t8, 0x60($sp)
    /* B40E4 800A5134 83A4007F */  lb         $a0, 0x7F($sp)
    /* B40E8 800A5138 27A5005C */  addiu      $a1, $sp, 0x5C
    /* B40EC 800A513C 0C02A4C7 */  jal        func_800A931C_B82CC
    /* B40F0 800A5140 27A60050 */   addiu     $a2, $sp, 0x50
    /* B40F4 800A5144 8FAD0050 */  lw         $t5, 0x50($sp)
  .L800A5148_B40F8:
    /* B40F8 800A5148 8FB90054 */  lw         $t9, 0x54($sp)
    /* B40FC 800A514C 8FAB0058 */  lw         $t3, 0x58($sp)
    /* B4100 800A5150 83A40086 */  lb         $a0, 0x86($sp)
    /* B4104 800A5154 27A5005C */  addiu      $a1, $sp, 0x5C
    /* B4108 800A5158 27A60050 */  addiu      $a2, $sp, 0x50
    /* B410C 800A515C A7AD005C */  sh         $t5, 0x5C($sp)
    /* B4110 800A5160 A7B9005E */  sh         $t9, 0x5E($sp)
    /* B4114 800A5164 0C02A4C7 */  jal        func_800A931C_B82CC
    /* B4118 800A5168 A7AB0060 */   sh        $t3, 0x60($sp)
    /* B411C 800A516C 93AA0087 */  lbu        $t2, 0x87($sp)
    /* B4120 800A5170 3C0E8025 */  lui        $t6, %hi(alienSpecs)
    /* B4124 800A5174 25CE6680 */  addiu      $t6, $t6, %lo(alienSpecs)
    /* B4128 800A5178 000A6080 */  sll        $t4, $t2, 2
    /* B412C 800A517C 018A6023 */  subu       $t4, $t4, $t2
    /* B4130 800A5180 000C6080 */  sll        $t4, $t4, 2
    /* B4134 800A5184 018A6021 */  addu       $t4, $t4, $t2
    /* B4138 800A5188 000C60C0 */  sll        $t4, $t4, 3
    /* B413C 800A518C 8FAF0050 */  lw         $t7, 0x50($sp)
    /* B4140 800A5190 8FB80054 */  lw         $t8, 0x54($sp)
    /* B4144 800A5194 8FAD0058 */  lw         $t5, 0x58($sp)
    /* B4148 800A5198 018E1821 */  addu       $v1, $t4, $t6
    /* B414C 800A519C 3C198004 */  lui        $t9, %hi(D_80047F94)
    /* B4150 800A51A0 A46F0020 */  sh         $t7, 0x20($v1)
    /* B4154 800A51A4 A4780022 */  sh         $t8, 0x22($v1)
    /* B4158 800A51A8 A46D0024 */  sh         $t5, 0x24($v1)
    /* B415C 800A51AC 8F397F94 */  lw         $t9, %lo(D_80047F94)($t9)
    /* B4160 800A51B0 24010002 */  addiu      $at, $zero, 0x2
    /* B4164 800A51B4 240B0033 */  addiu      $t3, $zero, 0x33
    /* B4168 800A51B8 17210003 */  bne        $t9, $at, .L800A51C8_B4178
    /* B416C 800A51BC 240A002F */   addiu     $t2, $zero, 0x2F
    /* B4170 800A51C0 10000002 */  b          .L800A51CC_B417C
    /* B4174 800A51C4 AC6B001C */   sw        $t3, 0x1C($v1)
  .L800A51C8_B4178:
    /* B4178 800A51C8 AC6A001C */  sw         $t2, 0x1C($v1)
  .L800A51CC_B417C:
    /* B417C 800A51CC 8E0C0020 */  lw         $t4, 0x20($s0)
    /* B4180 800A51D0 93A4008B */  lbu        $a0, 0x8B($sp)
    /* B4184 800A51D4 318E5000 */  andi       $t6, $t4, 0x5000
    /* B4188 800A51D8 55C00015 */  bnel       $t6, $zero, .L800A5230_B41E0
    /* B418C 800A51DC 8602001E */   lh        $v0, 0x1E($s0)
    /* B4190 800A51E0 0C0213FA */  jal        func_80084FE8_93F98
    /* B4194 800A51E4 240527D0 */   addiu     $a1, $zero, 0x27D0
    /* B4198 800A51E8 10400010 */  beqz       $v0, .L800A522C_B41DC
    /* B419C 800A51EC 93A4008B */   lbu       $a0, 0x8B($sp)
    /* B41A0 800A51F0 00002825 */  or         $a1, $zero, $zero
    /* B41A4 800A51F4 0C021C73 */  jal        func_800871CC_9617C
    /* B41A8 800A51F8 00003025 */   or        $a2, $zero, $zero
    /* B41AC 800A51FC 1040000B */  beqz       $v0, .L800A522C_B41DC
    /* B41B0 800A5200 240F0028 */   addiu     $t7, $zero, 0x28
    /* B41B4 800A5204 8E180020 */  lw         $t8, 0x20($s0)
    /* B41B8 800A5208 A60F001E */  sh         $t7, 0x1E($s0)
    /* B41BC 800A520C A200004B */  sb         $zero, 0x4B($s0)
    /* B41C0 800A5210 370D8000 */  ori        $t5, $t8, 0x8000
    /* B41C4 800A5214 AE0D0020 */  sw         $t5, 0x20($s0)
    /* B41C8 800A5218 3C198014 */  lui        $t9, %hi(D_8013D888)
    /* B41CC 800A521C 8F39D888 */  lw         $t9, %lo(D_8013D888)($t9)
    /* B41D0 800A5220 3C018014 */  lui        $at, %hi(D_8013D888)
    /* B41D4 800A5224 2F2B0001 */  sltiu      $t3, $t9, 0x1
    /* B41D8 800A5228 AC2BD888 */  sw         $t3, %lo(D_8013D888)($at)
  .L800A522C_B41DC:
    /* B41DC 800A522C 8602001E */  lh         $v0, 0x1E($s0)
  .L800A5230_B41E0:
    /* B41E0 800A5230 10400023 */  beqz       $v0, .L800A52C0_B4270
    /* B41E4 800A5234 244AFFFF */   addiu     $t2, $v0, -0x1
    /* B41E8 800A5238 10000021 */  b          .L800A52C0_B4270
    /* B41EC 800A523C A60A001E */   sh        $t2, 0x1E($s0)
  .L800A5240_B41F0:
    /* B41F0 800A5240 0C0213FA */  jal        func_80084FE8_93F98
    /* B41F4 800A5244 24053FFF */   addiu     $a1, $zero, 0x3FFF
    /* B41F8 800A5248 5040001A */  beql       $v0, $zero, .L800A52B4_B4264
    /* B41FC 800A524C 8602003A */   lh        $v0, 0x3A($s0)
    /* B4200 800A5250 8E020020 */  lw         $v0, 0x20($s0)
    /* B4204 800A5254 3C0F8004 */  lui        $t7, %hi(currentLevel)
    /* B4208 800A5258 3C018014 */  lui        $at, %hi(D_8013D786)
    /* B420C 800A525C 304C1000 */  andi       $t4, $v0, 0x1000
    /* B4210 800A5260 15800013 */  bnez       $t4, .L800A52B0_B4260
    /* B4214 800A5264 344E2000 */   ori       $t6, $v0, 0x2000
    /* B4218 800A5268 AE0E0020 */  sw         $t6, 0x20($s0)
    /* B421C 800A526C 8DEF7F90 */  lw         $t7, %lo(currentLevel)($t7)
    /* B4220 800A5270 97AD0074 */  lhu        $t5, 0x74($sp)
    /* B4224 800A5274 A2000036 */  sb         $zero, 0x36($s0)
    /* B4228 800A5278 000FC080 */  sll        $t8, $t7, 2
    /* B422C 800A527C 030FC021 */  addu       $t8, $t8, $t7
    /* B4230 800A5280 0018C080 */  sll        $t8, $t8, 2
    /* B4234 800A5284 030FC023 */  subu       $t8, $t8, $t7
    /* B4238 800A5288 0018C080 */  sll        $t8, $t8, 2
    /* B423C 800A528C 030FC023 */  subu       $t8, $t8, $t7
    /* B4240 800A5290 0018C080 */  sll        $t8, $t8, 2
    /* B4244 800A5294 A618003A */  sh         $t8, 0x3A($s0)
    /* B4248 800A5298 93A4008B */  lbu        $a0, 0x8B($sp)
    /* B424C 800A529C 24050017 */  addiu      $a1, $zero, 0x17
    /* B4250 800A52A0 0C04DD1A */  jal        func_80137468_146418
    /* B4254 800A52A4 A42DD786 */   sh        $t5, %lo(D_8013D786)($at)
    /* B4258 800A52A8 10000005 */  b          .L800A52C0_B4270
    /* B425C 800A52AC 00000000 */   nop
  .L800A52B0_B4260:
    /* B4260 800A52B0 8602003A */  lh         $v0, 0x3A($s0)
  .L800A52B4_B4264:
    /* B4264 800A52B4 10400002 */  beqz       $v0, .L800A52C0_B4270
    /* B4268 800A52B8 2459FFFF */   addiu     $t9, $v0, -0x1
    /* B426C 800A52BC A619003A */  sh         $t9, 0x3A($s0)
  .L800A52C0_B4270:
    /* B4270 800A52C0 0C02906C */  jal        func_800A41B0_B3160
    /* B4274 800A52C4 93A4008B */   lbu       $a0, 0x8B($sp)
    /* B4278 800A52C8 8E020020 */  lw         $v0, 0x20($s0)
    /* B427C 800A52CC 3C01FF7F */  lui        $at, (0xFF7FFFFF >> 16)
    /* B4280 800A52D0 3421FFFF */  ori        $at, $at, (0xFF7FFFFF & 0xFFFF)
    /* B4284 800A52D4 00025A00 */  sll        $t3, $v0, 8
    /* B4288 800A52D8 05610002 */  bgez       $t3, .L800A52E4_B4294
    /* B428C 800A52DC 00415024 */   and       $t2, $v0, $at
    /* B4290 800A52E0 AE0A0020 */  sw         $t2, 0x20($s0)
  .L800A52E4_B4294:
    /* B4294 800A52E4 8FBF002C */  lw         $ra, 0x2C($sp)
    /* B4298 800A52E8 8FB00028 */  lw         $s0, 0x28($sp)
    /* B429C 800A52EC 27BD0088 */  addiu      $sp, $sp, 0x88
    /* B42A0 800A52F0 03E00008 */  jr         $ra
    /* B42A4 800A52F4 00000000 */   nop
endlabel func_800A4C28_B3BD8
