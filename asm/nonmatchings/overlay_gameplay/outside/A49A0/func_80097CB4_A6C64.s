nonmatching func_80097CB4_A6C64, 0x168

glabel func_80097CB4_A6C64
    /* A6C64 80097CB4 84820000 */  lh         $v0, 0x0($a0)
    /* A6C68 80097CB8 84AE0000 */  lh         $t6, 0x0($a1)
    /* A6C6C 80097CBC 44876000 */  mtc1       $a3, $f12
    /* A6C70 80097CC0 34018001 */  ori        $at, $zero, 0x8001
    /* A6C74 80097CC4 01C27823 */  subu       $t7, $t6, $v0
    /* A6C78 80097CC8 448F2000 */  mtc1       $t7, $f4
    /* A6C7C 80097CCC 00000000 */  nop
    /* A6C80 80097CD0 468021A0 */  cvt.s.w    $f6, $f4
    /* A6C84 80097CD4 460C3202 */  mul.s      $f8, $f6, $f12
    /* A6C88 80097CD8 4600428D */  trunc.w.s  $f10, $f8
    /* A6C8C 80097CDC 440A5000 */  mfc1       $t2, $f10
    /* A6C90 80097CE0 00000000 */  nop
    /* A6C94 80097CE4 004A5821 */  addu       $t3, $v0, $t2
    /* A6C98 80097CE8 A4CB0000 */  sh         $t3, 0x0($a2)
    /* A6C9C 80097CEC 84870002 */  lh         $a3, 0x2($a0)
    /* A6CA0 80097CF0 84A30002 */  lh         $v1, 0x2($a1)
    /* A6CA4 80097CF4 00674023 */  subu       $t0, $v1, $a3
    /* A6CA8 80097CF8 05000003 */  bltz       $t0, .L80097D08_A6CB8
    /* A6CAC 80097CFC 00081023 */   negu      $v0, $t0
    /* A6CB0 80097D00 10000001 */  b          .L80097D08_A6CB8
    /* A6CB4 80097D04 01001025 */   or        $v0, $t0, $zero
  .L80097D08_A6CB8:
    /* A6CB8 80097D08 0041082A */  slt        $at, $v0, $at
    /* A6CBC 80097D0C 1420001B */  bnez       $at, .L80097D7C_A6D2C
    /* A6CC0 80097D10 00E3082A */   slt       $at, $a3, $v1
    /* A6CC4 80097D14 1020000D */  beqz       $at, .L80097D4C_A6CFC
    /* A6CC8 80097D18 00E36023 */   subu      $t4, $a3, $v1
    /* A6CCC 80097D1C 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* A6CD0 80097D20 01816821 */  addu       $t5, $t4, $at
    /* A6CD4 80097D24 448D8000 */  mtc1       $t5, $f16
    /* A6CD8 80097D28 00000000 */  nop
    /* A6CDC 80097D2C 468084A0 */  cvt.s.w    $f18, $f16
    /* A6CE0 80097D30 460C9102 */  mul.s      $f4, $f18, $f12
    /* A6CE4 80097D34 4600218D */  trunc.w.s  $f6, $f4
    /* A6CE8 80097D38 44193000 */  mfc1       $t9, $f6
    /* A6CEC 80097D3C 00000000 */  nop
    /* A6CF0 80097D40 00F94823 */  subu       $t1, $a3, $t9
    /* A6CF4 80097D44 10000016 */  b          .L80097DA0_A6D50
    /* A6CF8 80097D48 A4C90002 */   sh        $t1, 0x2($a2)
  .L80097D4C_A6CFC:
    /* A6CFC 80097D4C 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* A6D00 80097D50 01015021 */  addu       $t2, $t0, $at
    /* A6D04 80097D54 448A4000 */  mtc1       $t2, $f8
    /* A6D08 80097D58 00000000 */  nop
    /* A6D0C 80097D5C 468042A0 */  cvt.s.w    $f10, $f8
    /* A6D10 80097D60 460C5402 */  mul.s      $f16, $f10, $f12
    /* A6D14 80097D64 4600848D */  trunc.w.s  $f18, $f16
    /* A6D18 80097D68 440E9000 */  mfc1       $t6, $f18
    /* A6D1C 80097D6C 00000000 */  nop
    /* A6D20 80097D70 00EE7821 */  addu       $t7, $a3, $t6
    /* A6D24 80097D74 1000000A */  b          .L80097DA0_A6D50
    /* A6D28 80097D78 A4CF0002 */   sh        $t7, 0x2($a2)
  .L80097D7C_A6D2C:
    /* A6D2C 80097D7C 44882000 */  mtc1       $t0, $f4
    /* A6D30 80097D80 00000000 */  nop
    /* A6D34 80097D84 468021A0 */  cvt.s.w    $f6, $f4
    /* A6D38 80097D88 460C3202 */  mul.s      $f8, $f6, $f12
    /* A6D3C 80097D8C 4600428D */  trunc.w.s  $f10, $f8
    /* A6D40 80097D90 440A5000 */  mfc1       $t2, $f10
    /* A6D44 80097D94 00000000 */  nop
    /* A6D48 80097D98 00EA5821 */  addu       $t3, $a3, $t2
    /* A6D4C 80097D9C A4CB0002 */  sh         $t3, 0x2($a2)
  .L80097DA0_A6D50:
    /* A6D50 80097DA0 84820004 */  lh         $v0, 0x4($a0)
    /* A6D54 80097DA4 84AC0004 */  lh         $t4, 0x4($a1)
    /* A6D58 80097DA8 01826823 */  subu       $t5, $t4, $v0
    /* A6D5C 80097DAC 448D8000 */  mtc1       $t5, $f16
    /* A6D60 80097DB0 00000000 */  nop
    /* A6D64 80097DB4 468084A0 */  cvt.s.w    $f18, $f16
    /* A6D68 80097DB8 460C9102 */  mul.s      $f4, $f18, $f12
    /* A6D6C 80097DBC 4600218D */  trunc.w.s  $f6, $f4
    /* A6D70 80097DC0 44193000 */  mfc1       $t9, $f6
    /* A6D74 80097DC4 00000000 */  nop
    /* A6D78 80097DC8 00594821 */  addu       $t1, $v0, $t9
    /* A6D7C 80097DCC A4C90004 */  sh         $t1, 0x4($a2)
    /* A6D80 80097DD0 C4A80008 */  lwc1       $f8, 0x8($a1)
    /* A6D84 80097DD4 C4800008 */  lwc1       $f0, 0x8($a0)
    /* A6D88 80097DD8 46004281 */  sub.s      $f10, $f8, $f0
    /* A6D8C 80097DDC 460C5402 */  mul.s      $f16, $f10, $f12
    /* A6D90 80097DE0 46100480 */  add.s      $f18, $f0, $f16
    /* A6D94 80097DE4 E4D20008 */  swc1       $f18, 0x8($a2)
    /* A6D98 80097DE8 C4A4000C */  lwc1       $f4, 0xC($a1)
    /* A6D9C 80097DEC C482000C */  lwc1       $f2, 0xC($a0)
    /* A6DA0 80097DF0 46022181 */  sub.s      $f6, $f4, $f2
    /* A6DA4 80097DF4 460C3202 */  mul.s      $f8, $f6, $f12
    /* A6DA8 80097DF8 46081280 */  add.s      $f10, $f2, $f8
    /* A6DAC 80097DFC E4CA000C */  swc1       $f10, 0xC($a2)
    /* A6DB0 80097E00 C4B00010 */  lwc1       $f16, 0x10($a1)
    /* A6DB4 80097E04 C48E0010 */  lwc1       $f14, 0x10($a0)
    /* A6DB8 80097E08 460E8481 */  sub.s      $f18, $f16, $f14
    /* A6DBC 80097E0C 460C9102 */  mul.s      $f4, $f18, $f12
    /* A6DC0 80097E10 46047180 */  add.s      $f6, $f14, $f4
    /* A6DC4 80097E14 03E00008 */  jr         $ra
    /* A6DC8 80097E18 E4C60010 */   swc1      $f6, 0x10($a2)
endlabel func_80097CB4_A6C64
