nonmatching func_800D6C18_E5BC8, 0x294

glabel func_800D6C18_E5BC8
    /* E5BC8 800D6C18 30AE00FF */  andi       $t6, $a1, 0xFF
    /* E5BCC 800D6C1C 3C188015 */  lui        $t8, %hi(D_80153AE0)
    /* E5BD0 800D6C20 27183AE0 */  addiu      $t8, $t8, %lo(D_80153AE0)
    /* E5BD4 800D6C24 000E7940 */  sll        $t7, $t6, 5
    /* E5BD8 800D6C28 01F81021 */  addu       $v0, $t7, $t8
    /* E5BDC 800D6C2C 90430013 */  lbu        $v1, 0x13($v0)
    /* E5BE0 800D6C30 AFA40000 */  sw         $a0, 0x0($sp)
    /* E5BE4 800D6C34 AFA50004 */  sw         $a1, 0x4($sp)
    /* E5BE8 800D6C38 14600017 */  bnez       $v1, .L800D6C98_E5C48
    /* E5BEC 800D6C3C 00602025 */   or        $a0, $v1, $zero
    /* E5BF0 800D6C40 8C450018 */  lw         $a1, 0x18($v0)
    /* E5BF4 800D6C44 246D0001 */  addiu      $t5, $v1, 0x1
    /* E5BF8 800D6C48 84B90000 */  lh         $t9, 0x0($a1)
    /* E5BFC 800D6C4C 24AE0014 */  addiu      $t6, $a1, 0x14
    /* E5C00 800D6C50 A4590000 */  sh         $t9, 0x0($v0)
    /* E5C04 800D6C54 84A80002 */  lh         $t0, 0x2($a1)
    /* E5C08 800D6C58 A4480002 */  sh         $t0, 0x2($v0)
    /* E5C0C 800D6C5C 84A90004 */  lh         $t1, 0x4($a1)
    /* E5C10 800D6C60 A4400006 */  sh         $zero, 0x6($v0)
    /* E5C14 800D6C64 A4400008 */  sh         $zero, 0x8($v0)
    /* E5C18 800D6C68 A440000A */  sh         $zero, 0xA($v0)
    /* E5C1C 800D6C6C A4490004 */  sh         $t1, 0x4($v0)
    /* E5C20 800D6C70 84AA000C */  lh         $t2, 0xC($a1)
    /* E5C24 800D6C74 A44A000C */  sh         $t2, 0xC($v0)
    /* E5C28 800D6C78 84AB000E */  lh         $t3, 0xE($a1)
    /* E5C2C 800D6C7C A44B000E */  sh         $t3, 0xE($v0)
    /* E5C30 800D6C80 84AC0010 */  lh         $t4, 0x10($a1)
    /* E5C34 800D6C84 A04D0013 */  sb         $t5, 0x13($v0)
    /* E5C38 800D6C88 A0400014 */  sb         $zero, 0x14($v0)
    /* E5C3C 800D6C8C AC4E0018 */  sw         $t6, 0x18($v0)
    /* E5C40 800D6C90 03E00008 */  jr         $ra
    /* E5C44 800D6C94 A44C0010 */   sh        $t4, 0x10($v0)
  .L800D6C98_E5C48:
    /* E5C48 800D6C98 8C450018 */  lw         $a1, 0x18($v0)
    /* E5C4C 800D6C9C 904F0014 */  lbu        $t7, 0x14($v0)
    /* E5C50 800D6CA0 90B80012 */  lbu        $t8, 0x12($a1)
    /* E5C54 800D6CA4 55F80008 */  bnel       $t7, $t8, .L800D6CC8_E5C78
    /* E5C58 800D6CA8 90490012 */   lbu       $t1, 0x12($v0)
    /* E5C5C 800D6CAC 24790001 */  addiu      $t9, $v1, 0x1
    /* E5C60 800D6CB0 24A80014 */  addiu      $t0, $a1, 0x14
    /* E5C64 800D6CB4 A0590013 */  sb         $t9, 0x13($v0)
    /* E5C68 800D6CB8 A0400014 */  sb         $zero, 0x14($v0)
    /* E5C6C 800D6CBC AC480018 */  sw         $t0, 0x18($v0)
    /* E5C70 800D6CC0 332400FF */  andi       $a0, $t9, 0xFF
    /* E5C74 800D6CC4 90490012 */  lbu        $t1, 0x12($v0)
  .L800D6CC8_E5C78:
    /* E5C78 800D6CC8 0089082A */  slt        $at, $a0, $t1
    /* E5C7C 800D6CCC 10200075 */  beqz       $at, .L800D6EA4_E5E54
    /* E5C80 800D6CD0 00000000 */   nop
    /* E5C84 800D6CD4 8C450018 */  lw         $a1, 0x18($v0)
    /* E5C88 800D6CD8 844D0000 */  lh         $t5, 0x0($v0)
    /* E5C8C 800D6CDC 84480002 */  lh         $t0, 0x2($v0)
    /* E5C90 800D6CE0 84AA0000 */  lh         $t2, 0x0($a1)
    /* E5C94 800D6CE4 90AB0012 */  lbu        $t3, 0x12($a1)
    /* E5C98 800D6CE8 014B001A */  div        $zero, $t2, $t3
    /* E5C9C 800D6CEC 00006012 */  mflo       $t4
    /* E5CA0 800D6CF0 01AC7021 */  addu       $t6, $t5, $t4
    /* E5CA4 800D6CF4 A44E0000 */  sh         $t6, 0x0($v0)
    /* E5CA8 800D6CF8 90B80012 */  lbu        $t8, 0x12($a1)
    /* E5CAC 800D6CFC 84AF0002 */  lh         $t7, 0x2($a1)
    /* E5CB0 800D6D00 15600002 */  bnez       $t3, .L800D6D0C_E5CBC
    /* E5CB4 800D6D04 00000000 */   nop
    /* E5CB8 800D6D08 0007000D */  break      7
  .L800D6D0C_E5CBC:
    /* E5CBC 800D6D0C 2401FFFF */  addiu      $at, $zero, -0x1
    /* E5CC0 800D6D10 15610004 */  bne        $t3, $at, .L800D6D24_E5CD4
    /* E5CC4 800D6D14 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E5CC8 800D6D18 15410002 */  bne        $t2, $at, .L800D6D24_E5CD4
    /* E5CCC 800D6D1C 00000000 */   nop
    /* E5CD0 800D6D20 0006000D */  break      6
  .L800D6D24_E5CD4:
    /* E5CD4 800D6D24 01F8001A */  div        $zero, $t7, $t8
    /* E5CD8 800D6D28 0000C812 */  mflo       $t9
    /* E5CDC 800D6D2C 01194821 */  addu       $t1, $t0, $t9
    /* E5CE0 800D6D30 A4490002 */  sh         $t1, 0x2($v0)
    /* E5CE4 800D6D34 90AB0012 */  lbu        $t3, 0x12($a1)
    /* E5CE8 800D6D38 84AA0004 */  lh         $t2, 0x4($a1)
    /* E5CEC 800D6D3C 844C0004 */  lh         $t4, 0x4($v0)
    /* E5CF0 800D6D40 17000002 */  bnez       $t8, .L800D6D4C_E5CFC
    /* E5CF4 800D6D44 00000000 */   nop
    /* E5CF8 800D6D48 0007000D */  break      7
  .L800D6D4C_E5CFC:
    /* E5CFC 800D6D4C 2401FFFF */  addiu      $at, $zero, -0x1
    /* E5D00 800D6D50 17010004 */  bne        $t8, $at, .L800D6D64_E5D14
    /* E5D04 800D6D54 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E5D08 800D6D58 15E10002 */  bne        $t7, $at, .L800D6D64_E5D14
    /* E5D0C 800D6D5C 00000000 */   nop
    /* E5D10 800D6D60 0006000D */  break      6
  .L800D6D64_E5D14:
    /* E5D14 800D6D64 014B001A */  div        $zero, $t2, $t3
    /* E5D18 800D6D68 00006812 */  mflo       $t5
    /* E5D1C 800D6D6C 018D7021 */  addu       $t6, $t4, $t5
    /* E5D20 800D6D70 A44E0004 */  sh         $t6, 0x4($v0)
    /* E5D24 800D6D74 90B80012 */  lbu        $t8, 0x12($a1)
    /* E5D28 800D6D78 94AF0008 */  lhu        $t7, 0x8($a1)
    /* E5D2C 800D6D7C 94590008 */  lhu        $t9, 0x8($v0)
    /* E5D30 800D6D80 15600002 */  bnez       $t3, .L800D6D8C_E5D3C
    /* E5D34 800D6D84 00000000 */   nop
    /* E5D38 800D6D88 0007000D */  break      7
  .L800D6D8C_E5D3C:
    /* E5D3C 800D6D8C 2401FFFF */  addiu      $at, $zero, -0x1
    /* E5D40 800D6D90 15610004 */  bne        $t3, $at, .L800D6DA4_E5D54
    /* E5D44 800D6D94 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E5D48 800D6D98 15410002 */  bne        $t2, $at, .L800D6DA4_E5D54
    /* E5D4C 800D6D9C 00000000 */   nop
    /* E5D50 800D6DA0 0006000D */  break      6
  .L800D6DA4_E5D54:
    /* E5D54 800D6DA4 01F8001A */  div        $zero, $t7, $t8
    /* E5D58 800D6DA8 00004012 */  mflo       $t0
    /* E5D5C 800D6DAC 03284821 */  addu       $t1, $t9, $t0
    /* E5D60 800D6DB0 A4490008 */  sh         $t1, 0x8($v0)
    /* E5D64 800D6DB4 90AB0012 */  lbu        $t3, 0x12($a1)
    /* E5D68 800D6DB8 84AA000C */  lh         $t2, 0xC($a1)
    /* E5D6C 800D6DBC 844D000C */  lh         $t5, 0xC($v0)
    /* E5D70 800D6DC0 17000002 */  bnez       $t8, .L800D6DCC_E5D7C
    /* E5D74 800D6DC4 00000000 */   nop
    /* E5D78 800D6DC8 0007000D */  break      7
  .L800D6DCC_E5D7C:
    /* E5D7C 800D6DCC 2401FFFF */  addiu      $at, $zero, -0x1
    /* E5D80 800D6DD0 17010004 */  bne        $t8, $at, .L800D6DE4_E5D94
    /* E5D84 800D6DD4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E5D88 800D6DD8 15E10002 */  bne        $t7, $at, .L800D6DE4_E5D94
    /* E5D8C 800D6DDC 00000000 */   nop
    /* E5D90 800D6DE0 0006000D */  break      6
  .L800D6DE4_E5D94:
    /* E5D94 800D6DE4 014B001A */  div        $zero, $t2, $t3
    /* E5D98 800D6DE8 00006012 */  mflo       $t4
    /* E5D9C 800D6DEC 01AC7021 */  addu       $t6, $t5, $t4
    /* E5DA0 800D6DF0 A44E000C */  sh         $t6, 0xC($v0)
    /* E5DA4 800D6DF4 90B80012 */  lbu        $t8, 0x12($a1)
    /* E5DA8 800D6DF8 84AF000E */  lh         $t7, 0xE($a1)
    /* E5DAC 800D6DFC 8448000E */  lh         $t0, 0xE($v0)
    /* E5DB0 800D6E00 15600002 */  bnez       $t3, .L800D6E0C_E5DBC
    /* E5DB4 800D6E04 00000000 */   nop
    /* E5DB8 800D6E08 0007000D */  break      7
  .L800D6E0C_E5DBC:
    /* E5DBC 800D6E0C 2401FFFF */  addiu      $at, $zero, -0x1
    /* E5DC0 800D6E10 15610004 */  bne        $t3, $at, .L800D6E24_E5DD4
    /* E5DC4 800D6E14 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E5DC8 800D6E18 15410002 */  bne        $t2, $at, .L800D6E24_E5DD4
    /* E5DCC 800D6E1C 00000000 */   nop
    /* E5DD0 800D6E20 0006000D */  break      6
  .L800D6E24_E5DD4:
    /* E5DD4 800D6E24 01F8001A */  div        $zero, $t7, $t8
    /* E5DD8 800D6E28 0000C812 */  mflo       $t9
    /* E5DDC 800D6E2C 01194821 */  addu       $t1, $t0, $t9
    /* E5DE0 800D6E30 A449000E */  sh         $t1, 0xE($v0)
    /* E5DE4 800D6E34 90AB0012 */  lbu        $t3, 0x12($a1)
    /* E5DE8 800D6E38 84AA0010 */  lh         $t2, 0x10($a1)
    /* E5DEC 800D6E3C 17000002 */  bnez       $t8, .L800D6E48_E5DF8
    /* E5DF0 800D6E40 00000000 */   nop
    /* E5DF4 800D6E44 0007000D */  break      7
  .L800D6E48_E5DF8:
    /* E5DF8 800D6E48 2401FFFF */  addiu      $at, $zero, -0x1
    /* E5DFC 800D6E4C 17010004 */  bne        $t8, $at, .L800D6E60_E5E10
    /* E5E00 800D6E50 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E5E04 800D6E54 15E10002 */  bne        $t7, $at, .L800D6E60_E5E10
    /* E5E08 800D6E58 00000000 */   nop
    /* E5E0C 800D6E5C 0006000D */  break      6
  .L800D6E60_E5E10:
    /* E5E10 800D6E60 014B001A */  div        $zero, $t2, $t3
    /* E5E14 800D6E64 844C0010 */  lh         $t4, 0x10($v0)
    /* E5E18 800D6E68 904F0014 */  lbu        $t7, 0x14($v0)
    /* E5E1C 800D6E6C 00006812 */  mflo       $t5
    /* E5E20 800D6E70 018D7021 */  addu       $t6, $t4, $t5
    /* E5E24 800D6E74 25F80001 */  addiu      $t8, $t7, 0x1
    /* E5E28 800D6E78 A44E0010 */  sh         $t6, 0x10($v0)
    /* E5E2C 800D6E7C A0580014 */  sb         $t8, 0x14($v0)
    /* E5E30 800D6E80 15600002 */  bnez       $t3, .L800D6E8C_E5E3C
    /* E5E34 800D6E84 00000000 */   nop
    /* E5E38 800D6E88 0007000D */  break      7
  .L800D6E8C_E5E3C:
    /* E5E3C 800D6E8C 2401FFFF */  addiu      $at, $zero, -0x1
    /* E5E40 800D6E90 15610004 */  bne        $t3, $at, .L800D6EA4_E5E54
    /* E5E44 800D6E94 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* E5E48 800D6E98 15410002 */  bne        $t2, $at, .L800D6EA4_E5E54
    /* E5E4C 800D6E9C 00000000 */   nop
    /* E5E50 800D6EA0 0006000D */  break      6
  .L800D6EA4_E5E54:
    /* E5E54 800D6EA4 03E00008 */  jr         $ra
    /* E5E58 800D6EA8 00000000 */   nop
endlabel func_800D6C18_E5BC8
