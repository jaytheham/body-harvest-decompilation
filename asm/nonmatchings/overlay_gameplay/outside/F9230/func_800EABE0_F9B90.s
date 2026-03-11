nonmatching func_800EABE0_F9B90, 0x218

glabel func_800EABE0_F9B90
    /* F9B90 800EABE0 3C028016 */  lui        $v0, %hi(D_80159020)
    /* F9B94 800EABE4 8C429020 */  lw         $v0, %lo(D_80159020)($v0)
    /* F9B98 800EABE8 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* F9B9C 800EABEC AFBF0014 */  sw         $ra, 0x14($sp)
    /* F9BA0 800EABF0 AFA40038 */  sw         $a0, 0x38($sp)
    /* F9BA4 800EABF4 844E0000 */  lh         $t6, 0x0($v0)
    /* F9BA8 800EABF8 8FA40038 */  lw         $a0, 0x38($sp)
    /* F9BAC 800EABFC 27A5002C */  addiu      $a1, $sp, 0x2C
    /* F9BB0 800EAC00 05C10003 */  bgez       $t6, .L800EAC10_F9BC0
    /* F9BB4 800EAC04 000E7883 */   sra       $t7, $t6, 2
    /* F9BB8 800EAC08 25C10003 */  addiu      $at, $t6, 0x3
    /* F9BBC 800EAC0C 00017883 */  sra        $t7, $at, 2
  .L800EAC10_F9BC0:
    /* F9BC0 800EAC10 448F2000 */  mtc1       $t7, $f4
    /* F9BC4 800EAC14 00000000 */  nop
    /* F9BC8 800EAC18 468021A0 */  cvt.s.w    $f6, $f4
    /* F9BCC 800EAC1C E7A6002C */  swc1       $f6, 0x2C($sp)
    /* F9BD0 800EAC20 84580002 */  lh         $t8, 0x2($v0)
    /* F9BD4 800EAC24 07010003 */  bgez       $t8, .L800EAC34_F9BE4
    /* F9BD8 800EAC28 0018C883 */   sra       $t9, $t8, 2
    /* F9BDC 800EAC2C 27010003 */  addiu      $at, $t8, 0x3
    /* F9BE0 800EAC30 0001C883 */  sra        $t9, $at, 2
  .L800EAC34_F9BE4:
    /* F9BE4 800EAC34 44994000 */  mtc1       $t9, $f8
    /* F9BE8 800EAC38 00000000 */  nop
    /* F9BEC 800EAC3C 468042A0 */  cvt.s.w    $f10, $f8
    /* F9BF0 800EAC40 E7AA0030 */  swc1       $f10, 0x30($sp)
    /* F9BF4 800EAC44 84480004 */  lh         $t0, 0x4($v0)
    /* F9BF8 800EAC48 05010003 */  bgez       $t0, .L800EAC58_F9C08
    /* F9BFC 800EAC4C 00084883 */   sra       $t1, $t0, 2
    /* F9C00 800EAC50 25010003 */  addiu      $at, $t0, 0x3
    /* F9C04 800EAC54 00014883 */  sra        $t1, $at, 2
  .L800EAC58_F9C08:
    /* F9C08 800EAC58 44898000 */  mtc1       $t1, $f16
    /* F9C0C 800EAC5C 00000000 */  nop
    /* F9C10 800EAC60 468084A0 */  cvt.s.w    $f18, $f16
    /* F9C14 800EAC64 0C03A981 */  jal        func_800EA604_F95B4
    /* F9C18 800EAC68 E7B20034 */   swc1      $f18, 0x34($sp)
    /* F9C1C 800EAC6C 3C0A8015 */  lui        $t2, %hi(D_801575DC)
    /* F9C20 800EAC70 8D4A75DC */  lw         $t2, %lo(D_801575DC)($t2)
    /* F9C24 800EAC74 3C028014 */  lui        $v0, %hi(D_8013E47A)
    /* F9C28 800EAC78 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* F9C2C 800EAC7C 000A5940 */  sll        $t3, $t2, 5
    /* F9C30 800EAC80 004B1021 */  addu       $v0, $v0, $t3
    /* F9C34 800EAC84 8442E47A */  lh         $v0, %lo(D_8013E47A)($v0)
    /* F9C38 800EAC88 44814000 */  mtc1       $at, $f8
    /* F9C3C 800EAC8C 8FA40038 */  lw         $a0, 0x38($sp)
    /* F9C40 800EAC90 44822000 */  mtc1       $v0, $f4
    /* F9C44 800EAC94 00026023 */  negu       $t4, $v0
    /* F9C48 800EAC98 448C9000 */  mtc1       $t4, $f18
    /* F9C4C 800EAC9C 468021A0 */  cvt.s.w    $f6, $f4
    /* F9C50 800EACA0 46004281 */  sub.s      $f10, $f8, $f0
    /* F9C54 800EACA4 46809120 */  cvt.s.w    $f4, $f18
    /* F9C58 800EACA8 460A3402 */  mul.s      $f16, $f6, $f10
    /* F9C5C 800EACAC 00000000 */  nop
    /* F9C60 800EACB0 46002202 */  mul.s      $f8, $f4, $f0
    /* F9C64 800EACB4 46088180 */  add.s      $f6, $f16, $f8
    /* F9C68 800EACB8 4600328D */  trunc.w.s  $f10, $f6
    /* F9C6C 800EACBC 440E5000 */  mfc1       $t6, $f10
    /* F9C70 800EACC0 0C03EBEE */  jal        func_800FAFB8_109F68
    /* F9C74 800EACC4 A7AE002A */   sh        $t6, 0x2A($sp)
    /* F9C78 800EACC8 3C0F8015 */  lui        $t7, %hi(D_801575DC)
    /* F9C7C 800EACCC 8DEF75DC */  lw         $t7, %lo(D_801575DC)($t7)
    /* F9C80 800EACD0 3C198014 */  lui        $t9, %hi(D_8013E474)
    /* F9C84 800EACD4 AFA20020 */  sw         $v0, 0x20($sp)
    /* F9C88 800EACD8 000FC140 */  sll        $t8, $t7, 5
    /* F9C8C 800EACDC 0338C821 */  addu       $t9, $t9, $t8
    /* F9C90 800EACE0 8739E474 */  lh         $t9, %lo(D_8013E474)($t9)
    /* F9C94 800EACE4 A4590020 */  sh         $t9, 0x20($v0)
    /* F9C98 800EACE8 97A4002A */  lhu        $a0, 0x2A($sp)
    /* F9C9C 800EACEC 0C007660 */  jal        sins
    /* F9CA0 800EACF0 AFA40018 */   sw        $a0, 0x18($sp)
    /* F9CA4 800EACF4 44829000 */  mtc1       $v0, $f18
    /* F9CA8 800EACF8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F9CAC 800EACFC 44814800 */  mtc1       $at, $f9
    /* F9CB0 800EAD00 46809120 */  cvt.s.w    $f4, $f18
    /* F9CB4 800EAD04 44804000 */  mtc1       $zero, $f8
    /* F9CB8 800EAD08 3C088015 */  lui        $t0, %hi(D_801575DC)
    /* F9CBC 800EAD0C 8D0875DC */  lw         $t0, %lo(D_801575DC)($t0)
    /* F9CC0 800EAD10 3C0A8014 */  lui        $t2, %hi(D_8013E45C)
    /* F9CC4 800EAD14 254AE45C */  addiu      $t2, $t2, %lo(D_8013E45C)
    /* F9CC8 800EAD18 46002421 */  cvt.d.s    $f16, $f4
    /* F9CCC 800EAD1C 00084940 */  sll        $t1, $t0, 5
    /* F9CD0 800EAD20 46288183 */  div.d      $f6, $f16, $f8
    /* F9CD4 800EAD24 012A1821 */  addu       $v1, $t1, $t2
    /* F9CD8 800EAD28 846B001C */  lh         $t3, 0x1C($v1)
    /* F9CDC 800EAD2C 846C001A */  lh         $t4, 0x1A($v1)
    /* F9CE0 800EAD30 3C0D8015 */  lui        $t5, %hi(D_80157A3C)
    /* F9CE4 800EAD34 448B5000 */  mtc1       $t3, $f10
    /* F9CE8 800EAD38 448C8000 */  mtc1       $t4, $f16
    /* F9CEC 800EAD3C 85AD7A3C */  lh         $t5, %lo(D_80157A3C)($t5)
    /* F9CF0 800EAD40 468054A1 */  cvt.d.w    $f18, $f10
    /* F9CF4 800EAD44 3C014050 */  lui        $at, (0x40500000 >> 16)
    /* F9CF8 800EAD48 8FB80020 */  lw         $t8, 0x20($sp)
    /* F9CFC 800EAD4C 8FA40018 */  lw         $a0, 0x18($sp)
    /* F9D00 800EAD50 46808220 */  cvt.s.w    $f8, $f16
    /* F9D04 800EAD54 448D8000 */  mtc1       $t5, $f16
    /* F9D08 800EAD58 460042A1 */  cvt.d.s    $f10, $f8
    /* F9D0C 800EAD5C 46808220 */  cvt.s.w    $f8, $f16
    /* F9D10 800EAD60 46269102 */  mul.d      $f4, $f18, $f6
    /* F9D14 800EAD64 44809000 */  mtc1       $zero, $f18
    /* F9D18 800EAD68 44819800 */  mtc1       $at, $f19
    /* F9D1C 800EAD6C 00000000 */  nop
    /* F9D20 800EAD70 46325182 */  mul.d      $f6, $f10, $f18
    /* F9D24 800EAD74 460042A1 */  cvt.d.s    $f10, $f8
    /* F9D28 800EAD78 462A3483 */  div.d      $f18, $f6, $f10
    /* F9D2C 800EAD7C 46322400 */  add.d      $f16, $f4, $f18
    /* F9D30 800EAD80 4620820D */  trunc.w.d  $f8, $f16
    /* F9D34 800EAD84 440F4000 */  mfc1       $t7, $f8
    /* F9D38 800EAD88 0C007654 */  jal        coss
    /* F9D3C 800EAD8C A70F0022 */   sh        $t7, 0x22($t8)
    /* F9D40 800EAD90 44823000 */  mtc1       $v0, $f6
    /* F9D44 800EAD94 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* F9D48 800EAD98 44819800 */  mtc1       $at, $f19
    /* F9D4C 800EAD9C 468032A0 */  cvt.s.w    $f10, $f6
    /* F9D50 800EADA0 44809000 */  mtc1       $zero, $f18
    /* F9D54 800EADA4 3C198015 */  lui        $t9, %hi(D_801575DC)
    /* F9D58 800EADA8 8F3975DC */  lw         $t9, %lo(D_801575DC)($t9)
    /* F9D5C 800EADAC 3C098014 */  lui        $t1, %hi(D_8013E478)
    /* F9D60 800EADB0 8FAC0020 */  lw         $t4, 0x20($sp)
    /* F9D64 800EADB4 46005121 */  cvt.d.s    $f4, $f10
    /* F9D68 800EADB8 00194140 */  sll        $t0, $t9, 5
    /* F9D6C 800EADBC 46322403 */  div.d      $f16, $f4, $f18
    /* F9D70 800EADC0 01284821 */  addu       $t1, $t1, $t0
    /* F9D74 800EADC4 8529E478 */  lh         $t1, %lo(D_8013E478)($t1)
    /* F9D78 800EADC8 44894000 */  mtc1       $t1, $f8
    /* F9D7C 800EADCC 00000000 */  nop
    /* F9D80 800EADD0 468041A1 */  cvt.d.w    $f6, $f8
    /* F9D84 800EADD4 46268282 */  mul.d      $f10, $f16, $f6
    /* F9D88 800EADD8 4620510D */  trunc.w.d  $f4, $f10
    /* F9D8C 800EADDC 440B2000 */  mfc1       $t3, $f4
    /* F9D90 800EADE0 00000000 */  nop
    /* F9D94 800EADE4 A58B0024 */  sh         $t3, 0x24($t4)
    /* F9D98 800EADE8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* F9D9C 800EADEC 27BD0038 */  addiu      $sp, $sp, 0x38
    /* F9DA0 800EADF0 03E00008 */  jr         $ra
    /* F9DA4 800EADF4 00000000 */   nop
endlabel func_800EABE0_F9B90
