nonmatching func_800FAD10_109CC0, 0xE8

glabel func_800FAD10_109CC0
    /* 109CC0 800FAD10 3C058016 */  lui        $a1, %hi(D_80158FD8)
    /* 109CC4 800FAD14 24A58FD8 */  addiu      $a1, $a1, %lo(D_80158FD8)
    /* 109CC8 800FAD18 3C038005 */  lui        $v1, %hi(vehicleInstances)
    /* 109CCC 800FAD1C 3C068016 */  lui        $a2, %hi(D_80158E80)
    /* 109CD0 800FAD20 A4A00000 */  sh         $zero, 0x0($a1)
    /* 109CD4 800FAD24 24C68E80 */  addiu      $a2, $a2, %lo(D_80158E80)
    /* 109CD8 800FAD28 2463DCD0 */  addiu      $v1, $v1, %lo(vehicleInstances)
    /* 109CDC 800FAD2C 00001025 */  or         $v0, $zero, $zero
    /* 109CE0 800FAD30 24070080 */  addiu      $a3, $zero, 0x80
  .L800FAD34_109CE4:
    /* 109CE4 800FAD34 946E0020 */  lhu        $t6, 0x20($v1)
    /* 109CE8 800FAD38 31CF8000 */  andi       $t7, $t6, 0x8000
    /* 109CEC 800FAD3C 51E00007 */  beql       $t7, $zero, .L800FAD5C_109D0C
    /* 109CF0 800FAD40 9468007C */   lhu       $t0, 0x7C($v1)
    /* 109CF4 800FAD44 84A40000 */  lh         $a0, 0x0($a1)
    /* 109CF8 800FAD48 00C4C021 */  addu       $t8, $a2, $a0
    /* 109CFC 800FAD4C A3020000 */  sb         $v0, 0x0($t8)
    /* 109D00 800FAD50 24990001 */  addiu      $t9, $a0, 0x1
    /* 109D04 800FAD54 A4B90000 */  sh         $t9, 0x0($a1)
    /* 109D08 800FAD58 9468007C */  lhu        $t0, 0x7C($v1)
  .L800FAD5C_109D0C:
    /* 109D0C 800FAD5C 31098000 */  andi       $t1, $t0, 0x8000
    /* 109D10 800FAD60 51200008 */  beql       $t1, $zero, .L800FAD84_109D34
    /* 109D14 800FAD64 946D00D8 */   lhu       $t5, 0xD8($v1)
    /* 109D18 800FAD68 84A40000 */  lh         $a0, 0x0($a1)
    /* 109D1C 800FAD6C 244A0001 */  addiu      $t2, $v0, 0x1
    /* 109D20 800FAD70 00C45821 */  addu       $t3, $a2, $a0
    /* 109D24 800FAD74 A16A0000 */  sb         $t2, 0x0($t3)
    /* 109D28 800FAD78 248C0001 */  addiu      $t4, $a0, 0x1
    /* 109D2C 800FAD7C A4AC0000 */  sh         $t4, 0x0($a1)
    /* 109D30 800FAD80 946D00D8 */  lhu        $t5, 0xD8($v1)
  .L800FAD84_109D34:
    /* 109D34 800FAD84 31AE8000 */  andi       $t6, $t5, 0x8000
    /* 109D38 800FAD88 51C00008 */  beql       $t6, $zero, .L800FADAC_109D5C
    /* 109D3C 800FAD8C 94680134 */   lhu       $t0, 0x134($v1)
    /* 109D40 800FAD90 84A40000 */  lh         $a0, 0x0($a1)
    /* 109D44 800FAD94 244F0002 */  addiu      $t7, $v0, 0x2
    /* 109D48 800FAD98 00C4C021 */  addu       $t8, $a2, $a0
    /* 109D4C 800FAD9C A30F0000 */  sb         $t7, 0x0($t8)
    /* 109D50 800FADA0 24990001 */  addiu      $t9, $a0, 0x1
    /* 109D54 800FADA4 A4B90000 */  sh         $t9, 0x0($a1)
    /* 109D58 800FADA8 94680134 */  lhu        $t0, 0x134($v1)
  .L800FADAC_109D5C:
    /* 109D5C 800FADAC 31098000 */  andi       $t1, $t0, 0x8000
    /* 109D60 800FADB0 51200008 */  beql       $t1, $zero, .L800FADD4_109D84
    /* 109D64 800FADB4 24420004 */   addiu     $v0, $v0, 0x4
    /* 109D68 800FADB8 84A40000 */  lh         $a0, 0x0($a1)
    /* 109D6C 800FADBC 244A0003 */  addiu      $t2, $v0, 0x3
    /* 109D70 800FADC0 00C45821 */  addu       $t3, $a2, $a0
    /* 109D74 800FADC4 A16A0000 */  sb         $t2, 0x0($t3)
    /* 109D78 800FADC8 248C0001 */  addiu      $t4, $a0, 0x1
    /* 109D7C 800FADCC A4AC0000 */  sh         $t4, 0x0($a1)
    /* 109D80 800FADD0 24420004 */  addiu      $v0, $v0, 0x4
  .L800FADD4_109D84:
    /* 109D84 800FADD4 1447FFD7 */  bne        $v0, $a3, .L800FAD34_109CE4
    /* 109D88 800FADD8 24630170 */   addiu     $v1, $v1, 0x170
    /* 109D8C 800FADDC 3C028016 */  lui        $v0, %hi(D_80159320)
    /* 109D90 800FADE0 24429320 */  addiu      $v0, $v0, %lo(D_80159320)
    /* 109D94 800FADE4 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 109D98 800FADE8 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 109D9C 800FADEC 01A17024 */  and        $t6, $t5, $at
    /* 109DA0 800FADF0 03E00008 */  jr         $ra
    /* 109DA4 800FADF4 AC4E0000 */   sw        $t6, 0x0($v0)
endlabel func_800FAD10_109CC0
