nonmatching func_800FB160_10A110, 0xD8

glabel func_800FB160_10A110
    /* 10A110 800FB160 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 10A114 800FB164 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10A118 800FB168 0C03EC05 */  jal        func_800FB014_109FC4
    /* 10A11C 800FB16C AFA40020 */   sw        $a0, 0x20($sp)
    /* 10A120 800FB170 8FA40020 */  lw         $a0, 0x20($sp)
    /* 10A124 800FB174 0C03EC26 */  jal        func_800FB098_10A048
    /* 10A128 800FB178 E7A0001C */   swc1      $f0, 0x1C($sp)
    /* 10A12C 800FB17C C7AC001C */  lwc1       $f12, 0x1C($sp)
    /* 10A130 800FB180 8FA40020 */  lw         $a0, 0x20($sp)
    /* 10A134 800FB184 E7A00018 */  swc1       $f0, 0x18($sp)
    /* 10A138 800FB188 46006087 */  neg.s      $f2, $f12
    /* 10A13C 800FB18C 46000387 */  neg.s      $f14, $f0
    /* 10A140 800FB190 460C103C */  c.lt.s     $f2, $f12
    /* 10A144 800FB194 00000000 */  nop
    /* 10A148 800FB198 45020004 */  bc1fl      .L800FB1AC_10A15C
    /* 10A14C 800FB19C 46001406 */   mov.s     $f16, $f2
    /* 10A150 800FB1A0 10000002 */  b          .L800FB1AC_10A15C
    /* 10A154 800FB1A4 46006406 */   mov.s     $f16, $f12
    /* 10A158 800FB1A8 46001406 */  mov.s      $f16, $f2
  .L800FB1AC_10A15C:
    /* 10A15C 800FB1AC 4600703C */  c.lt.s     $f14, $f0
    /* 10A160 800FB1B0 00000000 */  nop
    /* 10A164 800FB1B4 45020004 */  bc1fl      .L800FB1C8_10A178
    /* 10A168 800FB1B8 46007086 */   mov.s     $f2, $f14
    /* 10A16C 800FB1BC 10000002 */  b          .L800FB1C8_10A178
    /* 10A170 800FB1C0 46000086 */   mov.s     $f2, $f0
    /* 10A174 800FB1C4 46007086 */  mov.s      $f2, $f14
  .L800FB1C8_10A178:
    /* 10A178 800FB1C8 46101100 */  add.s      $f4, $f2, $f16
    /* 10A17C 800FB1CC 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 10A180 800FB1D0 44814800 */  mtc1       $at, $f9
    /* 10A184 800FB1D4 44804000 */  mtc1       $zero, $f8
    /* 10A188 800FB1D8 460021A1 */  cvt.d.s    $f6, $f4
    /* 10A18C 800FB1DC 4628303C */  c.lt.d     $f6, $f8
    /* 10A190 800FB1E0 00000000 */  nop
    /* 10A194 800FB1E4 4500000E */  bc1f       .L800FB220_10A1D0
    /* 10A198 800FB1E8 00000000 */   nop
    /* 10A19C 800FB1EC C48A0058 */  lwc1       $f10, 0x58($a0)
    /* 10A1A0 800FB1F0 44809000 */  mtc1       $zero, $f18
    /* 10A1A4 800FB1F4 00000000 */  nop
    /* 10A1A8 800FB1F8 4612503C */  c.lt.s     $f10, $f18
    /* 10A1AC 800FB1FC 00000000 */  nop
    /* 10A1B0 800FB200 45020004 */  bc1fl      .L800FB214_10A1C4
    /* 10A1B4 800FB204 84830006 */   lh        $v1, 0x6($a0)
    /* 10A1B8 800FB208 10000007 */  b          .L800FB228_10A1D8
    /* 10A1BC 800FB20C 84820006 */   lh        $v0, 0x6($a0)
    /* 10A1C0 800FB210 84830006 */  lh         $v1, 0x6($a0)
  .L800FB214_10A1C4:
    /* 10A1C4 800FB214 00031823 */  negu       $v1, $v1
    /* 10A1C8 800FB218 10000003 */  b          .L800FB228_10A1D8
    /* 10A1CC 800FB21C 00601025 */   or        $v0, $v1, $zero
  .L800FB220_10A1D0:
    /* 10A1D0 800FB220 0C000E09 */  jal        func_80003824_4424
    /* 10A1D4 800FB224 C7AE0018 */   lwc1      $f14, 0x18($sp)
  .L800FB228_10A1D8:
    /* 10A1D8 800FB228 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10A1DC 800FB22C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 10A1E0 800FB230 03E00008 */  jr         $ra
    /* 10A1E4 800FB234 00000000 */   nop
endlabel func_800FB160_10A110
