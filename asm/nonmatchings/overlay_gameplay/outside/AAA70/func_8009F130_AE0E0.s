nonmatching func_8009F130_AE0E0, 0x9EC

glabel func_8009F130_AE0E0
    /* AE0E0 8009F130 27BDFF38 */  addiu      $sp, $sp, -0xC8
    /* AE0E4 8009F134 AFB00018 */  sw         $s0, 0x18($sp)
    /* AE0E8 8009F138 3C108006 */  lui        $s0, %hi(D_8005BB2C)
    /* AE0EC 8009F13C 2610BB2C */  addiu      $s0, $s0, %lo(D_8005BB2C)
    /* AE0F0 8009F140 8E020000 */  lw         $v0, 0x0($s0)
    /* AE0F4 8009F144 AFBF001C */  sw         $ra, 0x1C($sp)
    /* AE0F8 8009F148 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
    /* AE0FC 8009F14C 244E0008 */  addiu      $t6, $v0, 0x8
    /* AE100 8009F150 AE0E0000 */  sw         $t6, 0x0($s0)
    /* AE104 8009F154 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
    /* AE108 8009F158 34188000 */  ori        $t8, $zero, 0x8000
    /* AE10C 8009F15C AC580004 */  sw         $t8, 0x4($v0)
    /* AE110 8009F160 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AE114 8009F164 8E020000 */  lw         $v0, 0x0($s0)
    /* AE118 8009F168 3C0EBA00 */  lui        $t6, (0xBA001301 >> 16)
    /* AE11C 8009F16C 35CE1301 */  ori        $t6, $t6, (0xBA001301 & 0xFFFF)
    /* AE120 8009F170 24590008 */  addiu      $t9, $v0, 0x8
    /* AE124 8009F174 AE190000 */  sw         $t9, 0x0($s0)
    /* AE128 8009F178 AC400004 */  sw         $zero, 0x4($v0)
    /* AE12C 8009F17C AC4E0000 */  sw         $t6, 0x0($v0)
    /* AE130 8009F180 8E020000 */  lw         $v0, 0x0($s0)
    /* AE134 8009F184 3C198026 */  lui        $t9, %hi(D_80260500)
    /* AE138 8009F188 27390500 */  addiu      $t9, $t9, %lo(D_80260500)
    /* AE13C 8009F18C 244F0008 */  addiu      $t7, $v0, 0x8
    /* AE140 8009F190 AE0F0000 */  sw         $t7, 0x0($s0)
    /* AE144 8009F194 3C18FD10 */  lui        $t8, (0xFD100000 >> 16)
    /* AE148 8009F198 AC580000 */  sw         $t8, 0x0($v0)
    /* AE14C 8009F19C AC590004 */  sw         $t9, 0x4($v0)
    /* AE150 8009F1A0 8E020000 */  lw         $v0, 0x0($s0)
    /* AE154 8009F1A4 3C0FE800 */  lui        $t7, (0xE8000000 >> 16)
    /* AE158 8009F1A8 3C19F500 */  lui        $t9, (0xF5000100 >> 16)
    /* AE15C 8009F1AC 244E0008 */  addiu      $t6, $v0, 0x8
    /* AE160 8009F1B0 AE0E0000 */  sw         $t6, 0x0($s0)
    /* AE164 8009F1B4 AC400004 */  sw         $zero, 0x4($v0)
    /* AE168 8009F1B8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AE16C 8009F1BC 8E020000 */  lw         $v0, 0x0($s0)
    /* AE170 8009F1C0 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
    /* AE174 8009F1C4 37390100 */  ori        $t9, $t9, (0xF5000100 & 0xFFFF)
    /* AE178 8009F1C8 24580008 */  addiu      $t8, $v0, 0x8
    /* AE17C 8009F1CC AE180000 */  sw         $t8, 0x0($s0)
    /* AE180 8009F1D0 AC4E0004 */  sw         $t6, 0x4($v0)
    /* AE184 8009F1D4 AC590000 */  sw         $t9, 0x0($v0)
    /* AE188 8009F1D8 8E020000 */  lw         $v0, 0x0($s0)
    /* AE18C 8009F1DC 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
    /* AE190 8009F1E0 3C0EF000 */  lui        $t6, (0xF0000000 >> 16)
    /* AE194 8009F1E4 244F0008 */  addiu      $t7, $v0, 0x8
    /* AE198 8009F1E8 AE0F0000 */  sw         $t7, 0x0($s0)
    /* AE19C 8009F1EC AC400004 */  sw         $zero, 0x4($v0)
    /* AE1A0 8009F1F0 AC580000 */  sw         $t8, 0x0($v0)
    /* AE1A4 8009F1F4 8E020000 */  lw         $v0, 0x0($s0)
    /* AE1A8 8009F1F8 3C0F073F */  lui        $t7, (0x73FC000 >> 16)
    /* AE1AC 8009F1FC 35EFC000 */  ori        $t7, $t7, (0x73FC000 & 0xFFFF)
    /* AE1B0 8009F200 24590008 */  addiu      $t9, $v0, 0x8
    /* AE1B4 8009F204 AE190000 */  sw         $t9, 0x0($s0)
    /* AE1B8 8009F208 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AE1BC 8009F20C AC4E0000 */  sw         $t6, 0x0($v0)
    /* AE1C0 8009F210 8E020000 */  lw         $v0, 0x0($s0)
    /* AE1C4 8009F214 3C1FE700 */  lui        $ra, (0xE7000000 >> 16)
    /* AE1C8 8009F218 3C0FFC11 */  lui        $t7, (0xFC119623 >> 16)
    /* AE1CC 8009F21C 24580008 */  addiu      $t8, $v0, 0x8
    /* AE1D0 8009F220 AE180000 */  sw         $t8, 0x0($s0)
    /* AE1D4 8009F224 AC400004 */  sw         $zero, 0x4($v0)
    /* AE1D8 8009F228 AC5F0000 */  sw         $ra, 0x0($v0)
    /* AE1DC 8009F22C 8E020000 */  lw         $v0, 0x0($s0)
    /* AE1E0 8009F230 3C18FF2F */  lui        $t8, (0xFF2FFFFF >> 16)
    /* AE1E4 8009F234 3718FFFF */  ori        $t8, $t8, (0xFF2FFFFF & 0xFFFF)
    /* AE1E8 8009F238 24590008 */  addiu      $t9, $v0, 0x8
    /* AE1EC 8009F23C AE190000 */  sw         $t9, 0x0($s0)
    /* AE1F0 8009F240 AC400004 */  sw         $zero, 0x4($v0)
    /* AE1F4 8009F244 AC5F0000 */  sw         $ra, 0x0($v0)
    /* AE1F8 8009F248 8E020000 */  lw         $v0, 0x0($s0)
    /* AE1FC 8009F24C 35EF9623 */  ori        $t7, $t7, (0xFC119623 & 0xFFFF)
    /* AE200 8009F250 27AD00C4 */  addiu      $t5, $sp, 0xC4
    /* AE204 8009F254 244E0008 */  addiu      $t6, $v0, 0x8
    /* AE208 8009F258 AE0E0000 */  sw         $t6, 0x0($s0)
    /* AE20C 8009F25C AC580004 */  sw         $t8, 0x4($v0)
    /* AE210 8009F260 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AE214 8009F264 8E020000 */  lw         $v0, 0x0($s0)
    /* AE218 8009F268 3C0F0050 */  lui        $t7, (0x504240 >> 16)
    /* AE21C 8009F26C 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
    /* AE220 8009F270 24590008 */  addiu      $t9, $v0, 0x8
    /* AE224 8009F274 AE190000 */  sw         $t9, 0x0($s0)
    /* AE228 8009F278 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
    /* AE22C 8009F27C 35EF4240 */  ori        $t7, $t7, (0x504240 & 0xFFFF)
    /* AE230 8009F280 240C0008 */  addiu      $t4, $zero, 0x8
    /* AE234 8009F284 2403000F */  addiu      $v1, $zero, 0xF
    /* AE238 8009F288 AC4F0004 */  sw         $t7, 0x4($v0)
    /* AE23C 8009F28C AC4E0000 */  sw         $t6, 0x0($v0)
  .L8009F290_AE240:
    /* AE240 8009F290 01801025 */  or         $v0, $t4, $zero
    /* AE244 8009F294 A1A30000 */  sb         $v1, 0x0($t5)
    /* AE248 8009F298 25ADFFFF */  addiu      $t5, $t5, -0x1
    /* AE24C 8009F29C 1580FFFC */  bnez       $t4, .L8009F290_AE240
    /* AE250 8009F2A0 258CFFFF */   addiu     $t4, $t4, -0x1
    /* AE254 8009F2A4 3C188014 */  lui        $t8, %hi(D_8013D734)
    /* AE258 8009F2A8 8F18D734 */  lw         $t8, %lo(D_8013D734)($t8)
    /* AE25C 8009F2AC 2401FFFF */  addiu      $at, $zero, -0x1
    /* AE260 8009F2B0 3C0E8015 */  lui        $t6, %hi(D_8014ED54)
    /* AE264 8009F2B4 17010004 */  bne        $t8, $at, .L8009F2C8_AE278
    /* AE268 8009F2B8 3C048004 */   lui       $a0, %hi(D_8004758A)
    /* AE26C 8009F2BC 24190004 */  addiu      $t9, $zero, 0x4
    /* AE270 8009F2C0 3C018014 */  lui        $at, %hi(D_8013D730)
    /* AE274 8009F2C4 AC39D730 */  sw         $t9, %lo(D_8013D730)($at)
  .L8009F2C8_AE278:
    /* AE278 8009F2C8 85CEED54 */  lh         $t6, %lo(D_8014ED54)($t6)
    /* AE27C 8009F2CC 2419000E */  addiu      $t9, $zero, 0xE
    /* AE280 8009F2D0 3C0F8005 */  lui        $t7, %hi(D_80052ACA)
    /* AE284 8009F2D4 11C00006 */  beqz       $t6, .L8009F2F0_AE2A0
    /* AE288 8009F2D8 24010002 */   addiu     $at, $zero, 0x2
    /* AE28C 8009F2DC 240F0008 */  addiu      $t7, $zero, 0x8
    /* AE290 8009F2E0 2418000E */  addiu      $t8, $zero, 0xE
    /* AE294 8009F2E4 A3AF00BD */  sb         $t7, 0xBD($sp)
    /* AE298 8009F2E8 1000001A */  b          .L8009F354_AE304
    /* AE29C 8009F2EC A3B800C0 */   sb        $t8, 0xC0($sp)
  .L8009F2F0_AE2A0:
    /* AE2A0 8009F2F0 91EF2ACA */  lbu        $t7, %lo(D_80052ACA)($t7)
    /* AE2A4 8009F2F4 240E0008 */  addiu      $t6, $zero, 0x8
    /* AE2A8 8009F2F8 A3B900BD */  sb         $t9, 0xBD($sp)
    /* AE2AC 8009F2FC 11E10015 */  beq        $t7, $at, .L8009F354_AE304
    /* AE2B0 8009F300 A3AE00C0 */   sb        $t6, 0xC0($sp)
    /* AE2B4 8009F304 3C198004 */  lui        $t9, %hi(currentLevel)
    /* AE2B8 8009F308 8F397F90 */  lw         $t9, %lo(currentLevel)($t9)
    /* AE2BC 8009F30C 24180003 */  addiu      $t8, $zero, 0x3
    /* AE2C0 8009F310 24010005 */  addiu      $at, $zero, 0x5
    /* AE2C4 8009F314 1321000F */  beq        $t9, $at, .L8009F354_AE304
    /* AE2C8 8009F318 A3B800C1 */   sb        $t8, 0xC1($sp)
    /* AE2CC 8009F31C 3C0F8005 */  lui        $t7, %hi(D_80052B34)
    /* AE2D0 8009F320 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* AE2D4 8009F324 240E000D */  addiu      $t6, $zero, 0xD
    /* AE2D8 8009F328 A3AE00C3 */  sb         $t6, 0xC3($sp)
    /* AE2DC 8009F32C 91F8001A */  lbu        $t8, 0x1A($t7)
    /* AE2E0 8009F330 3C198005 */  lui        $t9, %hi(weaponSlots)
    /* AE2E4 8009F334 13000007 */  beqz       $t8, .L8009F354_AE304
    /* AE2E8 8009F338 00000000 */   nop
    /* AE2EC 8009F33C 93398138 */  lbu        $t9, %lo(weaponSlots)($t9)
    /* AE2F0 8009F340 24010001 */  addiu      $at, $zero, 0x1
    /* AE2F4 8009F344 240E0001 */  addiu      $t6, $zero, 0x1
    /* AE2F8 8009F348 17210002 */  bne        $t9, $at, .L8009F354_AE304
    /* AE2FC 8009F34C 00000000 */   nop
    /* AE300 8009F350 A3AE00BF */  sb         $t6, 0xBF($sp)
  .L8009F354_AE304:
    /* AE304 8009F354 8084758A */  lb         $a0, %lo(D_8004758A)($a0)
    /* AE308 8009F358 04800003 */  bltz       $a0, .L8009F368_AE318
    /* AE30C 8009F35C 00041023 */   negu      $v0, $a0
    /* AE310 8009F360 10000001 */  b          .L8009F368_AE318
    /* AE314 8009F364 00801025 */   or        $v0, $a0, $zero
  .L8009F368_AE318:
    /* AE318 8009F368 28410014 */  slti       $at, $v0, 0x14
    /* AE31C 8009F36C 1020000C */  beqz       $at, .L8009F3A0_AE350
    /* AE320 8009F370 3C028004 */   lui       $v0, %hi(D_8004758B)
    /* AE324 8009F374 8042758B */  lb         $v0, %lo(D_8004758B)($v0)
    /* AE328 8009F378 240F0001 */  addiu      $t7, $zero, 0x1
    /* AE32C 8009F37C 04400003 */  bltz       $v0, .L8009F38C_AE33C
    /* AE330 8009F380 00021823 */   negu      $v1, $v0
    /* AE334 8009F384 10000001 */  b          .L8009F38C_AE33C
    /* AE338 8009F388 00401825 */   or        $v1, $v0, $zero
  .L8009F38C_AE33C:
    /* AE33C 8009F38C 28610014 */  slti       $at, $v1, 0x14
    /* AE340 8009F390 10200003 */  beqz       $at, .L8009F3A0_AE350
    /* AE344 8009F394 3C038015 */   lui       $v1, %hi(D_8014F1E0)
    /* AE348 8009F398 2463F1E0 */  addiu      $v1, $v1, %lo(D_8014F1E0)
    /* AE34C 8009F39C A46F0000 */  sh         $t7, 0x0($v1)
  .L8009F3A0_AE350:
    /* AE350 8009F3A0 3C038015 */  lui        $v1, %hi(D_8014F1E0)
    /* AE354 8009F3A4 2463F1E0 */  addiu      $v1, $v1, %lo(D_8014F1E0)
    /* AE358 8009F3A8 84780000 */  lh         $t8, 0x0($v1)
    /* AE35C 8009F3AC 24010001 */  addiu      $at, $zero, 0x1
    /* AE360 8009F3B0 17010051 */  bne        $t8, $at, .L8009F4F8_AE4A8
    /* AE364 8009F3B4 2881FFE2 */   slti      $at, $a0, -0x1E
    /* AE368 8009F3B8 10200012 */  beqz       $at, .L8009F404_AE3B4
    /* AE36C 8009F3BC 3C198014 */   lui       $t9, %hi(D_8013D730)
    /* AE370 8009F3C0 8F39D730 */  lw         $t9, %lo(D_8013D730)($t9)
    /* AE374 8009F3C4 2B210004 */  slti       $at, $t9, 0x4
    /* AE378 8009F3C8 1420000E */  bnez       $at, .L8009F404_AE3B4
    /* AE37C 8009F3CC 03B97021 */   addu      $t6, $sp, $t9
    /* AE380 8009F3D0 91CE00BB */  lbu        $t6, 0xBB($t6)
    /* AE384 8009F3D4 2401000F */  addiu      $at, $zero, 0xF
    /* AE388 8009F3D8 272FFFFF */  addiu      $t7, $t9, -0x1
    /* AE38C 8009F3DC 11C10009 */  beq        $t6, $at, .L8009F404_AE3B4
    /* AE390 8009F3E0 3C018014 */   lui       $at, %hi(D_8013D730)
    /* AE394 8009F3E4 AC2FD730 */  sw         $t7, %lo(D_8013D730)($at)
    /* AE398 8009F3E8 A4600000 */  sh         $zero, 0x0($v1)
    /* AE39C 8009F3EC 0C0054F6 */  jal        func_800153D8_15FD8
    /* AE3A0 8009F3F0 240400C7 */   addiu     $a0, $zero, 0xC7
    /* AE3A4 8009F3F4 3C048004 */  lui        $a0, %hi(D_8004758A)
    /* AE3A8 8009F3F8 3C038015 */  lui        $v1, %hi(D_8014F1E0)
    /* AE3AC 8009F3FC 2463F1E0 */  addiu      $v1, $v1, %lo(D_8014F1E0)
    /* AE3B0 8009F400 8084758A */  lb         $a0, %lo(D_8004758A)($a0)
  .L8009F404_AE3B4:
    /* AE3B4 8009F404 2881001F */  slti       $at, $a0, 0x1F
    /* AE3B8 8009F408 14200014 */  bnez       $at, .L8009F45C_AE40C
    /* AE3BC 8009F40C 3C188014 */   lui       $t8, %hi(D_8013D730)
    /* AE3C0 8009F410 8F18D730 */  lw         $t8, %lo(D_8013D730)($t8)
    /* AE3C4 8009F414 2B010005 */  slti       $at, $t8, 0x5
    /* AE3C8 8009F418 10200010 */  beqz       $at, .L8009F45C_AE40C
    /* AE3CC 8009F41C 03B87021 */   addu      $t6, $sp, $t8
    /* AE3D0 8009F420 91CE00BD */  lbu        $t6, 0xBD($t6)
    /* AE3D4 8009F424 2401000F */  addiu      $at, $zero, 0xF
    /* AE3D8 8009F428 3C198014 */  lui        $t9, %hi(D_8013D738)
    /* AE3DC 8009F42C 11C1000B */  beq        $t6, $at, .L8009F45C_AE40C
    /* AE3E0 8009F430 00000000 */   nop
    /* AE3E4 8009F434 8739D738 */  lh         $t9, %lo(D_8013D738)($t9)
    /* AE3E8 8009F438 270F0001 */  addiu      $t7, $t8, 0x1
    /* AE3EC 8009F43C 3C018014 */  lui        $at, %hi(D_8013D730)
    /* AE3F0 8009F440 17200006 */  bnez       $t9, .L8009F45C_AE40C
    /* AE3F4 8009F444 240400C7 */   addiu     $a0, $zero, 0xC7
    /* AE3F8 8009F448 AC2FD730 */  sw         $t7, %lo(D_8013D730)($at)
    /* AE3FC 8009F44C 0C0054F6 */  jal        func_800153D8_15FD8
    /* AE400 8009F450 A4600000 */   sh        $zero, 0x0($v1)
    /* AE404 8009F454 3C038015 */  lui        $v1, %hi(D_8014F1E0)
    /* AE408 8009F458 2463F1E0 */  addiu      $v1, $v1, %lo(D_8014F1E0)
  .L8009F45C_AE40C:
    /* AE40C 8009F45C 3C028004 */  lui        $v0, %hi(D_8004758B)
    /* AE410 8009F460 8042758B */  lb         $v0, %lo(D_8004758B)($v0)
    /* AE414 8009F464 3C0E8014 */  lui        $t6, %hi(D_8013D730)
    /* AE418 8009F468 2841001F */  slti       $at, $v0, 0x1F
    /* AE41C 8009F46C 54200013 */  bnel       $at, $zero, .L8009F4BC_AE46C
    /* AE420 8009F470 2841FFE2 */   slti      $at, $v0, -0x1E
    /* AE424 8009F474 8DCED730 */  lw         $t6, %lo(D_8013D730)($t6)
    /* AE428 8009F478 29C10002 */  slti       $at, $t6, 0x2
    /* AE42C 8009F47C 1420000E */  bnez       $at, .L8009F4B8_AE468
    /* AE430 8009F480 03AEC821 */   addu      $t9, $sp, $t6
    /* AE434 8009F484 933900B9 */  lbu        $t9, 0xB9($t9)
    /* AE438 8009F488 2401000F */  addiu      $at, $zero, 0xF
    /* AE43C 8009F48C 25D8FFFD */  addiu      $t8, $t6, -0x3
    /* AE440 8009F490 13210009 */  beq        $t9, $at, .L8009F4B8_AE468
    /* AE444 8009F494 240400C7 */   addiu     $a0, $zero, 0xC7
    /* AE448 8009F498 3C018014 */  lui        $at, %hi(D_8013D730)
    /* AE44C 8009F49C AC38D730 */  sw         $t8, %lo(D_8013D730)($at)
    /* AE450 8009F4A0 0C0054F6 */  jal        func_800153D8_15FD8
    /* AE454 8009F4A4 A4600000 */   sh        $zero, 0x0($v1)
    /* AE458 8009F4A8 3C028004 */  lui        $v0, %hi(D_8004758B)
    /* AE45C 8009F4AC 3C038015 */  lui        $v1, %hi(D_8014F1E0)
    /* AE460 8009F4B0 2463F1E0 */  addiu      $v1, $v1, %lo(D_8014F1E0)
    /* AE464 8009F4B4 8042758B */  lb         $v0, %lo(D_8004758B)($v0)
  .L8009F4B8_AE468:
    /* AE468 8009F4B8 2841FFE2 */  slti       $at, $v0, -0x1E
  .L8009F4BC_AE46C:
    /* AE46C 8009F4BC 1020000E */  beqz       $at, .L8009F4F8_AE4A8
    /* AE470 8009F4C0 3C0F8014 */   lui       $t7, %hi(D_8013D730)
    /* AE474 8009F4C4 8DEFD730 */  lw         $t7, %lo(D_8013D730)($t7)
    /* AE478 8009F4C8 29E10007 */  slti       $at, $t7, 0x7
    /* AE47C 8009F4CC 1020000A */  beqz       $at, .L8009F4F8_AE4A8
    /* AE480 8009F4D0 03AFC821 */   addu      $t9, $sp, $t7
    /* AE484 8009F4D4 933900BF */  lbu        $t9, 0xBF($t9)
    /* AE488 8009F4D8 2401000F */  addiu      $at, $zero, 0xF
    /* AE48C 8009F4DC 25EE0003 */  addiu      $t6, $t7, 0x3
    /* AE490 8009F4E0 13210005 */  beq        $t9, $at, .L8009F4F8_AE4A8
    /* AE494 8009F4E4 240400C7 */   addiu     $a0, $zero, 0xC7
    /* AE498 8009F4E8 3C018014 */  lui        $at, %hi(D_8013D730)
    /* AE49C 8009F4EC AC2ED730 */  sw         $t6, %lo(D_8013D730)($at)
    /* AE4A0 8009F4F0 0C0054F6 */  jal        func_800153D8_15FD8
    /* AE4A4 8009F4F4 A4600000 */   sh        $zero, 0x0($v1)
  .L8009F4F8_AE4A8:
    /* AE4A8 8009F4F8 3C188014 */  lui        $t8, %hi(D_8013D730)
    /* AE4AC 8009F4FC 8F18D730 */  lw         $t8, %lo(D_8013D730)($t8)
    /* AE4B0 8009F500 3C028015 */  lui        $v0, %hi(D_8014ED56)
    /* AE4B4 8009F504 8442ED56 */  lh         $v0, %lo(D_8014ED56)($v0)
    /* AE4B8 8009F508 240100FF */  addiu      $at, $zero, 0xFF
    /* AE4BC 8009F50C 03B81821 */  addu       $v1, $sp, $t8
    /* AE4C0 8009F510 14410006 */  bne        $v0, $at, .L8009F52C_AE4DC
    /* AE4C4 8009F514 906300BC */   lbu       $v1, 0xBC($v1)
    /* AE4C8 8009F518 3C198005 */  lui        $t9, %hi(D_80052AD0)
    /* AE4CC 8009F51C 8F392AD0 */  lw         $t9, %lo(D_80052AD0)($t9)
    /* AE4D0 8009F520 3C0F8014 */  lui        $t7, %hi(D_8013D734)
    /* AE4D4 8009F524 17200010 */  bnez       $t9, .L8009F568_AE518
    /* AE4D8 8009F528 00000000 */   nop
  .L8009F52C_AE4DC:
    /* AE4DC 8009F52C 240FFFFF */  addiu      $t7, $zero, -0x1
    /* AE4E0 8009F530 3C018014 */  lui        $at, %hi(D_8013D734)
    /* AE4E4 8009F534 3C048014 */  lui        $a0, %hi(D_801426B8)
    /* AE4E8 8009F538 AC2FD734 */  sw         $t7, %lo(D_8013D734)($at)
    /* AE4EC 8009F53C 0C006953 */  jal        func_8001A54C_1B14C
    /* AE4F0 8009F540 248426B8 */   addiu     $a0, $a0, %lo(D_801426B8)
    /* AE4F4 8009F544 3C0E8015 */  lui        $t6, %hi(D_8014ED56)
    /* AE4F8 8009F548 85CEED56 */  lh         $t6, %lo(D_8014ED56)($t6)
    /* AE4FC 8009F54C 3C018015 */  lui        $at, %hi(D_8014ED56)
    /* AE500 8009F550 25D8FFE0 */  addiu      $t8, $t6, -0x20
    /* AE504 8009F554 00181400 */  sll        $v0, $t8, 16
    /* AE508 8009F558 0002CC03 */  sra        $t9, $v0, 16
    /* AE50C 8009F55C 03201025 */  or         $v0, $t9, $zero
    /* AE510 8009F560 1000002D */  b          .L8009F618_AE5C8
    /* AE514 8009F564 A438ED56 */   sh        $t8, %lo(D_8014ED56)($at)
  .L8009F568_AE518:
    /* AE518 8009F568 8DEFD734 */  lw         $t7, %lo(D_8013D734)($t7)
    /* AE51C 8009F56C 51E30028 */  beql       $t7, $v1, .L8009F610_AE5C0
    /* AE520 8009F570 2419FFFF */   addiu     $t9, $zero, -0x1
    /* AE524 8009F574 3C028003 */  lui        $v0, %hi(D_800313D0)
    /* AE528 8009F578 844213D0 */  lh         $v0, %lo(D_800313D0)($v0)
    /* AE52C 8009F57C 3C018014 */  lui        $at, %hi(D_8013D734)
    /* AE530 8009F580 AC23D734 */  sw         $v1, %lo(D_8013D734)($at)
    /* AE534 8009F584 10400006 */  beqz       $v0, .L8009F5A0_AE550
    /* AE538 8009F588 24010001 */   addiu     $at, $zero, 0x1
    /* AE53C 8009F58C 10410017 */  beq        $v0, $at, .L8009F5EC_AE59C
    /* AE540 8009F590 3C0E8014 */   lui       $t6, %hi(D_8013D734)
    /* AE544 8009F594 24010002 */  addiu      $at, $zero, 0x2
    /* AE548 8009F598 1041000B */  beq        $v0, $at, .L8009F5C8_AE578
    /* AE54C 8009F59C 3C198014 */   lui       $t9, %hi(D_8013D734)
  .L8009F5A0_AE550:
    /* AE550 8009F5A0 3C0E8014 */  lui        $t6, %hi(D_8013D734)
    /* AE554 8009F5A4 8DCED734 */  lw         $t6, %lo(D_8013D734)($t6)
    /* AE558 8009F5A8 3C048014 */  lui        $a0, %hi(D_8013D67C)
    /* AE55C 8009F5AC 000EC080 */  sll        $t8, $t6, 2
    /* AE560 8009F5B0 00982021 */  addu       $a0, $a0, $t8
    /* AE564 8009F5B4 0C006953 */  jal        func_8001A54C_1B14C
    /* AE568 8009F5B8 8C84D67C */   lw        $a0, %lo(D_8013D67C)($a0)
    /* AE56C 8009F5BC 3C028015 */  lui        $v0, %hi(D_8014ED56)
    /* AE570 8009F5C0 10000012 */  b          .L8009F60C_AE5BC
    /* AE574 8009F5C4 8442ED56 */   lh        $v0, %lo(D_8014ED56)($v0)
  .L8009F5C8_AE578:
    /* AE578 8009F5C8 8F39D734 */  lw         $t9, %lo(D_8013D734)($t9)
    /* AE57C 8009F5CC 3C048014 */  lui        $a0, %hi(D_8013D6F4)
    /* AE580 8009F5D0 00197880 */  sll        $t7, $t9, 2
    /* AE584 8009F5D4 008F2021 */  addu       $a0, $a0, $t7
    /* AE588 8009F5D8 0C006953 */  jal        func_8001A54C_1B14C
    /* AE58C 8009F5DC 8C84D6F4 */   lw        $a0, %lo(D_8013D6F4)($a0)
    /* AE590 8009F5E0 3C028015 */  lui        $v0, %hi(D_8014ED56)
    /* AE594 8009F5E4 10000009 */  b          .L8009F60C_AE5BC
    /* AE598 8009F5E8 8442ED56 */   lh        $v0, %lo(D_8014ED56)($v0)
  .L8009F5EC_AE59C:
    /* AE59C 8009F5EC 8DCED734 */  lw         $t6, %lo(D_8013D734)($t6)
    /* AE5A0 8009F5F0 3C048014 */  lui        $a0, %hi(D_8013D6B8)
    /* AE5A4 8009F5F4 000EC080 */  sll        $t8, $t6, 2
    /* AE5A8 8009F5F8 00982021 */  addu       $a0, $a0, $t8
    /* AE5AC 8009F5FC 0C006953 */  jal        func_8001A54C_1B14C
    /* AE5B0 8009F600 8C84D6B8 */   lw        $a0, %lo(D_8013D6B8)($a0)
    /* AE5B4 8009F604 3C028015 */  lui        $v0, %hi(D_8014ED56)
    /* AE5B8 8009F608 8442ED56 */  lh         $v0, %lo(D_8014ED56)($v0)
  .L8009F60C_AE5BC:
    /* AE5BC 8009F60C 2419FFFF */  addiu      $t9, $zero, -0x1
  .L8009F610_AE5C0:
    /* AE5C0 8009F610 3C018015 */  lui        $at, %hi(D_8014F6C8)
    /* AE5C4 8009F614 AC39F6C8 */  sw         $t9, %lo(D_8014F6C8)($at)
  .L8009F618_AE5C8:
    /* AE5C8 8009F618 3C0F8015 */  lui        $t7, %hi(D_8014F6C8)
    /* AE5CC 8009F61C 8DEFF6C8 */  lw         $t7, %lo(D_8014F6C8)($t7)
    /* AE5D0 8009F620 2401FFFF */  addiu      $at, $zero, -0x1
    /* AE5D4 8009F624 240C0008 */  addiu      $t4, $zero, 0x8
    /* AE5D8 8009F628 11E10003 */  beq        $t7, $at, .L8009F638_AE5E8
    /* AE5DC 8009F62C 27AD00C4 */   addiu     $t5, $sp, 0xC4
    /* AE5E0 8009F630 3C018014 */  lui        $at, %hi(D_8013D730)
    /* AE5E4 8009F634 AC2FD730 */  sw         $t7, %lo(D_8013D730)($at)
  .L8009F638_AE5E8:
    /* AE5E8 8009F638 284100FF */  slti       $at, $v0, 0xFF
    /* AE5EC 8009F63C 10200009 */  beqz       $at, .L8009F664_AE614
    /* AE5F0 8009F640 3C18B900 */   lui       $t8, (0xB9000002 >> 16)
    /* AE5F4 8009F644 8E020000 */  lw         $v0, 0x0($s0)
    /* AE5F8 8009F648 37180002 */  ori        $t8, $t8, (0xB9000002 & 0xFFFF)
    /* AE5FC 8009F64C 24190003 */  addiu      $t9, $zero, 0x3
    /* AE600 8009F650 244E0008 */  addiu      $t6, $v0, 0x8
    /* AE604 8009F654 AE0E0000 */  sw         $t6, 0x0($s0)
    /* AE608 8009F658 AC590004 */  sw         $t9, 0x4($v0)
    /* AE60C 8009F65C 10000008 */  b          .L8009F680_AE630
    /* AE610 8009F660 AC580000 */   sw        $t8, 0x0($v0)
  .L8009F664_AE614:
    /* AE614 8009F664 8E020000 */  lw         $v0, 0x0($s0)
    /* AE618 8009F668 3C0EB900 */  lui        $t6, (0xB9000002 >> 16)
    /* AE61C 8009F66C 35CE0002 */  ori        $t6, $t6, (0xB9000002 & 0xFFFF)
    /* AE620 8009F670 244F0008 */  addiu      $t7, $v0, 0x8
    /* AE624 8009F674 AE0F0000 */  sw         $t7, 0x0($s0)
    /* AE628 8009F678 AC400004 */  sw         $zero, 0x4($v0)
    /* AE62C 8009F67C AC4E0000 */  sw         $t6, 0x0($v0)
  .L8009F680_AE630:
    /* AE630 8009F680 91A20000 */  lbu        $v0, 0x0($t5)
    /* AE634 8009F684 2401000F */  addiu      $at, $zero, 0xF
    /* AE638 8009F688 3C0F8007 */  lui        $t7, %hi(D_80068084)
    /* AE63C 8009F68C 104100A6 */  beq        $v0, $at, .L8009F928_AE8D8
    /* AE640 8009F690 24010003 */   addiu     $at, $zero, 0x3
    /* AE644 8009F694 0181001A */  div        $zero, $t4, $at
    /* AE648 8009F698 8DEF8084 */  lw         $t7, %lo(D_80068084)($t7)
    /* AE64C 8009F69C 0000C010 */  mfhi       $t8
    /* AE650 8009F6A0 0018C940 */  sll        $t9, $t8, 5
    /* AE654 8009F6A4 05E10003 */  bgez       $t7, .L8009F6B4_AE664
    /* AE658 8009F6A8 000F7043 */   sra       $t6, $t7, 1
    /* AE65C 8009F6AC 25E10001 */  addiu      $at, $t7, 0x1
    /* AE660 8009F6B0 00017043 */  sra        $t6, $at, 1
  .L8009F6B4_AE664:
    /* AE664 8009F6B4 032EF821 */  addu       $ra, $t9, $t6
    /* AE668 8009F6B8 3C198014 */  lui        $t9, %hi(D_8013D66C)
    /* AE66C 8009F6BC 3C0E8014 */  lui        $t6, %hi(D_8013D730)
    /* AE670 8009F6C0 8DCED730 */  lw         $t6, %lo(D_8013D730)($t6)
    /* AE674 8009F6C4 0322C821 */  addu       $t9, $t9, $v0
    /* AE678 8009F6C8 9339D66C */  lbu        $t9, %lo(D_8013D66C)($t9)
    /* AE67C 8009F6CC 27FFFFD4 */  addiu      $ra, $ra, -0x2C
    /* AE680 8009F6D0 001FC400 */  sll        $t8, $ra, 16
    /* AE684 8009F6D4 0018FC03 */  sra        $ra, $t8, 16
    /* AE688 8009F6D8 158E0022 */  bne        $t4, $t6, .L8009F764_AE714
    /* AE68C 8009F6DC AFB900AC */   sw        $t9, 0xAC($sp)
    /* AE690 8009F6E0 8E020000 */  lw         $v0, 0x0($s0)
    /* AE694 8009F6E4 3C0FFA00 */  lui        $t7, (0xFA000100 >> 16)
    /* AE698 8009F6E8 35EF0100 */  ori        $t7, $t7, (0xFA000100 & 0xFFFF)
    /* AE69C 8009F6EC 24580008 */  addiu      $t8, $v0, 0x8
    /* AE6A0 8009F6F0 AE180000 */  sw         $t8, 0x0($s0)
    /* AE6A4 8009F6F4 3C198015 */  lui        $t9, %hi(D_8014ED56)
    /* AE6A8 8009F6F8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AE6AC 8009F6FC 8739ED56 */  lh         $t9, %lo(D_8014ED56)($t9)
    /* AE6B0 8009F700 3C01B9FF */  lui        $at, (0xB9FFFF00 >> 16)
    /* AE6B4 8009F704 3421FF00 */  ori        $at, $at, (0xB9FFFF00 & 0xFFFF)
    /* AE6B8 8009F708 332E00FF */  andi       $t6, $t9, 0xFF
    /* AE6BC 8009F70C 01C1C025 */  or         $t8, $t6, $at
    /* AE6C0 8009F710 AC580004 */  sw         $t8, 0x4($v0)
    /* AE6C4 8009F714 3C198015 */  lui        $t9, %hi(D_8014EDDE)
    /* AE6C8 8009F718 3C0F8014 */  lui        $t7, %hi(D_8013D730)
    /* AE6CC 8009F71C 8DEFD730 */  lw         $t7, %lo(D_8013D730)($t7)
    /* AE6D0 8009F720 9739EDDE */  lhu        $t9, %lo(D_8014EDDE)($t9)
    /* AE6D4 8009F724 3C048014 */  lui        $a0, %hi(D_8013D733)
    /* AE6D8 8009F728 51F9001C */  beql       $t7, $t9, .L8009F79C_AE74C
    /* AE6DC 8009F72C 8E020000 */   lw        $v0, 0x0($s0)
    /* AE6E0 8009F730 A7BF00B8 */  sh         $ra, 0xB8($sp)
    /* AE6E4 8009F734 8084D733 */  lb         $a0, %lo(D_8013D733)($a0)
    /* AE6E8 8009F738 AFAC00B0 */  sw         $t4, 0xB0($sp)
    /* AE6EC 8009F73C 0C004E04 */  jal        func_80013810_14410
    /* AE6F0 8009F740 AFAD0024 */   sw        $t5, 0x24($sp)
    /* AE6F4 8009F744 3C0E8014 */  lui        $t6, %hi(D_8013D730)
    /* AE6F8 8009F748 8DCED730 */  lw         $t6, %lo(D_8013D730)($t6)
    /* AE6FC 8009F74C 3C018015 */  lui        $at, %hi(D_8014EDDE)
    /* AE700 8009F750 8FAC00B0 */  lw         $t4, 0xB0($sp)
    /* AE704 8009F754 8FAD0024 */  lw         $t5, 0x24($sp)
    /* AE708 8009F758 87BF00B8 */  lh         $ra, 0xB8($sp)
    /* AE70C 8009F75C 1000000E */  b          .L8009F798_AE748
    /* AE710 8009F760 A42EEDDE */   sh        $t6, %lo(D_8014EDDE)($at)
  .L8009F764_AE714:
    /* AE714 8009F764 8E020000 */  lw         $v0, 0x0($s0)
    /* AE718 8009F768 3C0FFA00 */  lui        $t7, (0xFA000100 >> 16)
    /* AE71C 8009F76C 35EF0100 */  ori        $t7, $t7, (0xFA000100 & 0xFFFF)
    /* AE720 8009F770 24580008 */  addiu      $t8, $v0, 0x8
    /* AE724 8009F774 AE180000 */  sw         $t8, 0x0($s0)
    /* AE728 8009F778 3C198015 */  lui        $t9, %hi(D_8014ED56)
    /* AE72C 8009F77C AC4F0000 */  sw         $t7, 0x0($v0)
    /* AE730 8009F780 8739ED56 */  lh         $t9, %lo(D_8014ED56)($t9)
    /* AE734 8009F784 3C015C7F */  lui        $at, (0x5C7F7F00 >> 16)
    /* AE738 8009F788 34217F00 */  ori        $at, $at, (0x5C7F7F00 & 0xFFFF)
    /* AE73C 8009F78C 332E00FF */  andi       $t6, $t9, 0xFF
    /* AE740 8009F790 01C1C025 */  or         $t8, $t6, $at
    /* AE744 8009F794 AC580004 */  sw         $t8, 0x4($v0)
  .L8009F798_AE748:
    /* AE748 8009F798 8E020000 */  lw         $v0, 0x0($s0)
  .L8009F79C_AE74C:
    /* AE74C 8009F79C 3C19FD50 */  lui        $t9, (0xFD500000 >> 16)
    /* AE750 8009F7A0 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* AE754 8009F7A4 244F0008 */  addiu      $t7, $v0, 0x8
    /* AE758 8009F7A8 AE0F0000 */  sw         $t7, 0x0($s0)
    /* AE75C 8009F7AC AC590000 */  sw         $t9, 0x0($v0)
    /* AE760 8009F7B0 8FAE00AC */  lw         $t6, 0xAC($sp)
    /* AE764 8009F7B4 3C0F8026 */  lui        $t7, %hi(D_8025CCC0)
    /* AE768 8009F7B8 25EFCCC0 */  addiu      $t7, $t7, %lo(D_8025CCC0)
    /* AE76C 8009F7BC 000EC0C0 */  sll        $t8, $t6, 3
    /* AE770 8009F7C0 030EC021 */  addu       $t8, $t8, $t6
    /* AE774 8009F7C4 0018C180 */  sll        $t8, $t8, 6
    /* AE778 8009F7C8 030FC821 */  addu       $t9, $t8, $t7
    /* AE77C 8009F7CC 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* AE780 8009F7D0 03217024 */  and        $t6, $t9, $at
    /* AE784 8009F7D4 24010003 */  addiu      $at, $zero, 0x3
    /* AE788 8009F7D8 0181001A */  div        $zero, $t4, $at
    /* AE78C 8009F7DC AC4E0004 */  sw         $t6, 0x4($v0)
    /* AE790 8009F7E0 8E020000 */  lw         $v0, 0x0($s0)
    /* AE794 8009F7E4 3C190700 */  lui        $t9, (0x7000000 >> 16)
    /* AE798 8009F7E8 3C0FF550 */  lui        $t7, (0xF5500000 >> 16)
    /* AE79C 8009F7EC 24580008 */  addiu      $t8, $v0, 0x8
    /* AE7A0 8009F7F0 AE180000 */  sw         $t8, 0x0($s0)
    /* AE7A4 8009F7F4 AC590004 */  sw         $t9, 0x4($v0)
    /* AE7A8 8009F7F8 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AE7AC 8009F7FC 8E020000 */  lw         $v0, 0x0($s0)
    /* AE7B0 8009F800 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
    /* AE7B4 8009F804 3C19F300 */  lui        $t9, (0xF3000000 >> 16)
    /* AE7B8 8009F808 244E0008 */  addiu      $t6, $v0, 0x8
    /* AE7BC 8009F80C AE0E0000 */  sw         $t6, 0x0($s0)
    /* AE7C0 8009F810 AC400004 */  sw         $zero, 0x4($v0)
    /* AE7C4 8009F814 AC580000 */  sw         $t8, 0x0($v0)
    /* AE7C8 8009F818 8E020000 */  lw         $v0, 0x0($s0)
    /* AE7CC 8009F81C 3C0E0711 */  lui        $t6, (0x711F2AB >> 16)
    /* AE7D0 8009F820 35CEF2AB */  ori        $t6, $t6, (0x711F2AB & 0xFFFF)
    /* AE7D4 8009F824 244F0008 */  addiu      $t7, $v0, 0x8
    /* AE7D8 8009F828 AE0F0000 */  sw         $t7, 0x0($s0)
    /* AE7DC 8009F82C AC4E0004 */  sw         $t6, 0x4($v0)
    /* AE7E0 8009F830 AC590000 */  sw         $t9, 0x0($v0)
    /* AE7E4 8009F834 8E020000 */  lw         $v0, 0x0($s0)
    /* AE7E8 8009F838 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* AE7EC 8009F83C 3C0EF548 */  lui        $t6, (0xF5480600 >> 16)
    /* AE7F0 8009F840 24580008 */  addiu      $t8, $v0, 0x8
    /* AE7F4 8009F844 AE180000 */  sw         $t8, 0x0($s0)
    /* AE7F8 8009F848 AC400004 */  sw         $zero, 0x4($v0)
    /* AE7FC 8009F84C AC4F0000 */  sw         $t7, 0x0($v0)
    /* AE800 8009F850 8E020000 */  lw         $v0, 0x0($s0)
    /* AE804 8009F854 35CE0600 */  ori        $t6, $t6, (0xF5480600 & 0xFFFF)
    /* AE808 8009F858 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
    /* AE80C 8009F85C 24590008 */  addiu      $t9, $v0, 0x8
    /* AE810 8009F860 AE190000 */  sw         $t9, 0x0($s0)
    /* AE814 8009F864 AC400004 */  sw         $zero, 0x4($v0)
    /* AE818 8009F868 AC4E0000 */  sw         $t6, 0x0($v0)
    /* AE81C 8009F86C 8E020000 */  lw         $v0, 0x0($s0)
    /* AE820 8009F870 3C190005 */  lui        $t9, (0x5C05C >> 16)
    /* AE824 8009F874 3739C05C */  ori        $t9, $t9, (0x5C05C & 0xFFFF)
    /* AE828 8009F878 24580008 */  addiu      $t8, $v0, 0x8
    /* AE82C 8009F87C AE180000 */  sw         $t8, 0x0($s0)
    /* AE830 8009F880 AC590004 */  sw         $t9, 0x4($v0)
    /* AE834 8009F884 AC4F0000 */  sw         $t7, 0x0($v0)
    /* AE838 8009F888 8E020000 */  lw         $v0, 0x0($s0)
    /* AE83C 8009F88C 00005812 */  mflo       $t3
    /* AE840 8009F890 000BC100 */  sll        $t8, $t3, 4
    /* AE844 8009F894 030BC023 */  subu       $t8, $t8, $t3
    /* AE848 8009F898 244E0008 */  addiu      $t6, $v0, 0x8
    /* AE84C 8009F89C AE0E0000 */  sw         $t6, 0x0($s0)
    /* AE850 8009F8A0 0018C040 */  sll        $t8, $t8, 1
    /* AE854 8009F8A4 270B0038 */  addiu      $t3, $t8, 0x38
    /* AE858 8009F8A8 27EE0018 */  addiu      $t6, $ra, 0x18
    /* AE85C 8009F8AC 000EC080 */  sll        $t8, $t6, 2
    /* AE860 8009F8B0 330F0FFF */  andi       $t7, $t8, 0xFFF
    /* AE864 8009F8B4 000FCB00 */  sll        $t9, $t7, 12
    /* AE868 8009F8B8 25780018 */  addiu      $t8, $t3, 0x18
    /* AE86C 8009F8BC 3C01E400 */  lui        $at, (0xE4000000 >> 16)
    /* AE870 8009F8C0 03217025 */  or         $t6, $t9, $at
    /* AE874 8009F8C4 00187880 */  sll        $t7, $t8, 2
    /* AE878 8009F8C8 31F90FFF */  andi       $t9, $t7, 0xFFF
    /* AE87C 8009F8CC 01D9C025 */  or         $t8, $t6, $t9
    /* AE880 8009F8D0 001F7880 */  sll        $t7, $ra, 2
    /* AE884 8009F8D4 31EE0FFF */  andi       $t6, $t7, 0xFFF
    /* AE888 8009F8D8 AC580000 */  sw         $t8, 0x0($v0)
    /* AE88C 8009F8DC 000BC080 */  sll        $t8, $t3, 2
    /* AE890 8009F8E0 330F0FFF */  andi       $t7, $t8, 0xFFF
    /* AE894 8009F8E4 000ECB00 */  sll        $t9, $t6, 12
    /* AE898 8009F8E8 032F7025 */  or         $t6, $t9, $t7
    /* AE89C 8009F8EC AC4E0004 */  sw         $t6, 0x4($v0)
    /* AE8A0 8009F8F0 8E020000 */  lw         $v0, 0x0($s0)
    /* AE8A4 8009F8F4 3C19B400 */  lui        $t9, (0xB4000000 >> 16)
    /* AE8A8 8009F8F8 3C0EB300 */  lui        $t6, (0xB3000000 >> 16)
    /* AE8AC 8009F8FC 24580008 */  addiu      $t8, $v0, 0x8
    /* AE8B0 8009F900 AE180000 */  sw         $t8, 0x0($s0)
    /* AE8B4 8009F904 AC400004 */  sw         $zero, 0x4($v0)
    /* AE8B8 8009F908 AC590000 */  sw         $t9, 0x0($v0)
    /* AE8BC 8009F90C 8E020000 */  lw         $v0, 0x0($s0)
    /* AE8C0 8009F910 3C180400 */  lui        $t8, (0x4000400 >> 16)
    /* AE8C4 8009F914 37180400 */  ori        $t8, $t8, (0x4000400 & 0xFFFF)
    /* AE8C8 8009F918 244F0008 */  addiu      $t7, $v0, 0x8
    /* AE8CC 8009F91C AE0F0000 */  sw         $t7, 0x0($s0)
    /* AE8D0 8009F920 AC580004 */  sw         $t8, 0x4($v0)
    /* AE8D4 8009F924 AC4E0000 */  sw         $t6, 0x0($v0)
  .L8009F928_AE8D8:
    /* AE8D8 8009F928 01801025 */  or         $v0, $t4, $zero
    /* AE8DC 8009F92C 25ADFFFF */  addiu      $t5, $t5, -0x1
    /* AE8E0 8009F930 1580FF53 */  bnez       $t4, .L8009F680_AE630
    /* AE8E4 8009F934 258CFFFF */   addiu     $t4, $t4, -0x1
    /* AE8E8 8009F938 00002025 */  or         $a0, $zero, $zero
    /* AE8EC 8009F93C 0C000D61 */  jal        isButtonNewlyPressed
    /* AE8F0 8009F940 34059000 */   ori       $a1, $zero, 0x9000
    /* AE8F4 8009F944 10400058 */  beqz       $v0, .L8009FAA8_AEA58
    /* AE8F8 8009F948 3C198015 */   lui       $t9, %hi(D_8014ED56)
    /* AE8FC 8009F94C 8739ED56 */  lh         $t9, %lo(D_8014ED56)($t9)
    /* AE900 8009F950 240100FF */  addiu      $at, $zero, 0xFF
    /* AE904 8009F954 3C0F8015 */  lui        $t7, %hi(D_8014ED54)
    /* AE908 8009F958 17210053 */  bne        $t9, $at, .L8009FAA8_AEA58
    /* AE90C 8009F95C 00000000 */   nop
    /* AE910 8009F960 85EFED54 */  lh         $t7, %lo(D_8014ED54)($t7)
    /* AE914 8009F964 15E00003 */  bnez       $t7, .L8009F974_AE924
    /* AE918 8009F968 00000000 */   nop
    /* AE91C 8009F96C 0C0054F6 */  jal        func_800153D8_15FD8
    /* AE920 8009F970 240400C6 */   addiu     $a0, $zero, 0xC6
  .L8009F974_AE924:
    /* AE924 8009F974 3C0E8014 */  lui        $t6, %hi(D_8013D730)
    /* AE928 8009F978 8DCED730 */  lw         $t6, %lo(D_8013D730)($t6)
    /* AE92C 8009F97C 2401000E */  addiu      $at, $zero, 0xE
    /* AE930 8009F980 3C198015 */  lui        $t9, %hi(D_8014ED54)
    /* AE934 8009F984 03AEC021 */  addu       $t8, $sp, $t6
    /* AE938 8009F988 931800BC */  lbu        $t8, 0xBC($t8)
    /* AE93C 8009F98C 1701000A */  bne        $t8, $at, .L8009F9B8_AE968
    /* AE940 8009F990 00000000 */   nop
    /* AE944 8009F994 8739ED54 */  lh         $t9, %lo(D_8014ED54)($t9)
    /* AE948 8009F998 240F0001 */  addiu      $t7, $zero, 0x1
    /* AE94C 8009F99C 3C018015 */  lui        $at, %hi(D_8014ED54)
    /* AE950 8009F9A0 17200003 */  bnez       $t9, .L8009F9B0_AE960
    /* AE954 8009F9A4 00002025 */   or        $a0, $zero, $zero
    /* AE958 8009F9A8 10000057 */  b          .L8009FB08_AEAB8
    /* AE95C 8009F9AC A42FED54 */   sh        $t7, %lo(D_8014ED54)($at)
  .L8009F9B0_AE960:
    /* AE960 8009F9B0 0C001B6B */  jal        func_80006DAC_79AC
    /* AE964 8009F9B4 24050001 */   addiu     $a1, $zero, 0x1
  .L8009F9B8_AE968:
    /* AE968 8009F9B8 3C0E8014 */  lui        $t6, %hi(D_8013D730)
    /* AE96C 8009F9BC 8DCED730 */  lw         $t6, %lo(D_8013D730)($t6)
    /* AE970 8009F9C0 24010003 */  addiu      $at, $zero, 0x3
    /* AE974 8009F9C4 3C068005 */  lui        $a2, %hi(D_80052B34)
    /* AE978 8009F9C8 15C10015 */  bne        $t6, $at, .L8009FA20_AE9D0
    /* AE97C 8009F9CC 24C62B34 */   addiu     $a2, $a2, %lo(D_80052B34)
    /* AE980 8009F9D0 8CC20000 */  lw         $v0, 0x0($a2)
    /* AE984 8009F9D4 24050070 */  addiu      $a1, $zero, 0x70
    /* AE988 8009F9D8 3C038025 */  lui        $v1, %hi(vehicleSpecs)
    /* AE98C 8009F9DC 9058001A */  lbu        $t8, 0x1A($v0)
    /* AE990 8009F9E0 24637A00 */  addiu      $v1, $v1, %lo(vehicleSpecs)
    /* AE994 8009F9E4 03050019 */  multu      $t8, $a1
    /* AE998 8009F9E8 0000C812 */  mflo       $t9
    /* AE99C 8009F9EC 00797821 */  addu       $t7, $v1, $t9
    /* AE9A0 8009F9F0 91EE0061 */  lbu        $t6, 0x61($t7)
    /* AE9A4 8009F9F4 000EC200 */  sll        $t8, $t6, 8
    /* AE9A8 8009F9F8 A458003C */  sh         $t8, 0x3C($v0)
    /* AE9AC 8009F9FC 8CD90000 */  lw         $t9, 0x0($a2)
    /* AE9B0 8009FA00 932F001A */  lbu        $t7, 0x1A($t9)
    /* AE9B4 8009FA04 01E50019 */  multu      $t7, $a1
    /* AE9B8 8009FA08 00007012 */  mflo       $t6
    /* AE9BC 8009FA0C 006E2021 */  addu       $a0, $v1, $t6
    /* AE9C0 8009FA10 0C03F504 */  jal        func_800FD410_10C3C0
    /* AE9C4 8009FA14 00000000 */   nop
    /* AE9C8 8009FA18 0C04E4BF */  jal        func_801392FC_1482AC
    /* AE9CC 8009FA1C 24040001 */   addiu     $a0, $zero, 0x1
  .L8009FA20_AE9D0:
    /* AE9D0 8009FA20 3C188014 */  lui        $t8, %hi(D_8013D730)
    /* AE9D4 8009FA24 8F18D730 */  lw         $t8, %lo(D_8013D730)($t8)
    /* AE9D8 8009FA28 24010003 */  addiu      $at, $zero, 0x3
    /* AE9DC 8009FA2C 3C198016 */  lui        $t9, %hi(D_801591B0)
    /* AE9E0 8009FA30 13010009 */  beq        $t8, $at, .L8009FA58_AEA08
    /* AE9E4 8009FA34 3C0F8005 */   lui       $t7, %hi(D_80052AE0)
    /* AE9E8 8009FA38 03B81821 */  addu       $v1, $sp, $t8
    /* AE9EC 8009FA3C 906300BC */  lbu        $v1, 0xBC($v1)
    /* AE9F0 8009FA40 2401000F */  addiu      $at, $zero, 0xF
    /* AE9F4 8009FA44 10610004 */  beq        $v1, $at, .L8009FA58_AEA08
    /* AE9F8 8009FA48 24010008 */   addiu     $at, $zero, 0x8
    /* AE9FC 8009FA4C 10610002 */  beq        $v1, $at, .L8009FA58_AEA08
    /* AEA00 8009FA50 3C018005 */   lui       $at, %hi(D_80050AD4)
    /* AEA04 8009FA54 AC230AD4 */  sw         $v1, %lo(D_80050AD4)($at)
  .L8009FA58_AEA08:
    /* AEA08 8009FA58 8F3991B0 */  lw         $t9, %lo(D_801591B0)($t9)
    /* AEA0C 8009FA5C 8DEF2AE0 */  lw         $t7, %lo(D_80052AE0)($t7)
    /* AEA10 8009FA60 3C018016 */  lui        $at, %hi(D_801591AC)
    /* AEA14 8009FA64 3C0E8016 */  lui        $t6, %hi(D_801591D4)
    /* AEA18 8009FA68 3C188005 */  lui        $t8, %hi(D_80052B34)
    /* AEA1C 8009FA6C 8F182B34 */  lw         $t8, %lo(D_80052B34)($t8)
    /* AEA20 8009FA70 85CE91D4 */  lh         $t6, %lo(D_801591D4)($t6)
    /* AEA24 8009FA74 AC3991AC */  sw         $t9, %lo(D_801591AC)($at)
    /* AEA28 8009FA78 3C018005 */  lui        $at, %hi(gameplayMode)
    /* AEA2C 8009FA7C AC2F2ADC */  sw         $t7, %lo(gameplayMode)($at)
    /* AEA30 8009FA80 3C198015 */  lui        $t9, %hi(D_8014ED56)
    /* AEA34 8009FA84 A70E0006 */  sh         $t6, 0x6($t8)
    /* AEA38 8009FA88 8739ED56 */  lh         $t9, %lo(D_8014ED56)($t9)
    /* AEA3C 8009FA8C 3C0E8014 */  lui        $t6, %hi(D_8013D730)
    /* AEA40 8009FA90 8DCED730 */  lw         $t6, %lo(D_8013D730)($t6)
    /* AEA44 8009FA94 3C018015 */  lui        $at, %hi(D_8014ED56)
    /* AEA48 8009FA98 272FFFFF */  addiu      $t7, $t9, -0x1
    /* AEA4C 8009FA9C A42FED56 */  sh         $t7, %lo(D_8014ED56)($at)
    /* AEA50 8009FAA0 3C018015 */  lui        $at, %hi(D_8014F6C8)
    /* AEA54 8009FAA4 AC2EF6C8 */  sw         $t6, %lo(D_8014F6C8)($at)
  .L8009FAA8_AEA58:
    /* AEA58 8009FAA8 3C188016 */  lui        $t8, %hi(D_80159320)
    /* AEA5C 8009FAAC 8F189320 */  lw         $t8, %lo(D_80159320)($t8)
    /* AEA60 8009FAB0 24040190 */  addiu      $a0, $zero, 0x190
    /* AEA64 8009FAB4 0018C900 */  sll        $t9, $t8, 4
    /* AEA68 8009FAB8 07210006 */  bgez       $t9, .L8009FAD4_AEA84
    /* AEA6C 8009FABC 00000000 */   nop
    /* AEA70 8009FAC0 0C001B6B */  jal        func_80006DAC_79AC
    /* AEA74 8009FAC4 24050001 */   addiu     $a1, $zero, 0x1
    /* AEA78 8009FAC8 240F0003 */  addiu      $t7, $zero, 0x3
    /* AEA7C 8009FACC 3C018004 */  lui        $at, %hi(D_800476A0)
    /* AEA80 8009FAD0 A42F76A0 */  sh         $t7, %lo(D_800476A0)($at)
  .L8009FAD4_AEA84:
    /* AEA84 8009FAD4 3C0E8015 */  lui        $t6, %hi(D_8014ED56)
    /* AEA88 8009FAD8 85CEED56 */  lh         $t6, %lo(D_8014ED56)($t6)
    /* AEA8C 8009FADC 24180004 */  addiu      $t8, $zero, 0x4
    /* AEA90 8009FAE0 29C10021 */  slti       $at, $t6, 0x21
    /* AEA94 8009FAE4 10200002 */  beqz       $at, .L8009FAF0_AEAA0
    /* AEA98 8009FAE8 3C018014 */   lui       $at, %hi(D_8013D730)
    /* AEA9C 8009FAEC AC38D730 */  sw         $t8, %lo(D_8013D730)($at)
  .L8009FAF0_AEAA0:
    /* AEAA0 8009FAF0 8E020000 */  lw         $v0, 0x0($s0)
    /* AEAA4 8009FAF4 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* AEAA8 8009FAF8 24590008 */  addiu      $t9, $v0, 0x8
    /* AEAAC 8009FAFC AE190000 */  sw         $t9, 0x0($s0)
    /* AEAB0 8009FB00 AC400004 */  sw         $zero, 0x4($v0)
    /* AEAB4 8009FB04 AC4F0000 */  sw         $t7, 0x0($v0)
  .L8009FB08_AEAB8:
    /* AEAB8 8009FB08 8FBF001C */  lw         $ra, 0x1C($sp)
    /* AEABC 8009FB0C 8FB00018 */  lw         $s0, 0x18($sp)
    /* AEAC0 8009FB10 27BD00C8 */  addiu      $sp, $sp, 0xC8
    /* AEAC4 8009FB14 03E00008 */  jr         $ra
    /* AEAC8 8009FB18 00000000 */   nop
endlabel func_8009F130_AE0E0
