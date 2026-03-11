nonmatching func_800C3D88_D2D38, 0xA4

glabel func_800C3D88_D2D38
    /* D2D38 800C3D88 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* D2D3C 800C3D8C 00075400 */  sll        $t2, $a3, 16
    /* D2D40 800C3D90 000A5C03 */  sra        $t3, $t2, 16
    /* D2D44 800C3D94 AFA40018 */  sw         $a0, 0x18($sp)
    /* D2D48 800C3D98 00047400 */  sll        $t6, $a0, 16
    /* D2D4C 800C3D9C 0005C400 */  sll        $t8, $a1, 16
    /* D2D50 800C3DA0 00064400 */  sll        $t0, $a2, 16
    /* D2D54 800C3DA4 2401FFFD */  addiu      $at, $zero, -0x3
    /* D2D58 800C3DA8 00084C03 */  sra        $t1, $t0, 16
    /* D2D5C 800C3DAC 0018CC03 */  sra        $t9, $t8, 16
    /* D2D60 800C3DB0 000E2403 */  sra        $a0, $t6, 16
    /* D2D64 800C3DB4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* D2D68 800C3DB8 AFA5001C */  sw         $a1, 0x1C($sp)
    /* D2D6C 800C3DBC AFA60020 */  sw         $a2, 0x20($sp)
    /* D2D70 800C3DC0 11610013 */  beq        $t3, $at, .L800C3E10_D2DC0
    /* D2D74 800C3DC4 AFA70024 */   sw        $a3, 0x24($sp)
    /* D2D78 800C3DC8 000B60C0 */  sll        $t4, $t3, 3
    /* D2D7C 800C3DCC 018B6023 */  subu       $t4, $t4, $t3
    /* D2D80 800C3DD0 3C0D8015 */  lui        $t5, %hi(D_80154318)
    /* D2D84 800C3DD4 25AD4318 */  addiu      $t5, $t5, %lo(D_80154318)
    /* D2D88 800C3DD8 000C6080 */  sll        $t4, $t4, 2
    /* D2D8C 800C3DDC 018D1021 */  addu       $v0, $t4, $t5
    /* D2D90 800C3DE0 904E0000 */  lbu        $t6, 0x0($v0)
    /* D2D94 800C3DE4 31CF0001 */  andi       $t7, $t6, 0x1
    /* D2D98 800C3DE8 11E00009 */  beqz       $t7, .L800C3E10_D2DC0
    /* D2D9C 800C3DEC 00000000 */   nop
    /* D2DA0 800C3DF0 90580001 */  lbu        $t8, 0x1($v0)
    /* D2DA4 800C3DF4 2401000C */  addiu      $at, $zero, 0xC
    /* D2DA8 800C3DF8 17010005 */  bne        $t8, $at, .L800C3E10_D2DC0
    /* D2DAC 800C3DFC 00000000 */   nop
    /* D2DB0 800C3E00 A4440008 */  sh         $a0, 0x8($v0)
    /* D2DB4 800C3E04 A459000A */  sh         $t9, 0xA($v0)
    /* D2DB8 800C3E08 10000004 */  b          .L800C3E1C_D2DCC
    /* D2DBC 800C3E0C A449000C */   sh        $t1, 0xC($v0)
  .L800C3E10_D2DC0:
    /* D2DC0 800C3E10 3C048014 */  lui        $a0, %hi(D_801434C0)
    /* D2DC4 800C3E14 0C00731B */  jal        osSyncPrintf
    /* D2DC8 800C3E18 248434C0 */   addiu     $a0, $a0, %lo(D_801434C0)
  .L800C3E1C_D2DCC:
    /* D2DCC 800C3E1C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* D2DD0 800C3E20 27BD0018 */  addiu      $sp, $sp, 0x18
    /* D2DD4 800C3E24 03E00008 */  jr         $ra
    /* D2DD8 800C3E28 00000000 */   nop
endlabel func_800C3D88_D2D38
