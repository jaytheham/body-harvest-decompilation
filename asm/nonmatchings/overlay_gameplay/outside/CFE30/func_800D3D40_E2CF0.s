nonmatching func_800D3D40_E2CF0, 0xFC

glabel func_800D3D40_E2CF0
    /* E2CF0 800D3D40 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* E2CF4 800D3D44 AFB00018 */  sw         $s0, 0x18($sp)
    /* E2CF8 800D3D48 3C108015 */  lui        $s0, %hi(D_801542A6)
    /* E2CFC 800D3D4C 861042A6 */  lh         $s0, %lo(D_801542A6)($s0)
    /* E2D00 800D3D50 AFB5002C */  sw         $s5, 0x2C($sp)
    /* E2D04 800D3D54 2415FFFB */  addiu      $s5, $zero, -0x5
    /* E2D08 800D3D58 AFBF0034 */  sw         $ra, 0x34($sp)
    /* E2D0C 800D3D5C AFB60030 */  sw         $s6, 0x30($sp)
    /* E2D10 800D3D60 AFB40028 */  sw         $s4, 0x28($sp)
    /* E2D14 800D3D64 AFB30024 */  sw         $s3, 0x24($sp)
    /* E2D18 800D3D68 AFB20020 */  sw         $s2, 0x20($sp)
    /* E2D1C 800D3D6C 12150003 */  beq        $s0, $s5, .L800D3D7C_E2D2C
    /* E2D20 800D3D70 AFB1001C */   sw        $s1, 0x1C($sp)
    /* E2D24 800D3D74 2416FFFA */  addiu      $s6, $zero, -0x6
    /* E2D28 800D3D78 16160005 */  bne        $s0, $s6, .L800D3D90_E2D40
  .L800D3D7C_E2D2C:
    /* E2D2C 800D3D7C 2404000E */   addiu     $a0, $zero, 0xE
    /* E2D30 800D3D80 0C030506 */  jal        func_800C1418_D03C8
    /* E2D34 800D3D84 24050001 */   addiu     $a1, $zero, 0x1
    /* E2D38 800D3D88 10000023 */  b          .L800D3E18_E2DC8
    /* E2D3C 800D3D8C 8FBF0034 */   lw        $ra, 0x34($sp)
  .L800D3D90_E2D40:
    /* E2D40 800D3D90 52150021 */  beql       $s0, $s5, .L800D3E18_E2DC8
    /* E2D44 800D3D94 8FBF0034 */   lw        $ra, 0x34($sp)
    /* E2D48 800D3D98 1216001E */  beq        $s0, $s6, .L800D3E14_E2DC4
    /* E2D4C 800D3D9C 24140009 */   addiu     $s4, $zero, 0x9
    /* E2D50 800D3DA0 3C128015 */  lui        $s2, %hi(D_80154318)
    /* E2D54 800D3DA4 26524318 */  addiu      $s2, $s2, %lo(D_80154318)
    /* E2D58 800D3DA8 2413001C */  addiu      $s3, $zero, 0x1C
  .L800D3DAC_E2D5C:
    /* E2D5C 800D3DAC 02130019 */  multu      $s0, $s3
    /* E2D60 800D3DB0 00102400 */  sll        $a0, $s0, 16
    /* E2D64 800D3DB4 0004C403 */  sra        $t8, $a0, 16
    /* E2D68 800D3DB8 03002025 */  or         $a0, $t8, $zero
    /* E2D6C 800D3DBC 2405000E */  addiu      $a1, $zero, 0xE
    /* E2D70 800D3DC0 24060001 */  addiu      $a2, $zero, 0x1
    /* E2D74 800D3DC4 00007012 */  mflo       $t6
    /* E2D78 800D3DC8 024E1021 */  addu       $v0, $s2, $t6
    /* E2D7C 800D3DCC 904F0014 */  lbu        $t7, 0x14($v0)
    /* E2D80 800D3DD0 24430008 */  addiu      $v1, $v0, 0x8
    /* E2D84 800D3DD4 568F0008 */  bnel       $s4, $t7, .L800D3DF8_E2DA8
    /* E2D88 800D3DD8 9068000C */   lbu       $t0, 0xC($v1)
    /* E2D8C 800D3DDC 0C030693 */  jal        func_800C1A4C_D09FC
    /* E2D90 800D3DE0 84510004 */   lh        $s1, 0x4($v0)
    /* E2D94 800D3DE4 00118400 */  sll        $s0, $s1, 16
    /* E2D98 800D3DE8 0010CC03 */  sra        $t9, $s0, 16
    /* E2D9C 800D3DEC 10000005 */  b          .L800D3E04_E2DB4
    /* E2DA0 800D3DF0 03208025 */   or        $s0, $t9, $zero
    /* E2DA4 800D3DF4 9068000C */  lbu        $t0, 0xC($v1)
  .L800D3DF8_E2DA8:
    /* E2DA8 800D3DF8 25090001 */  addiu      $t1, $t0, 0x1
    /* E2DAC 800D3DFC A069000C */  sb         $t1, 0xC($v1)
    /* E2DB0 800D3E00 84500004 */  lh         $s0, 0x4($v0)
  .L800D3E04_E2DB4:
    /* E2DB4 800D3E04 52150004 */  beql       $s0, $s5, .L800D3E18_E2DC8
    /* E2DB8 800D3E08 8FBF0034 */   lw        $ra, 0x34($sp)
    /* E2DBC 800D3E0C 1616FFE7 */  bne        $s0, $s6, .L800D3DAC_E2D5C
    /* E2DC0 800D3E10 00000000 */   nop
  .L800D3E14_E2DC4:
    /* E2DC4 800D3E14 8FBF0034 */  lw         $ra, 0x34($sp)
  .L800D3E18_E2DC8:
    /* E2DC8 800D3E18 8FB00018 */  lw         $s0, 0x18($sp)
    /* E2DCC 800D3E1C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* E2DD0 800D3E20 8FB20020 */  lw         $s2, 0x20($sp)
    /* E2DD4 800D3E24 8FB30024 */  lw         $s3, 0x24($sp)
    /* E2DD8 800D3E28 8FB40028 */  lw         $s4, 0x28($sp)
    /* E2DDC 800D3E2C 8FB5002C */  lw         $s5, 0x2C($sp)
    /* E2DE0 800D3E30 8FB60030 */  lw         $s6, 0x30($sp)
    /* E2DE4 800D3E34 03E00008 */  jr         $ra
    /* E2DE8 800D3E38 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800D3D40_E2CF0
