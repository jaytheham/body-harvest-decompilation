nonmatching func_8007DC80_165D40, 0x120

glabel func_8007DC80_165D40
    /* 165D40 8007DC80 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 165D44 8007DC84 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 165D48 8007DC88 AFB00020 */  sw         $s0, 0x20($sp)
    /* 165D4C 8007DC8C AFA60030 */  sw         $a2, 0x30($sp)
    /* 165D50 8007DC90 8CAE0404 */  lw         $t6, 0x404($a1)
    /* 165D54 8007DC94 00A08025 */  or         $s0, $a1, $zero
    /* 165D58 8007DC98 8DCF0E50 */  lw         $t7, 0xE50($t6)
    /* 165D5C 8007DC9C 55E0003C */  bnel       $t7, $zero, .L8007DD90_165E50
    /* 165D60 8007DCA0 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 165D64 8007DCA4 8CB8040C */  lw         $t8, 0x40C($a1)
    /* 165D68 8007DCA8 24070034 */  addiu      $a3, $zero, 0x34
    /* 165D6C 8007DCAC 3C06800A */  lui        $a2, %hi(D_8009E8DC)
    /* 165D70 8007DCB0 03070019 */  multu      $t8, $a3
    /* 165D74 8007DCB4 24C6E8DC */  addiu      $a2, $a2, %lo(D_8009E8DC)
    /* 165D78 8007DCB8 3C014700 */  lui        $at, (0x47000000 >> 16)
    /* 165D7C 8007DCBC 44814000 */  mtc1       $at, $f8
    /* 165D80 8007DCC0 3C01800A */  lui        $at, %hi(D_800A4D90)
    /* 165D84 8007DCC4 D4324D90 */  ldc1       $f18, %lo(D_800A4D90)($at)
    /* 165D88 8007DCC8 848E000E */  lh         $t6, 0xE($a0)
    /* 165D8C 8007DCCC 0000C812 */  mflo       $t9
    /* 165D90 8007DCD0 00D94021 */  addu       $t0, $a2, $t9
    /* 165D94 8007DCD4 8D090010 */  lw         $t1, 0x10($t0)
    /* 165D98 8007DCD8 24080010 */  addiu      $t0, $zero, 0x10
    /* 165D9C 8007DCDC 44892000 */  mtc1       $t1, $f4
    /* 165DA0 8007DCE0 00000000 */  nop
    /* 165DA4 8007DCE4 468021A0 */  cvt.s.w    $f6, $f4
    /* 165DA8 8007DCE8 46083282 */  mul.s      $f10, $f6, $f8
    /* 165DAC 8007DCEC 46005421 */  cvt.d.s    $f16, $f10
    /* 165DB0 8007DCF0 46328103 */  div.d      $f4, $f16, $f18
    /* 165DB4 8007DCF4 4620218D */  trunc.w.d  $f6, $f4
    /* 165DB8 8007DCF8 440D3000 */  mfc1       $t5, $f6
    /* 165DBC 8007DCFC 00000000 */  nop
    /* 165DC0 8007DD00 01CD7821 */  addu       $t7, $t6, $t5
    /* 165DC4 8007DD04 A48F000E */  sh         $t7, 0xE($a0)
    /* 165DC8 8007DD08 A4A00002 */  sh         $zero, 0x2($a1)
    /* 165DCC 8007DD0C 8CA5040C */  lw         $a1, 0x40C($a1)
    /* 165DD0 8007DD10 02002025 */  or         $a0, $s0, $zero
    /* 165DD4 8007DD14 00A70019 */  multu      $a1, $a3
    /* 165DD8 8007DD18 8FA70030 */  lw         $a3, 0x30($sp)
    /* 165DDC 8007DD1C 0000C012 */  mflo       $t8
    /* 165DE0 8007DD20 00D81021 */  addu       $v0, $a2, $t8
    /* 165DE4 8007DD24 8C430004 */  lw         $v1, 0x4($v0)
    /* 165DE8 8007DD28 30790001 */  andi       $t9, $v1, 0x1
    /* 165DEC 8007DD2C 5320000F */  beql       $t9, $zero, .L8007DD6C_165E2C
    /* 165DF0 8007DD30 306C0002 */   andi      $t4, $v1, 0x2
    /* 165DF4 8007DD34 8C460008 */  lw         $a2, 0x8($v0)
    /* 165DF8 8007DD38 0C01F6AA */  jal        func_8007DAA8_165B68
    /* 165DFC 8007DD3C AFA80010 */   sw        $t0, 0x10($sp)
    /* 165E00 8007DD40 8E09040C */  lw         $t1, 0x40C($s0)
    /* 165E04 8007DD44 3C0B800A */  lui        $t3, %hi(D_8009E8DC)
    /* 165E08 8007DD48 256BE8DC */  addiu      $t3, $t3, %lo(D_8009E8DC)
    /* 165E0C 8007DD4C 00095080 */  sll        $t2, $t1, 2
    /* 165E10 8007DD50 01495023 */  subu       $t2, $t2, $t1
    /* 165E14 8007DD54 000A5080 */  sll        $t2, $t2, 2
    /* 165E18 8007DD58 01495021 */  addu       $t2, $t2, $t1
    /* 165E1C 8007DD5C 000A5080 */  sll        $t2, $t2, 2
    /* 165E20 8007DD60 014B1021 */  addu       $v0, $t2, $t3
    /* 165E24 8007DD64 8C430004 */  lw         $v1, 0x4($v0)
    /* 165E28 8007DD68 306C0002 */  andi       $t4, $v1, 0x2
  .L8007DD6C_165E2C:
    /* 165E2C 8007DD6C 11800007 */  beqz       $t4, .L8007DD8C_165E4C
    /* 165E30 8007DD70 02002025 */   or        $a0, $s0, $zero
    /* 165E34 8007DD74 240E0010 */  addiu      $t6, $zero, 0x10
    /* 165E38 8007DD78 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 165E3C 8007DD7C 8C450008 */  lw         $a1, 0x8($v0)
    /* 165E40 8007DD80 00003025 */  or         $a2, $zero, $zero
    /* 165E44 8007DD84 0C01F6AA */  jal        func_8007DAA8_165B68
    /* 165E48 8007DD88 8FA70030 */   lw        $a3, 0x30($sp)
  .L8007DD8C_165E4C:
    /* 165E4C 8007DD8C 8FBF0024 */  lw         $ra, 0x24($sp)
  .L8007DD90_165E50:
    /* 165E50 8007DD90 8FB00020 */  lw         $s0, 0x20($sp)
    /* 165E54 8007DD94 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 165E58 8007DD98 03E00008 */  jr         $ra
    /* 165E5C 8007DD9C 00000000 */   nop
endlabel func_8007DC80_165D40
