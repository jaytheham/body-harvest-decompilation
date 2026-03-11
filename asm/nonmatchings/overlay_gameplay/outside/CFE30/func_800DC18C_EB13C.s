nonmatching func_800DC18C_EB13C, 0x42C

glabel func_800DC18C_EB13C
    /* EB13C 800DC18C 30EEFFFF */  andi       $t6, $a3, 0xFFFF
    /* EB140 800DC190 448E2000 */  mtc1       $t6, $f4
    /* EB144 800DC194 27BDFFF8 */  addiu      $sp, $sp, -0x8
    /* EB148 800DC198 3C028015 */  lui        $v0, %hi(D_80153AB8)
    /* EB14C 800DC19C 3C098006 */  lui        $t1, %hi(D_8005BB34)
    /* EB150 800DC1A0 2529BB34 */  addiu      $t1, $t1, %lo(D_8005BB34)
    /* EB154 800DC1A4 24423AB8 */  addiu      $v0, $v0, %lo(D_80153AB8)
    /* EB158 800DC1A8 AFA70014 */  sw         $a3, 0x14($sp)
    /* EB15C 800DC1AC 05C10005 */  bgez       $t6, .L800DC1C4_EB174
    /* EB160 800DC1B0 468020A0 */   cvt.s.w   $f2, $f4
    /* EB164 800DC1B4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* EB168 800DC1B8 44813000 */  mtc1       $at, $f6
    /* EB16C 800DC1BC 00000000 */  nop
    /* EB170 800DC1C0 46061080 */  add.s      $f2, $f2, $f6
  .L800DC1C4_EB174:
    /* EB174 800DC1C4 C4480000 */  lwc1       $f8, 0x0($v0)
    /* EB178 800DC1C8 C44A0004 */  lwc1       $f10, 0x4($v0)
    /* EB17C 800DC1CC C4440008 */  lwc1       $f4, 0x8($v0)
    /* EB180 800DC1D0 46081002 */  mul.s      $f0, $f2, $f8
    /* EB184 800DC1D4 C446000C */  lwc1       $f6, 0xC($v0)
    /* EB188 800DC1D8 C4480010 */  lwc1       $f8, 0x10($v0)
    /* EB18C 800DC1DC 460A1302 */  mul.s      $f12, $f2, $f10
    /* EB190 800DC1E0 C44A0014 */  lwc1       $f10, 0x14($v0)
    /* EB194 800DC1E4 8D390000 */  lw         $t9, 0x0($t1)
    /* EB198 800DC1E8 46041382 */  mul.s      $f14, $f2, $f4
    /* EB19C 800DC1EC 240A0800 */  addiu      $t2, $zero, 0x800
    /* EB1A0 800DC1F0 240B0400 */  addiu      $t3, $zero, 0x400
    /* EB1A4 800DC1F4 46061402 */  mul.s      $f16, $f2, $f6
    /* EB1A8 800DC1F8 3C0C8006 */  lui        $t4, %hi(D_8005BB2C)
    /* EB1AC 800DC1FC 258CBB2C */  addiu      $t4, $t4, %lo(D_8005BB2C)
    /* EB1B0 800DC200 46081482 */  mul.s      $f18, $f2, $f8
    /* EB1B4 800DC204 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* EB1B8 800DC208 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* EB1BC 800DC20C 460A1102 */  mul.s      $f4, $f2, $f10
    /* EB1C0 800DC210 E7A40004 */  swc1       $f4, 0x4($sp)
    /* EB1C4 800DC214 C4860000 */  lwc1       $f6, 0x0($a0)
    /* EB1C8 800DC218 46003200 */  add.s      $f8, $f6, $f0
    /* EB1CC 800DC21C 4600428D */  trunc.w.s  $f10, $f8
    /* EB1D0 800DC220 44185000 */  mfc1       $t8, $f10
    /* EB1D4 800DC224 00000000 */  nop
    /* EB1D8 800DC228 A7380000 */  sh         $t8, 0x0($t9)
    /* EB1DC 800DC22C C4840004 */  lwc1       $f4, 0x4($a0)
    /* EB1E0 800DC230 8D2F0000 */  lw         $t7, 0x0($t1)
    /* EB1E4 800DC234 460C2180 */  add.s      $f6, $f4, $f12
    /* EB1E8 800DC238 4600320D */  trunc.w.s  $f8, $f6
    /* EB1EC 800DC23C 440E4000 */  mfc1       $t6, $f8
    /* EB1F0 800DC240 00000000 */  nop
    /* EB1F4 800DC244 A5EE0002 */  sh         $t6, 0x2($t7)
    /* EB1F8 800DC248 C48A0008 */  lwc1       $f10, 0x8($a0)
    /* EB1FC 800DC24C 8D2D0000 */  lw         $t5, 0x0($t1)
    /* EB200 800DC250 460E5100 */  add.s      $f4, $f10, $f14
    /* EB204 800DC254 4600218D */  trunc.w.s  $f6, $f4
    /* EB208 800DC258 44193000 */  mfc1       $t9, $f6
    /* EB20C 800DC25C 00000000 */  nop
    /* EB210 800DC260 A5B90004 */  sh         $t9, 0x4($t5)
    /* EB214 800DC264 8D2E0000 */  lw         $t6, 0x0($t1)
    /* EB218 800DC268 A5C00006 */  sh         $zero, 0x6($t6)
    /* EB21C 800DC26C 8D2F0000 */  lw         $t7, 0x0($t1)
    /* EB220 800DC270 A5E00008 */  sh         $zero, 0x8($t7)
    /* EB224 800DC274 8D380000 */  lw         $t8, 0x0($t1)
    /* EB228 800DC278 A700000A */  sh         $zero, 0xA($t8)
    /* EB22C 800DC27C 8D2D0000 */  lw         $t5, 0x0($t1)
    /* EB230 800DC280 90B90000 */  lbu        $t9, 0x0($a1)
    /* EB234 800DC284 A1B9000C */  sb         $t9, 0xC($t5)
    /* EB238 800DC288 8D2F0000 */  lw         $t7, 0x0($t1)
    /* EB23C 800DC28C 90AE0001 */  lbu        $t6, 0x1($a1)
    /* EB240 800DC290 A1EE000D */  sb         $t6, 0xD($t7)
    /* EB244 800DC294 8D390000 */  lw         $t9, 0x0($t1)
    /* EB248 800DC298 90B80002 */  lbu        $t8, 0x2($a1)
    /* EB24C 800DC29C A338000E */  sb         $t8, 0xE($t9)
    /* EB250 800DC2A0 8D2E0000 */  lw         $t6, 0x0($t1)
    /* EB254 800DC2A4 93AD001B */  lbu        $t5, 0x1B($sp)
    /* EB258 800DC2A8 A1CD000F */  sb         $t5, 0xF($t6)
    /* EB25C 800DC2AC 8D2F0000 */  lw         $t7, 0x0($t1)
    /* EB260 800DC2B0 25F80010 */  addiu      $t8, $t7, 0x10
    /* EB264 800DC2B4 AD380000 */  sw         $t8, 0x0($t1)
    /* EB268 800DC2B8 C4880000 */  lwc1       $f8, 0x0($a0)
    /* EB26C 800DC2BC 46104280 */  add.s      $f10, $f8, $f16
    /* EB270 800DC2C0 4600510D */  trunc.w.s  $f4, $f10
    /* EB274 800DC2C4 440D2000 */  mfc1       $t5, $f4
    /* EB278 800DC2C8 00000000 */  nop
    /* EB27C 800DC2CC A70D0000 */  sh         $t5, 0x0($t8)
    /* EB280 800DC2D0 C4860004 */  lwc1       $f6, 0x4($a0)
    /* EB284 800DC2D4 8D390000 */  lw         $t9, 0x0($t1)
    /* EB288 800DC2D8 46123200 */  add.s      $f8, $f6, $f18
    /* EB28C 800DC2DC 4600428D */  trunc.w.s  $f10, $f8
    /* EB290 800DC2E0 44185000 */  mfc1       $t8, $f10
    /* EB294 800DC2E4 00000000 */  nop
    /* EB298 800DC2E8 A7380002 */  sh         $t8, 0x2($t9)
    /* EB29C 800DC2EC C4840008 */  lwc1       $f4, 0x8($a0)
    /* EB2A0 800DC2F0 C7A60004 */  lwc1       $f6, 0x4($sp)
    /* EB2A4 800DC2F4 8D2F0000 */  lw         $t7, 0x0($t1)
    /* EB2A8 800DC2F8 46062200 */  add.s      $f8, $f4, $f6
    /* EB2AC 800DC2FC 4600428D */  trunc.w.s  $f10, $f8
    /* EB2B0 800DC300 440E5000 */  mfc1       $t6, $f10
    /* EB2B4 800DC304 00000000 */  nop
    /* EB2B8 800DC308 A5EE0004 */  sh         $t6, 0x4($t7)
    /* EB2BC 800DC30C 8D380000 */  lw         $t8, 0x0($t1)
    /* EB2C0 800DC310 A7000006 */  sh         $zero, 0x6($t8)
    /* EB2C4 800DC314 8D390000 */  lw         $t9, 0x0($t1)
    /* EB2C8 800DC318 A72A0008 */  sh         $t2, 0x8($t9)
    /* EB2CC 800DC31C 8D2D0000 */  lw         $t5, 0x0($t1)
    /* EB2D0 800DC320 A5A0000A */  sh         $zero, 0xA($t5)
    /* EB2D4 800DC324 8D2F0000 */  lw         $t7, 0x0($t1)
    /* EB2D8 800DC328 90AE0000 */  lbu        $t6, 0x0($a1)
    /* EB2DC 800DC32C A1EE000C */  sb         $t6, 0xC($t7)
    /* EB2E0 800DC330 8D390000 */  lw         $t9, 0x0($t1)
    /* EB2E4 800DC334 90B80001 */  lbu        $t8, 0x1($a1)
    /* EB2E8 800DC338 A338000D */  sb         $t8, 0xD($t9)
    /* EB2EC 800DC33C 8D2E0000 */  lw         $t6, 0x0($t1)
    /* EB2F0 800DC340 90AD0002 */  lbu        $t5, 0x2($a1)
    /* EB2F4 800DC344 A1CD000E */  sb         $t5, 0xE($t6)
    /* EB2F8 800DC348 8D380000 */  lw         $t8, 0x0($t1)
    /* EB2FC 800DC34C 93AF001B */  lbu        $t7, 0x1B($sp)
    /* EB300 800DC350 A30F000F */  sb         $t7, 0xF($t8)
    /* EB304 800DC354 8D390000 */  lw         $t9, 0x0($t1)
    /* EB308 800DC358 272D0010 */  addiu      $t5, $t9, 0x10
    /* EB30C 800DC35C AD2D0000 */  sw         $t5, 0x0($t1)
    /* EB310 800DC360 C4840000 */  lwc1       $f4, 0x0($a0)
    /* EB314 800DC364 46002181 */  sub.s      $f6, $f4, $f0
    /* EB318 800DC368 4600320D */  trunc.w.s  $f8, $f6
    /* EB31C 800DC36C 440F4000 */  mfc1       $t7, $f8
    /* EB320 800DC370 00000000 */  nop
    /* EB324 800DC374 A5AF0000 */  sh         $t7, 0x0($t5)
    /* EB328 800DC378 C48A0004 */  lwc1       $f10, 0x4($a0)
    /* EB32C 800DC37C 8D2E0000 */  lw         $t6, 0x0($t1)
    /* EB330 800DC380 460C5101 */  sub.s      $f4, $f10, $f12
    /* EB334 800DC384 4600218D */  trunc.w.s  $f6, $f4
    /* EB338 800DC388 440D3000 */  mfc1       $t5, $f6
    /* EB33C 800DC38C 00000000 */  nop
    /* EB340 800DC390 A5CD0002 */  sh         $t5, 0x2($t6)
    /* EB344 800DC394 C4880008 */  lwc1       $f8, 0x8($a0)
    /* EB348 800DC398 8D390000 */  lw         $t9, 0x0($t1)
    /* EB34C 800DC39C 460E4281 */  sub.s      $f10, $f8, $f14
    /* EB350 800DC3A0 4600510D */  trunc.w.s  $f4, $f10
    /* EB354 800DC3A4 44182000 */  mfc1       $t8, $f4
    /* EB358 800DC3A8 00000000 */  nop
    /* EB35C 800DC3AC A7380004 */  sh         $t8, 0x4($t9)
    /* EB360 800DC3B0 8D2D0000 */  lw         $t5, 0x0($t1)
    /* EB364 800DC3B4 A5A00006 */  sh         $zero, 0x6($t5)
    /* EB368 800DC3B8 8D2E0000 */  lw         $t6, 0x0($t1)
    /* EB36C 800DC3BC A5CA0008 */  sh         $t2, 0x8($t6)
    /* EB370 800DC3C0 8D2F0000 */  lw         $t7, 0x0($t1)
    /* EB374 800DC3C4 A5EA000A */  sh         $t2, 0xA($t7)
    /* EB378 800DC3C8 8D390000 */  lw         $t9, 0x0($t1)
    /* EB37C 800DC3CC 90B80000 */  lbu        $t8, 0x0($a1)
    /* EB380 800DC3D0 A338000C */  sb         $t8, 0xC($t9)
    /* EB384 800DC3D4 8D2E0000 */  lw         $t6, 0x0($t1)
    /* EB388 800DC3D8 90AD0001 */  lbu        $t5, 0x1($a1)
    /* EB38C 800DC3DC A1CD000D */  sb         $t5, 0xD($t6)
    /* EB390 800DC3E0 8D380000 */  lw         $t8, 0x0($t1)
    /* EB394 800DC3E4 90AF0002 */  lbu        $t7, 0x2($a1)
    /* EB398 800DC3E8 A30F000E */  sb         $t7, 0xE($t8)
    /* EB39C 800DC3EC 8D2D0000 */  lw         $t5, 0x0($t1)
    /* EB3A0 800DC3F0 93B9001B */  lbu        $t9, 0x1B($sp)
    /* EB3A4 800DC3F4 A1B9000F */  sb         $t9, 0xF($t5)
    /* EB3A8 800DC3F8 8D2E0000 */  lw         $t6, 0x0($t1)
    /* EB3AC 800DC3FC 25CF0010 */  addiu      $t7, $t6, 0x10
    /* EB3B0 800DC400 AD2F0000 */  sw         $t7, 0x0($t1)
    /* EB3B4 800DC404 C4860000 */  lwc1       $f6, 0x0($a0)
    /* EB3B8 800DC408 46103201 */  sub.s      $f8, $f6, $f16
    /* EB3BC 800DC40C 4600428D */  trunc.w.s  $f10, $f8
    /* EB3C0 800DC410 44195000 */  mfc1       $t9, $f10
    /* EB3C4 800DC414 00000000 */  nop
    /* EB3C8 800DC418 A5F90000 */  sh         $t9, 0x0($t7)
    /* EB3CC 800DC41C C4840004 */  lwc1       $f4, 0x4($a0)
    /* EB3D0 800DC420 8D380000 */  lw         $t8, 0x0($t1)
    /* EB3D4 800DC424 46122181 */  sub.s      $f6, $f4, $f18
    /* EB3D8 800DC428 4600320D */  trunc.w.s  $f8, $f6
    /* EB3DC 800DC42C 440F4000 */  mfc1       $t7, $f8
    /* EB3E0 800DC430 00000000 */  nop
    /* EB3E4 800DC434 A70F0002 */  sh         $t7, 0x2($t8)
    /* EB3E8 800DC438 C48A0008 */  lwc1       $f10, 0x8($a0)
    /* EB3EC 800DC43C C7A40004 */  lwc1       $f4, 0x4($sp)
    /* EB3F0 800DC440 8D2E0000 */  lw         $t6, 0x0($t1)
    /* EB3F4 800DC444 46045181 */  sub.s      $f6, $f10, $f4
    /* EB3F8 800DC448 4600320D */  trunc.w.s  $f8, $f6
    /* EB3FC 800DC44C 440D4000 */  mfc1       $t5, $f8
    /* EB400 800DC450 00000000 */  nop
    /* EB404 800DC454 A5CD0004 */  sh         $t5, 0x4($t6)
    /* EB408 800DC458 8D2F0000 */  lw         $t7, 0x0($t1)
    /* EB40C 800DC45C A5E00006 */  sh         $zero, 0x6($t7)
    /* EB410 800DC460 8D380000 */  lw         $t8, 0x0($t1)
    /* EB414 800DC464 A7000008 */  sh         $zero, 0x8($t8)
    /* EB418 800DC468 8D390000 */  lw         $t9, 0x0($t1)
    /* EB41C 800DC46C A72A000A */  sh         $t2, 0xA($t9)
    /* EB420 800DC470 8D2E0000 */  lw         $t6, 0x0($t1)
    /* EB424 800DC474 90AD0000 */  lbu        $t5, 0x0($a1)
    /* EB428 800DC478 A1CD000C */  sb         $t5, 0xC($t6)
    /* EB42C 800DC47C 8D380000 */  lw         $t8, 0x0($t1)
    /* EB430 800DC480 90AF0001 */  lbu        $t7, 0x1($a1)
    /* EB434 800DC484 A30F000D */  sb         $t7, 0xD($t8)
    /* EB438 800DC488 8D2D0000 */  lw         $t5, 0x0($t1)
    /* EB43C 800DC48C 90B90002 */  lbu        $t9, 0x2($a1)
    /* EB440 800DC490 A1B9000E */  sb         $t9, 0xE($t5)
    /* EB444 800DC494 8D2F0000 */  lw         $t7, 0x0($t1)
    /* EB448 800DC498 93AE001B */  lbu        $t6, 0x1B($sp)
    /* EB44C 800DC49C A1EE000F */  sb         $t6, 0xF($t7)
    /* EB450 800DC4A0 8D380000 */  lw         $t8, 0x0($t1)
    /* EB454 800DC4A4 27190010 */  addiu      $t9, $t8, 0x10
    /* EB458 800DC4A8 AD390000 */  sw         $t9, 0x0($t1)
    /* EB45C 800DC4AC C48A0000 */  lwc1       $f10, 0x0($a0)
    /* EB460 800DC4B0 4600510D */  trunc.w.s  $f4, $f10
    /* EB464 800DC4B4 440E2000 */  mfc1       $t6, $f4
    /* EB468 800DC4B8 00000000 */  nop
    /* EB46C 800DC4BC A72E0000 */  sh         $t6, 0x0($t9)
    /* EB470 800DC4C0 C4860004 */  lwc1       $f6, 0x4($a0)
    /* EB474 800DC4C4 8D2D0000 */  lw         $t5, 0x0($t1)
    /* EB478 800DC4C8 4600320D */  trunc.w.s  $f8, $f6
    /* EB47C 800DC4CC 44194000 */  mfc1       $t9, $f8
    /* EB480 800DC4D0 00000000 */  nop
    /* EB484 800DC4D4 A5B90002 */  sh         $t9, 0x2($t5)
    /* EB488 800DC4D8 C48A0008 */  lwc1       $f10, 0x8($a0)
    /* EB48C 800DC4DC 8D380000 */  lw         $t8, 0x0($t1)
    /* EB490 800DC4E0 4600510D */  trunc.w.s  $f4, $f10
    /* EB494 800DC4E4 440F2000 */  mfc1       $t7, $f4
    /* EB498 800DC4E8 00000000 */  nop
    /* EB49C 800DC4EC A70F0004 */  sh         $t7, 0x4($t8)
    /* EB4A0 800DC4F0 8D390000 */  lw         $t9, 0x0($t1)
    /* EB4A4 800DC4F4 A7200006 */  sh         $zero, 0x6($t9)
    /* EB4A8 800DC4F8 8D2D0000 */  lw         $t5, 0x0($t1)
    /* EB4AC 800DC4FC A5AB0008 */  sh         $t3, 0x8($t5)
    /* EB4B0 800DC500 8D2E0000 */  lw         $t6, 0x0($t1)
    /* EB4B4 800DC504 A5CB000A */  sh         $t3, 0xA($t6)
    /* EB4B8 800DC508 8D380000 */  lw         $t8, 0x0($t1)
    /* EB4BC 800DC50C 90CF0000 */  lbu        $t7, 0x0($a2)
    /* EB4C0 800DC510 A30F000C */  sb         $t7, 0xC($t8)
    /* EB4C4 800DC514 8D2D0000 */  lw         $t5, 0x0($t1)
    /* EB4C8 800DC518 90D90001 */  lbu        $t9, 0x1($a2)
    /* EB4CC 800DC51C A1B9000D */  sb         $t9, 0xD($t5)
    /* EB4D0 800DC520 8D2F0000 */  lw         $t7, 0x0($t1)
    /* EB4D4 800DC524 90CE0002 */  lbu        $t6, 0x2($a2)
    /* EB4D8 800DC528 A1EE000E */  sb         $t6, 0xE($t7)
    /* EB4DC 800DC52C 8D390000 */  lw         $t9, 0x0($t1)
    /* EB4E0 800DC530 93B8001B */  lbu        $t8, 0x1B($sp)
    /* EB4E4 800DC534 A338000F */  sb         $t8, 0xF($t9)
    /* EB4E8 800DC538 8D2D0000 */  lw         $t5, 0x0($t1)
    /* EB4EC 800DC53C 8D830000 */  lw         $v1, 0x0($t4)
    /* EB4F0 800DC540 3C180400 */  lui        $t8, (0x400144F >> 16)
    /* EB4F4 800DC544 25AE0010 */  addiu      $t6, $t5, 0x10
    /* EB4F8 800DC548 246F0008 */  addiu      $t7, $v1, 0x8
    /* EB4FC 800DC54C AD2E0000 */  sw         $t6, 0x0($t1)
    /* EB500 800DC550 AD8F0000 */  sw         $t7, 0x0($t4)
    /* EB504 800DC554 3718144F */  ori        $t8, $t8, (0x400144F & 0xFFFF)
    /* EB508 800DC558 AC780000 */  sw         $t8, 0x0($v1)
    /* EB50C 800DC55C 8D390000 */  lw         $t9, 0x0($t1)
    /* EB510 800DC560 3C18B100 */  lui        $t8, (0xB1000208 >> 16)
    /* EB514 800DC564 37180208 */  ori        $t8, $t8, (0xB1000208 & 0xFFFF)
    /* EB518 800DC568 272DFFB0 */  addiu      $t5, $t9, -0x50
    /* EB51C 800DC56C 01A17024 */  and        $t6, $t5, $at
    /* EB520 800DC570 AC6E0004 */  sw         $t6, 0x4($v1)
    /* EB524 800DC574 8D830000 */  lw         $v1, 0x0($t4)
    /* EB528 800DC578 3C190008 */  lui        $t9, (0x80204 >> 16)
    /* EB52C 800DC57C 37390204 */  ori        $t9, $t9, (0x80204 & 0xFFFF)
    /* EB530 800DC580 246F0008 */  addiu      $t7, $v1, 0x8
    /* EB534 800DC584 AD8F0000 */  sw         $t7, 0x0($t4)
    /* EB538 800DC588 AC790004 */  sw         $t9, 0x4($v1)
    /* EB53C 800DC58C AC780000 */  sw         $t8, 0x0($v1)
    /* EB540 800DC590 8D830000 */  lw         $v1, 0x0($t4)
    /* EB544 800DC594 3C0EB108 */  lui        $t6, (0xB1080406 >> 16)
    /* EB548 800DC598 35CE0406 */  ori        $t6, $t6, (0xB1080406 & 0xFFFF)
    /* EB54C 800DC59C 246D0008 */  addiu      $t5, $v1, 0x8
    /* EB550 800DC5A0 AD8D0000 */  sw         $t5, 0x0($t4)
    /* EB554 800DC5A4 240F0608 */  addiu      $t7, $zero, 0x608
    /* EB558 800DC5A8 27BD0008 */  addiu      $sp, $sp, 0x8
    /* EB55C 800DC5AC AC6F0004 */  sw         $t7, 0x4($v1)
    /* EB560 800DC5B0 03E00008 */  jr         $ra
    /* EB564 800DC5B4 AC6E0000 */   sw        $t6, 0x0($v1)
endlabel func_800DC18C_EB13C
