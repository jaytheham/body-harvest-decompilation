nonmatching func_8007CFB4_4D464, 0x2FC

glabel func_8007CFB4_4D464
    /* 4D464 8007CFB4 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 4D468 8007CFB8 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 4D46C 8007CFBC AFB20028 */  sw         $s2, 0x28($sp)
    /* 4D470 8007CFC0 AFB00020 */  sw         $s0, 0x20($sp)
    /* 4D474 8007CFC4 240E0004 */  addiu      $t6, $zero, 0x4
    /* 4D478 8007CFC8 3C018005 */  lui        $at, %hi(gameplayMode)
    /* 4D47C 8007CFCC AFB40030 */  sw         $s4, 0x30($sp)
    /* 4D480 8007CFD0 AFB3002C */  sw         $s3, 0x2C($sp)
    /* 4D484 8007CFD4 AFB10024 */  sw         $s1, 0x24($sp)
    /* 4D488 8007CFD8 AFA40038 */  sw         $a0, 0x38($sp)
    /* 4D48C 8007CFDC 00009025 */  or         $s2, $zero, $zero
    /* 4D490 8007CFE0 2410FFFF */  addiu      $s0, $zero, -0x1
    /* 4D494 8007CFE4 0C002BF7 */  jal        func_8000AFDC_BBDC
    /* 4D498 8007CFE8 AC2E2ADC */   sw        $t6, %lo(gameplayMode)($at)
    /* 4D49C 8007CFEC 0C01C250 */  jal        func_80070940_40DF0
    /* 4D4A0 8007CFF0 00000000 */   nop
    /* 4D4A4 8007CFF4 3C02800D */  lui        $v0, %hi(D_800D74A6)
    /* 4D4A8 8007CFF8 244274A6 */  addiu      $v0, $v0, %lo(D_800D74A6)
    /* 4D4AC 8007CFFC 240F0044 */  addiu      $t7, $zero, 0x44
    /* 4D4B0 8007D000 A44F0000 */  sh         $t7, 0x0($v0)
    /* 4D4B4 8007D004 84580000 */  lh         $t8, 0x0($v0)
    /* 4D4B8 8007D008 3C01800D */  lui        $at, %hi(D_800D74A4)
    /* 4D4BC 8007D00C 3C118006 */  lui        $s1, %hi(D_8005BB2C)
    /* 4D4C0 8007D010 A43874A4 */  sh         $t8, %lo(D_800D74A4)($at)
    /* 4D4C4 8007D014 3C018009 */  lui        $at, %hi(D_800948F0)
    /* 4D4C8 8007D018 AC2048F0 */  sw         $zero, %lo(D_800948F0)($at)
    /* 4D4CC 8007D01C 2631BB2C */  addiu      $s1, $s1, %lo(D_8005BB2C)
    /* 4D4D0 8007D020 24140001 */  addiu      $s4, $zero, 0x1
    /* 4D4D4 8007D024 2413FFFF */  addiu      $s3, $zero, -0x1
  .L8007D028_4D4D8:
    /* 4D4D8 8007D028 0C001431 */  jal        func_800050C4_5CC4
    /* 4D4DC 8007D02C 00000000 */   nop
    /* 4D4E0 8007D030 0C004785 */  jal        func_80011E14_12A14
    /* 4D4E4 8007D034 00002025 */   or        $a0, $zero, $zero
    /* 4D4E8 8007D038 241900EF */  addiu      $t9, $zero, 0xEF
    /* 4D4EC 8007D03C AFB90010 */  sw         $t9, 0x10($sp)
    /* 4D4F0 8007D040 00002025 */  or         $a0, $zero, $zero
    /* 4D4F4 8007D044 00002825 */  or         $a1, $zero, $zero
    /* 4D4F8 8007D048 00003025 */  or         $a2, $zero, $zero
    /* 4D4FC 8007D04C 0C001377 */  jal        func_80004DDC_59DC
    /* 4D500 8007D050 00003825 */   or        $a3, $zero, $zero
    /* 4D504 8007D054 0C00232A */  jal        func_80008CA8_98A8
    /* 4D508 8007D058 00002025 */   or        $a0, $zero, $zero
    /* 4D50C 8007D05C 3C088009 */  lui        $t0, %hi(D_800948F0)
    /* 4D510 8007D060 8D0848F0 */  lw         $t0, %lo(D_800948F0)($t0)
    /* 4D514 8007D064 2D010041 */  sltiu      $at, $t0, 0x41
    /* 4D518 8007D068 14200008 */  bnez       $at, .L8007D08C_4D53C
    /* 4D51C 8007D06C 2D0103E8 */   sltiu     $at, $t0, 0x3E8
    /* 4D520 8007D070 10200006 */  beqz       $at, .L8007D08C_4D53C
    /* 4D524 8007D074 2404003F */   addiu     $a0, $zero, 0x3F
    /* 4D528 8007D078 2506FFC3 */  addiu      $a2, $t0, -0x3D
    /* 4D52C 8007D07C 00064C00 */  sll        $t1, $a2, 16
    /* 4D530 8007D080 00093403 */  sra        $a2, $t1, 16
    /* 4D534 8007D084 0C01C319 */  jal        func_80070C64_41114
    /* 4D538 8007D088 24050007 */   addiu     $a1, $zero, 0x7
  .L8007D08C_4D53C:
    /* 4D53C 8007D08C 8FAB0038 */  lw         $t3, 0x38($sp)
    /* 4D540 8007D090 15600003 */  bnez       $t3, .L8007D0A0_4D550
    /* 4D544 8007D094 00000000 */   nop
    /* 4D548 8007D098 0C01C2A3 */  jal        func_80070A8C_40F3C
    /* 4D54C 8007D09C 24040045 */   addiu     $a0, $zero, 0x45
  .L8007D0A0_4D550:
    /* 4D550 8007D0A0 3C0C8009 */  lui        $t4, %hi(D_800948F0)
    /* 4D554 8007D0A4 8D8C48F0 */  lw         $t4, %lo(D_800948F0)($t4)
    /* 4D558 8007D0A8 2D810081 */  sltiu      $at, $t4, 0x81
    /* 4D55C 8007D0AC 14200029 */  bnez       $at, .L8007D154_4D604
    /* 4D560 8007D0B0 00000000 */   nop
    /* 4D564 8007D0B4 16130027 */  bne        $s0, $s3, .L8007D154_4D604
    /* 4D568 8007D0B8 00000000 */   nop
    /* 4D56C 8007D0BC 0C01C331 */  jal        func_80070CC4_41174
    /* 4D570 8007D0C0 00000000 */   nop
    /* 4D574 8007D0C4 0C01C59B */  jal        func_8007166C_41B1C
    /* 4D578 8007D0C8 00000000 */   nop
    /* 4D57C 8007D0CC 00002025 */  or         $a0, $zero, $zero
    /* 4D580 8007D0D0 0C000D61 */  jal        isButtonNewlyPressed
    /* 4D584 8007D0D4 34059000 */   ori       $a1, $zero, 0x9000
    /* 4D588 8007D0D8 50400018 */  beql       $v0, $zero, .L8007D13C_4D5EC
    /* 4D58C 8007D0DC 00002025 */   or        $a0, $zero, $zero
    /* 4D590 8007D0E0 3C12800D */  lui        $s2, %hi(D_800D74A4)
    /* 4D594 8007D0E4 865274A4 */  lh         $s2, %lo(D_800D74A4)($s2)
    /* 4D598 8007D0E8 24040043 */  addiu      $a0, $zero, 0x43
    /* 4D59C 8007D0EC 0C01C22E */  jal        func_800708B8_40D68
    /* 4D5A0 8007D0F0 2652FFBE */   addiu     $s2, $s2, -0x42
    /* 4D5A4 8007D0F4 0C01C22E */  jal        func_800708B8_40D68
    /* 4D5A8 8007D0F8 24040044 */   addiu     $a0, $zero, 0x44
    /* 4D5AC 8007D0FC 0C01C22E */  jal        func_800708B8_40D68
    /* 4D5B0 8007D100 24040045 */   addiu     $a0, $zero, 0x45
    /* 4D5B4 8007D104 0C0054F6 */  jal        func_800153D8_15FD8
    /* 4D5B8 8007D108 240400C8 */   addiu     $a0, $zero, 0xC8
    /* 4D5BC 8007D10C 1654000A */  bne        $s2, $s4, .L8007D138_4D5E8
    /* 4D5C0 8007D110 24100010 */   addiu     $s0, $zero, 0x10
    /* 4D5C4 8007D114 00142C00 */  sll        $a1, $s4, 16
    /* 4D5C8 8007D118 00056C03 */  sra        $t5, $a1, 16
    /* 4D5CC 8007D11C 01A02825 */  or         $a1, $t5, $zero
    /* 4D5D0 8007D120 24040046 */  addiu      $a0, $zero, 0x46
    /* 4D5D4 8007D124 00003025 */  or         $a2, $zero, $zero
    /* 4D5D8 8007D128 0C01C319 */  jal        func_80070C64_41114
    /* 4D5DC 8007D12C 24100050 */   addiu     $s0, $zero, 0x50
    /* 4D5E0 8007D130 10000002 */  b          .L8007D13C_4D5EC
    /* 4D5E4 8007D134 00002025 */   or        $a0, $zero, $zero
  .L8007D138_4D5E8:
    /* 4D5E8 8007D138 00002025 */  or         $a0, $zero, $zero
  .L8007D13C_4D5EC:
    /* 4D5EC 8007D13C 0C000D61 */  jal        isButtonNewlyPressed
    /* 4D5F0 8007D140 24054000 */   addiu     $a1, $zero, 0x4000
    /* 4D5F4 8007D144 10400003 */  beqz       $v0, .L8007D154_4D604
    /* 4D5F8 8007D148 00000000 */   nop
    /* 4D5FC 8007D14C 24120002 */  addiu      $s2, $zero, 0x2
    /* 4D600 8007D150 24100010 */  addiu      $s0, $zero, 0x10
  .L8007D154_4D604:
    /* 4D604 8007D154 3C0E8009 */  lui        $t6, %hi(D_800948F0)
    /* 4D608 8007D158 8DCE48F0 */  lw         $t6, %lo(D_800948F0)($t6)
    /* 4D60C 8007D15C 2DC10041 */  sltiu      $at, $t6, 0x41
    /* 4D610 8007D160 14200003 */  bnez       $at, .L8007D170_4D620
    /* 4D614 8007D164 00000000 */   nop
    /* 4D618 8007D168 0C01CC6A */  jal        func_800731A8_43658
    /* 4D61C 8007D16C 00000000 */   nop
  .L8007D170_4D620:
    /* 4D620 8007D170 0C002C11 */  jal        func_8000B044_BC44
    /* 4D624 8007D174 00000000 */   nop
    /* 4D628 8007D178 3C0F8009 */  lui        $t7, %hi(D_800948F0)
    /* 4D62C 8007D17C 8DEF48F0 */  lw         $t7, %lo(D_800948F0)($t7)
    /* 4D630 8007D180 2DE103E8 */  sltiu      $at, $t7, 0x3E8
    /* 4D634 8007D184 10200003 */  beqz       $at, .L8007D194_4D644
    /* 4D638 8007D188 25F80001 */   addiu     $t8, $t7, 0x1
    /* 4D63C 8007D18C 3C018009 */  lui        $at, %hi(D_800948F0)
    /* 4D640 8007D190 AC3848F0 */  sw         $t8, %lo(D_800948F0)($at)
  .L8007D194_4D644:
    /* 4D644 8007D194 24010010 */  addiu      $at, $zero, 0x10
    /* 4D648 8007D198 16010013 */  bne        $s0, $at, .L8007D1E8_4D698
    /* 4D64C 8007D19C 00000000 */   nop
    /* 4D650 8007D1A0 0C01C22E */  jal        func_800708B8_40D68
    /* 4D654 8007D1A4 24040040 */   addiu     $a0, $zero, 0x40
    /* 4D658 8007D1A8 0C01C22E */  jal        func_800708B8_40D68
    /* 4D65C 8007D1AC 24040041 */   addiu     $a0, $zero, 0x41
    /* 4D660 8007D1B0 0C01C22E */  jal        func_800708B8_40D68
    /* 4D664 8007D1B4 24040042 */   addiu     $a0, $zero, 0x42
    /* 4D668 8007D1B8 16540005 */  bne        $s2, $s4, .L8007D1D0_4D680
    /* 4D66C 8007D1BC 00000000 */   nop
    /* 4D670 8007D1C0 0C01C22E */  jal        func_800708B8_40D68
    /* 4D674 8007D1C4 24040046 */   addiu     $a0, $zero, 0x46
    /* 4D678 8007D1C8 10000007 */  b          .L8007D1E8_4D698
    /* 4D67C 8007D1CC 00000000 */   nop
  .L8007D1D0_4D680:
    /* 4D680 8007D1D0 0C01C22E */  jal        func_800708B8_40D68
    /* 4D684 8007D1D4 24040043 */   addiu     $a0, $zero, 0x43
    /* 4D688 8007D1D8 0C01C22E */  jal        func_800708B8_40D68
    /* 4D68C 8007D1DC 24040044 */   addiu     $a0, $zero, 0x44
    /* 4D690 8007D1E0 0C01C22E */  jal        func_800708B8_40D68
    /* 4D694 8007D1E4 24040045 */   addiu     $a0, $zero, 0x45
  .L8007D1E8_4D698:
    /* 4D698 8007D1E8 12130006 */  beq        $s0, $s3, .L8007D204_4D6B4
    /* 4D69C 8007D1EC 3C098009 */   lui       $t1, %hi(D_800948F0)
    /* 4D6A0 8007D1F0 1A000004 */  blez       $s0, .L8007D204_4D6B4
    /* 4D6A4 8007D1F4 00000000 */   nop
    /* 4D6A8 8007D1F8 2610FFFF */  addiu      $s0, $s0, -0x1
    /* 4D6AC 8007D1FC 0010CC00 */  sll        $t9, $s0, 16
    /* 4D6B0 8007D200 00198403 */  sra        $s0, $t9, 16
  .L8007D204_4D6B4:
    /* 4D6B4 8007D204 8D2948F0 */  lw         $t1, %lo(D_800948F0)($t1)
    /* 4D6B8 8007D208 3C0BBA00 */  lui        $t3, (0xBA000E02 >> 16)
    /* 4D6BC 8007D20C 356B0E02 */  ori        $t3, $t3, (0xBA000E02 & 0xFFFF)
    /* 4D6C0 8007D210 2D210055 */  sltiu      $at, $t1, 0x55
    /* 4D6C4 8007D214 10200010 */  beqz       $at, .L8007D258_4D708
    /* 4D6C8 8007D218 00000000 */   nop
    /* 4D6CC 8007D21C 8E220000 */  lw         $v0, 0x0($s1)
    /* 4D6D0 8007D220 3C0DFCFF */  lui        $t5, (0xFCFFFFFF >> 16)
    /* 4D6D4 8007D224 3C0EFFFC */  lui        $t6, (0xFFFCF279 >> 16)
    /* 4D6D8 8007D228 244A0008 */  addiu      $t2, $v0, 0x8
    /* 4D6DC 8007D22C AE2A0000 */  sw         $t2, 0x0($s1)
    /* 4D6E0 8007D230 AC400004 */  sw         $zero, 0x4($v0)
    /* 4D6E4 8007D234 AC4B0000 */  sw         $t3, 0x0($v0)
    /* 4D6E8 8007D238 8E220000 */  lw         $v0, 0x0($s1)
    /* 4D6EC 8007D23C 35CEF279 */  ori        $t6, $t6, (0xFFFCF279 & 0xFFFF)
    /* 4D6F0 8007D240 35ADFFFF */  ori        $t5, $t5, (0xFCFFFFFF & 0xFFFF)
    /* 4D6F4 8007D244 244C0008 */  addiu      $t4, $v0, 0x8
    /* 4D6F8 8007D248 AE2C0000 */  sw         $t4, 0x0($s1)
    /* 4D6FC 8007D24C AC4E0004 */  sw         $t6, 0x4($v0)
    /* 4D700 8007D250 0C00394F */  jal        func_8000E53C_F13C
    /* 4D704 8007D254 AC4D0000 */   sw        $t5, 0x0($v0)
  .L8007D258_4D708:
    /* 4D708 8007D258 0C001417 */  jal        func_8000505C_5C5C
    /* 4D70C 8007D25C 00000000 */   nop
    /* 4D710 8007D260 1600FF71 */  bnez       $s0, .L8007D028_4D4D8
    /* 4D714 8007D264 00000000 */   nop
    /* 4D718 8007D268 0C002BF7 */  jal        func_8000AFDC_BBDC
    /* 4D71C 8007D26C 24140001 */   addiu     $s4, $zero, 0x1
    /* 4D720 8007D270 16540003 */  bne        $s2, $s4, .L8007D280_4D730
    /* 4D724 8007D274 8FB00020 */   lw        $s0, 0x20($sp)
    /* 4D728 8007D278 10000006 */  b          .L8007D294_4D744
    /* 4D72C 8007D27C 24020001 */   addiu     $v0, $zero, 0x1
  .L8007D280_4D730:
    /* 4D730 8007D280 24010003 */  addiu      $at, $zero, 0x3
    /* 4D734 8007D284 16410003 */  bne        $s2, $at, .L8007D294_4D744
    /* 4D738 8007D288 00001025 */   or        $v0, $zero, $zero
    /* 4D73C 8007D28C 10000001 */  b          .L8007D294_4D744
    /* 4D740 8007D290 24020002 */   addiu     $v0, $zero, 0x2
  .L8007D294_4D744:
    /* 4D744 8007D294 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 4D748 8007D298 8FB10024 */  lw         $s1, 0x24($sp)
    /* 4D74C 8007D29C 8FB20028 */  lw         $s2, 0x28($sp)
    /* 4D750 8007D2A0 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 4D754 8007D2A4 8FB40030 */  lw         $s4, 0x30($sp)
    /* 4D758 8007D2A8 03E00008 */  jr         $ra
    /* 4D75C 8007D2AC 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_8007CFB4_4D464
