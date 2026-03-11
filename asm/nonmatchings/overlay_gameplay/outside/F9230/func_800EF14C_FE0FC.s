nonmatching func_800EF14C_FE0FC, 0x504

glabel func_800EF14C_FE0FC
    /* FE0FC 800EF14C 27BDFF48 */  addiu      $sp, $sp, -0xB8
    /* FE100 800EF150 3C0F8014 */  lui        $t7, %hi(D_8013FC80)
    /* FE104 800EF154 25EFFC80 */  addiu      $t7, $t7, %lo(D_8013FC80)
    /* FE108 800EF158 AFBF002C */  sw         $ra, 0x2C($sp)
    /* FE10C 800EF15C AFB10028 */  sw         $s1, 0x28($sp)
    /* FE110 800EF160 AFB00024 */  sw         $s0, 0x24($sp)
    /* FE114 800EF164 AFA400B8 */  sw         $a0, 0xB8($sp)
    /* FE118 800EF168 25EA0024 */  addiu      $t2, $t7, 0x24
    /* FE11C 800EF16C 27AE006C */  addiu      $t6, $sp, 0x6C
  .L800EF170_FE120:
    /* FE120 800EF170 8DE10000 */  lw         $at, 0x0($t7)
    /* FE124 800EF174 25EF000C */  addiu      $t7, $t7, 0xC
    /* FE128 800EF178 25CE000C */  addiu      $t6, $t6, 0xC
    /* FE12C 800EF17C ADC1FFF4 */  sw         $at, -0xC($t6)
    /* FE130 800EF180 8DE1FFF8 */  lw         $at, -0x8($t7)
    /* FE134 800EF184 ADC1FFF8 */  sw         $at, -0x8($t6)
    /* FE138 800EF188 8DE1FFFC */  lw         $at, -0x4($t7)
    /* FE13C 800EF18C 15EAFFF8 */  bne        $t7, $t2, .L800EF170_FE120
    /* FE140 800EF190 ADC1FFFC */   sw        $at, -0x4($t6)
    /* FE144 800EF194 8DE10000 */  lw         $at, 0x0($t7)
    /* FE148 800EF198 3C0C8014 */  lui        $t4, %hi(D_8013FCA8)
    /* FE14C 800EF19C 258CFCA8 */  addiu      $t4, $t4, %lo(D_8013FCA8)
    /* FE150 800EF1A0 ADC10000 */  sw         $at, 0x0($t6)
    /* FE154 800EF1A4 8D810000 */  lw         $at, 0x0($t4)
    /* FE158 800EF1A8 27AB0060 */  addiu      $t3, $sp, 0x60
    /* FE15C 800EF1AC 8D980004 */  lw         $t8, 0x4($t4)
    /* FE160 800EF1B0 AD610000 */  sw         $at, 0x0($t3)
    /* FE164 800EF1B4 95810008 */  lhu        $at, 0x8($t4)
    /* FE168 800EF1B8 3C0A8015 */  lui        $t2, %hi(D_80157A3C)
    /* FE16C 800EF1BC AD780004 */  sw         $t8, 0x4($t3)
    /* FE170 800EF1C0 A5610008 */  sh         $at, 0x8($t3)
    /* FE174 800EF1C4 854A7A3C */  lh         $t2, %lo(D_80157A3C)($t2)
    /* FE178 800EF1C8 3C108006 */  lui        $s0, %hi(D_8005BB38)
    /* FE17C 800EF1CC 2610BB38 */  addiu      $s0, $s0, %lo(D_8005BB38)
    /* FE180 800EF1D0 1140011A */  beqz       $t2, .L800EF63C_FE5EC
    /* FE184 800EF1D4 3C118006 */   lui       $s1, %hi(D_8005BB2C)
    /* FE188 800EF1D8 2631BB2C */  addiu      $s1, $s1, %lo(D_8005BB2C)
    /* FE18C 800EF1DC 8E220000 */  lw         $v0, 0x0($s1)
    /* FE190 800EF1E0 3C0EBB00 */  lui        $t6, (0xBB000001 >> 16)
    /* FE194 800EF1E4 3C198000 */  lui        $t9, (0x80008000 >> 16)
    /* FE198 800EF1E8 244F0008 */  addiu      $t7, $v0, 0x8
    /* FE19C 800EF1EC AE2F0000 */  sw         $t7, 0x0($s1)
    /* FE1A0 800EF1F0 37398000 */  ori        $t9, $t9, (0x80008000 & 0xFFFF)
    /* FE1A4 800EF1F4 35CE0001 */  ori        $t6, $t6, (0xBB000001 & 0xFFFF)
    /* FE1A8 800EF1F8 AC4E0000 */  sw         $t6, 0x0($v0)
    /* FE1AC 800EF1FC AC590004 */  sw         $t9, 0x4($v0)
    /* FE1B0 800EF200 8E220000 */  lw         $v0, 0x0($s1)
    /* FE1B4 800EF204 3C0BBA00 */  lui        $t3, (0xBA000E02 >> 16)
    /* FE1B8 800EF208 356B0E02 */  ori        $t3, $t3, (0xBA000E02 & 0xFFFF)
    /* FE1BC 800EF20C 244D0008 */  addiu      $t5, $v0, 0x8
    /* FE1C0 800EF210 AE2D0000 */  sw         $t5, 0x0($s1)
    /* FE1C4 800EF214 340C8000 */  ori        $t4, $zero, 0x8000
    /* FE1C8 800EF218 3C068003 */  lui        $a2, %hi(D_800311A0)
    /* FE1CC 800EF21C AC4C0004 */  sw         $t4, 0x4($v0)
    /* FE1D0 800EF220 AC4B0000 */  sw         $t3, 0x0($v0)
    /* FE1D4 800EF224 8E070000 */  lw         $a3, 0x0($s0)
    /* FE1D8 800EF228 24C611A0 */  addiu      $a2, $a2, %lo(D_800311A0)
    /* FE1DC 800EF22C 00002025 */  or         $a0, $zero, $zero
    /* FE1E0 800EF230 0C000E74 */  jal        func_800039D0_45D0
    /* FE1E4 800EF234 00002825 */   or        $a1, $zero, $zero
    /* FE1E8 800EF238 8E220000 */  lw         $v0, 0x0($s1)
    /* FE1EC 800EF23C 3C0A0102 */  lui        $t2, (0x1020040 >> 16)
    /* FE1F0 800EF240 8FA900B8 */  lw         $t1, 0xB8($sp)
    /* FE1F4 800EF244 24580008 */  addiu      $t8, $v0, 0x8
    /* FE1F8 800EF248 AE380000 */  sw         $t8, 0x0($s1)
    /* FE1FC 800EF24C 354A0040 */  ori        $t2, $t2, (0x1020040 & 0xFFFF)
    /* FE200 800EF250 AC4A0000 */  sw         $t2, 0x0($v0)
    /* FE204 800EF254 8E0F0000 */  lw         $t7, 0x0($s0)
    /* FE208 800EF258 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* FE20C 800EF25C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* FE210 800EF260 01E17024 */  and        $t6, $t7, $at
    /* FE214 800EF264 AC4E0004 */  sw         $t6, 0x4($v0)
    /* FE218 800EF268 8E190000 */  lw         $t9, 0x0($s0)
    /* FE21C 800EF26C 3C038015 */  lui        $v1, %hi(D_80157A3C)
    /* FE220 800EF270 240F4000 */  addiu      $t7, $zero, 0x4000
    /* FE224 800EF274 272D0040 */  addiu      $t5, $t9, 0x40
    /* FE228 800EF278 AE0D0000 */  sw         $t5, 0x0($s0)
    /* FE22C 800EF27C 84637A3C */  lh         $v1, %lo(D_80157A3C)($v1)
    /* FE230 800EF280 240D1000 */  addiu      $t5, $zero, 0x1000
    /* FE234 800EF284 852B0000 */  lh         $t3, 0x0($t1)
    /* FE238 800EF288 24790001 */  addiu      $t9, $v1, 0x1
    /* FE23C 800EF28C 01B9001A */  div        $zero, $t5, $t9
    /* FE240 800EF290 A7AB00A4 */  sh         $t3, 0xA4($sp)
    /* FE244 800EF294 852C0002 */  lh         $t4, 0x2($t1)
    /* FE248 800EF298 00005812 */  mflo       $t3
    /* FE24C 800EF29C 8E070000 */  lw         $a3, 0x0($s0)
    /* FE250 800EF2A0 A7AC00A6 */  sh         $t4, 0xA6($sp)
    /* FE254 800EF2A4 85380004 */  lh         $t8, 0x4($t1)
    /* FE258 800EF2A8 27A400A4 */  addiu      $a0, $sp, 0xA4
    /* FE25C 800EF2AC 27A50094 */  addiu      $a1, $sp, 0x94
    /* FE260 800EF2B0 A7B800A8 */  sh         $t8, 0xA8($sp)
    /* FE264 800EF2B4 852A000E */  lh         $t2, 0xE($t1)
    /* FE268 800EF2B8 A7A00096 */  sh         $zero, 0x96($sp)
    /* FE26C 800EF2BC A7A00098 */  sh         $zero, 0x98($sp)
    /* FE270 800EF2C0 01EA7023 */  subu       $t6, $t7, $t2
    /* FE274 800EF2C4 A7AE0094 */  sh         $t6, 0x94($sp)
    /* FE278 800EF2C8 A7AB009E */  sh         $t3, 0x9E($sp)
    /* FE27C 800EF2CC 27A6009C */  addiu      $a2, $sp, 0x9C
    /* FE280 800EF2D0 00404025 */  or         $t0, $v0, $zero
    /* FE284 800EF2D4 A7A3009C */  sh         $v1, 0x9C($sp)
    /* FE288 800EF2D8 17200002 */  bnez       $t9, .L800EF2E4_FE294
    /* FE28C 800EF2DC 00000000 */   nop
    /* FE290 800EF2E0 0007000D */  break      7
  .L800EF2E4_FE294:
    /* FE294 800EF2E4 2401FFFF */  addiu      $at, $zero, -0x1
    /* FE298 800EF2E8 17210004 */  bne        $t9, $at, .L800EF2FC_FE2AC
    /* FE29C 800EF2EC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* FE2A0 800EF2F0 15A10002 */  bne        $t5, $at, .L800EF2FC_FE2AC
    /* FE2A4 800EF2F4 00000000 */   nop
    /* FE2A8 800EF2F8 0006000D */  break      6
  .L800EF2FC_FE2AC:
    /* FE2AC 800EF2FC A7A300A0 */  sh         $v1, 0xA0($sp)
    /* FE2B0 800EF300 0C000E74 */  jal        func_800039D0_45D0
    /* FE2B4 800EF304 00000000 */   nop
    /* FE2B8 800EF308 8E220000 */  lw         $v0, 0x0($s1)
    /* FE2BC 800EF30C 3C180100 */  lui        $t8, (0x1000040 >> 16)
    /* FE2C0 800EF310 37180040 */  ori        $t8, $t8, (0x1000040 & 0xFFFF)
    /* FE2C4 800EF314 244C0008 */  addiu      $t4, $v0, 0x8
    /* FE2C8 800EF318 AE2C0000 */  sw         $t4, 0x0($s1)
    /* FE2CC 800EF31C AC580000 */  sw         $t8, 0x0($v0)
    /* FE2D0 800EF320 8E0F0000 */  lw         $t7, 0x0($s0)
    /* FE2D4 800EF324 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* FE2D8 800EF328 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* FE2DC 800EF32C 01E15024 */  and        $t2, $t7, $at
    /* FE2E0 800EF330 3C088015 */  lui        $t0, %hi(D_80157600)
    /* FE2E4 800EF334 25087600 */  addiu      $t0, $t0, %lo(D_80157600)
    /* FE2E8 800EF338 3C014780 */  lui        $at, (0x47800000 >> 16)
    /* FE2EC 800EF33C AC4A0004 */  sw         $t2, 0x4($v0)
    /* FE2F0 800EF340 C504000C */  lwc1       $f4, 0xC($t0)
    /* FE2F4 800EF344 44813000 */  mtc1       $at, $f6
    /* FE2F8 800EF348 8E0E0000 */  lw         $t6, 0x0($s0)
    /* FE2FC 800EF34C 850C0002 */  lh         $t4, 0x2($t0)
    /* FE300 800EF350 46062202 */  mul.s      $f8, $f4, $f6
    /* FE304 800EF354 25CD0040 */  addiu      $t5, $t6, 0x40
    /* FE308 800EF358 850F0004 */  lh         $t7, 0x4($t0)
    /* FE30C 800EF35C 850E0000 */  lh         $t6, 0x0($t0)
    /* FE310 800EF360 AE0D0000 */  sw         $t5, 0x0($s0)
    /* FE314 800EF364 000CC0C0 */  sll        $t8, $t4, 3
    /* FE318 800EF368 000F50C0 */  sll        $t2, $t7, 3
    /* FE31C 800EF36C 4600428D */  trunc.w.s  $f10, $f8
    /* FE320 800EF370 000E68C0 */  sll        $t5, $t6, 3
    /* FE324 800EF374 AFA000AC */  sw         $zero, 0xAC($sp)
    /* FE328 800EF378 AFA000B4 */  sw         $zero, 0xB4($sp)
    /* FE32C 800EF37C 440B5000 */  mfc1       $t3, $f10
    /* FE330 800EF380 A7B80094 */  sh         $t8, 0x94($sp)
    /* FE334 800EF384 A7AA0096 */  sh         $t2, 0x96($sp)
    /* FE338 800EF388 A7AD0098 */  sh         $t5, 0x98($sp)
    /* FE33C 800EF38C 8E070000 */  lw         $a3, 0x0($s0)
    /* FE340 800EF390 27A400AC */  addiu      $a0, $sp, 0xAC
    /* FE344 800EF394 27A50094 */  addiu      $a1, $sp, 0x94
    /* FE348 800EF398 00003025 */  or         $a2, $zero, $zero
    /* FE34C 800EF39C 0C003207 */  jal        func_8000C81C_D41C
    /* FE350 800EF3A0 AFAB00B0 */   sw        $t3, 0xB0($sp)
    /* FE354 800EF3A4 8E220000 */  lw         $v0, 0x0($s1)
    /* FE358 800EF3A8 3C0B0100 */  lui        $t3, (0x1000040 >> 16)
    /* FE35C 800EF3AC 356B0040 */  ori        $t3, $t3, (0x1000040 & 0xFFFF)
    /* FE360 800EF3B0 24590008 */  addiu      $t9, $v0, 0x8
    /* FE364 800EF3B4 AE390000 */  sw         $t9, 0x0($s1)
    /* FE368 800EF3B8 AC4B0000 */  sw         $t3, 0x0($v0)
    /* FE36C 800EF3BC 8E0C0000 */  lw         $t4, 0x0($s0)
    /* FE370 800EF3C0 3C071FFF */  lui        $a3, (0x1FFFFFFF >> 16)
    /* FE374 800EF3C4 34E7FFFF */  ori        $a3, $a3, (0x1FFFFFFF & 0xFFFF)
    /* FE378 800EF3C8 0187C024 */  and        $t8, $t4, $a3
    /* FE37C 800EF3CC AC580004 */  sw         $t8, 0x4($v0)
    /* FE380 800EF3D0 8E0F0000 */  lw         $t7, 0x0($s0)
    /* FE384 800EF3D4 8E220000 */  lw         $v0, 0x0($s1)
    /* FE388 800EF3D8 3C0DBC00 */  lui        $t5, (0xBC001C06 >> 16)
    /* FE38C 800EF3DC 25EA0040 */  addiu      $t2, $t7, 0x40
    /* FE390 800EF3E0 244E0008 */  addiu      $t6, $v0, 0x8
    /* FE394 800EF3E4 AE0A0000 */  sw         $t2, 0x0($s0)
    /* FE398 800EF3E8 AE2E0000 */  sw         $t6, 0x0($s1)
    /* FE39C 800EF3EC 35AD1C06 */  ori        $t5, $t5, (0xBC001C06 & 0xFFFF)
    /* FE3A0 800EF3F0 AC4D0000 */  sw         $t5, 0x0($v0)
    /* FE3A4 800EF3F4 8E190000 */  lw         $t9, 0x0($s0)
    /* FE3A8 800EF3F8 3C18BC00 */  lui        $t8, (0xBC001806 >> 16)
    /* FE3AC 800EF3FC 37181806 */  ori        $t8, $t8, (0xBC001806 & 0xFFFF)
    /* FE3B0 800EF400 03275824 */  and        $t3, $t9, $a3
    /* FE3B4 800EF404 AC4B0004 */  sw         $t3, 0x4($v0)
    /* FE3B8 800EF408 8E220000 */  lw         $v0, 0x0($s1)
    /* FE3BC 800EF40C 3C0F8015 */  lui        $t7, %hi(D_801575DC)
    /* FE3C0 800EF410 3C048014 */  lui        $a0, %hi(D_8013E470)
    /* FE3C4 800EF414 244C0008 */  addiu      $t4, $v0, 0x8
    /* FE3C8 800EF418 AE2C0000 */  sw         $t4, 0x0($s1)
    /* FE3CC 800EF41C AC580000 */  sw         $t8, 0x0($v0)
    /* FE3D0 800EF420 8DEF75DC */  lw         $t7, %lo(D_801575DC)($t7)
    /* FE3D4 800EF424 AFA20044 */  sw         $v0, 0x44($sp)
    /* FE3D8 800EF428 000F5140 */  sll        $t2, $t7, 5
    /* FE3DC 800EF42C 008A2021 */  addu       $a0, $a0, $t2
    /* FE3E0 800EF430 0C0047EB */  jal        func_80011FAC_12BAC
    /* FE3E4 800EF434 8C84E470 */   lw        $a0, %lo(D_8013E470)($a0)
    /* FE3E8 800EF438 8FA60044 */  lw         $a2, 0x44($sp)
    /* FE3EC 800EF43C 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FE3F0 800EF440 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FE3F4 800EF444 24050010 */  addiu      $a1, $zero, 0x10
    /* FE3F8 800EF448 0C00330F */  jal        func_8000CC3C_D83C
    /* FE3FC 800EF44C ACC20004 */   sw        $v0, 0x4($a2)
    /* FE400 800EF450 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FE404 800EF454 24847600 */  addiu      $a0, $a0, %lo(D_80157600)
    /* FE408 800EF458 8C8D040C */  lw         $t5, 0x40C($a0)
    /* FE40C 800EF45C 240E0100 */  addiu      $t6, $zero, 0x100
    /* FE410 800EF460 24010038 */  addiu      $at, $zero, 0x38
    /* FE414 800EF464 A7AE009E */  sh         $t6, 0x9E($sp)
    /* FE418 800EF468 A7AE009C */  sh         $t6, 0x9C($sp)
    /* FE41C 800EF46C 15A1003E */  bne        $t5, $at, .L800EF568_FE518
    /* FE420 800EF470 A7AE00A0 */   sh        $t6, 0xA0($sp)
    /* FE424 800EF474 0C03AE6D */  jal        func_800EB9B4_FA964
    /* FE428 800EF478 00000000 */   nop
    /* FE42C 800EF47C 24010003 */  addiu      $at, $zero, 0x3
    /* FE430 800EF480 14410039 */  bne        $v0, $at, .L800EF568_FE518
    /* FE434 800EF484 3C038014 */   lui       $v1, %hi(D_8013FCB4)
    /* FE438 800EF488 9463FCB4 */  lhu        $v1, %lo(D_8013FCB4)($v1)
    /* FE43C 800EF48C 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* FE440 800EF490 24070055 */  addiu      $a3, $zero, 0x55
    /* FE444 800EF494 14600022 */  bnez       $v1, .L800EF520_FE4D0
    /* FE448 800EF498 240C00FA */   addiu     $t4, $zero, 0xFA
    /* FE44C 800EF49C 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* FE450 800EF4A0 241800A0 */  addiu      $t8, $zero, 0xA0
    /* FE454 800EF4A4 240F0050 */  addiu      $t7, $zero, 0x50
    /* FE458 800EF4A8 84450002 */  lh         $a1, 0x2($v0)
    /* FE45C 800EF4AC 84440000 */  lh         $a0, 0x0($v0)
    /* FE460 800EF4B0 84460004 */  lh         $a2, 0x4($v0)
    /* FE464 800EF4B4 24A50036 */  addiu      $a1, $a1, 0x36
    /* FE468 800EF4B8 0005CC00 */  sll        $t9, $a1, 16
    /* FE46C 800EF4BC 00192C03 */  sra        $a1, $t9, 16
    /* FE470 800EF4C0 AFA0001C */  sw         $zero, 0x1C($sp)
    /* FE474 800EF4C4 AFAF0018 */  sw         $t7, 0x18($sp)
    /* FE478 800EF4C8 AFB80014 */  sw         $t8, 0x14($sp)
    /* FE47C 800EF4CC 0C034185 */  jal        func_800D0614_DF5C4
    /* FE480 800EF4D0 AFAC0010 */   sw        $t4, 0x10($sp)
    /* FE484 800EF4D4 24040014 */  addiu      $a0, $zero, 0x14
    /* FE488 800EF4D8 00002825 */  or         $a1, $zero, $zero
    /* FE48C 800EF4DC 0C000451 */  jal        func_80001144_1D44
    /* FE490 800EF4E0 24060005 */   addiu     $a2, $zero, 0x5
    /* FE494 800EF4E4 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* FE498 800EF4E8 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* FE49C 800EF4EC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* FE4A0 800EF4F0 44818000 */  mtc1       $at, $f16
    /* FE4A4 800EF4F4 844A0004 */  lh         $t2, 0x4($v0)
    /* FE4A8 800EF4F8 84460000 */  lh         $a2, 0x0($v0)
    /* FE4AC 800EF4FC 84470002 */  lh         $a3, 0x2($v0)
    /* FE4B0 800EF500 00002025 */  or         $a0, $zero, $zero
    /* FE4B4 800EF504 2405016A */  addiu      $a1, $zero, 0x16A
    /* FE4B8 800EF508 E7B00014 */  swc1       $f16, 0x14($sp)
    /* FE4BC 800EF50C 0C04DC6E */  jal        func_801371B8_146168
    /* FE4C0 800EF510 AFAA0010 */   sw        $t2, 0x10($sp)
    /* FE4C4 800EF514 24030005 */  addiu      $v1, $zero, 0x5
    /* FE4C8 800EF518 3C018014 */  lui        $at, %hi(D_8013FCB4)
    /* FE4CC 800EF51C A423FCB4 */  sh         $v1, %lo(D_8013FCB4)($at)
  .L800EF520_FE4D0:
    /* FE4D0 800EF520 3C048015 */  lui        $a0, %hi(D_80157600)
    /* FE4D4 800EF524 0C03AE6F */  jal        func_800EB9BC_FA96C
    /* FE4D8 800EF528 24847600 */   addiu     $a0, $a0, %lo(D_80157600)
    /* FE4DC 800EF52C 4600048D */  trunc.w.s  $f18, $f0
    /* FE4E0 800EF530 3C014380 */  lui        $at, (0x43800000 >> 16)
    /* FE4E4 800EF534 44813000 */  mtc1       $at, $f6
    /* FE4E8 800EF538 440D9000 */  mfc1       $t5, $f18
    /* FE4EC 800EF53C 00000000 */  nop
    /* FE4F0 800EF540 000DC880 */  sll        $t9, $t5, 2
    /* FE4F4 800EF544 03B95821 */  addu       $t3, $sp, $t9
    /* FE4F8 800EF548 C564006C */  lwc1       $f4, 0x6C($t3)
    /* FE4FC 800EF54C 46062202 */  mul.s      $f8, $f4, $f6
    /* FE500 800EF550 4600428D */  trunc.w.s  $f10, $f8
    /* FE504 800EF554 440A5000 */  mfc1       $t2, $f10
    /* FE508 800EF558 00000000 */  nop
    /* FE50C 800EF55C A7AA009E */  sh         $t2, 0x9E($sp)
    /* FE510 800EF560 A7AA009C */  sh         $t2, 0x9C($sp)
    /* FE514 800EF564 A7AA00A0 */  sh         $t2, 0xA0($sp)
  .L800EF568_FE518:
    /* FE518 800EF568 8E070000 */  lw         $a3, 0x0($s0)
    /* FE51C 800EF56C 00002025 */  or         $a0, $zero, $zero
    /* FE520 800EF570 00002825 */  or         $a1, $zero, $zero
    /* FE524 800EF574 24EE0040 */  addiu      $t6, $a3, 0x40
    /* FE528 800EF578 AE0E0000 */  sw         $t6, 0x0($s0)
    /* FE52C 800EF57C 0C000E74 */  jal        func_800039D0_45D0
    /* FE530 800EF580 27A6009C */   addiu     $a2, $sp, 0x9C
    /* FE534 800EF584 3C038014 */  lui        $v1, %hi(D_8013FCB4)
    /* FE538 800EF588 9463FCB4 */  lhu        $v1, %lo(D_8013FCB4)($v1)
    /* FE53C 800EF58C 3C018014 */  lui        $at, %hi(D_8013FCB4)
    /* FE540 800EF590 3C0B8005 */  lui        $t3, %hi(D_80052ACD)
    /* FE544 800EF594 1860000A */  blez       $v1, .L800EF5C0_FE570
    /* FE548 800EF598 00601025 */   or        $v0, $v1, $zero
    /* FE54C 800EF59C 3C0D8005 */  lui        $t5, %hi(gameplayMode)
    /* FE550 800EF5A0 8DAD2ADC */  lw         $t5, %lo(gameplayMode)($t5)
    /* FE554 800EF5A4 A423FCB4 */  sh         $v1, %lo(D_8013FCB4)($at)
    /* FE558 800EF5A8 24010001 */  addiu      $at, $zero, 0x1
    /* FE55C 800EF5AC 15A10004 */  bne        $t5, $at, .L800EF5C0_FE570
    /* FE560 800EF5B0 2463FFFF */   addiu     $v1, $v1, -0x1
    /* FE564 800EF5B4 3062FFFF */  andi       $v0, $v1, 0xFFFF
    /* FE568 800EF5B8 3C018014 */  lui        $at, %hi(D_8013FCB4)
    /* FE56C 800EF5BC A422FCB4 */  sh         $v0, %lo(D_8013FCB4)($at)
  .L800EF5C0_FE570:
    /* FE570 800EF5C0 28410006 */  slti       $at, $v0, 0x6
    /* FE574 800EF5C4 14200003 */  bnez       $at, .L800EF5D4_FE584
    /* FE578 800EF5C8 24030005 */   addiu     $v1, $zero, 0x5
    /* FE57C 800EF5CC 3C018014 */  lui        $at, %hi(D_8013FCB4)
    /* FE580 800EF5D0 A423FCB4 */  sh         $v1, %lo(D_8013FCB4)($at)
  .L800EF5D4_FE584:
    /* FE584 800EF5D4 916B2ACD */  lbu        $t3, %lo(D_80052ACD)($t3)
    /* FE588 800EF5D8 3C190600 */  lui        $t9, (0x6000000 >> 16)
    /* FE58C 800EF5DC 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* FE590 800EF5E0 316C0002 */  andi       $t4, $t3, 0x2
    /* FE594 800EF5E4 1180000D */  beqz       $t4, .L800EF61C_FE5CC
    /* FE598 800EF5E8 3C0B0100 */   lui       $t3, %hi(D_10031E0)
    /* FE59C 800EF5EC 8E220000 */  lw         $v0, 0x0($s1)
    /* FE5A0 800EF5F0 3C0A0504 */  lui        $t2, %hi(D_50408F0)
    /* FE5A4 800EF5F4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* FE5A8 800EF5F8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* FE5AC 800EF5FC 254A08F0 */  addiu      $t2, $t2, %lo(D_50408F0)
    /* FE5B0 800EF600 24580008 */  addiu      $t8, $v0, 0x8
    /* FE5B4 800EF604 AE380000 */  sw         $t8, 0x0($s1)
    /* FE5B8 800EF608 01417024 */  and        $t6, $t2, $at
    /* FE5BC 800EF60C 3C0F0600 */  lui        $t7, (0x6000000 >> 16)
    /* FE5C0 800EF610 AC4F0000 */  sw         $t7, 0x0($v0)
    /* FE5C4 800EF614 10000009 */  b          .L800EF63C_FE5EC
    /* FE5C8 800EF618 AC4E0004 */   sw        $t6, 0x4($v0)
  .L800EF61C_FE5CC:
    /* FE5CC 800EF61C 8E220000 */  lw         $v0, 0x0($s1)
    /* FE5D0 800EF620 256B31E0 */  addiu      $t3, $t3, %lo(D_10031E0)
    /* FE5D4 800EF624 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* FE5D8 800EF628 244D0008 */  addiu      $t5, $v0, 0x8
    /* FE5DC 800EF62C AE2D0000 */  sw         $t5, 0x0($s1)
    /* FE5E0 800EF630 01616024 */  and        $t4, $t3, $at
    /* FE5E4 800EF634 AC4C0004 */  sw         $t4, 0x4($v0)
    /* FE5E8 800EF638 AC590000 */  sw         $t9, 0x0($v0)
  .L800EF63C_FE5EC:
    /* FE5EC 800EF63C 8FBF002C */  lw         $ra, 0x2C($sp)
    /* FE5F0 800EF640 8FB00024 */  lw         $s0, 0x24($sp)
    /* FE5F4 800EF644 8FB10028 */  lw         $s1, 0x28($sp)
    /* FE5F8 800EF648 03E00008 */  jr         $ra
    /* FE5FC 800EF64C 27BD00B8 */   addiu     $sp, $sp, 0xB8
endlabel func_800EF14C_FE0FC
