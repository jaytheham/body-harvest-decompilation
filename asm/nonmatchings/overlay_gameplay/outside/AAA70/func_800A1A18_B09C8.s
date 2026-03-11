nonmatching func_800A1A18_B09C8, 0x3C0

glabel func_800A1A18_B09C8
    /* B09C8 800A1A18 3C0E8004 */  lui        $t6, %hi(currentControllerStates)
    /* B09CC 800A1A1C 95CE7588 */  lhu        $t6, %lo(currentControllerStates)($t6)
    /* B09D0 800A1A20 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* B09D4 800A1A24 AFBF001C */  sw         $ra, 0x1C($sp)
    /* B09D8 800A1A28 31CF0010 */  andi       $t7, $t6, 0x10
    /* B09DC 800A1A2C 15E00005 */  bnez       $t7, .L800A1A44_B09F4
    /* B09E0 800A1A30 AFB00018 */   sw        $s0, 0x18($sp)
    /* B09E4 800A1A34 3C188005 */  lui        $t8, %hi(D_80052B34)
    /* B09E8 800A1A38 8F182B34 */  lw         $t8, %lo(D_80052B34)($t8)
    /* B09EC 800A1A3C 9319001A */  lbu        $t9, 0x1A($t8)
    /* B09F0 800A1A40 13200010 */  beqz       $t9, .L800A1A84_B0A34
  .L800A1A44_B09F4:
    /* B09F4 800A1A44 3C048014 */   lui       $a0, %hi(D_8013D5B4)
    /* B09F8 800A1A48 2484D5B4 */  addiu      $a0, $a0, %lo(D_8013D5B4)
    /* B09FC 800A1A4C 84820000 */  lh         $v0, 0x0($a0)
    /* B0A00 800A1A50 24010003 */  addiu      $at, $zero, 0x3
    /* B0A04 800A1A54 3C108015 */  lui        $s0, %hi(D_8014F618)
    /* B0A08 800A1A58 10410008 */  beq        $v0, $at, .L800A1A7C_B0A2C
    /* B0A0C 800A1A5C 2610F618 */   addiu     $s0, $s0, %lo(D_8014F618)
    /* B0A10 800A1A60 24080001 */  addiu      $t0, $zero, 0x1
    /* B0A14 800A1A64 A4880000 */  sh         $t0, 0x0($a0)
    /* B0A18 800A1A68 240900B4 */  addiu      $t1, $zero, 0xB4
    /* B0A1C 800A1A6C 240A00A0 */  addiu      $t2, $zero, 0xA0
    /* B0A20 800A1A70 A209006A */  sb         $t1, 0x6A($s0)
    /* B0A24 800A1A74 A20A006C */  sb         $t2, 0x6C($s0)
    /* B0A28 800A1A78 84820000 */  lh         $v0, 0x0($a0)
  .L800A1A7C_B0A2C:
    /* B0A2C 800A1A7C 1000000C */  b          .L800A1AB0_B0A60
    /* B0A30 800A1A80 00000000 */   nop
  .L800A1A84_B0A34:
    /* B0A34 800A1A84 3C048014 */  lui        $a0, %hi(D_8013D5B4)
    /* B0A38 800A1A88 2484D5B4 */  addiu      $a0, $a0, %lo(D_8013D5B4)
    /* B0A3C 800A1A8C 84820000 */  lh         $v0, 0x0($a0)
    /* B0A40 800A1A90 10400007 */  beqz       $v0, .L800A1AB0_B0A60
    /* B0A44 800A1A94 3C108015 */   lui       $s0, %hi(D_8014F618)
    /* B0A48 800A1A98 2610F618 */  addiu      $s0, $s0, %lo(D_8014F618)
    /* B0A4C 800A1A9C 240B0002 */  addiu      $t3, $zero, 0x2
    /* B0A50 800A1AA0 A48B0000 */  sh         $t3, 0x0($a0)
    /* B0A54 800A1AA4 A200006A */  sb         $zero, 0x6A($s0)
    /* B0A58 800A1AA8 84820000 */  lh         $v0, 0x0($a0)
    /* B0A5C 800A1AAC A200006C */  sb         $zero, 0x6C($s0)
  .L800A1AB0_B0A60:
    /* B0A60 800A1AB0 3C108015 */  lui        $s0, %hi(D_8014F618)
    /* B0A64 800A1AB4 24010001 */  addiu      $at, $zero, 0x1
    /* B0A68 800A1AB8 1441000F */  bne        $v0, $at, .L800A1AF8_B0AA8
    /* B0A6C 800A1ABC 2610F618 */   addiu     $s0, $s0, %lo(D_8014F618)
    /* B0A70 800A1AC0 3C038014 */  lui        $v1, %hi(D_8013D5B8)
    /* B0A74 800A1AC4 2463D5B8 */  addiu      $v1, $v1, %lo(D_8013D5B8)
    /* B0A78 800A1AC8 846C0000 */  lh         $t4, 0x0($v1)
    /* B0A7C 800A1ACC 240F0003 */  addiu      $t7, $zero, 0x3
    /* B0A80 800A1AD0 241800FF */  addiu      $t8, $zero, 0xFF
    /* B0A84 800A1AD4 258D0010 */  addiu      $t5, $t4, 0x10
    /* B0A88 800A1AD8 A46D0000 */  sh         $t5, 0x0($v1)
    /* B0A8C 800A1ADC 846E0000 */  lh         $t6, 0x0($v1)
    /* B0A90 800A1AE0 29C100F1 */  slti       $at, $t6, 0xF1
    /* B0A94 800A1AE4 14200004 */  bnez       $at, .L800A1AF8_B0AA8
    /* B0A98 800A1AE8 00000000 */   nop
    /* B0A9C 800A1AEC A48F0000 */  sh         $t7, 0x0($a0)
    /* B0AA0 800A1AF0 84820000 */  lh         $v0, 0x0($a0)
    /* B0AA4 800A1AF4 A4780000 */  sh         $t8, 0x0($v1)
  .L800A1AF8_B0AA8:
    /* B0AA8 800A1AF8 3C038014 */  lui        $v1, %hi(D_8013D5B8)
    /* B0AAC 800A1AFC 24010002 */  addiu      $at, $zero, 0x2
    /* B0AB0 800A1B00 1441000A */  bne        $v0, $at, .L800A1B2C_B0ADC
    /* B0AB4 800A1B04 2463D5B8 */   addiu     $v1, $v1, %lo(D_8013D5B8)
    /* B0AB8 800A1B08 84790000 */  lh         $t9, 0x0($v1)
    /* B0ABC 800A1B0C 2728FFE0 */  addiu      $t0, $t9, -0x20
    /* B0AC0 800A1B10 A4680000 */  sh         $t0, 0x0($v1)
    /* B0AC4 800A1B14 84690000 */  lh         $t1, 0x0($v1)
    /* B0AC8 800A1B18 29210020 */  slti       $at, $t1, 0x20
    /* B0ACC 800A1B1C 10200003 */  beqz       $at, .L800A1B2C_B0ADC
    /* B0AD0 800A1B20 00000000 */   nop
    /* B0AD4 800A1B24 A4800000 */  sh         $zero, 0x0($a0)
    /* B0AD8 800A1B28 A4600000 */  sh         $zero, 0x0($v1)
  .L800A1B2C_B0ADC:
    /* B0ADC 800A1B2C 3C0A8016 */  lui        $t2, %hi(D_80158FEC)
    /* B0AE0 800A1B30 8D4A8FEC */  lw         $t2, %lo(D_80158FEC)($t2)
    /* B0AE4 800A1B34 1540000E */  bnez       $t2, .L800A1B70_B0B20
    /* B0AE8 800A1B38 3C0B8016 */   lui       $t3, %hi(D_80158FE8)
    /* B0AEC 800A1B3C 8D6B8FE8 */  lw         $t3, %lo(D_80158FE8)($t3)
    /* B0AF0 800A1B40 11600006 */  beqz       $t3, .L800A1B5C_B0B0C
    /* B0AF4 800A1B44 00000000 */   nop
    /* B0AF8 800A1B48 0C028633 */  jal        func_800A18CC_B087C
    /* B0AFC 800A1B4C 00000000 */   nop
    /* B0B00 800A1B50 3C048014 */  lui        $a0, %hi(D_8013D5B4)
    /* B0B04 800A1B54 14400006 */  bnez       $v0, .L800A1B70_B0B20
    /* B0B08 800A1B58 2484D5B4 */   addiu     $a0, $a0, %lo(D_8013D5B4)
  .L800A1B5C_B0B0C:
    /* B0B0C 800A1B5C 3C0C8016 */  lui        $t4, %hi(D_801591B4)
    /* B0B10 800A1B60 8D8C91B4 */  lw         $t4, %lo(D_801591B4)($t4)
    /* B0B14 800A1B64 2401000E */  addiu      $at, $zero, 0xE
    /* B0B18 800A1B68 15810039 */  bne        $t4, $at, .L800A1C50_B0C00
    /* B0B1C 800A1B6C 00000000 */   nop
  .L800A1B70_B0B20:
    /* B0B20 800A1B70 848D0000 */  lh         $t5, 0x0($a0)
    /* B0B24 800A1B74 24010003 */  addiu      $at, $zero, 0x3
    /* B0B28 800A1B78 3C038014 */  lui        $v1, %hi(D_8013D5BC)
    /* B0B2C 800A1B7C 15A10034 */  bne        $t5, $at, .L800A1C50_B0C00
    /* B0B30 800A1B80 00000000 */   nop
    /* B0B34 800A1B84 8463D5BC */  lh         $v1, %lo(D_8013D5BC)($v1)
    /* B0B38 800A1B88 240E0001 */  addiu      $t6, $zero, 0x1
    /* B0B3C 800A1B8C 3C018014 */  lui        $at, %hi(D_8013D5BC)
    /* B0B40 800A1B90 1460001B */  bnez       $v1, .L800A1C00_B0BB0
    /* B0B44 800A1B94 240F000A */   addiu     $t7, $zero, 0xA
    /* B0B48 800A1B98 A42ED5BC */  sh         $t6, %lo(D_8013D5BC)($at)
    /* B0B4C 800A1B9C 3C018014 */  lui        $at, %hi(D_8013D5C0)
    /* B0B50 800A1BA0 A42FD5C0 */  sh         $t7, %lo(D_8013D5C0)($at)
    /* B0B54 800A1BA4 0C0050F1 */  jal        func_800143C4_14FC4
    /* B0B58 800A1BA8 24040154 */   addiu     $a0, $zero, 0x154
    /* B0B5C 800A1BAC 3C018015 */  lui        $at, %hi(D_8014F698)
    /* B0B60 800A1BB0 A422F698 */  sh         $v0, %lo(D_8014F698)($at)
    /* B0B64 800A1BB4 240400C8 */  addiu      $a0, $zero, 0xC8
    /* B0B68 800A1BB8 24050028 */  addiu      $a1, $zero, 0x28
    /* B0B6C 800A1BBC 2406000A */  addiu      $a2, $zero, 0xA
    /* B0B70 800A1BC0 241800DC */  addiu      $t8, $zero, 0xDC
    /* B0B74 800A1BC4 A2040074 */  sb         $a0, 0x74($s0)
    /* B0B78 800A1BC8 A2060075 */  sb         $a2, 0x75($s0)
    /* B0B7C 800A1BCC A2050076 */  sb         $a1, 0x76($s0)
    /* B0B80 800A1BD0 A204007D */  sb         $a0, 0x7D($s0)
    /* B0B84 800A1BD4 A206007E */  sb         $a2, 0x7E($s0)
    /* B0B88 800A1BD8 A205007F */  sb         $a1, 0x7F($s0)
    /* B0B8C 800A1BDC A2040071 */  sb         $a0, 0x71($s0)
    /* B0B90 800A1BE0 A2060072 */  sb         $a2, 0x72($s0)
    /* B0B94 800A1BE4 A2050073 */  sb         $a1, 0x73($s0)
    /* B0B98 800A1BE8 A204007A */  sb         $a0, 0x7A($s0)
    /* B0B9C 800A1BEC A206007B */  sb         $a2, 0x7B($s0)
    /* B0BA0 800A1BF0 A205007C */  sb         $a1, 0x7C($s0)
    /* B0BA4 800A1BF4 A218006C */  sb         $t8, 0x6C($s0)
    /* B0BA8 800A1BF8 3C038014 */  lui        $v1, %hi(D_8013D5BC)
    /* B0BAC 800A1BFC 8463D5BC */  lh         $v1, %lo(D_8013D5BC)($v1)
  .L800A1C00_B0BB0:
    /* B0BB0 800A1C00 3C078014 */  lui        $a3, %hi(D_8013D5C0)
    /* B0BB4 800A1C04 24010001 */  addiu      $at, $zero, 0x1
    /* B0BB8 800A1C08 14610028 */  bne        $v1, $at, .L800A1CAC_B0C5C
    /* B0BBC 800A1C0C 24E7D5C0 */   addiu     $a3, $a3, %lo(D_8013D5C0)
    /* B0BC0 800A1C10 84F90000 */  lh         $t9, 0x0($a3)
    /* B0BC4 800A1C14 240A0002 */  addiu      $t2, $zero, 0x2
    /* B0BC8 800A1C18 3C018014 */  lui        $at, %hi(D_8013D5BC)
    /* B0BCC 800A1C1C 2728FFFF */  addiu      $t0, $t9, -0x1
    /* B0BD0 800A1C20 A4E80000 */  sh         $t0, 0x0($a3)
    /* B0BD4 800A1C24 84E90000 */  lh         $t1, 0x0($a3)
    /* B0BD8 800A1C28 00002025 */  or         $a0, $zero, $zero
    /* B0BDC 800A1C2C 55200020 */  bnel       $t1, $zero, .L800A1CB0_B0C60
    /* B0BE0 800A1C30 9204007A */   lbu       $a0, 0x7A($s0)
    /* B0BE4 800A1C34 0C04DC6C */  jal        func_801371B0_146160
    /* B0BE8 800A1C38 A42AD5BC */   sh        $t2, %lo(D_8013D5BC)($at)
    /* B0BEC 800A1C3C 240B00FF */  addiu      $t3, $zero, 0xFF
    /* B0BF0 800A1C40 240C0001 */  addiu      $t4, $zero, 0x1
    /* B0BF4 800A1C44 A20B006E */  sb         $t3, 0x6E($s0)
    /* B0BF8 800A1C48 10000018 */  b          .L800A1CAC_B0C5C
    /* B0BFC 800A1C4C A20C0070 */   sb        $t4, 0x70($s0)
  .L800A1C50_B0C00:
    /* B0C00 800A1C50 3C0D8014 */  lui        $t5, %hi(D_8013D768)
    /* B0C04 800A1C54 91ADD768 */  lbu        $t5, %lo(D_8013D768)($t5)
    /* B0C08 800A1C58 3C018014 */  lui        $at, %hi(D_8013D5BC)
    /* B0C0C 800A1C5C A420D5BC */  sh         $zero, %lo(D_8013D5BC)($at)
    /* B0C10 800A1C60 24010001 */  addiu      $at, $zero, 0x1
    /* B0C14 800A1C64 15A10003 */  bne        $t5, $at, .L800A1C74_B0C24
    /* B0C18 800A1C68 3C048015 */   lui       $a0, %hi(D_8014F698)
    /* B0C1C 800A1C6C 0C005632 */  jal        func_800158C8_164C8
    /* B0C20 800A1C70 8484F698 */   lh        $a0, %lo(D_8014F698)($a0)
  .L800A1C74_B0C24:
    /* B0C24 800A1C74 2402001E */  addiu      $v0, $zero, 0x1E
    /* B0C28 800A1C78 2406000A */  addiu      $a2, $zero, 0xA
    /* B0C2C 800A1C7C 240E0014 */  addiu      $t6, $zero, 0x14
    /* B0C30 800A1C80 240F00E6 */  addiu      $t7, $zero, 0xE6
    /* B0C34 800A1C84 24180096 */  addiu      $t8, $zero, 0x96
    /* B0C38 800A1C88 241900A0 */  addiu      $t9, $zero, 0xA0
    /* B0C3C 800A1C8C A20E0074 */  sb         $t6, 0x74($s0)
    /* B0C40 800A1C90 A20F0075 */  sb         $t7, 0x75($s0)
    /* B0C44 800A1C94 A2020076 */  sb         $v0, 0x76($s0)
    /* B0C48 800A1C98 A206007D */  sb         $a2, 0x7D($s0)
    /* B0C4C 800A1C9C A202007E */  sb         $v0, 0x7E($s0)
    /* B0C50 800A1CA0 A218007F */  sb         $t8, 0x7F($s0)
    /* B0C54 800A1CA4 A219006C */  sb         $t9, 0x6C($s0)
    /* B0C58 800A1CA8 A2000070 */  sb         $zero, 0x70($s0)
  .L800A1CAC_B0C5C:
    /* B0C5C 800A1CAC 9204007A */  lbu        $a0, 0x7A($s0)
  .L800A1CB0_B0C60:
    /* B0C60 800A1CB0 9205007D */  lbu        $a1, 0x7D($s0)
    /* B0C64 800A1CB4 0C02860A */  jal        func_800A1828_B07D8
    /* B0C68 800A1CB8 24060014 */   addiu     $a2, $zero, 0x14
    /* B0C6C 800A1CBC A202007A */  sb         $v0, 0x7A($s0)
    /* B0C70 800A1CC0 9204007B */  lbu        $a0, 0x7B($s0)
    /* B0C74 800A1CC4 9205007E */  lbu        $a1, 0x7E($s0)
    /* B0C78 800A1CC8 0C02860A */  jal        func_800A1828_B07D8
    /* B0C7C 800A1CCC 24060014 */   addiu     $a2, $zero, 0x14
    /* B0C80 800A1CD0 A202007B */  sb         $v0, 0x7B($s0)
    /* B0C84 800A1CD4 9204007C */  lbu        $a0, 0x7C($s0)
    /* B0C88 800A1CD8 9205007F */  lbu        $a1, 0x7F($s0)
    /* B0C8C 800A1CDC 0C02860A */  jal        func_800A1828_B07D8
    /* B0C90 800A1CE0 24060014 */   addiu     $a2, $zero, 0x14
    /* B0C94 800A1CE4 A202007C */  sb         $v0, 0x7C($s0)
    /* B0C98 800A1CE8 9204006B */  lbu        $a0, 0x6B($s0)
    /* B0C9C 800A1CEC 9205006C */  lbu        $a1, 0x6C($s0)
    /* B0CA0 800A1CF0 0C02860A */  jal        func_800A1828_B07D8
    /* B0CA4 800A1CF4 2406000A */   addiu     $a2, $zero, 0xA
    /* B0CA8 800A1CF8 A202006B */  sb         $v0, 0x6B($s0)
    /* B0CAC 800A1CFC 92040069 */  lbu        $a0, 0x69($s0)
    /* B0CB0 800A1D00 9205006A */  lbu        $a1, 0x6A($s0)
    /* B0CB4 800A1D04 0C02860A */  jal        func_800A1828_B07D8
    /* B0CB8 800A1D08 2406000A */   addiu     $a2, $zero, 0xA
    /* B0CBC 800A1D0C A2020069 */  sb         $v0, 0x69($s0)
    /* B0CC0 800A1D10 92040068 */  lbu        $a0, 0x68($s0)
    /* B0CC4 800A1D14 92050067 */  lbu        $a1, 0x67($s0)
    /* B0CC8 800A1D18 0C02860A */  jal        func_800A1828_B07D8
    /* B0CCC 800A1D1C 2406000A */   addiu     $a2, $zero, 0xA
    /* B0CD0 800A1D20 A2020068 */  sb         $v0, 0x68($s0)
    /* B0CD4 800A1D24 3C038014 */  lui        $v1, %hi(D_8013D5BC)
    /* B0CD8 800A1D28 8463D5BC */  lh         $v1, %lo(D_8013D5BC)($v1)
    /* B0CDC 800A1D2C 24010001 */  addiu      $at, $zero, 0x1
    /* B0CE0 800A1D30 54610006 */  bnel       $v1, $at, .L800A1D4C_B0CFC
    /* B0CE4 800A1D34 24010002 */   addiu     $at, $zero, 0x2
    /* B0CE8 800A1D38 9208006D */  lbu        $t0, 0x6D($s0)
    /* B0CEC 800A1D3C 2509000A */  addiu      $t1, $t0, 0xA
    /* B0CF0 800A1D40 1000001F */  b          .L800A1DC0_B0D70
    /* B0CF4 800A1D44 A209006D */   sb        $t1, 0x6D($s0)
    /* B0CF8 800A1D48 24010002 */  addiu      $at, $zero, 0x2
  .L800A1D4C_B0CFC:
    /* B0CFC 800A1D4C 14610009 */  bne        $v1, $at, .L800A1D74_B0D24
    /* B0D00 800A1D50 24060014 */   addiu     $a2, $zero, 0x14
    /* B0D04 800A1D54 9204006D */  lbu        $a0, 0x6D($s0)
    /* B0D08 800A1D58 9205006E */  lbu        $a1, 0x6E($s0)
    /* B0D0C 800A1D5C 0C02860A */  jal        func_800A1828_B07D8
    /* B0D10 800A1D60 24060014 */   addiu     $a2, $zero, 0x14
    /* B0D14 800A1D64 A202006D */  sb         $v0, 0x6D($s0)
    /* B0D18 800A1D68 3C038014 */  lui        $v1, %hi(D_8013D5BC)
    /* B0D1C 800A1D6C 10000014 */  b          .L800A1DC0_B0D70
    /* B0D20 800A1D70 8463D5BC */   lh        $v1, %lo(D_8013D5BC)($v1)
  .L800A1D74_B0D24:
    /* B0D24 800A1D74 92040071 */  lbu        $a0, 0x71($s0)
    /* B0D28 800A1D78 0C02860A */  jal        func_800A1828_B07D8
    /* B0D2C 800A1D7C 92050074 */   lbu       $a1, 0x74($s0)
    /* B0D30 800A1D80 A2020071 */  sb         $v0, 0x71($s0)
    /* B0D34 800A1D84 92040072 */  lbu        $a0, 0x72($s0)
    /* B0D38 800A1D88 92050075 */  lbu        $a1, 0x75($s0)
    /* B0D3C 800A1D8C 0C02860A */  jal        func_800A1828_B07D8
    /* B0D40 800A1D90 24060014 */   addiu     $a2, $zero, 0x14
    /* B0D44 800A1D94 A2020072 */  sb         $v0, 0x72($s0)
    /* B0D48 800A1D98 92040073 */  lbu        $a0, 0x73($s0)
    /* B0D4C 800A1D9C 92050076 */  lbu        $a1, 0x76($s0)
    /* B0D50 800A1DA0 0C02860A */  jal        func_800A1828_B07D8
    /* B0D54 800A1DA4 24060014 */   addiu     $a2, $zero, 0x14
    /* B0D58 800A1DA8 920A006D */  lbu        $t2, 0x6D($s0)
    /* B0D5C 800A1DAC A2020073 */  sb         $v0, 0x73($s0)
    /* B0D60 800A1DB0 3C038014 */  lui        $v1, %hi(D_8013D5BC)
    /* B0D64 800A1DB4 254B0002 */  addiu      $t3, $t2, 0x2
    /* B0D68 800A1DB8 A20B006D */  sb         $t3, 0x6D($s0)
    /* B0D6C 800A1DBC 8463D5BC */  lh         $v1, %lo(D_8013D5BC)($v1)
  .L800A1DC0_B0D70:
    /* B0D70 800A1DC0 8FBF001C */  lw         $ra, 0x1C($sp)
    /* B0D74 800A1DC4 3C018014 */  lui        $at, %hi(D_8013D768)
    /* B0D78 800A1DC8 8FB00018 */  lw         $s0, 0x18($sp)
    /* B0D7C 800A1DCC A023D768 */  sb         $v1, %lo(D_8013D768)($at)
    /* B0D80 800A1DD0 03E00008 */  jr         $ra
    /* B0D84 800A1DD4 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_800A1A18_B09C8
