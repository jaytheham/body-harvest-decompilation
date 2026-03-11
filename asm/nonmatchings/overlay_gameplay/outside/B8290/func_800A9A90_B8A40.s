nonmatching func_800A9A90_B8A40, 0x330

glabel func_800A9A90_B8A40
    /* B8A40 800A9A90 308E00FF */  andi       $t6, $a0, 0xFF
    /* B8A44 800A9A94 240B0050 */  addiu      $t3, $zero, 0x50
    /* B8A48 800A9A98 01CB0019 */  multu      $t6, $t3
    /* B8A4C 800A9A9C 3C0A8005 */  lui        $t2, %hi(alienInstances)
    /* B8A50 800A9AA0 254A8198 */  addiu      $t2, $t2, %lo(alienInstances)
    /* B8A54 800A9AA4 3C0E8005 */  lui        $t6, %hi(D_80052A8C)
    /* B8A58 800A9AA8 8DCE2A8C */  lw         $t6, %lo(D_80052A8C)($t6)
    /* B8A5C 800A9AAC 24010064 */  addiu      $at, $zero, 0x64
    /* B8A60 800A9AB0 27BDFFF8 */  addiu      $sp, $sp, -0x8
    /* B8A64 800A9AB4 AFB00004 */  sw         $s0, 0x4($sp)
    /* B8A68 800A9AB8 44866000 */  mtc1       $a2, $f12
    /* B8A6C 800A9ABC 3C0C8014 */  lui        $t4, %hi(D_8013D8D8)
    /* B8A70 800A9AC0 00007812 */  mflo       $t7
    /* B8A74 800A9AC4 014F1821 */  addu       $v1, $t2, $t7
    /* B8A78 800A9AC8 90780025 */  lbu        $t8, 0x25($v1)
    /* B8A7C 800A9ACC 00A08025 */  or         $s0, $a1, $zero
    /* B8A80 800A9AD0 AFA40008 */  sw         $a0, 0x8($sp)
    /* B8A84 800A9AD4 030B0019 */  multu      $t8, $t3
    /* B8A88 800A9AD8 9062001A */  lbu        $v0, 0x1A($v1)
    /* B8A8C 800A9ADC 258CD8D8 */  addiu      $t4, $t4, %lo(D_8013D8D8)
    /* B8A90 800A9AE0 24070001 */  addiu      $a3, $zero, 0x1
    /* B8A94 800A9AE4 0000C812 */  mflo       $t9
    /* B8A98 800A9AE8 01593021 */  addu       $a2, $t2, $t9
    /* B8A9C 800A9AEC 00000000 */  nop
    /* B8AA0 800A9AF0 01C1001B */  divu       $zero, $t6, $at
    /* B8AA4 800A9AF4 00007810 */  mfhi       $t7
    /* B8AA8 800A9AF8 55E000AE */  bnel       $t7, $zero, .L800A9DB4_B8D64
    /* B8AAC 800A9AFC 00001025 */   or        $v0, $zero, $zero
    /* B8AB0 800A9B00 8465001C */  lh         $a1, 0x1C($v1)
    /* B8AB4 800A9B04 8D980000 */  lw         $t8, 0x0($t4)
    /* B8AB8 800A9B08 2A010002 */  slti       $at, $s0, 0x2
    /* B8ABC 800A9B0C 1420004D */  bnez       $at, .L800A9C44_B8BF4
    /* B8AC0 800A9B10 03052023 */   subu      $a0, $t8, $a1
    /* B8AC4 800A9B14 2608FFFF */  addiu      $t0, $s0, -0x1
    /* B8AC8 800A9B18 31190003 */  andi       $t9, $t0, 0x3
    /* B8ACC 800A9B1C 13200013 */  beqz       $t9, .L800A9B6C_B8B1C
    /* B8AD0 800A9B20 27290001 */   addiu     $t1, $t9, 0x1
    /* B8AD4 800A9B24 00C71821 */  addu       $v1, $a2, $a3
    /* B8AD8 800A9B28 240D00FF */  addiu      $t5, $zero, 0xFF
  .L800A9B2C_B8ADC:
    /* B8ADC 800A9B2C 9068FFFF */  lbu        $t0, -0x1($v1)
    /* B8AE0 800A9B30 51A8000B */  beql       $t5, $t0, .L800A9B60_B8B10
    /* B8AE4 800A9B34 24E70001 */   addiu     $a3, $a3, 0x1
    /* B8AE8 800A9B38 010B0019 */  multu      $t0, $t3
    /* B8AEC 800A9B3C 00077080 */  sll        $t6, $a3, 2
    /* B8AF0 800A9B40 018E7821 */  addu       $t7, $t4, $t6
    /* B8AF4 800A9B44 8DF80000 */  lw         $t8, 0x0($t7)
    /* B8AF8 800A9B48 0098C821 */  addu       $t9, $a0, $t8
    /* B8AFC 800A9B4C 00007012 */  mflo       $t6
    /* B8B00 800A9B50 014E7821 */  addu       $t7, $t2, $t6
    /* B8B04 800A9B54 85F8001C */  lh         $t8, 0x1C($t7)
    /* B8B08 800A9B58 03382023 */  subu       $a0, $t9, $t8
    /* B8B0C 800A9B5C 24E70001 */  addiu      $a3, $a3, 0x1
  .L800A9B60_B8B10:
    /* B8B10 800A9B60 1527FFF2 */  bne        $t1, $a3, .L800A9B2C_B8ADC
    /* B8B14 800A9B64 24630001 */   addiu     $v1, $v1, 0x1
    /* B8B18 800A9B68 10F00035 */  beq        $a3, $s0, .L800A9C40_B8BF0
  .L800A9B6C_B8B1C:
    /* B8B1C 800A9B6C 240D00FF */   addiu     $t5, $zero, 0xFF
    /* B8B20 800A9B70 00C71821 */  addu       $v1, $a2, $a3
  .L800A9B74_B8B24:
    /* B8B24 800A9B74 9068FFFF */  lbu        $t0, -0x1($v1)
    /* B8B28 800A9B78 51A8000B */  beql       $t5, $t0, .L800A9BA8_B8B58
    /* B8B2C 800A9B7C 90680000 */   lbu       $t0, 0x0($v1)
    /* B8B30 800A9B80 010B0019 */  multu      $t0, $t3
    /* B8B34 800A9B84 00077080 */  sll        $t6, $a3, 2
    /* B8B38 800A9B88 018E7821 */  addu       $t7, $t4, $t6
    /* B8B3C 800A9B8C 8DF90000 */  lw         $t9, 0x0($t7)
    /* B8B40 800A9B90 0099C021 */  addu       $t8, $a0, $t9
    /* B8B44 800A9B94 00007012 */  mflo       $t6
    /* B8B48 800A9B98 014E7821 */  addu       $t7, $t2, $t6
    /* B8B4C 800A9B9C 85F9001C */  lh         $t9, 0x1C($t7)
    /* B8B50 800A9BA0 03192023 */  subu       $a0, $t8, $t9
    /* B8B54 800A9BA4 90680000 */  lbu        $t0, 0x0($v1)
  .L800A9BA8_B8B58:
    /* B8B58 800A9BA8 51A8000B */  beql       $t5, $t0, .L800A9BD8_B8B88
    /* B8B5C 800A9BAC 90680001 */   lbu       $t0, 0x1($v1)
    /* B8B60 800A9BB0 010B0019 */  multu      $t0, $t3
    /* B8B64 800A9BB4 00077080 */  sll        $t6, $a3, 2
    /* B8B68 800A9BB8 018E7821 */  addu       $t7, $t4, $t6
    /* B8B6C 800A9BBC 8DF80004 */  lw         $t8, 0x4($t7)
    /* B8B70 800A9BC0 0098C821 */  addu       $t9, $a0, $t8
    /* B8B74 800A9BC4 00007012 */  mflo       $t6
    /* B8B78 800A9BC8 014E7821 */  addu       $t7, $t2, $t6
    /* B8B7C 800A9BCC 85F8001C */  lh         $t8, 0x1C($t7)
    /* B8B80 800A9BD0 03382023 */  subu       $a0, $t9, $t8
    /* B8B84 800A9BD4 90680001 */  lbu        $t0, 0x1($v1)
  .L800A9BD8_B8B88:
    /* B8B88 800A9BD8 51A8000B */  beql       $t5, $t0, .L800A9C08_B8BB8
    /* B8B8C 800A9BDC 90680002 */   lbu       $t0, 0x2($v1)
    /* B8B90 800A9BE0 010B0019 */  multu      $t0, $t3
    /* B8B94 800A9BE4 00077080 */  sll        $t6, $a3, 2
    /* B8B98 800A9BE8 018E7821 */  addu       $t7, $t4, $t6
    /* B8B9C 800A9BEC 8DF90008 */  lw         $t9, 0x8($t7)
    /* B8BA0 800A9BF0 0099C021 */  addu       $t8, $a0, $t9
    /* B8BA4 800A9BF4 00007012 */  mflo       $t6
    /* B8BA8 800A9BF8 014E7821 */  addu       $t7, $t2, $t6
    /* B8BAC 800A9BFC 85F9001C */  lh         $t9, 0x1C($t7)
    /* B8BB0 800A9C00 03192023 */  subu       $a0, $t8, $t9
    /* B8BB4 800A9C04 90680002 */  lbu        $t0, 0x2($v1)
  .L800A9C08_B8BB8:
    /* B8BB8 800A9C08 51A8000B */  beql       $t5, $t0, .L800A9C38_B8BE8
    /* B8BBC 800A9C0C 24E70004 */   addiu     $a3, $a3, 0x4
    /* B8BC0 800A9C10 010B0019 */  multu      $t0, $t3
    /* B8BC4 800A9C14 00077080 */  sll        $t6, $a3, 2
    /* B8BC8 800A9C18 018E7821 */  addu       $t7, $t4, $t6
    /* B8BCC 800A9C1C 8DF8000C */  lw         $t8, 0xC($t7)
    /* B8BD0 800A9C20 0098C821 */  addu       $t9, $a0, $t8
    /* B8BD4 800A9C24 00007012 */  mflo       $t6
    /* B8BD8 800A9C28 014E7821 */  addu       $t7, $t2, $t6
    /* B8BDC 800A9C2C 85F8001C */  lh         $t8, 0x1C($t7)
    /* B8BE0 800A9C30 03382023 */  subu       $a0, $t9, $t8
    /* B8BE4 800A9C34 24E70004 */  addiu      $a3, $a3, 0x4
  .L800A9C38_B8BE8:
    /* B8BE8 800A9C38 14F0FFCE */  bne        $a3, $s0, .L800A9B74_B8B24
    /* B8BEC 800A9C3C 24630004 */   addiu     $v1, $v1, 0x4
  .L800A9C40_B8BF0:
    /* B8BF0 800A9C40 24070001 */  addiu      $a3, $zero, 0x1
  .L800A9C44_B8BF4:
    /* B8BF4 800A9C44 2A010002 */  slti       $at, $s0, 0x2
    /* B8BF8 800A9C48 240D00FF */  addiu      $t5, $zero, 0xFF
    /* B8BFC 800A9C4C 14200040 */  bnez       $at, .L800A9D50_B8D00
    /* B8C00 800A9C50 AD850000 */   sw        $a1, 0x0($t4)
    /* B8C04 800A9C54 2608FFFF */  addiu      $t0, $s0, -0x1
    /* B8C08 800A9C58 310E0003 */  andi       $t6, $t0, 0x3
    /* B8C0C 800A9C5C 11C00010 */  beqz       $t6, .L800A9CA0_B8C50
    /* B8C10 800A9C60 25C50001 */   addiu     $a1, $t6, 0x1
    /* B8C14 800A9C64 00C71821 */  addu       $v1, $a2, $a3
  .L800A9C68_B8C18:
    /* B8C18 800A9C68 9068FFFF */  lbu        $t0, -0x1($v1)
    /* B8C1C 800A9C6C 51A80009 */  beql       $t5, $t0, .L800A9C94_B8C44
    /* B8C20 800A9C70 24E70001 */   addiu     $a3, $a3, 0x1
    /* B8C24 800A9C74 010B0019 */  multu      $t0, $t3
    /* B8C28 800A9C78 00077080 */  sll        $t6, $a3, 2
    /* B8C2C 800A9C7C 00007812 */  mflo       $t7
    /* B8C30 800A9C80 014FC821 */  addu       $t9, $t2, $t7
    /* B8C34 800A9C84 8738001C */  lh         $t8, 0x1C($t9)
    /* B8C38 800A9C88 018E7821 */  addu       $t7, $t4, $t6
    /* B8C3C 800A9C8C ADF80000 */  sw         $t8, 0x0($t7)
    /* B8C40 800A9C90 24E70001 */  addiu      $a3, $a3, 0x1
  .L800A9C94_B8C44:
    /* B8C44 800A9C94 14A7FFF4 */  bne        $a1, $a3, .L800A9C68_B8C18
    /* B8C48 800A9C98 24630001 */   addiu     $v1, $v1, 0x1
    /* B8C4C 800A9C9C 10F0002C */  beq        $a3, $s0, .L800A9D50_B8D00
  .L800A9CA0_B8C50:
    /* B8C50 800A9CA0 00C71821 */   addu      $v1, $a2, $a3
  .L800A9CA4_B8C54:
    /* B8C54 800A9CA4 9068FFFF */  lbu        $t0, -0x1($v1)
    /* B8C58 800A9CA8 51A80009 */  beql       $t5, $t0, .L800A9CD0_B8C80
    /* B8C5C 800A9CAC 90680000 */   lbu       $t0, 0x0($v1)
    /* B8C60 800A9CB0 010B0019 */  multu      $t0, $t3
    /* B8C64 800A9CB4 00077880 */  sll        $t7, $a3, 2
    /* B8C68 800A9CB8 0000C812 */  mflo       $t9
    /* B8C6C 800A9CBC 01597021 */  addu       $t6, $t2, $t9
    /* B8C70 800A9CC0 85D8001C */  lh         $t8, 0x1C($t6)
    /* B8C74 800A9CC4 018FC821 */  addu       $t9, $t4, $t7
    /* B8C78 800A9CC8 AF380000 */  sw         $t8, 0x0($t9)
    /* B8C7C 800A9CCC 90680000 */  lbu        $t0, 0x0($v1)
  .L800A9CD0_B8C80:
    /* B8C80 800A9CD0 51A80009 */  beql       $t5, $t0, .L800A9CF8_B8CA8
    /* B8C84 800A9CD4 90680001 */   lbu       $t0, 0x1($v1)
    /* B8C88 800A9CD8 010B0019 */  multu      $t0, $t3
    /* B8C8C 800A9CDC 0007C880 */  sll        $t9, $a3, 2
    /* B8C90 800A9CE0 00007012 */  mflo       $t6
    /* B8C94 800A9CE4 014E7821 */  addu       $t7, $t2, $t6
    /* B8C98 800A9CE8 85F8001C */  lh         $t8, 0x1C($t7)
    /* B8C9C 800A9CEC 01997021 */  addu       $t6, $t4, $t9
    /* B8CA0 800A9CF0 ADD80004 */  sw         $t8, 0x4($t6)
    /* B8CA4 800A9CF4 90680001 */  lbu        $t0, 0x1($v1)
  .L800A9CF8_B8CA8:
    /* B8CA8 800A9CF8 51A80009 */  beql       $t5, $t0, .L800A9D20_B8CD0
    /* B8CAC 800A9CFC 90680002 */   lbu       $t0, 0x2($v1)
    /* B8CB0 800A9D00 010B0019 */  multu      $t0, $t3
    /* B8CB4 800A9D04 00077080 */  sll        $t6, $a3, 2
    /* B8CB8 800A9D08 00007812 */  mflo       $t7
    /* B8CBC 800A9D0C 014FC821 */  addu       $t9, $t2, $t7
    /* B8CC0 800A9D10 8738001C */  lh         $t8, 0x1C($t9)
    /* B8CC4 800A9D14 018E7821 */  addu       $t7, $t4, $t6
    /* B8CC8 800A9D18 ADF80008 */  sw         $t8, 0x8($t7)
    /* B8CCC 800A9D1C 90680002 */  lbu        $t0, 0x2($v1)
  .L800A9D20_B8CD0:
    /* B8CD0 800A9D20 51A80009 */  beql       $t5, $t0, .L800A9D48_B8CF8
    /* B8CD4 800A9D24 24E70004 */   addiu     $a3, $a3, 0x4
    /* B8CD8 800A9D28 010B0019 */  multu      $t0, $t3
    /* B8CDC 800A9D2C 00077880 */  sll        $t7, $a3, 2
    /* B8CE0 800A9D30 0000C812 */  mflo       $t9
    /* B8CE4 800A9D34 01597021 */  addu       $t6, $t2, $t9
    /* B8CE8 800A9D38 85D8001C */  lh         $t8, 0x1C($t6)
    /* B8CEC 800A9D3C 018FC821 */  addu       $t9, $t4, $t7
    /* B8CF0 800A9D40 AF38000C */  sw         $t8, 0xC($t9)
    /* B8CF4 800A9D44 24E70004 */  addiu      $a3, $a3, 0x4
  .L800A9D48_B8CF8:
    /* B8CF8 800A9D48 14F0FFD6 */  bne        $a3, $s0, .L800A9CA4_B8C54
    /* B8CFC 800A9D4C 24630004 */   addiu     $v1, $v1, 0x4
  .L800A9D50_B8D00:
    /* B8D00 800A9D50 00027080 */  sll        $t6, $v0, 2
    /* B8D04 800A9D54 01C27023 */  subu       $t6, $t6, $v0
    /* B8D08 800A9D58 000E7080 */  sll        $t6, $t6, 2
    /* B8D0C 800A9D5C 01C27021 */  addu       $t6, $t6, $v0
    /* B8D10 800A9D60 000E70C0 */  sll        $t6, $t6, 3
    /* B8D14 800A9D64 3C0F8025 */  lui        $t7, %hi(D_802566BA)
    /* B8D18 800A9D68 01EE7821 */  addu       $t7, $t7, $t6
    /* B8D1C 800A9D6C 95EF66BA */  lhu        $t7, %lo(D_802566BA)($t7)
    /* B8D20 800A9D70 44848000 */  mtc1       $a0, $f16
    /* B8D24 800A9D74 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* B8D28 800A9D78 448F2000 */  mtc1       $t7, $f4
    /* B8D2C 800A9D7C 468084A0 */  cvt.s.w    $f18, $f16
    /* B8D30 800A9D80 05E10004 */  bgez       $t7, .L800A9D94_B8D44
    /* B8D34 800A9D84 468021A0 */   cvt.s.w   $f6, $f4
    /* B8D38 800A9D88 44814000 */  mtc1       $at, $f8
    /* B8D3C 800A9D8C 00000000 */  nop
    /* B8D40 800A9D90 46083180 */  add.s      $f6, $f6, $f8
  .L800A9D94_B8D44:
    /* B8D44 800A9D94 460C3282 */  mul.s      $f10, $f6, $f12
    /* B8D48 800A9D98 4612503C */  c.lt.s     $f10, $f18
    /* B8D4C 800A9D9C 00000000 */  nop
    /* B8D50 800A9DA0 45020004 */  bc1fl      .L800A9DB4_B8D64
    /* B8D54 800A9DA4 00001025 */   or        $v0, $zero, $zero
    /* B8D58 800A9DA8 10000002 */  b          .L800A9DB4_B8D64
    /* B8D5C 800A9DAC 24020001 */   addiu     $v0, $zero, 0x1
    /* B8D60 800A9DB0 00001025 */  or         $v0, $zero, $zero
  .L800A9DB4_B8D64:
    /* B8D64 800A9DB4 8FB00004 */  lw         $s0, 0x4($sp)
    /* B8D68 800A9DB8 03E00008 */  jr         $ra
    /* B8D6C 800A9DBC 27BD0008 */   addiu     $sp, $sp, 0x8
endlabel func_800A9A90_B8A40
