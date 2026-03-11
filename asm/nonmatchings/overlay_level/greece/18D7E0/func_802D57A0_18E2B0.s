nonmatching func_802D57A0_18E2B0, 0xD30

glabel func_802D57A0_18E2B0
    /* 18E2B0 802D57A0 3C088015 */  lui        $t0, %hi(D_80157F8C)
    /* 18E2B4 802D57A4 3C018015 */  lui        $at, %hi(D_80157F96)
    /* 18E2B8 802D57A8 25087F8C */  addiu      $t0, $t0, %lo(D_80157F8C)
    /* 18E2BC 802D57AC A4207F96 */  sh         $zero, %lo(D_80157F96)($at)
    /* 18E2C0 802D57B0 85030000 */  lh         $v1, 0x0($t0)
    /* 18E2C4 802D57B4 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 18E2C8 802D57B8 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 18E2CC 802D57BC AFB10028 */  sw         $s1, 0x28($sp)
    /* 18E2D0 802D57C0 1060000B */  beqz       $v1, .L802D57F0_18E300
    /* 18E2D4 802D57C4 AFB00024 */   sw        $s0, 0x24($sp)
    /* 18E2D8 802D57C8 24010001 */  addiu      $at, $zero, 0x1
    /* 18E2DC 802D57CC 1061003A */  beq        $v1, $at, .L802D58B8_18E3C8
    /* 18E2E0 802D57D0 24010002 */   addiu     $at, $zero, 0x2
    /* 18E2E4 802D57D4 106100DC */  beq        $v1, $at, .L802D5B48_18E658
    /* 18E2E8 802D57D8 3C078015 */   lui       $a3, %hi(D_80157F8E)
    /* 18E2EC 802D57DC 24010003 */  addiu      $at, $zero, 0x3
    /* 18E2F0 802D57E0 1061031A */  beq        $v1, $at, .L802D644C_18EF5C
    /* 18E2F4 802D57E4 3C108016 */   lui       $s0, %hi(D_80159DDF)
    /* 18E2F8 802D57E8 10000334 */  b          .L802D64BC_18EFCC
    /* 18E2FC 802D57EC 00001025 */   or        $v0, $zero, $zero
  .L802D57F0_18E300:
    /* 18E300 802D57F0 24040046 */  addiu      $a0, $zero, 0x46
    /* 18E304 802D57F4 0C047498 */  jal        func_8011D260_12C210
    /* 18E308 802D57F8 2405FFDB */   addiu     $a1, $zero, -0x25
    /* 18E30C 802D57FC 3C108016 */  lui        $s0, %hi(D_80159DDF)
    /* 18E310 802D5800 26109DDF */  addiu      $s0, $s0, %lo(D_80159DDF)
    /* 18E314 802D5804 3C04802E */  lui        $a0, %hi(D_802DE2F0)
    /* 18E318 802D5808 A2020000 */  sb         $v0, 0x0($s0)
    /* 18E31C 802D580C 2484E2F0 */  addiu      $a0, $a0, %lo(D_802DE2F0)
    /* 18E320 802D5810 0C00731B */  jal        osSyncPrintf
    /* 18E324 802D5814 304500FF */   andi      $a1, $v0, 0xFF
    /* 18E328 802D5818 3C0143C8 */  lui        $at, (0x43C80000 >> 16)
    /* 18E32C 802D581C 44810000 */  mtc1       $at, $f0
    /* 18E330 802D5820 3C01C000 */  lui        $at, (0xC0000000 >> 16)
    /* 18E334 802D5824 44811000 */  mtc1       $at, $f2
    /* 18E338 802D5828 3C038016 */  lui        $v1, %hi(D_80159DE2)
    /* 18E33C 802D582C 3C018016 */  lui        $at, %hi(D_80159DE0)
    /* 18E340 802D5830 24639DE2 */  addiu      $v1, $v1, %lo(D_80159DE2)
    /* 18E344 802D5834 A4209DE0 */  sh         $zero, %lo(D_80159DE0)($at)
    /* 18E348 802D5838 A4600000 */  sh         $zero, 0x0($v1)
    /* 18E34C 802D583C 3C018016 */  lui        $at, %hi(D_80159DE4)
    /* 18E350 802D5840 3C0E8015 */  lui        $t6, %hi(D_80157F8C)
    /* 18E354 802D5844 85CE7F8C */  lh         $t6, %lo(D_80157F8C)($t6)
    /* 18E358 802D5848 A4209DE4 */  sh         $zero, %lo(D_80159DE4)($at)
    /* 18E35C 802D584C 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* 18E360 802D5850 A4207F8E */  sh         $zero, %lo(D_80157F8E)($at)
    /* 18E364 802D5854 3C018015 */  lui        $at, %hi(D_80157F8C)
    /* 18E368 802D5858 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 18E36C 802D585C A42F7F8C */  sh         $t7, %lo(D_80157F8C)($at)
    /* 18E370 802D5860 3C018015 */  lui        $at, %hi(D_80157F84)
    /* 18E374 802D5864 E4207F84 */  swc1       $f0, %lo(D_80157F84)($at)
    /* 18E378 802D5868 3C018015 */  lui        $at, %hi(D_80157F88)
    /* 18E37C 802D586C E4227F88 */  swc1       $f2, %lo(D_80157F88)($at)
    /* 18E380 802D5870 3C018015 */  lui        $at, %hi(D_80157F78)
    /* 18E384 802D5874 E4207F78 */  swc1       $f0, %lo(D_80157F78)($at)
    /* 18E388 802D5878 3C018015 */  lui        $at, %hi(D_80157F7C)
    /* 18E38C 802D587C E4227F7C */  swc1       $f2, %lo(D_80157F7C)($at)
    /* 18E390 802D5880 3C014396 */  lui        $at, (0x43960000 >> 16)
    /* 18E394 802D5884 44812000 */  mtc1       $at, $f4
    /* 18E398 802D5888 3C018015 */  lui        $at, %hi(D_80157F80)
    /* 18E39C 802D588C 24184600 */  addiu      $t8, $zero, 0x4600
    /* 18E3A0 802D5890 E4247F80 */  swc1       $f4, %lo(D_80157F80)($at)
    /* 18E3A4 802D5894 3C01802E */  lui        $at, %hi(D_802DE468)
    /* 18E3A8 802D5898 A438E468 */  sh         $t8, %lo(D_802DE468)($at)
    /* 18E3AC 802D589C 3C01802E */  lui        $at, %hi(D_802DE46A)
    /* 18E3B0 802D58A0 2419DB00 */  addiu      $t9, $zero, -0x2500
    /* 18E3B4 802D58A4 A439E46A */  sh         $t9, %lo(D_802DE46A)($at)
    /* 18E3B8 802D58A8 0C004D1A */  jal        func_80013468_14068
    /* 18E3BC 802D58AC 24040004 */   addiu     $a0, $zero, 0x4
    /* 18E3C0 802D58B0 10000302 */  b          .L802D64BC_18EFCC
    /* 18E3C4 802D58B4 00001025 */   or        $v0, $zero, $zero
  .L802D58B8_18E3C8:
    /* 18E3C8 802D58B8 0C000E38 */  jal        func_800038E0_44E0
    /* 18E3CC 802D58BC 00000000 */   nop
    /* 18E3D0 802D58C0 0C000E38 */  jal        func_800038E0_44E0
    /* 18E3D4 802D58C4 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* 18E3D8 802D58C8 0C000E38 */  jal        func_800038E0_44E0
    /* 18E3DC 802D58CC 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* 18E3E0 802D58D0 240304B0 */  addiu      $v1, $zero, 0x4B0
    /* 18E3E4 802D58D4 0223001A */  div        $zero, $s1, $v1
    /* 18E3E8 802D58D8 00004810 */  mfhi       $t1
    /* 18E3EC 802D58DC 3C0A802E */  lui        $t2, %hi(D_802DE468)
    /* 18E3F0 802D58E0 14600002 */  bnez       $v1, .L802D58EC_18E3FC
    /* 18E3F4 802D58E4 00000000 */   nop
    /* 18E3F8 802D58E8 0007000D */  break      7
  .L802D58EC_18E3FC:
    /* 18E3FC 802D58EC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18E400 802D58F0 14610004 */  bne        $v1, $at, .L802D5904_18E414
    /* 18E404 802D58F4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18E408 802D58F8 16210002 */  bne        $s1, $at, .L802D5904_18E414
    /* 18E40C 802D58FC 00000000 */   nop
    /* 18E410 802D5900 0006000D */  break      6
  .L802D5904_18E414:
    /* 18E414 802D5904 0203001A */  div        $zero, $s0, $v1
    /* 18E418 802D5908 00006810 */  mfhi       $t5
    /* 18E41C 802D590C 854AE468 */  lh         $t2, %lo(D_802DE468)($t2)
    /* 18E420 802D5910 3C0E802E */  lui        $t6, %hi(D_802DE46A)
    /* 18E424 802D5914 85CEE46A */  lh         $t6, %lo(D_802DE46A)($t6)
    /* 18E428 802D5918 012A2021 */  addu       $a0, $t1, $t2
    /* 18E42C 802D591C 2484FCE0 */  addiu      $a0, $a0, -0x320
    /* 18E430 802D5920 00045C00 */  sll        $t3, $a0, 16
    /* 18E434 802D5924 01AE2821 */  addu       $a1, $t5, $t6
    /* 18E438 802D5928 24A5FCE0 */  addiu      $a1, $a1, -0x320
    /* 18E43C 802D592C 000B6403 */  sra        $t4, $t3, 16
    /* 18E440 802D5930 240B0096 */  addiu      $t3, $zero, 0x96
    /* 18E444 802D5934 00057C00 */  sll        $t7, $a1, 16
    /* 18E448 802D5938 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 18E44C 802D593C 240900FF */  addiu      $t1, $zero, 0xFF
    /* 18E450 802D5940 AFA90010 */  sw         $t1, 0x10($sp)
    /* 18E454 802D5944 AFAA0014 */  sw         $t2, 0x14($sp)
    /* 18E458 802D5948 000F2C03 */  sra        $a1, $t7, 16
    /* 18E45C 802D594C AFAB0018 */  sw         $t3, 0x18($sp)
    /* 18E460 802D5950 01802025 */  or         $a0, $t4, $zero
    /* 18E464 802D5954 14600002 */  bnez       $v1, .L802D5960_18E470
    /* 18E468 802D5958 00000000 */   nop
    /* 18E46C 802D595C 0007000D */  break      7
  .L802D5960_18E470:
    /* 18E470 802D5960 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18E474 802D5964 14610004 */  bne        $v1, $at, .L802D5978_18E488
    /* 18E478 802D5968 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18E47C 802D596C 16010002 */  bne        $s0, $at, .L802D5978_18E488
    /* 18E480 802D5970 00000000 */   nop
    /* 18E484 802D5974 0006000D */  break      6
  .L802D5978_18E488:
    /* 18E488 802D5978 24010014 */  addiu      $at, $zero, 0x14
    /* 18E48C 802D597C 0041001A */  div        $zero, $v0, $at
    /* 18E490 802D5980 00003010 */  mfhi       $a2
    /* 18E494 802D5984 24C6000A */  addiu      $a2, $a2, 0xA
    /* 18E498 802D5988 30D9FFFF */  andi       $t9, $a2, 0xFFFF
    /* 18E49C 802D598C 03203025 */  or         $a2, $t9, $zero
    /* 18E4A0 802D5990 0C03254C */  jal        func_800C9530_D84E0
    /* 18E4A4 802D5994 240700E1 */   addiu     $a3, $zero, 0xE1
    /* 18E4A8 802D5998 0C000E38 */  jal        func_800038E0_44E0
    /* 18E4AC 802D599C 00000000 */   nop
    /* 18E4B0 802D59A0 0C000E38 */  jal        func_800038E0_44E0
    /* 18E4B4 802D59A4 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* 18E4B8 802D59A8 0C000E38 */  jal        func_800038E0_44E0
    /* 18E4BC 802D59AC 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* 18E4C0 802D59B0 240304B0 */  addiu      $v1, $zero, 0x4B0
    /* 18E4C4 802D59B4 0223001A */  div        $zero, $s1, $v1
    /* 18E4C8 802D59B8 00006010 */  mfhi       $t4
    /* 18E4CC 802D59BC 3C0D802E */  lui        $t5, %hi(D_802DE468)
    /* 18E4D0 802D59C0 14600002 */  bnez       $v1, .L802D59CC_18E4DC
    /* 18E4D4 802D59C4 00000000 */   nop
    /* 18E4D8 802D59C8 0007000D */  break      7
  .L802D59CC_18E4DC:
    /* 18E4DC 802D59CC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18E4E0 802D59D0 14610004 */  bne        $v1, $at, .L802D59E4_18E4F4
    /* 18E4E4 802D59D4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18E4E8 802D59D8 16210002 */  bne        $s1, $at, .L802D59E4_18E4F4
    /* 18E4EC 802D59DC 00000000 */   nop
    /* 18E4F0 802D59E0 0006000D */  break      6
  .L802D59E4_18E4F4:
    /* 18E4F4 802D59E4 0203001A */  div        $zero, $s0, $v1
    /* 18E4F8 802D59E8 0000C010 */  mfhi       $t8
    /* 18E4FC 802D59EC 85ADE468 */  lh         $t5, %lo(D_802DE468)($t5)
    /* 18E500 802D59F0 3C19802E */  lui        $t9, %hi(D_802DE46A)
    /* 18E504 802D59F4 8739E46A */  lh         $t9, %lo(D_802DE46A)($t9)
    /* 18E508 802D59F8 018D2021 */  addu       $a0, $t4, $t5
    /* 18E50C 802D59FC 2484FCE0 */  addiu      $a0, $a0, -0x320
    /* 18E510 802D5A00 00047400 */  sll        $t6, $a0, 16
    /* 18E514 802D5A04 03192821 */  addu       $a1, $t8, $t9
    /* 18E518 802D5A08 24A5FCE0 */  addiu      $a1, $a1, -0x320
    /* 18E51C 802D5A0C 000E7C03 */  sra        $t7, $t6, 16
    /* 18E520 802D5A10 240E0096 */  addiu      $t6, $zero, 0x96
    /* 18E524 802D5A14 00054C00 */  sll        $t1, $a1, 16
    /* 18E528 802D5A18 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 18E52C 802D5A1C 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 18E530 802D5A20 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 18E534 802D5A24 AFAD0014 */  sw         $t5, 0x14($sp)
    /* 18E538 802D5A28 00092C03 */  sra        $a1, $t1, 16
    /* 18E53C 802D5A2C AFAE0018 */  sw         $t6, 0x18($sp)
    /* 18E540 802D5A30 01E02025 */  or         $a0, $t7, $zero
    /* 18E544 802D5A34 14600002 */  bnez       $v1, .L802D5A40_18E550
    /* 18E548 802D5A38 00000000 */   nop
    /* 18E54C 802D5A3C 0007000D */  break      7
  .L802D5A40_18E550:
    /* 18E550 802D5A40 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18E554 802D5A44 14610004 */  bne        $v1, $at, .L802D5A58_18E568
    /* 18E558 802D5A48 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18E55C 802D5A4C 16010002 */  bne        $s0, $at, .L802D5A58_18E568
    /* 18E560 802D5A50 00000000 */   nop
    /* 18E564 802D5A54 0006000D */  break      6
  .L802D5A58_18E568:
    /* 18E568 802D5A58 24010014 */  addiu      $at, $zero, 0x14
    /* 18E56C 802D5A5C 0041001A */  div        $zero, $v0, $at
    /* 18E570 802D5A60 00003010 */  mfhi       $a2
    /* 18E574 802D5A64 24C6000A */  addiu      $a2, $a2, 0xA
    /* 18E578 802D5A68 30CBFFFF */  andi       $t3, $a2, 0xFFFF
    /* 18E57C 802D5A6C 01603025 */  or         $a2, $t3, $zero
    /* 18E580 802D5A70 0C03254C */  jal        func_800C9530_D84E0
    /* 18E584 802D5A74 240700E1 */   addiu     $a3, $zero, 0xE1
    /* 18E588 802D5A78 0C000E38 */  jal        func_800038E0_44E0
    /* 18E58C 802D5A7C 00000000 */   nop
    /* 18E590 802D5A80 0C000E38 */  jal        func_800038E0_44E0
    /* 18E594 802D5A84 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* 18E598 802D5A88 0C000E38 */  jal        func_800038E0_44E0
    /* 18E59C 802D5A8C 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* 18E5A0 802D5A90 240104B0 */  addiu      $at, $zero, 0x4B0
    /* 18E5A4 802D5A94 0221001A */  div        $zero, $s1, $at
    /* 18E5A8 802D5A98 00007810 */  mfhi       $t7
    /* 18E5AC 802D5A9C 3C18802E */  lui        $t8, %hi(D_802DE468)
    /* 18E5B0 802D5AA0 8718E468 */  lh         $t8, %lo(D_802DE468)($t8)
    /* 18E5B4 802D5AA4 0201001A */  div        $zero, $s0, $at
    /* 18E5B8 802D5AA8 00005010 */  mfhi       $t2
    /* 18E5BC 802D5AAC 24010014 */  addiu      $at, $zero, 0x14
    /* 18E5C0 802D5AB0 3C0B802E */  lui        $t3, %hi(D_802DE46A)
    /* 18E5C4 802D5AB4 0041001A */  div        $zero, $v0, $at
    /* 18E5C8 802D5AB8 856BE46A */  lh         $t3, %lo(D_802DE46A)($t3)
    /* 18E5CC 802D5ABC 01F82021 */  addu       $a0, $t7, $t8
    /* 18E5D0 802D5AC0 2484FCE0 */  addiu      $a0, $a0, -0x320
    /* 18E5D4 802D5AC4 0004CC00 */  sll        $t9, $a0, 16
    /* 18E5D8 802D5AC8 00003010 */  mfhi       $a2
    /* 18E5DC 802D5ACC 014B2821 */  addu       $a1, $t2, $t3
    /* 18E5E0 802D5AD0 24A5FCE0 */  addiu      $a1, $a1, -0x320
    /* 18E5E4 802D5AD4 24C6000A */  addiu      $a2, $a2, 0xA
    /* 18E5E8 802D5AD8 00192403 */  sra        $a0, $t9, 16
    /* 18E5EC 802D5ADC 24190096 */  addiu      $t9, $zero, 0x96
    /* 18E5F0 802D5AE0 30CEFFFF */  andi       $t6, $a2, 0xFFFF
    /* 18E5F4 802D5AE4 00056400 */  sll        $t4, $a1, 16
    /* 18E5F8 802D5AE8 241800FF */  addiu      $t8, $zero, 0xFF
    /* 18E5FC 802D5AEC 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 18E600 802D5AF0 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 18E604 802D5AF4 AFB80014 */  sw         $t8, 0x14($sp)
    /* 18E608 802D5AF8 000C2C03 */  sra        $a1, $t4, 16
    /* 18E60C 802D5AFC 01C03025 */  or         $a2, $t6, $zero
    /* 18E610 802D5B00 AFB90018 */  sw         $t9, 0x18($sp)
    /* 18E614 802D5B04 0C03254C */  jal        func_800C9530_D84E0
    /* 18E618 802D5B08 240700E1 */   addiu     $a3, $zero, 0xE1
    /* 18E61C 802D5B0C 3C028015 */  lui        $v0, %hi(D_80157F8E)
    /* 18E620 802D5B10 84427F8E */  lh         $v0, %lo(D_80157F8E)($v0)
    /* 18E624 802D5B14 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* 18E628 802D5B18 3C0A8015 */  lui        $t2, %hi(D_80157F8C)
    /* 18E62C 802D5B1C 2843001F */  slti       $v1, $v0, 0x1F
    /* 18E630 802D5B20 24490001 */  addiu      $t1, $v0, 0x1
    /* 18E634 802D5B24 14600264 */  bnez       $v1, .L802D64B8_18EFC8
    /* 18E638 802D5B28 A4297F8E */   sh        $t1, %lo(D_80157F8E)($at)
    /* 18E63C 802D5B2C 854A7F8C */  lh         $t2, %lo(D_80157F8C)($t2)
    /* 18E640 802D5B30 3C018015 */  lui        $at, %hi(D_80157F8E)
    /* 18E644 802D5B34 A4207F8E */  sh         $zero, %lo(D_80157F8E)($at)
    /* 18E648 802D5B38 3C018015 */  lui        $at, %hi(D_80157F8C)
    /* 18E64C 802D5B3C 254B0001 */  addiu      $t3, $t2, 0x1
    /* 18E650 802D5B40 1000025D */  b          .L802D64B8_18EFC8
    /* 18E654 802D5B44 A42B7F8C */   sh        $t3, %lo(D_80157F8C)($at)
  .L802D5B48_18E658:
    /* 18E658 802D5B48 3C038016 */  lui        $v1, %hi(D_80159DE2)
    /* 18E65C 802D5B4C 24639DE2 */  addiu      $v1, $v1, %lo(D_80159DE2)
    /* 18E660 802D5B50 24E77F8E */  addiu      $a3, $a3, %lo(D_80157F8E)
    /* 18E664 802D5B54 946C0000 */  lhu        $t4, 0x0($v1)
    /* 18E668 802D5B58 84E20000 */  lh         $v0, 0x0($a3)
    /* 18E66C 802D5B5C 258D0001 */  addiu      $t5, $t4, 0x1
    /* 18E670 802D5B60 2841004B */  slti       $at, $v0, 0x4B
    /* 18E674 802D5B64 1020009D */  beqz       $at, .L802D5DDC_18E8EC
    /* 18E678 802D5B68 A46D0000 */   sh        $t5, 0x0($v1)
    /* 18E67C 802D5B6C 0C000E38 */  jal        func_800038E0_44E0
    /* 18E680 802D5B70 00000000 */   nop
    /* 18E684 802D5B74 0C000E38 */  jal        func_800038E0_44E0
    /* 18E688 802D5B78 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* 18E68C 802D5B7C 0C000E38 */  jal        func_800038E0_44E0
    /* 18E690 802D5B80 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* 18E694 802D5B84 24030640 */  addiu      $v1, $zero, 0x640
    /* 18E698 802D5B88 0223001A */  div        $zero, $s1, $v1
    /* 18E69C 802D5B8C 00007010 */  mfhi       $t6
    /* 18E6A0 802D5B90 3C0F802E */  lui        $t7, %hi(D_802DE468)
    /* 18E6A4 802D5B94 14600002 */  bnez       $v1, .L802D5BA0_18E6B0
    /* 18E6A8 802D5B98 00000000 */   nop
    /* 18E6AC 802D5B9C 0007000D */  break      7
  .L802D5BA0_18E6B0:
    /* 18E6B0 802D5BA0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18E6B4 802D5BA4 14610004 */  bne        $v1, $at, .L802D5BB8_18E6C8
    /* 18E6B8 802D5BA8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18E6BC 802D5BAC 16210002 */  bne        $s1, $at, .L802D5BB8_18E6C8
    /* 18E6C0 802D5BB0 00000000 */   nop
    /* 18E6C4 802D5BB4 0006000D */  break      6
  .L802D5BB8_18E6C8:
    /* 18E6C8 802D5BB8 0203001A */  div        $zero, $s0, $v1
    /* 18E6CC 802D5BBC 00004810 */  mfhi       $t1
    /* 18E6D0 802D5BC0 85EFE468 */  lh         $t7, %lo(D_802DE468)($t7)
    /* 18E6D4 802D5BC4 3C0A802E */  lui        $t2, %hi(D_802DE46A)
    /* 18E6D8 802D5BC8 854AE46A */  lh         $t2, %lo(D_802DE46A)($t2)
    /* 18E6DC 802D5BCC 01CF2021 */  addu       $a0, $t6, $t7
    /* 18E6E0 802D5BD0 2484FC18 */  addiu      $a0, $a0, -0x3E8
    /* 18E6E4 802D5BD4 0004C400 */  sll        $t8, $a0, 16
    /* 18E6E8 802D5BD8 012A2821 */  addu       $a1, $t1, $t2
    /* 18E6EC 802D5BDC 24A5FC18 */  addiu      $a1, $a1, -0x3E8
    /* 18E6F0 802D5BE0 0018CC03 */  sra        $t9, $t8, 16
    /* 18E6F4 802D5BE4 24180096 */  addiu      $t8, $zero, 0x96
    /* 18E6F8 802D5BE8 00055C00 */  sll        $t3, $a1, 16
    /* 18E6FC 802D5BEC 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 18E700 802D5BF0 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 18E704 802D5BF4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 18E708 802D5BF8 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 18E70C 802D5BFC 000B2C03 */  sra        $a1, $t3, 16
    /* 18E710 802D5C00 AFB80018 */  sw         $t8, 0x18($sp)
    /* 18E714 802D5C04 03202025 */  or         $a0, $t9, $zero
    /* 18E718 802D5C08 14600002 */  bnez       $v1, .L802D5C14_18E724
    /* 18E71C 802D5C0C 00000000 */   nop
    /* 18E720 802D5C10 0007000D */  break      7
  .L802D5C14_18E724:
    /* 18E724 802D5C14 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18E728 802D5C18 14610004 */  bne        $v1, $at, .L802D5C2C_18E73C
    /* 18E72C 802D5C1C 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18E730 802D5C20 16010002 */  bne        $s0, $at, .L802D5C2C_18E73C
    /* 18E734 802D5C24 00000000 */   nop
    /* 18E738 802D5C28 0006000D */  break      6
  .L802D5C2C_18E73C:
    /* 18E73C 802D5C2C 2401001E */  addiu      $at, $zero, 0x1E
    /* 18E740 802D5C30 0041001A */  div        $zero, $v0, $at
    /* 18E744 802D5C34 00003010 */  mfhi       $a2
    /* 18E748 802D5C38 24C60014 */  addiu      $a2, $a2, 0x14
    /* 18E74C 802D5C3C 30CDFFFF */  andi       $t5, $a2, 0xFFFF
    /* 18E750 802D5C40 01A03025 */  or         $a2, $t5, $zero
    /* 18E754 802D5C44 0C03254C */  jal        func_800C9530_D84E0
    /* 18E758 802D5C48 240700E1 */   addiu     $a3, $zero, 0xE1
    /* 18E75C 802D5C4C 0C000E38 */  jal        func_800038E0_44E0
    /* 18E760 802D5C50 00000000 */   nop
    /* 18E764 802D5C54 0C000E38 */  jal        func_800038E0_44E0
    /* 18E768 802D5C58 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* 18E76C 802D5C5C 0C000E38 */  jal        func_800038E0_44E0
    /* 18E770 802D5C60 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* 18E774 802D5C64 24030640 */  addiu      $v1, $zero, 0x640
    /* 18E778 802D5C68 0223001A */  div        $zero, $s1, $v1
    /* 18E77C 802D5C6C 0000C810 */  mfhi       $t9
    /* 18E780 802D5C70 3C09802E */  lui        $t1, %hi(D_802DE468)
    /* 18E784 802D5C74 14600002 */  bnez       $v1, .L802D5C80_18E790
    /* 18E788 802D5C78 00000000 */   nop
    /* 18E78C 802D5C7C 0007000D */  break      7
  .L802D5C80_18E790:
    /* 18E790 802D5C80 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18E794 802D5C84 14610004 */  bne        $v1, $at, .L802D5C98_18E7A8
    /* 18E798 802D5C88 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18E79C 802D5C8C 16210002 */  bne        $s1, $at, .L802D5C98_18E7A8
    /* 18E7A0 802D5C90 00000000 */   nop
    /* 18E7A4 802D5C94 0006000D */  break      6
  .L802D5C98_18E7A8:
    /* 18E7A8 802D5C98 0203001A */  div        $zero, $s0, $v1
    /* 18E7AC 802D5C9C 00006010 */  mfhi       $t4
    /* 18E7B0 802D5CA0 8529E468 */  lh         $t1, %lo(D_802DE468)($t1)
    /* 18E7B4 802D5CA4 3C0D802E */  lui        $t5, %hi(D_802DE46A)
    /* 18E7B8 802D5CA8 85ADE46A */  lh         $t5, %lo(D_802DE46A)($t5)
    /* 18E7BC 802D5CAC 03292021 */  addu       $a0, $t9, $t1
    /* 18E7C0 802D5CB0 2484FC18 */  addiu      $a0, $a0, -0x3E8
    /* 18E7C4 802D5CB4 00045400 */  sll        $t2, $a0, 16
    /* 18E7C8 802D5CB8 018D2821 */  addu       $a1, $t4, $t5
    /* 18E7CC 802D5CBC 24A5FC18 */  addiu      $a1, $a1, -0x3E8
    /* 18E7D0 802D5CC0 000A5C03 */  sra        $t3, $t2, 16
    /* 18E7D4 802D5CC4 240A0096 */  addiu      $t2, $zero, 0x96
    /* 18E7D8 802D5CC8 00057400 */  sll        $t6, $a1, 16
    /* 18E7DC 802D5CCC 240900FF */  addiu      $t1, $zero, 0xFF
    /* 18E7E0 802D5CD0 241900FF */  addiu      $t9, $zero, 0xFF
    /* 18E7E4 802D5CD4 AFB90010 */  sw         $t9, 0x10($sp)
    /* 18E7E8 802D5CD8 AFA90014 */  sw         $t1, 0x14($sp)
    /* 18E7EC 802D5CDC 000E2C03 */  sra        $a1, $t6, 16
    /* 18E7F0 802D5CE0 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 18E7F4 802D5CE4 01602025 */  or         $a0, $t3, $zero
    /* 18E7F8 802D5CE8 14600002 */  bnez       $v1, .L802D5CF4_18E804
    /* 18E7FC 802D5CEC 00000000 */   nop
    /* 18E800 802D5CF0 0007000D */  break      7
  .L802D5CF4_18E804:
    /* 18E804 802D5CF4 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18E808 802D5CF8 14610004 */  bne        $v1, $at, .L802D5D0C_18E81C
    /* 18E80C 802D5CFC 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18E810 802D5D00 16010002 */  bne        $s0, $at, .L802D5D0C_18E81C
    /* 18E814 802D5D04 00000000 */   nop
    /* 18E818 802D5D08 0006000D */  break      6
  .L802D5D0C_18E81C:
    /* 18E81C 802D5D0C 2401001E */  addiu      $at, $zero, 0x1E
    /* 18E820 802D5D10 0041001A */  div        $zero, $v0, $at
    /* 18E824 802D5D14 00003010 */  mfhi       $a2
    /* 18E828 802D5D18 24C60014 */  addiu      $a2, $a2, 0x14
    /* 18E82C 802D5D1C 30D8FFFF */  andi       $t8, $a2, 0xFFFF
    /* 18E830 802D5D20 03003025 */  or         $a2, $t8, $zero
    /* 18E834 802D5D24 0C03254C */  jal        func_800C9530_D84E0
    /* 18E838 802D5D28 240700E1 */   addiu     $a3, $zero, 0xE1
    /* 18E83C 802D5D2C 0C000E38 */  jal        func_800038E0_44E0
    /* 18E840 802D5D30 00000000 */   nop
    /* 18E844 802D5D34 0C000E38 */  jal        func_800038E0_44E0
    /* 18E848 802D5D38 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* 18E84C 802D5D3C 0C000E38 */  jal        func_800038E0_44E0
    /* 18E850 802D5D40 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* 18E854 802D5D44 24010640 */  addiu      $at, $zero, 0x640
    /* 18E858 802D5D48 0221001A */  div        $zero, $s1, $at
    /* 18E85C 802D5D4C 00005810 */  mfhi       $t3
    /* 18E860 802D5D50 3C0C802E */  lui        $t4, %hi(D_802DE468)
    /* 18E864 802D5D54 858CE468 */  lh         $t4, %lo(D_802DE468)($t4)
    /* 18E868 802D5D58 0201001A */  div        $zero, $s0, $at
    /* 18E86C 802D5D5C 00007810 */  mfhi       $t7
    /* 18E870 802D5D60 2401001E */  addiu      $at, $zero, 0x1E
    /* 18E874 802D5D64 3C18802E */  lui        $t8, %hi(D_802DE46A)
    /* 18E878 802D5D68 0041001A */  div        $zero, $v0, $at
    /* 18E87C 802D5D6C 8718E46A */  lh         $t8, %lo(D_802DE46A)($t8)
    /* 18E880 802D5D70 016C2021 */  addu       $a0, $t3, $t4
    /* 18E884 802D5D74 2484FC18 */  addiu      $a0, $a0, -0x3E8
    /* 18E888 802D5D78 00046C00 */  sll        $t5, $a0, 16
    /* 18E88C 802D5D7C 00003010 */  mfhi       $a2
    /* 18E890 802D5D80 01F82821 */  addu       $a1, $t7, $t8
    /* 18E894 802D5D84 24A5FC18 */  addiu      $a1, $a1, -0x3E8
    /* 18E898 802D5D88 24C60014 */  addiu      $a2, $a2, 0x14
    /* 18E89C 802D5D8C 000D2403 */  sra        $a0, $t5, 16
    /* 18E8A0 802D5D90 240D0096 */  addiu      $t5, $zero, 0x96
    /* 18E8A4 802D5D94 30CAFFFF */  andi       $t2, $a2, 0xFFFF
    /* 18E8A8 802D5D98 0005CC00 */  sll        $t9, $a1, 16
    /* 18E8AC 802D5D9C 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 18E8B0 802D5DA0 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 18E8B4 802D5DA4 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 18E8B8 802D5DA8 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 18E8BC 802D5DAC 00192C03 */  sra        $a1, $t9, 16
    /* 18E8C0 802D5DB0 01403025 */  or         $a2, $t2, $zero
    /* 18E8C4 802D5DB4 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 18E8C8 802D5DB8 0C03254C */  jal        func_800C9530_D84E0
    /* 18E8CC 802D5DBC 240700E1 */   addiu     $a3, $zero, 0xE1
    /* 18E8D0 802D5DC0 3C028015 */  lui        $v0, %hi(D_80157F8E)
    /* 18E8D4 802D5DC4 3C088015 */  lui        $t0, %hi(D_80157F8C)
    /* 18E8D8 802D5DC8 3C078015 */  lui        $a3, %hi(D_80157F8E)
    /* 18E8DC 802D5DCC 24E77F8E */  addiu      $a3, $a3, %lo(D_80157F8E)
    /* 18E8E0 802D5DD0 25087F8C */  addiu      $t0, $t0, %lo(D_80157F8C)
    /* 18E8E4 802D5DD4 10000134 */  b          .L802D62A8_18EDB8
    /* 18E8E8 802D5DD8 84427F8E */   lh        $v0, %lo(D_80157F8E)($v0)
  .L802D5DDC_18E8EC:
    /* 18E8EC 802D5DDC 28410055 */  slti       $at, $v0, 0x55
    /* 18E8F0 802D5DE0 50200132 */  beql       $at, $zero, .L802D62AC_18EDBC
    /* 18E8F4 802D5DE4 24010046 */   addiu     $at, $zero, 0x46
    /* 18E8F8 802D5DE8 0C000E38 */  jal        func_800038E0_44E0
    /* 18E8FC 802D5DEC 00000000 */   nop
    /* 18E900 802D5DF0 0C000E38 */  jal        func_800038E0_44E0
    /* 18E904 802D5DF4 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* 18E908 802D5DF8 0C000E38 */  jal        func_800038E0_44E0
    /* 18E90C 802D5DFC 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* 18E910 802D5E00 240303E8 */  addiu      $v1, $zero, 0x3E8
    /* 18E914 802D5E04 0223001A */  div        $zero, $s1, $v1
    /* 18E918 802D5E08 00007010 */  mfhi       $t6
    /* 18E91C 802D5E0C 3C0F802E */  lui        $t7, %hi(D_802DE468)
    /* 18E920 802D5E10 14600002 */  bnez       $v1, .L802D5E1C_18E92C
    /* 18E924 802D5E14 00000000 */   nop
    /* 18E928 802D5E18 0007000D */  break      7
  .L802D5E1C_18E92C:
    /* 18E92C 802D5E1C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18E930 802D5E20 14610004 */  bne        $v1, $at, .L802D5E34_18E944
    /* 18E934 802D5E24 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18E938 802D5E28 16210002 */  bne        $s1, $at, .L802D5E34_18E944
    /* 18E93C 802D5E2C 00000000 */   nop
    /* 18E940 802D5E30 0006000D */  break      6
  .L802D5E34_18E944:
    /* 18E944 802D5E34 0203001A */  div        $zero, $s0, $v1
    /* 18E948 802D5E38 00004810 */  mfhi       $t1
    /* 18E94C 802D5E3C 85EFE468 */  lh         $t7, %lo(D_802DE468)($t7)
    /* 18E950 802D5E40 3C0A802E */  lui        $t2, %hi(D_802DE46A)
    /* 18E954 802D5E44 854AE46A */  lh         $t2, %lo(D_802DE46A)($t2)
    /* 18E958 802D5E48 01CF2021 */  addu       $a0, $t6, $t7
    /* 18E95C 802D5E4C 2484FD0D */  addiu      $a0, $a0, -0x2F3
    /* 18E960 802D5E50 0004C400 */  sll        $t8, $a0, 16
    /* 18E964 802D5E54 012A2821 */  addu       $a1, $t1, $t2
    /* 18E968 802D5E58 24A5FD0D */  addiu      $a1, $a1, -0x2F3
    /* 18E96C 802D5E5C 0018CC03 */  sra        $t9, $t8, 16
    /* 18E970 802D5E60 241800C8 */  addiu      $t8, $zero, 0xC8
    /* 18E974 802D5E64 00055C00 */  sll        $t3, $a1, 16
    /* 18E978 802D5E68 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 18E97C 802D5E6C 240E00C8 */  addiu      $t6, $zero, 0xC8
    /* 18E980 802D5E70 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 18E984 802D5E74 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 18E988 802D5E78 000B2C03 */  sra        $a1, $t3, 16
    /* 18E98C 802D5E7C AFB80018 */  sw         $t8, 0x18($sp)
    /* 18E990 802D5E80 03202025 */  or         $a0, $t9, $zero
    /* 18E994 802D5E84 14600002 */  bnez       $v1, .L802D5E90_18E9A0
    /* 18E998 802D5E88 00000000 */   nop
    /* 18E99C 802D5E8C 0007000D */  break      7
  .L802D5E90_18E9A0:
    /* 18E9A0 802D5E90 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18E9A4 802D5E94 14610004 */  bne        $v1, $at, .L802D5EA8_18E9B8
    /* 18E9A8 802D5E98 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18E9AC 802D5E9C 16010002 */  bne        $s0, $at, .L802D5EA8_18E9B8
    /* 18E9B0 802D5EA0 00000000 */   nop
    /* 18E9B4 802D5EA4 0006000D */  break      6
  .L802D5EA8_18E9B8:
    /* 18E9B8 802D5EA8 2401001E */  addiu      $at, $zero, 0x1E
    /* 18E9BC 802D5EAC 0041001A */  div        $zero, $v0, $at
    /* 18E9C0 802D5EB0 00003010 */  mfhi       $a2
    /* 18E9C4 802D5EB4 24C600C8 */  addiu      $a2, $a2, 0xC8
    /* 18E9C8 802D5EB8 30CDFFFF */  andi       $t5, $a2, 0xFFFF
    /* 18E9CC 802D5EBC 01A03025 */  or         $a2, $t5, $zero
    /* 18E9D0 802D5EC0 0C03254C */  jal        func_800C9530_D84E0
    /* 18E9D4 802D5EC4 24070096 */   addiu     $a3, $zero, 0x96
    /* 18E9D8 802D5EC8 0C000E38 */  jal        func_800038E0_44E0
    /* 18E9DC 802D5ECC 00000000 */   nop
    /* 18E9E0 802D5ED0 0C000E38 */  jal        func_800038E0_44E0
    /* 18E9E4 802D5ED4 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* 18E9E8 802D5ED8 0C000E38 */  jal        func_800038E0_44E0
    /* 18E9EC 802D5EDC 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* 18E9F0 802D5EE0 240303E8 */  addiu      $v1, $zero, 0x3E8
    /* 18E9F4 802D5EE4 0223001A */  div        $zero, $s1, $v1
    /* 18E9F8 802D5EE8 0000C810 */  mfhi       $t9
    /* 18E9FC 802D5EEC 3C09802E */  lui        $t1, %hi(D_802DE468)
    /* 18EA00 802D5EF0 14600002 */  bnez       $v1, .L802D5EFC_18EA0C
    /* 18EA04 802D5EF4 00000000 */   nop
    /* 18EA08 802D5EF8 0007000D */  break      7
  .L802D5EFC_18EA0C:
    /* 18EA0C 802D5EFC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18EA10 802D5F00 14610004 */  bne        $v1, $at, .L802D5F14_18EA24
    /* 18EA14 802D5F04 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18EA18 802D5F08 16210002 */  bne        $s1, $at, .L802D5F14_18EA24
    /* 18EA1C 802D5F0C 00000000 */   nop
    /* 18EA20 802D5F10 0006000D */  break      6
  .L802D5F14_18EA24:
    /* 18EA24 802D5F14 0203001A */  div        $zero, $s0, $v1
    /* 18EA28 802D5F18 00006010 */  mfhi       $t4
    /* 18EA2C 802D5F1C 8529E468 */  lh         $t1, %lo(D_802DE468)($t1)
    /* 18EA30 802D5F20 3C0D802E */  lui        $t5, %hi(D_802DE46A)
    /* 18EA34 802D5F24 85ADE46A */  lh         $t5, %lo(D_802DE46A)($t5)
    /* 18EA38 802D5F28 03292021 */  addu       $a0, $t9, $t1
    /* 18EA3C 802D5F2C 2484FD0D */  addiu      $a0, $a0, -0x2F3
    /* 18EA40 802D5F30 00045400 */  sll        $t2, $a0, 16
    /* 18EA44 802D5F34 018D2821 */  addu       $a1, $t4, $t5
    /* 18EA48 802D5F38 24A5FD0D */  addiu      $a1, $a1, -0x2F3
    /* 18EA4C 802D5F3C 000A5C03 */  sra        $t3, $t2, 16
    /* 18EA50 802D5F40 240A00C8 */  addiu      $t2, $zero, 0xC8
    /* 18EA54 802D5F44 00057400 */  sll        $t6, $a1, 16
    /* 18EA58 802D5F48 240900FF */  addiu      $t1, $zero, 0xFF
    /* 18EA5C 802D5F4C 241900C8 */  addiu      $t9, $zero, 0xC8
    /* 18EA60 802D5F50 AFB90010 */  sw         $t9, 0x10($sp)
    /* 18EA64 802D5F54 AFA90014 */  sw         $t1, 0x14($sp)
    /* 18EA68 802D5F58 000E2C03 */  sra        $a1, $t6, 16
    /* 18EA6C 802D5F5C AFAA0018 */  sw         $t2, 0x18($sp)
    /* 18EA70 802D5F60 01602025 */  or         $a0, $t3, $zero
    /* 18EA74 802D5F64 14600002 */  bnez       $v1, .L802D5F70_18EA80
    /* 18EA78 802D5F68 00000000 */   nop
    /* 18EA7C 802D5F6C 0007000D */  break      7
  .L802D5F70_18EA80:
    /* 18EA80 802D5F70 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18EA84 802D5F74 14610004 */  bne        $v1, $at, .L802D5F88_18EA98
    /* 18EA88 802D5F78 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18EA8C 802D5F7C 16010002 */  bne        $s0, $at, .L802D5F88_18EA98
    /* 18EA90 802D5F80 00000000 */   nop
    /* 18EA94 802D5F84 0006000D */  break      6
  .L802D5F88_18EA98:
    /* 18EA98 802D5F88 2401001E */  addiu      $at, $zero, 0x1E
    /* 18EA9C 802D5F8C 0041001A */  div        $zero, $v0, $at
    /* 18EAA0 802D5F90 00003010 */  mfhi       $a2
    /* 18EAA4 802D5F94 24C600C8 */  addiu      $a2, $a2, 0xC8
    /* 18EAA8 802D5F98 30D8FFFF */  andi       $t8, $a2, 0xFFFF
    /* 18EAAC 802D5F9C 03003025 */  or         $a2, $t8, $zero
    /* 18EAB0 802D5FA0 0C03254C */  jal        func_800C9530_D84E0
    /* 18EAB4 802D5FA4 24070096 */   addiu     $a3, $zero, 0x96
    /* 18EAB8 802D5FA8 0C000E38 */  jal        func_800038E0_44E0
    /* 18EABC 802D5FAC 00000000 */   nop
    /* 18EAC0 802D5FB0 0C000E38 */  jal        func_800038E0_44E0
    /* 18EAC4 802D5FB4 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* 18EAC8 802D5FB8 0C000E38 */  jal        func_800038E0_44E0
    /* 18EACC 802D5FBC 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* 18EAD0 802D5FC0 240303E8 */  addiu      $v1, $zero, 0x3E8
    /* 18EAD4 802D5FC4 0223001A */  div        $zero, $s1, $v1
    /* 18EAD8 802D5FC8 00005810 */  mfhi       $t3
    /* 18EADC 802D5FCC 3C0C802E */  lui        $t4, %hi(D_802DE468)
    /* 18EAE0 802D5FD0 14600002 */  bnez       $v1, .L802D5FDC_18EAEC
    /* 18EAE4 802D5FD4 00000000 */   nop
    /* 18EAE8 802D5FD8 0007000D */  break      7
  .L802D5FDC_18EAEC:
    /* 18EAEC 802D5FDC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18EAF0 802D5FE0 14610004 */  bne        $v1, $at, .L802D5FF4_18EB04
    /* 18EAF4 802D5FE4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18EAF8 802D5FE8 16210002 */  bne        $s1, $at, .L802D5FF4_18EB04
    /* 18EAFC 802D5FEC 00000000 */   nop
    /* 18EB00 802D5FF0 0006000D */  break      6
  .L802D5FF4_18EB04:
    /* 18EB04 802D5FF4 0203001A */  div        $zero, $s0, $v1
    /* 18EB08 802D5FF8 00007810 */  mfhi       $t7
    /* 18EB0C 802D5FFC 858CE468 */  lh         $t4, %lo(D_802DE468)($t4)
    /* 18EB10 802D6000 3C18802E */  lui        $t8, %hi(D_802DE46A)
    /* 18EB14 802D6004 8718E46A */  lh         $t8, %lo(D_802DE46A)($t8)
    /* 18EB18 802D6008 016C2021 */  addu       $a0, $t3, $t4
    /* 18EB1C 802D600C 2484FD0D */  addiu      $a0, $a0, -0x2F3
    /* 18EB20 802D6010 00046C00 */  sll        $t5, $a0, 16
    /* 18EB24 802D6014 01F82821 */  addu       $a1, $t7, $t8
    /* 18EB28 802D6018 24A5FD0D */  addiu      $a1, $a1, -0x2F3
    /* 18EB2C 802D601C 000D7403 */  sra        $t6, $t5, 16
    /* 18EB30 802D6020 240D00C8 */  addiu      $t5, $zero, 0xC8
    /* 18EB34 802D6024 0005CC00 */  sll        $t9, $a1, 16
    /* 18EB38 802D6028 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 18EB3C 802D602C 240B00C8 */  addiu      $t3, $zero, 0xC8
    /* 18EB40 802D6030 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 18EB44 802D6034 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 18EB48 802D6038 00192C03 */  sra        $a1, $t9, 16
    /* 18EB4C 802D603C AFAD0018 */  sw         $t5, 0x18($sp)
    /* 18EB50 802D6040 01C02025 */  or         $a0, $t6, $zero
    /* 18EB54 802D6044 14600002 */  bnez       $v1, .L802D6050_18EB60
    /* 18EB58 802D6048 00000000 */   nop
    /* 18EB5C 802D604C 0007000D */  break      7
  .L802D6050_18EB60:
    /* 18EB60 802D6050 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18EB64 802D6054 14610004 */  bne        $v1, $at, .L802D6068_18EB78
    /* 18EB68 802D6058 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18EB6C 802D605C 16010002 */  bne        $s0, $at, .L802D6068_18EB78
    /* 18EB70 802D6060 00000000 */   nop
    /* 18EB74 802D6064 0006000D */  break      6
  .L802D6068_18EB78:
    /* 18EB78 802D6068 2401001E */  addiu      $at, $zero, 0x1E
    /* 18EB7C 802D606C 0041001A */  div        $zero, $v0, $at
    /* 18EB80 802D6070 00003010 */  mfhi       $a2
    /* 18EB84 802D6074 24C600C8 */  addiu      $a2, $a2, 0xC8
    /* 18EB88 802D6078 30CAFFFF */  andi       $t2, $a2, 0xFFFF
    /* 18EB8C 802D607C 01403025 */  or         $a2, $t2, $zero
    /* 18EB90 802D6080 0C03254C */  jal        func_800C9530_D84E0
    /* 18EB94 802D6084 24070096 */   addiu     $a3, $zero, 0x96
    /* 18EB98 802D6088 0C000E38 */  jal        func_800038E0_44E0
    /* 18EB9C 802D608C 00000000 */   nop
    /* 18EBA0 802D6090 0C000E38 */  jal        func_800038E0_44E0
    /* 18EBA4 802D6094 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* 18EBA8 802D6098 0C000E38 */  jal        func_800038E0_44E0
    /* 18EBAC 802D609C 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* 18EBB0 802D60A0 240303E8 */  addiu      $v1, $zero, 0x3E8
    /* 18EBB4 802D60A4 0223001A */  div        $zero, $s1, $v1
    /* 18EBB8 802D60A8 00007010 */  mfhi       $t6
    /* 18EBBC 802D60AC 3C0F802E */  lui        $t7, %hi(D_802DE468)
    /* 18EBC0 802D60B0 14600002 */  bnez       $v1, .L802D60BC_18EBCC
    /* 18EBC4 802D60B4 00000000 */   nop
    /* 18EBC8 802D60B8 0007000D */  break      7
  .L802D60BC_18EBCC:
    /* 18EBCC 802D60BC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18EBD0 802D60C0 14610004 */  bne        $v1, $at, .L802D60D4_18EBE4
    /* 18EBD4 802D60C4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18EBD8 802D60C8 16210002 */  bne        $s1, $at, .L802D60D4_18EBE4
    /* 18EBDC 802D60CC 00000000 */   nop
    /* 18EBE0 802D60D0 0006000D */  break      6
  .L802D60D4_18EBE4:
    /* 18EBE4 802D60D4 0203001A */  div        $zero, $s0, $v1
    /* 18EBE8 802D60D8 00004810 */  mfhi       $t1
    /* 18EBEC 802D60DC 85EFE468 */  lh         $t7, %lo(D_802DE468)($t7)
    /* 18EBF0 802D60E0 3C0A802E */  lui        $t2, %hi(D_802DE46A)
    /* 18EBF4 802D60E4 854AE46A */  lh         $t2, %lo(D_802DE46A)($t2)
    /* 18EBF8 802D60E8 01CF2021 */  addu       $a0, $t6, $t7
    /* 18EBFC 802D60EC 2484FD0D */  addiu      $a0, $a0, -0x2F3
    /* 18EC00 802D60F0 0004C400 */  sll        $t8, $a0, 16
    /* 18EC04 802D60F4 012A2821 */  addu       $a1, $t1, $t2
    /* 18EC08 802D60F8 24A5FD0D */  addiu      $a1, $a1, -0x2F3
    /* 18EC0C 802D60FC 0018CC03 */  sra        $t9, $t8, 16
    /* 18EC10 802D6100 241800C8 */  addiu      $t8, $zero, 0xC8
    /* 18EC14 802D6104 00055C00 */  sll        $t3, $a1, 16
    /* 18EC18 802D6108 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 18EC1C 802D610C 240E00C8 */  addiu      $t6, $zero, 0xC8
    /* 18EC20 802D6110 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 18EC24 802D6114 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 18EC28 802D6118 000B2C03 */  sra        $a1, $t3, 16
    /* 18EC2C 802D611C AFB80018 */  sw         $t8, 0x18($sp)
    /* 18EC30 802D6120 03202025 */  or         $a0, $t9, $zero
    /* 18EC34 802D6124 14600002 */  bnez       $v1, .L802D6130_18EC40
    /* 18EC38 802D6128 00000000 */   nop
    /* 18EC3C 802D612C 0007000D */  break      7
  .L802D6130_18EC40:
    /* 18EC40 802D6130 2401FFFF */  addiu      $at, $zero, -0x1
    /* 18EC44 802D6134 14610004 */  bne        $v1, $at, .L802D6148_18EC58
    /* 18EC48 802D6138 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 18EC4C 802D613C 16010002 */  bne        $s0, $at, .L802D6148_18EC58
    /* 18EC50 802D6140 00000000 */   nop
    /* 18EC54 802D6144 0006000D */  break      6
  .L802D6148_18EC58:
    /* 18EC58 802D6148 2401001E */  addiu      $at, $zero, 0x1E
    /* 18EC5C 802D614C 0041001A */  div        $zero, $v0, $at
    /* 18EC60 802D6150 00003010 */  mfhi       $a2
    /* 18EC64 802D6154 24C600C8 */  addiu      $a2, $a2, 0xC8
    /* 18EC68 802D6158 30CDFFFF */  andi       $t5, $a2, 0xFFFF
    /* 18EC6C 802D615C 01A03025 */  or         $a2, $t5, $zero
    /* 18EC70 802D6160 0C03254C */  jal        func_800C9530_D84E0
    /* 18EC74 802D6164 24070096 */   addiu     $a3, $zero, 0x96
    /* 18EC78 802D6168 0C000E38 */  jal        func_800038E0_44E0
    /* 18EC7C 802D616C 00000000 */   nop
    /* 18EC80 802D6170 0C000E38 */  jal        func_800038E0_44E0
    /* 18EC84 802D6174 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* 18EC88 802D6178 0C000E38 */  jal        func_800038E0_44E0
    /* 18EC8C 802D617C 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* 18EC90 802D6180 240103E8 */  addiu      $at, $zero, 0x3E8
    /* 18EC94 802D6184 0221001A */  div        $zero, $s1, $at
    /* 18EC98 802D6188 0000C810 */  mfhi       $t9
    /* 18EC9C 802D618C 3C09802E */  lui        $t1, %hi(D_802DE468)
    /* 18ECA0 802D6190 8529E468 */  lh         $t1, %lo(D_802DE468)($t1)
    /* 18ECA4 802D6194 0201001A */  div        $zero, $s0, $at
    /* 18ECA8 802D6198 00006010 */  mfhi       $t4
    /* 18ECAC 802D619C 2401001E */  addiu      $at, $zero, 0x1E
    /* 18ECB0 802D61A0 3C0D802E */  lui        $t5, %hi(D_802DE46A)
    /* 18ECB4 802D61A4 0041001A */  div        $zero, $v0, $at
    /* 18ECB8 802D61A8 85ADE46A */  lh         $t5, %lo(D_802DE46A)($t5)
    /* 18ECBC 802D61AC 03292021 */  addu       $a0, $t9, $t1
    /* 18ECC0 802D61B0 2484FD0D */  addiu      $a0, $a0, -0x2F3
    /* 18ECC4 802D61B4 00045400 */  sll        $t2, $a0, 16
    /* 18ECC8 802D61B8 00003010 */  mfhi       $a2
    /* 18ECCC 802D61BC 018D2821 */  addu       $a1, $t4, $t5
    /* 18ECD0 802D61C0 24A5FD0D */  addiu      $a1, $a1, -0x2F3
    /* 18ECD4 802D61C4 24C600C8 */  addiu      $a2, $a2, 0xC8
    /* 18ECD8 802D61C8 000A2403 */  sra        $a0, $t2, 16
    /* 18ECDC 802D61CC 240A00C8 */  addiu      $t2, $zero, 0xC8
    /* 18ECE0 802D61D0 30D8FFFF */  andi       $t8, $a2, 0xFFFF
    /* 18ECE4 802D61D4 00057400 */  sll        $t6, $a1, 16
    /* 18ECE8 802D61D8 240900FF */  addiu      $t1, $zero, 0xFF
    /* 18ECEC 802D61DC 241900C8 */  addiu      $t9, $zero, 0xC8
    /* 18ECF0 802D61E0 AFB90010 */  sw         $t9, 0x10($sp)
    /* 18ECF4 802D61E4 AFA90014 */  sw         $t1, 0x14($sp)
    /* 18ECF8 802D61E8 000E2C03 */  sra        $a1, $t6, 16
    /* 18ECFC 802D61EC 03003025 */  or         $a2, $t8, $zero
    /* 18ED00 802D61F0 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 18ED04 802D61F4 0C03254C */  jal        func_800C9530_D84E0
    /* 18ED08 802D61F8 24070096 */   addiu     $a3, $zero, 0x96
    /* 18ED0C 802D61FC 0C000E38 */  jal        func_800038E0_44E0
    /* 18ED10 802D6200 00000000 */   nop
    /* 18ED14 802D6204 0C000E38 */  jal        func_800038E0_44E0
    /* 18ED18 802D6208 3051FFFF */   andi      $s1, $v0, 0xFFFF
    /* 18ED1C 802D620C 0C000E38 */  jal        func_800038E0_44E0
    /* 18ED20 802D6210 3050FFFF */   andi      $s0, $v0, 0xFFFF
    /* 18ED24 802D6214 240103E8 */  addiu      $at, $zero, 0x3E8
    /* 18ED28 802D6218 0221001A */  div        $zero, $s1, $at
    /* 18ED2C 802D621C 00005810 */  mfhi       $t3
    /* 18ED30 802D6220 3C0C802E */  lui        $t4, %hi(D_802DE468)
    /* 18ED34 802D6224 858CE468 */  lh         $t4, %lo(D_802DE468)($t4)
    /* 18ED38 802D6228 0201001A */  div        $zero, $s0, $at
    /* 18ED3C 802D622C 00007810 */  mfhi       $t7
    /* 18ED40 802D6230 2401001E */  addiu      $at, $zero, 0x1E
    /* 18ED44 802D6234 3C18802E */  lui        $t8, %hi(D_802DE46A)
    /* 18ED48 802D6238 0041001A */  div        $zero, $v0, $at
    /* 18ED4C 802D623C 8718E46A */  lh         $t8, %lo(D_802DE46A)($t8)
    /* 18ED50 802D6240 016C2021 */  addu       $a0, $t3, $t4
    /* 18ED54 802D6244 2484FD0D */  addiu      $a0, $a0, -0x2F3
    /* 18ED58 802D6248 00046C00 */  sll        $t5, $a0, 16
    /* 18ED5C 802D624C 00003010 */  mfhi       $a2
    /* 18ED60 802D6250 01F82821 */  addu       $a1, $t7, $t8
    /* 18ED64 802D6254 24A5FD0D */  addiu      $a1, $a1, -0x2F3
    /* 18ED68 802D6258 24C600C8 */  addiu      $a2, $a2, 0xC8
    /* 18ED6C 802D625C 000D2403 */  sra        $a0, $t5, 16
    /* 18ED70 802D6260 240D00C8 */  addiu      $t5, $zero, 0xC8
    /* 18ED74 802D6264 30CAFFFF */  andi       $t2, $a2, 0xFFFF
    /* 18ED78 802D6268 0005CC00 */  sll        $t9, $a1, 16
    /* 18ED7C 802D626C 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 18ED80 802D6270 240B00C8 */  addiu      $t3, $zero, 0xC8
    /* 18ED84 802D6274 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 18ED88 802D6278 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 18ED8C 802D627C 00192C03 */  sra        $a1, $t9, 16
    /* 18ED90 802D6280 01403025 */  or         $a2, $t2, $zero
    /* 18ED94 802D6284 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 18ED98 802D6288 0C03254C */  jal        func_800C9530_D84E0
    /* 18ED9C 802D628C 24070096 */   addiu     $a3, $zero, 0x96
    /* 18EDA0 802D6290 3C028015 */  lui        $v0, %hi(D_80157F8E)
    /* 18EDA4 802D6294 3C088015 */  lui        $t0, %hi(D_80157F8C)
    /* 18EDA8 802D6298 3C078015 */  lui        $a3, %hi(D_80157F8E)
    /* 18EDAC 802D629C 24E77F8E */  addiu      $a3, $a3, %lo(D_80157F8E)
    /* 18EDB0 802D62A0 25087F8C */  addiu      $t0, $t0, %lo(D_80157F8C)
    /* 18EDB4 802D62A4 84427F8E */  lh         $v0, %lo(D_80157F8E)($v0)
  .L802D62A8_18EDB8:
    /* 18EDB8 802D62A8 24010046 */  addiu      $at, $zero, 0x46
  .L802D62AC_18EDBC:
    /* 18EDBC 802D62AC 14410010 */  bne        $v0, $at, .L802D62F0_18EE00
    /* 18EDC0 802D62B0 2404008A */   addiu     $a0, $zero, 0x8A
    /* 18EDC4 802D62B4 3C058005 */  lui        $a1, %hi(D_80052A94)
    /* 18EDC8 802D62B8 24A52A94 */  addiu      $a1, $a1, %lo(D_80052A94)
    /* 18EDCC 802D62BC 24030090 */  addiu      $v1, $zero, 0x90
  .L802D62C0_18EDD0:
    /* 18EDD0 802D62C0 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 18EDD4 802D62C4 01C41021 */  addu       $v0, $t6, $a0
    /* 18EDD8 802D62C8 9458AE00 */  lhu        $t8, -0x5200($v0)
    /* 18EDDC 802D62CC 904BAE01 */  lbu        $t3, -0x51FF($v0)
    /* 18EDE0 802D62D0 24840002 */  addiu      $a0, $a0, 0x2
    /* 18EDE4 802D62D4 27090004 */  addiu      $t1, $t8, 0x4
    /* 18EDE8 802D62D8 312A003F */  andi       $t2, $t1, 0x3F
    /* 18EDEC 802D62DC 316CFFC0 */  andi       $t4, $t3, 0xFFC0
    /* 18EDF0 802D62E0 014C6825 */  or         $t5, $t2, $t4
    /* 18EDF4 802D62E4 1483FFF6 */  bne        $a0, $v1, .L802D62C0_18EDD0
    /* 18EDF8 802D62E8 A04DAE01 */   sb        $t5, -0x51FF($v0)
    /* 18EDFC 802D62EC 84E20000 */  lh         $v0, 0x0($a3)
  .L802D62F0_18EE00:
    /* 18EE00 802D62F0 3C058005 */  lui        $a1, %hi(D_80052A94)
    /* 18EE04 802D62F4 30440007 */  andi       $a0, $v0, 0x7
    /* 18EE08 802D62F8 24010007 */  addiu      $at, $zero, 0x7
    /* 18EE0C 802D62FC 14810048 */  bne        $a0, $at, .L802D6420_18EF30
    /* 18EE10 802D6300 24A52A94 */   addiu     $a1, $a1, %lo(D_80052A94)
    /* 18EE14 802D6304 24040086 */  addiu      $a0, $zero, 0x86
    /* 18EE18 802D6308 24060094 */  addiu      $a2, $zero, 0x94
  .L802D630C_18EE1C:
    /* 18EE1C 802D630C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 18EE20 802D6310 2403FFDA */  addiu      $v1, $zero, -0x26
    /* 18EE24 802D6314 01C41021 */  addu       $v0, $t6, $a0
    /* 18EE28 802D6318 9458B000 */  lhu        $t8, -0x5000($v0)
    /* 18EE2C 802D631C 904BB001 */  lbu        $t3, -0x4FFF($v0)
    /* 18EE30 802D6320 2442B000 */  addiu      $v0, $v0, -0x5000
    /* 18EE34 802D6324 27190001 */  addiu      $t9, $t8, 0x1
    /* 18EE38 802D6328 3329003F */  andi       $t1, $t9, 0x3F
    /* 18EE3C 802D632C 316AFFC0 */  andi       $t2, $t3, 0xFFC0
    /* 18EE40 802D6330 012A6025 */  or         $t4, $t1, $t2
    /* 18EE44 802D6334 A04C0001 */  sb         $t4, 0x1($v0)
    /* 18EE48 802D6338 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 18EE4C 802D633C 01A41021 */  addu       $v0, $t5, $a0
    /* 18EE50 802D6340 944FB200 */  lhu        $t7, -0x4E00($v0)
    /* 18EE54 802D6344 904BB201 */  lbu        $t3, -0x4DFF($v0)
    /* 18EE58 802D6348 00036A40 */  sll        $t5, $v1, 9
    /* 18EE5C 802D634C 25F80001 */  addiu      $t8, $t7, 0x1
    /* 18EE60 802D6350 3319003F */  andi       $t9, $t8, 0x3F
    /* 18EE64 802D6354 3169FFC0 */  andi       $t1, $t3, 0xFFC0
    /* 18EE68 802D6358 03295025 */  or         $t2, $t9, $t1
    /* 18EE6C 802D635C A04AB201 */  sb         $t2, -0x4DFF($v0)
    /* 18EE70 802D6360 8CAC0000 */  lw         $t4, 0x0($a1)
    /* 18EE74 802D6364 2442B000 */  addiu      $v0, $v0, -0x5000
    /* 18EE78 802D6368 018D7021 */  addu       $t6, $t4, $t5
    /* 18EE7C 802D636C 01C41021 */  addu       $v0, $t6, $a0
    /* 18EE80 802D6370 94580000 */  lhu        $t8, 0x0($v0)
    /* 18EE84 802D6374 90490001 */  lbu        $t1, 0x1($v0)
    /* 18EE88 802D6378 00037240 */  sll        $t6, $v1, 9
    /* 18EE8C 802D637C 270B0001 */  addiu      $t3, $t8, 0x1
    /* 18EE90 802D6380 3179003F */  andi       $t9, $t3, 0x3F
    /* 18EE94 802D6384 312AFFC0 */  andi       $t2, $t1, 0xFFC0
    /* 18EE98 802D6388 032A6025 */  or         $t4, $t9, $t2
    /* 18EE9C 802D638C A04C0001 */  sb         $t4, 0x1($v0)
    /* 18EEA0 802D6390 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 18EEA4 802D6394 01AE7821 */  addu       $t7, $t5, $t6
    /* 18EEA8 802D6398 01E41021 */  addu       $v0, $t7, $a0
    /* 18EEAC 802D639C 944B0200 */  lhu        $t3, 0x200($v0)
    /* 18EEB0 802D63A0 904A0201 */  lbu        $t2, 0x201($v0)
    /* 18EEB4 802D63A4 00037A40 */  sll        $t7, $v1, 9
    /* 18EEB8 802D63A8 25690001 */  addiu      $t1, $t3, 0x1
    /* 18EEBC 802D63AC 3139003F */  andi       $t9, $t1, 0x3F
    /* 18EEC0 802D63B0 314CFFC0 */  andi       $t4, $t2, 0xFFC0
    /* 18EEC4 802D63B4 032C6825 */  or         $t5, $t9, $t4
    /* 18EEC8 802D63B8 A04D0201 */  sb         $t5, 0x201($v0)
    /* 18EECC 802D63BC 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 18EED0 802D63C0 01CFC021 */  addu       $t8, $t6, $t7
    /* 18EED4 802D63C4 03041021 */  addu       $v0, $t8, $a0
    /* 18EED8 802D63C8 94490400 */  lhu        $t1, 0x400($v0)
    /* 18EEDC 802D63CC 904C0401 */  lbu        $t4, 0x401($v0)
    /* 18EEE0 802D63D0 0003C240 */  sll        $t8, $v1, 9
    /* 18EEE4 802D63D4 252A0001 */  addiu      $t2, $t1, 0x1
    /* 18EEE8 802D63D8 3159003F */  andi       $t9, $t2, 0x3F
    /* 18EEEC 802D63DC 318DFFC0 */  andi       $t5, $t4, 0xFFC0
    /* 18EEF0 802D63E0 032D7025 */  or         $t6, $t9, $t5
    /* 18EEF4 802D63E4 A04E0401 */  sb         $t6, 0x401($v0)
    /* 18EEF8 802D63E8 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 18EEFC 802D63EC 01F85821 */  addu       $t3, $t7, $t8
    /* 18EF00 802D63F0 01641021 */  addu       $v0, $t3, $a0
    /* 18EF04 802D63F4 944A0600 */  lhu        $t2, 0x600($v0)
    /* 18EF08 802D63F8 904D0601 */  lbu        $t5, 0x601($v0)
    /* 18EF0C 802D63FC 24840002 */  addiu      $a0, $a0, 0x2
    /* 18EF10 802D6400 254C0001 */  addiu      $t4, $t2, 0x1
    /* 18EF14 802D6404 3199003F */  andi       $t9, $t4, 0x3F
    /* 18EF18 802D6408 31AEFFC0 */  andi       $t6, $t5, 0xFFC0
    /* 18EF1C 802D640C 032E7825 */  or         $t7, $t9, $t6
    /* 18EF20 802D6410 1486FFBE */  bne        $a0, $a2, .L802D630C_18EE1C
    /* 18EF24 802D6414 A04F0601 */   sb        $t7, 0x601($v0)
    /* 18EF28 802D6418 84E20000 */  lh         $v0, 0x0($a3)
    /* 18EF2C 802D641C 30440007 */  andi       $a0, $v0, 0x7
  .L802D6420_18EF30:
    /* 18EF30 802D6420 3C018015 */  lui        $at, %hi(D_8015273E)
    /* 18EF34 802D6424 A024273E */  sb         $a0, %lo(D_8015273E)($at)
    /* 18EF38 802D6428 28430065 */  slti       $v1, $v0, 0x65
    /* 18EF3C 802D642C 24580001 */  addiu      $t8, $v0, 0x1
    /* 18EF40 802D6430 14600021 */  bnez       $v1, .L802D64B8_18EFC8
    /* 18EF44 802D6434 A4F80000 */   sh        $t8, 0x0($a3)
    /* 18EF48 802D6438 850B0000 */  lh         $t3, 0x0($t0)
    /* 18EF4C 802D643C A4E00000 */  sh         $zero, 0x0($a3)
    /* 18EF50 802D6440 25690001 */  addiu      $t1, $t3, 0x1
    /* 18EF54 802D6444 1000001C */  b          .L802D64B8_18EFC8
    /* 18EF58 802D6448 A5090000 */   sh        $t1, 0x0($t0)
  .L802D644C_18EF5C:
    /* 18EF5C 802D644C 26109DDF */  addiu      $s0, $s0, %lo(D_80159DDF)
    /* 18EF60 802D6450 920A0000 */  lbu        $t2, 0x0($s0)
    /* 18EF64 802D6454 3C118005 */  lui        $s1, %hi(buildingInstances)
    /* 18EF68 802D6458 26310AD8 */  addiu      $s1, $s1, %lo(buildingInstances)
    /* 18EF6C 802D645C 000A6080 */  sll        $t4, $t2, 2
    /* 18EF70 802D6460 018A6023 */  subu       $t4, $t4, $t2
    /* 18EF74 802D6464 000C60C0 */  sll        $t4, $t4, 3
    /* 18EF78 802D6468 022C1021 */  addu       $v0, $s1, $t4
    /* 18EF7C 802D646C 84440000 */  lh         $a0, 0x0($v0)
    /* 18EF80 802D6470 0C02E134 */  jal        func_800B84D0_C7480
    /* 18EF84 802D6474 84450004 */   lh        $a1, 0x4($v0)
    /* 18EF88 802D6478 92190000 */  lbu        $t9, 0x0($s0)
    /* 18EF8C 802D647C 3C038016 */  lui        $v1, %hi(D_80159DE2)
    /* 18EF90 802D6480 00026A03 */  sra        $t5, $v0, 8
    /* 18EF94 802D6484 00197080 */  sll        $t6, $t9, 2
    /* 18EF98 802D6488 01D97023 */  subu       $t6, $t6, $t9
    /* 18EF9C 802D648C 000E70C0 */  sll        $t6, $t6, 3
    /* 18EFA0 802D6490 022E7821 */  addu       $t7, $s1, $t6
    /* 18EFA4 802D6494 A5ED0002 */  sh         $t5, 0x2($t7)
    /* 18EFA8 802D6498 24639DE2 */  addiu      $v1, $v1, %lo(D_80159DE2)
    /* 18EFAC 802D649C A4600000 */  sh         $zero, 0x0($v1)
    /* 18EFB0 802D64A0 3C018015 */  lui        $at, %hi(D_8015273E)
    /* 18EFB4 802D64A4 A020273E */  sb         $zero, %lo(D_8015273E)($at)
    /* 18EFB8 802D64A8 241800FF */  addiu      $t8, $zero, 0xFF
    /* 18EFBC 802D64AC A2180000 */  sb         $t8, 0x0($s0)
    /* 18EFC0 802D64B0 10000002 */  b          .L802D64BC_18EFCC
    /* 18EFC4 802D64B4 24020001 */   addiu     $v0, $zero, 0x1
  .L802D64B8_18EFC8:
    /* 18EFC8 802D64B8 00001025 */  or         $v0, $zero, $zero
  .L802D64BC_18EFCC:
    /* 18EFCC 802D64BC 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 18EFD0 802D64C0 8FB00024 */  lw         $s0, 0x24($sp)
    /* 18EFD4 802D64C4 8FB10028 */  lw         $s1, 0x28($sp)
    /* 18EFD8 802D64C8 03E00008 */  jr         $ra
    /* 18EFDC 802D64CC 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_802D57A0_18E2B0
