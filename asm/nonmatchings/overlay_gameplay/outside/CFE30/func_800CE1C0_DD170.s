nonmatching func_800CE1C0_DD170, 0x528

glabel func_800CE1C0_DD170
    /* DD170 800CE1C0 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* DD174 800CE1C4 AFB70044 */  sw         $s7, 0x44($sp)
    /* DD178 800CE1C8 309700FF */  andi       $s7, $a0, 0xFF
    /* DD17C 800CE1CC 00177080 */  sll        $t6, $s7, 2
    /* DD180 800CE1D0 01D77023 */  subu       $t6, $t6, $s7
    /* DD184 800CE1D4 3C0F8015 */  lui        $t7, %hi(D_80154088)
    /* DD188 800CE1D8 AFBE0048 */  sw         $fp, 0x48($sp)
    /* DD18C 800CE1DC 25EF4088 */  addiu      $t7, $t7, %lo(D_80154088)
    /* DD190 800CE1E0 000E7080 */  sll        $t6, $t6, 2
    /* DD194 800CE1E4 AFB30034 */  sw         $s3, 0x34($sp)
    /* DD198 800CE1E8 01CFF021 */  addu       $fp, $t6, $t7
    /* DD19C 800CE1EC 87D30006 */  lh         $s3, 0x6($fp)
    /* DD1A0 800CE1F0 AFB60040 */  sw         $s6, 0x40($sp)
    /* DD1A4 800CE1F4 2401FFFB */  addiu      $at, $zero, -0x5
    /* DD1A8 800CE1F8 AFBF004C */  sw         $ra, 0x4C($sp)
    /* DD1AC 800CE1FC AFB5003C */  sw         $s5, 0x3C($sp)
    /* DD1B0 800CE200 AFB40038 */  sw         $s4, 0x38($sp)
    /* DD1B4 800CE204 AFB20030 */  sw         $s2, 0x30($sp)
    /* DD1B8 800CE208 AFB1002C */  sw         $s1, 0x2C($sp)
    /* DD1BC 800CE20C AFB00028 */  sw         $s0, 0x28($sp)
    /* DD1C0 800CE210 AFA40080 */  sw         $a0, 0x80($sp)
    /* DD1C4 800CE214 12610004 */  beq        $s3, $at, .L800CE228_DD1D8
    /* DD1C8 800CE218 0000B025 */   or        $s6, $zero, $zero
    /* DD1CC 800CE21C 2401FFFA */  addiu      $at, $zero, -0x6
    /* DD1D0 800CE220 16610008 */  bne        $s3, $at, .L800CE244_DD1F4
    /* DD1D4 800CE224 3C098015 */   lui       $t1, %hi(D_80154318)
  .L800CE228_DD1D8:
    /* DD1D8 800CE228 32E400FF */  andi       $a0, $s7, 0xFF
    /* DD1DC 800CE22C 0C030506 */  jal        func_800C1418_D03C8
    /* DD1E0 800CE230 00002825 */   or        $a1, $zero, $zero
    /* DD1E4 800CE234 0C0304E1 */  jal        func_800C1384_D0334
    /* DD1E8 800CE238 32E400FF */   andi      $a0, $s7, 0xFF
    /* DD1EC 800CE23C 1000011F */  b          .L800CE6BC_DD66C
    /* DD1F0 800CE240 8FBF004C */   lw        $ra, 0x4C($sp)
  .L800CE244_DD1F4:
    /* DD1F4 800CE244 87D80008 */  lh         $t8, 0x8($fp)
    /* DD1F8 800CE248 25294318 */  addiu      $t1, $t1, %lo(D_80154318)
    /* DD1FC 800CE24C 24070008 */  addiu      $a3, $zero, 0x8
    /* DD200 800CE250 0018C8C0 */  sll        $t9, $t8, 3
    /* DD204 800CE254 0338C823 */  subu       $t9, $t9, $t8
    /* DD208 800CE258 0019C880 */  sll        $t9, $t9, 2
    /* DD20C 800CE25C 27280008 */  addiu      $t0, $t9, 0x8
    /* DD210 800CE260 0109A021 */  addu       $s4, $t0, $t1
    /* DD214 800CE264 86840000 */  lh         $a0, 0x0($s4)
    /* DD218 800CE268 86850002 */  lh         $a1, 0x2($s4)
    /* DD21C 800CE26C 86860004 */  lh         $a2, 0x4($s4)
    /* DD220 800CE270 0C04DCDA */  jal        func_80137368_146318
    /* DD224 800CE274 AFB70010 */   sw        $s7, 0x10($sp)
    /* DD228 800CE278 2401FFFB */  addiu      $at, $zero, -0x5
    /* DD22C 800CE27C 1261010E */  beq        $s3, $at, .L800CE6B8_DD668
    /* DD230 800CE280 2401FFFA */   addiu     $at, $zero, -0x6
    /* DD234 800CE284 1261010C */  beq        $s3, $at, .L800CE6B8_DD668
    /* DD238 800CE288 001350C0 */   sll       $t2, $s3, 3
  .L800CE28C_DD23C:
    /* DD23C 800CE28C 01535023 */  subu       $t2, $t2, $s3
    /* DD240 800CE290 3C0B8015 */  lui        $t3, %hi(D_80154318)
    /* DD244 800CE294 256B4318 */  addiu      $t3, $t3, %lo(D_80154318)
    /* DD248 800CE298 000A5080 */  sll        $t2, $t2, 2
    /* DD24C 800CE29C 014B8821 */  addu       $s1, $t2, $t3
    /* DD250 800CE2A0 862C0010 */  lh         $t4, 0x10($s1)
    /* DD254 800CE2A4 26300008 */  addiu      $s0, $s1, 0x8
    /* DD258 800CE2A8 0200A025 */  or         $s4, $s0, $zero
    /* DD25C 800CE2AC 258DFFFB */  addiu      $t5, $t4, -0x5
    /* DD260 800CE2B0 A62D0010 */  sh         $t5, 0x10($s1)
    /* DD264 800CE2B4 862E0010 */  lh         $t6, 0x10($s1)
    /* DD268 800CE2B8 240FFFEC */  addiu      $t7, $zero, -0x14
    /* DD26C 800CE2BC 29C1FFEC */  slti       $at, $t6, -0x14
    /* DD270 800CE2C0 50200003 */  beql       $at, $zero, .L800CE2D0_DD280
    /* DD274 800CE2C4 86180000 */   lh        $t8, 0x0($s0)
    /* DD278 800CE2C8 A60F0008 */  sh         $t7, 0x8($s0)
    /* DD27C 800CE2CC 86180000 */  lh         $t8, 0x0($s0)
  .L800CE2D0_DD280:
    /* DD280 800CE2D0 86190006 */  lh         $t9, 0x6($s0)
    /* DD284 800CE2D4 860C0004 */  lh         $t4, 0x4($s0)
    /* DD288 800CE2D8 860D000A */  lh         $t5, 0xA($s0)
    /* DD28C 800CE2DC 03194021 */  addu       $t0, $t8, $t9
    /* DD290 800CE2E0 A6080000 */  sh         $t0, 0x0($s0)
    /* DD294 800CE2E4 018D7021 */  addu       $t6, $t4, $t5
    /* DD298 800CE2E8 A60E0004 */  sh         $t6, 0x4($s0)
    /* DD29C 800CE2EC 86090002 */  lh         $t1, 0x2($s0)
    /* DD2A0 800CE2F0 860A0008 */  lh         $t2, 0x8($s0)
    /* DD2A4 800CE2F4 86050004 */  lh         $a1, 0x4($s0)
    /* DD2A8 800CE2F8 86040000 */  lh         $a0, 0x0($s0)
    /* DD2AC 800CE2FC 012A5821 */  addu       $t3, $t1, $t2
    /* DD2B0 800CE300 00054203 */  sra        $t0, $a1, 8
    /* DD2B4 800CE304 00047A03 */  sra        $t7, $a0, 8
    /* DD2B8 800CE308 000FC600 */  sll        $t8, $t7, 24
    /* DD2BC 800CE30C 00084E00 */  sll        $t1, $t0, 24
    /* DD2C0 800CE310 A60B0002 */  sh         $t3, 0x2($s0)
    /* DD2C4 800CE314 00092E03 */  sra        $a1, $t1, 24
    /* DD2C8 800CE318 0C047498 */  jal        func_8011D260_12C210
    /* DD2CC 800CE31C 00182603 */   sra       $a0, $t8, 24
    /* DD2D0 800CE320 0002AC00 */  sll        $s5, $v0, 16
    /* DD2D4 800CE324 00155C03 */  sra        $t3, $s5, 16
    /* DD2D8 800CE328 86040000 */  lh         $a0, 0x0($s0)
    /* DD2DC 800CE32C 86050004 */  lh         $a1, 0x4($s0)
    /* DD2E0 800CE330 27AC0072 */  addiu      $t4, $sp, 0x72
    /* DD2E4 800CE334 0160A825 */  or         $s5, $t3, $zero
    /* DD2E8 800CE338 AFAC0010 */  sw         $t4, 0x10($sp)
    /* DD2EC 800CE33C 27A60070 */  addiu      $a2, $sp, 0x70
    /* DD2F0 800CE340 0C03E758 */  jal        func_800F9D60_108D10
    /* DD2F4 800CE344 27A70074 */   addiu     $a3, $sp, 0x74
    /* DD2F8 800CE348 86030002 */  lh         $v1, 0x2($s0)
    /* DD2FC 800CE34C 87AD0074 */  lh         $t5, 0x74($sp)
    /* DD300 800CE350 87AE0072 */  lh         $t6, 0x72($sp)
    /* DD304 800CE354 3C088022 */  lui        $t0, %hi(D_80222A70)
    /* DD308 800CE358 006D082A */  slt        $at, $v1, $t5
    /* DD30C 800CE35C 1420007A */  bnez       $at, .L800CE548_DD4F8
    /* DD310 800CE360 01C3082A */   slt       $at, $t6, $v1
    /* DD314 800CE364 14200078 */  bnez       $at, .L800CE548_DD4F8
    /* DD318 800CE368 00000000 */   nop
    /* DD31C 800CE36C 56C0000D */  bnel       $s6, $zero, .L800CE3A4_DD354
    /* DD320 800CE370 93D80004 */   lbu       $t8, 0x4($fp)
    /* DD324 800CE374 0C000E38 */  jal        func_800038E0_44E0
    /* DD328 800CE378 24160001 */   addiu     $s6, $zero, 0x1
    /* DD32C 800CE37C 24010006 */  addiu      $at, $zero, 0x6
    /* DD330 800CE380 0041001A */  div        $zero, $v0, $at
    /* DD334 800CE384 00007810 */  mfhi       $t7
    /* DD338 800CE388 55E00006 */  bnel       $t7, $zero, .L800CE3A4_DD354
    /* DD33C 800CE38C 93D80004 */   lbu       $t8, 0x4($fp)
    /* DD340 800CE390 86040000 */  lh         $a0, 0x0($s0)
    /* DD344 800CE394 86050002 */  lh         $a1, 0x2($s0)
    /* DD348 800CE398 0C038127 */  jal        func_800E049C_EF44C
    /* DD34C 800CE39C 86060004 */   lh        $a2, 0x4($s0)
    /* DD350 800CE3A0 93D80004 */  lbu        $t8, 0x4($fp)
  .L800CE3A4_DD354:
    /* DD354 800CE3A4 00132400 */  sll        $a0, $s3, 16
    /* DD358 800CE3A8 0004CC03 */  sra        $t9, $a0, 16
    /* DD35C 800CE3AC 2B010003 */  slti       $at, $t8, 0x3
    /* DD360 800CE3B0 10200008 */  beqz       $at, .L800CE3D4_DD384
    /* DD364 800CE3B4 03202025 */   or        $a0, $t9, $zero
    /* DD368 800CE3B8 32E400FF */  andi       $a0, $s7, 0xFF
    /* DD36C 800CE3BC 0C030506 */  jal        func_800C1418_D03C8
    /* DD370 800CE3C0 00002825 */   or        $a1, $zero, $zero
    /* DD374 800CE3C4 0C0304E1 */  jal        func_800C1384_D0334
    /* DD378 800CE3C8 32E400FF */   andi      $a0, $s7, 0xFF
    /* DD37C 800CE3CC 100000BB */  b          .L800CE6BC_DD66C
    /* DD380 800CE3D0 8FBF004C */   lw        $ra, 0x4C($sp)
  .L800CE3D4_DD384:
    /* DD384 800CE3D4 86300004 */  lh         $s0, 0x4($s1)
    /* DD388 800CE3D8 32E500FF */  andi       $a1, $s7, 0xFF
    /* DD38C 800CE3DC 0C030693 */  jal        func_800C1A4C_D09FC
    /* DD390 800CE3E0 00003025 */   or        $a2, $zero, $zero
    /* DD394 800CE3E4 00154880 */  sll        $t1, $s5, 2
    /* DD398 800CE3E8 01354823 */  subu       $t1, $t1, $s5
    /* DD39C 800CE3EC 000948C0 */  sll        $t1, $t1, 3
    /* DD3A0 800CE3F0 3C0A8005 */  lui        $t2, %hi(D_80050AE0)
    /* DD3A4 800CE3F4 01495021 */  addu       $t2, $t2, $t1
    /* DD3A8 800CE3F8 8D4A0AE0 */  lw         $t2, %lo(D_80050AE0)($t2)
    /* DD3AC 800CE3FC 00109C00 */  sll        $s3, $s0, 16
    /* DD3B0 800CE400 00134403 */  sra        $t0, $s3, 16
    /* DD3B4 800CE404 000A5B02 */  srl        $t3, $t2, 12
    /* DD3B8 800CE408 316C0010 */  andi       $t4, $t3, 0x10
    /* DD3BC 800CE40C 1180004A */  beqz       $t4, .L800CE538_DD4E8
    /* DD3C0 800CE410 01009825 */   or        $s3, $t0, $zero
    /* DD3C4 800CE414 0C000E38 */  jal        func_800038E0_44E0
    /* DD3C8 800CE418 00000000 */   nop
    /* DD3CC 800CE41C 24010003 */  addiu      $at, $zero, 0x3
    /* DD3D0 800CE420 0041001A */  div        $zero, $v0, $at
    /* DD3D4 800CE424 00006810 */  mfhi       $t5
    /* DD3D8 800CE428 15A00043 */  bnez       $t5, .L800CE538_DD4E8
    /* DD3DC 800CE42C 00000000 */   nop
    /* DD3E0 800CE430 0C000E38 */  jal        func_800038E0_44E0
    /* DD3E4 800CE434 00000000 */   nop
    /* DD3E8 800CE438 0C000E38 */  jal        func_800038E0_44E0
    /* DD3EC 800CE43C 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* DD3F0 800CE440 0C000E38 */  jal        func_800038E0_44E0
    /* DD3F4 800CE444 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* DD3F8 800CE448 0C000E38 */  jal        func_800038E0_44E0
    /* DD3FC 800CE44C 3052FFFF */   andi      $s2, $v0, 0xFFFF
    /* DD400 800CE450 24030032 */  addiu      $v1, $zero, 0x32
    /* DD404 800CE454 0203001A */  div        $zero, $s0, $v1
    /* DD408 800CE458 00007010 */  mfhi       $t6
    /* DD40C 800CE45C 868F0000 */  lh         $t7, 0x0($s4)
    /* DD410 800CE460 14600002 */  bnez       $v1, .L800CE46C_DD41C
    /* DD414 800CE464 00000000 */   nop
    /* DD418 800CE468 0007000D */  break      7
  .L800CE46C_DD41C:
    /* DD41C 800CE46C 2401FFFF */  addiu      $at, $zero, -0x1
    /* DD420 800CE470 14610004 */  bne        $v1, $at, .L800CE484_DD434
    /* DD424 800CE474 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DD428 800CE478 16010002 */  bne        $s0, $at, .L800CE484_DD434
    /* DD42C 800CE47C 00000000 */   nop
    /* DD430 800CE480 0006000D */  break      6
  .L800CE484_DD434:
    /* DD434 800CE484 0223001A */  div        $zero, $s1, $v1
    /* DD438 800CE488 00004010 */  mfhi       $t0
    /* DD43C 800CE48C 86890002 */  lh         $t1, 0x2($s4)
    /* DD440 800CE490 01CF2021 */  addu       $a0, $t6, $t7
    /* DD444 800CE494 0243001A */  div        $zero, $s2, $v1
    /* DD448 800CE498 00006010 */  mfhi       $t4
    /* DD44C 800CE49C 868D0004 */  lh         $t5, 0x4($s4)
    /* DD450 800CE4A0 2484FFE7 */  addiu      $a0, $a0, -0x19
    /* DD454 800CE4A4 0004C400 */  sll        $t8, $a0, 16
    /* DD458 800CE4A8 0018CC03 */  sra        $t9, $t8, 16
    /* DD45C 800CE4AC 01092821 */  addu       $a1, $t0, $t1
    /* DD460 800CE4B0 24A5FFE7 */  addiu      $a1, $a1, -0x19
    /* DD464 800CE4B4 018D3021 */  addu       $a2, $t4, $t5
    /* DD468 800CE4B8 24C6FFE7 */  addiu      $a2, $a2, -0x19
    /* DD46C 800CE4BC 00055400 */  sll        $t2, $a1, 16
    /* DD470 800CE4C0 03202025 */  or         $a0, $t9, $zero
    /* DD474 800CE4C4 14600002 */  bnez       $v1, .L800CE4D0_DD480
    /* DD478 800CE4C8 00000000 */   nop
    /* DD47C 800CE4CC 0007000D */  break      7
  .L800CE4D0_DD480:
    /* DD480 800CE4D0 2401FFFF */  addiu      $at, $zero, -0x1
    /* DD484 800CE4D4 14610004 */  bne        $v1, $at, .L800CE4E8_DD498
    /* DD488 800CE4D8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DD48C 800CE4DC 16210002 */  bne        $s1, $at, .L800CE4E8_DD498
    /* DD490 800CE4E0 00000000 */   nop
    /* DD494 800CE4E4 0006000D */  break      6
  .L800CE4E8_DD498:
    /* DD498 800CE4E8 000A5C03 */  sra        $t3, $t2, 16
    /* DD49C 800CE4EC 00067400 */  sll        $t6, $a2, 16
    /* DD4A0 800CE4F0 000E3403 */  sra        $a2, $t6, 16
    /* DD4A4 800CE4F4 01602825 */  or         $a1, $t3, $zero
    /* DD4A8 800CE4F8 14600002 */  bnez       $v1, .L800CE504_DD4B4
    /* DD4AC 800CE4FC 00000000 */   nop
    /* DD4B0 800CE500 0007000D */  break      7
  .L800CE504_DD4B4:
    /* DD4B4 800CE504 2401FFFF */  addiu      $at, $zero, -0x1
    /* DD4B8 800CE508 14610004 */  bne        $v1, $at, .L800CE51C_DD4CC
    /* DD4BC 800CE50C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* DD4C0 800CE510 16410002 */  bne        $s2, $at, .L800CE51C_DD4CC
    /* DD4C4 800CE514 00000000 */   nop
    /* DD4C8 800CE518 0006000D */  break      6
  .L800CE51C_DD4CC:
    /* DD4CC 800CE51C 24010028 */  addiu      $at, $zero, 0x28
    /* DD4D0 800CE520 0041001A */  div        $zero, $v0, $at
    /* DD4D4 800CE524 0000C010 */  mfhi       $t8
    /* DD4D8 800CE528 2719003C */  addiu      $t9, $t8, 0x3C
    /* DD4DC 800CE52C AFB90010 */  sw         $t9, 0x10($sp)
    /* DD4E0 800CE530 0C0376D8 */  jal        func_800DDB60_ECB10
    /* DD4E4 800CE534 2407000A */   addiu     $a3, $zero, 0xA
  .L800CE538_DD4E8:
    /* DD4E8 800CE538 0C036A87 */  jal        func_800DAA1C_E99CC
    /* DD4EC 800CE53C 32A400FF */   andi      $a0, $s5, 0xFF
    /* DD4F0 800CE540 10000059 */  b          .L800CE6A8_DD658
    /* DD4F4 800CE544 2401FFFB */   addiu     $at, $zero, -0x5
  .L800CE548_DD4F8:
    /* DD4F8 800CE548 8D082A70 */  lw         $t0, %lo(D_80222A70)($t0)
    /* DD4FC 800CE54C 87B80070 */  lh         $t8, 0x70($sp)
    /* DD500 800CE550 0103082A */  slt        $at, $t0, $v1
    /* DD504 800CE554 5420002A */  bnel       $at, $zero, .L800CE600_DD5B0
    /* DD508 800CE558 0303082A */   slt       $at, $t8, $v1
    /* DD50C 800CE55C 56C00013 */  bnel       $s6, $zero, .L800CE5AC_DD55C
    /* DD510 800CE560 93CD0004 */   lbu       $t5, 0x4($fp)
    /* DD514 800CE564 0C000E38 */  jal        func_800038E0_44E0
    /* DD518 800CE568 24160001 */   addiu     $s6, $zero, 0x1
    /* DD51C 800CE56C 24010003 */  addiu      $at, $zero, 0x3
    /* DD520 800CE570 0041001A */  div        $zero, $v0, $at
    /* DD524 800CE574 00004810 */  mfhi       $t1
    /* DD528 800CE578 24060028 */  addiu      $a2, $zero, 0x28
    /* DD52C 800CE57C 1520000A */  bnez       $t1, .L800CE5A8_DD558
    /* DD530 800CE580 240700BE */   addiu     $a3, $zero, 0xBE
    /* DD534 800CE584 86040000 */  lh         $a0, 0x0($s0)
    /* DD538 800CE588 86050004 */  lh         $a1, 0x4($s0)
    /* DD53C 800CE58C 240A00C8 */  addiu      $t2, $zero, 0xC8
    /* DD540 800CE590 240B00FF */  addiu      $t3, $zero, 0xFF
    /* DD544 800CE594 240C00AA */  addiu      $t4, $zero, 0xAA
    /* DD548 800CE598 AFAC0018 */  sw         $t4, 0x18($sp)
    /* DD54C 800CE59C AFAB0014 */  sw         $t3, 0x14($sp)
    /* DD550 800CE5A0 0C03254C */  jal        func_800C9530_D84E0
    /* DD554 800CE5A4 AFAA0010 */   sw        $t2, 0x10($sp)
  .L800CE5A8_DD558:
    /* DD558 800CE5A8 93CD0004 */  lbu        $t5, 0x4($fp)
  .L800CE5AC_DD55C:
    /* DD55C 800CE5AC 00132400 */  sll        $a0, $s3, 16
    /* DD560 800CE5B0 00047403 */  sra        $t6, $a0, 16
    /* DD564 800CE5B4 29A10003 */  slti       $at, $t5, 0x3
    /* DD568 800CE5B8 10200008 */  beqz       $at, .L800CE5DC_DD58C
    /* DD56C 800CE5BC 01C02025 */   or        $a0, $t6, $zero
    /* DD570 800CE5C0 32E400FF */  andi       $a0, $s7, 0xFF
    /* DD574 800CE5C4 0C030506 */  jal        func_800C1418_D03C8
    /* DD578 800CE5C8 00002825 */   or        $a1, $zero, $zero
    /* DD57C 800CE5CC 0C0304E1 */  jal        func_800C1384_D0334
    /* DD580 800CE5D0 32E400FF */   andi      $a0, $s7, 0xFF
    /* DD584 800CE5D4 10000039 */  b          .L800CE6BC_DD66C
    /* DD588 800CE5D8 8FBF004C */   lw        $ra, 0x4C($sp)
  .L800CE5DC_DD58C:
    /* DD58C 800CE5DC 86300004 */  lh         $s0, 0x4($s1)
    /* DD590 800CE5E0 32E500FF */  andi       $a1, $s7, 0xFF
    /* DD594 800CE5E4 0C030693 */  jal        func_800C1A4C_D09FC
    /* DD598 800CE5E8 00003025 */   or        $a2, $zero, $zero
    /* DD59C 800CE5EC 00109C00 */  sll        $s3, $s0, 16
    /* DD5A0 800CE5F0 00137C03 */  sra        $t7, $s3, 16
    /* DD5A4 800CE5F4 1000002B */  b          .L800CE6A4_DD654
    /* DD5A8 800CE5F8 01E09825 */   or        $s3, $t7, $zero
    /* DD5AC 800CE5FC 0303082A */  slt        $at, $t8, $v1
  .L800CE600_DD5B0:
    /* DD5B0 800CE600 54200028 */  bnel       $at, $zero, .L800CE6A4_DD654
    /* DD5B4 800CE604 86330004 */   lh        $s3, 0x4($s1)
    /* DD5B8 800CE608 56C00011 */  bnel       $s6, $zero, .L800CE650_DD600
    /* DD5BC 800CE60C 93CB0004 */   lbu       $t3, 0x4($fp)
    /* DD5C0 800CE610 0C000E38 */  jal        func_800038E0_44E0
    /* DD5C4 800CE614 24160001 */   addiu     $s6, $zero, 0x1
    /* DD5C8 800CE618 30590001 */  andi       $t9, $v0, 0x1
    /* DD5CC 800CE61C 1720000B */  bnez       $t9, .L800CE64C_DD5FC
    /* DD5D0 800CE620 24060028 */   addiu     $a2, $zero, 0x28
    /* DD5D4 800CE624 86040000 */  lh         $a0, 0x0($s0)
    /* DD5D8 800CE628 86050004 */  lh         $a1, 0x4($s0)
    /* DD5DC 800CE62C 240800A0 */  addiu      $t0, $zero, 0xA0
    /* DD5E0 800CE630 240900FF */  addiu      $t1, $zero, 0xFF
    /* DD5E4 800CE634 240A0096 */  addiu      $t2, $zero, 0x96
    /* DD5E8 800CE638 AFAA0018 */  sw         $t2, 0x18($sp)
    /* DD5EC 800CE63C AFA90014 */  sw         $t1, 0x14($sp)
    /* DD5F0 800CE640 AFA80010 */  sw         $t0, 0x10($sp)
    /* DD5F4 800CE644 0C03254C */  jal        func_800C9530_D84E0
    /* DD5F8 800CE648 24070096 */   addiu     $a3, $zero, 0x96
  .L800CE64C_DD5FC:
    /* DD5FC 800CE64C 93CB0004 */  lbu        $t3, 0x4($fp)
  .L800CE650_DD600:
    /* DD600 800CE650 00132400 */  sll        $a0, $s3, 16
    /* DD604 800CE654 00046403 */  sra        $t4, $a0, 16
    /* DD608 800CE658 29610003 */  slti       $at, $t3, 0x3
    /* DD60C 800CE65C 10200008 */  beqz       $at, .L800CE680_DD630
    /* DD610 800CE660 01802025 */   or        $a0, $t4, $zero
    /* DD614 800CE664 32E400FF */  andi       $a0, $s7, 0xFF
    /* DD618 800CE668 0C030506 */  jal        func_800C1418_D03C8
    /* DD61C 800CE66C 00002825 */   or        $a1, $zero, $zero
    /* DD620 800CE670 0C0304E1 */  jal        func_800C1384_D0334
    /* DD624 800CE674 32E400FF */   andi      $a0, $s7, 0xFF
    /* DD628 800CE678 10000010 */  b          .L800CE6BC_DD66C
    /* DD62C 800CE67C 8FBF004C */   lw        $ra, 0x4C($sp)
  .L800CE680_DD630:
    /* DD630 800CE680 86300004 */  lh         $s0, 0x4($s1)
    /* DD634 800CE684 32E500FF */  andi       $a1, $s7, 0xFF
    /* DD638 800CE688 0C030693 */  jal        func_800C1A4C_D09FC
    /* DD63C 800CE68C 00003025 */   or        $a2, $zero, $zero
    /* DD640 800CE690 00109C00 */  sll        $s3, $s0, 16
    /* DD644 800CE694 00136C03 */  sra        $t5, $s3, 16
    /* DD648 800CE698 10000002 */  b          .L800CE6A4_DD654
    /* DD64C 800CE69C 01A09825 */   or        $s3, $t5, $zero
    /* DD650 800CE6A0 86330004 */  lh         $s3, 0x4($s1)
  .L800CE6A4_DD654:
    /* DD654 800CE6A4 2401FFFB */  addiu      $at, $zero, -0x5
  .L800CE6A8_DD658:
    /* DD658 800CE6A8 12610003 */  beq        $s3, $at, .L800CE6B8_DD668
    /* DD65C 800CE6AC 2401FFFA */   addiu     $at, $zero, -0x6
    /* DD660 800CE6B0 5661FEF6 */  bnel       $s3, $at, .L800CE28C_DD23C
    /* DD664 800CE6B4 001350C0 */   sll       $t2, $s3, 3
  .L800CE6B8_DD668:
    /* DD668 800CE6B8 8FBF004C */  lw         $ra, 0x4C($sp)
  .L800CE6BC_DD66C:
    /* DD66C 800CE6BC 8FB00028 */  lw         $s0, 0x28($sp)
    /* DD670 800CE6C0 8FB1002C */  lw         $s1, 0x2C($sp)
    /* DD674 800CE6C4 8FB20030 */  lw         $s2, 0x30($sp)
    /* DD678 800CE6C8 8FB30034 */  lw         $s3, 0x34($sp)
    /* DD67C 800CE6CC 8FB40038 */  lw         $s4, 0x38($sp)
    /* DD680 800CE6D0 8FB5003C */  lw         $s5, 0x3C($sp)
    /* DD684 800CE6D4 8FB60040 */  lw         $s6, 0x40($sp)
    /* DD688 800CE6D8 8FB70044 */  lw         $s7, 0x44($sp)
    /* DD68C 800CE6DC 8FBE0048 */  lw         $fp, 0x48($sp)
    /* DD690 800CE6E0 03E00008 */  jr         $ra
    /* DD694 800CE6E4 27BD0080 */   addiu     $sp, $sp, 0x80
endlabel func_800CE1C0_DD170
