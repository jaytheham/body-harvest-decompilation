nonmatching func_802DD104_25C844, 0x8C4

glabel func_802DD104_25C844
    /* 25C844 802DD104 308E00FF */  andi       $t6, $a0, 0xFF
    /* 25C848 802DD108 240D0050 */  addiu      $t5, $zero, 0x50
    /* 25C84C 802DD10C 01CD0019 */  multu      $t6, $t5
    /* 25C850 802DD110 27BDFF58 */  addiu      $sp, $sp, -0xA8
    /* 25C854 802DD114 3C0C8005 */  lui        $t4, %hi(alienInstances)
    /* 25C858 802DD118 258C8198 */  addiu      $t4, $t4, %lo(alienInstances)
    /* 25C85C 802DD11C AFB00028 */  sw         $s0, 0x28($sp)
    /* 25C860 802DD120 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 25C864 802DD124 AFA400A8 */  sw         $a0, 0xA8($sp)
    /* 25C868 802DD128 01C02025 */  or         $a0, $t6, $zero
    /* 25C86C 802DD12C AFA500AC */  sw         $a1, 0xAC($sp)
    /* 25C870 802DD130 AFA600B0 */  sw         $a2, 0xB0($sp)
    /* 25C874 802DD134 00007812 */  mflo       $t7
    /* 25C878 802DD138 018F8021 */  addu       $s0, $t4, $t7
    /* 25C87C 802DD13C 92020025 */  lbu        $v0, 0x25($s0)
    /* 25C880 802DD140 9218001A */  lbu        $t8, 0x1A($s0)
    /* 25C884 802DD144 AFA700B4 */  sw         $a3, 0xB4($sp)
    /* 25C888 802DD148 004D0019 */  multu      $v0, $t5
    /* 25C88C 802DD14C A3B8005E */  sb         $t8, 0x5E($sp)
    /* 25C890 802DD150 3C098015 */  lui        $t1, %hi(D_8014DD50)
    /* 25C894 802DD154 2529DD50 */  addiu      $t1, $t1, %lo(D_8014DD50)
    /* 25C898 802DD158 24060190 */  addiu      $a2, $zero, 0x190
    /* 25C89C 802DD15C 24050190 */  addiu      $a1, $zero, 0x190
    /* 25C8A0 802DD160 0000C812 */  mflo       $t9
    /* 25C8A4 802DD164 0199F821 */  addu       $ra, $t4, $t9
    /* 25C8A8 802DD168 93EE0025 */  lbu        $t6, 0x25($ra)
    /* 25C8AC 802DD16C 01CD0019 */  multu      $t6, $t5
    /* 25C8B0 802DD170 860E000C */  lh         $t6, 0xC($s0)
    /* 25C8B4 802DD174 00007812 */  mflo       $t7
    /* 25C8B8 802DD178 018F1821 */  addu       $v1, $t4, $t7
    /* 25C8BC 802DD17C 90780000 */  lbu        $t8, 0x0($v1)
    /* 25C8C0 802DD180 A3B80061 */  sb         $t8, 0x61($sp)
    /* 25C8C4 802DD184 90790001 */  lbu        $t9, 0x1($v1)
    /* 25C8C8 802DD188 A7AE00A6 */  sh         $t6, 0xA6($sp)
    /* 25C8CC 802DD18C 87AF00A6 */  lh         $t7, 0xA6($sp)
    /* 25C8D0 802DD190 A3B90060 */  sb         $t9, 0x60($sp)
    /* 25C8D4 802DD194 000FC100 */  sll        $t8, $t7, 4
    /* 25C8D8 802DD198 01385821 */  addu       $t3, $t1, $t8
    /* 25C8DC 802DD19C 816A000C */  lb         $t2, 0xC($t3)
    /* 25C8E0 802DD1A0 000AC900 */  sll        $t9, $t2, 4
    /* 25C8E4 802DD1A4 01397021 */  addu       $t6, $t1, $t9
    /* 25C8E8 802DD1A8 AFAE0044 */  sw         $t6, 0x44($sp)
    /* 25C8EC 802DD1AC 81C8000C */  lb         $t0, 0xC($t6)
    /* 25C8F0 802DD1B0 0008C100 */  sll        $t8, $t0, 4
    /* 25C8F4 802DD1B4 0138C821 */  addu       $t9, $t1, $t8
    /* 25C8F8 802DD1B8 AFB90040 */  sw         $t9, 0x40($sp)
    /* 25C8FC 802DD1BC 832F000D */  lb         $t7, 0xD($t9)
    /* 25C900 802DD1C0 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 25C904 802DD1C4 AFAB0048 */  sw         $t3, 0x48($sp)
    /* 25C908 802DD1C8 A3A400AB */  sb         $a0, 0xAB($sp)
    /* 25C90C 802DD1CC AFA30058 */  sw         $v1, 0x58($sp)
    /* 25C910 802DD1D0 A7AA00A4 */  sh         $t2, 0xA4($sp)
    /* 25C914 802DD1D4 0C0B6F42 */  jal        func_802DBD08_25B448
    /* 25C918 802DD1D8 A7AF00A0 */   sh        $t7, 0xA0($sp)
    /* 25C91C 802DD1DC 86040000 */  lh         $a0, 0x0($s0)
    /* 25C920 802DD1E0 86050002 */  lh         $a1, 0x2($s0)
    /* 25C924 802DD1E4 0C021833 */  jal        func_800860CC_9507C
    /* 25C928 802DD1E8 86060004 */   lh        $a2, 0x4($s0)
    /* 25C92C 802DD1EC 8FB80048 */  lw         $t8, 0x48($sp)
    /* 25C930 802DD1F0 920F001A */  lbu        $t7, 0x1A($s0)
    /* 25C934 802DD1F4 2445FC00 */  addiu      $a1, $v0, -0x400
    /* 25C938 802DD1F8 8704000A */  lh         $a0, 0xA($t8)
    /* 25C93C 802DD1FC 000FC080 */  sll        $t8, $t7, 2
    /* 25C940 802DD200 030FC023 */  subu       $t8, $t8, $t7
    /* 25C944 802DD204 0018C080 */  sll        $t8, $t8, 2
    /* 25C948 802DD208 0005CC00 */  sll        $t9, $a1, 16
    /* 25C94C 802DD20C 00192C03 */  sra        $a1, $t9, 16
    /* 25C950 802DD210 030FC021 */  addu       $t8, $t8, $t7
    /* 25C954 802DD214 0018C0C0 */  sll        $t8, $t8, 3
    /* 25C958 802DD218 3C198025 */  lui        $t9, %hi(D_802566C2)
    /* 25C95C 802DD21C 0338C821 */  addu       $t9, $t9, $t8
    /* 25C960 802DD220 873966C2 */  lh         $t9, %lo(D_802566C2)($t9)
    /* 25C964 802DD224 24061F40 */  addiu      $a2, $zero, 0x1F40
    /* 25C968 802DD228 2407E890 */  addiu      $a3, $zero, -0x1770
    /* 25C96C 802DD22C 0C0216A7 */  jal        func_80085A9C_94A4C
    /* 25C970 802DD230 AFB90010 */   sw        $t9, 0x10($sp)
    /* 25C974 802DD234 8FA300B8 */  lw         $v1, 0xB8($sp)
    /* 25C978 802DD238 8FA70048 */  lw         $a3, 0x48($sp)
    /* 25C97C 802DD23C 93A400AB */  lbu        $a0, 0xAB($sp)
    /* 25C980 802DD240 00031823 */  negu       $v1, $v1
    /* 25C984 802DD244 00037280 */  sll        $t6, $v1, 10
    /* 25C988 802DD248 AFAE003C */  sw         $t6, 0x3C($sp)
    /* 25C98C 802DD24C 87A500A4 */  lh         $a1, 0xA4($sp)
    /* 25C990 802DD250 24060FA0 */  addiu      $a2, $zero, 0xFA0
    /* 25C994 802DD254 A4E2000A */  sh         $v0, 0xA($a3)
    /* 25C998 802DD258 0C0217DA */  jal        func_80085F68_94F18
    /* 25C99C 802DD25C A4EE0006 */   sh        $t6, 0x6($a3)
    /* 25C9A0 802DD260 8FAF0058 */  lw         $t7, 0x58($sp)
    /* 25C9A4 802DD264 8DE40020 */  lw         $a0, 0x20($t7)
    /* 25C9A8 802DD268 30981000 */  andi       $t8, $a0, 0x1000
    /* 25C9AC 802DD26C 570001D2 */  bnel       $t8, $zero, .L802DD9B8_25D0F8
    /* 25C9B0 802DD270 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 25C9B4 802DD274 8E030020 */  lw         $v1, 0x20($s0)
    /* 25C9B8 802DD278 87AE00A0 */  lh         $t6, 0xA0($sp)
    /* 25C9BC 802DD27C 3C188015 */  lui        $t8, %hi(D_8014DD50)
    /* 25C9C0 802DD280 30792000 */  andi       $t9, $v1, 0x2000
    /* 25C9C4 802DD284 13200103 */  beqz       $t9, .L802DD694_25CDD4
    /* 25C9C8 802DD288 306F1000 */   andi      $t7, $v1, 0x1000
    /* 25C9CC 802DD28C 000E7900 */  sll        $t7, $t6, 4
    /* 25C9D0 802DD290 2718DD50 */  addiu      $t8, $t8, %lo(D_8014DD50)
    /* 25C9D4 802DD294 01F83821 */  addu       $a3, $t7, $t8
    /* 25C9D8 802DD298 8602002C */  lh         $v0, 0x2C($s0)
    /* 25C9DC 802DD29C 8FB800B8 */  lw         $t8, 0xB8($sp)
    /* 25C9E0 802DD2A0 84F90004 */  lh         $t9, 0x4($a3)
    /* 25C9E4 802DD2A4 27A50090 */  addiu      $a1, $sp, 0x90
    /* 25C9E8 802DD2A8 03020019 */  multu      $t8, $v0
    /* 25C9EC 802DD2AC 03227021 */  addu       $t6, $t9, $v0
    /* 25C9F0 802DD2B0 A4EE0004 */  sh         $t6, 0x4($a3)
    /* 25C9F4 802DD2B4 84EF0004 */  lh         $t7, 0x4($a3)
    /* 25C9F8 802DD2B8 27A6007C */  addiu      $a2, $sp, 0x7C
    /* 25C9FC 802DD2BC 0000C812 */  mflo       $t9
    /* 25CA00 802DD2C0 07210003 */  bgez       $t9, .L802DD2D0_25CA10
    /* 25CA04 802DD2C4 001970C3 */   sra       $t6, $t9, 3
    /* 25CA08 802DD2C8 27210007 */  addiu      $at, $t9, 0x7
    /* 25CA0C 802DD2CC 000170C3 */  sra        $t6, $at, 3
  .L802DD2D0_25CA10:
    /* 25CA10 802DD2D0 2401FFA8 */  addiu      $at, $zero, -0x58
    /* 25CA14 802DD2D4 01EEC021 */  addu       $t8, $t7, $t6
    /* 25CA18 802DD2D8 14410005 */  bne        $v0, $at, .L802DD2F0_25CA30
    /* 25CA1C 802DD2DC A4F80004 */   sh        $t8, 0x4($a3)
    /* 25CA20 802DD2E0 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 25CA24 802DD2E4 0061C824 */  and        $t9, $v1, $at
    /* 25CA28 802DD2E8 AE190020 */  sw         $t9, 0x20($s0)
    /* 25CA2C 802DD2EC 8602002C */  lh         $v0, 0x2C($s0)
  .L802DD2F0_25CA30:
    /* 25CA30 802DD2F0 8FAE00AC */  lw         $t6, 0xAC($sp)
    /* 25CA34 802DD2F4 8FB800B0 */  lw         $t8, 0xB0($sp)
    /* 25CA38 802DD2F8 8FB900B4 */  lw         $t9, 0xB4($sp)
    /* 25CA3C 802DD2FC 83A400A5 */  lb         $a0, 0xA5($sp)
    /* 25CA40 802DD300 244FFFF8 */  addiu      $t7, $v0, -0x8
    /* 25CA44 802DD304 A60F002C */  sh         $t7, 0x2C($s0)
    /* 25CA48 802DD308 AFA7004C */  sw         $a3, 0x4C($sp)
    /* 25CA4C 802DD30C A7AE0090 */  sh         $t6, 0x90($sp)
    /* 25CA50 802DD310 A7B80092 */  sh         $t8, 0x92($sp)
    /* 25CA54 802DD314 A7B90094 */  sh         $t9, 0x94($sp)
    /* 25CA58 802DD318 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25CA5C 802DD31C AFA40044 */   sw        $a0, 0x44($sp)
    /* 25CA60 802DD320 8FAF007C */  lw         $t7, 0x7C($sp)
    /* 25CA64 802DD324 8FAE0080 */  lw         $t6, 0x80($sp)
    /* 25CA68 802DD328 8FB80084 */  lw         $t8, 0x84($sp)
    /* 25CA6C 802DD32C 83A400A7 */  lb         $a0, 0xA7($sp)
    /* 25CA70 802DD330 27A50090 */  addiu      $a1, $sp, 0x90
    /* 25CA74 802DD334 27A6007C */  addiu      $a2, $sp, 0x7C
    /* 25CA78 802DD338 A7AF0090 */  sh         $t7, 0x90($sp)
    /* 25CA7C 802DD33C A7AE0092 */  sh         $t6, 0x92($sp)
    /* 25CA80 802DD340 A7B80094 */  sh         $t8, 0x94($sp)
    /* 25CA84 802DD344 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25CA88 802DD348 AFA40048 */   sw        $a0, 0x48($sp)
    /* 25CA8C 802DD34C 8FA3007C */  lw         $v1, 0x7C($sp)
    /* 25CA90 802DD350 3C01802E */  lui        $at, %hi(D_802DF3A8)
    /* 25CA94 802DD354 C420F3A8 */  lwc1       $f0, %lo(D_802DF3A8)($at)
    /* 25CA98 802DD358 44832000 */  mtc1       $v1, $f4
    /* 25CA9C 802DD35C 8FA80080 */  lw         $t0, 0x80($sp)
    /* 25CAA0 802DD360 8FA90084 */  lw         $t1, 0x84($sp)
    /* 25CAA4 802DD364 468021A0 */  cvt.s.w    $f6, $f4
    /* 25CAA8 802DD368 44888000 */  mtc1       $t0, $f16
    /* 25CAAC 802DD36C 27AE0078 */  addiu      $t6, $sp, 0x78
    /* 25CAB0 802DD370 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 25CAB4 802DD374 02002025 */  or         $a0, $s0, $zero
    /* 25CAB8 802DD378 468084A0 */  cvt.s.w    $f18, $f16
    /* 25CABC 802DD37C 46003202 */  mul.s      $f8, $f6, $f0
    /* 25CAC0 802DD380 4600428D */  trunc.w.s  $f10, $f8
    /* 25CAC4 802DD384 44894000 */  mtc1       $t1, $f8
    /* 25CAC8 802DD388 46009102 */  mul.s      $f4, $f18, $f0
    /* 25CACC 802DD38C 44035000 */  mfc1       $v1, $f10
    /* 25CAD0 802DD390 00000000 */  nop
    /* 25CAD4 802DD394 00032C00 */  sll        $a1, $v1, 16
    /* 25CAD8 802DD398 468042A0 */  cvt.s.w    $f10, $f8
    /* 25CADC 802DD39C 0005C403 */  sra        $t8, $a1, 16
    /* 25CAE0 802DD3A0 03002825 */  or         $a1, $t8, $zero
    /* 25CAE4 802DD3A4 27B80074 */  addiu      $t8, $sp, 0x74
    /* 25CAE8 802DD3A8 AFB80014 */  sw         $t8, 0x14($sp)
    /* 25CAEC 802DD3AC 4600218D */  trunc.w.s  $f6, $f4
    /* 25CAF0 802DD3B0 46005402 */  mul.s      $f16, $f10, $f0
    /* 25CAF4 802DD3B4 AFA3007C */  sw         $v1, 0x7C($sp)
    /* 25CAF8 802DD3B8 44083000 */  mfc1       $t0, $f6
    /* 25CAFC 802DD3BC 00000000 */  nop
    /* 25CB00 802DD3C0 00083400 */  sll        $a2, $t0, 16
    /* 25CB04 802DD3C4 4600848D */  trunc.w.s  $f18, $f16
    /* 25CB08 802DD3C8 0006CC03 */  sra        $t9, $a2, 16
    /* 25CB0C 802DD3CC 03203025 */  or         $a2, $t9, $zero
    /* 25CB10 802DD3D0 27B90070 */  addiu      $t9, $sp, 0x70
    /* 25CB14 802DD3D4 44099000 */  mfc1       $t1, $f18
    /* 25CB18 802DD3D8 AFB90018 */  sw         $t9, 0x18($sp)
    /* 25CB1C 802DD3DC AFA80080 */  sw         $t0, 0x80($sp)
    /* 25CB20 802DD3E0 00093C00 */  sll        $a3, $t1, 16
    /* 25CB24 802DD3E4 00077C03 */  sra        $t7, $a3, 16
    /* 25CB28 802DD3E8 01E03825 */  or         $a3, $t7, $zero
    /* 25CB2C 802DD3EC 0C04A10A */  jal        func_80128428_1373D8
    /* 25CB30 802DD3F0 AFA90084 */   sw        $t1, 0x84($sp)
    /* 25CB34 802DD3F4 83A40047 */  lb         $a0, 0x47($sp)
    /* 25CB38 802DD3F8 8FA5004C */  lw         $a1, 0x4C($sp)
    /* 25CB3C 802DD3FC 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25CB40 802DD400 27A6007C */   addiu     $a2, $sp, 0x7C
    /* 25CB44 802DD404 8FA3007C */  lw         $v1, 0x7C($sp)
    /* 25CB48 802DD408 8FA80080 */  lw         $t0, 0x80($sp)
    /* 25CB4C 802DD40C 8FA90084 */  lw         $t1, 0x84($sp)
    /* 25CB50 802DD410 83A4004B */  lb         $a0, 0x4B($sp)
    /* 25CB54 802DD414 27A50090 */  addiu      $a1, $sp, 0x90
    /* 25CB58 802DD418 27A6007C */  addiu      $a2, $sp, 0x7C
    /* 25CB5C 802DD41C A7A30090 */  sh         $v1, 0x90($sp)
    /* 25CB60 802DD420 A7A80092 */  sh         $t0, 0x92($sp)
    /* 25CB64 802DD424 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25CB68 802DD428 A7A90094 */   sh        $t1, 0x94($sp)
    /* 25CB6C 802DD42C 8FA3007C */  lw         $v1, 0x7C($sp)
    /* 25CB70 802DD430 3C01802E */  lui        $at, %hi(D_802DF3A8)
    /* 25CB74 802DD434 C420F3A8 */  lwc1       $f0, %lo(D_802DF3A8)($at)
    /* 25CB78 802DD438 44832000 */  mtc1       $v1, $f4
    /* 25CB7C 802DD43C 8FA80080 */  lw         $t0, 0x80($sp)
    /* 25CB80 802DD440 8FA90084 */  lw         $t1, 0x84($sp)
    /* 25CB84 802DD444 468021A0 */  cvt.s.w    $f6, $f4
    /* 25CB88 802DD448 44888000 */  mtc1       $t0, $f16
    /* 25CB8C 802DD44C 27B8006C */  addiu      $t8, $sp, 0x6C
    /* 25CB90 802DD450 AFB80010 */  sw         $t8, 0x10($sp)
    /* 25CB94 802DD454 02002025 */  or         $a0, $s0, $zero
    /* 25CB98 802DD458 468084A0 */  cvt.s.w    $f18, $f16
    /* 25CB9C 802DD45C 46003202 */  mul.s      $f8, $f6, $f0
    /* 25CBA0 802DD460 4600428D */  trunc.w.s  $f10, $f8
    /* 25CBA4 802DD464 44894000 */  mtc1       $t1, $f8
    /* 25CBA8 802DD468 46009102 */  mul.s      $f4, $f18, $f0
    /* 25CBAC 802DD46C 44035000 */  mfc1       $v1, $f10
    /* 25CBB0 802DD470 00000000 */  nop
    /* 25CBB4 802DD474 00032C00 */  sll        $a1, $v1, 16
    /* 25CBB8 802DD478 468042A0 */  cvt.s.w    $f10, $f8
    /* 25CBBC 802DD47C 0005CC03 */  sra        $t9, $a1, 16
    /* 25CBC0 802DD480 03202825 */  or         $a1, $t9, $zero
    /* 25CBC4 802DD484 27B90068 */  addiu      $t9, $sp, 0x68
    /* 25CBC8 802DD488 AFB90014 */  sw         $t9, 0x14($sp)
    /* 25CBCC 802DD48C 4600218D */  trunc.w.s  $f6, $f4
    /* 25CBD0 802DD490 46005402 */  mul.s      $f16, $f10, $f0
    /* 25CBD4 802DD494 AFA3007C */  sw         $v1, 0x7C($sp)
    /* 25CBD8 802DD498 44083000 */  mfc1       $t0, $f6
    /* 25CBDC 802DD49C 00000000 */  nop
    /* 25CBE0 802DD4A0 00083400 */  sll        $a2, $t0, 16
    /* 25CBE4 802DD4A4 4600848D */  trunc.w.s  $f18, $f16
    /* 25CBE8 802DD4A8 00067C03 */  sra        $t7, $a2, 16
    /* 25CBEC 802DD4AC 01E03025 */  or         $a2, $t7, $zero
    /* 25CBF0 802DD4B0 27AF0064 */  addiu      $t7, $sp, 0x64
    /* 25CBF4 802DD4B4 44099000 */  mfc1       $t1, $f18
    /* 25CBF8 802DD4B8 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 25CBFC 802DD4BC AFA80080 */  sw         $t0, 0x80($sp)
    /* 25CC00 802DD4C0 00093C00 */  sll        $a3, $t1, 16
    /* 25CC04 802DD4C4 00077403 */  sra        $t6, $a3, 16
    /* 25CC08 802DD4C8 01C03825 */  or         $a3, $t6, $zero
    /* 25CC0C 802DD4CC 0C04A10A */  jal        func_80128428_1373D8
    /* 25CC10 802DD4D0 AFA90084 */   sw        $t1, 0x84($sp)
    /* 25CC14 802DD4D4 8FAE0068 */  lw         $t6, 0x68($sp)
    /* 25CC18 802DD4D8 8FB80064 */  lw         $t8, 0x64($sp)
    /* 25CC1C 802DD4DC 24190001 */  addiu      $t9, $zero, 0x1
    /* 25CC20 802DD4E0 AFB90018 */  sw         $t9, 0x18($sp)
    /* 25CC24 802DD4E4 87A4007A */  lh         $a0, 0x7A($sp)
    /* 25CC28 802DD4E8 87A50076 */  lh         $a1, 0x76($sp)
    /* 25CC2C 802DD4EC 87A60072 */  lh         $a2, 0x72($sp)
    /* 25CC30 802DD4F0 87A7006E */  lh         $a3, 0x6E($sp)
    /* 25CC34 802DD4F4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 25CC38 802DD4F8 0C0345AF */  jal        func_800D16BC_E066C
    /* 25CC3C 802DD4FC AFB80014 */   sw        $t8, 0x14($sp)
    /* 25CC40 802DD500 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 25CC44 802DD504 8FB8004C */  lw         $t8, 0x4C($sp)
    /* 25CC48 802DD508 31EE4000 */  andi       $t6, $t7, 0x4000
    /* 25CC4C 802DD50C 51C0002C */  beql       $t6, $zero, .L802DD5C0_25CD00
    /* 25CC50 802DD510 8602002C */   lh        $v0, 0x2C($s0)
    /* 25CC54 802DD514 8302000C */  lb         $v0, 0xC($t8)
    /* 25CC58 802DD518 3C0F8015 */  lui        $t7, %hi(D_8014DD50)
    /* 25CC5C 802DD51C 25EFDD50 */  addiu      $t7, $t7, %lo(D_8014DD50)
    /* 25CC60 802DD520 0002C900 */  sll        $t9, $v0, 4
    /* 25CC64 802DD524 032F7021 */  addu       $t6, $t9, $t7
    /* 25CC68 802DD528 81C3000D */  lb         $v1, 0xD($t6)
    /* 25CC6C 802DD52C 93A400AB */  lbu        $a0, 0xAB($sp)
    /* 25CC70 802DD530 24050003 */  addiu      $a1, $zero, 0x3
    /* 25CC74 802DD534 0003C100 */  sll        $t8, $v1, 4
    /* 25CC78 802DD538 030FC821 */  addu       $t9, $t8, $t7
    /* 25CC7C 802DD53C 8FB8003C */  lw         $t8, 0x3C($sp)
    /* 25CC80 802DD540 832E000D */  lb         $t6, 0xD($t9)
    /* 25CC84 802DD544 A7A20098 */  sh         $v0, 0x98($sp)
    /* 25CC88 802DD548 2B01FC01 */  slti       $at, $t8, -0x3FF
    /* 25CC8C 802DD54C A7A3009A */  sh         $v1, 0x9A($sp)
    /* 25CC90 802DD550 1020000B */  beqz       $at, .L802DD580_25CCC0
    /* 25CC94 802DD554 A7AE009C */   sh        $t6, 0x9C($sp)
    /* 25CC98 802DD558 3C0F802E */  lui        $t7, %hi(D_802E07EC)
    /* 25CC9C 802DD55C 25EF07EC */  addiu      $t7, $t7, %lo(D_802E07EC)
    /* 25CCA0 802DD560 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 25CCA4 802DD564 93A400AB */  lbu        $a0, 0xAB($sp)
    /* 25CCA8 802DD568 24050003 */  addiu      $a1, $zero, 0x3
    /* 25CCAC 802DD56C 24060007 */  addiu      $a2, $zero, 0x7
    /* 25CCB0 802DD570 0C0207C6 */  jal        func_80081F18_90EC8
    /* 25CCB4 802DD574 27A70098 */   addiu     $a3, $sp, 0x98
    /* 25CCB8 802DD578 10000008 */  b          .L802DD59C_25CCDC
    /* 25CCBC 802DD57C 00027600 */   sll       $t6, $v0, 24
  .L802DD580_25CCC0:
    /* 25CCC0 802DD580 3C19802E */  lui        $t9, %hi(D_802E0948)
    /* 25CCC4 802DD584 27390948 */  addiu      $t9, $t9, %lo(D_802E0948)
    /* 25CCC8 802DD588 AFB90010 */  sw         $t9, 0x10($sp)
    /* 25CCCC 802DD58C 24060007 */  addiu      $a2, $zero, 0x7
    /* 25CCD0 802DD590 0C0207C6 */  jal        func_80081F18_90EC8
    /* 25CCD4 802DD594 27A70098 */   addiu     $a3, $sp, 0x98
    /* 25CCD8 802DD598 00027600 */  sll        $t6, $v0, 24
  .L802DD59C_25CCDC:
    /* 25CCDC 802DD59C 000EC603 */  sra        $t8, $t6, 24
    /* 25CCE0 802DD5A0 24010007 */  addiu      $at, $zero, 0x7
    /* 25CCE4 802DD5A4 57010006 */  bnel       $t8, $at, .L802DD5C0_25CD00
    /* 25CCE8 802DD5A8 8602002C */   lh        $v0, 0x2C($s0)
    /* 25CCEC 802DD5AC 8E0F0020 */  lw         $t7, 0x20($s0)
    /* 25CCF0 802DD5B0 2401BFFF */  addiu      $at, $zero, -0x4001
    /* 25CCF4 802DD5B4 01E1C824 */  and        $t9, $t7, $at
    /* 25CCF8 802DD5B8 AE190020 */  sw         $t9, 0x20($s0)
    /* 25CCFC 802DD5BC 8602002C */  lh         $v0, 0x2C($s0)
  .L802DD5C0_25CD00:
    /* 25CD00 802DD5C0 044100F8 */  bgez       $v0, .L802DD9A4_25D0E4
    /* 25CD04 802DD5C4 2841FFD5 */   slti      $at, $v0, -0x2B
    /* 25CD08 802DD5C8 542000F7 */  bnel       $at, $zero, .L802DD9A8_25D0E8
    /* 25CD0C 802DD5CC 8602001E */   lh        $v0, 0x1E($s0)
    /* 25CD10 802DD5D0 0C0B7336 */  jal        func_802DCCD8_25C418
    /* 25CD14 802DD5D4 93A400AB */   lbu       $a0, 0xAB($sp)
    /* 25CD18 802DD5D8 504000F3 */  beql       $v0, $zero, .L802DD9A8_25D0E8
    /* 25CD1C 802DD5DC 8602001E */   lh        $v0, 0x1E($s0)
    /* 25CD20 802DD5E0 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 25CD24 802DD5E4 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 25CD28 802DD5E8 34018000 */  ori        $at, $zero, 0x8000
    /* 25CD2C 802DD5EC 31D81000 */  andi       $t8, $t6, 0x1000
    /* 25CD30 802DD5F0 170000EC */  bnez       $t8, .L802DD9A4_25D0E4
    /* 25CD34 802DD5F4 00003025 */   or        $a2, $zero, $zero
    /* 25CD38 802DD5F8 86050006 */  lh         $a1, 0x6($s0)
    /* 25CD3C 802DD5FC 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 25CD40 802DD600 3C074270 */  lui        $a3, (0x42700000 >> 16)
    /* 25CD44 802DD604 00A12821 */  addu       $a1, $a1, $at
    /* 25CD48 802DD608 00057C00 */  sll        $t7, $a1, 16
    /* 25CD4C 802DD60C 0C040B77 */  jal        func_80102DDC_111D8C
    /* 25CD50 802DD610 000F2C03 */   sra       $a1, $t7, 16
    /* 25CD54 802DD614 93A400AB */  lbu        $a0, 0xAB($sp)
    /* 25CD58 802DD618 0C04DD1A */  jal        func_80137468_146418
    /* 25CD5C 802DD61C 24050135 */   addiu     $a1, $zero, 0x135
    /* 25CD60 802DD620 93AE0061 */  lbu        $t6, 0x61($sp)
    /* 25CD64 802DD624 24060050 */  addiu      $a2, $zero, 0x50
    /* 25CD68 802DD628 3C048005 */  lui        $a0, %hi(alienInstances)
    /* 25CD6C 802DD62C 01C60019 */  multu      $t6, $a2
    /* 25CD70 802DD630 24848198 */  addiu      $a0, $a0, %lo(alienInstances)
    /* 25CD74 802DD634 3C050010 */  lui        $a1, (0x100000 >> 16)
    /* 25CD78 802DD638 24190004 */  addiu      $t9, $zero, 0x4
    /* 25CD7C 802DD63C 0000C012 */  mflo       $t8
    /* 25CD80 802DD640 00981821 */  addu       $v1, $a0, $t8
    /* 25CD84 802DD644 8C620020 */  lw         $v0, 0x20($v1)
    /* 25CD88 802DD648 00027AC0 */  sll        $t7, $v0, 11
    /* 25CD8C 802DD64C 05E00004 */  bltz       $t7, .L802DD660_25CDA0
    /* 25CD90 802DD650 344E1000 */   ori       $t6, $v0, 0x1000
    /* 25CD94 802DD654 A0790026 */  sb         $t9, 0x26($v1)
    /* 25CD98 802DD658 A460001E */  sh         $zero, 0x1E($v1)
    /* 25CD9C 802DD65C AC6E0020 */  sw         $t6, 0x20($v1)
  .L802DD660_25CDA0:
    /* 25CDA0 802DD660 93B80060 */  lbu        $t8, 0x60($sp)
    /* 25CDA4 802DD664 240E0004 */  addiu      $t6, $zero, 0x4
    /* 25CDA8 802DD668 03060019 */  multu      $t8, $a2
    /* 25CDAC 802DD66C 00007812 */  mflo       $t7
    /* 25CDB0 802DD670 008F1821 */  addu       $v1, $a0, $t7
    /* 25CDB4 802DD674 8C620020 */  lw         $v0, 0x20($v1)
    /* 25CDB8 802DD678 0045C824 */  and        $t9, $v0, $a1
    /* 25CDBC 802DD67C 172000C9 */  bnez       $t9, .L802DD9A4_25D0E4
    /* 25CDC0 802DD680 34581000 */   ori       $t8, $v0, 0x1000
    /* 25CDC4 802DD684 A06E0026 */  sb         $t6, 0x26($v1)
    /* 25CDC8 802DD688 A460001E */  sh         $zero, 0x1E($v1)
    /* 25CDCC 802DD68C 100000C5 */  b          .L802DD9A4_25D0E4
    /* 25CDD0 802DD690 AC780020 */   sw        $t8, 0x20($v1)
  .L802DD694_25CDD4:
    /* 25CDD4 802DD694 15E00018 */  bnez       $t7, .L802DD6F8_25CE38
    /* 25CDD8 802DD698 93B90061 */   lbu       $t9, 0x61($sp)
    /* 25CDDC 802DD69C 24060050 */  addiu      $a2, $zero, 0x50
    /* 25CDE0 802DD6A0 03260019 */  multu      $t9, $a2
    /* 25CDE4 802DD6A4 3C038005 */  lui        $v1, %hi(alienInstances)
    /* 25CDE8 802DD6A8 24638198 */  addiu      $v1, $v1, %lo(alienInstances)
    /* 25CDEC 802DD6AC 00007012 */  mflo       $t6
    /* 25CDF0 802DD6B0 006EC021 */  addu       $t8, $v1, $t6
    /* 25CDF4 802DD6B4 8F020020 */  lw         $v0, 0x20($t8)
    /* 25CDF8 802DD6B8 93AE0060 */  lbu        $t6, 0x60($sp)
    /* 25CDFC 802DD6BC 304FA000 */  andi       $t7, $v0, 0xA000
    /* 25CE00 802DD6C0 11E00003 */  beqz       $t7, .L802DD6D0_25CE10
    /* 25CE04 802DD6C4 0002CAC0 */   sll       $t9, $v0, 11
    /* 25CE08 802DD6C8 072300B7 */  bgezl      $t9, .L802DD9A8_25D0E8
    /* 25CE0C 802DD6CC 8602001E */   lh        $v0, 0x1E($s0)
  .L802DD6D0_25CE10:
    /* 25CE10 802DD6D0 01C60019 */  multu      $t6, $a2
    /* 25CE14 802DD6D4 3C050010 */  lui        $a1, (0x100000 >> 16)
    /* 25CE18 802DD6D8 0000C012 */  mflo       $t8
    /* 25CE1C 802DD6DC 00787821 */  addu       $t7, $v1, $t8
    /* 25CE20 802DD6E0 8DE20020 */  lw         $v0, 0x20($t7)
    /* 25CE24 802DD6E4 3059A000 */  andi       $t9, $v0, 0xA000
    /* 25CE28 802DD6E8 13200003 */  beqz       $t9, .L802DD6F8_25CE38
    /* 25CE2C 802DD6EC 00457024 */   and       $t6, $v0, $a1
    /* 25CE30 802DD6F0 51C000AD */  beql       $t6, $zero, .L802DD9A8_25D0E8
    /* 25CE34 802DD6F4 8602001E */   lh        $v0, 0x1E($s0)
  .L802DD6F8_25CE38:
    /* 25CE38 802DD6F8 92180026 */  lbu        $t8, 0x26($s0)
    /* 25CE3C 802DD6FC 308F2000 */  andi       $t7, $a0, 0x2000
    /* 25CE40 802DD700 57000018 */  bnel       $t8, $zero, .L802DD764_25CEA4
    /* 25CE44 802DD704 920F0026 */   lbu       $t7, 0x26($s0)
    /* 25CE48 802DD708 11E00015 */  beqz       $t7, .L802DD760_25CEA0
    /* 25CE4C 802DD70C 93A400AB */   lbu       $a0, 0xAB($sp)
    /* 25CE50 802DD710 93A500A5 */  lbu        $a1, 0xA5($sp)
    /* 25CE54 802DD714 0C021472 */  jal        func_800851C8_94178
    /* 25CE58 802DD718 24060800 */   addiu     $a2, $zero, 0x800
    /* 25CE5C 802DD71C 10400010 */  beqz       $v0, .L802DD760_25CEA0
    /* 25CE60 802DD720 3C19802E */   lui       $t9, %hi(D_802E0E30)
    /* 25CE64 802DD724 87390E30 */  lh         $t9, %lo(D_802E0E30)($t9)
    /* 25CE68 802DD728 8FAE004C */  lw         $t6, 0x4C($sp)
    /* 25CE6C 802DD72C 2B210101 */  slti       $at, $t9, 0x101
    /* 25CE70 802DD730 5420000C */  bnel       $at, $zero, .L802DD764_25CEA4
    /* 25CE74 802DD734 920F0026 */   lbu       $t7, 0x26($s0)
    /* 25CE78 802DD738 8DD80020 */  lw         $t8, 0x20($t6)
    /* 25CE7C 802DD73C 330F4000 */  andi       $t7, $t8, 0x4000
    /* 25CE80 802DD740 11E00007 */  beqz       $t7, .L802DD760_25CEA0
    /* 25CE84 802DD744 24180058 */   addiu     $t8, $zero, 0x58
    /* 25CE88 802DD748 8E190020 */  lw         $t9, 0x20($s0)
    /* 25CE8C 802DD74C A2000036 */  sb         $zero, 0x36($s0)
    /* 25CE90 802DD750 A618002C */  sh         $t8, 0x2C($s0)
    /* 25CE94 802DD754 372E6000 */  ori        $t6, $t9, 0x6000
    /* 25CE98 802DD758 10000092 */  b          .L802DD9A4_25D0E4
    /* 25CE9C 802DD75C AE0E0020 */   sw        $t6, 0x20($s0)
  .L802DD760_25CEA0:
    /* 25CEA0 802DD760 920F0026 */  lbu        $t7, 0x26($s0)
  .L802DD764_25CEA4:
    /* 25CEA4 802DD764 93A400AB */  lbu        $a0, 0xAB($sp)
    /* 25CEA8 802DD768 93A500A5 */  lbu        $a1, 0xA5($sp)
    /* 25CEAC 802DD76C 55E00006 */  bnel       $t7, $zero, .L802DD788_25CEC8
    /* 25CEB0 802DD770 83A400A5 */   lb        $a0, 0xA5($sp)
    /* 25CEB4 802DD774 0C021472 */  jal        func_800851C8_94178
    /* 25CEB8 802DD778 24060800 */   addiu     $a2, $zero, 0x800
    /* 25CEBC 802DD77C 5040008A */  beql       $v0, $zero, .L802DD9A8_25D0E8
    /* 25CEC0 802DD780 8602001E */   lh        $v0, 0x1E($s0)
    /* 25CEC4 802DD784 83A400A5 */  lb         $a0, 0xA5($sp)
  .L802DD788_25CEC8:
    /* 25CEC8 802DD788 8FA50040 */  lw         $a1, 0x40($sp)
    /* 25CECC 802DD78C 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25CED0 802DD790 27A6007C */   addiu     $a2, $sp, 0x7C
    /* 25CED4 802DD794 8FA3007C */  lw         $v1, 0x7C($sp)
    /* 25CED8 802DD798 8FA80080 */  lw         $t0, 0x80($sp)
    /* 25CEDC 802DD79C 8FA90084 */  lw         $t1, 0x84($sp)
    /* 25CEE0 802DD7A0 83A400A7 */  lb         $a0, 0xA7($sp)
    /* 25CEE4 802DD7A4 27A50090 */  addiu      $a1, $sp, 0x90
    /* 25CEE8 802DD7A8 27A6007C */  addiu      $a2, $sp, 0x7C
    /* 25CEEC 802DD7AC A7A30090 */  sh         $v1, 0x90($sp)
    /* 25CEF0 802DD7B0 A7A80092 */  sh         $t0, 0x92($sp)
    /* 25CEF4 802DD7B4 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25CEF8 802DD7B8 A7A90094 */   sh        $t1, 0x94($sp)
    /* 25CEFC 802DD7BC 8FA3007C */  lw         $v1, 0x7C($sp)
    /* 25CF00 802DD7C0 3C01802E */  lui        $at, %hi(D_802DF3A8)
    /* 25CF04 802DD7C4 C420F3A8 */  lwc1       $f0, %lo(D_802DF3A8)($at)
    /* 25CF08 802DD7C8 44832000 */  mtc1       $v1, $f4
    /* 25CF0C 802DD7CC 8FA80080 */  lw         $t0, 0x80($sp)
    /* 25CF10 802DD7D0 8FA90084 */  lw         $t1, 0x84($sp)
    /* 25CF14 802DD7D4 468021A0 */  cvt.s.w    $f6, $f4
    /* 25CF18 802DD7D8 44888000 */  mtc1       $t0, $f16
    /* 25CF1C 802DD7DC 93AF005E */  lbu        $t7, 0x5E($sp)
    /* 25CF20 802DD7E0 3C0E8025 */  lui        $t6, %hi(alienSpecs)
    /* 25CF24 802DD7E4 25CE6680 */  addiu      $t6, $t6, %lo(alienSpecs)
    /* 25CF28 802DD7E8 468084A0 */  cvt.s.w    $f18, $f16
    /* 25CF2C 802DD7EC 46003202 */  mul.s      $f8, $f6, $f0
    /* 25CF30 802DD7F0 000FC880 */  sll        $t9, $t7, 2
    /* 25CF34 802DD7F4 032FC823 */  subu       $t9, $t9, $t7
    /* 25CF38 802DD7F8 0019C880 */  sll        $t9, $t9, 2
    /* 25CF3C 802DD7FC 032FC821 */  addu       $t9, $t9, $t7
    /* 25CF40 802DD800 46009102 */  mul.s      $f4, $f18, $f0
    /* 25CF44 802DD804 0019C8C0 */  sll        $t9, $t9, 3
    /* 25CF48 802DD808 032E1021 */  addu       $v0, $t9, $t6
    /* 25CF4C 802DD80C 8FB8004C */  lw         $t8, 0x4C($sp)
    /* 25CF50 802DD810 02002025 */  or         $a0, $s0, $zero
    /* 25CF54 802DD814 4600428D */  trunc.w.s  $f10, $f8
    /* 25CF58 802DD818 44894000 */  mtc1       $t1, $f8
    /* 25CF5C 802DD81C 4600218D */  trunc.w.s  $f6, $f4
    /* 25CF60 802DD820 44035000 */  mfc1       $v1, $f10
    /* 25CF64 802DD824 468042A0 */  cvt.s.w    $f10, $f8
    /* 25CF68 802DD828 44083000 */  mfc1       $t0, $f6
    /* 25CF6C 802DD82C A4430020 */  sh         $v1, 0x20($v0)
    /* 25CF70 802DD830 00032C00 */  sll        $a1, $v1, 16
    /* 25CF74 802DD834 A4480022 */  sh         $t0, 0x22($v0)
    /* 25CF78 802DD838 00057403 */  sra        $t6, $a1, 16
    /* 25CF7C 802DD83C 46005402 */  mul.s      $f16, $f10, $f0
    /* 25CF80 802DD840 00083400 */  sll        $a2, $t0, 16
    /* 25CF84 802DD844 01C02825 */  or         $a1, $t6, $zero
    /* 25CF88 802DD848 27AE0074 */  addiu      $t6, $sp, 0x74
    /* 25CF8C 802DD84C 4600848D */  trunc.w.s  $f18, $f16
    /* 25CF90 802DD850 44099000 */  mfc1       $t1, $f18
    /* 25CF94 802DD854 00000000 */  nop
    /* 25CF98 802DD858 A4490024 */  sh         $t1, 0x24($v0)
    /* 25CF9C 802DD85C 8F0F0020 */  lw         $t7, 0x20($t8)
    /* 25CFA0 802DD860 0006C403 */  sra        $t8, $a2, 16
    /* 25CFA4 802DD864 03003025 */  or         $a2, $t8, $zero
    /* 25CFA8 802DD868 31F94000 */  andi       $t9, $t7, 0x4000
    /* 25CFAC 802DD86C 13200016 */  beqz       $t9, .L802DD8C8_25D008
    /* 25CFB0 802DD870 00093C00 */   sll       $a3, $t1, 16
    /* 25CFB4 802DD874 00077C03 */  sra        $t7, $a3, 16
    /* 25CFB8 802DD878 27B90078 */  addiu      $t9, $sp, 0x78
    /* 25CFBC 802DD87C 27B80070 */  addiu      $t8, $sp, 0x70
    /* 25CFC0 802DD880 AFB80018 */  sw         $t8, 0x18($sp)
    /* 25CFC4 802DD884 AFB90010 */  sw         $t9, 0x10($sp)
    /* 25CFC8 802DD888 01E03825 */  or         $a3, $t7, $zero
    /* 25CFCC 802DD88C AFAE0014 */  sw         $t6, 0x14($sp)
    /* 25CFD0 802DD890 AFA20040 */  sw         $v0, 0x40($sp)
    /* 25CFD4 802DD894 AFA3007C */  sw         $v1, 0x7C($sp)
    /* 25CFD8 802DD898 AFA80080 */  sw         $t0, 0x80($sp)
    /* 25CFDC 802DD89C 0C04A10A */  jal        func_80128428_1373D8
    /* 25CFE0 802DD8A0 AFA90084 */   sw        $t1, 0x84($sp)
    /* 25CFE4 802DD8A4 8FA40078 */  lw         $a0, 0x78($sp)
    /* 25CFE8 802DD8A8 8FA50074 */  lw         $a1, 0x74($sp)
    /* 25CFEC 802DD8AC 8FA60070 */  lw         $a2, 0x70($sp)
    /* 25CFF0 802DD8B0 0C04D751 */  jal        func_80135D44_144CF4
    /* 25CFF4 802DD8B4 3C074000 */   lui       $a3, (0x40000000 >> 16)
    /* 25CFF8 802DD8B8 8FA20040 */  lw         $v0, 0x40($sp)
    /* 25CFFC 802DD8BC 240F0060 */  addiu      $t7, $zero, 0x60
    /* 25D000 802DD8C0 10000006 */  b          .L802DD8DC_25D01C
    /* 25D004 802DD8C4 AC4F001C */   sw        $t7, 0x1C($v0)
  .L802DD8C8_25D008:
    /* 25D008 802DD8C8 24190022 */  addiu      $t9, $zero, 0x22
    /* 25D00C 802DD8CC AFA90084 */  sw         $t1, 0x84($sp)
    /* 25D010 802DD8D0 AFA80080 */  sw         $t0, 0x80($sp)
    /* 25D014 802DD8D4 AFA3007C */  sw         $v1, 0x7C($sp)
    /* 25D018 802DD8D8 AC59001C */  sw         $t9, 0x1C($v0)
  .L802DD8DC_25D01C:
    /* 25D01C 802DD8DC 8FAE0044 */  lw         $t6, 0x44($sp)
    /* 25D020 802DD8E0 8FB90048 */  lw         $t9, 0x48($sp)
    /* 25D024 802DD8E4 93A400AB */  lbu        $a0, 0xAB($sp)
    /* 25D028 802DD8E8 95C60006 */  lhu        $a2, 0x6($t6)
    /* 25D02C 802DD8EC 00002825 */  or         $a1, $zero, $zero
    /* 25D030 802DD8F0 8727000A */  lh         $a3, 0xA($t9)
    /* 25D034 802DD8F4 00063023 */  negu       $a2, $a2
    /* 25D038 802DD8F8 0006C400 */  sll        $t8, $a2, 16
    /* 25D03C 802DD8FC 0C021A29 */  jal        func_800868A4_95854
    /* 25D040 802DD900 00183403 */   sra       $a2, $t8, 16
    /* 25D044 802DD904 50400028 */  beql       $v0, $zero, .L802DD9A8_25D0E8
    /* 25D048 802DD908 8602001E */   lh        $v0, 0x1E($s0)
    /* 25D04C 802DD90C 92020026 */  lbu        $v0, 0x26($s0)
    /* 25D050 802DD910 24010001 */  addiu      $at, $zero, 0x1
    /* 25D054 802DD914 2418000A */  addiu      $t8, $zero, 0xA
    /* 25D058 802DD918 5041000A */  beql       $v0, $at, .L802DD944_25D084
    /* 25D05C 802DD91C 8E190020 */   lw        $t9, 0x20($s0)
    /* 25D060 802DD920 14400003 */  bnez       $v0, .L802DD930_25D070
    /* 25D064 802DD924 240E0002 */   addiu     $t6, $zero, 0x2
    /* 25D068 802DD928 A20E0026 */  sb         $t6, 0x26($s0)
    /* 25D06C 802DD92C 31C200FF */  andi       $v0, $t6, 0xFF
  .L802DD930_25D070:
    /* 25D070 802DD930 244FFFFF */  addiu      $t7, $v0, -0x1
    /* 25D074 802DD934 A618001E */  sh         $t8, 0x1E($s0)
    /* 25D078 802DD938 1000001A */  b          .L802DD9A4_25D0E4
    /* 25D07C 802DD93C A20F0026 */   sb        $t7, 0x26($s0)
    /* 25D080 802DD940 8E190020 */  lw         $t9, 0x20($s0)
  .L802DD944_25D084:
    /* 25D084 802DD944 8FB8004C */  lw         $t8, 0x4C($sp)
    /* 25D088 802DD948 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 25D08C 802DD94C 03217024 */  and        $t6, $t9, $at
    /* 25D090 802DD950 AE0E0020 */  sw         $t6, 0x20($s0)
    /* 25D094 802DD954 A2000026 */  sb         $zero, 0x26($s0)
    /* 25D098 802DD958 8F0F0020 */  lw         $t7, 0x20($t8)
    /* 25D09C 802DD95C 31F94000 */  andi       $t9, $t7, 0x4000
    /* 25D0A0 802DD960 13200009 */  beqz       $t9, .L802DD988_25D0C8
    /* 25D0A4 802DD964 00000000 */   nop
    /* 25D0A8 802DD968 0C000E38 */  jal        func_800038E0_44E0
    /* 25D0AC 802DD96C 00000000 */   nop
    /* 25D0B0 802DD970 24010064 */  addiu      $at, $zero, 0x64
    /* 25D0B4 802DD974 0041001A */  div        $zero, $v0, $at
    /* 25D0B8 802DD978 00007010 */  mfhi       $t6
    /* 25D0BC 802DD97C 25D80028 */  addiu      $t8, $t6, 0x28
    /* 25D0C0 802DD980 10000008 */  b          .L802DD9A4_25D0E4
    /* 25D0C4 802DD984 A618001E */   sh        $t8, 0x1E($s0)
  .L802DD988_25D0C8:
    /* 25D0C8 802DD988 0C000E38 */  jal        func_800038E0_44E0
    /* 25D0CC 802DD98C 00000000 */   nop
    /* 25D0D0 802DD990 2401008C */  addiu      $at, $zero, 0x8C
    /* 25D0D4 802DD994 0041001A */  div        $zero, $v0, $at
    /* 25D0D8 802DD998 00007810 */  mfhi       $t7
    /* 25D0DC 802DD99C 25F9003C */  addiu      $t9, $t7, 0x3C
    /* 25D0E0 802DD9A0 A619001E */  sh         $t9, 0x1E($s0)
  .L802DD9A4_25D0E4:
    /* 25D0E4 802DD9A4 8602001E */  lh         $v0, 0x1E($s0)
  .L802DD9A8_25D0E8:
    /* 25D0E8 802DD9A8 10400002 */  beqz       $v0, .L802DD9B4_25D0F4
    /* 25D0EC 802DD9AC 244EFFFF */   addiu     $t6, $v0, -0x1
    /* 25D0F0 802DD9B0 A60E001E */  sh         $t6, 0x1E($s0)
  .L802DD9B4_25D0F4:
    /* 25D0F4 802DD9B4 8FBF002C */  lw         $ra, 0x2C($sp)
  .L802DD9B8_25D0F8:
    /* 25D0F8 802DD9B8 8FB00028 */  lw         $s0, 0x28($sp)
    /* 25D0FC 802DD9BC 27BD00A8 */  addiu      $sp, $sp, 0xA8
    /* 25D100 802DD9C0 03E00008 */  jr         $ra
    /* 25D104 802DD9C4 00000000 */   nop
endlabel func_802DD104_25C844
