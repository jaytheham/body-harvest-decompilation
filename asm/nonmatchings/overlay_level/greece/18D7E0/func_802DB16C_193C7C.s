nonmatching func_802DB16C_193C7C, 0x894

glabel func_802DB16C_193C7C
    /* 193C7C 802DB16C 27BDFF60 */  addiu      $sp, $sp, -0xA0
    /* 193C80 802DB170 AFB0003C */  sw         $s0, 0x3C($sp)
    /* 193C84 802DB174 309000FF */  andi       $s0, $a0, 0xFF
    /* 193C88 802DB178 00107080 */  sll        $t6, $s0, 2
    /* 193C8C 802DB17C 01D07021 */  addu       $t6, $t6, $s0
    /* 193C90 802DB180 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 193C94 802DB184 AFB10040 */  sw         $s1, 0x40($sp)
    /* 193C98 802DB188 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 193C9C 802DB18C 000E7100 */  sll        $t6, $t6, 4
    /* 193CA0 802DB190 01CF8821 */  addu       $s1, $t6, $t7
    /* 193CA4 802DB194 8622000C */  lh         $v0, 0xC($s1)
    /* 193CA8 802DB198 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 193CAC 802DB19C 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 193CB0 802DB1A0 0002C900 */  sll        $t9, $v0, 4
    /* 193CB4 802DB1A4 01195021 */  addu       $t2, $t0, $t9
    /* 193CB8 802DB1A8 8147000C */  lb         $a3, 0xC($t2)
    /* 193CBC 802DB1AC 8E230020 */  lw         $v1, 0x20($s1)
    /* 193CC0 802DB1B0 9238001A */  lbu        $t8, 0x1A($s1)
    /* 193CC4 802DB1B4 00075900 */  sll        $t3, $a3, 4
    /* 193CC8 802DB1B8 010B6021 */  addu       $t4, $t0, $t3
    /* 193CCC 802DB1BC 818D000C */  lb         $t5, 0xC($t4)
    /* 193CD0 802DB1C0 306E4000 */  andi       $t6, $v1, 0x4000
    /* 193CD4 802DB1C4 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 193CD8 802DB1C8 AFA400A0 */  sw         $a0, 0xA0($sp)
    /* 193CDC 802DB1CC AFA500A4 */  sw         $a1, 0xA4($sp)
    /* 193CE0 802DB1D0 AFA600A8 */  sw         $a2, 0xA8($sp)
    /* 193CE4 802DB1D4 A7A2007C */  sh         $v0, 0x7C($sp)
    /* 193CE8 802DB1D8 A7A70078 */  sh         $a3, 0x78($sp)
    /* 193CEC 802DB1DC A3B8009F */  sb         $t8, 0x9F($sp)
    /* 193CF0 802DB1E0 11C00116 */  beqz       $t6, .L802DB63C_19414C
    /* 193CF4 802DB1E4 A7AD007A */   sh        $t5, 0x7A($sp)
    /* 193CF8 802DB1E8 8FAF00A4 */  lw         $t7, 0xA4($sp)
    /* 193CFC 802DB1EC 320400FF */  andi       $a0, $s0, 0xFF
    /* 193D00 802DB1F0 24050003 */  addiu      $a1, $zero, 0x3
    /* 193D04 802DB1F4 24060004 */  addiu      $a2, $zero, 0x4
    /* 193D08 802DB1F8 27A70078 */  addiu      $a3, $sp, 0x78
    /* 193D0C 802DB1FC 0C0207C6 */  jal        func_80081F18_90EC8
    /* 193D10 802DB200 AFAF0010 */   sw        $t7, 0x10($sp)
    /* 193D14 802DB204 305800FF */  andi       $t8, $v0, 0xFF
    /* 193D18 802DB208 24010004 */  addiu      $at, $zero, 0x4
    /* 193D1C 802DB20C 57010006 */  bnel       $t8, $at, .L802DB228_193D38
    /* 193D20 802DB210 922B0036 */   lbu       $t3, 0x36($s1)
    /* 193D24 802DB214 8E390020 */  lw         $t9, 0x20($s1)
    /* 193D28 802DB218 2401BFFF */  addiu      $at, $zero, -0x4001
    /* 193D2C 802DB21C 03215024 */  and        $t2, $t9, $at
    /* 193D30 802DB220 AE2A0020 */  sw         $t2, 0x20($s1)
    /* 193D34 802DB224 922B0036 */  lbu        $t3, 0x36($s1)
  .L802DB228_193D38:
    /* 193D38 802DB228 87A70078 */  lh         $a3, 0x78($sp)
    /* 193D3C 802DB22C 24010002 */  addiu      $at, $zero, 0x2
    /* 193D40 802DB230 15610100 */  bne        $t3, $at, .L802DB634_194144
    /* 193D44 802DB234 00076100 */   sll       $t4, $a3, 4
    /* 193D48 802DB238 3C0D8015 */  lui        $t5, %hi(D_8014DD5E)
    /* 193D4C 802DB23C 01AC6821 */  addu       $t5, $t5, $t4
    /* 193D50 802DB240 85ADDD5E */  lh         $t5, %lo(D_8014DD5E)($t5)
    /* 193D54 802DB244 02202025 */  or         $a0, $s1, $zero
    /* 193D58 802DB248 24050001 */  addiu      $a1, $zero, 0x1
    /* 193D5C 802DB24C 15A000F9 */  bnez       $t5, .L802DB634_194144
    /* 193D60 802DB250 27A60088 */   addiu     $a2, $sp, 0x88
    /* 193D64 802DB254 27AE0080 */  addiu      $t6, $sp, 0x80
    /* 193D68 802DB258 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 193D6C 802DB25C 0C04A141 */  jal        func_80128504_1374B4
    /* 193D70 802DB260 27A70084 */   addiu     $a3, $sp, 0x84
    /* 193D74 802DB264 8FA50084 */  lw         $a1, 0x84($sp)
    /* 193D78 802DB268 2419000A */  addiu      $t9, $zero, 0xA
    /* 193D7C 802DB26C AFB90010 */  sw         $t9, 0x10($sp)
    /* 193D80 802DB270 24A50005 */  addiu      $a1, $a1, 0x5
    /* 193D84 802DB274 00057C00 */  sll        $t7, $a1, 16
    /* 193D88 802DB278 000F2C03 */  sra        $a1, $t7, 16
    /* 193D8C 802DB27C 87A4008A */  lh         $a0, 0x8A($sp)
    /* 193D90 802DB280 87A60082 */  lh         $a2, 0x82($sp)
    /* 193D94 802DB284 0C037B97 */  jal        func_800DEE5C_EDE0C
    /* 193D98 802DB288 24070050 */   addiu     $a3, $zero, 0x50
    /* 193D9C 802DB28C 240A0008 */  addiu      $t2, $zero, 0x8
    /* 193DA0 802DB290 240B0006 */  addiu      $t3, $zero, 0x6
    /* 193DA4 802DB294 240C0028 */  addiu      $t4, $zero, 0x28
    /* 193DA8 802DB298 240D00DC */  addiu      $t5, $zero, 0xDC
    /* 193DAC 802DB29C 240E00A6 */  addiu      $t6, $zero, 0xA6
    /* 193DB0 802DB2A0 240F0085 */  addiu      $t7, $zero, 0x85
    /* 193DB4 802DB2A4 2418002F */  addiu      $t8, $zero, 0x2F
    /* 193DB8 802DB2A8 AFB80028 */  sw         $t8, 0x28($sp)
    /* 193DBC 802DB2AC AFAF0024 */  sw         $t7, 0x24($sp)
    /* 193DC0 802DB2B0 AFAE0020 */  sw         $t6, 0x20($sp)
    /* 193DC4 802DB2B4 AFAD001C */  sw         $t5, 0x1C($sp)
    /* 193DC8 802DB2B8 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 193DCC 802DB2BC AFAB0014 */  sw         $t3, 0x14($sp)
    /* 193DD0 802DB2C0 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 193DD4 802DB2C4 87A4008A */  lh         $a0, 0x8A($sp)
    /* 193DD8 802DB2C8 87A50086 */  lh         $a1, 0x86($sp)
    /* 193DDC 802DB2CC 87A60082 */  lh         $a2, 0x82($sp)
    /* 193DE0 802DB2D0 0C037A82 */  jal        func_800DEA08_ED9B8
    /* 193DE4 802DB2D4 240701C2 */   addiu     $a3, $zero, 0x1C2
    /* 193DE8 802DB2D8 2419007F */  addiu      $t9, $zero, 0x7F
    /* 193DEC 802DB2DC 240A0078 */  addiu      $t2, $zero, 0x78
    /* 193DF0 802DB2E0 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 193DF4 802DB2E4 240C003C */  addiu      $t4, $zero, 0x3C
    /* 193DF8 802DB2E8 240D0014 */  addiu      $t5, $zero, 0x14
    /* 193DFC 802DB2EC 240E006A */  addiu      $t6, $zero, 0x6A
    /* 193E00 802DB2F0 240F0053 */  addiu      $t7, $zero, 0x53
    /* 193E04 802DB2F4 AFAF002C */  sw         $t7, 0x2C($sp)
    /* 193E08 802DB2F8 AFAE0028 */  sw         $t6, 0x28($sp)
    /* 193E0C 802DB2FC AFAD0024 */  sw         $t5, 0x24($sp)
    /* 193E10 802DB300 AFAC0020 */  sw         $t4, 0x20($sp)
    /* 193E14 802DB304 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 193E18 802DB308 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 193E1C 802DB30C AFB90010 */  sw         $t9, 0x10($sp)
    /* 193E20 802DB310 87A4008A */  lh         $a0, 0x8A($sp)
    /* 193E24 802DB314 87A50086 */  lh         $a1, 0x86($sp)
    /* 193E28 802DB318 87A60082 */  lh         $a2, 0x82($sp)
    /* 193E2C 802DB31C 00003825 */  or         $a3, $zero, $zero
    /* 193E30 802DB320 AFA00014 */  sw         $zero, 0x14($sp)
    /* 193E34 802DB324 0C031507 */  jal        func_800C541C_D43CC
    /* 193E38 802DB328 AFA00030 */   sw        $zero, 0x30($sp)
    /* 193E3C 802DB32C 02002025 */  or         $a0, $s0, $zero
    /* 193E40 802DB330 24050259 */  addiu      $a1, $zero, 0x259
    /* 193E44 802DB334 0C04DD1A */  jal        func_80137468_146418
    /* 193E48 802DB338 AFB0005C */   sw        $s0, 0x5C($sp)
    /* 193E4C 802DB33C 8FA40088 */  lw         $a0, 0x88($sp)
    /* 193E50 802DB340 8FA50084 */  lw         $a1, 0x84($sp)
    /* 193E54 802DB344 8FA60080 */  lw         $a2, 0x80($sp)
    /* 193E58 802DB348 0C04D751 */  jal        func_80135D44_144CF4
    /* 193E5C 802DB34C 3C0740A0 */   lui       $a3, (0x40A00000 >> 16)
    /* 193E60 802DB350 320400FF */  andi       $a0, $s0, 0xFF
    /* 193E64 802DB354 24050050 */  addiu      $a1, $zero, 0x50
    /* 193E68 802DB358 0C021E69 */  jal        func_800879A4_96954
    /* 193E6C 802DB35C 24060001 */   addiu     $a2, $zero, 0x1
    /* 193E70 802DB360 1040004F */  beqz       $v0, .L802DB4A0_193FB0
    /* 193E74 802DB364 3C108005 */   lui       $s0, %hi(D_80052B34)
    /* 193E78 802DB368 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 193E7C 802DB36C 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 193E80 802DB370 240507D0 */  addiu      $a1, $zero, 0x7D0
    /* 193E84 802DB374 86260000 */  lh         $a2, 0x0($s1)
    /* 193E88 802DB378 0C048949 */  jal        func_80122524_1314D4
    /* 193E8C 802DB37C 86270004 */   lh        $a3, 0x4($s1)
    /* 193E90 802DB380 3C188005 */  lui        $t8, %hi(D_80052B34)
    /* 193E94 802DB384 8F182B34 */  lw         $t8, %lo(D_80052B34)($t8)
    /* 193E98 802DB388 8FA4005C */  lw         $a0, 0x5C($sp)
    /* 193E9C 802DB38C 9319001A */  lbu        $t9, 0x1A($t8)
    /* 193EA0 802DB390 132000A8 */  beqz       $t9, .L802DB634_194144
    /* 193EA4 802DB394 00000000 */   nop
    /* 193EA8 802DB398 0C04DD1A */  jal        func_80137468_146418
    /* 193EAC 802DB39C 24050258 */   addiu     $a1, $zero, 0x258
    /* 193EB0 802DB3A0 86240006 */  lh         $a0, 0x6($s1)
    /* 193EB4 802DB3A4 24844000 */  addiu      $a0, $a0, 0x4000
    /* 193EB8 802DB3A8 308AFFFF */  andi       $t2, $a0, 0xFFFF
    /* 193EBC 802DB3AC 0C007660 */  jal        sins
    /* 193EC0 802DB3B0 01402025 */   or        $a0, $t2, $zero
    /* 193EC4 802DB3B4 44822000 */  mtc1       $v0, $f4
    /* 193EC8 802DB3B8 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 193ECC 802DB3BC 44815800 */  mtc1       $at, $f11
    /* 193ED0 802DB3C0 468021A0 */  cvt.s.w    $f6, $f4
    /* 193ED4 802DB3C4 44805000 */  mtc1       $zero, $f10
    /* 193ED8 802DB3C8 86240006 */  lh         $a0, 0x6($s1)
    /* 193EDC 802DB3CC 24844000 */  addiu      $a0, $a0, 0x4000
    /* 193EE0 802DB3D0 46003221 */  cvt.d.s    $f8, $f6
    /* 193EE4 802DB3D4 308BFFFF */  andi       $t3, $a0, 0xFFFF
    /* 193EE8 802DB3D8 462A4403 */  div.d      $f16, $f8, $f10
    /* 193EEC 802DB3DC 01602025 */  or         $a0, $t3, $zero
    /* 193EF0 802DB3E0 462084A0 */  cvt.s.d    $f18, $f16
    /* 193EF4 802DB3E4 0C007654 */  jal        coss
    /* 193EF8 802DB3E8 E7B20070 */   swc1      $f18, 0x70($sp)
    /* 193EFC 802DB3EC 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 193F00 802DB3F0 44810000 */  mtc1       $at, $f0
    /* 193F04 802DB3F4 C7A40070 */  lwc1       $f4, 0x70($sp)
    /* 193F08 802DB3F8 44825000 */  mtc1       $v0, $f10
    /* 193F0C 802DB3FC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 193F10 802DB400 46002182 */  mul.s      $f6, $f4, $f0
    /* 193F14 802DB404 44802000 */  mtc1       $zero, $f4
    /* 193F18 802DB408 44812800 */  mtc1       $at, $f5
    /* 193F1C 802DB40C 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 193F20 802DB410 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 193F24 802DB414 240FFFB0 */  addiu      $t7, $zero, -0x50
    /* 193F28 802DB418 46805420 */  cvt.s.w    $f16, $f10
    /* 193F2C 802DB41C 86040000 */  lh         $a0, 0x0($s0)
    /* 193F30 802DB420 86050002 */  lh         $a1, 0x2($s0)
    /* 193F34 802DB424 86060004 */  lh         $a2, 0x4($s0)
    /* 193F38 802DB428 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 193F3C 802DB42C 4600320D */  trunc.w.s  $f8, $f6
    /* 193F40 802DB430 240F00FF */  addiu      $t7, $zero, 0xFF
    /* 193F44 802DB434 240A00B4 */  addiu      $t2, $zero, 0xB4
    /* 193F48 802DB438 460084A1 */  cvt.d.s    $f18, $f16
    /* 193F4C 802DB43C 44074000 */  mfc1       $a3, $f8
    /* 193F50 802DB440 46249183 */  div.d      $f6, $f18, $f4
    /* 193F54 802DB444 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 193F58 802DB448 00076E00 */  sll        $t5, $a3, 24
    /* 193F5C 802DB44C 000D3E03 */  sra        $a3, $t5, 24
    /* 193F60 802DB450 240D0014 */  addiu      $t5, $zero, 0x14
    /* 193F64 802DB454 240C0028 */  addiu      $t4, $zero, 0x28
    /* 193F68 802DB458 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 193F6C 802DB45C 241800C8 */  addiu      $t8, $zero, 0xC8
    /* 193F70 802DB460 AFB80030 */  sw         $t8, 0x30($sp)
    /* 193F74 802DB464 AFAE0028 */  sw         $t6, 0x28($sp)
    /* 193F78 802DB468 AFAC0020 */  sw         $t4, 0x20($sp)
    /* 193F7C 802DB46C AFAD0024 */  sw         $t5, 0x24($sp)
    /* 193F80 802DB470 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 193F84 802DB474 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 193F88 802DB478 AFAF002C */  sw         $t7, 0x2C($sp)
    /* 193F8C 802DB47C 46203207 */  neg.d      $f8, $f6
    /* 193F90 802DB480 462042A0 */  cvt.s.d    $f10, $f8
    /* 193F94 802DB484 46005402 */  mul.s      $f16, $f10, $f0
    /* 193F98 802DB488 4600848D */  trunc.w.s  $f18, $f16
    /* 193F9C 802DB48C 44199000 */  mfc1       $t9, $f18
    /* 193FA0 802DB490 0C031507 */  jal        func_800C541C_D43CC
    /* 193FA4 802DB494 AFB90014 */   sw        $t9, 0x14($sp)
    /* 193FA8 802DB498 10000154 */  b          .L802DB9EC_1944FC
    /* 193FAC 802DB49C 24020001 */   addiu     $v0, $zero, 0x1
  .L802DB4A0_193FB0:
    /* 193FB0 802DB4A0 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 193FB4 802DB4A4 8FB90088 */  lw         $t9, 0x88($sp)
    /* 193FB8 802DB4A8 8FAA0080 */  lw         $t2, 0x80($sp)
    /* 193FBC 802DB4AC 86040000 */  lh         $a0, 0x0($s0)
    /* 193FC0 802DB4B0 86050004 */  lh         $a1, 0x4($s0)
    /* 193FC4 802DB4B4 3C060012 */  lui        $a2, (0x127690 >> 16)
    /* 193FC8 802DB4B8 00994023 */  subu       $t0, $a0, $t9
    /* 193FCC 802DB4BC 01080019 */  multu      $t0, $t0
    /* 193FD0 802DB4C0 00AA4823 */  subu       $t1, $a1, $t2
    /* 193FD4 802DB4C4 34C67690 */  ori        $a2, $a2, (0x127690 & 0xFFFF)
    /* 193FD8 802DB4C8 00005812 */  mflo       $t3
    /* 193FDC 802DB4CC 00000000 */  nop
    /* 193FE0 802DB4D0 00000000 */  nop
    /* 193FE4 802DB4D4 01290019 */  multu      $t1, $t1
    /* 193FE8 802DB4D8 00006012 */  mflo       $t4
    /* 193FEC 802DB4DC 016C1021 */  addu       $v0, $t3, $t4
    /* 193FF0 802DB4E0 0046082A */  slt        $at, $v0, $a2
    /* 193FF4 802DB4E4 10200053 */  beqz       $at, .L802DB634_194144
    /* 193FF8 802DB4E8 00000000 */   nop
    /* 193FFC 802DB4EC 960D0020 */  lhu        $t5, 0x20($s0)
    /* 194000 802DB4F0 00C21823 */  subu       $v1, $a2, $v0
    /* 194004 802DB4F4 31AE0002 */  andi       $t6, $t5, 0x2
    /* 194008 802DB4F8 15C0004E */  bnez       $t6, .L802DB634_194144
    /* 19400C 802DB4FC 00000000 */   nop
    /* 194010 802DB500 922F0025 */  lbu        $t7, 0x25($s1)
    /* 194014 802DB504 3C198005 */  lui        $t9, %hi(alienInstances)
    /* 194018 802DB508 27398198 */  addiu      $t9, $t9, %lo(alienInstances)
    /* 19401C 802DB50C 000FC080 */  sll        $t8, $t7, 2
    /* 194020 802DB510 030FC021 */  addu       $t8, $t8, $t7
    /* 194024 802DB514 0018C100 */  sll        $t8, $t8, 4
    /* 194028 802DB518 03191021 */  addu       $v0, $t8, $t9
    /* 19402C 802DB51C 844A0000 */  lh         $t2, 0x0($v0)
    /* 194030 802DB520 844B0004 */  lh         $t3, 0x4($v0)
    /* 194034 802DB524 AFA3008C */  sw         $v1, 0x8C($sp)
    /* 194038 802DB528 01444023 */  subu       $t0, $t2, $a0
    /* 19403C 802DB52C 01654823 */  subu       $t1, $t3, $a1
    /* 194040 802DB530 00096823 */  negu       $t5, $t1
    /* 194044 802DB534 00086023 */  negu       $t4, $t0
    /* 194048 802DB538 448C2000 */  mtc1       $t4, $f4
    /* 19404C 802DB53C 448D3000 */  mtc1       $t5, $f6
    /* 194050 802DB540 46802320 */  cvt.s.w    $f12, $f4
    /* 194054 802DB544 0C000E09 */  jal        func_80003824_4424
    /* 194058 802DB548 468033A0 */   cvt.s.w   $f14, $f6
    /* 19405C 802DB54C 8FA3008C */  lw         $v1, 0x8C($sp)
    /* 194060 802DB550 3C01802E */  lui        $at, %hi(D_802DE438)
    /* 194064 802DB554 C430E438 */  lwc1       $f16, %lo(D_802DE438)($at)
    /* 194068 802DB558 44834000 */  mtc1       $v1, $f8
    /* 19406C 802DB55C 00035080 */  sll        $t2, $v1, 2
    /* 194070 802DB560 01435023 */  subu       $t2, $t2, $v1
    /* 194074 802DB564 468042A0 */  cvt.s.w    $f10, $f8
    /* 194078 802DB568 000A50C0 */  sll        $t2, $t2, 3
    /* 19407C 802DB56C 01435021 */  addu       $t2, $t2, $v1
    /* 194080 802DB570 000A5040 */  sll        $t2, $t2, 1
    /* 194084 802DB574 3C014600 */  lui        $at, (0x46000000 >> 16)
    /* 194088 802DB578 44812000 */  mtc1       $at, $f4
    /* 19408C 802DB57C 46105483 */  div.s      $f18, $f10, $f16
    /* 194090 802DB580 448A5000 */  mtc1       $t2, $f10
    /* 194094 802DB584 3C01802E */  lui        $at, %hi(D_802DE43C)
    /* 194098 802DB588 00022C00 */  sll        $a1, $v0, 16
    /* 19409C 802DB58C 46805420 */  cvt.s.w    $f16, $f10
    /* 1940A0 802DB590 00057403 */  sra        $t6, $a1, 16
    /* 1940A4 802DB594 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 1940A8 802DB598 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 1940AC 802DB59C 01C02825 */  or         $a1, $t6, $zero
    /* 1940B0 802DB5A0 46049180 */  add.s      $f6, $f18, $f4
    /* 1940B4 802DB5A4 C432E43C */  lwc1       $f18, %lo(D_802DE43C)($at)
    /* 1940B8 802DB5A8 46128103 */  div.s      $f4, $f16, $f18
    /* 1940BC 802DB5AC 4600320D */  trunc.w.s  $f8, $f6
    /* 1940C0 802DB5B0 44064000 */  mfc1       $a2, $f8
    /* 1940C4 802DB5B4 00000000 */  nop
    /* 1940C8 802DB5B8 0006C400 */  sll        $t8, $a2, 16
    /* 1940CC 802DB5BC 00183403 */  sra        $a2, $t8, 16
    /* 1940D0 802DB5C0 44072000 */  mfc1       $a3, $f4
    /* 1940D4 802DB5C4 0C040B77 */  jal        func_80102DDC_111D8C
    /* 1940D8 802DB5C8 00000000 */   nop
    /* 1940DC 802DB5CC 0C000E38 */  jal        func_800038E0_44E0
    /* 1940E0 802DB5D0 00000000 */   nop
    /* 1940E4 802DB5D4 240107D0 */  addiu      $at, $zero, 0x7D0
    /* 1940E8 802DB5D8 0041001A */  div        $zero, $v0, $at
    /* 1940EC 802DB5DC 3C0D8005 */  lui        $t5, %hi(D_80052B34)
    /* 1940F0 802DB5E0 8DAD2B34 */  lw         $t5, %lo(D_80052B34)($t5)
    /* 1940F4 802DB5E4 00005810 */  mfhi       $t3
    /* 1940F8 802DB5E8 241003E8 */  addiu      $s0, $zero, 0x3E8
    /* 1940FC 802DB5EC 020B6023 */  subu       $t4, $s0, $t3
    /* 194100 802DB5F0 0C000E38 */  jal        func_800038E0_44E0
    /* 194104 802DB5F4 A5AC0022 */   sh        $t4, 0x22($t5)
    /* 194108 802DB5F8 240107D0 */  addiu      $at, $zero, 0x7D0
    /* 19410C 802DB5FC 0041001A */  div        $zero, $v0, $at
    /* 194110 802DB600 3C188005 */  lui        $t8, %hi(D_80052B34)
    /* 194114 802DB604 8F182B34 */  lw         $t8, %lo(D_80052B34)($t8)
    /* 194118 802DB608 00007010 */  mfhi       $t6
    /* 19411C 802DB60C 020E7823 */  subu       $t7, $s0, $t6
    /* 194120 802DB610 0C000E38 */  jal        func_800038E0_44E0
    /* 194124 802DB614 A70F0024 */   sh        $t7, 0x24($t8)
    /* 194128 802DB618 240107D0 */  addiu      $at, $zero, 0x7D0
    /* 19412C 802DB61C 0041001A */  div        $zero, $v0, $at
    /* 194130 802DB620 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 194134 802DB624 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 194138 802DB628 0000C810 */  mfhi       $t9
    /* 19413C 802DB62C 02195023 */  subu       $t2, $s0, $t9
    /* 194140 802DB630 A56A0026 */  sh         $t2, 0x26($t3)
  .L802DB634_194144:
    /* 194144 802DB634 100000ED */  b          .L802DB9EC_1944FC
    /* 194148 802DB638 24020001 */   addiu     $v0, $zero, 0x1
  .L802DB63C_19414C:
    /* 19414C 802DB63C 306C1000 */  andi       $t4, $v1, 0x1000
    /* 194150 802DB640 118000D7 */  beqz       $t4, .L802DB9A0_1944B0
    /* 194154 802DB644 306A2000 */   andi      $t2, $v1, 0x2000
    /* 194158 802DB648 8FAD00A4 */  lw         $t5, 0xA4($sp)
    /* 19415C 802DB64C 320400FF */  andi       $a0, $s0, 0xFF
    /* 194160 802DB650 24050003 */  addiu      $a1, $zero, 0x3
    /* 194164 802DB654 24060003 */  addiu      $a2, $zero, 0x3
    /* 194168 802DB658 27A70078 */  addiu      $a3, $sp, 0x78
    /* 19416C 802DB65C 0C0207C6 */  jal        func_80081F18_90EC8
    /* 194170 802DB660 AFAD0010 */   sw        $t5, 0x10($sp)
    /* 194174 802DB664 304300FF */  andi       $v1, $v0, 0xFF
    /* 194178 802DB668 24010003 */  addiu      $at, $zero, 0x3
    /* 19417C 802DB66C 14610005 */  bne        $v1, $at, .L802DB684_194194
    /* 194180 802DB670 02002025 */   or        $a0, $s0, $zero
    /* 194184 802DB674 8E2E0020 */  lw         $t6, 0x20($s1)
    /* 194188 802DB678 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 19418C 802DB67C 01C17824 */  and        $t7, $t6, $at
    /* 194190 802DB680 AE2F0020 */  sw         $t7, 0x20($s1)
  .L802DB684_194194:
    /* 194194 802DB684 24010002 */  addiu      $at, $zero, 0x2
    /* 194198 802DB688 146100C3 */  bne        $v1, $at, .L802DB998_1944A8
    /* 19419C 802DB68C 24050131 */   addiu     $a1, $zero, 0x131
    /* 1941A0 802DB690 0C04DD1A */  jal        func_80137468_146418
    /* 1941A4 802DB694 AFB0005C */   sw        $s0, 0x5C($sp)
    /* 1941A8 802DB698 3C188005 */  lui        $t8, %hi(D_80052B34)
    /* 1941AC 802DB69C 8F182B34 */  lw         $t8, %lo(D_80052B34)($t8)
    /* 1941B0 802DB6A0 320400FF */  andi       $a0, $s0, 0xFF
    /* 1941B4 802DB6A4 24050050 */  addiu      $a1, $zero, 0x50
    /* 1941B8 802DB6A8 97190020 */  lhu        $t9, 0x20($t8)
    /* 1941BC 802DB6AC 332A0002 */  andi       $t2, $t9, 0x2
    /* 1941C0 802DB6B0 154000B9 */  bnez       $t2, .L802DB998_1944A8
    /* 1941C4 802DB6B4 00000000 */   nop
    /* 1941C8 802DB6B8 0C021E69 */  jal        func_800879A4_96954
    /* 1941CC 802DB6BC 00003025 */   or        $a2, $zero, $zero
    /* 1941D0 802DB6C0 104000B5 */  beqz       $v0, .L802DB998_1944A8
    /* 1941D4 802DB6C4 3C108005 */   lui       $s0, %hi(D_80052B34)
    /* 1941D8 802DB6C8 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 1941DC 802DB6CC 93A2009F */  lbu        $v0, 0x9F($sp)
    /* 1941E0 802DB6D0 86260000 */  lh         $a2, 0x0($s1)
    /* 1941E4 802DB6D4 86270004 */  lh         $a3, 0x4($s1)
    /* 1941E8 802DB6D8 860B0000 */  lh         $t3, 0x0($s0)
    /* 1941EC 802DB6DC 860C0004 */  lh         $t4, 0x4($s0)
    /* 1941F0 802DB6E0 2401001D */  addiu      $at, $zero, 0x1D
    /* 1941F4 802DB6E4 01664023 */  subu       $t0, $t3, $a2
    /* 1941F8 802DB6E8 10410004 */  beq        $v0, $at, .L802DB6FC_19420C
    /* 1941FC 802DB6EC 01874823 */   subu      $t1, $t4, $a3
    /* 194200 802DB6F0 2401001F */  addiu      $at, $zero, 0x1F
    /* 194204 802DB6F4 14410004 */  bne        $v0, $at, .L802DB708_194218
    /* 194208 802DB6F8 240E002A */   addiu     $t6, $zero, 0x2A
  .L802DB6FC_19420C:
    /* 19420C 802DB6FC 240D003C */  addiu      $t5, $zero, 0x3C
    /* 194210 802DB700 10000002 */  b          .L802DB70C_19421C
    /* 194214 802DB704 AFAD0098 */   sw        $t5, 0x98($sp)
  .L802DB708_194218:
    /* 194218 802DB708 AFAE0098 */  sw         $t6, 0x98($sp)
  .L802DB70C_19421C:
    /* 19421C 802DB70C 920F001A */  lbu        $t7, 0x1A($s0)
    /* 194220 802DB710 02002025 */  or         $a0, $s0, $zero
    /* 194224 802DB714 240503E8 */  addiu      $a1, $zero, 0x3E8
    /* 194228 802DB718 55E00009 */  bnel       $t7, $zero, .L802DB740_194250
    /* 19422C 802DB71C AFA80094 */   sw        $t0, 0x94($sp)
    /* 194230 802DB720 02002025 */  or         $a0, $s0, $zero
    /* 194234 802DB724 AFA80094 */  sw         $t0, 0x94($sp)
    /* 194238 802DB728 0C048EB1 */  jal        func_80123AC4_132A74
    /* 19423C 802DB72C AFA90090 */   sw        $t1, 0x90($sp)
    /* 194240 802DB730 8FA80094 */  lw         $t0, 0x94($sp)
    /* 194244 802DB734 10000006 */  b          .L802DB750_194260
    /* 194248 802DB738 8FA90090 */   lw        $t1, 0x90($sp)
    /* 19424C 802DB73C AFA80094 */  sw         $t0, 0x94($sp)
  .L802DB740_194250:
    /* 194250 802DB740 0C048949 */  jal        func_80122524_1314D4
    /* 194254 802DB744 AFA90090 */   sw        $t1, 0x90($sp)
    /* 194258 802DB748 8FA80094 */  lw         $t0, 0x94($sp)
    /* 19425C 802DB74C 8FA90090 */  lw         $t1, 0x90($sp)
  .L802DB750_194260:
    /* 194260 802DB750 8FA4005C */  lw         $a0, 0x5C($sp)
    /* 194264 802DB754 24050258 */  addiu      $a1, $zero, 0x258
    /* 194268 802DB758 AFA80094 */  sw         $t0, 0x94($sp)
    /* 19426C 802DB75C 0C04DD1A */  jal        func_80137468_146418
    /* 194270 802DB760 AFA90090 */   sw        $t1, 0x90($sp)
    /* 194274 802DB764 8FA80094 */  lw         $t0, 0x94($sp)
    /* 194278 802DB768 8FA90090 */  lw         $t1, 0x90($sp)
    /* 19427C 802DB76C 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* 194280 802DB770 44883000 */  mtc1       $t0, $f6
    /* 194284 802DB774 44899000 */  mtc1       $t1, $f18
    /* 194288 802DB778 44810000 */  mtc1       $at, $f0
    /* 19428C 802DB77C 46803220 */  cvt.s.w    $f8, $f6
    /* 194290 802DB780 8FB80098 */  lw         $t8, 0x98($sp)
    /* 194294 802DB784 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 194298 802DB788 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 19429C 802DB78C 44988000 */  mtc1       $t8, $f16
    /* 1942A0 802DB790 46809120 */  cvt.s.w    $f4, $f18
    /* 1942A4 802DB794 46004283 */  div.s      $f10, $f8, $f0
    /* 1942A8 802DB798 46808420 */  cvt.s.w    $f16, $f16
    /* 1942AC 802DB79C 44068000 */  mfc1       $a2, $f16
    /* 1942B0 802DB7A0 46002183 */  div.s      $f6, $f4, $f0
    /* 1942B4 802DB7A4 44055000 */  mfc1       $a1, $f10
    /* 1942B8 802DB7A8 44073000 */  mfc1       $a3, $f6
    /* 1942BC 802DB7AC 0C040B40 */  jal        func_80102D00_111CB0
    /* 1942C0 802DB7B0 00000000 */   nop
    /* 1942C4 802DB7B4 86240006 */  lh         $a0, 0x6($s1)
    /* 1942C8 802DB7B8 24844000 */  addiu      $a0, $a0, 0x4000
    /* 1942CC 802DB7BC 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* 1942D0 802DB7C0 0C007660 */  jal        sins
    /* 1942D4 802DB7C4 03202025 */   or        $a0, $t9, $zero
    /* 1942D8 802DB7C8 44824000 */  mtc1       $v0, $f8
    /* 1942DC 802DB7CC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1942E0 802DB7D0 44819800 */  mtc1       $at, $f19
    /* 1942E4 802DB7D4 468042A0 */  cvt.s.w    $f10, $f8
    /* 1942E8 802DB7D8 44809000 */  mtc1       $zero, $f18
    /* 1942EC 802DB7DC 86240006 */  lh         $a0, 0x6($s1)
    /* 1942F0 802DB7E0 24844000 */  addiu      $a0, $a0, 0x4000
    /* 1942F4 802DB7E4 46005421 */  cvt.d.s    $f16, $f10
    /* 1942F8 802DB7E8 308AFFFF */  andi       $t2, $a0, 0xFFFF
    /* 1942FC 802DB7EC 46328103 */  div.d      $f4, $f16, $f18
    /* 194300 802DB7F0 01402025 */  or         $a0, $t2, $zero
    /* 194304 802DB7F4 462021A0 */  cvt.s.d    $f6, $f4
    /* 194308 802DB7F8 0C007654 */  jal        coss
    /* 19430C 802DB7FC E7A60070 */   swc1      $f6, 0x70($sp)
    /* 194310 802DB800 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 194314 802DB804 44810000 */  mtc1       $at, $f0
    /* 194318 802DB808 C7A80070 */  lwc1       $f8, 0x70($sp)
    /* 19431C 802DB80C 44829000 */  mtc1       $v0, $f18
    /* 194320 802DB810 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 194324 802DB814 46004282 */  mul.s      $f10, $f8, $f0
    /* 194328 802DB818 44804000 */  mtc1       $zero, $f8
    /* 19432C 802DB81C 44814800 */  mtc1       $at, $f9
    /* 194330 802DB820 3C108005 */  lui        $s0, %hi(D_80052B34)
    /* 194334 802DB824 8E102B34 */  lw         $s0, %lo(D_80052B34)($s0)
    /* 194338 802DB828 240EFFB0 */  addiu      $t6, $zero, -0x50
    /* 19433C 802DB82C 46809120 */  cvt.s.w    $f4, $f18
    /* 194340 802DB830 86040000 */  lh         $a0, 0x0($s0)
    /* 194344 802DB834 86050002 */  lh         $a1, 0x2($s0)
    /* 194348 802DB838 86060004 */  lh         $a2, 0x4($s0)
    /* 19434C 802DB83C AFAE0010 */  sw         $t6, 0x10($sp)
    /* 194350 802DB840 4600540D */  trunc.w.s  $f16, $f10
    /* 194354 802DB844 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 194358 802DB848 241900B4 */  addiu      $t9, $zero, 0xB4
    /* 19435C 802DB84C 460021A1 */  cvt.d.s    $f6, $f4
    /* 194360 802DB850 44078000 */  mfc1       $a3, $f16
    /* 194364 802DB854 46283283 */  div.d      $f10, $f6, $f8
    /* 194368 802DB858 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 19436C 802DB85C 00076600 */  sll        $t4, $a3, 24
    /* 194370 802DB860 000C3E03 */  sra        $a3, $t4, 24
    /* 194374 802DB864 240C0014 */  addiu      $t4, $zero, 0x14
    /* 194378 802DB868 240B0028 */  addiu      $t3, $zero, 0x28
    /* 19437C 802DB86C 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 194380 802DB870 240F00C8 */  addiu      $t7, $zero, 0xC8
    /* 194384 802DB874 AFAF0030 */  sw         $t7, 0x30($sp)
    /* 194388 802DB878 AFAD0028 */  sw         $t5, 0x28($sp)
    /* 19438C 802DB87C AFAB0020 */  sw         $t3, 0x20($sp)
    /* 194390 802DB880 AFAC0024 */  sw         $t4, 0x24($sp)
    /* 194394 802DB884 AFAA001C */  sw         $t2, 0x1C($sp)
    /* 194398 802DB888 AFB90018 */  sw         $t9, 0x18($sp)
    /* 19439C 802DB88C AFAE002C */  sw         $t6, 0x2C($sp)
    /* 1943A0 802DB890 46205407 */  neg.d      $f16, $f10
    /* 1943A4 802DB894 462084A0 */  cvt.s.d    $f18, $f16
    /* 1943A8 802DB898 46009102 */  mul.s      $f4, $f18, $f0
    /* 1943AC 802DB89C 4600218D */  trunc.w.s  $f6, $f4
    /* 1943B0 802DB8A0 44183000 */  mfc1       $t8, $f6
    /* 1943B4 802DB8A4 0C031507 */  jal        func_800C541C_D43CC
    /* 1943B8 802DB8A8 AFB80014 */   sw        $t8, 0x14($sp)
    /* 1943BC 802DB8AC 0C000E38 */  jal        func_800038E0_44E0
    /* 1943C0 802DB8B0 00000000 */   nop
    /* 1943C4 802DB8B4 0002C140 */  sll        $t8, $v0, 5
    /* 1943C8 802DB8B8 0302C023 */  subu       $t8, $t8, $v0
    /* 1943CC 802DB8BC 0018C080 */  sll        $t8, $t8, 2
    /* 1943D0 802DB8C0 0302C021 */  addu       $t8, $t8, $v0
    /* 1943D4 802DB8C4 0018C100 */  sll        $t8, $t8, 4
    /* 1943D8 802DB8C8 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 1943DC 802DB8CC 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 1943E0 802DB8D0 241003E8 */  addiu      $s0, $zero, 0x3E8
    /* 1943E4 802DB8D4 07010004 */  bgez       $t8, .L802DB8E8_1943F8
    /* 1943E8 802DB8D8 0018CC03 */   sra       $t9, $t8, 16
    /* 1943EC 802DB8DC 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* 1943F0 802DB8E0 00380821 */  addu       $at, $at, $t8
    /* 1943F4 802DB8E4 0001CC03 */  sra        $t9, $at, 16
  .L802DB8E8_1943F8:
    /* 1943F8 802DB8E8 02195023 */  subu       $t2, $s0, $t9
    /* 1943FC 802DB8EC 0C000E38 */  jal        func_800038E0_44E0
    /* 194400 802DB8F0 A56A0022 */   sh        $t2, 0x22($t3)
    /* 194404 802DB8F4 00026140 */  sll        $t4, $v0, 5
    /* 194408 802DB8F8 01826023 */  subu       $t4, $t4, $v0
    /* 19440C 802DB8FC 000C6080 */  sll        $t4, $t4, 2
    /* 194410 802DB900 01826021 */  addu       $t4, $t4, $v0
    /* 194414 802DB904 000C6100 */  sll        $t4, $t4, 4
    /* 194418 802DB908 3C0F8005 */  lui        $t7, %hi(D_80052B34)
    /* 19441C 802DB90C 8DEF2B34 */  lw         $t7, %lo(D_80052B34)($t7)
    /* 194420 802DB910 05810004 */  bgez       $t4, .L802DB924_194434
    /* 194424 802DB914 000C6C03 */   sra       $t5, $t4, 16
    /* 194428 802DB918 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* 19442C 802DB91C 002C0821 */  addu       $at, $at, $t4
    /* 194430 802DB920 00016C03 */  sra        $t5, $at, 16
  .L802DB924_194434:
    /* 194434 802DB924 020D7023 */  subu       $t6, $s0, $t5
    /* 194438 802DB928 0C000E38 */  jal        func_800038E0_44E0
    /* 19443C 802DB92C A5EE0024 */   sh        $t6, 0x24($t7)
    /* 194440 802DB930 0002C140 */  sll        $t8, $v0, 5
    /* 194444 802DB934 0302C023 */  subu       $t8, $t8, $v0
    /* 194448 802DB938 0018C080 */  sll        $t8, $t8, 2
    /* 19444C 802DB93C 0302C021 */  addu       $t8, $t8, $v0
    /* 194450 802DB940 3C0B8005 */  lui        $t3, %hi(D_80052B34)
    /* 194454 802DB944 8D6B2B34 */  lw         $t3, %lo(D_80052B34)($t3)
    /* 194458 802DB948 0018C100 */  sll        $t8, $t8, 4
    /* 19445C 802DB94C 07010004 */  bgez       $t8, .L802DB960_194470
    /* 194460 802DB950 0018CC03 */   sra       $t9, $t8, 16
    /* 194464 802DB954 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* 194468 802DB958 00380821 */  addu       $at, $at, $t8
    /* 19446C 802DB95C 0001CC03 */  sra        $t9, $at, 16
  .L802DB960_194470:
    /* 194470 802DB960 02195023 */  subu       $t2, $s0, $t9
    /* 194474 802DB964 A56A0026 */  sh         $t2, 0x26($t3)
    /* 194478 802DB968 8E2C0020 */  lw         $t4, 0x20($s1)
    /* 19447C 802DB96C 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 194480 802DB970 87B80078 */  lh         $t8, 0x78($sp)
    /* 194484 802DB974 01816824 */  and        $t5, $t4, $at
    /* 194488 802DB978 AE2D0020 */  sw         $t5, 0x20($s1)
    /* 19448C 802DB97C 35AF2000 */  ori        $t7, $t5, 0x2000
    /* 194490 802DB980 3C018015 */  lui        $at, %hi(D_8014DD5E)
    /* 194494 802DB984 0018C900 */  sll        $t9, $t8, 4
    /* 194498 802DB988 A2200036 */  sb         $zero, 0x36($s1)
    /* 19449C 802DB98C AE2F0020 */  sw         $t7, 0x20($s1)
    /* 1944A0 802DB990 00390821 */  addu       $at, $at, $t9
    /* 1944A4 802DB994 A420DD5E */  sh         $zero, %lo(D_8014DD5E)($at)
  .L802DB998_1944A8:
    /* 1944A8 802DB998 10000014 */  b          .L802DB9EC_1944FC
    /* 1944AC 802DB99C 24020001 */   addiu     $v0, $zero, 0x1
  .L802DB9A0_1944B0:
    /* 1944B0 802DB9A0 11400012 */  beqz       $t2, .L802DB9EC_1944FC
    /* 1944B4 802DB9A4 00001025 */   or        $v0, $zero, $zero
    /* 1944B8 802DB9A8 8FAB00A8 */  lw         $t3, 0xA8($sp)
    /* 1944BC 802DB9AC 320400FF */  andi       $a0, $s0, 0xFF
    /* 1944C0 802DB9B0 24050003 */  addiu      $a1, $zero, 0x3
    /* 1944C4 802DB9B4 24060002 */  addiu      $a2, $zero, 0x2
    /* 1944C8 802DB9B8 27A70078 */  addiu      $a3, $sp, 0x78
    /* 1944CC 802DB9BC 0C0207C6 */  jal        func_80081F18_90EC8
    /* 1944D0 802DB9C0 AFAB0010 */   sw        $t3, 0x10($sp)
    /* 1944D4 802DB9C4 304C00FF */  andi       $t4, $v0, 0xFF
    /* 1944D8 802DB9C8 24010002 */  addiu      $at, $zero, 0x2
    /* 1944DC 802DB9CC 15810005 */  bne        $t4, $at, .L802DB9E4_1944F4
    /* 1944E0 802DB9D0 00000000 */   nop
    /* 1944E4 802DB9D4 8E2D0020 */  lw         $t5, 0x20($s1)
    /* 1944E8 802DB9D8 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 1944EC 802DB9DC 01A17024 */  and        $t6, $t5, $at
    /* 1944F0 802DB9E0 AE2E0020 */  sw         $t6, 0x20($s1)
  .L802DB9E4_1944F4:
    /* 1944F4 802DB9E4 10000001 */  b          .L802DB9EC_1944FC
    /* 1944F8 802DB9E8 24020001 */   addiu     $v0, $zero, 0x1
  .L802DB9EC_1944FC:
    /* 1944FC 802DB9EC 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 194500 802DB9F0 8FB0003C */  lw         $s0, 0x3C($sp)
    /* 194504 802DB9F4 8FB10040 */  lw         $s1, 0x40($sp)
    /* 194508 802DB9F8 03E00008 */  jr         $ra
    /* 19450C 802DB9FC 27BD00A0 */   addiu     $sp, $sp, 0xA0
endlabel func_802DB16C_193C7C
