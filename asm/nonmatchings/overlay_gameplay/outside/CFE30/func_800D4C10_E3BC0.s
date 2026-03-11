nonmatching func_800D4C10_E3BC0, 0x814

glabel func_800D4C10_E3BC0
    /* E3BC0 800D4C10 27BDFEF8 */  addiu      $sp, $sp, -0x108
    /* E3BC4 800D4C14 3C028015 */  lui        $v0, %hi(D_801542B2)
    /* E3BC8 800D4C18 844242B2 */  lh         $v0, %lo(D_801542B2)($v0)
    /* E3BCC 800D4C1C F7BA0030 */  sdc1       $f26, 0x30($sp)
    /* E3BD0 800D4C20 4480D000 */  mtc1       $zero, $f26
    /* E3BD4 800D4C24 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* E3BD8 800D4C28 2401FFFB */  addiu      $at, $zero, -0x5
    /* E3BDC 800D4C2C AFBF0064 */  sw         $ra, 0x64($sp)
    /* E3BE0 800D4C30 AFBE0060 */  sw         $fp, 0x60($sp)
    /* E3BE4 800D4C34 AFB7005C */  sw         $s7, 0x5C($sp)
    /* E3BE8 800D4C38 AFB60058 */  sw         $s6, 0x58($sp)
    /* E3BEC 800D4C3C AFB50054 */  sw         $s5, 0x54($sp)
    /* E3BF0 800D4C40 AFB40050 */  sw         $s4, 0x50($sp)
    /* E3BF4 800D4C44 AFB3004C */  sw         $s3, 0x4C($sp)
    /* E3BF8 800D4C48 AFB20048 */  sw         $s2, 0x48($sp)
    /* E3BFC 800D4C4C AFB10044 */  sw         $s1, 0x44($sp)
    /* E3C00 800D4C50 AFB00040 */  sw         $s0, 0x40($sp)
    /* E3C04 800D4C54 F7BC0038 */  sdc1       $f28, 0x38($sp)
    /* E3C08 800D4C58 F7B80028 */  sdc1       $f24, 0x28($sp)
    /* E3C0C 800D4C5C F7B60020 */  sdc1       $f22, 0x20($sp)
    /* E3C10 800D4C60 104101DF */  beq        $v0, $at, .L800D53E0_E4390
    /* E3C14 800D4C64 4600D506 */   mov.s     $f20, $f26
    /* E3C18 800D4C68 2401FFFA */  addiu      $at, $zero, -0x6
    /* E3C1C 800D4C6C 104101DC */  beq        $v0, $at, .L800D53E0_E4390
    /* E3C20 800D4C70 241E0003 */   addiu     $fp, $zero, 0x3
    /* E3C24 800D4C74 3C014220 */  lui        $at, (0x42200000 >> 16)
    /* E3C28 800D4C78 4481E000 */  mtc1       $at, $f28
    /* E3C2C 800D4C7C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* E3C30 800D4C80 3C168014 */  lui        $s6, %hi(D_8013DFA8)
    /* E3C34 800D4C84 3C118006 */  lui        $s1, %hi(D_8005BB2C)
    /* E3C38 800D4C88 3C108006 */  lui        $s0, %hi(D_8005BB34)
    /* E3C3C 800D4C8C 4481B800 */  mtc1       $at, $f23
    /* E3C40 800D4C90 4480B000 */  mtc1       $zero, $f22
    /* E3C44 800D4C94 2610BB34 */  addiu      $s0, $s0, %lo(D_8005BB34)
    /* E3C48 800D4C98 2631BB2C */  addiu      $s1, $s1, %lo(D_8005BB2C)
    /* E3C4C 800D4C9C 26D6DFA8 */  addiu      $s6, $s6, %lo(D_8013DFA8)
    /* E3C50 800D4CA0 24170003 */  addiu      $s7, $zero, 0x3
    /* E3C54 800D4CA4 24130800 */  addiu      $s3, $zero, 0x800
    /* E3C58 800D4CA8 000270C0 */  sll        $t6, $v0, 3
  .L800D4CAC_E3C5C:
    /* E3C5C 800D4CAC 01C27023 */  subu       $t6, $t6, $v0
    /* E3C60 800D4CB0 3C0F8015 */  lui        $t7, %hi(D_80154318)
    /* E3C64 800D4CB4 25EF4318 */  addiu      $t7, $t7, %lo(D_80154318)
    /* E3C68 800D4CB8 000E7080 */  sll        $t6, $t6, 2
    /* E3C6C 800D4CBC 01CFA821 */  addu       $s5, $t6, $t7
    /* E3C70 800D4CC0 86B8000E */  lh         $t8, 0xE($s5)
    /* E3C74 800D4CC4 86B90008 */  lh         $t9, 0x8($s5)
    /* E3C78 800D4CC8 86AE0010 */  lh         $t6, 0x10($s5)
    /* E3C7C 800D4CCC 86AF000A */  lh         $t7, 0xA($s5)
    /* E3C80 800D4CD0 03196823 */  subu       $t5, $t8, $t9
    /* E3C84 800D4CD4 448D2000 */  mtc1       $t5, $f4
    /* E3C88 800D4CD8 01CFC023 */  subu       $t8, $t6, $t7
    /* E3C8C 800D4CDC 44983000 */  mtc1       $t8, $f6
    /* E3C90 800D4CE0 468020A0 */  cvt.s.w    $f2, $f4
    /* E3C94 800D4CE4 86AD000C */  lh         $t5, 0xC($s5)
    /* E3C98 800D4CE8 86B90012 */  lh         $t9, 0x12($s5)
    /* E3C9C 800D4CEC 46803020 */  cvt.s.w    $f0, $f6
    /* E3CA0 800D4CF0 032D7023 */  subu       $t6, $t9, $t5
    /* E3CA4 800D4CF4 448E4000 */  mtc1       $t6, $f8
    /* E3CA8 800D4CF8 46021282 */  mul.s      $f10, $f2, $f2
    /* E3CAC 800D4CFC E7A200FC */  swc1       $f2, 0xFC($sp)
    /* E3CB0 800D4D00 46000482 */  mul.s      $f18, $f0, $f0
    /* E3CB4 800D4D04 E7A00100 */  swc1       $f0, 0x100($sp)
    /* E3CB8 800D4D08 468043A0 */  cvt.s.w    $f14, $f8
    /* E3CBC 800D4D0C 46125100 */  add.s      $f4, $f10, $f18
    /* E3CC0 800D4D10 460E7182 */  mul.s      $f6, $f14, $f14
    /* E3CC4 800D4D14 E7AE0104 */  swc1       $f14, 0x104($sp)
    /* E3CC8 800D4D18 0C007650 */  jal        sqrtf
    /* E3CCC 800D4D1C 46062300 */   add.s     $f12, $f4, $f6
    /* E3CD0 800D4D20 461A0032 */  c.eq.s     $f0, $f26
    /* E3CD4 800D4D24 3C0F0101 */  lui        $t7, %hi(D_100DC00)
    /* E3CD8 800D4D28 46000606 */  mov.s      $f24, $f0
    /* E3CDC 800D4D2C 25EFDC00 */  addiu      $t7, $t7, %lo(D_100DC00)
    /* E3CE0 800D4D30 45000003 */  bc1f       .L800D4D40_E3CF0
    /* E3CE4 800D4D34 24044000 */   addiu     $a0, $zero, 0x4000
    /* E3CE8 800D4D38 100001A4 */  b          .L800D53CC_E437C
    /* E3CEC 800D4D3C 86A20004 */   lh        $v0, 0x4($s5)
  .L800D4D40_E3CF0:
    /* E3CF0 800D4D40 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* E3CF4 800D4D44 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* E3CF8 800D4D48 01E1C024 */  and        $t8, $t7, $at
    /* E3CFC 800D4D4C AFB80084 */  sw         $t8, 0x84($sp)
    /* E3D00 800D4D50 0C007654 */  jal        coss
    /* E3D04 800D4D54 00009025 */   or        $s2, $zero, $zero
    /* E3D08 800D4D58 0002A400 */  sll        $s4, $v0, 16
    /* E3D0C 800D4D5C 0014CC03 */  sra        $t9, $s4, 16
    /* E3D10 800D4D60 0320A025 */  or         $s4, $t9, $zero
    /* E3D14 800D4D64 0C007660 */  jal        sins
    /* E3D18 800D4D68 24044000 */   addiu     $a0, $zero, 0x4000
    /* E3D1C 800D4D6C 44824000 */  mtc1       $v0, $f8
    /* E3D20 800D4D70 C7AE0104 */  lwc1       $f14, 0x104($sp)
    /* E3D24 800D4D74 C7A200FC */  lwc1       $f2, 0xFC($sp)
    /* E3D28 800D4D78 468042A0 */  cvt.s.w    $f10, $f8
    /* E3D2C 800D4D7C 24044000 */  addiu      $a0, $zero, 0x4000
    /* E3D30 800D4D80 460071A1 */  cvt.d.s    $f6, $f14
    /* E3D34 800D4D84 460054A1 */  cvt.d.s    $f18, $f10
    /* E3D38 800D4D88 460012A1 */  cvt.d.s    $f10, $f2
    /* E3D3C 800D4D8C 46369103 */  div.d      $f4, $f18, $f22
    /* E3D40 800D4D90 44949000 */  mtc1       $s4, $f18
    /* E3D44 800D4D94 46262202 */  mul.d      $f8, $f4, $f6
    /* E3D48 800D4D98 46809120 */  cvt.s.w    $f4, $f18
    /* E3D4C 800D4D9C 460021A1 */  cvt.d.s    $f6, $f4
    /* E3D50 800D4DA0 46363483 */  div.d      $f18, $f6, $f22
    /* E3D54 800D4DA4 46325102 */  mul.d      $f4, $f10, $f18
    /* E3D58 800D4DA8 46244180 */  add.d      $f6, $f8, $f4
    /* E3D5C 800D4DAC 462032A0 */  cvt.s.d    $f10, $f6
    /* E3D60 800D4DB0 0C007654 */  jal        coss
    /* E3D64 800D4DB4 E7AA00E4 */   swc1      $f10, 0xE4($sp)
    /* E3D68 800D4DB8 0002A400 */  sll        $s4, $v0, 16
    /* E3D6C 800D4DBC 00146C03 */  sra        $t5, $s4, 16
    /* E3D70 800D4DC0 01A0A025 */  or         $s4, $t5, $zero
    /* E3D74 800D4DC4 0C007660 */  jal        sins
    /* E3D78 800D4DC8 24044000 */   addiu     $a0, $zero, 0x4000
    /* E3D7C 800D4DCC 44944000 */  mtc1       $s4, $f8
    /* E3D80 800D4DD0 C7AE0104 */  lwc1       $f14, 0x104($sp)
    /* E3D84 800D4DD4 C7A200FC */  lwc1       $f2, 0xFC($sp)
    /* E3D88 800D4DD8 46804120 */  cvt.s.w    $f4, $f8
    /* E3D8C 800D4DDC 27A400E4 */  addiu      $a0, $sp, 0xE4
    /* E3D90 800D4DE0 E7BA00E8 */  swc1       $f26, 0xE8($sp)
    /* E3D94 800D4DE4 00802825 */  or         $a1, $a0, $zero
    /* E3D98 800D4DE8 460074A1 */  cvt.d.s    $f18, $f14
    /* E3D9C 800D4DEC 460021A1 */  cvt.d.s    $f6, $f4
    /* E3DA0 800D4DF0 44822000 */  mtc1       $v0, $f4
    /* E3DA4 800D4DF4 46363283 */  div.d      $f10, $f6, $f22
    /* E3DA8 800D4DF8 468021A0 */  cvt.s.w    $f6, $f4
    /* E3DAC 800D4DFC 46001121 */  cvt.d.s    $f4, $f2
    /* E3DB0 800D4E00 462A9202 */  mul.d      $f8, $f18, $f10
    /* E3DB4 800D4E04 460034A1 */  cvt.d.s    $f18, $f6
    /* E3DB8 800D4E08 46369283 */  div.d      $f10, $f18, $f22
    /* E3DBC 800D4E0C 46245182 */  mul.d      $f6, $f10, $f4
    /* E3DC0 800D4E10 46264481 */  sub.d      $f18, $f8, $f6
    /* E3DC4 800D4E14 462092A0 */  cvt.s.d    $f10, $f18
    /* E3DC8 800D4E18 0C030409 */  jal        func_800C1024_CFFD4
    /* E3DCC 800D4E1C E7AA00EC */   swc1      $f10, 0xEC($sp)
    /* E3DD0 800D4E20 27A400FC */  addiu      $a0, $sp, 0xFC
    /* E3DD4 800D4E24 0C030409 */  jal        func_800C1024_CFFD4
    /* E3DD8 800D4E28 27A500F0 */   addiu     $a1, $sp, 0xF0
    /* E3DDC 800D4E2C 27A500F0 */  addiu      $a1, $sp, 0xF0
    /* E3DE0 800D4E30 00A03025 */  or         $a2, $a1, $zero
    /* E3DE4 800D4E34 0C03044A */  jal        func_800C1128_D00D8
    /* E3DE8 800D4E38 4600E306 */   mov.s     $f12, $f28
    /* E3DEC 800D4E3C C7A000F0 */  lwc1       $f0, 0xF0($sp)
    /* E3DF0 800D4E40 C7A200F4 */  lwc1       $f2, 0xF4($sp)
    /* E3DF4 800D4E44 C7AE00F8 */  lwc1       $f14, 0xF8($sp)
    /* E3DF8 800D4E48 46000102 */  mul.s      $f4, $f0, $f0
    /* E3DFC 800D4E4C 00000000 */  nop
    /* E3E00 800D4E50 46021202 */  mul.s      $f8, $f2, $f2
    /* E3E04 800D4E54 46082180 */  add.s      $f6, $f4, $f8
    /* E3E08 800D4E58 460E7482 */  mul.s      $f18, $f14, $f14
    /* E3E0C 800D4E5C 0C007650 */  jal        sqrtf
    /* E3E10 800D4E60 46123300 */   add.s     $f12, $f6, $f18
    /* E3E14 800D4E64 26A30008 */  addiu      $v1, $s5, 0x8
    /* E3E18 800D4E68 846E0006 */  lh         $t6, 0x6($v1)
    /* E3E1C 800D4E6C 8E220000 */  lw         $v0, 0x0($s1)
    /* E3E20 800D4E70 846F0008 */  lh         $t7, 0x8($v1)
    /* E3E24 800D4E74 8478000A */  lh         $t8, 0xA($v1)
    /* E3E28 800D4E78 448E5000 */  mtc1       $t6, $f10
    /* E3E2C 800D4E7C 24590008 */  addiu      $t9, $v0, 0x8
    /* E3E30 800D4E80 AE390000 */  sw         $t9, 0x0($s1)
    /* E3E34 800D4E84 3C0EFF32 */  lui        $t6, (0xFF327F3F >> 16)
    /* E3E38 800D4E88 3C0DFCFF */  lui        $t5, (0xFCFF99FF >> 16)
    /* E3E3C 800D4E8C 35AD99FF */  ori        $t5, $t5, (0xFCFF99FF & 0xFFFF)
    /* E3E40 800D4E90 35CE7F3F */  ori        $t6, $t6, (0xFF327F3F & 0xFFFF)
    /* E3E44 800D4E94 AC4E0004 */  sw         $t6, 0x4($v0)
    /* E3E48 800D4E98 AC4D0000 */  sw         $t5, 0x0($v0)
    /* E3E4C 800D4E9C 8E220000 */  lw         $v0, 0x0($s1)
    /* E3E50 800D4EA0 448F2000 */  mtc1       $t7, $f4
    /* E3E54 800D4EA4 44984000 */  mtc1       $t8, $f8
    /* E3E58 800D4EA8 244F0008 */  addiu      $t7, $v0, 0x8
    /* E3E5C 800D4EAC AE2F0000 */  sw         $t7, 0x0($s1)
    /* E3E60 800D4EB0 3C18FD90 */  lui        $t8, (0xFD900000 >> 16)
    /* E3E64 800D4EB4 AC580000 */  sw         $t8, 0x0($v0)
    /* E3E68 800D4EB8 8FB90084 */  lw         $t9, 0x84($sp)
    /* E3E6C 800D4EBC 3C0F0708 */  lui        $t7, (0x7080200 >> 16)
    /* E3E70 800D4EC0 35EF0200 */  ori        $t7, $t7, (0x7080200 & 0xFFFF)
    /* E3E74 800D4EC4 AC590004 */  sw         $t9, 0x4($v0)
    /* E3E78 800D4EC8 8E220000 */  lw         $v0, 0x0($s1)
    /* E3E7C 800D4ECC 3C0EF590 */  lui        $t6, (0xF5900000 >> 16)
    /* E3E80 800D4ED0 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
    /* E3E84 800D4ED4 244D0008 */  addiu      $t5, $v0, 0x8
    /* E3E88 800D4ED8 AE2D0000 */  sw         $t5, 0x0($s1)
    /* E3E8C 800D4EDC AC4F0004 */  sw         $t7, 0x4($v0)
    /* E3E90 800D4EE0 AC4E0000 */  sw         $t6, 0x0($v0)
    /* E3E94 800D4EE4 00403025 */  or         $a2, $v0, $zero
    /* E3E98 800D4EE8 8E220000 */  lw         $v0, 0x0($s1)
    /* E3E9C 800D4EEC 3C0F070F */  lui        $t7, (0x70FF400 >> 16)
    /* E3EA0 800D4EF0 4600C183 */  div.s      $f6, $f24, $f0
    /* E3EA4 800D4EF4 24580008 */  addiu      $t8, $v0, 0x8
    /* E3EA8 800D4EF8 AE380000 */  sw         $t8, 0x0($s1)
    /* E3EAC 800D4EFC AC400004 */  sw         $zero, 0x4($v0)
    /* E3EB0 800D4F00 AC590000 */  sw         $t9, 0x0($v0)
    /* E3EB4 800D4F04 8E220000 */  lw         $v0, 0x0($s1)
    /* E3EB8 800D4F08 35EFF400 */  ori        $t7, $t7, (0x70FF400 & 0xFFFF)
    /* E3EBC 800D4F0C 3C0EF300 */  lui        $t6, (0xF3000000 >> 16)
    /* E3EC0 800D4F10 244D0008 */  addiu      $t5, $v0, 0x8
    /* E3EC4 800D4F14 AE2D0000 */  sw         $t5, 0x0($s1)
    /* E3EC8 800D4F18 AC4F0004 */  sw         $t7, 0x4($v0)
    /* E3ECC 800D4F1C AC4E0000 */  sw         $t6, 0x0($v0)
    /* E3ED0 800D4F20 8E220000 */  lw         $v0, 0x0($s1)
    /* E3ED4 800D4F24 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
    /* E3ED8 800D4F28 3C0EF580 */  lui        $t6, (0xF5800400 >> 16)
    /* E3EDC 800D4F2C 24580008 */  addiu      $t8, $v0, 0x8
    /* E3EE0 800D4F30 AE380000 */  sw         $t8, 0x0($s1)
    /* E3EE4 800D4F34 AC400004 */  sw         $zero, 0x4($v0)
    /* E3EE8 800D4F38 AC590000 */  sw         $t9, 0x0($v0)
    /* E3EEC 800D4F3C 00404825 */  or         $t1, $v0, $zero
    /* E3EF0 800D4F40 8E220000 */  lw         $v0, 0x0($s1)
    /* E3EF4 800D4F44 3C0F0008 */  lui        $t7, (0x80200 >> 16)
    /* E3EF8 800D4F48 35EF0200 */  ori        $t7, $t7, (0x80200 & 0xFFFF)
    /* E3EFC 800D4F4C 244D0008 */  addiu      $t5, $v0, 0x8
    /* E3F00 800D4F50 AE2D0000 */  sw         $t5, 0x0($s1)
    /* E3F04 800D4F54 35CE0400 */  ori        $t6, $t6, (0xF5800400 & 0xFFFF)
    /* E3F08 800D4F58 46805320 */  cvt.s.w    $f12, $f10
    /* E3F0C 800D4F5C AC4E0000 */  sw         $t6, 0x0($v0)
    /* E3F10 800D4F60 AC4F0004 */  sw         $t7, 0x4($v0)
    /* E3F14 800D4F64 00405025 */  or         $t2, $v0, $zero
    /* E3F18 800D4F68 8E220000 */  lw         $v0, 0x0($s1)
    /* E3F1C 800D4F6C 46802420 */  cvt.s.w    $f16, $f4
    /* E3F20 800D4F70 24040001 */  addiu      $a0, $zero, 0x1
    /* E3F24 800D4F74 24580008 */  addiu      $t8, $v0, 0x8
    /* E3F28 800D4F78 AE380000 */  sw         $t8, 0x0($s1)
    /* E3F2C 800D4F7C 3C0D0007 */  lui        $t5, (0x7C07C >> 16)
    /* E3F30 800D4F80 468043A0 */  cvt.s.w    $f14, $f8
    /* E3F34 800D4F84 35ADC07C */  ori        $t5, $t5, (0x7C07C & 0xFFFF)
    /* E3F38 800D4F88 3C19F200 */  lui        $t9, (0xF2000000 >> 16)
    /* E3F3C 800D4F8C AC590000 */  sw         $t9, 0x0($v0)
    /* E3F40 800D4F90 AC4D0004 */  sw         $t5, 0x4($v0)
    /* E3F44 800D4F94 8E220000 */  lw         $v0, 0x0($s1)
    /* E3F48 800D4F98 4458F800 */  cfc1       $t8, $31
    /* E3F4C 800D4F9C 44C4F800 */  ctc1       $a0, $31
    /* E3F50 800D4FA0 244E0008 */  addiu      $t6, $v0, 0x8
    /* E3F54 800D4FA4 AE2E0000 */  sw         $t6, 0x0($s1)
    /* E3F58 800D4FA8 460034A4 */  cvt.w.s    $f18, $f6
    /* E3F5C 800D4FAC 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* E3F60 800D4FB0 AC4F0000 */  sw         $t7, 0x0($v0)
    /* E3F64 800D4FB4 3C014F00 */  lui        $at, (0x4F000000 >> 16)
    /* E3F68 800D4FB8 4444F800 */  cfc1       $a0, $31
    /* E3F6C 800D4FBC 240F0096 */  addiu      $t7, $zero, 0x96
    /* E3F70 800D4FC0 AC400004 */  sw         $zero, 0x4($v0)
    /* E3F74 800D4FC4 30840078 */  andi       $a0, $a0, 0x78
    /* E3F78 800D4FC8 10800012 */  beqz       $a0, .L800D5014_E3FC4
    /* E3F7C 800D4FCC 00401825 */   or        $v1, $v0, $zero
    /* E3F80 800D4FD0 44819000 */  mtc1       $at, $f18
    /* E3F84 800D4FD4 24040001 */  addiu      $a0, $zero, 0x1
    /* E3F88 800D4FD8 46123481 */  sub.s      $f18, $f6, $f18
    /* E3F8C 800D4FDC 44C4F800 */  ctc1       $a0, $31
    /* E3F90 800D4FE0 00000000 */  nop
    /* E3F94 800D4FE4 460094A4 */  cvt.w.s    $f18, $f18
    /* E3F98 800D4FE8 4444F800 */  cfc1       $a0, $31
    /* E3F9C 800D4FEC 00000000 */  nop
    /* E3FA0 800D4FF0 30840078 */  andi       $a0, $a0, 0x78
    /* E3FA4 800D4FF4 14800005 */  bnez       $a0, .L800D500C_E3FBC
    /* E3FA8 800D4FF8 00000000 */   nop
    /* E3FAC 800D4FFC 44049000 */  mfc1       $a0, $f18
    /* E3FB0 800D5000 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* E3FB4 800D5004 10000007 */  b          .L800D5024_E3FD4
    /* E3FB8 800D5008 00812025 */   or        $a0, $a0, $at
  .L800D500C_E3FBC:
    /* E3FBC 800D500C 10000005 */  b          .L800D5024_E3FD4
    /* E3FC0 800D5010 2404FFFF */   addiu     $a0, $zero, -0x1
  .L800D5014_E3FC4:
    /* E3FC4 800D5014 44049000 */  mfc1       $a0, $f18
    /* E3FC8 800D5018 00000000 */  nop
    /* E3FCC 800D501C 0480FFFB */  bltz       $a0, .L800D500C_E3FBC
    /* E3FD0 800D5020 00000000 */   nop
  .L800D5024_E3FD4:
    /* E3FD4 800D5024 309900FF */  andi       $t9, $a0, 0xFF
    /* E3FD8 800D5028 44D8F800 */  ctc1       $t8, $31
    /* E3FDC 800D502C 2B21000A */  slti       $at, $t9, 0xA
    /* E3FE0 800D5030 14200002 */  bnez       $at, .L800D503C_E3FEC
    /* E3FE4 800D5034 308500FF */   andi      $a1, $a0, 0xFF
    /* E3FE8 800D5038 24050009 */  addiu      $a1, $zero, 0x9
  .L800D503C_E3FEC:
    /* E3FEC 800D503C 000540C0 */  sll        $t0, $a1, 3
    /* E3FF0 800D5040 2508000A */  addiu      $t0, $t0, 0xA
    /* E3FF4 800D5044 00086C00 */  sll        $t5, $t0, 16
    /* E3FF8 800D5048 000D7403 */  sra        $t6, $t5, 16
    /* E3FFC 800D504C 01C04025 */  or         $t0, $t6, $zero
    /* E4000 800D5050 18A000DD */  blez       $a1, .L800D53C8_E4378
    /* E4004 800D5054 00A05825 */   or        $t3, $a1, $zero
    /* E4008 800D5058 01E5001A */  div        $zero, $t7, $a1
    /* E400C 800D505C 00006012 */  mflo       $t4
    /* E4010 800D5060 00003825 */  or         $a3, $zero, $zero
    /* E4014 800D5064 15600002 */  bnez       $t3, .L800D5070_E4020
    /* E4018 800D5068 00000000 */   nop
    /* E401C 800D506C 0007000D */  break      7
  .L800D5070_E4020:
    /* E4020 800D5070 2401FFFF */  addiu      $at, $zero, -0x1
    /* E4024 800D5074 15610004 */  bne        $t3, $at, .L800D5088_E4038
    /* E4028 800D5078 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E402C 800D507C 15E10002 */  bne        $t7, $at, .L800D5088_E4038
    /* E4030 800D5080 00000000 */   nop
    /* E4034 800D5084 0006000D */  break      6
  .L800D5088_E4038:
    /* E4038 800D5088 00F7001A */  div        $zero, $a3, $s7
    /* E403C 800D508C 44883000 */  mtc1       $t0, $f6
    /* E4040 800D5090 C7AA00F0 */  lwc1       $f10, 0xF0($sp)
    /* E4044 800D5094 C7B200E4 */  lwc1       $f18, 0xE4($sp)
    /* E4048 800D5098 468030A0 */  cvt.s.w    $f2, $f6
    /* E404C 800D509C 0000C010 */  mfhi       $t8
    /* E4050 800D50A0 331900FF */  andi       $t9, $t8, 0xFF
    /* E4054 800D50A4 C7A400F4 */  lwc1       $f4, 0xF4($sp)
    /* E4058 800D50A8 033E0019 */  multu      $t9, $fp
    /* E405C 800D50AC 460A6301 */  sub.s      $f12, $f12, $f10
    /* E4060 800D50B0 46121282 */  mul.s      $f10, $f2, $f18
    /* E4064 800D50B4 C7A800F8 */  lwc1       $f8, 0xF8($sp)
    /* E4068 800D50B8 46048401 */  sub.s      $f16, $f16, $f4
    /* E406C 800D50BC 8E180000 */  lw         $t8, 0x0($s0)
    /* E4070 800D50C0 2508FFF8 */  addiu      $t0, $t0, -0x8
    /* E4074 800D50C4 46087381 */  sub.s      $f14, $f14, $f8
    /* E4078 800D50C8 26520001 */  addiu      $s2, $s2, 0x1
    /* E407C 800D50CC 460C5100 */  add.s      $f4, $f10, $f12
    /* E4080 800D50D0 00006812 */  mflo       $t5
    /* E4084 800D50D4 02CD1021 */  addu       $v0, $s6, $t5
    /* E4088 800D50D8 46101180 */  add.s      $f6, $f2, $f16
    /* E408C 800D50DC 90430000 */  lbu        $v1, 0x0($v0)
    /* E4090 800D50E0 90440001 */  lbu        $a0, 0x1($v0)
    /* E4094 800D50E4 4600220D */  trunc.w.s  $f8, $f4
    /* E4098 800D50E8 90450002 */  lbu        $a1, 0x2($v0)
    /* E409C 800D50EC 00EC0019 */  multu      $a3, $t4
    /* E40A0 800D50F0 4600348D */  trunc.w.s  $f18, $f6
    /* E40A4 800D50F4 440F4000 */  mfc1       $t7, $f8
    /* E40A8 800D50F8 4600A500 */  add.s      $f20, $f20, $f0
    /* E40AC 800D50FC A70F0000 */  sh         $t7, 0x0($t8)
    /* E40B0 800D5100 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E40B4 800D5104 44099000 */  mfc1       $t1, $f18
    /* E40B8 800D5108 16E00002 */  bnez       $s7, .L800D5114_E40C4
    /* E40BC 800D510C 00000000 */   nop
    /* E40C0 800D5110 0007000D */  break      7
  .L800D5114_E40C4:
    /* E40C4 800D5114 2401FFFF */  addiu      $at, $zero, -0x1
    /* E40C8 800D5118 16E10004 */  bne        $s7, $at, .L800D512C_E40DC
    /* E40CC 800D511C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E40D0 800D5120 14E10002 */  bne        $a3, $at, .L800D512C_E40DC
    /* E40D4 800D5124 00000000 */   nop
    /* E40D8 800D5128 0006000D */  break      6
  .L800D512C_E40DC:
    /* E40DC 800D512C A5A90002 */  sh         $t1, 0x2($t5)
    /* E40E0 800D5130 C7AA00EC */  lwc1       $f10, 0xEC($sp)
    /* E40E4 800D5134 8E180000 */  lw         $t8, 0x0($s0)
    /* E40E8 800D5138 00003012 */  mflo       $a2
    /* E40EC 800D513C 460A1102 */  mul.s      $f4, $f2, $f10
    /* E40F0 800D5140 24C60064 */  addiu      $a2, $a2, 0x64
    /* E40F4 800D5144 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* E40F8 800D5148 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* E40FC 800D514C 460E2200 */  add.s      $f8, $f4, $f14
    /* E4100 800D5150 4600418D */  trunc.w.s  $f6, $f8
    /* E4104 800D5154 440F3000 */  mfc1       $t7, $f6
    /* E4108 800D5158 00000000 */  nop
    /* E410C 800D515C A70F0004 */  sh         $t7, 0x4($t8)
    /* E4110 800D5160 8E190000 */  lw         $t9, 0x0($s0)
    /* E4114 800D5164 A7200006 */  sh         $zero, 0x6($t9)
    /* E4118 800D5168 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E411C 800D516C A5A00008 */  sh         $zero, 0x8($t5)
    /* E4120 800D5170 8E0E0000 */  lw         $t6, 0x0($s0)
    /* E4124 800D5174 30CD00FF */  andi       $t5, $a2, 0xFF
    /* E4128 800D5178 01A03025 */  or         $a2, $t5, $zero
    /* E412C 800D517C A5C0000A */  sh         $zero, 0xA($t6)
    /* E4130 800D5180 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E4134 800D5184 A1E3000C */  sb         $v1, 0xC($t7)
    /* E4138 800D5188 8E180000 */  lw         $t8, 0x0($s0)
    /* E413C 800D518C A304000D */  sb         $a0, 0xD($t8)
    /* E4140 800D5190 8E190000 */  lw         $t9, 0x0($s0)
    /* E4144 800D5194 A325000E */  sb         $a1, 0xE($t9)
    /* E4148 800D5198 8E0E0000 */  lw         $t6, 0x0($s0)
    /* E414C 800D519C A1CD000F */  sb         $t5, 0xF($t6)
    /* E4150 800D51A0 C7B200E4 */  lwc1       $f18, 0xE4($sp)
    /* E4154 800D51A4 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E4158 800D51A8 46121282 */  mul.s      $f10, $f2, $f18
    /* E415C 800D51AC 25F80010 */  addiu      $t8, $t7, 0x10
    /* E4160 800D51B0 AE180000 */  sw         $t8, 0x0($s0)
    /* E4164 800D51B4 460A6101 */  sub.s      $f4, $f12, $f10
    /* E4168 800D51B8 4600220D */  trunc.w.s  $f8, $f4
    /* E416C 800D51BC 440D4000 */  mfc1       $t5, $f8
    /* E4170 800D51C0 00000000 */  nop
    /* E4174 800D51C4 A70D0000 */  sh         $t5, 0x0($t8)
    /* E4178 800D51C8 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E417C 800D51CC A5E90002 */  sh         $t1, 0x2($t7)
    /* E4180 800D51D0 C7A600EC */  lwc1       $f6, 0xEC($sp)
    /* E4184 800D51D4 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E4188 800D51D8 46061482 */  mul.s      $f18, $f2, $f6
    /* E418C 800D51DC 46127281 */  sub.s      $f10, $f14, $f18
    /* E4190 800D51E0 4600510D */  trunc.w.s  $f4, $f10
    /* E4194 800D51E4 44192000 */  mfc1       $t9, $f4
    /* E4198 800D51E8 46028101 */  sub.s      $f4, $f16, $f2
    /* E419C 800D51EC A5B90004 */  sh         $t9, 0x4($t5)
    /* E41A0 800D51F0 8E0E0000 */  lw         $t6, 0x0($s0)
    /* E41A4 800D51F4 A5C00006 */  sh         $zero, 0x6($t6)
    /* E41A8 800D51F8 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E41AC 800D51FC A5F30008 */  sh         $s3, 0x8($t7)
    /* E41B0 800D5200 8E180000 */  lw         $t8, 0x0($s0)
    /* E41B4 800D5204 A700000A */  sh         $zero, 0xA($t8)
    /* E41B8 800D5208 8E190000 */  lw         $t9, 0x0($s0)
    /* E41BC 800D520C A323000C */  sb         $v1, 0xC($t9)
    /* E41C0 800D5210 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E41C4 800D5214 A1A4000D */  sb         $a0, 0xD($t5)
    /* E41C8 800D5218 8E0E0000 */  lw         $t6, 0x0($s0)
    /* E41CC 800D521C A1C5000E */  sb         $a1, 0xE($t6)
    /* E41D0 800D5220 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E41D4 800D5224 A1E6000F */  sb         $a2, 0xF($t7)
    /* E41D8 800D5228 C7A800E4 */  lwc1       $f8, 0xE4($sp)
    /* E41DC 800D522C 8E180000 */  lw         $t8, 0x0($s0)
    /* E41E0 800D5230 46081182 */  mul.s      $f6, $f2, $f8
    /* E41E4 800D5234 4600220D */  trunc.w.s  $f8, $f4
    /* E41E8 800D5238 27190010 */  addiu      $t9, $t8, 0x10
    /* E41EC 800D523C AE190000 */  sw         $t9, 0x0($s0)
    /* E41F0 800D5240 440A4000 */  mfc1       $t2, $f8
    /* E41F4 800D5244 46066481 */  sub.s      $f18, $f12, $f6
    /* E41F8 800D5248 4600928D */  trunc.w.s  $f10, $f18
    /* E41FC 800D524C 440E5000 */  mfc1       $t6, $f10
    /* E4200 800D5250 00000000 */  nop
    /* E4204 800D5254 A72E0000 */  sh         $t6, 0x0($t9)
    /* E4208 800D5258 8E190000 */  lw         $t9, 0x0($s0)
    /* E420C 800D525C A72A0002 */  sh         $t2, 0x2($t9)
    /* E4210 800D5260 C7A600EC */  lwc1       $f6, 0xEC($sp)
    /* E4214 800D5264 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E4218 800D5268 46061482 */  mul.s      $f18, $f2, $f6
    /* E421C 800D526C 46127281 */  sub.s      $f10, $f14, $f18
    /* E4220 800D5270 4600510D */  trunc.w.s  $f4, $f10
    /* E4224 800D5274 440E2000 */  mfc1       $t6, $f4
    /* E4228 800D5278 00000000 */  nop
    /* E422C 800D527C A5EE0004 */  sh         $t6, 0x4($t7)
    /* E4230 800D5280 8E180000 */  lw         $t8, 0x0($s0)
    /* E4234 800D5284 A7000006 */  sh         $zero, 0x6($t8)
    /* E4238 800D5288 8E190000 */  lw         $t9, 0x0($s0)
    /* E423C 800D528C A7330008 */  sh         $s3, 0x8($t9)
    /* E4240 800D5290 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E4244 800D5294 A5B3000A */  sh         $s3, 0xA($t5)
    /* E4248 800D5298 8E0E0000 */  lw         $t6, 0x0($s0)
    /* E424C 800D529C A1C3000C */  sb         $v1, 0xC($t6)
    /* E4250 800D52A0 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E4254 800D52A4 A1E4000D */  sb         $a0, 0xD($t7)
    /* E4258 800D52A8 8E180000 */  lw         $t8, 0x0($s0)
    /* E425C 800D52AC A305000E */  sb         $a1, 0xE($t8)
    /* E4260 800D52B0 8E190000 */  lw         $t9, 0x0($s0)
    /* E4264 800D52B4 A326000F */  sb         $a2, 0xF($t9)
    /* E4268 800D52B8 C7A800E4 */  lwc1       $f8, 0xE4($sp)
    /* E426C 800D52BC 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E4270 800D52C0 46081182 */  mul.s      $f6, $f2, $f8
    /* E4274 800D52C4 25AE0010 */  addiu      $t6, $t5, 0x10
    /* E4278 800D52C8 AE0E0000 */  sw         $t6, 0x0($s0)
    /* E427C 800D52CC 460C3480 */  add.s      $f18, $f6, $f12
    /* E4280 800D52D0 4600928D */  trunc.w.s  $f10, $f18
    /* E4284 800D52D4 44185000 */  mfc1       $t8, $f10
    /* E4288 800D52D8 00000000 */  nop
    /* E428C 800D52DC A5D80000 */  sh         $t8, 0x0($t6)
    /* E4290 800D52E0 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E4294 800D52E4 A5AA0002 */  sh         $t2, 0x2($t5)
    /* E4298 800D52E8 C7A400EC */  lwc1       $f4, 0xEC($sp)
    /* E429C 800D52EC 8E180000 */  lw         $t8, 0x0($s0)
    /* E42A0 800D52F0 46041202 */  mul.s      $f8, $f2, $f4
    /* E42A4 800D52F4 460E4180 */  add.s      $f6, $f8, $f14
    /* E42A8 800D52F8 4600348D */  trunc.w.s  $f18, $f6
    /* E42AC 800D52FC 440F9000 */  mfc1       $t7, $f18
    /* E42B0 800D5300 00000000 */  nop
    /* E42B4 800D5304 A70F0004 */  sh         $t7, 0x4($t8)
    /* E42B8 800D5308 8E190000 */  lw         $t9, 0x0($s0)
    /* E42BC 800D530C A7200006 */  sh         $zero, 0x6($t9)
    /* E42C0 800D5310 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E42C4 800D5314 A5A00008 */  sh         $zero, 0x8($t5)
    /* E42C8 800D5318 8E0E0000 */  lw         $t6, 0x0($s0)
    /* E42CC 800D531C A5D3000A */  sh         $s3, 0xA($t6)
    /* E42D0 800D5320 8E0F0000 */  lw         $t7, 0x0($s0)
    /* E42D4 800D5324 A1E3000C */  sb         $v1, 0xC($t7)
    /* E42D8 800D5328 8E180000 */  lw         $t8, 0x0($s0)
    /* E42DC 800D532C A304000D */  sb         $a0, 0xD($t8)
    /* E42E0 800D5330 8E190000 */  lw         $t9, 0x0($s0)
    /* E42E4 800D5334 A325000E */  sb         $a1, 0xE($t9)
    /* E42E8 800D5338 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E42EC 800D533C 3C190400 */  lui        $t9, (0x400103F >> 16)
    /* E42F0 800D5340 3739103F */  ori        $t9, $t9, (0x400103F & 0xFFFF)
    /* E42F4 800D5344 A1A6000F */  sb         $a2, 0xF($t5)
    /* E42F8 800D5348 8E0E0000 */  lw         $t6, 0x0($s0)
    /* E42FC 800D534C 8E220000 */  lw         $v0, 0x0($s1)
    /* E4300 800D5350 25CF0010 */  addiu      $t7, $t6, 0x10
    /* E4304 800D5354 24580008 */  addiu      $t8, $v0, 0x8
    /* E4308 800D5358 AE0F0000 */  sw         $t7, 0x0($s0)
    /* E430C 800D535C AE380000 */  sw         $t8, 0x0($s1)
    /* E4310 800D5360 AC590000 */  sw         $t9, 0x0($v0)
    /* E4314 800D5364 8E0D0000 */  lw         $t5, 0x0($s0)
    /* E4318 800D5368 00403825 */  or         $a3, $v0, $zero
    /* E431C 800D536C 3C19B100 */  lui        $t9, (0xB1000206 >> 16)
    /* E4320 800D5370 25AEFFC0 */  addiu      $t6, $t5, -0x40
    /* E4324 800D5374 01C17824 */  and        $t7, $t6, $at
    /* E4328 800D5378 AC4F0004 */  sw         $t7, 0x4($v0)
    /* E432C 800D537C 8E220000 */  lw         $v0, 0x0($s1)
    /* E4330 800D5380 3C0D0004 */  lui        $t5, (0x40602 >> 16)
    /* E4334 800D5384 00087400 */  sll        $t6, $t0, 16
    /* E4338 800D5388 24580008 */  addiu      $t8, $v0, 0x8
    /* E433C 800D538C AE380000 */  sw         $t8, 0x0($s1)
    /* E4340 800D5390 35AD0602 */  ori        $t5, $t5, (0x40602 & 0xFFFF)
    /* E4344 800D5394 37390206 */  ori        $t9, $t9, (0xB1000206 & 0xFFFF)
    /* E4348 800D5398 000E7C03 */  sra        $t7, $t6, 16
    /* E434C 800D539C 01E04025 */  or         $t0, $t7, $zero
    /* E4350 800D53A0 AC590000 */  sw         $t9, 0x0($v0)
    /* E4354 800D53A4 AC4D0004 */  sw         $t5, 0x4($v0)
    /* E4358 800D53A8 1DE00002 */  bgtz       $t7, .L800D53B4_E4364
    /* E435C 800D53AC 00401825 */   or        $v1, $v0, $zero
    /* E4360 800D53B0 24080001 */  addiu      $t0, $zero, 0x1
  .L800D53B4_E4364:
    /* E4364 800D53B4 325800FF */  andi       $t8, $s2, 0xFF
    /* E4368 800D53B8 030B082A */  slt        $at, $t8, $t3
    /* E436C 800D53BC 03009025 */  or         $s2, $t8, $zero
    /* E4370 800D53C0 1420FF31 */  bnez       $at, .L800D5088_E4038
    /* E4374 800D53C4 03003825 */   or        $a3, $t8, $zero
  .L800D53C8_E4378:
    /* E4378 800D53C8 86A20004 */  lh         $v0, 0x4($s5)
  .L800D53CC_E437C:
    /* E437C 800D53CC 2401FFFB */  addiu      $at, $zero, -0x5
    /* E4380 800D53D0 10410003 */  beq        $v0, $at, .L800D53E0_E4390
    /* E4384 800D53D4 2401FFFA */   addiu     $at, $zero, -0x6
    /* E4388 800D53D8 5441FE34 */  bnel       $v0, $at, .L800D4CAC_E3C5C
    /* E438C 800D53DC 000270C0 */   sll       $t6, $v0, 3
  .L800D53E0_E4390:
    /* E4390 800D53E0 8FBF0064 */  lw         $ra, 0x64($sp)
    /* E4394 800D53E4 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* E4398 800D53E8 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* E439C 800D53EC D7B80028 */  ldc1       $f24, 0x28($sp)
    /* E43A0 800D53F0 D7BA0030 */  ldc1       $f26, 0x30($sp)
    /* E43A4 800D53F4 D7BC0038 */  ldc1       $f28, 0x38($sp)
    /* E43A8 800D53F8 8FB00040 */  lw         $s0, 0x40($sp)
    /* E43AC 800D53FC 8FB10044 */  lw         $s1, 0x44($sp)
    /* E43B0 800D5400 8FB20048 */  lw         $s2, 0x48($sp)
    /* E43B4 800D5404 8FB3004C */  lw         $s3, 0x4C($sp)
    /* E43B8 800D5408 8FB40050 */  lw         $s4, 0x50($sp)
    /* E43BC 800D540C 8FB50054 */  lw         $s5, 0x54($sp)
    /* E43C0 800D5410 8FB60058 */  lw         $s6, 0x58($sp)
    /* E43C4 800D5414 8FB7005C */  lw         $s7, 0x5C($sp)
    /* E43C8 800D5418 8FBE0060 */  lw         $fp, 0x60($sp)
    /* E43CC 800D541C 03E00008 */  jr         $ra
    /* E43D0 800D5420 27BD0108 */   addiu     $sp, $sp, 0x108
endlabel func_800D4C10_E3BC0
