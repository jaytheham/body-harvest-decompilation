nonmatching func_8000CF4C_DB4C, 0x320

glabel func_8000CF4C_DB4C
    /* DB4C 8000CF4C 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* DB50 8000CF50 F7BA0028 */  sdc1       $f26, 0x28($sp)
    /* DB54 8000CF54 4487D000 */  mtc1       $a3, $f26
    /* DB58 8000CF58 AFB30040 */  sw         $s3, 0x40($sp)
    /* DB5C 8000CF5C AFB2003C */  sw         $s2, 0x3C($sp)
    /* DB60 8000CF60 AFB10038 */  sw         $s1, 0x38($sp)
    /* DB64 8000CF64 AFB00034 */  sw         $s0, 0x34($sp)
    /* DB68 8000CF68 00808825 */  or         $s1, $a0, $zero
    /* DB6C 8000CF6C 00C09025 */  or         $s2, $a2, $zero
    /* DB70 8000CF70 00A09825 */  or         $s3, $a1, $zero
    /* DB74 8000CF74 AFBF0044 */  sw         $ra, 0x44($sp)
    /* DB78 8000CF78 F7B80020 */  sdc1       $f24, 0x20($sp)
    /* DB7C 8000CF7C F7B60018 */  sdc1       $f22, 0x18($sp)
    /* DB80 8000CF80 F7B40010 */  sdc1       $f20, 0x10($sp)
    /* DB84 8000CF84 10C000AE */  beqz       $a2, .L8000D240_DE40
    /* DB88 8000CF88 00008025 */   or        $s0, $zero, $zero
    /* DB8C 8000CF8C 3C014580 */  lui        $at, (0x45800000 >> 16)
    /* DB90 8000CF90 4481C000 */  mtc1       $at, $f24
    /* DB94 8000CF94 3C0140B0 */  lui        $at, (0x40B00000 >> 16)
    /* DB98 8000CF98 4481B800 */  mtc1       $at, $f23
    /* DB9C 8000CF9C 3C018003 */  lui        $at, %hi(D_80037610)
    /* DBA0 8000CFA0 4480B000 */  mtc1       $zero, $f22
    /* DBA4 8000CFA4 D4347610 */  ldc1       $f20, %lo(D_80037610)($at)
  .L8000CFA8_DBA8:
    /* DBA8 8000CFA8 00105980 */  sll        $t3, $s0, 6
    /* DBAC 8000CFAC 01732821 */  addu       $a1, $t3, $s3
    /* DBB0 8000CFB0 8CAC0014 */  lw         $t4, 0x14($a1)
    /* DBB4 8000CFB4 5180009F */  beql       $t4, $zero, .L8000D234_DE34
    /* DBB8 8000CFB8 26100001 */   addiu     $s0, $s0, 0x1
    /* DBBC 8000CFBC 84AD002A */  lh         $t5, 0x2A($a1)
    /* DBC0 8000CFC0 C4AE001C */  lwc1       $f14, 0x1C($a1)
    /* DBC4 8000CFC4 C4B00020 */  lwc1       $f16, 0x20($a1)
    /* DBC8 8000CFC8 448D3000 */  mtc1       $t5, $f6
    /* DBCC 8000CFCC 460E8201 */  sub.s      $f8, $f16, $f14
    /* DBD0 8000CFD0 468032A0 */  cvt.s.w    $f10, $f6
    /* DBD4 8000CFD4 4608D483 */  div.s      $f18, $f26, $f8
    /* DBD8 8000CFD8 46005121 */  cvt.d.s    $f4, $f10
    /* DBDC 8000CFDC 46342202 */  mul.d      $f8, $f4, $f20
    /* DBE0 8000CFE0 46364183 */  div.d      $f6, $f8, $f22
    /* DBE4 8000CFE4 462032A0 */  cvt.s.d    $f10, $f6
    /* DBE8 8000CFE8 E7AA0068 */  swc1       $f10, 0x68($sp)
    /* DBEC 8000CFEC 84AE002C */  lh         $t6, 0x2C($a1)
    /* DBF0 8000CFF0 448E2000 */  mtc1       $t6, $f4
    /* DBF4 8000CFF4 00000000 */  nop
    /* DBF8 8000CFF8 46802220 */  cvt.s.w    $f8, $f4
    /* DBFC 8000CFFC 460041A1 */  cvt.d.s    $f6, $f8
    /* DC00 8000D000 46343102 */  mul.d      $f4, $f6, $f20
    /* DC04 8000D004 46362203 */  div.d      $f8, $f4, $f22
    /* DC08 8000D008 462041A0 */  cvt.s.d    $f6, $f8
    /* DC0C 8000D00C E7A6006C */  swc1       $f6, 0x6C($sp)
    /* DC10 8000D010 84AF002E */  lh         $t7, 0x2E($a1)
    /* DC14 8000D014 448F2000 */  mtc1       $t7, $f4
    /* DC18 8000D018 00000000 */  nop
    /* DC1C 8000D01C 46802220 */  cvt.s.w    $f8, $f4
    /* DC20 8000D020 46004121 */  cvt.d.s    $f4, $f8
    /* DC24 8000D024 46342202 */  mul.d      $f8, $f4, $f20
    /* DC28 8000D028 46364103 */  div.d      $f4, $f8, $f22
    /* DC2C 8000D02C 46202220 */  cvt.s.d    $f8, $f4
    /* DC30 8000D030 E7A80070 */  swc1       $f8, 0x70($sp)
    /* DC34 8000D034 84B80000 */  lh         $t8, 0x0($a1)
    /* DC38 8000D038 44982000 */  mtc1       $t8, $f4
    /* DC3C 8000D03C 00000000 */  nop
    /* DC40 8000D040 46802120 */  cvt.s.w    $f4, $f4
    /* DC44 8000D044 46002121 */  cvt.d.s    $f4, $f4
    /* DC48 8000D048 46342102 */  mul.d      $f4, $f4, $f20
    /* DC4C 8000D04C 46362103 */  div.d      $f4, $f4, $f22
    /* DC50 8000D050 46202120 */  cvt.s.d    $f4, $f4
    /* DC54 8000D054 E7A4005C */  swc1       $f4, 0x5C($sp)
    /* DC58 8000D058 84B90002 */  lh         $t9, 0x2($a1)
    /* DC5C 8000D05C E7AA0048 */  swc1       $f10, 0x48($sp)
    /* DC60 8000D060 44995000 */  mtc1       $t9, $f10
    /* DC64 8000D064 00000000 */  nop
    /* DC68 8000D068 468052A0 */  cvt.s.w    $f10, $f10
    /* DC6C 8000D06C 460052A1 */  cvt.d.s    $f10, $f10
    /* DC70 8000D070 46345282 */  mul.d      $f10, $f10, $f20
    /* DC74 8000D074 46365283 */  div.d      $f10, $f10, $f22
    /* DC78 8000D078 462052A0 */  cvt.s.d    $f10, $f10
    /* DC7C 8000D07C E7AA0060 */  swc1       $f10, 0x60($sp)
    /* DC80 8000D080 84A80004 */  lh         $t0, 0x4($a1)
    /* DC84 8000D084 E7A6004C */  swc1       $f6, 0x4C($sp)
    /* DC88 8000D088 E7A80050 */  swc1       $f8, 0x50($sp)
    /* DC8C 8000D08C 44883000 */  mtc1       $t0, $f6
    /* DC90 8000D090 C7A80048 */  lwc1       $f8, 0x48($sp)
    /* DC94 8000D094 468031A0 */  cvt.s.w    $f6, $f6
    /* DC98 8000D098 46044201 */  sub.s      $f8, $f8, $f4
    /* DC9C 8000D09C 460031A1 */  cvt.d.s    $f6, $f6
    /* DCA0 8000D0A0 46343182 */  mul.d      $f6, $f6, $f20
    /* DCA4 8000D0A4 46363183 */  div.d      $f6, $f6, $f22
    /* DCA8 8000D0A8 46124202 */  mul.s      $f8, $f8, $f18
    /* DCAC 8000D0AC 46044200 */  add.s      $f8, $f8, $f4
    /* DCB0 8000D0B0 C7A4004C */  lwc1       $f4, 0x4C($sp)
    /* DCB4 8000D0B4 460A2101 */  sub.s      $f4, $f4, $f10
    /* DCB8 8000D0B8 E7A8005C */  swc1       $f8, 0x5C($sp)
    /* DCBC 8000D0BC 46122102 */  mul.s      $f4, $f4, $f18
    /* DCC0 8000D0C0 460A2100 */  add.s      $f4, $f4, $f10
    /* DCC4 8000D0C4 C7AA0050 */  lwc1       $f10, 0x50($sp)
    /* DCC8 8000D0C8 462031A0 */  cvt.s.d    $f6, $f6
    /* DCCC 8000D0CC E7A40060 */  swc1       $f4, 0x60($sp)
    /* DCD0 8000D0D0 46065101 */  sub.s      $f4, $f10, $f6
    /* DCD4 8000D0D4 E7A60064 */  swc1       $f6, 0x64($sp)
    /* DCD8 8000D0D8 46122282 */  mul.s      $f10, $f4, $f18
    /* DCDC 8000D0DC 46065100 */  add.s      $f4, $f10, $f6
    /* DCE0 8000D0E0 46184282 */  mul.s      $f10, $f8, $f24
    /* DCE4 8000D0E4 E7A40064 */  swc1       $f4, 0x64($sp)
    /* DCE8 8000D0E8 84AF0024 */  lh         $t7, 0x24($a1)
    /* DCEC 8000D0EC C4A20008 */  lwc1       $f2, 0x8($a1)
    /* DCF0 8000D0F0 84B80026 */  lh         $t8, 0x26($a1)
    /* DCF4 8000D0F4 460051A1 */  cvt.d.s    $f6, $f10
    /* DCF8 8000D0F8 C4AC000C */  lwc1       $f12, 0xC($a1)
    /* DCFC 8000D0FC 46343103 */  div.d      $f4, $f6, $f20
    /* DD00 8000D100 84B90028 */  lh         $t9, 0x28($a1)
    /* DD04 8000D104 C4A00010 */  lwc1       $f0, 0x10($a1)
    /* DD08 8000D108 4620220D */  trunc.w.d  $f8, $f4
    /* DD0C 8000D10C 440A4000 */  mfc1       $t2, $f8
    /* DD10 8000D110 00000000 */  nop
    /* DD14 8000D114 A4AA0000 */  sh         $t2, 0x0($a1)
    /* DD18 8000D118 C7AA0060 */  lwc1       $f10, 0x60($sp)
    /* DD1C 8000D11C 46185182 */  mul.s      $f6, $f10, $f24
    /* DD20 8000D120 46003121 */  cvt.d.s    $f4, $f6
    /* DD24 8000D124 46342203 */  div.d      $f8, $f4, $f20
    /* DD28 8000D128 4620428D */  trunc.w.d  $f10, $f8
    /* DD2C 8000D12C 440C5000 */  mfc1       $t4, $f10
    /* DD30 8000D130 00000000 */  nop
    /* DD34 8000D134 A4AC0002 */  sh         $t4, 0x2($a1)
    /* DD38 8000D138 C7A60064 */  lwc1       $f6, 0x64($sp)
    /* DD3C 8000D13C 46183102 */  mul.s      $f4, $f6, $f24
    /* DD40 8000D140 46002221 */  cvt.d.s    $f8, $f4
    /* DD44 8000D144 448F2000 */  mtc1       $t7, $f4
    /* DD48 8000D148 46344283 */  div.d      $f10, $f8, $f20
    /* DD4C 8000D14C 46802220 */  cvt.s.w    $f8, $f4
    /* DD50 8000D150 4620518D */  trunc.w.d  $f6, $f10
    /* DD54 8000D154 46024281 */  sub.s      $f10, $f8, $f2
    /* DD58 8000D158 440E3000 */  mfc1       $t6, $f6
    /* DD5C 8000D15C 44984000 */  mtc1       $t8, $f8
    /* DD60 8000D160 46125182 */  mul.s      $f6, $f10, $f18
    /* DD64 8000D164 A4AE0004 */  sh         $t6, 0x4($a1)
    /* DD68 8000D168 468042A0 */  cvt.s.w    $f10, $f8
    /* DD6C 8000D16C 46023100 */  add.s      $f4, $f6, $f2
    /* DD70 8000D170 460C5181 */  sub.s      $f6, $f10, $f12
    /* DD74 8000D174 44995000 */  mtc1       $t9, $f10
    /* DD78 8000D178 E4A40008 */  swc1       $f4, 0x8($a1)
    /* DD7C 8000D17C 468050A0 */  cvt.s.w    $f2, $f10
    /* DD80 8000D180 46123102 */  mul.s      $f4, $f6, $f18
    /* DD84 8000D184 C4AA001C */  lwc1       $f10, 0x1C($a1)
    /* DD88 8000D188 46001181 */  sub.s      $f6, $f2, $f0
    /* DD8C 8000D18C 460C2200 */  add.s      $f8, $f4, $f12
    /* DD90 8000D190 46123102 */  mul.s      $f4, $f6, $f18
    /* DD94 8000D194 461A5180 */  add.s      $f6, $f10, $f26
    /* DD98 8000D198 E4A8000C */  swc1       $f8, 0xC($a1)
    /* DD9C 8000D19C E4A6001C */  swc1       $f6, 0x1C($a1)
    /* DDA0 8000D1A0 46002200 */  add.s      $f8, $f4, $f0
    /* DDA4 8000D1A4 C4A4001C */  lwc1       $f4, 0x1C($a1)
    /* DDA8 8000D1A8 E4A80010 */  swc1       $f8, 0x10($a1)
    /* DDAC 8000D1AC C4A80020 */  lwc1       $f8, 0x20($a1)
    /* DDB0 8000D1B0 4604403E */  c.le.s     $f8, $f4
    /* DDB4 8000D1B4 00000000 */  nop
    /* DDB8 8000D1B8 4502001E */  bc1fl      .L8000D234_DE34
    /* DDBC 8000D1BC 26100001 */   addiu     $s0, $s0, 0x1
    /* DDC0 8000D1C0 84A80024 */  lh         $t0, 0x24($a1)
    /* DDC4 8000D1C4 84A90026 */  lh         $t1, 0x26($a1)
    /* DDC8 8000D1C8 8CAD0018 */  lw         $t5, 0x18($a1)
    /* DDCC 8000D1CC 44885000 */  mtc1       $t0, $f10
    /* DDD0 8000D1D0 44892000 */  mtc1       $t1, $f4
    /* DDD4 8000D1D4 8CB80014 */  lw         $t8, 0x14($a1)
    /* DDD8 8000D1D8 468051A0 */  cvt.s.w    $f6, $f10
    /* DDDC 8000D1DC 84AA002A */  lh         $t2, 0x2A($a1)
    /* DDE0 8000D1E0 84AB002C */  lh         $t3, 0x2C($a1)
    /* DDE4 8000D1E4 84AC002E */  lh         $t4, 0x2E($a1)
    /* DDE8 8000D1E8 25AE0001 */  addiu      $t6, $t5, 0x1
    /* DDEC 8000D1EC 46802220 */  cvt.s.w    $f8, $f4
    /* DDF0 8000D1F0 E4A60008 */  swc1       $f6, 0x8($a1)
    /* DDF4 8000D1F4 E4A20010 */  swc1       $f2, 0x10($a1)
    /* DDF8 8000D1F8 ACAE0018 */  sw         $t6, 0x18($a1)
    /* DDFC 8000D1FC A4AA0000 */  sh         $t2, 0x0($a1)
    /* DE00 8000D200 A4AB0002 */  sh         $t3, 0x2($a1)
    /* DE04 8000D204 E4A8000C */  swc1       $f8, 0xC($a1)
    /* DE08 8000D208 15D80006 */  bne        $t6, $t8, .L8000D224_DE24
    /* DE0C 8000D20C A4AC0004 */   sh        $t4, 0x4($a1)
    /* DE10 8000D210 ACA00014 */  sw         $zero, 0x14($a1)
    /* DE14 8000D214 16000006 */  bnez       $s0, .L8000D230_DE30
    /* DE18 8000D218 ACA00018 */   sw        $zero, 0x18($a1)
    /* DE1C 8000D21C 10000004 */  b          .L8000D230_DE30
    /* DE20 8000D220 AE200E50 */   sw        $zero, 0xE50($s1)
  .L8000D224_DE24:
    /* DE24 8000D224 02202025 */  or         $a0, $s1, $zero
    /* DE28 8000D228 0C003355 */  jal        func_8000CD54_D954
    /* DE2C 8000D22C 320600FF */   andi      $a2, $s0, 0xFF
  .L8000D230_DE30:
    /* DE30 8000D230 26100001 */  addiu      $s0, $s0, 0x1
  .L8000D234_DE34:
    /* DE34 8000D234 321900FF */  andi       $t9, $s0, 0xFF
    /* DE38 8000D238 1659FF5B */  bne        $s2, $t9, .L8000CFA8_DBA8
    /* DE3C 8000D23C 03208025 */   or        $s0, $t9, $zero
  .L8000D240_DE40:
    /* DE40 8000D240 8FBF0044 */  lw         $ra, 0x44($sp)
    /* DE44 8000D244 D7B40010 */  ldc1       $f20, 0x10($sp)
    /* DE48 8000D248 D7B60018 */  ldc1       $f22, 0x18($sp)
    /* DE4C 8000D24C D7B80020 */  ldc1       $f24, 0x20($sp)
    /* DE50 8000D250 D7BA0028 */  ldc1       $f26, 0x28($sp)
    /* DE54 8000D254 8FB00034 */  lw         $s0, 0x34($sp)
    /* DE58 8000D258 8FB10038 */  lw         $s1, 0x38($sp)
    /* DE5C 8000D25C 8FB2003C */  lw         $s2, 0x3C($sp)
    /* DE60 8000D260 8FB30040 */  lw         $s3, 0x40($sp)
    /* DE64 8000D264 03E00008 */  jr         $ra
    /* DE68 8000D268 27BD0088 */   addiu     $sp, $sp, 0x88
endlabel func_8000CF4C_DB4C
