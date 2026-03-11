nonmatching func_800C4CB8_D3C68, 0x290

glabel func_800C4CB8_D3C68
    /* D3C68 800C4CB8 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* D3C6C 800C4CBC AFB00018 */  sw         $s0, 0x18($sp)
    /* D3C70 800C4CC0 24100020 */  addiu      $s0, $zero, 0x20
    /* D3C74 800C4CC4 3C018015 */  lui        $at, %hi(D_80153BCD)
    /* D3C78 800C4CC8 A0303BCD */  sb         $s0, %lo(D_80153BCD)($at)
    /* D3C7C 800C4CCC 3C038006 */  lui        $v1, %hi(D_8005BB2C)
    /* D3C80 800C4CD0 3C018015 */  lui        $at, %hi(D_80153BCE)
    /* D3C84 800C4CD4 2463BB2C */  addiu      $v1, $v1, %lo(D_8005BB2C)
    /* D3C88 800C4CD8 A0303BCE */  sb         $s0, %lo(D_80153BCE)($at)
    /* D3C8C 800C4CDC 8C620000 */  lw         $v0, 0x0($v1)
    /* D3C90 800C4CE0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* D3C94 800C4CE4 AFBE0038 */  sw         $fp, 0x38($sp)
    /* D3C98 800C4CE8 244E0008 */  addiu      $t6, $v0, 0x8
    /* D3C9C 800C4CEC AFB70034 */  sw         $s7, 0x34($sp)
    /* D3CA0 800C4CF0 AFB60030 */  sw         $s6, 0x30($sp)
    /* D3CA4 800C4CF4 AFB5002C */  sw         $s5, 0x2C($sp)
    /* D3CA8 800C4CF8 AFB40028 */  sw         $s4, 0x28($sp)
    /* D3CAC 800C4CFC AFB30024 */  sw         $s3, 0x24($sp)
    /* D3CB0 800C4D00 AFB20020 */  sw         $s2, 0x20($sp)
    /* D3CB4 800C4D04 AFB1001C */  sw         $s1, 0x1C($sp)
    /* D3CB8 800C4D08 AC6E0000 */  sw         $t6, 0x0($v1)
    /* D3CBC 800C4D0C 3C1FE700 */  lui        $ra, (0xE7000000 >> 16)
    /* D3CC0 800C4D10 AC5F0000 */  sw         $ra, 0x0($v0)
    /* D3CC4 800C4D14 AC400004 */  sw         $zero, 0x4($v0)
    /* D3CC8 800C4D18 8C620000 */  lw         $v0, 0x0($v1)
    /* D3CCC 800C4D1C 3C18FCFF */  lui        $t8, (0xFCFF99FF >> 16)
    /* D3CD0 800C4D20 3C19FF32 */  lui        $t9, (0xFF327F3F >> 16)
    /* D3CD4 800C4D24 244F0008 */  addiu      $t7, $v0, 0x8
    /* D3CD8 800C4D28 AC6F0000 */  sw         $t7, 0x0($v1)
    /* D3CDC 800C4D2C 37397F3F */  ori        $t9, $t9, (0xFF327F3F & 0xFFFF)
    /* D3CE0 800C4D30 371899FF */  ori        $t8, $t8, (0xFCFF99FF & 0xFFFF)
    /* D3CE4 800C4D34 AC580000 */  sw         $t8, 0x0($v0)
    /* D3CE8 800C4D38 AC590004 */  sw         $t9, 0x4($v0)
    /* D3CEC 800C4D3C 8C620000 */  lw         $v0, 0x0($v1)
    /* D3CF0 800C4D40 3C190101 */  lui        $t9, %hi(D_100E280)
    /* D3CF4 800C4D44 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* D3CF8 800C4D48 244E0008 */  addiu      $t6, $v0, 0x8
    /* D3CFC 800C4D4C AC6E0000 */  sw         $t6, 0x0($v1)
    /* D3D00 800C4D50 AC400004 */  sw         $zero, 0x4($v0)
    /* D3D04 800C4D54 AC5F0000 */  sw         $ra, 0x0($v0)
    /* D3D08 800C4D58 8C620000 */  lw         $v0, 0x0($v1)
    /* D3D0C 800C4D5C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* D3D10 800C4D60 2739E280 */  addiu      $t9, $t9, %lo(D_100E280)
    /* D3D14 800C4D64 244F0008 */  addiu      $t7, $v0, 0x8
    /* D3D18 800C4D68 AC6F0000 */  sw         $t7, 0x0($v1)
    /* D3D1C 800C4D6C 03217024 */  and        $t6, $t9, $at
    /* D3D20 800C4D70 3C18FD90 */  lui        $t8, (0xFD900000 >> 16)
    /* D3D24 800C4D74 AC580000 */  sw         $t8, 0x0($v0)
    /* D3D28 800C4D78 AC4E0004 */  sw         $t6, 0x4($v0)
    /* D3D2C 800C4D7C 8C620000 */  lw         $v0, 0x0($v1)
    /* D3D30 800C4D80 3C190708 */  lui        $t9, (0x7080200 >> 16)
    /* D3D34 800C4D84 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
    /* D3D38 800C4D88 244F0008 */  addiu      $t7, $v0, 0x8
    /* D3D3C 800C4D8C AC6F0000 */  sw         $t7, 0x0($v1)
    /* D3D40 800C4D90 3C18F590 */  lui        $t8, (0xF5900000 >> 16)
    /* D3D44 800C4D94 AC580000 */  sw         $t8, 0x0($v0)
    /* D3D48 800C4D98 AC590004 */  sw         $t9, 0x4($v0)
    /* D3D4C 800C4D9C 8C620000 */  lw         $v0, 0x0($v1)
    /* D3D50 800C4DA0 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
    /* D3D54 800C4DA4 3C19F300 */  lui        $t9, (0xF3000000 >> 16)
    /* D3D58 800C4DA8 244E0008 */  addiu      $t6, $v0, 0x8
    /* D3D5C 800C4DAC AC6E0000 */  sw         $t6, 0x0($v1)
    /* D3D60 800C4DB0 AC400004 */  sw         $zero, 0x4($v0)
    /* D3D64 800C4DB4 AC4F0000 */  sw         $t7, 0x0($v0)
    /* D3D68 800C4DB8 8C620000 */  lw         $v0, 0x0($v1)
    /* D3D6C 800C4DBC 3C0E070F */  lui        $t6, (0x70FF400 >> 16)
    /* D3D70 800C4DC0 35CEF400 */  ori        $t6, $t6, (0x70FF400 & 0xFFFF)
    /* D3D74 800C4DC4 24580008 */  addiu      $t8, $v0, 0x8
    /* D3D78 800C4DC8 AC780000 */  sw         $t8, 0x0($v1)
    /* D3D7C 800C4DCC AC4E0004 */  sw         $t6, 0x4($v0)
    /* D3D80 800C4DD0 AC590000 */  sw         $t9, 0x0($v0)
    /* D3D84 800C4DD4 8C620000 */  lw         $v0, 0x0($v1)
    /* D3D88 800C4DD8 3C19F580 */  lui        $t9, (0xF5800400 >> 16)
    /* D3D8C 800C4DDC 3C0E0008 */  lui        $t6, (0x80200 >> 16)
    /* D3D90 800C4DE0 244F0008 */  addiu      $t7, $v0, 0x8
    /* D3D94 800C4DE4 AC6F0000 */  sw         $t7, 0x0($v1)
    /* D3D98 800C4DE8 AC400004 */  sw         $zero, 0x4($v0)
    /* D3D9C 800C4DEC AC5F0000 */  sw         $ra, 0x0($v0)
    /* D3DA0 800C4DF0 8C620000 */  lw         $v0, 0x0($v1)
    /* D3DA4 800C4DF4 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
    /* D3DA8 800C4DF8 37390400 */  ori        $t9, $t9, (0xF5800400 & 0xFFFF)
    /* D3DAC 800C4DFC 24580008 */  addiu      $t8, $v0, 0x8
    /* D3DB0 800C4E00 AC780000 */  sw         $t8, 0x0($v1)
    /* D3DB4 800C4E04 AC4E0004 */  sw         $t6, 0x4($v0)
    /* D3DB8 800C4E08 AC590000 */  sw         $t9, 0x0($v0)
    /* D3DBC 800C4E0C 8C620000 */  lw         $v0, 0x0($v1)
    /* D3DC0 800C4E10 3C190007 */  lui        $t9, (0x7C07C >> 16)
    /* D3DC4 800C4E14 3739C07C */  ori        $t9, $t9, (0x7C07C & 0xFFFF)
    /* D3DC8 800C4E18 244F0008 */  addiu      $t7, $v0, 0x8
    /* D3DCC 800C4E1C AC6F0000 */  sw         $t7, 0x0($v1)
    /* D3DD0 800C4E20 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* D3DD4 800C4E24 AC580000 */  sw         $t8, 0x0($v0)
    /* D3DD8 800C4E28 AC590004 */  sw         $t9, 0x4($v0)
    /* D3DDC 800C4E2C 3C028015 */  lui        $v0, %hi(D_801541FE)
    /* D3DE0 800C4E30 844241FE */  lh         $v0, %lo(D_801541FE)($v0)
    /* D3DE4 800C4E34 2401FFFB */  addiu      $at, $zero, -0x5
    /* D3DE8 800C4E38 2413FFFA */  addiu      $s3, $zero, -0x6
    /* D3DEC 800C4E3C 50410037 */  beql       $v0, $at, .L800C4F1C_D3ECC
    /* D3DF0 800C4E40 8FBF003C */   lw        $ra, 0x3C($sp)
    /* D3DF4 800C4E44 10530034 */  beq        $v0, $s3, .L800C4F18_D3EC8
    /* D3DF8 800C4E48 3C1E8015 */   lui       $fp, %hi(D_80153BCC)
    /* D3DFC 800C4E4C 3C178015 */  lui        $s7, %hi(D_80153BC8)
    /* D3E00 800C4E50 3C168015 */  lui        $s6, %hi(D_80153BC4)
    /* D3E04 800C4E54 3C148015 */  lui        $s4, %hi(D_80154318)
    /* D3E08 800C4E58 3C128015 */  lui        $s2, %hi(D_80156EDA)
    /* D3E0C 800C4E5C 3C118015 */  lui        $s1, %hi(D_80153BB8)
    /* D3E10 800C4E60 26313BB8 */  addiu      $s1, $s1, %lo(D_80153BB8)
    /* D3E14 800C4E64 26526EDA */  addiu      $s2, $s2, %lo(D_80156EDA)
    /* D3E18 800C4E68 26944318 */  addiu      $s4, $s4, %lo(D_80154318)
    /* D3E1C 800C4E6C 26D63BC4 */  addiu      $s6, $s6, %lo(D_80153BC4)
    /* D3E20 800C4E70 26F73BC8 */  addiu      $s7, $s7, %lo(D_80153BC8)
    /* D3E24 800C4E74 27DE3BCC */  addiu      $fp, $fp, %lo(D_80153BCC)
    /* D3E28 800C4E78 2415001C */  addiu      $s5, $zero, 0x1C
  .L800C4E7C_D3E2C:
    /* D3E2C 800C4E7C 00550019 */  multu      $v0, $s5
    /* D3E30 800C4E80 00007012 */  mflo       $t6
    /* D3E34 800C4E84 028E8021 */  addu       $s0, $s4, $t6
    /* D3E38 800C4E88 860F0008 */  lh         $t7, 0x8($s0)
    /* D3E3C 800C4E8C 8618000A */  lh         $t8, 0xA($s0)
    /* D3E40 800C4E90 8619000C */  lh         $t9, 0xC($s0)
    /* D3E44 800C4E94 448F2000 */  mtc1       $t7, $f4
    /* D3E48 800C4E98 860F0002 */  lh         $t7, 0x2($s0)
    /* D3E4C 800C4E9C 44984000 */  mtc1       $t8, $f8
    /* D3E50 800C4EA0 468021A0 */  cvt.s.w    $f6, $f4
    /* D3E54 800C4EA4 44998000 */  mtc1       $t9, $f16
    /* D3E58 800C4EA8 448F2000 */  mtc1       $t7, $f4
    /* D3E5C 800C4EAC 92190013 */  lbu        $t9, 0x13($s0)
    /* D3E60 800C4EB0 92180012 */  lbu        $t8, 0x12($s0)
    /* D3E64 800C4EB4 468042A0 */  cvt.s.w    $f10, $f8
    /* D3E68 800C4EB8 E6260000 */  swc1       $f6, 0x0($s1)
    /* D3E6C 800C4EBC 260E000E */  addiu      $t6, $s0, 0xE
    /* D3E70 800C4EC0 AECE0000 */  sw         $t6, 0x0($s6)
    /* D3E74 800C4EC4 A3D80000 */  sb         $t8, 0x0($fp)
    /* D3E78 800C4EC8 468084A0 */  cvt.s.w    $f18, $f16
    /* D3E7C 800C4ECC E62A0004 */  swc1       $f10, 0x4($s1)
    /* D3E80 800C4ED0 468021A0 */  cvt.s.w    $f6, $f4
    /* D3E84 800C4ED4 E6320008 */  swc1       $f18, 0x8($s1)
    /* D3E88 800C4ED8 17200005 */  bnez       $t9, .L800C4EF0_D3EA0
    /* D3E8C 800C4EDC E6E60000 */   swc1      $f6, 0x0($s7)
    /* D3E90 800C4EE0 0C036DC5 */  jal        func_800DB714_EA6C4
    /* D3E94 800C4EE4 00000000 */   nop
    /* D3E98 800C4EE8 10000004 */  b          .L800C4EFC_D3EAC
    /* D3E9C 800C4EEC 864E0000 */   lh        $t6, 0x0($s2)
  .L800C4EF0_D3EA0:
    /* D3EA0 800C4EF0 0C036EA7 */  jal        func_800DBA9C_EAA4C
    /* D3EA4 800C4EF4 00000000 */   nop
    /* D3EA8 800C4EF8 864E0000 */  lh         $t6, 0x0($s2)
  .L800C4EFC_D3EAC:
    /* D3EAC 800C4EFC 86020004 */  lh         $v0, 0x4($s0)
    /* D3EB0 800C4F00 2401FFFB */  addiu      $at, $zero, -0x5
    /* D3EB4 800C4F04 25CF0004 */  addiu      $t7, $t6, 0x4
    /* D3EB8 800C4F08 10410003 */  beq        $v0, $at, .L800C4F18_D3EC8
    /* D3EBC 800C4F0C A64F0000 */   sh        $t7, 0x0($s2)
    /* D3EC0 800C4F10 1453FFDA */  bne        $v0, $s3, .L800C4E7C_D3E2C
    /* D3EC4 800C4F14 00000000 */   nop
  .L800C4F18_D3EC8:
    /* D3EC8 800C4F18 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800C4F1C_D3ECC:
    /* D3ECC 800C4F1C 8FB00018 */  lw         $s0, 0x18($sp)
    /* D3ED0 800C4F20 8FB1001C */  lw         $s1, 0x1C($sp)
    /* D3ED4 800C4F24 8FB20020 */  lw         $s2, 0x20($sp)
    /* D3ED8 800C4F28 8FB30024 */  lw         $s3, 0x24($sp)
    /* D3EDC 800C4F2C 8FB40028 */  lw         $s4, 0x28($sp)
    /* D3EE0 800C4F30 8FB5002C */  lw         $s5, 0x2C($sp)
    /* D3EE4 800C4F34 8FB60030 */  lw         $s6, 0x30($sp)
    /* D3EE8 800C4F38 8FB70034 */  lw         $s7, 0x34($sp)
    /* D3EEC 800C4F3C 8FBE0038 */  lw         $fp, 0x38($sp)
    /* D3EF0 800C4F40 03E00008 */  jr         $ra
    /* D3EF4 800C4F44 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800C4CB8_D3C68
