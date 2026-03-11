nonmatching func_800E1C10_F0BC0, 0x138

glabel func_800E1C10_F0BC0
    /* F0BC0 800E1C10 3C0E8015 */  lui        $t6, %hi(D_80153BAC)
    /* F0BC4 800E1C14 85CE3BAC */  lh         $t6, %lo(D_80153BAC)($t6)
    /* F0BC8 800E1C18 3C048015 */  lui        $a0, %hi(D_80153BA0)
    /* F0BCC 800E1C1C 24843BA0 */  addiu      $a0, $a0, %lo(D_80153BA0)
    /* F0BD0 800E1C20 448E2000 */  mtc1       $t6, $f4
    /* F0BD4 800E1C24 C4880000 */  lwc1       $f8, 0x0($a0)
    /* F0BD8 800E1C28 3C038015 */  lui        $v1, %hi(D_80153B90)
    /* F0BDC 800E1C2C 468021A0 */  cvt.s.w    $f6, $f4
    /* F0BE0 800E1C30 24633B90 */  addiu      $v1, $v1, %lo(D_80153B90)
    /* F0BE4 800E1C34 3C0F8015 */  lui        $t7, %hi(D_80153BAE)
    /* F0BE8 800E1C38 C4840004 */  lwc1       $f4, 0x4($a0)
    /* F0BEC 800E1C3C 3C188015 */  lui        $t8, %hi(D_80153BB0)
    /* F0BF0 800E1C40 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* F0BF4 800E1C44 46083281 */  sub.s      $f10, $f6, $f8
    /* F0BF8 800E1C48 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* F0BFC 800E1C4C 3C068015 */  lui        $a2, %hi(D_80156EDC)
    /* F0C00 800E1C50 24C66EDC */  addiu      $a2, $a2, %lo(D_80156EDC)
    /* F0C04 800E1C54 E46A0000 */  swc1       $f10, 0x0($v1)
    /* F0C08 800E1C58 85EF3BAE */  lh         $t7, %lo(D_80153BAE)($t7)
    /* F0C0C 800E1C5C AFBF0014 */  sw         $ra, 0x14($sp)
    /* F0C10 800E1C60 84C80000 */  lh         $t0, 0x0($a2)
    /* F0C14 800E1C64 448F8000 */  mtc1       $t7, $f16
    /* F0C18 800E1C68 3C058015 */  lui        $a1, %hi(D_80156EE4)
    /* F0C1C 800E1C6C 24A56EE4 */  addiu      $a1, $a1, %lo(D_80156EE4)
    /* F0C20 800E1C70 468084A0 */  cvt.s.w    $f18, $f16
    /* F0C24 800E1C74 C4900008 */  lwc1       $f16, 0x8($a0)
    /* F0C28 800E1C78 84CB0002 */  lh         $t3, 0x2($a2)
    /* F0C2C 800E1C7C 84CE0004 */  lh         $t6, 0x4($a2)
    /* F0C30 800E1C80 46049181 */  sub.s      $f6, $f18, $f4
    /* F0C34 800E1C84 E4660004 */  swc1       $f6, 0x4($v1)
    /* F0C38 800E1C88 87183BB0 */  lh         $t8, %lo(D_80153BB0)($t8)
    /* F0C3C 800E1C8C 44984000 */  mtc1       $t8, $f8
    /* F0C40 800E1C90 00000000 */  nop
    /* F0C44 800E1C94 468042A0 */  cvt.s.w    $f10, $f8
    /* F0C48 800E1C98 46105481 */  sub.s      $f18, $f10, $f16
    /* F0C4C 800E1C9C E4720008 */  swc1       $f18, 0x8($v1)
    /* F0C50 800E1CA0 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* F0C54 800E1CA4 84590000 */  lh         $t9, 0x0($v0)
    /* F0C58 800E1CA8 03284823 */  subu       $t1, $t9, $t0
    /* F0C5C 800E1CAC A4A90000 */  sh         $t1, 0x0($a1)
    /* F0C60 800E1CB0 844A0002 */  lh         $t2, 0x2($v0)
    /* F0C64 800E1CB4 014B6023 */  subu       $t4, $t2, $t3
    /* F0C68 800E1CB8 A4AC0002 */  sh         $t4, 0x2($a1)
    /* F0C6C 800E1CBC 844D0004 */  lh         $t5, 0x4($v0)
    /* F0C70 800E1CC0 01AE7823 */  subu       $t7, $t5, $t6
    /* F0C74 800E1CC4 0C036AEF */  jal        func_800DABBC_E9B6C
    /* F0C78 800E1CC8 A4AF0004 */   sh        $t7, 0x4($a1)
    /* F0C7C 800E1CCC 0C037854 */  jal        func_800DE150_ED100
    /* F0C80 800E1CD0 00000000 */   nop
    /* F0C84 800E1CD4 3C028015 */  lui        $v0, %hi(D_80154304)
    /* F0C88 800E1CD8 3C188014 */  lui        $t8, %hi(D_8013E3F4)
    /* F0C8C 800E1CDC 8718E3F4 */  lh         $t8, %lo(D_8013E3F4)($t8)
    /* F0C90 800E1CE0 90424304 */  lbu        $v0, %lo(D_80154304)($v0)
    /* F0C94 800E1CE4 3C068015 */  lui        $a2, %hi(D_80156EDC)
    /* F0C98 800E1CE8 24C66EDC */  addiu      $a2, $a2, %lo(D_80156EDC)
    /* F0C9C 800E1CEC 0302082A */  slt        $at, $t8, $v0
    /* F0CA0 800E1CF0 10200003 */  beqz       $at, .L800E1D00_F0CB0
    /* F0CA4 800E1CF4 3C198014 */   lui       $t9, %hi(D_8013E3F8)
    /* F0CA8 800E1CF8 3C018014 */  lui        $at, %hi(D_8013E3F4)
    /* F0CAC 800E1CFC A422E3F4 */  sh         $v0, %lo(D_8013E3F4)($at)
  .L800E1D00_F0CB0:
    /* F0CB0 800E1D00 3C028015 */  lui        $v0, %hi(D_8015430E)
    /* F0CB4 800E1D04 8442430E */  lh         $v0, %lo(D_8015430E)($v0)
    /* F0CB8 800E1D08 8739E3F8 */  lh         $t9, %lo(D_8013E3F8)($t9)
    /* F0CBC 800E1D0C 0322082A */  slt        $at, $t9, $v0
    /* F0CC0 800E1D10 10200002 */  beqz       $at, .L800E1D1C_F0CCC
    /* F0CC4 800E1D14 3C018014 */   lui       $at, %hi(D_8013E3F8)
    /* F0CC8 800E1D18 A422E3F8 */  sh         $v0, %lo(D_8013E3F8)($at)
  .L800E1D1C_F0CCC:
    /* F0CCC 800E1D1C 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* F0CD0 800E1D20 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* F0CD4 800E1D24 8FBF0014 */  lw         $ra, 0x14($sp)
    /* F0CD8 800E1D28 84480000 */  lh         $t0, 0x0($v0)
    /* F0CDC 800E1D2C A4C80000 */  sh         $t0, 0x0($a2)
    /* F0CE0 800E1D30 84490002 */  lh         $t1, 0x2($v0)
    /* F0CE4 800E1D34 A4C90002 */  sh         $t1, 0x2($a2)
    /* F0CE8 800E1D38 844A0004 */  lh         $t2, 0x4($v0)
    /* F0CEC 800E1D3C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* F0CF0 800E1D40 03E00008 */  jr         $ra
    /* F0CF4 800E1D44 A4CA0004 */   sh        $t2, 0x4($a2)
endlabel func_800E1C10_F0BC0
