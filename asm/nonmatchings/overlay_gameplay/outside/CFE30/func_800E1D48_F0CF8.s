nonmatching func_800E1D48_F0CF8, 0x228

glabel func_800E1D48_F0CF8
    /* F0CF8 800E1D48 3C088005 */  lui        $t0, %hi(D_80052B34)
    /* F0CFC 800E1D4C 25082B34 */  addiu      $t0, $t0, %lo(D_80052B34)
    /* F0D00 800E1D50 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* F0D04 800E1D54 8D0E0000 */  lw         $t6, 0x0($t0)
    /* F0D08 800E1D58 AFBF0014 */  sw         $ra, 0x14($sp)
    /* F0D0C 800E1D5C AFA40028 */  sw         $a0, 0x28($sp)
    /* F0D10 800E1D60 AFA5002C */  sw         $a1, 0x2C($sp)
    /* F0D14 800E1D64 85CF003C */  lh         $t7, 0x3C($t6)
    /* F0D18 800E1D68 51E0007E */  beql       $t7, $zero, .L800E1F64_F0F14
    /* F0D1C 800E1D6C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* F0D20 800E1D70 AFA00020 */  sw         $zero, 0x20($sp)
    /* F0D24 800E1D74 0C000E38 */  jal        func_800038E0_44E0
    /* F0D28 800E1D78 AFA00024 */   sw        $zero, 0x24($sp)
    /* F0D2C 800E1D7C 24010064 */  addiu      $at, $zero, 0x64
    /* F0D30 800E1D80 0041001A */  div        $zero, $v0, $at
    /* F0D34 800E1D84 97B9002A */  lhu        $t9, 0x2A($sp)
    /* F0D38 800E1D88 0000C010 */  mfhi       $t8
    /* F0D3C 800E1D8C 3C088005 */  lui        $t0, %hi(D_80052B34)
    /* F0D40 800E1D90 272B001E */  addiu      $t3, $t9, 0x1E
    /* F0D44 800E1D94 030B082A */  slt        $at, $t8, $t3
    /* F0D48 800E1D98 25082B34 */  addiu      $t0, $t0, %lo(D_80052B34)
    /* F0D4C 800E1D9C 8FA30020 */  lw         $v1, 0x20($sp)
    /* F0D50 800E1DA0 1020006F */  beqz       $at, .L800E1F60_F0F10
    /* F0D54 800E1DA4 8FAA0024 */   lw        $t2, 0x24($sp)
    /* F0D58 800E1DA8 3C098004 */  lui        $t1, %hi(currentLevel)
    /* F0D5C 800E1DAC 8D297F90 */  lw         $t1, %lo(currentLevel)($t1)
    /* F0D60 800E1DB0 24040001 */  addiu      $a0, $zero, 0x1
    /* F0D64 800E1DB4 24050002 */  addiu      $a1, $zero, 0x2
    /* F0D68 800E1DB8 11240009 */  beq        $t1, $a0, .L800E1DE0_F0D90
    /* F0D6C 800E1DBC 01201025 */   or        $v0, $t1, $zero
    /* F0D70 800E1DC0 10450014 */  beq        $v0, $a1, .L800E1E14_F0DC4
    /* F0D74 800E1DC4 24010003 */   addiu     $at, $zero, 0x3
    /* F0D78 800E1DC8 1041001F */  beq        $v0, $at, .L800E1E48_F0DF8
    /* F0D7C 800E1DCC 24010004 */   addiu     $at, $zero, 0x4
    /* F0D80 800E1DD0 50410029 */  beql       $v0, $at, .L800E1E78_F0E28
    /* F0D84 800E1DD4 8D180000 */   lw        $t8, 0x0($t0)
    /* F0D88 800E1DD8 10000033 */  b          .L800E1EA8_F0E58
    /* F0D8C 800E1DDC 00000000 */   nop
  .L800E1DE0_F0D90:
    /* F0D90 800E1DE0 8D0C0000 */  lw         $t4, 0x0($t0)
    /* F0D94 800E1DE4 24010004 */  addiu      $at, $zero, 0x4
    /* F0D98 800E1DE8 9182001A */  lbu        $v0, 0x1A($t4)
    /* F0D9C 800E1DEC 10410007 */  beq        $v0, $at, .L800E1E0C_F0DBC
    /* F0DA0 800E1DF0 24010007 */   addiu     $at, $zero, 0x7
    /* F0DA4 800E1DF4 10410005 */  beq        $v0, $at, .L800E1E0C_F0DBC
    /* F0DA8 800E1DF8 24010008 */   addiu     $at, $zero, 0x8
    /* F0DAC 800E1DFC 10410003 */  beq        $v0, $at, .L800E1E0C_F0DBC
    /* F0DB0 800E1E00 24010010 */   addiu     $at, $zero, 0x10
    /* F0DB4 800E1E04 14410028 */  bne        $v0, $at, .L800E1EA8_F0E58
    /* F0DB8 800E1E08 00000000 */   nop
  .L800E1E0C_F0DBC:
    /* F0DBC 800E1E0C 10000026 */  b          .L800E1EA8_F0E58
    /* F0DC0 800E1E10 24030001 */   addiu     $v1, $zero, 0x1
  .L800E1E14_F0DC4:
    /* F0DC4 800E1E14 8D0D0000 */  lw         $t5, 0x0($t0)
    /* F0DC8 800E1E18 91AE001A */  lbu        $t6, 0x1A($t5)
    /* F0DCC 800E1E1C 25CFFFFB */  addiu      $t7, $t6, -0x5
    /* F0DD0 800E1E20 2DE1000C */  sltiu      $at, $t7, 0xC
    /* F0DD4 800E1E24 10200020 */  beqz       $at, .L800E1EA8_F0E58
    /* F0DD8 800E1E28 000F7880 */   sll       $t7, $t7, 2
    /* F0DDC 800E1E2C 3C018014 */  lui        $at, %hi(jtbl_80144194_overlay_gameplay_outside)
    /* F0DE0 800E1E30 002F0821 */  addu       $at, $at, $t7
    /* F0DE4 800E1E34 8C2F4194 */  lw         $t7, %lo(jtbl_80144194_overlay_gameplay_outside)($at)
    /* F0DE8 800E1E38 01E00008 */  jr         $t7
    /* F0DEC 800E1E3C 00000000 */   nop
    /* F0DF0 800E1E40 10000019 */  b          .L800E1EA8_F0E58
    /* F0DF4 800E1E44 24030001 */   addiu     $v1, $zero, 0x1
  .L800E1E48_F0DF8:
    /* F0DF8 800E1E48 8D190000 */  lw         $t9, 0x0($t0)
    /* F0DFC 800E1E4C 24010005 */  addiu      $at, $zero, 0x5
    /* F0E00 800E1E50 9322001A */  lbu        $v0, 0x1A($t9)
    /* F0E04 800E1E54 10440005 */  beq        $v0, $a0, .L800E1E6C_F0E1C
    /* F0E08 800E1E58 00000000 */   nop
    /* F0E0C 800E1E5C 10410003 */  beq        $v0, $at, .L800E1E6C_F0E1C
    /* F0E10 800E1E60 2401000E */   addiu     $at, $zero, 0xE
    /* F0E14 800E1E64 14410010 */  bne        $v0, $at, .L800E1EA8_F0E58
    /* F0E18 800E1E68 00000000 */   nop
  .L800E1E6C_F0E1C:
    /* F0E1C 800E1E6C 1000000E */  b          .L800E1EA8_F0E58
    /* F0E20 800E1E70 24030001 */   addiu     $v1, $zero, 0x1
    /* F0E24 800E1E74 8D180000 */  lw         $t8, 0x0($t0)
  .L800E1E78_F0E28:
    /* F0E28 800E1E78 24010011 */  addiu      $at, $zero, 0x11
    /* F0E2C 800E1E7C 9302001A */  lbu        $v0, 0x1A($t8)
    /* F0E30 800E1E80 50450006 */  beql       $v0, $a1, .L800E1E9C_F0E4C
    /* F0E34 800E1E84 240A0001 */   addiu     $t2, $zero, 0x1
    /* F0E38 800E1E88 50410007 */  beql       $v0, $at, .L800E1EA8_F0E58
    /* F0E3C 800E1E8C 24030001 */   addiu     $v1, $zero, 0x1
    /* F0E40 800E1E90 10000005 */  b          .L800E1EA8_F0E58
    /* F0E44 800E1E94 00000000 */   nop
    /* F0E48 800E1E98 240A0001 */  addiu      $t2, $zero, 0x1
  .L800E1E9C_F0E4C:
    /* F0E4C 800E1E9C 10000002 */  b          .L800E1EA8_F0E58
    /* F0E50 800E1EA0 24030001 */   addiu     $v1, $zero, 0x1
    /* F0E54 800E1EA4 24030001 */  addiu      $v1, $zero, 0x1
  .L800E1EA8_F0E58:
    /* F0E58 800E1EA8 10600005 */  beqz       $v1, .L800E1EC0_F0E70
    /* F0E5C 800E1EAC 93AB002F */   lbu       $t3, 0x2F($sp)
    /* F0E60 800E1EB0 296100C9 */  slti       $at, $t3, 0xC9
    /* F0E64 800E1EB4 14200002 */  bnez       $at, .L800E1EC0_F0E70
    /* F0E68 800E1EB8 240500C8 */   addiu     $a1, $zero, 0xC8
    /* F0E6C 800E1EBC A3A5002F */  sb         $a1, 0x2F($sp)
  .L800E1EC0_F0E70:
    /* F0E70 800E1EC0 14600004 */  bnez       $v1, .L800E1ED4_F0E84
    /* F0E74 800E1EC4 93A5002F */   lbu       $a1, 0x2F($sp)
    /* F0E78 800E1EC8 28A100A7 */  slti       $at, $a1, 0xA7
    /* F0E7C 800E1ECC 54200006 */  bnel       $at, $zero, .L800E1EE8_F0E98
    /* F0E80 800E1ED0 8D0D0000 */   lw        $t5, 0x0($t0)
  .L800E1ED4_F0E84:
    /* F0E84 800E1ED4 10600022 */  beqz       $v1, .L800E1F60_F0F10
    /* F0E88 800E1ED8 28A100C9 */   slti      $at, $a1, 0xC9
    /* F0E8C 800E1EDC 50200021 */  beql       $at, $zero, .L800E1F64_F0F14
    /* F0E90 800E1EE0 8FBF0014 */   lw        $ra, 0x14($sp)
    /* F0E94 800E1EE4 8D0D0000 */  lw         $t5, 0x0($t0)
  .L800E1EE8_F0E98:
    /* F0E98 800E1EE8 00096080 */  sll        $t4, $t1, 2
    /* F0E9C 800E1EEC 01896023 */  subu       $t4, $t4, $t1
    /* F0EA0 800E1EF0 91AE001A */  lbu        $t6, 0x1A($t5)
    /* F0EA4 800E1EF4 000C60C0 */  sll        $t4, $t4, 3
    /* F0EA8 800E1EF8 01896023 */  subu       $t4, $t4, $t1
    /* F0EAC 800E1EFC 000C6080 */  sll        $t4, $t4, 2
    /* F0EB0 800E1F00 000E7880 */  sll        $t7, $t6, 2
    /* F0EB4 800E1F04 018FC821 */  addu       $t9, $t4, $t7
    /* F0EB8 800E1F08 3C078014 */  lui        $a3, %hi(D_8013DAB6)
    /* F0EBC 800E1F0C 00F93821 */  addu       $a3, $a3, $t9
    /* F0EC0 800E1F10 80E7DAB6 */  lb         $a3, %lo(D_8013DAB6)($a3)
    /* F0EC4 800E1F14 AFAA0024 */  sw         $t2, 0x24($sp)
    /* F0EC8 800E1F18 A3A5002F */  sb         $a1, 0x2F($sp)
    /* F0ECC 800E1F1C 00073400 */  sll        $a2, $a3, 16
    /* F0ED0 800E1F20 0006C403 */  sra        $t8, $a2, 16
    /* F0ED4 800E1F24 03003025 */  or         $a2, $t8, $zero
    /* F0ED8 800E1F28 97A4002A */  lhu        $a0, 0x2A($sp)
    /* F0EDC 800E1F2C 0C037ADF */  jal        func_800DEB7C_EDB2C
    /* F0EE0 800E1F30 A7A7001E */   sh        $a3, 0x1E($sp)
    /* F0EE4 800E1F34 87A7001E */  lh         $a3, 0x1E($sp)
    /* F0EE8 800E1F38 8FAA0024 */  lw         $t2, 0x24($sp)
    /* F0EEC 800E1F3C 50E00009 */  beql       $a3, $zero, .L800E1F64_F0F14
    /* F0EF0 800E1F40 8FBF0014 */   lw        $ra, 0x14($sp)
    /* F0EF4 800E1F44 15400006 */  bnez       $t2, .L800E1F60_F0F10
    /* F0EF8 800E1F48 97A4002A */   lhu       $a0, 0x2A($sp)
    /* F0EFC 800E1F4C 00073023 */  negu       $a2, $a3
    /* F0F00 800E1F50 00065C00 */  sll        $t3, $a2, 16
    /* F0F04 800E1F54 000B3403 */  sra        $a2, $t3, 16
    /* F0F08 800E1F58 0C037ADF */  jal        func_800DEB7C_EDB2C
    /* F0F0C 800E1F5C 93A5002F */   lbu       $a1, 0x2F($sp)
  .L800E1F60_F0F10:
    /* F0F10 800E1F60 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800E1F64_F0F14:
    /* F0F14 800E1F64 27BD0028 */  addiu      $sp, $sp, 0x28
    /* F0F18 800E1F68 03E00008 */  jr         $ra
    /* F0F1C 800E1F6C 00000000 */   nop
endlabel func_800E1D48_F0CF8
