nonmatching func_800C2D50_D1D00, 0x194

glabel func_800C2D50_D1D00
    /* D1D00 800C2D50 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* D1D04 800C2D54 AFB1001C */  sw         $s1, 0x1C($sp)
    /* D1D08 800C2D58 30F100FF */  andi       $s1, $a3, 0xFF
    /* D1D0C 800C2D5C AFBF0024 */  sw         $ra, 0x24($sp)
    /* D1D10 800C2D60 AFB20020 */  sw         $s2, 0x20($sp)
    /* D1D14 800C2D64 AFB00018 */  sw         $s0, 0x18($sp)
    /* D1D18 800C2D68 AFA40028 */  sw         $a0, 0x28($sp)
    /* D1D1C 800C2D6C AFA5002C */  sw         $a1, 0x2C($sp)
    /* D1D20 800C2D70 AFA60030 */  sw         $a2, 0x30($sp)
    /* D1D24 800C2D74 16200003 */  bnez       $s1, .L800C2D84_D1D34
    /* D1D28 800C2D78 AFA70034 */   sw        $a3, 0x34($sp)
    /* D1D2C 800C2D7C 10000053 */  b          .L800C2ECC_D1E7C
    /* D1D30 800C2D80 240200FB */   addiu     $v0, $zero, 0xFB
  .L800C2D84_D1D34:
    /* D1D34 800C2D84 0C030566 */  jal        func_800C1598_D0548
    /* D1D38 800C2D88 24040001 */   addiu     $a0, $zero, 0x1
    /* D1D3C 800C2D8C 240100FB */  addiu      $at, $zero, 0xFB
    /* D1D40 800C2D90 1041004D */  beq        $v0, $at, .L800C2EC8_D1E78
    /* D1D44 800C2D94 305200FF */   andi      $s2, $v0, 0xFF
    /* D1D48 800C2D98 0C030634 */  jal        func_800C18D0_D0880
    /* D1D4C 800C2D9C 324400FF */   andi      $a0, $s2, 0xFF
    /* D1D50 800C2DA0 2401FFFD */  addiu      $at, $zero, -0x3
    /* D1D54 800C2DA4 14410009 */  bne        $v0, $at, .L800C2DCC_D1D7C
    /* D1D58 800C2DA8 00127880 */   sll       $t7, $s2, 2
    /* D1D5C 800C2DAC 0C0304E1 */  jal        func_800C1384_D0334
    /* D1D60 800C2DB0 324400FF */   andi      $a0, $s2, 0xFF
    /* D1D64 800C2DB4 3C048014 */  lui        $a0, %hi(D_801433D8)
    /* D1D68 800C2DB8 241200FB */  addiu      $s2, $zero, 0xFB
    /* D1D6C 800C2DBC 0C00731B */  jal        osSyncPrintf
    /* D1D70 800C2DC0 248433D8 */   addiu     $a0, $a0, %lo(D_801433D8)
    /* D1D74 800C2DC4 10000041 */  b          .L800C2ECC_D1E7C
    /* D1D78 800C2DC8 02401025 */   or        $v0, $s2, $zero
  .L800C2DCC_D1D7C:
    /* D1D7C 800C2DCC 00023400 */  sll        $a2, $v0, 16
    /* D1D80 800C2DD0 0006CC03 */  sra        $t9, $a2, 16
    /* D1D84 800C2DD4 01F27823 */  subu       $t7, $t7, $s2
    /* D1D88 800C2DD8 3C188015 */  lui        $t8, %hi(D_80154088)
    /* D1D8C 800C2DDC 27184088 */  addiu      $t8, $t8, %lo(D_80154088)
    /* D1D90 800C2DE0 000F7880 */  sll        $t7, $t7, 2
    /* D1D94 800C2DE4 001950C0 */  sll        $t2, $t9, 3
    /* D1D98 800C2DE8 01F82021 */  addu       $a0, $t7, $t8
    /* D1D9C 800C2DEC 01595023 */  subu       $t2, $t2, $t9
    /* D1DA0 800C2DF0 3C0B8015 */  lui        $t3, %hi(D_80154318)
    /* D1DA4 800C2DF4 93AF003B */  lbu        $t7, 0x3B($sp)
    /* D1DA8 800C2DF8 256B4318 */  addiu      $t3, $t3, %lo(D_80154318)
    /* D1DAC 800C2DFC 000A5080 */  sll        $t2, $t2, 2
    /* D1DB0 800C2E00 014B1821 */  addu       $v1, $t2, $t3
    /* D1DB4 800C2E04 90880001 */  lbu        $t0, 0x1($a0)
    /* D1DB8 800C2E08 A499000A */  sh         $t9, 0xA($a0)
    /* D1DBC 800C2E0C 3C198014 */  lui        $t9, %hi(D_8013DFE4)
    /* D1DC0 800C2E10 000FC080 */  sll        $t8, $t7, 2
    /* D1DC4 800C2E14 2739DFE4 */  addiu      $t9, $t9, %lo(D_8013DFE4)
    /* D1DC8 800C2E18 030FC023 */  subu       $t8, $t8, $t7
    /* D1DCC 800C2E1C 03192821 */  addu       $a1, $t8, $t9
    /* D1DD0 800C2E20 35090001 */  ori        $t1, $t0, 0x1
    /* D1DD4 800C2E24 A0890001 */  sb         $t1, 0x1($a0)
    /* D1DD8 800C2E28 87AC002A */  lh         $t4, 0x2A($sp)
    /* D1DDC 800C2E2C 87AD002E */  lh         $t5, 0x2E($sp)
    /* D1DE0 800C2E30 87AE0032 */  lh         $t6, 0x32($sp)
    /* D1DE4 800C2E34 90A80000 */  lbu        $t0, 0x0($a1)
    /* D1DE8 800C2E38 90A90001 */  lbu        $t1, 0x1($a1)
    /* D1DEC 800C2E3C 90AA0002 */  lbu        $t2, 0x2($a1)
    /* D1DF0 800C2E40 93AB003F */  lbu        $t3, 0x3F($sp)
    /* D1DF4 800C2E44 A4710002 */  sh         $s1, 0x2($v1)
    /* D1DF8 800C2E48 241100E6 */  addiu      $s1, $zero, 0xE6
    /* D1DFC 800C2E4C 00008025 */  or         $s0, $zero, $zero
    /* D1E00 800C2E50 A46C0008 */  sh         $t4, 0x8($v1)
    /* D1E04 800C2E54 A46D000A */  sh         $t5, 0xA($v1)
    /* D1E08 800C2E58 A46E000C */  sh         $t6, 0xC($v1)
    /* D1E0C 800C2E5C A068000E */  sb         $t0, 0xE($v1)
    /* D1E10 800C2E60 A069000F */  sb         $t1, 0xF($v1)
    /* D1E14 800C2E64 A06A0010 */  sb         $t2, 0x10($v1)
    /* D1E18 800C2E68 A06B0011 */  sb         $t3, 0x11($v1)
  .L800C2E6C_D1E1C:
    /* D1E1C 800C2E6C 0C000E38 */  jal        func_800038E0_44E0
    /* D1E20 800C2E70 00000000 */   nop
    /* D1E24 800C2E74 0051001A */  div        $zero, $v0, $s1
    /* D1E28 800C2E78 00002810 */  mfhi       $a1
    /* D1E2C 800C2E7C 30AC00FF */  andi       $t4, $a1, 0xFF
    /* D1E30 800C2E80 01802825 */  or         $a1, $t4, $zero
    /* D1E34 800C2E84 324400FF */  andi       $a0, $s2, 0xFF
    /* D1E38 800C2E88 16200002 */  bnez       $s1, .L800C2E94_D1E44
    /* D1E3C 800C2E8C 00000000 */   nop
    /* D1E40 800C2E90 0007000D */  break      7
  .L800C2E94_D1E44:
    /* D1E44 800C2E94 2401FFFF */  addiu      $at, $zero, -0x1
    /* D1E48 800C2E98 16210004 */  bne        $s1, $at, .L800C2EAC_D1E5C
    /* D1E4C 800C2E9C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* D1E50 800C2EA0 14410002 */  bne        $v0, $at, .L800C2EAC_D1E5C
    /* D1E54 800C2EA4 00000000 */   nop
    /* D1E58 800C2EA8 0006000D */  break      6
  .L800C2EAC_D1E5C:
    /* D1E5C 800C2EAC 0C030AE4 */  jal        func_800C2B90_D1B40
    /* D1E60 800C2EB0 00000000 */   nop
    /* D1E64 800C2EB4 26100001 */  addiu      $s0, $s0, 0x1
    /* D1E68 800C2EB8 320D00FF */  andi       $t5, $s0, 0xFF
    /* D1E6C 800C2EBC 29A10008 */  slti       $at, $t5, 0x8
    /* D1E70 800C2EC0 1420FFEA */  bnez       $at, .L800C2E6C_D1E1C
    /* D1E74 800C2EC4 01A08025 */   or        $s0, $t5, $zero
  .L800C2EC8_D1E78:
    /* D1E78 800C2EC8 02401025 */  or         $v0, $s2, $zero
  .L800C2ECC_D1E7C:
    /* D1E7C 800C2ECC 8FBF0024 */  lw         $ra, 0x24($sp)
    /* D1E80 800C2ED0 8FB00018 */  lw         $s0, 0x18($sp)
    /* D1E84 800C2ED4 8FB1001C */  lw         $s1, 0x1C($sp)
    /* D1E88 800C2ED8 8FB20020 */  lw         $s2, 0x20($sp)
    /* D1E8C 800C2EDC 03E00008 */  jr         $ra
    /* D1E90 800C2EE0 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_800C2D50_D1D00
