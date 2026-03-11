nonmatching func_802DEDE4_2C1214, 0x1D0

glabel func_802DEDE4_2C1214
    /* 2C1214 802DEDE4 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 2C1218 802DEDE8 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 2C121C 802DEDEC AFA40060 */  sw         $a0, 0x60($sp)
    /* 2C1220 802DEDF0 AFB00028 */  sw         $s0, 0x28($sp)
    /* 2C1224 802DEDF4 0C01E55B */  jal        func_8007956C_8851C
    /* 2C1228 802DEDF8 24040026 */   addiu     $a0, $zero, 0x26
    /* 2C122C 802DEDFC 304E00FF */  andi       $t6, $v0, 0xFF
    /* 2C1230 802DEE00 240100FF */  addiu      $at, $zero, 0xFF
    /* 2C1234 802DEE04 11C10066 */  beq        $t6, $at, .L802DEFA0_2C13D0
    /* 2C1238 802DEE08 304800FF */   andi      $t0, $v0, 0xFF
    /* 2C123C 802DEE0C 93AF0063 */  lbu        $t7, 0x63($sp)
    /* 2C1240 802DEE10 3C198005 */  lui        $t9, %hi(alienInstances)
    /* 2C1244 802DEE14 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* 2C1248 802DEE18 000FC080 */  sll        $t8, $t7, 2
    /* 2C124C 802DEE1C 030FC021 */  addu       $t8, $t8, $t7
    /* 2C1250 802DEE20 0018C100 */  sll        $t8, $t8, 4
    /* 2C1254 802DEE24 03198021 */  addu       $s0, $t8, $t9
    /* 2C1258 802DEE28 27A90054 */  addiu      $t1, $sp, 0x54
    /* 2C125C 802DEE2C 27AA0050 */  addiu      $t2, $sp, 0x50
    /* 2C1260 802DEE30 27AB004C */  addiu      $t3, $sp, 0x4C
    /* 2C1264 802DEE34 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 2C1268 802DEE38 AFAA0014 */  sw         $t2, 0x14($sp)
    /* 2C126C 802DEE3C AFA90010 */  sw         $t1, 0x10($sp)
    /* 2C1270 802DEE40 02002025 */  or         $a0, $s0, $zero
    /* 2C1274 802DEE44 2405FFF1 */  addiu      $a1, $zero, -0xF
    /* 2C1278 802DEE48 2406FF92 */  addiu      $a2, $zero, -0x6E
    /* 2C127C 802DEE4C 2407FFE2 */  addiu      $a3, $zero, -0x1E
    /* 2C1280 802DEE50 0C04A10A */  jal        func_80128428_1373D8
    /* 2C1284 802DEE54 A3A8005B */   sb        $t0, 0x5B($sp)
    /* 2C1288 802DEE58 93A8005B */  lbu        $t0, 0x5B($sp)
    /* 2C128C 802DEE5C 3C0D8005 */  lui        $t5, %hi(alienInstances)
    /* 2C1290 802DEE60 25AD8198 */  addiu      $t5, $t5, %lo(alienInstances)
    /* 2C1294 802DEE64 00086080 */  sll        $t4, $t0, 2
    /* 2C1298 802DEE68 01886021 */  addu       $t4, $t4, $t0
    /* 2C129C 802DEE6C 000C6100 */  sll        $t4, $t4, 4
    /* 2C12A0 802DEE70 8FAE0054 */  lw         $t6, 0x54($sp)
    /* 2C12A4 802DEE74 8FAF0050 */  lw         $t7, 0x50($sp)
    /* 2C12A8 802DEE78 8FB8004C */  lw         $t8, 0x4C($sp)
    /* 2C12AC 802DEE7C 018D1821 */  addu       $v1, $t4, $t5
    /* 2C12B0 802DEE80 A46E0000 */  sh         $t6, 0x0($v1)
    /* 2C12B4 802DEE84 A46F0002 */  sh         $t7, 0x2($v1)
    /* 2C12B8 802DEE88 A4780004 */  sh         $t8, 0x4($v1)
    /* 2C12BC 802DEE8C 86020006 */  lh         $v0, 0x6($s0)
    /* 2C12C0 802DEE90 24190FA0 */  addiu      $t9, $zero, 0xFA0
    /* 2C12C4 802DEE94 A479000A */  sh         $t9, 0xA($v1)
    /* 2C12C8 802DEE98 3C098025 */  lui        $t1, %hi(D_80256AD0)
    /* 2C12CC 802DEE9C A462000E */  sh         $v0, 0xE($v1)
    /* 2C12D0 802DEEA0 A4620006 */  sh         $v0, 0x6($v1)
    /* 2C12D4 802DEEA4 85296AD0 */  lh         $t1, %lo(D_80256AD0)($t1)
    /* 2C12D8 802DEEA8 8C6B0020 */  lw         $t3, 0x20($v1)
    /* 2C12DC 802DEEAC 93AD0063 */  lbu        $t5, 0x63($sp)
    /* 2C12E0 802DEEB0 3C010100 */  lui        $at, (0x1000000 >> 16)
    /* 2C12E4 802DEEB4 00095080 */  sll        $t2, $t1, 2
    /* 2C12E8 802DEEB8 01495023 */  subu       $t2, $t2, $t1
    /* 2C12EC 802DEEBC 01616025 */  or         $t4, $t3, $at
    /* 2C12F0 802DEEC0 A46A0012 */  sh         $t2, 0x12($v1)
    /* 2C12F4 802DEEC4 AC6C0020 */  sw         $t4, 0x20($v1)
    /* 2C12F8 802DEEC8 A06D0025 */  sb         $t5, 0x25($v1)
    /* 2C12FC 802DEECC 820E003C */  lb         $t6, 0x3C($s0)
    /* 2C1300 802DEED0 24180032 */  addiu      $t8, $zero, 0x32
    /* 2C1304 802DEED4 3044FFFF */  andi       $a0, $v0, 0xFFFF
    /* 2C1308 802DEED8 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 2C130C 802DEEDC A20F003C */  sb         $t7, 0x3C($s0)
    /* 2C1310 802DEEE0 A478003A */  sh         $t8, 0x3A($v1)
    /* 2C1314 802DEEE4 AFA40034 */  sw         $a0, 0x34($sp)
    /* 2C1318 802DEEE8 0C007654 */  jal        coss
    /* 2C131C 802DEEEC AFA30038 */   sw        $v1, 0x38($sp)
    /* 2C1320 802DEEF0 44822000 */  mtc1       $v0, $f4
    /* 2C1324 802DEEF4 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C1328 802DEEF8 44815800 */  mtc1       $at, $f11
    /* 2C132C 802DEEFC 468021A0 */  cvt.s.w    $f6, $f4
    /* 2C1330 802DEF00 44805000 */  mtc1       $zero, $f10
    /* 2C1334 802DEF04 3C01802E */  lui        $at, %hi(D_802E3058)
    /* 2C1338 802DEF08 D4323058 */  ldc1       $f18, %lo(D_802E3058)($at)
    /* 2C133C 802DEF0C 86190000 */  lh         $t9, 0x0($s0)
    /* 2C1340 802DEF10 8FA30038 */  lw         $v1, 0x38($sp)
    /* 2C1344 802DEF14 46003221 */  cvt.d.s    $f8, $f6
    /* 2C1348 802DEF18 44993000 */  mtc1       $t9, $f6
    /* 2C134C 802DEF1C 462A4403 */  div.d      $f16, $f8, $f10
    /* 2C1350 802DEF20 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 2C1354 802DEF24 8FA40034 */  lw         $a0, 0x34($sp)
    /* 2C1358 802DEF28 46803221 */  cvt.d.w    $f8, $f6
    /* 2C135C 802DEF2C 46328102 */  mul.d      $f4, $f16, $f18
    /* 2C1360 802DEF30 46282280 */  add.d      $f10, $f4, $f8
    /* 2C1364 802DEF34 4620540D */  trunc.w.d  $f16, $f10
    /* 2C1368 802DEF38 440A8000 */  mfc1       $t2, $f16
    /* 2C136C 802DEF3C 00000000 */  nop
    /* 2C1370 802DEF40 A46A0014 */  sh         $t2, 0x14($v1)
    /* 2C1374 802DEF44 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 2C1378 802DEF48 856C0002 */  lh         $t4, 0x2($t3)
    /* 2C137C 802DEF4C 0C007660 */  jal        sins
    /* 2C1380 802DEF50 A46C0016 */   sh        $t4, 0x16($v1)
    /* 2C1384 802DEF54 44829000 */  mtc1       $v0, $f18
    /* 2C1388 802DEF58 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 2C138C 802DEF5C 44814800 */  mtc1       $at, $f9
    /* 2C1390 802DEF60 468091A0 */  cvt.s.w    $f6, $f18
    /* 2C1394 802DEF64 44804000 */  mtc1       $zero, $f8
    /* 2C1398 802DEF68 3C01802E */  lui        $at, %hi(D_802E3060)
    /* 2C139C 802DEF6C D4303060 */  ldc1       $f16, %lo(D_802E3060)($at)
    /* 2C13A0 802DEF70 860D0004 */  lh         $t5, 0x4($s0)
    /* 2C13A4 802DEF74 8FA30038 */  lw         $v1, 0x38($sp)
    /* 2C13A8 802DEF78 46003121 */  cvt.d.s    $f4, $f6
    /* 2C13AC 802DEF7C 448D3000 */  mtc1       $t5, $f6
    /* 2C13B0 802DEF80 46282283 */  div.d      $f10, $f4, $f8
    /* 2C13B4 802DEF84 46803121 */  cvt.d.w    $f4, $f6
    /* 2C13B8 802DEF88 46305482 */  mul.d      $f18, $f10, $f16
    /* 2C13BC 802DEF8C 46249200 */  add.d      $f8, $f18, $f4
    /* 2C13C0 802DEF90 4620428D */  trunc.w.d  $f10, $f8
    /* 2C13C4 802DEF94 440F5000 */  mfc1       $t7, $f10
    /* 2C13C8 802DEF98 00000000 */  nop
    /* 2C13CC 802DEF9C A46F0018 */  sh         $t7, 0x18($v1)
  .L802DEFA0_2C13D0:
    /* 2C13D0 802DEFA0 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 2C13D4 802DEFA4 8FB00028 */  lw         $s0, 0x28($sp)
    /* 2C13D8 802DEFA8 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 2C13DC 802DEFAC 03E00008 */  jr         $ra
    /* 2C13E0 802DEFB0 00000000 */   nop
endlabel func_802DEDE4_2C1214
