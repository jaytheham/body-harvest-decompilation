nonmatching func_800EB0C8_FA078, 0x46C

glabel func_800EB0C8_FA078
    /* FA078 800EB0C8 3C038015 */  lui        $v1, %hi(D_80157600)
    /* FA07C 800EB0CC 24637600 */  addiu      $v1, $v1, %lo(D_80157600)
    /* FA080 800EB0D0 8C6E040C */  lw         $t6, 0x40C($v1)
    /* FA084 800EB0D4 3C028014 */  lui        $v0, %hi(D_8013E5B0)
    /* FA088 800EB0D8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* FA08C 800EB0DC 000E7880 */  sll        $t7, $t6, 2
    /* FA090 800EB0E0 01EE7823 */  subu       $t7, $t7, $t6
    /* FA094 800EB0E4 000F7880 */  sll        $t7, $t7, 2
    /* FA098 800EB0E8 01EE7821 */  addu       $t7, $t7, $t6
    /* FA09C 800EB0EC 000F7880 */  sll        $t7, $t7, 2
    /* FA0A0 800EB0F0 004F1021 */  addu       $v0, $v0, $t7
    /* FA0A4 800EB0F4 8C42E5B0 */  lw         $v0, %lo(D_8013E5B0)($v0)
    /* FA0A8 800EB0F8 44812000 */  mtc1       $at, $f4
    /* FA0AC 800EB0FC 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* FA0B0 800EB100 AFB00018 */  sw         $s0, 0x18($sp)
    /* FA0B4 800EB104 30580010 */  andi       $t8, $v0, 0x10
    /* FA0B8 800EB108 00808025 */  or         $s0, $a0, $zero
    /* FA0BC 800EB10C AFBF001C */  sw         $ra, 0x1C($sp)
    /* FA0C0 800EB110 1300000F */  beqz       $t8, .L800EB150_FA100
    /* FA0C4 800EB114 E7A4003C */   swc1      $f4, 0x3C($sp)
    /* FA0C8 800EB118 0C03ED0C */  jal        func_800FB430_10A3E0
    /* FA0CC 800EB11C 24050000 */   addiu     $a1, $zero, 0x0
    /* FA0D0 800EB120 3C198015 */  lui        $t9, %hi(D_80157A0C)
    /* FA0D4 800EB124 8F397A0C */  lw         $t9, %lo(D_80157A0C)($t9)
    /* FA0D8 800EB128 3C028014 */  lui        $v0, %hi(D_8013E5B0)
    /* FA0DC 800EB12C 3C038015 */  lui        $v1, %hi(D_80157600)
    /* FA0E0 800EB130 00194080 */  sll        $t0, $t9, 2
    /* FA0E4 800EB134 01194023 */  subu       $t0, $t0, $t9
    /* FA0E8 800EB138 00084080 */  sll        $t0, $t0, 2
    /* FA0EC 800EB13C 01194021 */  addu       $t0, $t0, $t9
    /* FA0F0 800EB140 00084080 */  sll        $t0, $t0, 2
    /* FA0F4 800EB144 00481021 */  addu       $v0, $v0, $t0
    /* FA0F8 800EB148 8C42E5B0 */  lw         $v0, %lo(D_8013E5B0)($v0)
    /* FA0FC 800EB14C 24637600 */  addiu      $v1, $v1, %lo(D_80157600)
  .L800EB150_FA100:
    /* FA100 800EB150 30490800 */  andi       $t1, $v0, 0x800
    /* FA104 800EB154 112000EF */  beqz       $t1, .L800EB514_FA4C4
    /* FA108 800EB158 02002025 */   or        $a0, $s0, $zero
    /* FA10C 800EB15C 0C03ED0C */  jal        func_800FB430_10A3E0
    /* FA110 800EB160 24050000 */   addiu     $a1, $zero, 0x0
    /* FA114 800EB164 3C028015 */  lui        $v0, %hi(D_80157600)
    /* FA118 800EB168 860A000E */  lh         $t2, 0xE($s0)
    /* FA11C 800EB16C 24427600 */  addiu      $v0, $v0, %lo(D_80157600)
    /* FA120 800EB170 C4460008 */  lwc1       $f6, 0x8($v0)
    /* FA124 800EB174 C4480414 */  lwc1       $f8, 0x414($v0)
    /* FA128 800EB178 448A2000 */  mtc1       $t2, $f4
    /* FA12C 800EB17C C44A0010 */  lwc1       $f10, 0x10($v0)
    /* FA130 800EB180 46083001 */  sub.s      $f0, $f6, $f8
    /* FA134 800EB184 C4520418 */  lwc1       $f18, 0x418($v0)
    /* FA138 800EB188 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* FA13C 800EB18C 468021A0 */  cvt.s.w    $f6, $f4
    /* FA140 800EB190 44817000 */  mtc1       $at, $f14
    /* FA144 800EB194 3C018014 */  lui        $at, %hi(D_801443E8)
    /* FA148 800EB198 44802000 */  mtc1       $zero, $f4
    /* FA14C 800EB19C 46125081 */  sub.s      $f2, $f10, $f18
    /* FA150 800EB1A0 D42A43E8 */  ldc1       $f10, %lo(D_801443E8)($at)
    /* FA154 800EB1A4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* FA158 800EB1A8 46003221 */  cvt.d.s    $f8, $f6
    /* FA15C 800EB1AC 44812800 */  mtc1       $at, $f5
    /* FA160 800EB1B0 462A4482 */  mul.d      $f18, $f8, $f10
    /* FA164 800EB1B4 460E0003 */  div.s      $f0, $f0, $f14
    /* FA168 800EB1B8 46249183 */  div.d      $f6, $f18, $f4
    /* FA16C 800EB1BC E7A00038 */  swc1       $f0, 0x38($sp)
    /* FA170 800EB1C0 460E1083 */  div.s      $f2, $f2, $f14
    /* FA174 800EB1C4 46203320 */  cvt.s.d    $f12, $f6
    /* FA178 800EB1C8 0C0079EC */  jal        __cosf
    /* FA17C 800EB1CC E7A20034 */   swc1      $f2, 0x34($sp)
    /* FA180 800EB1D0 860B000E */  lh         $t3, 0xE($s0)
    /* FA184 800EB1D4 3C018014 */  lui        $at, %hi(D_801443F0)
    /* FA188 800EB1D8 D42443F0 */  ldc1       $f4, %lo(D_801443F0)($at)
    /* FA18C 800EB1DC 448B4000 */  mtc1       $t3, $f8
    /* FA190 800EB1E0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* FA194 800EB1E4 44814800 */  mtc1       $at, $f9
    /* FA198 800EB1E8 468042A0 */  cvt.s.w    $f10, $f8
    /* FA19C 800EB1EC 44804000 */  mtc1       $zero, $f8
    /* FA1A0 800EB1F0 E7A00020 */  swc1       $f0, 0x20($sp)
    /* FA1A4 800EB1F4 460054A1 */  cvt.d.s    $f18, $f10
    /* FA1A8 800EB1F8 46249182 */  mul.d      $f6, $f18, $f4
    /* FA1AC 800EB1FC 46283283 */  div.d      $f10, $f6, $f8
    /* FA1B0 800EB200 0C00797C */  jal        sinf
    /* FA1B4 800EB204 46205320 */   cvt.s.d   $f12, $f10
    /* FA1B8 800EB208 C7A20020 */  lwc1       $f2, 0x20($sp)
    /* FA1BC 800EB20C C7B20034 */  lwc1       $f18, 0x34($sp)
    /* FA1C0 800EB210 C7A60038 */  lwc1       $f6, 0x38($sp)
    /* FA1C4 800EB214 860C000E */  lh         $t4, 0xE($s0)
    /* FA1C8 800EB218 46121102 */  mul.s      $f4, $f2, $f18
    /* FA1CC 800EB21C 3C018014 */  lui        $at, %hi(D_801443F8)
    /* FA1D0 800EB220 448C5000 */  mtc1       $t4, $f10
    /* FA1D4 800EB224 46060202 */  mul.s      $f8, $f0, $f6
    /* FA1D8 800EB228 468054A0 */  cvt.s.w    $f18, $f10
    /* FA1DC 800EB22C 44805000 */  mtc1       $zero, $f10
    /* FA1E0 800EB230 46082381 */  sub.s      $f14, $f4, $f8
    /* FA1E4 800EB234 D42443F8 */  ldc1       $f4, %lo(D_801443F8)($at)
    /* FA1E8 800EB238 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* FA1EC 800EB23C 460091A1 */  cvt.d.s    $f6, $f18
    /* FA1F0 800EB240 44815800 */  mtc1       $at, $f11
    /* FA1F4 800EB244 46243202 */  mul.d      $f8, $f6, $f4
    /* FA1F8 800EB248 E7AE0030 */  swc1       $f14, 0x30($sp)
    /* FA1FC 800EB24C 462A4483 */  div.d      $f18, $f8, $f10
    /* FA200 800EB250 0C00797C */  jal        sinf
    /* FA204 800EB254 46209320 */   cvt.s.d   $f12, $f18
    /* FA208 800EB258 860D000E */  lh         $t5, 0xE($s0)
    /* FA20C 800EB25C 3C018014 */  lui        $at, %hi(D_80144400)
    /* FA210 800EB260 D42A4400 */  ldc1       $f10, %lo(D_80144400)($at)
    /* FA214 800EB264 448D3000 */  mtc1       $t5, $f6
    /* FA218 800EB268 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* FA21C 800EB26C 44813800 */  mtc1       $at, $f7
    /* FA220 800EB270 46803120 */  cvt.s.w    $f4, $f6
    /* FA224 800EB274 44803000 */  mtc1       $zero, $f6
    /* FA228 800EB278 E7A00020 */  swc1       $f0, 0x20($sp)
    /* FA22C 800EB27C 46002221 */  cvt.d.s    $f8, $f4
    /* FA230 800EB280 462A4482 */  mul.d      $f18, $f8, $f10
    /* FA234 800EB284 46269103 */  div.d      $f4, $f18, $f6
    /* FA238 800EB288 0C0079EC */  jal        __cosf
    /* FA23C 800EB28C 46202320 */   cvt.s.d   $f12, $f4
    /* FA240 800EB290 C7A80038 */  lwc1       $f8, 0x38($sp)
    /* FA244 800EB294 C7A20020 */  lwc1       $f2, 0x20($sp)
    /* FA248 800EB298 C7B20034 */  lwc1       $f18, 0x34($sp)
    /* FA24C 800EB29C 46080282 */  mul.s      $f10, $f0, $f8
    /* FA250 800EB2A0 86040000 */  lh         $a0, 0x0($s0)
    /* FA254 800EB2A4 86050004 */  lh         $a1, 0x4($s0)
    /* FA258 800EB2A8 46121182 */  mul.s      $f6, $f2, $f18
    /* FA25C 800EB2AC 8606000E */  lh         $a2, 0xE($s0)
    /* FA260 800EB2B0 46065300 */  add.s      $f12, $f10, $f6
    /* FA264 800EB2B4 0C03E9A4 */  jal        func_800FA690_109640
    /* FA268 800EB2B8 E7AC002C */   swc1      $f12, 0x2C($sp)
    /* FA26C 800EB2BC 44822000 */  mtc1       $v0, $f4
    /* FA270 800EB2C0 3C01C120 */  lui        $at, (0xC1200000 >> 16)
    /* FA274 800EB2C4 44811000 */  mtc1       $at, $f2
    /* FA278 800EB2C8 46802220 */  cvt.s.w    $f8, $f4
    /* FA27C 800EB2CC 3C018014 */  lui        $at, %hi(D_80144408)
    /* FA280 800EB2D0 D42A4408 */  ldc1       $f10, %lo(D_80144408)($at)
    /* FA284 800EB2D4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* FA288 800EB2D8 44812800 */  mtc1       $at, $f5
    /* FA28C 800EB2DC 44802000 */  mtc1       $zero, $f4
    /* FA290 800EB2E0 460044A1 */  cvt.d.s    $f18, $f8
    /* FA294 800EB2E4 C7AC002C */  lwc1       $f12, 0x2C($sp)
    /* FA298 800EB2E8 462A9182 */  mul.d      $f6, $f18, $f10
    /* FA29C 800EB2EC C7AE0030 */  lwc1       $f14, 0x30($sp)
    /* FA2A0 800EB2F0 3C0E8005 */  lui        $t6, %hi(D_80052B34)
    /* FA2A4 800EB2F4 46243203 */  div.d      $f8, $f6, $f4
    /* FA2A8 800EB2F8 46204020 */  cvt.s.d    $f0, $f8
    /* FA2AC 800EB2FC 4602003C */  c.lt.s     $f0, $f2
    /* FA2B0 800EB300 00000000 */  nop
    /* FA2B4 800EB304 4502002E */  bc1fl      .L800EB3C0_FA370
    /* FA2B8 800EB308 C7A2003C */   lwc1      $f2, 0x3C($sp)
    /* FA2BC 800EB30C 8DCE2B34 */  lw         $t6, %lo(D_80052B34)($t6)
    /* FA2C0 800EB310 95C20020 */  lhu        $v0, 0x20($t6)
    /* FA2C4 800EB314 304F0800 */  andi       $t7, $v0, 0x800
    /* FA2C8 800EB318 15E00028 */  bnez       $t7, .L800EB3BC_FA36C
    /* FA2CC 800EB31C 30580004 */   andi      $t8, $v0, 0x4
    /* FA2D0 800EB320 17000026 */  bnez       $t8, .L800EB3BC_FA36C
    /* FA2D4 800EB324 3C198015 */   lui       $t9, %hi(D_80157A28)
    /* FA2D8 800EB328 8F397A28 */  lw         $t9, %lo(D_80157A28)($t9)
    /* FA2DC 800EB32C 33280004 */  andi       $t0, $t9, 0x4
    /* FA2E0 800EB330 55000023 */  bnel       $t0, $zero, .L800EB3C0_FA370
    /* FA2E4 800EB334 C7A2003C */   lwc1      $f2, 0x3C($sp)
    /* FA2E8 800EB338 4602003C */  c.lt.s     $f0, $f2
    /* FA2EC 800EB33C 3C018014 */  lui        $at, %hi(D_80144410)
    /* FA2F0 800EB340 45020004 */  bc1fl      .L800EB354_FA304
    /* FA2F4 800EB344 3C01C170 */   lui       $at, (0xC1700000 >> 16)
    /* FA2F8 800EB348 C4224410 */  lwc1       $f2, %lo(D_80144410)($at)
    /* FA2FC 800EB34C E7A2003C */  swc1       $f2, 0x3C($sp)
    /* FA300 800EB350 3C01C170 */  lui        $at, (0xC1700000 >> 16)
  .L800EB354_FA304:
    /* FA304 800EB354 44819000 */  mtc1       $at, $f18
    /* FA308 800EB358 C7A2003C */  lwc1       $f2, 0x3C($sp)
    /* FA30C 800EB35C 3C018014 */  lui        $at, %hi(D_80144414)
    /* FA310 800EB360 4612003C */  c.lt.s     $f0, $f18
    /* FA314 800EB364 00000000 */  nop
    /* FA318 800EB368 45020003 */  bc1fl      .L800EB378_FA328
    /* FA31C 800EB36C 3C01C1A0 */   lui       $at, (0xC1A00000 >> 16)
    /* FA320 800EB370 C4224414 */  lwc1       $f2, %lo(D_80144414)($at)
    /* FA324 800EB374 3C01C1A0 */  lui        $at, (0xC1A00000 >> 16)
  .L800EB378_FA328:
    /* FA328 800EB378 44815000 */  mtc1       $at, $f10
    /* FA32C 800EB37C 3C018014 */  lui        $at, %hi(D_80144418)
    /* FA330 800EB380 460A003C */  c.lt.s     $f0, $f10
    /* FA334 800EB384 00000000 */  nop
    /* FA338 800EB388 45020003 */  bc1fl      .L800EB398_FA348
    /* FA33C 800EB38C 3C01C1C8 */   lui       $at, (0xC1C80000 >> 16)
    /* FA340 800EB390 C4224418 */  lwc1       $f2, %lo(D_80144418)($at)
    /* FA344 800EB394 3C01C1C8 */  lui        $at, (0xC1C80000 >> 16)
  .L800EB398_FA348:
    /* FA348 800EB398 44813000 */  mtc1       $at, $f6
    /* FA34C 800EB39C 3C018014 */  lui        $at, %hi(D_8014441C)
    /* FA350 800EB3A0 E7A2003C */  swc1       $f2, 0x3C($sp)
    /* FA354 800EB3A4 4606003C */  c.lt.s     $f0, $f6
    /* FA358 800EB3A8 00000000 */  nop
    /* FA35C 800EB3AC 45020004 */  bc1fl      .L800EB3C0_FA370
    /* FA360 800EB3B0 C7A2003C */   lwc1      $f2, 0x3C($sp)
    /* FA364 800EB3B4 C422441C */  lwc1       $f2, %lo(D_8014441C)($at)
    /* FA368 800EB3B8 E7A2003C */  swc1       $f2, 0x3C($sp)
  .L800EB3BC_FA36C:
    /* FA36C 800EB3BC C7A2003C */  lwc1       $f2, 0x3C($sp)
  .L800EB3C0_FA370:
    /* FA370 800EB3C0 3C098005 */  lui        $t1, %hi(D_80048188)
    /* FA374 800EB3C4 8D298188 */  lw         $t1, %lo(D_80048188)($t1)
    /* FA378 800EB3C8 46027382 */  mul.s      $f14, $f14, $f2
    /* FA37C 800EB3CC 3C028015 */  lui        $v0, %hi(D_801575E0)
    /* FA380 800EB3D0 244275E0 */  addiu      $v0, $v0, %lo(D_801575E0)
    /* FA384 800EB3D4 46026302 */  mul.s      $f12, $f12, $f2
    /* FA388 800EB3D8 51200040 */  beql       $t1, $zero, .L800EB4DC_FA48C
    /* FA38C 800EB3DC C604004C */   lwc1      $f4, 0x4C($s0)
    /* FA390 800EB3E0 844A0004 */  lh         $t2, 0x4($v0)
    /* FA394 800EB3E4 24017FFF */  addiu      $at, $zero, 0x7FFF
    /* FA398 800EB3E8 000A5840 */  sll        $t3, $t2, 1
    /* FA39C 800EB3EC 004B1821 */  addu       $v1, $v0, $t3
    /* FA3A0 800EB3F0 84640006 */  lh         $a0, 0x6($v1)
    /* FA3A4 800EB3F4 50810039 */  beql       $a0, $at, .L800EB4DC_FA48C
    /* FA3A8 800EB3F8 C604004C */   lwc1      $f4, 0x4C($s0)
    /* FA3AC 800EB3FC 860C0000 */  lh         $t4, 0x0($s0)
    /* FA3B0 800EB400 8466000E */  lh         $a2, 0xE($v1)
    /* FA3B4 800EB404 860F0004 */  lh         $t7, 0x4($s0)
    /* FA3B8 800EB408 008C1023 */  subu       $v0, $a0, $t4
    /* FA3BC 800EB40C 00026C00 */  sll        $t5, $v0, 16
    /* FA3C0 800EB410 00CF2823 */  subu       $a1, $a2, $t7
    /* FA3C4 800EB414 000D7403 */  sra        $t6, $t5, 16
    /* FA3C8 800EB418 0005C400 */  sll        $t8, $a1, 16
    /* FA3CC 800EB41C 01C01025 */  or         $v0, $t6, $zero
    /* FA3D0 800EB420 05C00003 */  bltz       $t6, .L800EB430_FA3E0
    /* FA3D4 800EB424 00182C03 */   sra       $a1, $t8, 16
    /* FA3D8 800EB428 10000002 */  b          .L800EB434_FA3E4
    /* FA3DC 800EB42C 01C01825 */   or        $v1, $t6, $zero
  .L800EB430_FA3E0:
    /* FA3E0 800EB430 00021823 */  negu       $v1, $v0
  .L800EB434_FA3E4:
    /* FA3E4 800EB434 44802000 */  mtc1       $zero, $f4
    /* FA3E8 800EB438 44834000 */  mtc1       $v1, $f8
    /* FA3EC 800EB43C 00051823 */  negu       $v1, $a1
    /* FA3F0 800EB440 460E203E */  c.le.s     $f4, $f14
    /* FA3F4 800EB444 44802000 */  mtc1       $zero, $f4
    /* FA3F8 800EB448 468044A0 */  cvt.s.w    $f18, $f8
    /* FA3FC 800EB44C 45020004 */  bc1fl      .L800EB460_FA410
    /* FA400 800EB450 46007087 */   neg.s     $f2, $f14
    /* FA404 800EB454 10000002 */  b          .L800EB460_FA410
    /* FA408 800EB458 46007086 */   mov.s     $f2, $f14
    /* FA40C 800EB45C 46007087 */  neg.s      $f2, $f14
  .L800EB460_FA410:
    /* FA410 800EB460 4602903C */  c.lt.s     $f18, $f2
    /* FA414 800EB464 00000000 */  nop
    /* FA418 800EB468 45020005 */  bc1fl      .L800EB480_FA430
    /* FA41C 800EB46C C606004C */   lwc1      $f6, 0x4C($s0)
    /* FA420 800EB470 44845000 */  mtc1       $a0, $f10
    /* FA424 800EB474 10000003 */  b          .L800EB484_FA434
    /* FA428 800EB478 46805420 */   cvt.s.w   $f16, $f10
    /* FA42C 800EB47C C606004C */  lwc1       $f6, 0x4C($s0)
  .L800EB480_FA430:
    /* FA430 800EB480 460E3400 */  add.s      $f16, $f6, $f14
  .L800EB484_FA434:
    /* FA434 800EB484 04A00003 */  bltz       $a1, .L800EB494_FA444
    /* FA438 800EB488 00000000 */   nop
    /* FA43C 800EB48C 10000001 */  b          .L800EB494_FA444
    /* FA440 800EB490 00A01825 */   or        $v1, $a1, $zero
  .L800EB494_FA444:
    /* FA444 800EB494 460C203E */  c.le.s     $f4, $f12
    /* FA448 800EB498 44834000 */  mtc1       $v1, $f8
    /* FA44C 800EB49C 45000003 */  bc1f       .L800EB4AC_FA45C
    /* FA450 800EB4A0 468044A0 */   cvt.s.w   $f18, $f8
    /* FA454 800EB4A4 10000002 */  b          .L800EB4B0_FA460
    /* FA458 800EB4A8 46006086 */   mov.s     $f2, $f12
  .L800EB4AC_FA45C:
    /* FA45C 800EB4AC 46006087 */  neg.s      $f2, $f12
  .L800EB4B0_FA460:
    /* FA460 800EB4B0 4602903C */  c.lt.s     $f18, $f2
    /* FA464 800EB4B4 00000000 */  nop
    /* FA468 800EB4B8 45020005 */  bc1fl      .L800EB4D0_FA480
    /* FA46C 800EB4BC C6060054 */   lwc1      $f6, 0x54($s0)
    /* FA470 800EB4C0 44865000 */  mtc1       $a2, $f10
    /* FA474 800EB4C4 10000008 */  b          .L800EB4E8_FA498
    /* FA478 800EB4C8 46805020 */   cvt.s.w   $f0, $f10
    /* FA47C 800EB4CC C6060054 */  lwc1       $f6, 0x54($s0)
  .L800EB4D0_FA480:
    /* FA480 800EB4D0 10000005 */  b          .L800EB4E8_FA498
    /* FA484 800EB4D4 460C3000 */   add.s     $f0, $f6, $f12
    /* FA488 800EB4D8 C604004C */  lwc1       $f4, 0x4C($s0)
  .L800EB4DC_FA48C:
    /* FA48C 800EB4DC C6080054 */  lwc1       $f8, 0x54($s0)
    /* FA490 800EB4E0 460E2400 */  add.s      $f16, $f4, $f14
    /* FA494 800EB4E4 460C4000 */  add.s      $f0, $f8, $f12
  .L800EB4E8_FA498:
    /* FA498 800EB4E8 44058000 */  mfc1       $a1, $f16
    /* FA49C 800EB4EC 02002025 */  or         $a0, $s0, $zero
    /* FA4A0 800EB4F0 0C03ED13 */  jal        func_800FB44C_10A3FC
    /* FA4A4 800EB4F4 E7A00024 */   swc1      $f0, 0x24($sp)
    /* FA4A8 800EB4F8 C7A00024 */  lwc1       $f0, 0x24($sp)
    /* FA4AC 800EB4FC 02002025 */  or         $a0, $s0, $zero
    /* FA4B0 800EB500 44050000 */  mfc1       $a1, $f0
    /* FA4B4 800EB504 0C03ED21 */  jal        func_800FB484_10A434
    /* FA4B8 800EB508 00000000 */   nop
    /* FA4BC 800EB50C 3C038015 */  lui        $v1, %hi(D_80157600)
    /* FA4C0 800EB510 24637600 */  addiu      $v1, $v1, %lo(D_80157600)
  .L800EB514_FA4C4:
    /* FA4C4 800EB514 8FBF001C */  lw         $ra, 0x1C($sp)
    /* FA4C8 800EB518 C4720008 */  lwc1       $f18, 0x8($v1)
    /* FA4CC 800EB51C C46A0010 */  lwc1       $f10, 0x10($v1)
    /* FA4D0 800EB520 8FB00018 */  lw         $s0, 0x18($sp)
    /* FA4D4 800EB524 27BD0048 */  addiu      $sp, $sp, 0x48
    /* FA4D8 800EB528 E4720414 */  swc1       $f18, 0x414($v1)
    /* FA4DC 800EB52C 03E00008 */  jr         $ra
    /* FA4E0 800EB530 E46A0418 */   swc1      $f10, 0x418($v1)
endlabel func_800EB0C8_FA078
