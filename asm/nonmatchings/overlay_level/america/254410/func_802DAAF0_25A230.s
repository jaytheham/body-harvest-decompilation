nonmatching func_802DAAF0_25A230, 0x3EC

glabel func_802DAAF0_25A230
    /* 25A230 802DAAF0 308E00FF */  andi       $t6, $a0, 0xFF
    /* 25A234 802DAAF4 000E7880 */  sll        $t7, $t6, 2
    /* 25A238 802DAAF8 27BDFF60 */  addiu      $sp, $sp, -0xA0
    /* 25A23C 802DAAFC 01EE7821 */  addu       $t7, $t7, $t6
    /* 25A240 802DAB00 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 25A244 802DAB04 AFB00040 */  sw         $s0, 0x40($sp)
    /* 25A248 802DAB08 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 25A24C 802DAB0C 000F7900 */  sll        $t7, $t7, 4
    /* 25A250 802DAB10 01F88021 */  addu       $s0, $t7, $t8
    /* 25A254 802DAB14 8619000C */  lh         $t9, 0xC($s0)
    /* 25A258 802DAB18 AFA400A0 */  sw         $a0, 0xA0($sp)
    /* 25A25C 802DAB1C 01C02025 */  or         $a0, $t6, $zero
    /* 25A260 802DAB20 3C028015 */  lui        $v0, %hi(D_8014DD50)
    /* 25A264 802DAB24 2442DD50 */  addiu      $v0, $v0, %lo(D_8014DD50)
    /* 25A268 802DAB28 00197100 */  sll        $t6, $t9, 4
    /* 25A26C 802DAB2C 004E7821 */  addu       $t7, $v0, $t6
    /* 25A270 802DAB30 81EB000C */  lb         $t3, 0xC($t7)
    /* 25A274 802DAB34 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 25A278 802DAB38 27A70088 */  addiu      $a3, $sp, 0x88
    /* 25A27C 802DAB3C 000BC100 */  sll        $t8, $t3, 4
    /* 25A280 802DAB40 0058C821 */  addu       $t9, $v0, $t8
    /* 25A284 802DAB44 832C000C */  lb         $t4, 0xC($t9)
    /* 25A288 802DAB48 24050005 */  addiu      $a1, $zero, 0x5
    /* 25A28C 802DAB4C 24060006 */  addiu      $a2, $zero, 0x6
    /* 25A290 802DAB50 000C7100 */  sll        $t6, $t4, 4
    /* 25A294 802DAB54 004E7821 */  addu       $t7, $v0, $t6
    /* 25A298 802DAB58 81EA000C */  lb         $t2, 0xC($t7)
    /* 25A29C 802DAB5C 000AC100 */  sll        $t8, $t2, 4
    /* 25A2A0 802DAB60 0058C821 */  addu       $t9, $v0, $t8
    /* 25A2A4 802DAB64 8328000C */  lb         $t0, 0xC($t9)
    /* 25A2A8 802DAB68 8E190020 */  lw         $t9, 0x20($s0)
    /* 25A2AC 802DAB6C 00087100 */  sll        $t6, $t0, 4
    /* 25A2B0 802DAB70 004E1821 */  addu       $v1, $v0, $t6
    /* 25A2B4 802DAB74 8069000D */  lb         $t1, 0xD($v1)
    /* 25A2B8 802DAB78 001972C0 */  sll        $t6, $t9, 11
    /* 25A2BC 802DAB7C 806D000C */  lb         $t5, 0xC($v1)
    /* 25A2C0 802DAB80 00097900 */  sll        $t7, $t1, 4
    /* 25A2C4 802DAB84 004FC021 */  addu       $t8, $v0, $t7
    /* 25A2C8 802DAB88 05C00007 */  bltz       $t6, .L802DABA8_25A2E8
    /* 25A2CC 802DAB8C 831F000C */   lb        $ra, 0xC($t8)
    /* 25A2D0 802DAB90 240F0078 */  addiu      $t7, $zero, 0x78
    /* 25A2D4 802DAB94 24180001 */  addiu      $t8, $zero, 0x1
    /* 25A2D8 802DAB98 A60F002C */  sh         $t7, 0x2C($s0)
    /* 25A2DC 802DAB9C A2000036 */  sb         $zero, 0x36($s0)
    /* 25A2E0 802DABA0 100000C9 */  b          .L802DAEC8_25A608
    /* 25A2E4 802DABA4 A6180048 */   sh        $t8, 0x48($s0)
  .L802DABA8_25A2E8:
    /* 25A2E8 802DABA8 3C19802E */  lui        $t9, %hi(D_802E0640)
    /* 25A2EC 802DABAC 27390640 */  addiu      $t9, $t9, %lo(D_802E0640)
    /* 25A2F0 802DABB0 A7BF0092 */  sh         $ra, 0x92($sp)
    /* 25A2F4 802DABB4 A7AB0088 */  sh         $t3, 0x88($sp)
    /* 25A2F8 802DABB8 A7AC008A */  sh         $t4, 0x8A($sp)
    /* 25A2FC 802DABBC A7AA008C */  sh         $t2, 0x8C($sp)
    /* 25A300 802DABC0 A7A8008E */  sh         $t0, 0x8E($sp)
    /* 25A304 802DABC4 A7A90090 */  sh         $t1, 0x90($sp)
    /* 25A308 802DABC8 AFB90010 */  sw         $t9, 0x10($sp)
    /* 25A30C 802DABCC A3A400A3 */  sb         $a0, 0xA3($sp)
    /* 25A310 802DABD0 A7A80098 */  sh         $t0, 0x98($sp)
    /* 25A314 802DABD4 A7A90094 */  sh         $t1, 0x94($sp)
    /* 25A318 802DABD8 A7AA009A */  sh         $t2, 0x9A($sp)
    /* 25A31C 802DABDC A7AB009E */  sh         $t3, 0x9E($sp)
    /* 25A320 802DABE0 A7AC009C */  sh         $t4, 0x9C($sp)
    /* 25A324 802DABE4 0C0207C6 */  jal        func_80081F18_90EC8
    /* 25A328 802DABE8 A7AD0096 */   sh        $t5, 0x96($sp)
    /* 25A32C 802DABEC 24010006 */  addiu      $at, $zero, 0x6
    /* 25A330 802DABF0 87A80098 */  lh         $t0, 0x98($sp)
    /* 25A334 802DABF4 87A90094 */  lh         $t1, 0x94($sp)
    /* 25A338 802DABF8 87AD0096 */  lh         $t5, 0x96($sp)
    /* 25A33C 802DABFC 14410006 */  bne        $v0, $at, .L802DAC18_25A358
    /* 25A340 802DAC00 87BF0092 */   lh        $ra, 0x92($sp)
    /* 25A344 802DAC04 860E002C */  lh         $t6, 0x2C($s0)
    /* 25A348 802DAC08 29C10051 */  slti       $at, $t6, 0x51
    /* 25A34C 802DAC0C 54200003 */  bnel       $at, $zero, .L802DAC1C_25A35C
    /* 25A350 802DAC10 AFBF001C */   sw        $ra, 0x1C($sp)
    /* 25A354 802DAC14 A2000036 */  sb         $zero, 0x36($s0)
  .L802DAC18_25A358:
    /* 25A358 802DAC18 AFBF001C */  sw         $ra, 0x1C($sp)
  .L802DAC1C_25A35C:
    /* 25A35C 802DAC1C 93A400A3 */  lbu        $a0, 0xA3($sp)
    /* 25A360 802DAC20 87A5009E */  lh         $a1, 0x9E($sp)
    /* 25A364 802DAC24 87A6009C */  lh         $a2, 0x9C($sp)
    /* 25A368 802DAC28 87A7009A */  lh         $a3, 0x9A($sp)
    /* 25A36C 802DAC2C AFA80010 */  sw         $t0, 0x10($sp)
    /* 25A370 802DAC30 AFAD0014 */  sw         $t5, 0x14($sp)
    /* 25A374 802DAC34 0C0B6815 */  jal        func_802DA054_259794
    /* 25A378 802DAC38 AFA90018 */   sw        $t1, 0x18($sp)
    /* 25A37C 802DAC3C 86040000 */  lh         $a0, 0x0($s0)
    /* 25A380 802DAC40 0C02E134 */  jal        func_800B84D0_C7480
    /* 25A384 802DAC44 86050004 */   lh        $a1, 0x4($s0)
    /* 25A388 802DAC48 86040048 */  lh         $a0, 0x48($s0)
    /* 25A38C 802DAC4C 8619002C */  lh         $t9, 0x2C($s0)
    /* 25A390 802DAC50 00021A03 */  sra        $v1, $v0, 8
    /* 25A394 802DAC54 00837821 */  addu       $t7, $a0, $v1
    /* 25A398 802DAC58 25F80082 */  addiu      $t8, $t7, 0x82
    /* 25A39C 802DAC5C 2B210050 */  slti       $at, $t9, 0x50
    /* 25A3A0 802DAC60 10200024 */  beqz       $at, .L802DACF4_25A434
    /* 25A3A4 802DAC64 A6180002 */   sh        $t8, 0x2($s0)
    /* 25A3A8 802DAC68 248EFFFB */  addiu      $t6, $a0, -0x5
    /* 25A3AC 802DAC6C A60E0048 */  sh         $t6, 0x48($s0)
    /* 25A3B0 802DAC70 3C0F8005 */  lui        $t7, %hi(D_80052A8C)
    /* 25A3B4 802DAC74 8DEF2A8C */  lw         $t7, %lo(D_80052A8C)($t7)
    /* 25A3B8 802DAC78 3C198003 */  lui        $t9, %hi(D_80031420)
    /* 25A3BC 802DAC7C 31F80007 */  andi       $t8, $t7, 0x7
    /* 25A3C0 802DAC80 1700001C */  bnez       $t8, .L802DACF4_25A434
    /* 25A3C4 802DAC84 00000000 */   nop
    /* 25A3C8 802DAC88 8F391420 */  lw         $t9, %lo(D_80031420)($t9)
    /* 25A3CC 802DAC8C 2465FFF6 */  addiu      $a1, $v1, -0xA
    /* 25A3D0 802DAC90 00057C00 */  sll        $t7, $a1, 16
    /* 25A3D4 802DAC94 332E0003 */  andi       $t6, $t9, 0x3
    /* 25A3D8 802DAC98 11C00016 */  beqz       $t6, .L802DACF4_25A434
    /* 25A3DC 802DAC9C 000F2C03 */   sra       $a1, $t7, 16
    /* 25A3E0 802DACA0 24190001 */  addiu      $t9, $zero, 0x1
    /* 25A3E4 802DACA4 240E001E */  addiu      $t6, $zero, 0x1E
    /* 25A3E8 802DACA8 240F0008 */  addiu      $t7, $zero, 0x8
    /* 25A3EC 802DACAC AFAF0020 */  sw         $t7, 0x20($sp)
    /* 25A3F0 802DACB0 AFAE001C */  sw         $t6, 0x1C($sp)
    /* 25A3F4 802DACB4 AFB90018 */  sw         $t9, 0x18($sp)
    /* 25A3F8 802DACB8 241900C8 */  addiu      $t9, $zero, 0xC8
    /* 25A3FC 802DACBC 240E0064 */  addiu      $t6, $zero, 0x64
    /* 25A400 802DACC0 240F001E */  addiu      $t7, $zero, 0x1E
    /* 25A404 802DACC4 241800FF */  addiu      $t8, $zero, 0xFF
    /* 25A408 802DACC8 AFB80024 */  sw         $t8, 0x24($sp)
    /* 25A40C 802DACCC AFB80034 */  sw         $t8, 0x34($sp)
    /* 25A410 802DACD0 AFAF0030 */  sw         $t7, 0x30($sp)
    /* 25A414 802DACD4 AFAE002C */  sw         $t6, 0x2C($sp)
    /* 25A418 802DACD8 AFB90028 */  sw         $t9, 0x28($sp)
    /* 25A41C 802DACDC 86040000 */  lh         $a0, 0x0($s0)
    /* 25A420 802DACE0 86060004 */  lh         $a2, 0x4($s0)
    /* 25A424 802DACE4 00003825 */  or         $a3, $zero, $zero
    /* 25A428 802DACE8 AFA00010 */  sw         $zero, 0x10($sp)
    /* 25A42C 802DACEC 0C03297B */  jal        func_800CA5EC_D959C
    /* 25A430 802DACF0 AFA00014 */   sw        $zero, 0x14($sp)
  .L802DACF4_25A434:
    /* 25A434 802DACF4 3C198005 */  lui        $t9, %hi(D_80052A8C)
    /* 25A438 802DACF8 8F392A8C */  lw         $t9, %lo(D_80052A8C)($t9)
    /* 25A43C 802DACFC 3C0F8003 */  lui        $t7, %hi(D_80031420)
    /* 25A440 802DAD00 332E0007 */  andi       $t6, $t9, 0x7
    /* 25A444 802DAD04 55C00063 */  bnel       $t6, $zero, .L802DAE94_25A5D4
    /* 25A448 802DAD08 860E002C */   lh        $t6, 0x2C($s0)
    /* 25A44C 802DAD0C 8DEF1420 */  lw         $t7, %lo(D_80031420)($t7)
    /* 25A450 802DAD10 31F80003 */  andi       $t8, $t7, 0x3
    /* 25A454 802DAD14 5300005F */  beql       $t8, $zero, .L802DAE94_25A5D4
    /* 25A458 802DAD18 860E002C */   lh        $t6, 0x2C($s0)
    /* 25A45C 802DAD1C 86040006 */  lh         $a0, 0x6($s0)
    /* 25A460 802DAD20 24844000 */  addiu      $a0, $a0, 0x4000
    /* 25A464 802DAD24 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* 25A468 802DAD28 0C007660 */  jal        sins
    /* 25A46C 802DAD2C 03202025 */   or        $a0, $t9, $zero
    /* 25A470 802DAD30 44822000 */  mtc1       $v0, $f4
    /* 25A474 802DAD34 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 25A478 802DAD38 44815800 */  mtc1       $at, $f11
    /* 25A47C 802DAD3C 468021A0 */  cvt.s.w    $f6, $f4
    /* 25A480 802DAD40 44805000 */  mtc1       $zero, $f10
    /* 25A484 802DAD44 86040006 */  lh         $a0, 0x6($s0)
    /* 25A488 802DAD48 24844000 */  addiu      $a0, $a0, 0x4000
    /* 25A48C 802DAD4C 46003221 */  cvt.d.s    $f8, $f6
    /* 25A490 802DAD50 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* 25A494 802DAD54 462A4403 */  div.d      $f16, $f8, $f10
    /* 25A498 802DAD58 01C02025 */  or         $a0, $t6, $zero
    /* 25A49C 802DAD5C 462084A0 */  cvt.s.d    $f18, $f16
    /* 25A4A0 802DAD60 0C007654 */  jal        coss
    /* 25A4A4 802DAD64 E7B20070 */   swc1      $f18, 0x70($sp)
    /* 25A4A8 802DAD68 3C0F8004 */  lui        $t7, %hi(D_80047710)
    /* 25A4AC 802DAD6C 3C188004 */  lui        $t8, %hi(D_80047712)
    /* 25A4B0 802DAD70 3C198004 */  lui        $t9, %hi(D_80047714)
    /* 25A4B4 802DAD74 85EF7710 */  lh         $t7, %lo(D_80047710)($t7)
    /* 25A4B8 802DAD78 87187712 */  lh         $t8, %lo(D_80047712)($t8)
    /* 25A4BC 802DAD7C 87397714 */  lh         $t9, %lo(D_80047714)($t9)
    /* 25A4C0 802DAD80 83A4009B */  lb         $a0, 0x9B($sp)
    /* 25A4C4 802DAD84 27A50064 */  addiu      $a1, $sp, 0x64
    /* 25A4C8 802DAD88 27A60058 */  addiu      $a2, $sp, 0x58
    /* 25A4CC 802DAD8C A7AF0064 */  sh         $t7, 0x64($sp)
    /* 25A4D0 802DAD90 A7B80066 */  sh         $t8, 0x66($sp)
    /* 25A4D4 802DAD94 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25A4D8 802DAD98 A7B90068 */   sh        $t9, 0x68($sp)
    /* 25A4DC 802DAD9C 8FAE0058 */  lw         $t6, 0x58($sp)
    /* 25A4E0 802DADA0 8FAF005C */  lw         $t7, 0x5C($sp)
    /* 25A4E4 802DADA4 8FB80060 */  lw         $t8, 0x60($sp)
    /* 25A4E8 802DADA8 83A4009D */  lb         $a0, 0x9D($sp)
    /* 25A4EC 802DADAC 27A50064 */  addiu      $a1, $sp, 0x64
    /* 25A4F0 802DADB0 27A60058 */  addiu      $a2, $sp, 0x58
    /* 25A4F4 802DADB4 A7AE0064 */  sh         $t6, 0x64($sp)
    /* 25A4F8 802DADB8 A7AF0066 */  sh         $t7, 0x66($sp)
    /* 25A4FC 802DADBC 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25A500 802DADC0 A7B80068 */   sh        $t8, 0x68($sp)
    /* 25A504 802DADC4 8FB90058 */  lw         $t9, 0x58($sp)
    /* 25A508 802DADC8 8FAE005C */  lw         $t6, 0x5C($sp)
    /* 25A50C 802DADCC 8FAF0060 */  lw         $t7, 0x60($sp)
    /* 25A510 802DADD0 83A4009F */  lb         $a0, 0x9F($sp)
    /* 25A514 802DADD4 27A50064 */  addiu      $a1, $sp, 0x64
    /* 25A518 802DADD8 27A60058 */  addiu      $a2, $sp, 0x58
    /* 25A51C 802DADDC A7B90064 */  sh         $t9, 0x64($sp)
    /* 25A520 802DADE0 A7AE0066 */  sh         $t6, 0x66($sp)
    /* 25A524 802DADE4 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25A528 802DADE8 A7AF0068 */   sh        $t7, 0x68($sp)
    /* 25A52C 802DADEC 27B8007C */  addiu      $t8, $sp, 0x7C
    /* 25A530 802DADF0 27B90078 */  addiu      $t9, $sp, 0x78
    /* 25A534 802DADF4 27AE0074 */  addiu      $t6, $sp, 0x74
    /* 25A538 802DADF8 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 25A53C 802DADFC AFB90014 */  sw         $t9, 0x14($sp)
    /* 25A540 802DAE00 AFB80010 */  sw         $t8, 0x10($sp)
    /* 25A544 802DAE04 02002025 */  or         $a0, $s0, $zero
    /* 25A548 802DAE08 87A5005A */  lh         $a1, 0x5A($sp)
    /* 25A54C 802DAE0C 87A6005E */  lh         $a2, 0x5E($sp)
    /* 25A550 802DAE10 0C04A10A */  jal        func_80128428_1373D8
    /* 25A554 802DAE14 87A70062 */   lh        $a3, 0x62($sp)
    /* 25A558 802DAE18 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 25A55C 802DAE1C 44813000 */  mtc1       $at, $f6
    /* 25A560 802DAE20 C7A40070 */  lwc1       $f4, 0x70($sp)
    /* 25A564 802DAE24 240E0050 */  addiu      $t6, $zero, 0x50
    /* 25A568 802DAE28 240F0009 */  addiu      $t7, $zero, 0x9
    /* 25A56C 802DAE2C 46062202 */  mul.s      $f8, $f4, $f6
    /* 25A570 802DAE30 24190046 */  addiu      $t9, $zero, 0x46
    /* 25A574 802DAE34 AFB90024 */  sw         $t9, 0x24($sp)
    /* 25A578 802DAE38 AFAF001C */  sw         $t7, 0x1C($sp)
    /* 25A57C 802DAE3C AFAE0018 */  sw         $t6, 0x18($sp)
    /* 25A580 802DAE40 240E00C8 */  addiu      $t6, $zero, 0xC8
    /* 25A584 802DAE44 240F0064 */  addiu      $t7, $zero, 0x64
    /* 25A588 802DAE48 4600428D */  trunc.w.s  $f10, $f8
    /* 25A58C 802DAE4C 241900FF */  addiu      $t9, $zero, 0xFF
    /* 25A590 802DAE50 AFB90034 */  sw         $t9, 0x34($sp)
    /* 25A594 802DAE54 AFAF002C */  sw         $t7, 0x2C($sp)
    /* 25A598 802DAE58 44075000 */  mfc1       $a3, $f10
    /* 25A59C 802DAE5C AFAE0028 */  sw         $t6, 0x28($sp)
    /* 25A5A0 802DAE60 87A4007E */  lh         $a0, 0x7E($sp)
    /* 25A5A4 802DAE64 0007C600 */  sll        $t8, $a3, 24
    /* 25A5A8 802DAE68 00183E03 */  sra        $a3, $t8, 24
    /* 25A5AC 802DAE6C 24180006 */  addiu      $t8, $zero, 0x6
    /* 25A5B0 802DAE70 AFB80020 */  sw         $t8, 0x20($sp)
    /* 25A5B4 802DAE74 2418001E */  addiu      $t8, $zero, 0x1E
    /* 25A5B8 802DAE78 AFB80030 */  sw         $t8, 0x30($sp)
    /* 25A5BC 802DAE7C AFA70014 */  sw         $a3, 0x14($sp)
    /* 25A5C0 802DAE80 87A5007A */  lh         $a1, 0x7A($sp)
    /* 25A5C4 802DAE84 87A60076 */  lh         $a2, 0x76($sp)
    /* 25A5C8 802DAE88 0C03297B */  jal        func_800CA5EC_D959C
    /* 25A5CC 802DAE8C AFA00010 */   sw        $zero, 0x10($sp)
    /* 25A5D0 802DAE90 860E002C */  lh         $t6, 0x2C($s0)
  .L802DAE94_25A5D4:
    /* 25A5D4 802DAE94 3C0F8005 */  lui        $t7, %hi(D_80052A8C)
    /* 25A5D8 802DAE98 29C10029 */  slti       $at, $t6, 0x29
    /* 25A5DC 802DAE9C 5420000B */  bnel       $at, $zero, .L802DAECC_25A60C
    /* 25A5E0 802DAEA0 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 25A5E4 802DAEA4 8DEF2A8C */  lw         $t7, %lo(D_80052A8C)($t7)
    /* 25A5E8 802DAEA8 2401000C */  addiu      $at, $zero, 0xC
    /* 25A5EC 802DAEAC 93A400A3 */  lbu        $a0, 0xA3($sp)
    /* 25A5F0 802DAEB0 01E1001B */  divu       $zero, $t7, $at
    /* 25A5F4 802DAEB4 0000C010 */  mfhi       $t8
    /* 25A5F8 802DAEB8 57000004 */  bnel       $t8, $zero, .L802DAECC_25A60C
    /* 25A5FC 802DAEBC 8FBF0044 */   lw        $ra, 0x44($sp)
    /* 25A600 802DAEC0 0C0B6848 */  jal        func_802DA120_259860
    /* 25A604 802DAEC4 00002825 */   or        $a1, $zero, $zero
  .L802DAEC8_25A608:
    /* 25A608 802DAEC8 8FBF0044 */  lw         $ra, 0x44($sp)
  .L802DAECC_25A60C:
    /* 25A60C 802DAECC 8FB00040 */  lw         $s0, 0x40($sp)
    /* 25A610 802DAED0 27BD00A0 */  addiu      $sp, $sp, 0xA0
    /* 25A614 802DAED4 03E00008 */  jr         $ra
    /* 25A618 802DAED8 00000000 */   nop
endlabel func_802DAAF0_25A230
