nonmatching func_802D9F60_31E0B0, 0x744

glabel func_802D9F60_31E0B0
    /* 31E0B0 802D9F60 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* 31E0B4 802D9F64 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 31E0B8 802D9F68 AFA40090 */  sw         $a0, 0x90($sp)
    /* 31E0BC 802D9F6C AFB00040 */  sw         $s0, 0x40($sp)
    /* 31E0C0 802D9F70 0C021553 */  jal        func_8008554C_944FC
    /* 31E0C4 802D9F74 93A40093 */   lbu       $a0, 0x93($sp)
    /* 31E0C8 802D9F78 93A40093 */  lbu        $a0, 0x93($sp)
    /* 31E0CC 802D9F7C 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 31E0D0 802D9F80 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 31E0D4 802D9F84 00047080 */  sll        $t6, $a0, 2
    /* 31E0D8 802D9F88 01C47021 */  addu       $t6, $t6, $a0
    /* 31E0DC 802D9F8C 000E7100 */  sll        $t6, $t6, 4
    /* 31E0E0 802D9F90 01CF8021 */  addu       $s0, $t6, $t7
    /* 31E0E4 802D9F94 8618000C */  lh         $t8, 0xC($s0)
    /* 31E0E8 802D9F98 3C078015 */  lui        $a3, %hi(D_8014DD50)
    /* 31E0EC 802D9F9C 24E7DD50 */  addiu      $a3, $a3, %lo(D_8014DD50)
    /* 31E0F0 802D9FA0 0018C900 */  sll        $t9, $t8, 4
    /* 31E0F4 802D9FA4 00F95821 */  addu       $t3, $a3, $t9
    /* 31E0F8 802D9FA8 8162000C */  lb         $v0, 0xC($t3)
    /* 31E0FC 802D9FAC 920B001A */  lbu        $t3, 0x1A($s0)
    /* 31E100 802D9FB0 3C018025 */  lui        $at, %hi(D_802566D8)
    /* 31E104 802D9FB4 00026100 */  sll        $t4, $v0, 4
    /* 31E108 802D9FB8 00EC6821 */  addu       $t5, $a3, $t4
    /* 31E10C 802D9FBC 81A5000D */  lb         $a1, 0xD($t5)
    /* 31E110 802D9FC0 000B6080 */  sll        $t4, $t3, 2
    /* 31E114 802D9FC4 018B6023 */  subu       $t4, $t4, $t3
    /* 31E118 802D9FC8 00057100 */  sll        $t6, $a1, 4
    /* 31E11C 802D9FCC 00EE4021 */  addu       $t0, $a3, $t6
    /* 31E120 802D9FD0 8109000D */  lb         $t1, 0xD($t0)
    /* 31E124 802D9FD4 000C6080 */  sll        $t4, $t4, 2
    /* 31E128 802D9FD8 018B6021 */  addu       $t4, $t4, $t3
    /* 31E12C 802D9FDC 00097900 */  sll        $t7, $t1, 4
    /* 31E130 802D9FE0 00EF1821 */  addu       $v1, $a3, $t7
    /* 31E134 802D9FE4 806A000D */  lb         $t2, 0xD($v1)
    /* 31E138 802D9FE8 000C60C0 */  sll        $t4, $t4, 3
    /* 31E13C 802D9FEC 002C0821 */  addu       $at, $at, $t4
    /* 31E140 802D9FF0 000AC100 */  sll        $t8, $t2, 4
    /* 31E144 802D9FF4 00F83021 */  addu       $a2, $a3, $t8
    /* 31E148 802D9FF8 80D9000D */  lb         $t9, 0xD($a2)
    /* 31E14C 802D9FFC A42066D8 */  sh         $zero, %lo(D_802566D8)($at)
    /* 31E150 802DA000 AFA6004C */  sw         $a2, 0x4C($sp)
    /* 31E154 802DA004 AFA30050 */  sw         $v1, 0x50($sp)
    /* 31E158 802DA008 AFA80054 */  sw         $t0, 0x54($sp)
    /* 31E15C 802DA00C A7A5008C */  sh         $a1, 0x8C($sp)
    /* 31E160 802DA010 A7A90088 */  sh         $t1, 0x88($sp)
    /* 31E164 802DA014 A7AA0086 */  sh         $t2, 0x86($sp)
    /* 31E168 802DA018 0C02A66E */  jal        func_800A99B8_B8968
    /* 31E16C 802DA01C A7B90084 */   sh        $t9, 0x84($sp)
    /* 31E170 802DA020 87A5008C */  lh         $a1, 0x8C($sp)
    /* 31E174 802DA024 93A40093 */  lbu        $a0, 0x93($sp)
    /* 31E178 802DA028 0C02188C */  jal        func_80086230_951E0
    /* 31E17C 802DA02C 24062000 */   addiu     $a2, $zero, 0x2000
    /* 31E180 802DA030 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 31E184 802DA034 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 31E188 802DA038 860D0000 */  lh         $t5, 0x0($s0)
    /* 31E18C 802DA03C 860F0004 */  lh         $t7, 0x4($s0)
    /* 31E190 802DA040 848E0000 */  lh         $t6, 0x0($a0)
    /* 31E194 802DA044 84980004 */  lh         $t8, 0x4($a0)
    /* 31E198 802DA048 01AE1823 */  subu       $v1, $t5, $t6
    /* 31E19C 802DA04C 00630019 */  multu      $v1, $v1
    /* 31E1A0 802DA050 01F82823 */  subu       $a1, $t7, $t8
    /* 31E1A4 802DA054 0000C812 */  mflo       $t9
    /* 31E1A8 802DA058 00000000 */  nop
    /* 31E1AC 802DA05C 00000000 */  nop
    /* 31E1B0 802DA060 00A50019 */  multu      $a1, $a1
    /* 31E1B4 802DA064 00005812 */  mflo       $t3
    /* 31E1B8 802DA068 032B6021 */  addu       $t4, $t9, $t3
    /* 31E1BC 802DA06C 448C2000 */  mtc1       $t4, $f4
    /* 31E1C0 802DA070 0C007650 */  jal        sqrtf
    /* 31E1C4 802DA074 46802320 */   cvt.s.w   $f12, $f4
    /* 31E1C8 802DA078 4600018D */  trunc.w.s  $f6, $f0
    /* 31E1CC 802DA07C 93A40093 */  lbu        $a0, 0x93($sp)
    /* 31E1D0 802DA080 24051000 */  addiu      $a1, $zero, 0x1000
    /* 31E1D4 802DA084 440E3000 */  mfc1       $t6, $f6
    /* 31E1D8 802DA088 0C0213FA */  jal        func_80084FE8_93F98
    /* 31E1DC 802DA08C AFAE0074 */   sw        $t6, 0x74($sp)
    /* 31E1E0 802DA090 10400020 */  beqz       $v0, .L802DA114_31E264
    /* 31E1E4 802DA094 8FAF0074 */   lw        $t7, 0x74($sp)
    /* 31E1E8 802DA098 29E10FA0 */  slti       $at, $t7, 0xFA0
    /* 31E1EC 802DA09C 5020001E */  beql       $at, $zero, .L802DA118_31E268
    /* 31E1F0 802DA0A0 93A40093 */   lbu       $a0, 0x93($sp)
    /* 31E1F4 802DA0A4 8218004E */  lb         $t8, 0x4E($s0)
    /* 31E1F8 802DA0A8 5300001B */  beql       $t8, $zero, .L802DA118_31E268
    /* 31E1FC 802DA0AC 93A40093 */   lbu       $a0, 0x93($sp)
    /* 31E200 802DA0B0 8E190020 */  lw         $t9, 0x20($s0)
    /* 31E204 802DA0B4 332B2000 */  andi       $t3, $t9, 0x2000
    /* 31E208 802DA0B8 55600017 */  bnel       $t3, $zero, .L802DA118_31E268
    /* 31E20C 802DA0BC 93A40093 */   lbu       $a0, 0x93($sp)
    /* 31E210 802DA0C0 860C000A */  lh         $t4, 0xA($s0)
    /* 31E214 802DA0C4 93A40093 */  lbu        $a0, 0x93($sp)
    /* 31E218 802DA0C8 00002825 */  or         $a1, $zero, $zero
    /* 31E21C 802DA0CC 55800012 */  bnel       $t4, $zero, .L802DA118_31E268
    /* 31E220 802DA0D0 93A40093 */   lbu       $a0, 0x93($sp)
    /* 31E224 802DA0D4 0C021C62 */  jal        func_80087188_96138
    /* 31E228 802DA0D8 00003025 */   or        $a2, $zero, $zero
    /* 31E22C 802DA0DC 1040000D */  beqz       $v0, .L802DA114_31E264
    /* 31E230 802DA0E0 87AD0084 */   lh        $t5, 0x84($sp)
    /* 31E234 802DA0E4 000D7100 */  sll        $t6, $t5, 4
    /* 31E238 802DA0E8 3C0F8015 */  lui        $t7, %hi(D_8014DD5A)
    /* 31E23C 802DA0EC 01EE7821 */  addu       $t7, $t7, $t6
    /* 31E240 802DA0F0 95EFDD5A */  lhu        $t7, %lo(D_8014DD5A)($t7)
    /* 31E244 802DA0F4 240B0023 */  addiu      $t3, $zero, 0x23
    /* 31E248 802DA0F8 55E00007 */  bnel       $t7, $zero, .L802DA118_31E268
    /* 31E24C 802DA0FC 93A40093 */   lbu       $a0, 0x93($sp)
    /* 31E250 802DA100 8E180020 */  lw         $t8, 0x20($s0)
    /* 31E254 802DA104 A2000036 */  sb         $zero, 0x36($s0)
    /* 31E258 802DA108 A60B001E */  sh         $t3, 0x1E($s0)
    /* 31E25C 802DA10C 37191000 */  ori        $t9, $t8, 0x1000
    /* 31E260 802DA110 AE190020 */  sw         $t9, 0x20($s0)
  .L802DA114_31E264:
    /* 31E264 802DA114 93A40093 */  lbu        $a0, 0x93($sp)
  .L802DA118_31E268:
    /* 31E268 802DA118 0C0B67B3 */  jal        func_802D9ECC_31E01C
    /* 31E26C 802DA11C 87A50084 */   lh        $a1, 0x84($sp)
    /* 31E270 802DA120 3C0C8005 */  lui        $t4, %hi(D_80052A8C)
    /* 31E274 802DA124 8D8C2A8C */  lw         $t4, %lo(D_80052A8C)($t4)
    /* 31E278 802DA128 318D0003 */  andi       $t5, $t4, 0x3
    /* 31E27C 802DA12C 55A0005C */  bnel       $t5, $zero, .L802DA2A0_31E3F0
    /* 31E280 802DA130 8E0B0020 */   lw        $t3, 0x20($s0)
    /* 31E284 802DA134 820E003C */  lb         $t6, 0x3C($s0)
    /* 31E288 802DA138 240100FB */  addiu      $at, $zero, 0xFB
    /* 31E28C 802DA13C 8FA20050 */  lw         $v0, 0x50($sp)
    /* 31E290 802DA140 51C1002A */  beql       $t6, $at, .L802DA1EC_31E33C
    /* 31E294 802DA144 8218003D */   lb        $t8, 0x3D($s0)
    /* 31E298 802DA148 944F000A */  lhu        $t7, 0xA($v0)
    /* 31E29C 802DA14C 02002025 */  or         $a0, $s0, $zero
    /* 31E2A0 802DA150 27AB0070 */  addiu      $t3, $sp, 0x70
    /* 31E2A4 802DA154 29E11F41 */  slti       $at, $t7, 0x1F41
    /* 31E2A8 802DA158 10200023 */  beqz       $at, .L802DA1E8_31E338
    /* 31E2AC 802DA15C 27AC006C */   addiu     $t4, $sp, 0x6C
    /* 31E2B0 802DA160 84450000 */  lh         $a1, 0x0($v0)
    /* 31E2B4 802DA164 27AD0068 */  addiu      $t5, $sp, 0x68
    /* 31E2B8 802DA168 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 31E2BC 802DA16C 24A5FF6A */  addiu      $a1, $a1, -0x96
    /* 31E2C0 802DA170 0005C400 */  sll        $t8, $a1, 16
    /* 31E2C4 802DA174 00182C03 */  sra        $a1, $t8, 16
    /* 31E2C8 802DA178 84460002 */  lh         $a2, 0x2($v0)
    /* 31E2CC 802DA17C 84470004 */  lh         $a3, 0x4($v0)
    /* 31E2D0 802DA180 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 31E2D4 802DA184 0C04A10A */  jal        func_80128428_1373D8
    /* 31E2D8 802DA188 AFAC0014 */   sw        $t4, 0x14($sp)
    /* 31E2DC 802DA18C 87A40072 */  lh         $a0, 0x72($sp)
    /* 31E2E0 802DA190 0C02E134 */  jal        func_800B84D0_C7480
    /* 31E2E4 802DA194 87A5006A */   lh        $a1, 0x6A($sp)
    /* 31E2E8 802DA198 3C038022 */  lui        $v1, %hi(D_80222A70)
    /* 31E2EC 802DA19C 8C632A70 */  lw         $v1, %lo(D_80222A70)($v1)
    /* 31E2F0 802DA1A0 00027203 */  sra        $t6, $v0, 8
    /* 31E2F4 802DA1A4 87A40072 */  lh         $a0, 0x72($sp)
    /* 31E2F8 802DA1A8 01C3082A */  slt        $at, $t6, $v1
    /* 31E2FC 802DA1AC 10200003 */  beqz       $at, .L802DA1BC_31E30C
    /* 31E300 802DA1B0 00000000 */   nop
    /* 31E304 802DA1B4 10000004 */  b          .L802DA1C8_31E318
    /* 31E308 802DA1B8 00604025 */   or        $t0, $v1, $zero
  .L802DA1BC_31E30C:
    /* 31E30C 802DA1BC 0C02E134 */  jal        func_800B84D0_C7480
    /* 31E310 802DA1C0 87A5006A */   lh        $a1, 0x6A($sp)
    /* 31E314 802DA1C4 00024203 */  sra        $t0, $v0, 8
  .L802DA1C8_31E318:
    /* 31E318 802DA1C8 00082C00 */  sll        $a1, $t0, 16
    /* 31E31C 802DA1CC 00057C03 */  sra        $t7, $a1, 16
    /* 31E320 802DA1D0 01E02825 */  or         $a1, $t7, $zero
    /* 31E324 802DA1D4 87A40072 */  lh         $a0, 0x72($sp)
    /* 31E328 802DA1D8 87A6006A */  lh         $a2, 0x6A($sp)
    /* 31E32C 802DA1DC 9207003C */  lbu        $a3, 0x3C($s0)
    /* 31E330 802DA1E0 0C0334BA */  jal        func_800CD2E8_DC298
    /* 31E334 802DA1E4 AFA8006C */   sw        $t0, 0x6C($sp)
  .L802DA1E8_31E338:
    /* 31E338 802DA1E8 8218003D */  lb         $t8, 0x3D($s0)
  .L802DA1EC_31E33C:
    /* 31E33C 802DA1EC 240100FB */  addiu      $at, $zero, 0xFB
    /* 31E340 802DA1F0 8FA2004C */  lw         $v0, 0x4C($sp)
    /* 31E344 802DA1F4 5301002A */  beql       $t8, $at, .L802DA2A0_31E3F0
    /* 31E348 802DA1F8 8E0B0020 */   lw        $t3, 0x20($s0)
    /* 31E34C 802DA1FC 9459000A */  lhu        $t9, 0xA($v0)
    /* 31E350 802DA200 02002025 */  or         $a0, $s0, $zero
    /* 31E354 802DA204 27AD0070 */  addiu      $t5, $sp, 0x70
    /* 31E358 802DA208 2B211F41 */  slti       $at, $t9, 0x1F41
    /* 31E35C 802DA20C 10200023 */  beqz       $at, .L802DA29C_31E3EC
    /* 31E360 802DA210 27AE006C */   addiu     $t6, $sp, 0x6C
    /* 31E364 802DA214 84450000 */  lh         $a1, 0x0($v0)
    /* 31E368 802DA218 27AF0068 */  addiu      $t7, $sp, 0x68
    /* 31E36C 802DA21C AFAF0018 */  sw         $t7, 0x18($sp)
    /* 31E370 802DA220 24A50096 */  addiu      $a1, $a1, 0x96
    /* 31E374 802DA224 00055C00 */  sll        $t3, $a1, 16
    /* 31E378 802DA228 000B2C03 */  sra        $a1, $t3, 16
    /* 31E37C 802DA22C 84460002 */  lh         $a2, 0x2($v0)
    /* 31E380 802DA230 84470004 */  lh         $a3, 0x4($v0)
    /* 31E384 802DA234 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 31E388 802DA238 0C04A10A */  jal        func_80128428_1373D8
    /* 31E38C 802DA23C AFAE0014 */   sw        $t6, 0x14($sp)
    /* 31E390 802DA240 87A40072 */  lh         $a0, 0x72($sp)
    /* 31E394 802DA244 0C02E134 */  jal        func_800B84D0_C7480
    /* 31E398 802DA248 87A5006A */   lh        $a1, 0x6A($sp)
    /* 31E39C 802DA24C 3C038022 */  lui        $v1, %hi(D_80222A70)
    /* 31E3A0 802DA250 8C632A70 */  lw         $v1, %lo(D_80222A70)($v1)
    /* 31E3A4 802DA254 0002C203 */  sra        $t8, $v0, 8
    /* 31E3A8 802DA258 87A40072 */  lh         $a0, 0x72($sp)
    /* 31E3AC 802DA25C 0303082A */  slt        $at, $t8, $v1
    /* 31E3B0 802DA260 10200003 */  beqz       $at, .L802DA270_31E3C0
    /* 31E3B4 802DA264 00000000 */   nop
    /* 31E3B8 802DA268 10000004 */  b          .L802DA27C_31E3CC
    /* 31E3BC 802DA26C 00604025 */   or        $t0, $v1, $zero
  .L802DA270_31E3C0:
    /* 31E3C0 802DA270 0C02E134 */  jal        func_800B84D0_C7480
    /* 31E3C4 802DA274 87A5006A */   lh        $a1, 0x6A($sp)
    /* 31E3C8 802DA278 00024203 */  sra        $t0, $v0, 8
  .L802DA27C_31E3CC:
    /* 31E3CC 802DA27C 00082C00 */  sll        $a1, $t0, 16
    /* 31E3D0 802DA280 0005CC03 */  sra        $t9, $a1, 16
    /* 31E3D4 802DA284 03202825 */  or         $a1, $t9, $zero
    /* 31E3D8 802DA288 87A40072 */  lh         $a0, 0x72($sp)
    /* 31E3DC 802DA28C 87A6006A */  lh         $a2, 0x6A($sp)
    /* 31E3E0 802DA290 9207003D */  lbu        $a3, 0x3D($s0)
    /* 31E3E4 802DA294 0C0334BA */  jal        func_800CD2E8_DC298
    /* 31E3E8 802DA298 AFA8006C */   sw        $t0, 0x6C($sp)
  .L802DA29C_31E3EC:
    /* 31E3EC 802DA29C 8E0B0020 */  lw         $t3, 0x20($s0)
  .L802DA2A0_31E3F0:
    /* 31E3F0 802DA2A0 93A40093 */  lbu        $a0, 0x93($sp)
    /* 31E3F4 802DA2A4 24052000 */  addiu      $a1, $zero, 0x2000
    /* 31E3F8 802DA2A8 316C2000 */  andi       $t4, $t3, 0x2000
    /* 31E3FC 802DA2AC 518000B3 */  beql       $t4, $zero, .L802DA57C_31E6CC
    /* 31E400 802DA2B0 8603000A */   lh        $v1, 0xA($s0)
    /* 31E404 802DA2B4 0C0213FA */  jal        func_80084FE8_93F98
    /* 31E408 802DA2B8 24051000 */   addiu     $a1, $zero, 0x1000
    /* 31E40C 802DA2BC 10400025 */  beqz       $v0, .L802DA354_31E4A4
    /* 31E410 802DA2C0 3C0D8005 */   lui       $t5, %hi(D_80052B34)
    /* 31E414 802DA2C4 8DAD2B34 */  lw         $t5, %lo(D_80052B34)($t5)
    /* 31E418 802DA2C8 86020002 */  lh         $v0, 0x2($s0)
    /* 31E41C 802DA2CC 85A30002 */  lh         $v1, 0x2($t5)
    /* 31E420 802DA2D0 246E0064 */  addiu      $t6, $v1, 0x64
    /* 31E424 802DA2D4 004E082A */  slt        $at, $v0, $t6
    /* 31E428 802DA2D8 1420001E */  bnez       $at, .L802DA354_31E4A4
    /* 31E42C 802DA2DC 246F012C */   addiu     $t7, $v1, 0x12C
    /* 31E430 802DA2E0 01E2082A */  slt        $at, $t7, $v0
    /* 31E434 802DA2E4 5420001C */  bnel       $at, $zero, .L802DA358_31E4A8
    /* 31E438 802DA2E8 8E0D0020 */   lw        $t5, 0x20($s0)
    /* 31E43C 802DA2EC 8218004E */  lb         $t8, 0x4E($s0)
    /* 31E440 802DA2F0 53000019 */  beql       $t8, $zero, .L802DA358_31E4A8
    /* 31E444 802DA2F4 8E0D0020 */   lw        $t5, 0x20($s0)
    /* 31E448 802DA2F8 92190047 */  lbu        $t9, 0x47($s0)
    /* 31E44C 802DA2FC 332B000E */  andi       $t3, $t9, 0xE
    /* 31E450 802DA300 55600015 */  bnel       $t3, $zero, .L802DA358_31E4A8
    /* 31E454 802DA304 8E0D0020 */   lw        $t5, 0x20($s0)
    /* 31E458 802DA308 8603000A */  lh         $v1, 0xA($s0)
    /* 31E45C 802DA30C 3C0F8015 */  lui        $t7, %hi(D_8014DD50)
    /* 31E460 802DA310 28611388 */  slti       $at, $v1, 0x1388
    /* 31E464 802DA314 1020000C */  beqz       $at, .L802DA348_31E498
    /* 31E468 802DA318 246C0190 */   addiu     $t4, $v1, 0x190
    /* 31E46C 802DA31C 87AD0084 */  lh         $t5, 0x84($sp)
    /* 31E470 802DA320 25EFDD50 */  addiu      $t7, $t7, %lo(D_8014DD50)
    /* 31E474 802DA324 240B0002 */  addiu      $t3, $zero, 0x2
    /* 31E478 802DA328 000D7100 */  sll        $t6, $t5, 4
    /* 31E47C 802DA32C 01CF1021 */  addu       $v0, $t6, $t7
    /* 31E480 802DA330 9458000A */  lhu        $t8, 0xA($v0)
    /* 31E484 802DA334 A60C000A */  sh         $t4, 0xA($s0)
    /* 31E488 802DA338 A3AB005F */  sb         $t3, 0x5F($sp)
    /* 31E48C 802DA33C 2719FCE0 */  addiu      $t9, $t8, -0x320
    /* 31E490 802DA340 1000007B */  b          .L802DA530_31E680
    /* 31E494 802DA344 A459000A */   sh        $t9, 0xA($v0)
  .L802DA348_31E498:
    /* 31E498 802DA348 240C0001 */  addiu      $t4, $zero, 0x1
    /* 31E49C 802DA34C 10000078 */  b          .L802DA530_31E680
    /* 31E4A0 802DA350 A3AC005F */   sb        $t4, 0x5F($sp)
  .L802DA354_31E4A4:
    /* 31E4A4 802DA354 8E0D0020 */  lw         $t5, 0x20($s0)
  .L802DA358_31E4A8:
    /* 31E4A8 802DA358 2401DFFF */  addiu      $at, $zero, -0x2001
    /* 31E4AC 802DA35C A3A0005F */  sb         $zero, 0x5F($sp)
    /* 31E4B0 802DA360 01A17024 */  and        $t6, $t5, $at
    /* 31E4B4 802DA364 0C000E38 */  jal        func_800038E0_44E0
    /* 31E4B8 802DA368 AE0E0020 */   sw        $t6, 0x20($s0)
    /* 31E4BC 802DA36C 2401003C */  addiu      $at, $zero, 0x3C
    /* 31E4C0 802DA370 0041001A */  div        $zero, $v0, $at
    /* 31E4C4 802DA374 92190047 */  lbu        $t9, 0x47($s0)
    /* 31E4C8 802DA378 00007810 */  mfhi       $t7
    /* 31E4CC 802DA37C 25F80028 */  addiu      $t8, $t7, 0x28
    /* 31E4D0 802DA380 332B0008 */  andi       $t3, $t9, 0x8
    /* 31E4D4 802DA384 1160006A */  beqz       $t3, .L802DA530_31E680
    /* 31E4D8 802DA388 A618002C */   sh        $t8, 0x2C($s0)
    /* 31E4DC 802DA38C 93A40093 */  lbu        $a0, 0x93($sp)
    /* 31E4E0 802DA390 240501F4 */  addiu      $a1, $zero, 0x1F4
    /* 31E4E4 802DA394 0C04DD1A */  jal        func_80137468_146418
    /* 31E4E8 802DA398 AFA40050 */   sw        $a0, 0x50($sp)
    /* 31E4EC 802DA39C 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 31E4F0 802DA3A0 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 31E4F4 802DA3A4 86050006 */  lh         $a1, 0x6($s0)
    /* 31E4F8 802DA3A8 00003025 */  or         $a2, $zero, $zero
    /* 31E4FC 802DA3AC 0C040B77 */  jal        func_80102DDC_111D8C
    /* 31E500 802DA3B0 3C074248 */   lui       $a3, (0x42480000 >> 16)
    /* 31E504 802DA3B4 3C048005 */  lui        $a0, %hi(D_80052B34)
    /* 31E508 802DA3B8 8C842B34 */  lw         $a0, %lo(D_80052B34)($a0)
    /* 31E50C 802DA3BC 0C048FA4 */  jal        func_80123E90_132E40
    /* 31E510 802DA3C0 24051388 */   addiu     $a1, $zero, 0x1388
    /* 31E514 802DA3C4 86040006 */  lh         $a0, 0x6($s0)
    /* 31E518 802DA3C8 24844000 */  addiu      $a0, $a0, 0x4000
    /* 31E51C 802DA3CC 308CFFFF */  andi       $t4, $a0, 0xFFFF
    /* 31E520 802DA3D0 0C007660 */  jal        sins
    /* 31E524 802DA3D4 01802025 */   or        $a0, $t4, $zero
    /* 31E528 802DA3D8 44824000 */  mtc1       $v0, $f8
    /* 31E52C 802DA3DC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31E530 802DA3E0 44819800 */  mtc1       $at, $f19
    /* 31E534 802DA3E4 468042A0 */  cvt.s.w    $f10, $f8
    /* 31E538 802DA3E8 44809000 */  mtc1       $zero, $f18
    /* 31E53C 802DA3EC 86040006 */  lh         $a0, 0x6($s0)
    /* 31E540 802DA3F0 24844000 */  addiu      $a0, $a0, 0x4000
    /* 31E544 802DA3F4 46005421 */  cvt.d.s    $f16, $f10
    /* 31E548 802DA3F8 308DFFFF */  andi       $t5, $a0, 0xFFFF
    /* 31E54C 802DA3FC 46328103 */  div.d      $f4, $f16, $f18
    /* 31E550 802DA400 01A02025 */  or         $a0, $t5, $zero
    /* 31E554 802DA404 462021A0 */  cvt.s.d    $f6, $f4
    /* 31E558 802DA408 0C007654 */  jal        coss
    /* 31E55C 802DA40C E7A60064 */   swc1      $f6, 0x64($sp)
    /* 31E560 802DA410 44824000 */  mtc1       $v0, $f8
    /* 31E564 802DA414 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 31E568 802DA418 44819800 */  mtc1       $at, $f19
    /* 31E56C 802DA41C 468042A0 */  cvt.s.w    $f10, $f8
    /* 31E570 802DA420 44809000 */  mtc1       $zero, $f18
    /* 31E574 802DA424 8FA30054 */  lw         $v1, 0x54($sp)
    /* 31E578 802DA428 27B80070 */  addiu      $t8, $sp, 0x70
    /* 31E57C 802DA42C 27B9006C */  addiu      $t9, $sp, 0x6C
    /* 31E580 802DA430 84670004 */  lh         $a3, 0x4($v1)
    /* 31E584 802DA434 46005421 */  cvt.d.s    $f16, $f10
    /* 31E588 802DA438 27AB0068 */  addiu      $t3, $sp, 0x68
    /* 31E58C 802DA43C 46328103 */  div.d      $f4, $f16, $f18
    /* 31E590 802DA440 24E70032 */  addiu      $a3, $a3, 0x32
    /* 31E594 802DA444 00077400 */  sll        $t6, $a3, 16
    /* 31E598 802DA448 000E3C03 */  sra        $a3, $t6, 16
    /* 31E59C 802DA44C AFAB0018 */  sw         $t3, 0x18($sp)
    /* 31E5A0 802DA450 AFB90014 */  sw         $t9, 0x14($sp)
    /* 31E5A4 802DA454 AFB80010 */  sw         $t8, 0x10($sp)
    /* 31E5A8 802DA458 02002025 */  or         $a0, $s0, $zero
    /* 31E5AC 802DA45C 84650000 */  lh         $a1, 0x0($v1)
    /* 31E5B0 802DA460 84660002 */  lh         $a2, 0x2($v1)
    /* 31E5B4 802DA464 46202187 */  neg.d      $f6, $f4
    /* 31E5B8 802DA468 46203220 */  cvt.s.d    $f8, $f6
    /* 31E5BC 802DA46C 0C04A10A */  jal        func_80128428_1373D8
    /* 31E5C0 802DA470 E7A80060 */   swc1      $f8, 0x60($sp)
    /* 31E5C4 802DA474 8FA8006C */  lw         $t0, 0x6C($sp)
    /* 31E5C8 802DA478 87A40072 */  lh         $a0, 0x72($sp)
    /* 31E5CC 802DA47C 87A6006A */  lh         $a2, 0x6A($sp)
    /* 31E5D0 802DA480 00082C00 */  sll        $a1, $t0, 16
    /* 31E5D4 802DA484 00056403 */  sra        $t4, $a1, 16
    /* 31E5D8 802DA488 01802825 */  or         $a1, $t4, $zero
    /* 31E5DC 802DA48C 0C037A6E */  jal        func_800DE9B8_ED968
    /* 31E5E0 802DA490 240700FF */   addiu     $a3, $zero, 0xFF
    /* 31E5E4 802DA494 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 31E5E8 802DA498 44810000 */  mtc1       $at, $f0
    /* 31E5EC 802DA49C C7AA0064 */  lwc1       $f10, 0x64($sp)
    /* 31E5F0 802DA4A0 C7A40060 */  lwc1       $f4, 0x60($sp)
    /* 31E5F4 802DA4A4 8FA8006C */  lw         $t0, 0x6C($sp)
    /* 31E5F8 802DA4A8 46005402 */  mul.s      $f16, $f10, $f0
    /* 31E5FC 802DA4AC 2419FFB0 */  addiu      $t9, $zero, -0x50
    /* 31E600 802DA4B0 00082C00 */  sll        $a1, $t0, 16
    /* 31E604 802DA4B4 46002182 */  mul.s      $f6, $f4, $f0
    /* 31E608 802DA4B8 00056C03 */  sra        $t5, $a1, 16
    /* 31E60C 802DA4BC 01A02825 */  or         $a1, $t5, $zero
    /* 31E610 802DA4C0 AFB90010 */  sw         $t9, 0x10($sp)
    /* 31E614 802DA4C4 241900FF */  addiu      $t9, $zero, 0xFF
    /* 31E618 802DA4C8 240D00DC */  addiu      $t5, $zero, 0xDC
    /* 31E61C 802DA4CC 4600848D */  trunc.w.s  $f18, $f16
    /* 31E620 802DA4D0 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 31E624 802DA4D4 24180014 */  addiu      $t8, $zero, 0x14
    /* 31E628 802DA4D8 4600320D */  trunc.w.s  $f8, $f6
    /* 31E62C 802DA4DC 44079000 */  mfc1       $a3, $f18
    /* 31E630 802DA4E0 240B00FF */  addiu      $t3, $zero, 0xFF
    /* 31E634 802DA4E4 AFAB002C */  sw         $t3, 0x2C($sp)
    /* 31E638 802DA4E8 440C4000 */  mfc1       $t4, $f8
    /* 31E63C 802DA4EC 00077E00 */  sll        $t7, $a3, 24
    /* 31E640 802DA4F0 000F3E03 */  sra        $a3, $t7, 24
    /* 31E644 802DA4F4 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 31E648 802DA4F8 240C00C8 */  addiu      $t4, $zero, 0xC8
    /* 31E64C 802DA4FC 240F003C */  addiu      $t7, $zero, 0x3C
    /* 31E650 802DA500 AFAF0020 */  sw         $t7, 0x20($sp)
    /* 31E654 802DA504 AFAC0030 */  sw         $t4, 0x30($sp)
    /* 31E658 802DA508 AFB80024 */  sw         $t8, 0x24($sp)
    /* 31E65C 802DA50C AFAE001C */  sw         $t6, 0x1C($sp)
    /* 31E660 802DA510 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 31E664 802DA514 AFB90028 */  sw         $t9, 0x28($sp)
    /* 31E668 802DA518 87A40072 */  lh         $a0, 0x72($sp)
    /* 31E66C 802DA51C 0C031507 */  jal        func_800C541C_D43CC
    /* 31E670 802DA520 87A6006A */   lh        $a2, 0x6A($sp)
    /* 31E674 802DA524 8FA40050 */  lw         $a0, 0x50($sp)
    /* 31E678 802DA528 0C04DD1A */  jal        func_80137468_146418
    /* 31E67C 802DA52C 24050258 */   addiu     $a1, $zero, 0x258
  .L802DA530_31E680:
    /* 31E680 802DA530 3C01802E */  lui        $at, %hi(D_802E7B48)
    /* 31E684 802DA534 C42A7B48 */  lwc1       $f10, %lo(D_802E7B48)($at)
    /* 31E688 802DA538 87AD0088 */  lh         $t5, 0x88($sp)
    /* 31E68C 802DA53C 240E36B0 */  addiu      $t6, $zero, 0x36B0
    /* 31E690 802DA540 240FEC78 */  addiu      $t7, $zero, -0x1388
    /* 31E694 802DA544 241809C4 */  addiu      $t8, $zero, 0x9C4
    /* 31E698 802DA548 AFB8001C */  sw         $t8, 0x1C($sp)
    /* 31E69C 802DA54C AFAF0018 */  sw         $t7, 0x18($sp)
    /* 31E6A0 802DA550 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 31E6A4 802DA554 93A40093 */  lbu        $a0, 0x93($sp)
    /* 31E6A8 802DA558 240500FA */  addiu      $a1, $zero, 0xFA
    /* 31E6AC 802DA55C 93A6005F */  lbu        $a2, 0x5F($sp)
    /* 31E6B0 802DA560 87A70086 */  lh         $a3, 0x86($sp)
    /* 31E6B4 802DA564 E7AA0020 */  swc1       $f10, 0x20($sp)
    /* 31E6B8 802DA568 0C0B665F */  jal        func_802D997C_31DACC
    /* 31E6BC 802DA56C AFAD0010 */   sw        $t5, 0x10($sp)
    /* 31E6C0 802DA570 10000042 */  b          .L802DA67C_31E7CC
    /* 31E6C4 802DA574 8602001E */   lh        $v0, 0x1E($s0)
    /* 31E6C8 802DA578 8603000A */  lh         $v1, 0xA($s0)
  .L802DA57C_31E6CC:
    /* 31E6CC 802DA57C 1860000B */  blez       $v1, .L802DA5AC_31E6FC
    /* 31E6D0 802DA580 00000000 */   nop
    /* 31E6D4 802DA584 87AB0084 */  lh         $t3, 0x84($sp)
    /* 31E6D8 802DA588 3C0D8015 */  lui        $t5, %hi(D_8014DD50)
    /* 31E6DC 802DA58C 25ADDD50 */  addiu      $t5, $t5, %lo(D_8014DD50)
    /* 31E6E0 802DA590 000B6100 */  sll        $t4, $t3, 4
    /* 31E6E4 802DA594 018D1021 */  addu       $v0, $t4, $t5
    /* 31E6E8 802DA598 944E000A */  lhu        $t6, 0xA($v0)
    /* 31E6EC 802DA59C 2479FE70 */  addiu      $t9, $v1, -0x190
    /* 31E6F0 802DA5A0 A619000A */  sh         $t9, 0xA($s0)
    /* 31E6F4 802DA5A4 25CF0320 */  addiu      $t7, $t6, 0x320
    /* 31E6F8 802DA5A8 A44F000A */  sh         $t7, 0xA($v0)
  .L802DA5AC_31E6FC:
    /* 31E6FC 802DA5AC 0C0213FA */  jal        func_80084FE8_93F98
    /* 31E700 802DA5B0 93A40093 */   lbu       $a0, 0x93($sp)
    /* 31E704 802DA5B4 10400020 */  beqz       $v0, .L802DA638_31E788
    /* 31E708 802DA5B8 2405012C */   addiu     $a1, $zero, 0x12C
    /* 31E70C 802DA5BC 8218004E */  lb         $t8, 0x4E($s0)
    /* 31E710 802DA5C0 5700000B */  bnel       $t8, $zero, .L802DA5F0_31E740
    /* 31E714 802DA5C4 86020012 */   lh        $v0, 0x12($s0)
    /* 31E718 802DA5C8 860B0012 */  lh         $t3, 0x12($s0)
    /* 31E71C 802DA5CC 8FB90074 */  lw         $t9, 0x74($sp)
    /* 31E720 802DA5D0 240C02BC */  addiu      $t4, $zero, 0x2BC
    /* 31E724 802DA5D4 018B6823 */  subu       $t5, $t4, $t3
    /* 31E728 802DA5D8 01B9082A */  slt        $at, $t5, $t9
    /* 31E72C 802DA5DC 10200003 */  beqz       $at, .L802DA5EC_31E73C
    /* 31E730 802DA5E0 240E0003 */   addiu     $t6, $zero, 0x3
    /* 31E734 802DA5E4 10000015 */  b          .L802DA63C_31E78C
    /* 31E738 802DA5E8 A3AE005F */   sb        $t6, 0x5F($sp)
  .L802DA5EC_31E73C:
    /* 31E73C 802DA5EC 86020012 */  lh         $v0, 0x12($s0)
  .L802DA5F0_31E740:
    /* 31E740 802DA5F0 8FAF0074 */  lw         $t7, 0x74($sp)
    /* 31E744 802DA5F4 241802BC */  addiu      $t8, $zero, 0x2BC
    /* 31E748 802DA5F8 03026023 */  subu       $t4, $t8, $v0
    /* 31E74C 802DA5FC 01EC082A */  slt        $at, $t7, $t4
    /* 31E750 802DA600 10200004 */  beqz       $at, .L802DA614_31E764
    /* 31E754 802DA604 8FB90074 */   lw        $t9, 0x74($sp)
    /* 31E758 802DA608 240B0002 */  addiu      $t3, $zero, 0x2
    /* 31E75C 802DA60C 1000000B */  b          .L802DA63C_31E78C
    /* 31E760 802DA610 A3AB005F */   sb        $t3, 0x5F($sp)
  .L802DA614_31E764:
    /* 31E764 802DA614 244D0384 */  addiu      $t5, $v0, 0x384
    /* 31E768 802DA618 01B9082A */  slt        $at, $t5, $t9
    /* 31E76C 802DA61C 10200004 */  beqz       $at, .L802DA630_31E780
    /* 31E770 802DA620 24180003 */   addiu     $t8, $zero, 0x3
    /* 31E774 802DA624 240E0001 */  addiu      $t6, $zero, 0x1
    /* 31E778 802DA628 10000004 */  b          .L802DA63C_31E78C
    /* 31E77C 802DA62C A3AE005F */   sb        $t6, 0x5F($sp)
  .L802DA630_31E780:
    /* 31E780 802DA630 10000002 */  b          .L802DA63C_31E78C
    /* 31E784 802DA634 A3B8005F */   sb        $t8, 0x5F($sp)
  .L802DA638_31E788:
    /* 31E788 802DA638 A3A0005F */  sb         $zero, 0x5F($sp)
  .L802DA63C_31E78C:
    /* 31E78C 802DA63C 3C01802E */  lui        $at, %hi(D_802E7B4C)
    /* 31E790 802DA640 C4307B4C */  lwc1       $f16, %lo(D_802E7B4C)($at)
    /* 31E794 802DA644 87AF0088 */  lh         $t7, 0x88($sp)
    /* 31E798 802DA648 240C1F40 */  addiu      $t4, $zero, 0x1F40
    /* 31E79C 802DA64C 240BEC78 */  addiu      $t3, $zero, -0x1388
    /* 31E7A0 802DA650 241909C4 */  addiu      $t9, $zero, 0x9C4
    /* 31E7A4 802DA654 AFB9001C */  sw         $t9, 0x1C($sp)
    /* 31E7A8 802DA658 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 31E7AC 802DA65C AFAC0014 */  sw         $t4, 0x14($sp)
    /* 31E7B0 802DA660 93A40093 */  lbu        $a0, 0x93($sp)
    /* 31E7B4 802DA664 93A6005F */  lbu        $a2, 0x5F($sp)
    /* 31E7B8 802DA668 87A70086 */  lh         $a3, 0x86($sp)
    /* 31E7BC 802DA66C E7B00020 */  swc1       $f16, 0x20($sp)
    /* 31E7C0 802DA670 0C0B665F */  jal        func_802D997C_31DACC
    /* 31E7C4 802DA674 AFAF0010 */   sw        $t7, 0x10($sp)
    /* 31E7C8 802DA678 8602001E */  lh         $v0, 0x1E($s0)
  .L802DA67C_31E7CC:
    /* 31E7CC 802DA67C 93AD005F */  lbu        $t5, 0x5F($sp)
    /* 31E7D0 802DA680 10400003 */  beqz       $v0, .L802DA690_31E7E0
    /* 31E7D4 802DA684 A20D0026 */   sb        $t5, 0x26($s0)
    /* 31E7D8 802DA688 244EFFFF */  addiu      $t6, $v0, -0x1
    /* 31E7DC 802DA68C A60E001E */  sh         $t6, 0x1E($s0)
  .L802DA690_31E7E0:
    /* 31E7E0 802DA690 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 31E7E4 802DA694 8FB00040 */  lw         $s0, 0x40($sp)
    /* 31E7E8 802DA698 27BD0090 */  addiu      $sp, $sp, 0x90
    /* 31E7EC 802DA69C 03E00008 */  jr         $ra
    /* 31E7F0 802DA6A0 00000000 */   nop
endlabel func_802D9F60_31E0B0
