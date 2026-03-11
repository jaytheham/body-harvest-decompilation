nonmatching func_800D1C24_E0BD4, 0x878

glabel func_800D1C24_E0BD4
    /* E0BD4 800D1C24 27BDFF00 */  addiu      $sp, $sp, -0x100
    /* E0BD8 800D1C28 AFB20050 */  sw         $s2, 0x50($sp)
    /* E0BDC 800D1C2C 3C128006 */  lui        $s2, %hi(D_8005BB2C)
    /* E0BE0 800D1C30 2652BB2C */  addiu      $s2, $s2, %lo(D_8005BB2C)
    /* E0BE4 800D1C34 AFB00048 */  sw         $s0, 0x48($sp)
    /* E0BE8 800D1C38 308E00FF */  andi       $t6, $a0, 0xFF
    /* E0BEC 800D1C3C 8E500000 */  lw         $s0, 0x0($s2)
    /* E0BF0 800D1C40 000E7880 */  sll        $t7, $t6, 2
    /* E0BF4 800D1C44 01EE7823 */  subu       $t7, $t7, $t6
    /* E0BF8 800D1C48 3C188015 */  lui        $t8, %hi(D_80154088)
    /* E0BFC 800D1C4C 27184088 */  addiu      $t8, $t8, %lo(D_80154088)
    /* E0C00 800D1C50 000F7880 */  sll        $t7, $t7, 2
    /* E0C04 800D1C54 AFB30054 */  sw         $s3, 0x54($sp)
    /* E0C08 800D1C58 01F83821 */  addu       $a3, $t7, $t8
    /* E0C0C 800D1C5C 26190008 */  addiu      $t9, $s0, 0x8
    /* E0C10 800D1C60 AFBF006C */  sw         $ra, 0x6C($sp)
    /* E0C14 800D1C64 AFBE0068 */  sw         $fp, 0x68($sp)
    /* E0C18 800D1C68 AFB70064 */  sw         $s7, 0x64($sp)
    /* E0C1C 800D1C6C AFB60060 */  sw         $s6, 0x60($sp)
    /* E0C20 800D1C70 AFB5005C */  sw         $s5, 0x5C($sp)
    /* E0C24 800D1C74 AFB40058 */  sw         $s4, 0x58($sp)
    /* E0C28 800D1C78 AFB1004C */  sw         $s1, 0x4C($sp)
    /* E0C2C 800D1C7C F7BE0040 */  sdc1       $f30, 0x40($sp)
    /* E0C30 800D1C80 F7BC0038 */  sdc1       $f28, 0x38($sp)
    /* E0C34 800D1C84 F7BA0030 */  sdc1       $f26, 0x30($sp)
    /* E0C38 800D1C88 F7B80028 */  sdc1       $f24, 0x28($sp)
    /* E0C3C 800D1C8C F7B60020 */  sdc1       $f22, 0x20($sp)
    /* E0C40 800D1C90 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* E0C44 800D1C94 AFA40100 */  sw         $a0, 0x100($sp)
    /* E0C48 800D1C98 84F30006 */  lh         $s3, 0x6($a3)
    /* E0C4C 800D1C9C AE590000 */  sw         $t9, 0x0($s2)
    /* E0C50 800D1CA0 3C06E700 */  lui        $a2, (0xE7000000 >> 16)
    /* E0C54 800D1CA4 AE060000 */  sw         $a2, 0x0($s0)
    /* E0C58 800D1CA8 AE000004 */  sw         $zero, 0x4($s0)
    /* E0C5C 800D1CAC 8E500000 */  lw         $s0, 0x0($s2)
    /* E0C60 800D1CB0 3C0CFCFF */  lui        $t4, (0xFCFF99FF >> 16)
    /* E0C64 800D1CB4 3C0DFF32 */  lui        $t5, (0xFF327F3F >> 16)
    /* E0C68 800D1CB8 260B0008 */  addiu      $t3, $s0, 0x8
    /* E0C6C 800D1CBC AE4B0000 */  sw         $t3, 0x0($s2)
    /* E0C70 800D1CC0 35AD7F3F */  ori        $t5, $t5, (0xFF327F3F & 0xFFFF)
    /* E0C74 800D1CC4 358C99FF */  ori        $t4, $t4, (0xFCFF99FF & 0xFFFF)
    /* E0C78 800D1CC8 AE0C0000 */  sw         $t4, 0x0($s0)
    /* E0C7C 800D1CCC AE0D0004 */  sw         $t5, 0x4($s0)
    /* E0C80 800D1CD0 8E500000 */  lw         $s0, 0x0($s2)
    /* E0C84 800D1CD4 260E0008 */  addiu      $t6, $s0, 0x8
    /* E0C88 800D1CD8 AE4E0000 */  sw         $t6, 0x0($s2)
    /* E0C8C 800D1CDC AE000004 */  sw         $zero, 0x4($s0)
    /* E0C90 800D1CE0 AE060000 */  sw         $a2, 0x0($s0)
    /* E0C94 800D1CE4 0C000E38 */  jal        func_800038E0_44E0
    /* E0C98 800D1CE8 AFA70074 */   sw        $a3, 0x74($sp)
    /* E0C9C 800D1CEC 24010006 */  addiu      $at, $zero, 0x6
    /* E0CA0 800D1CF0 0041001A */  div        $zero, $v0, $at
    /* E0CA4 800D1CF4 00001810 */  mfhi       $v1
    /* E0CA8 800D1CF8 306F00FF */  andi       $t7, $v1, 0xFF
    /* E0CAC 800D1CFC 24010001 */  addiu      $at, $zero, 0x1
    /* E0CB0 800D1D00 15E10006 */  bne        $t7, $at, .L800D1D1C_E0CCC
    /* E0CB4 800D1D04 01E01825 */   or        $v1, $t7, $zero
    /* E0CB8 800D1D08 241800C8 */  addiu      $t8, $zero, 0xC8
    /* E0CBC 800D1D0C 241700C8 */  addiu      $s7, $zero, 0xC8
    /* E0CC0 800D1D10 241E00FF */  addiu      $fp, $zero, 0xFF
    /* E0CC4 800D1D14 1000000C */  b          .L800D1D48_E0CF8
    /* E0CC8 800D1D18 A3B800BC */   sb        $t8, 0xBC($sp)
  .L800D1D1C_E0CCC:
    /* E0CCC 800D1D1C 24010002 */  addiu      $at, $zero, 0x2
    /* E0CD0 800D1D20 14610006 */  bne        $v1, $at, .L800D1D3C_E0CEC
    /* E0CD4 800D1D24 241700FF */   addiu     $s7, $zero, 0xFF
    /* E0CD8 800D1D28 241900FF */  addiu      $t9, $zero, 0xFF
    /* E0CDC 800D1D2C 241700C8 */  addiu      $s7, $zero, 0xC8
    /* E0CE0 800D1D30 241E00C8 */  addiu      $fp, $zero, 0xC8
    /* E0CE4 800D1D34 10000004 */  b          .L800D1D48_E0CF8
    /* E0CE8 800D1D38 A3B900BC */   sb        $t9, 0xBC($sp)
  .L800D1D3C_E0CEC:
    /* E0CEC 800D1D3C 240B00FF */  addiu      $t3, $zero, 0xFF
    /* E0CF0 800D1D40 241E00FF */  addiu      $fp, $zero, 0xFF
    /* E0CF4 800D1D44 A3AB00BC */  sb         $t3, 0xBC($sp)
  .L800D1D48_E0CF8:
    /* E0CF8 800D1D48 2401FFFB */  addiu      $at, $zero, -0x5
    /* E0CFC 800D1D4C 1261000A */  beq        $s3, $at, .L800D1D78_E0D28
    /* E0D00 800D1D50 24160800 */   addiu     $s6, $zero, 0x800
    /* E0D04 800D1D54 2401FFFA */  addiu      $at, $zero, -0x6
    /* E0D08 800D1D58 12610007 */  beq        $s3, $at, .L800D1D78_E0D28
    /* E0D0C 800D1D5C 001360C0 */   sll       $t4, $s3, 3
    /* E0D10 800D1D60 01936023 */  subu       $t4, $t4, $s3
    /* E0D14 800D1D64 000C6080 */  sll        $t4, $t4, 2
    /* E0D18 800D1D68 3C0D8015 */  lui        $t5, %hi(D_80154327)
    /* E0D1C 800D1D6C 01AC6821 */  addu       $t5, $t5, $t4
    /* E0D20 800D1D70 91AD4327 */  lbu        $t5, %lo(D_80154327)($t5)
    /* E0D24 800D1D74 AFAD00B8 */  sw         $t5, 0xB8($sp)
  .L800D1D78_E0D28:
    /* E0D28 800D1D78 8FAE00B8 */  lw         $t6, 0xB8($sp)
    /* E0D2C 800D1D7C C7BE00EC */  lwc1       $f30, 0xEC($sp)
    /* E0D30 800D1D80 C7B800F4 */  lwc1       $f24, 0xF4($sp)
    /* E0D34 800D1D84 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* E0D38 800D1D88 11C001B2 */  beqz       $t6, .L800D2454_E1404
    /* E0D3C 800D1D8C AFAF00B8 */   sw        $t7, 0xB8($sp)
    /* E0D40 800D1D90 3C118006 */  lui        $s1, %hi(D_8005BB34)
    /* E0D44 800D1D94 2631BB34 */  addiu      $s1, $s1, %lo(D_8005BB34)
    /* E0D48 800D1D98 C7B600F8 */  lwc1       $f22, 0xF8($sp)
    /* E0D4C 800D1D9C C7B200E4 */  lwc1       $f18, 0xE4($sp)
    /* E0D50 800D1DA0 C7B000F0 */  lwc1       $f16, 0xF0($sp)
    /* E0D54 800D1DA4 C7AE00E8 */  lwc1       $f14, 0xE8($sp)
    /* E0D58 800D1DA8 241500FF */  addiu      $s5, $zero, 0xFF
  .L800D1DAC_E0D5C:
    /* E0D5C 800D1DAC 8FB80074 */  lw         $t8, 0x74($sp)
    /* E0D60 800D1DB0 2401FFFB */  addiu      $at, $zero, -0x5
    /* E0D64 800D1DB4 87130006 */  lh         $s3, 0x6($t8)
    /* E0D68 800D1DB8 1261005A */  beq        $s3, $at, .L800D1F24_E0ED4
    /* E0D6C 800D1DBC 2401FFFA */   addiu     $at, $zero, -0x6
    /* E0D70 800D1DC0 52610059 */  beql       $s3, $at, .L800D1F28_E0ED8
    /* E0D74 800D1DC4 2401FFFB */   addiu     $at, $zero, -0x5
    /* E0D78 800D1DC8 0C000E38 */  jal        func_800038E0_44E0
    /* E0D7C 800D1DCC 00000000 */   nop
    /* E0D80 800D1DD0 24010005 */  addiu      $at, $zero, 0x5
    /* E0D84 800D1DD4 0041001A */  div        $zero, $v0, $at
    /* E0D88 800D1DD8 0000C810 */  mfhi       $t9
    /* E0D8C 800D1DDC 00195880 */  sll        $t3, $t9, 2
    /* E0D90 800D1DE0 256C0014 */  addiu      $t4, $t3, 0x14
    /* E0D94 800D1DE4 448C2000 */  mtc1       $t4, $f4
    /* E0D98 800D1DE8 0C000E38 */  jal        func_800038E0_44E0
    /* E0D9C 800D1DEC 46802520 */   cvt.s.w   $f20, $f4
    /* E0DA0 800D1DF0 2401000B */  addiu      $at, $zero, 0xB
    /* E0DA4 800D1DF4 0041001A */  div        $zero, $v0, $at
    /* E0DA8 800D1DF8 00006810 */  mfhi       $t5
    /* E0DAC 800D1DFC 29A10006 */  slti       $at, $t5, 0x6
    /* E0DB0 800D1E00 10200004 */  beqz       $at, .L800D1E14_E0DC4
    /* E0DB4 800D1E04 001370C0 */   sll       $t6, $s3, 3
    /* E0DB8 800D1E08 44803000 */  mtc1       $zero, $f6
    /* E0DBC 800D1E0C 00000000 */  nop
    /* E0DC0 800D1E10 46143501 */  sub.s      $f20, $f6, $f20
  .L800D1E14_E0DC4:
    /* E0DC4 800D1E14 01D37023 */  subu       $t6, $t6, $s3
    /* E0DC8 800D1E18 000E7080 */  sll        $t6, $t6, 2
    /* E0DCC 800D1E1C 3C188015 */  lui        $t8, %hi(D_80154318)
    /* E0DD0 800D1E20 27184318 */  addiu      $t8, $t8, %lo(D_80154318)
    /* E0DD4 800D1E24 25CF0008 */  addiu      $t7, $t6, 0x8
    /* E0DD8 800D1E28 01F88021 */  addu       $s0, $t7, $t8
    /* E0DDC 800D1E2C 86190000 */  lh         $t9, 0x0($s0)
    /* E0DE0 800D1E30 44994000 */  mtc1       $t9, $f8
    /* E0DE4 800D1E34 00000000 */  nop
    /* E0DE8 800D1E38 46804020 */  cvt.s.w    $f0, $f8
    /* E0DEC 800D1E3C 46140400 */  add.s      $f16, $f0, $f20
    /* E0DF0 800D1E40 46140481 */  sub.s      $f18, $f0, $f20
    /* E0DF4 800D1E44 E7B000F0 */  swc1       $f16, 0xF0($sp)
    /* E0DF8 800D1E48 0C000E38 */  jal        func_800038E0_44E0
    /* E0DFC 800D1E4C E7B200E4 */   swc1      $f18, 0xE4($sp)
    /* E0E00 800D1E50 24010005 */  addiu      $at, $zero, 0x5
    /* E0E04 800D1E54 0041001A */  div        $zero, $v0, $at
    /* E0E08 800D1E58 00005810 */  mfhi       $t3
    /* E0E0C 800D1E5C 000B6080 */  sll        $t4, $t3, 2
    /* E0E10 800D1E60 258D0014 */  addiu      $t5, $t4, 0x14
    /* E0E14 800D1E64 448D5000 */  mtc1       $t5, $f10
    /* E0E18 800D1E68 0C000E38 */  jal        func_800038E0_44E0
    /* E0E1C 800D1E6C 46805520 */   cvt.s.w   $f20, $f10
    /* E0E20 800D1E70 2401000B */  addiu      $at, $zero, 0xB
    /* E0E24 800D1E74 0041001A */  div        $zero, $v0, $at
    /* E0E28 800D1E78 00007010 */  mfhi       $t6
    /* E0E2C 800D1E7C 29C10006 */  slti       $at, $t6, 0x6
    /* E0E30 800D1E80 C7B000F0 */  lwc1       $f16, 0xF0($sp)
    /* E0E34 800D1E84 10200004 */  beqz       $at, .L800D1E98_E0E48
    /* E0E38 800D1E88 C7B200E4 */   lwc1      $f18, 0xE4($sp)
    /* E0E3C 800D1E8C 44802000 */  mtc1       $zero, $f4
    /* E0E40 800D1E90 00000000 */  nop
    /* E0E44 800D1E94 46142501 */  sub.s      $f20, $f4, $f20
  .L800D1E98_E0E48:
    /* E0E48 800D1E98 860F0002 */  lh         $t7, 0x2($s0)
    /* E0E4C 800D1E9C E7B200E4 */  swc1       $f18, 0xE4($sp)
    /* E0E50 800D1EA0 E7B000F0 */  swc1       $f16, 0xF0($sp)
    /* E0E54 800D1EA4 448F3000 */  mtc1       $t7, $f6
    /* E0E58 800D1EA8 00000000 */  nop
    /* E0E5C 800D1EAC 46803020 */  cvt.s.w    $f0, $f6
    /* E0E60 800D1EB0 46140381 */  sub.s      $f14, $f0, $f20
    /* E0E64 800D1EB4 46140600 */  add.s      $f24, $f0, $f20
    /* E0E68 800D1EB8 0C000E38 */  jal        func_800038E0_44E0
    /* E0E6C 800D1EBC E7AE00E8 */   swc1      $f14, 0xE8($sp)
    /* E0E70 800D1EC0 24010005 */  addiu      $at, $zero, 0x5
    /* E0E74 800D1EC4 0041001A */  div        $zero, $v0, $at
    /* E0E78 800D1EC8 0000C010 */  mfhi       $t8
    /* E0E7C 800D1ECC 0018C880 */  sll        $t9, $t8, 2
    /* E0E80 800D1ED0 272B0014 */  addiu      $t3, $t9, 0x14
    /* E0E84 800D1ED4 448B4000 */  mtc1       $t3, $f8
    /* E0E88 800D1ED8 0C000E38 */  jal        func_800038E0_44E0
    /* E0E8C 800D1EDC 46804520 */   cvt.s.w   $f20, $f8
    /* E0E90 800D1EE0 2401000B */  addiu      $at, $zero, 0xB
    /* E0E94 800D1EE4 0041001A */  div        $zero, $v0, $at
    /* E0E98 800D1EE8 00006010 */  mfhi       $t4
    /* E0E9C 800D1EEC 29810006 */  slti       $at, $t4, 0x6
    /* E0EA0 800D1EF0 C7AE00E8 */  lwc1       $f14, 0xE8($sp)
    /* E0EA4 800D1EF4 C7B000F0 */  lwc1       $f16, 0xF0($sp)
    /* E0EA8 800D1EF8 10200004 */  beqz       $at, .L800D1F0C_E0EBC
    /* E0EAC 800D1EFC C7B200E4 */   lwc1      $f18, 0xE4($sp)
    /* E0EB0 800D1F00 44805000 */  mtc1       $zero, $f10
    /* E0EB4 800D1F04 00000000 */  nop
    /* E0EB8 800D1F08 46145501 */  sub.s      $f20, $f10, $f20
  .L800D1F0C_E0EBC:
    /* E0EBC 800D1F0C 860D0004 */  lh         $t5, 0x4($s0)
    /* E0EC0 800D1F10 448D2000 */  mtc1       $t5, $f4
    /* E0EC4 800D1F14 00000000 */  nop
    /* E0EC8 800D1F18 46802020 */  cvt.s.w    $f0, $f4
    /* E0ECC 800D1F1C 46140580 */  add.s      $f22, $f0, $f20
    /* E0ED0 800D1F20 46140781 */  sub.s      $f30, $f0, $f20
  .L800D1F24_E0ED4:
    /* E0ED4 800D1F24 2401FFFB */  addiu      $at, $zero, -0x5
  .L800D1F28_E0ED8:
    /* E0ED8 800D1F28 12610140 */  beq        $s3, $at, .L800D242C_E13DC
    /* E0EDC 800D1F2C 2401FFFA */   addiu     $at, $zero, -0x6
    /* E0EE0 800D1F30 1261013E */  beq        $s3, $at, .L800D242C_E13DC
    /* E0EE4 800D1F34 001370C0 */   sll       $t6, $s3, 3
  .L800D1F38_E0EE8:
    /* E0EE8 800D1F38 01D37023 */  subu       $t6, $t6, $s3
    /* E0EEC 800D1F3C 000E7080 */  sll        $t6, $t6, 2
    /* E0EF0 800D1F40 3C148015 */  lui        $s4, %hi(D_8015431C)
    /* E0EF4 800D1F44 028EA021 */  addu       $s4, $s4, $t6
    /* E0EF8 800D1F48 8694431C */  lh         $s4, %lo(D_8015431C)($s4)
    /* E0EFC 800D1F4C 2401FFFB */  addiu      $at, $zero, -0x5
    /* E0F00 800D1F50 5281012F */  beql       $s4, $at, .L800D2410_E13C0
    /* E0F04 800D1F54 00149C00 */   sll       $s3, $s4, 16
    /* E0F08 800D1F58 8E500000 */  lw         $s0, 0x0($s2)
    /* E0F0C 800D1F5C 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
    /* E0F10 800D1F60 3C0BFD90 */  lui        $t3, (0xFD900000 >> 16)
    /* E0F14 800D1F64 260F0008 */  addiu      $t7, $s0, 0x8
    /* E0F18 800D1F68 AE4F0000 */  sw         $t7, 0x0($s2)
    /* E0F1C 800D1F6C AE000004 */  sw         $zero, 0x4($s0)
    /* E0F20 800D1F70 AE180000 */  sw         $t8, 0x0($s0)
    /* E0F24 800D1F74 8E530000 */  lw         $s3, 0x0($s2)
    /* E0F28 800D1F78 26790008 */  addiu      $t9, $s3, 0x8
    /* E0F2C 800D1F7C AE590000 */  sw         $t9, 0x0($s2)
    /* E0F30 800D1F80 AE6B0000 */  sw         $t3, 0x0($s3)
    /* E0F34 800D1F84 E7B200E4 */  swc1       $f18, 0xE4($sp)
    /* E0F38 800D1F88 E7B000F0 */  swc1       $f16, 0xF0($sp)
    /* E0F3C 800D1F8C 0C000E38 */  jal        func_800038E0_44E0
    /* E0F40 800D1F90 E7AE00E8 */   swc1      $f14, 0xE8($sp)
    /* E0F44 800D1F94 3C0E0101 */  lui        $t6, %hi(D_100B4F0)
    /* E0F48 800D1F98 25CEB4F0 */  addiu      $t6, $t6, %lo(D_100B4F0)
    /* E0F4C 800D1F9C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* E0F50 800D1FA0 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* E0F54 800D1FA4 C7AE00E8 */  lwc1       $f14, 0xE8($sp)
    /* E0F58 800D1FA8 C7B000F0 */  lwc1       $f16, 0xF0($sp)
    /* E0F5C 800D1FAC C7B200E4 */  lwc1       $f18, 0xE4($sp)
    /* E0F60 800D1FB0 3C0BF590 */  lui        $t3, (0xF5900000 >> 16)
    /* E0F64 800D1FB4 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
    /* E0F68 800D1FB8 04410004 */  bgez       $v0, .L800D1FCC_E0F7C
    /* E0F6C 800D1FBC 304C0003 */   andi      $t4, $v0, 0x3
    /* E0F70 800D1FC0 11800002 */  beqz       $t4, .L800D1FCC_E0F7C
    /* E0F74 800D1FC4 00000000 */   nop
    /* E0F78 800D1FC8 258CFFFC */  addiu      $t4, $t4, -0x4
  .L800D1FCC_E0F7C:
    /* E0F7C 800D1FCC 000C6A40 */  sll        $t5, $t4, 9
    /* E0F80 800D1FD0 01AE7821 */  addu       $t7, $t5, $t6
    /* E0F84 800D1FD4 01E1C024 */  and        $t8, $t7, $at
    /* E0F88 800D1FD8 AE780004 */  sw         $t8, 0x4($s3)
    /* E0F8C 800D1FDC 8E500000 */  lw         $s0, 0x0($s2)
    /* E0F90 800D1FE0 3C0C0708 */  lui        $t4, (0x7080200 >> 16)
    /* E0F94 800D1FE4 358C0200 */  ori        $t4, $t4, (0x7080200 & 0xFFFF)
    /* E0F98 800D1FE8 26190008 */  addiu      $t9, $s0, 0x8
    /* E0F9C 800D1FEC AE590000 */  sw         $t9, 0x0($s2)
    /* E0FA0 800D1FF0 AE0C0004 */  sw         $t4, 0x4($s0)
    /* E0FA4 800D1FF4 AE0B0000 */  sw         $t3, 0x0($s0)
    /* E0FA8 800D1FF8 8E500000 */  lw         $s0, 0x0($s2)
    /* E0FAC 800D1FFC 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
    /* E0FB0 800D2000 3C19070F */  lui        $t9, (0x70FF400 >> 16)
    /* E0FB4 800D2004 260D0008 */  addiu      $t5, $s0, 0x8
    /* E0FB8 800D2008 AE4D0000 */  sw         $t5, 0x0($s2)
    /* E0FBC 800D200C AE000004 */  sw         $zero, 0x4($s0)
    /* E0FC0 800D2010 AE0E0000 */  sw         $t6, 0x0($s0)
    /* E0FC4 800D2014 8E500000 */  lw         $s0, 0x0($s2)
    /* E0FC8 800D2018 3739F400 */  ori        $t9, $t9, (0x70FF400 & 0xFFFF)
    /* E0FCC 800D201C 3C18F300 */  lui        $t8, (0xF3000000 >> 16)
    /* E0FD0 800D2020 260F0008 */  addiu      $t7, $s0, 0x8
    /* E0FD4 800D2024 AE4F0000 */  sw         $t7, 0x0($s2)
    /* E0FD8 800D2028 AE190004 */  sw         $t9, 0x4($s0)
    /* E0FDC 800D202C AE180000 */  sw         $t8, 0x0($s0)
    /* E0FE0 800D2030 8E500000 */  lw         $s0, 0x0($s2)
    /* E0FE4 800D2034 3C0E0008 */  lui        $t6, (0x80200 >> 16)
    /* E0FE8 800D2038 3C0DF580 */  lui        $t5, (0xF5800400 >> 16)
    /* E0FEC 800D203C 260B0008 */  addiu      $t3, $s0, 0x8
    /* E0FF0 800D2040 AE4B0000 */  sw         $t3, 0x0($s2)
    /* E0FF4 800D2044 AE000004 */  sw         $zero, 0x4($s0)
    /* E0FF8 800D2048 AE0A0000 */  sw         $t2, 0x0($s0)
    /* E0FFC 800D204C 8E500000 */  lw         $s0, 0x0($s2)
    /* E1000 800D2050 35AD0400 */  ori        $t5, $t5, (0xF5800400 & 0xFFFF)
    /* E1004 800D2054 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
    /* E1008 800D2058 260C0008 */  addiu      $t4, $s0, 0x8
    /* E100C 800D205C AE4C0000 */  sw         $t4, 0x0($s2)
    /* E1010 800D2060 AE0E0004 */  sw         $t6, 0x4($s0)
    /* E1014 800D2064 AE0D0000 */  sw         $t5, 0x0($s0)
    /* E1018 800D2068 8E500000 */  lw         $s0, 0x0($s2)
    /* E101C 800D206C 3C190007 */  lui        $t9, (0x7C07C >> 16)
    /* E1020 800D2070 3739C07C */  ori        $t9, $t9, (0x7C07C & 0xFFFF)
    /* E1024 800D2074 260F0008 */  addiu      $t7, $s0, 0x8
    /* E1028 800D2078 AE4F0000 */  sw         $t7, 0x0($s2)
    /* E102C 800D207C 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
    /* E1030 800D2080 AE180000 */  sw         $t8, 0x0($s0)
    /* E1034 800D2084 AE190004 */  sw         $t9, 0x4($s0)
    /* E1038 800D2088 8E500000 */  lw         $s0, 0x0($s2)
    /* E103C 800D208C 4600818D */  trunc.w.s  $f6, $f16
    /* E1040 800D2090 260B0008 */  addiu      $t3, $s0, 0x8
    /* E1044 800D2094 AE4B0000 */  sw         $t3, 0x0($s2)
    /* E1048 800D2098 AE000004 */  sw         $zero, 0x4($s0)
    /* E104C 800D209C AE0A0000 */  sw         $t2, 0x0($s0)
    /* E1050 800D20A0 4600C20D */  trunc.w.s  $f8, $f24
    /* E1054 800D20A4 8E2E0000 */  lw         $t6, 0x0($s1)
    /* E1058 800D20A8 440D3000 */  mfc1       $t5, $f6
    /* E105C 800D20AC 4600B28D */  trunc.w.s  $f10, $f22
    /* E1060 800D20B0 44184000 */  mfc1       $t8, $f8
    /* E1064 800D20B4 A5CD0000 */  sh         $t5, 0x0($t6)
    /* E1068 800D20B8 8E390000 */  lw         $t9, 0x0($s1)
    /* E106C 800D20BC 440C5000 */  mfc1       $t4, $f10
    /* E1070 800D20C0 4600910D */  trunc.w.s  $f4, $f18
    /* E1074 800D20C4 A7380002 */  sh         $t8, 0x2($t9)
    /* E1078 800D20C8 8E2D0000 */  lw         $t5, 0x0($s1)
    /* E107C 800D20CC 4600718D */  trunc.w.s  $f6, $f14
    /* E1080 800D20D0 A5AC0004 */  sh         $t4, 0x4($t5)
    /* E1084 800D20D4 8E2E0000 */  lw         $t6, 0x0($s1)
    /* E1088 800D20D8 4600F20D */  trunc.w.s  $f8, $f30
    /* E108C 800D20DC A5C00006 */  sh         $zero, 0x6($t6)
    /* E1090 800D20E0 8E2F0000 */  lw         $t7, 0x0($s1)
    /* E1094 800D20E4 A5E00008 */  sh         $zero, 0x8($t7)
    /* E1098 800D20E8 8E380000 */  lw         $t8, 0x0($s1)
    /* E109C 800D20EC A700000A */  sh         $zero, 0xA($t8)
    /* E10A0 800D20F0 8E390000 */  lw         $t9, 0x0($s1)
    /* E10A4 800D20F4 44184000 */  mfc1       $t8, $f8
    /* E10A8 800D20F8 A337000C */  sb         $s7, 0xC($t9)
    /* E10AC 800D20FC 8E2B0000 */  lw         $t3, 0x0($s1)
    /* E10B0 800D2100 93A200BC */  lbu        $v0, 0xBC($sp)
    /* E10B4 800D2104 44192000 */  mfc1       $t9, $f4
    /* E10B8 800D2108 A17E000D */  sb         $fp, 0xD($t3)
    /* E10BC 800D210C 8E2C0000 */  lw         $t4, 0x0($s1)
    /* E10C0 800D2110 A182000E */  sb         $v0, 0xE($t4)
    /* E10C4 800D2114 8E2D0000 */  lw         $t5, 0x0($s1)
    /* E10C8 800D2118 A1B5000F */  sb         $s5, 0xF($t5)
    /* E10CC 800D211C 8E2E0000 */  lw         $t6, 0x0($s1)
    /* E10D0 800D2120 440D3000 */  mfc1       $t5, $f6
    /* E10D4 800D2124 25CF0010 */  addiu      $t7, $t6, 0x10
    /* E10D8 800D2128 AE2F0000 */  sw         $t7, 0x0($s1)
    /* E10DC 800D212C A5F90000 */  sh         $t9, 0x0($t7)
    /* E10E0 800D2130 8E2E0000 */  lw         $t6, 0x0($s1)
    /* E10E4 800D2134 A5CD0002 */  sh         $t5, 0x2($t6)
    /* E10E8 800D2138 8E390000 */  lw         $t9, 0x0($s1)
    /* E10EC 800D213C A7380004 */  sh         $t8, 0x4($t9)
    /* E10F0 800D2140 8E2B0000 */  lw         $t3, 0x0($s1)
    /* E10F4 800D2144 A5600006 */  sh         $zero, 0x6($t3)
    /* E10F8 800D2148 8E2C0000 */  lw         $t4, 0x0($s1)
    /* E10FC 800D214C A5800008 */  sh         $zero, 0x8($t4)
    /* E1100 800D2150 8E2D0000 */  lw         $t5, 0x0($s1)
    /* E1104 800D2154 A5B6000A */  sh         $s6, 0xA($t5)
    /* E1108 800D2158 8E2E0000 */  lw         $t6, 0x0($s1)
    /* E110C 800D215C A1D7000C */  sb         $s7, 0xC($t6)
    /* E1110 800D2160 8E2F0000 */  lw         $t7, 0x0($s1)
    /* E1114 800D2164 A1FE000D */  sb         $fp, 0xD($t7)
    /* E1118 800D2168 8E380000 */  lw         $t8, 0x0($s1)
    /* E111C 800D216C A302000E */  sb         $v0, 0xE($t8)
    /* E1120 800D2170 8E390000 */  lw         $t9, 0x0($s1)
    /* E1124 800D2174 A335000F */  sb         $s5, 0xF($t9)
    /* E1128 800D2178 8E2B0000 */  lw         $t3, 0x0($s1)
    /* E112C 800D217C 256C0010 */  addiu      $t4, $t3, 0x10
    /* E1130 800D2180 0C000E38 */  jal        func_800038E0_44E0
    /* E1134 800D2184 AE2C0000 */   sw        $t4, 0x0($s1)
    /* E1138 800D2188 24010005 */  addiu      $at, $zero, 0x5
    /* E113C 800D218C 0041001A */  div        $zero, $v0, $at
    /* E1140 800D2190 00006810 */  mfhi       $t5
    /* E1144 800D2194 000D7080 */  sll        $t6, $t5, 2
    /* E1148 800D2198 25CF0014 */  addiu      $t7, $t6, 0x14
    /* E114C 800D219C 448F5000 */  mtc1       $t7, $f10
    /* E1150 800D21A0 0C000E38 */  jal        func_800038E0_44E0
    /* E1154 800D21A4 46805520 */   cvt.s.w   $f20, $f10
    /* E1158 800D21A8 2401000B */  addiu      $at, $zero, 0xB
    /* E115C 800D21AC 0041001A */  div        $zero, $v0, $at
    /* E1160 800D21B0 0000C010 */  mfhi       $t8
    /* E1164 800D21B4 2B010006 */  slti       $at, $t8, 0x6
    /* E1168 800D21B8 10200004 */  beqz       $at, .L800D21CC_E117C
    /* E116C 800D21BC 0014C8C0 */   sll       $t9, $s4, 3
    /* E1170 800D21C0 4480F000 */  mtc1       $zero, $f30
    /* E1174 800D21C4 00000000 */  nop
    /* E1178 800D21C8 4614F501 */  sub.s      $f20, $f30, $f20
  .L800D21CC_E117C:
    /* E117C 800D21CC 0334C823 */  subu       $t9, $t9, $s4
    /* E1180 800D21D0 0019C880 */  sll        $t9, $t9, 2
    /* E1184 800D21D4 3C0C8015 */  lui        $t4, %hi(D_80154318)
    /* E1188 800D21D8 258C4318 */  addiu      $t4, $t4, %lo(D_80154318)
    /* E118C 800D21DC 272B0008 */  addiu      $t3, $t9, 0x8
    /* E1190 800D21E0 016C8021 */  addu       $s0, $t3, $t4
    /* E1194 800D21E4 860D0000 */  lh         $t5, 0x0($s0)
    /* E1198 800D21E8 4480F000 */  mtc1       $zero, $f30
    /* E119C 800D21EC 448D2000 */  mtc1       $t5, $f4
    /* E11A0 800D21F0 00000000 */  nop
    /* E11A4 800D21F4 46802020 */  cvt.s.w    $f0, $f4
    /* E11A8 800D21F8 46140600 */  add.s      $f24, $f0, $f20
    /* E11AC 800D21FC 0C000E38 */  jal        func_800038E0_44E0
    /* E11B0 800D2200 46140681 */   sub.s     $f26, $f0, $f20
    /* E11B4 800D2204 24010005 */  addiu      $at, $zero, 0x5
    /* E11B8 800D2208 0041001A */  div        $zero, $v0, $at
    /* E11BC 800D220C 00007010 */  mfhi       $t6
    /* E11C0 800D2210 000E7880 */  sll        $t7, $t6, 2
    /* E11C4 800D2214 25F80014 */  addiu      $t8, $t7, 0x14
    /* E11C8 800D2218 44983000 */  mtc1       $t8, $f6
    /* E11CC 800D221C 0C000E38 */  jal        func_800038E0_44E0
    /* E11D0 800D2220 46803520 */   cvt.s.w   $f20, $f6
    /* E11D4 800D2224 2401000B */  addiu      $at, $zero, 0xB
    /* E11D8 800D2228 0041001A */  div        $zero, $v0, $at
    /* E11DC 800D222C 0000C810 */  mfhi       $t9
    /* E11E0 800D2230 2B210006 */  slti       $at, $t9, 0x6
    /* E11E4 800D2234 50200003 */  beql       $at, $zero, .L800D2244_E11F4
    /* E11E8 800D2238 860B0002 */   lh        $t3, 0x2($s0)
    /* E11EC 800D223C 4614F501 */  sub.s      $f20, $f30, $f20
    /* E11F0 800D2240 860B0002 */  lh         $t3, 0x2($s0)
  .L800D2244_E11F4:
    /* E11F4 800D2244 448B4000 */  mtc1       $t3, $f8
    /* E11F8 800D2248 00000000 */  nop
    /* E11FC 800D224C 46804020 */  cvt.s.w    $f0, $f8
    /* E1200 800D2250 46140580 */  add.s      $f22, $f0, $f20
    /* E1204 800D2254 0C000E38 */  jal        func_800038E0_44E0
    /* E1208 800D2258 46140701 */   sub.s     $f28, $f0, $f20
    /* E120C 800D225C 24010005 */  addiu      $at, $zero, 0x5
    /* E1210 800D2260 0041001A */  div        $zero, $v0, $at
    /* E1214 800D2264 00006010 */  mfhi       $t4
    /* E1218 800D2268 000C6880 */  sll        $t5, $t4, 2
    /* E121C 800D226C 25AE0014 */  addiu      $t6, $t5, 0x14
    /* E1220 800D2270 448E5000 */  mtc1       $t6, $f10
    /* E1224 800D2274 0C000E38 */  jal        func_800038E0_44E0
    /* E1228 800D2278 46805520 */   cvt.s.w   $f20, $f10
    /* E122C 800D227C 2401000B */  addiu      $at, $zero, 0xB
    /* E1230 800D2280 0041001A */  div        $zero, $v0, $at
    /* E1234 800D2284 00007810 */  mfhi       $t7
    /* E1238 800D2288 29E10006 */  slti       $at, $t7, 0x6
    /* E123C 800D228C 10200002 */  beqz       $at, .L800D2298_E1248
    /* E1240 800D2290 4600C18D */   trunc.w.s $f6, $f24
    /* E1244 800D2294 4614F501 */  sub.s      $f20, $f30, $f20
  .L800D2298_E1248:
    /* E1248 800D2298 86180004 */  lh         $t8, 0x4($s0)
    /* E124C 800D229C 4600B20D */  trunc.w.s  $f8, $f22
    /* E1250 800D22A0 440B3000 */  mfc1       $t3, $f6
    /* E1254 800D22A4 44982000 */  mtc1       $t8, $f4
    /* E1258 800D22A8 8E2C0000 */  lw         $t4, 0x0($s1)
    /* E125C 800D22AC 93A500BC */  lbu        $a1, 0xBC($sp)
    /* E1260 800D22B0 468020A0 */  cvt.s.w    $f2, $f4
    /* E1264 800D22B4 A58B0000 */  sh         $t3, 0x0($t4)
    /* E1268 800D22B8 8E2F0000 */  lw         $t7, 0x0($s1)
    /* E126C 800D22BC 440E4000 */  mfc1       $t6, $f8
    /* E1270 800D22C0 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* E1274 800D22C4 4600D10D */  trunc.w.s  $f4, $f26
    /* E1278 800D22C8 A5EE0002 */  sh         $t6, 0x2($t7)
    /* E127C 800D22CC 8E2B0000 */  lw         $t3, 0x0($s1)
    /* E1280 800D22D0 46141780 */  add.s      $f30, $f2, $f20
    /* E1284 800D22D4 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* E1288 800D22D8 3C048015 */  lui        $a0, %hi(D_80156EDA)
    /* E128C 800D22DC 46141301 */  sub.s      $f12, $f2, $f20
    /* E1290 800D22E0 24846EDA */  addiu      $a0, $a0, %lo(D_80156EDA)
    /* E1294 800D22E4 4600C486 */  mov.s      $f18, $f24
    /* E1298 800D22E8 4600F28D */  trunc.w.s  $f10, $f30
    /* E129C 800D22EC 4600B386 */  mov.s      $f14, $f22
    /* E12A0 800D22F0 4600E18D */  trunc.w.s  $f6, $f28
    /* E12A4 800D22F4 4600D406 */  mov.s      $f16, $f26
    /* E12A8 800D22F8 44195000 */  mfc1       $t9, $f10
    /* E12AC 800D22FC 4600620D */  trunc.w.s  $f8, $f12
    /* E12B0 800D2300 4600E606 */  mov.s      $f24, $f28
    /* E12B4 800D2304 A5790004 */  sh         $t9, 0x4($t3)
    /* E12B8 800D2308 8E2C0000 */  lw         $t4, 0x0($s1)
    /* E12BC 800D230C 46006586 */  mov.s      $f22, $f12
    /* E12C0 800D2310 A5800006 */  sh         $zero, 0x6($t4)
    /* E12C4 800D2314 8E2D0000 */  lw         $t5, 0x0($s1)
    /* E12C8 800D2318 A5B60008 */  sh         $s6, 0x8($t5)
    /* E12CC 800D231C 8E2E0000 */  lw         $t6, 0x0($s1)
    /* E12D0 800D2320 A5D6000A */  sh         $s6, 0xA($t6)
    /* E12D4 800D2324 8E2F0000 */  lw         $t7, 0x0($s1)
    /* E12D8 800D2328 440E4000 */  mfc1       $t6, $f8
    /* E12DC 800D232C A1F7000C */  sb         $s7, 0xC($t7)
    /* E12E0 800D2330 8E380000 */  lw         $t8, 0x0($s1)
    /* E12E4 800D2334 440F2000 */  mfc1       $t7, $f4
    /* E12E8 800D2338 A31E000D */  sb         $fp, 0xD($t8)
    /* E12EC 800D233C 8E390000 */  lw         $t9, 0x0($s1)
    /* E12F0 800D2340 A325000E */  sb         $a1, 0xE($t9)
    /* E12F4 800D2344 8E2B0000 */  lw         $t3, 0x0($s1)
    /* E12F8 800D2348 A175000F */  sb         $s5, 0xF($t3)
    /* E12FC 800D234C 8E2C0000 */  lw         $t4, 0x0($s1)
    /* E1300 800D2350 440B3000 */  mfc1       $t3, $f6
    /* E1304 800D2354 258D0010 */  addiu      $t5, $t4, 0x10
    /* E1308 800D2358 AE2D0000 */  sw         $t5, 0x0($s1)
    /* E130C 800D235C A5AF0000 */  sh         $t7, 0x0($t5)
    /* E1310 800D2360 8E2C0000 */  lw         $t4, 0x0($s1)
    /* E1314 800D2364 A58B0002 */  sh         $t3, 0x2($t4)
    /* E1318 800D2368 8E2F0000 */  lw         $t7, 0x0($s1)
    /* E131C 800D236C A5EE0004 */  sh         $t6, 0x4($t7)
    /* E1320 800D2370 8E380000 */  lw         $t8, 0x0($s1)
    /* E1324 800D2374 A7000006 */  sh         $zero, 0x6($t8)
    /* E1328 800D2378 8E390000 */  lw         $t9, 0x0($s1)
    /* E132C 800D237C A7360008 */  sh         $s6, 0x8($t9)
    /* E1330 800D2380 8E2B0000 */  lw         $t3, 0x0($s1)
    /* E1334 800D2384 A560000A */  sh         $zero, 0xA($t3)
    /* E1338 800D2388 8E2C0000 */  lw         $t4, 0x0($s1)
    /* E133C 800D238C A197000C */  sb         $s7, 0xC($t4)
    /* E1340 800D2390 8E2D0000 */  lw         $t5, 0x0($s1)
    /* E1344 800D2394 3C0C0400 */  lui        $t4, (0x400103F >> 16)
    /* E1348 800D2398 358C103F */  ori        $t4, $t4, (0x400103F & 0xFFFF)
    /* E134C 800D239C A1BE000D */  sb         $fp, 0xD($t5)
    /* E1350 800D23A0 8E2E0000 */  lw         $t6, 0x0($s1)
    /* E1354 800D23A4 A1C5000E */  sb         $a1, 0xE($t6)
    /* E1358 800D23A8 8E2F0000 */  lw         $t7, 0x0($s1)
    /* E135C 800D23AC A1F5000F */  sb         $s5, 0xF($t7)
    /* E1360 800D23B0 8E380000 */  lw         $t8, 0x0($s1)
    /* E1364 800D23B4 8E500000 */  lw         $s0, 0x0($s2)
    /* E1368 800D23B8 27190010 */  addiu      $t9, $t8, 0x10
    /* E136C 800D23BC 260B0008 */  addiu      $t3, $s0, 0x8
    /* E1370 800D23C0 AE390000 */  sw         $t9, 0x0($s1)
    /* E1374 800D23C4 AE4B0000 */  sw         $t3, 0x0($s2)
    /* E1378 800D23C8 AE0C0000 */  sw         $t4, 0x0($s0)
    /* E137C 800D23CC 8E2D0000 */  lw         $t5, 0x0($s1)
    /* E1380 800D23D0 3C0B0004 */  lui        $t3, (0x40602 >> 16)
    /* E1384 800D23D4 3C19B100 */  lui        $t9, (0xB1000206 >> 16)
    /* E1388 800D23D8 25AEFFC0 */  addiu      $t6, $t5, -0x40
    /* E138C 800D23DC 01C17824 */  and        $t7, $t6, $at
    /* E1390 800D23E0 AE0F0004 */  sw         $t7, 0x4($s0)
    /* E1394 800D23E4 8E500000 */  lw         $s0, 0x0($s2)
    /* E1398 800D23E8 37390206 */  ori        $t9, $t9, (0xB1000206 & 0xFFFF)
    /* E139C 800D23EC 356B0602 */  ori        $t3, $t3, (0x40602 & 0xFFFF)
    /* E13A0 800D23F0 26180008 */  addiu      $t8, $s0, 0x8
    /* E13A4 800D23F4 AE580000 */  sw         $t8, 0x0($s2)
    /* E13A8 800D23F8 AE0B0004 */  sw         $t3, 0x4($s0)
    /* E13AC 800D23FC AE190000 */  sw         $t9, 0x0($s0)
    /* E13B0 800D2400 848C0000 */  lh         $t4, 0x0($a0)
    /* E13B4 800D2404 258D0004 */  addiu      $t5, $t4, 0x4
    /* E13B8 800D2408 A48D0000 */  sh         $t5, 0x0($a0)
    /* E13BC 800D240C 00149C00 */  sll        $s3, $s4, 16
  .L800D2410_E13C0:
    /* E13C0 800D2410 00137403 */  sra        $t6, $s3, 16
    /* E13C4 800D2414 2401FFFB */  addiu      $at, $zero, -0x5
    /* E13C8 800D2418 12810004 */  beq        $s4, $at, .L800D242C_E13DC
    /* E13CC 800D241C 01C09825 */   or        $s3, $t6, $zero
    /* E13D0 800D2420 2401FFFA */  addiu      $at, $zero, -0x6
    /* E13D4 800D2424 55C1FEC4 */  bnel       $t6, $at, .L800D1F38_E0EE8
    /* E13D8 800D2428 001370C0 */   sll       $t6, $s3, 3
  .L800D242C_E13DC:
    /* E13DC 800D242C 8FAF00B8 */  lw         $t7, 0xB8($sp)
    /* E13E0 800D2430 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* E13E4 800D2434 15E0FE5D */  bnez       $t7, .L800D1DAC_E0D5C
    /* E13E8 800D2438 AFB800B8 */   sw        $t8, 0xB8($sp)
    /* E13EC 800D243C E7BE00EC */  swc1       $f30, 0xEC($sp)
    /* E13F0 800D2440 E7B800F4 */  swc1       $f24, 0xF4($sp)
    /* E13F4 800D2444 E7B600F8 */  swc1       $f22, 0xF8($sp)
    /* E13F8 800D2448 E7B200E4 */  swc1       $f18, 0xE4($sp)
    /* E13FC 800D244C E7B000F0 */  swc1       $f16, 0xF0($sp)
    /* E1400 800D2450 E7AE00E8 */  swc1       $f14, 0xE8($sp)
  .L800D2454_E1404:
    /* E1404 800D2454 8FBF006C */  lw         $ra, 0x6C($sp)
    /* E1408 800D2458 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* E140C 800D245C D7B60020 */  ldc1       $f22, 0x20($sp)
    /* E1410 800D2460 D7B80028 */  ldc1       $f24, 0x28($sp)
    /* E1414 800D2464 D7BA0030 */  ldc1       $f26, 0x30($sp)
    /* E1418 800D2468 D7BC0038 */  ldc1       $f28, 0x38($sp)
    /* E141C 800D246C D7BE0040 */  ldc1       $f30, 0x40($sp)
    /* E1420 800D2470 8FB00048 */  lw         $s0, 0x48($sp)
    /* E1424 800D2474 8FB1004C */  lw         $s1, 0x4C($sp)
    /* E1428 800D2478 8FB20050 */  lw         $s2, 0x50($sp)
    /* E142C 800D247C 8FB30054 */  lw         $s3, 0x54($sp)
    /* E1430 800D2480 8FB40058 */  lw         $s4, 0x58($sp)
    /* E1434 800D2484 8FB5005C */  lw         $s5, 0x5C($sp)
    /* E1438 800D2488 8FB60060 */  lw         $s6, 0x60($sp)
    /* E143C 800D248C 8FB70064 */  lw         $s7, 0x64($sp)
    /* E1440 800D2490 8FBE0068 */  lw         $fp, 0x68($sp)
    /* E1444 800D2494 03E00008 */  jr         $ra
    /* E1448 800D2498 27BD0100 */   addiu     $sp, $sp, 0x100
endlabel func_800D1C24_E0BD4
