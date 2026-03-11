nonmatching func_800FB238_10A1E8, 0x168

glabel func_800FB238_10A1E8
    /* 10A1E8 800FB238 3C098016 */  lui        $t1, %hi(D_80159258)
    /* 10A1EC 800FB23C 25299258 */  addiu      $t1, $t1, %lo(D_80159258)
    /* 10A1F0 800FB240 3C028005 */  lui        $v0, %hi(D_80052A8C)
    /* 10A1F4 800FB244 8C422A8C */  lw         $v0, %lo(D_80052A8C)($v0)
    /* 10A1F8 800FB248 8D230000 */  lw         $v1, 0x0($t1)
    /* 10A1FC 800FB24C 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 10A200 800FB250 AFB00020 */  sw         $s0, 0x20($sp)
    /* 10A204 800FB254 0043082B */  sltu       $at, $v0, $v1
    /* 10A208 800FB258 00808025 */  or         $s0, $a0, $zero
    /* 10A20C 800FB25C AFBF0024 */  sw         $ra, 0x24($sp)
    /* 10A210 800FB260 AFA5002C */  sw         $a1, 0x2C($sp)
    /* 10A214 800FB264 AFA60030 */  sw         $a2, 0x30($sp)
    /* 10A218 800FB268 10200003 */  beqz       $at, .L800FB278_10A228
    /* 10A21C 800FB26C AFA70034 */   sw        $a3, 0x34($sp)
    /* 10A220 800FB270 AD200000 */  sw         $zero, 0x0($t1)
    /* 10A224 800FB274 00001825 */  or         $v1, $zero, $zero
  .L800FB278_10A228:
    /* 10A228 800FB278 3C088016 */  lui        $t0, %hi(D_8015925C)
    /* 10A22C 800FB27C 2508925C */  addiu      $t0, $t0, %lo(D_8015925C)
    /* 10A230 800FB280 8D0E0000 */  lw         $t6, 0x0($t0)
    /* 10A234 800FB284 00437823 */  subu       $t7, $v0, $v1
    /* 10A238 800FB288 004E082B */  sltu       $at, $v0, $t6
    /* 10A23C 800FB28C 50200003 */  beql       $at, $zero, .L800FB29C_10A24C
    /* 10A240 800FB290 2DE1000D */   sltiu     $at, $t7, 0xD
    /* 10A244 800FB294 AD000000 */  sw         $zero, 0x0($t0)
    /* 10A248 800FB298 2DE1000D */  sltiu      $at, $t7, 0xD
  .L800FB29C_10A24C:
    /* 10A24C 800FB29C 5420001B */  bnel       $at, $zero, .L800FB30C_10A2BC
    /* 10A250 800FB2A0 8D190000 */   lw        $t9, 0x0($t0)
    /* 10A254 800FB2A4 C6060058 */  lwc1       $f6, 0x58($s0)
    /* 10A258 800FB2A8 3C014034 */  lui        $at, (0x40340000 >> 16)
    /* 10A25C 800FB2AC 44812800 */  mtc1       $at, $f5
    /* 10A260 800FB2B0 44802000 */  mtc1       $zero, $f4
    /* 10A264 800FB2B4 46003221 */  cvt.d.s    $f8, $f6
    /* 10A268 800FB2B8 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 10A26C 800FB2BC 4628203C */  c.lt.d     $f4, $f8
    /* 10A270 800FB2C0 00002025 */  or         $a0, $zero, $zero
    /* 10A274 800FB2C4 240500D6 */  addiu      $a1, $zero, 0xD6
    /* 10A278 800FB2C8 45020010 */  bc1fl      .L800FB30C_10A2BC
    /* 10A27C 800FB2CC 8D190000 */   lw        $t9, 0x0($t0)
    /* 10A280 800FB2D0 86180004 */  lh         $t8, 0x4($s0)
    /* 10A284 800FB2D4 44815000 */  mtc1       $at, $f10
    /* 10A288 800FB2D8 86060000 */  lh         $a2, 0x0($s0)
    /* 10A28C 800FB2DC 86070002 */  lh         $a3, 0x2($s0)
    /* 10A290 800FB2E0 AFB80010 */  sw         $t8, 0x10($sp)
    /* 10A294 800FB2E4 0C04DC6E */  jal        func_801371B8_146168
    /* 10A298 800FB2E8 E7AA0014 */   swc1      $f10, 0x14($sp)
    /* 10A29C 800FB2EC 3C028005 */  lui        $v0, %hi(D_80052A8C)
    /* 10A2A0 800FB2F0 8C422A8C */  lw         $v0, %lo(D_80052A8C)($v0)
    /* 10A2A4 800FB2F4 3C098016 */  lui        $t1, %hi(D_80159258)
    /* 10A2A8 800FB2F8 25299258 */  addiu      $t1, $t1, %lo(D_80159258)
    /* 10A2AC 800FB2FC 3C088016 */  lui        $t0, %hi(D_8015925C)
    /* 10A2B0 800FB300 2508925C */  addiu      $t0, $t0, %lo(D_8015925C)
    /* 10A2B4 800FB304 AD220000 */  sw         $v0, 0x0($t1)
    /* 10A2B8 800FB308 8D190000 */  lw         $t9, 0x0($t0)
  .L800FB30C_10A2BC:
    /* 10A2BC 800FB30C 00595023 */  subu       $t2, $v0, $t9
    /* 10A2C0 800FB310 2D410007 */  sltiu      $at, $t2, 0x7
    /* 10A2C4 800FB314 5420001E */  bnel       $at, $zero, .L800FB390_10A340
    /* 10A2C8 800FB318 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 10A2CC 800FB31C C6120058 */  lwc1       $f18, 0x58($s0)
    /* 10A2D0 800FB320 3C014034 */  lui        $at, (0x40340000 >> 16)
    /* 10A2D4 800FB324 44818800 */  mtc1       $at, $f17
    /* 10A2D8 800FB328 44808000 */  mtc1       $zero, $f16
    /* 10A2DC 800FB32C 460091A1 */  cvt.d.s    $f6, $f18
    /* 10A2E0 800FB330 4626803C */  c.lt.d     $f16, $f6
    /* 10A2E4 800FB334 00000000 */  nop
    /* 10A2E8 800FB338 45020015 */  bc1fl      .L800FB390_10A340
    /* 10A2EC 800FB33C 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 10A2F0 800FB340 920B001A */  lbu        $t3, 0x1A($s0)
    /* 10A2F4 800FB344 3C0D8025 */  lui        $t5, %hi(D_80257A0C)
    /* 10A2F8 800FB348 860E0012 */  lh         $t6, 0x12($s0)
    /* 10A2FC 800FB34C 000B60C0 */  sll        $t4, $t3, 3
    /* 10A300 800FB350 018B6023 */  subu       $t4, $t4, $t3
    /* 10A304 800FB354 000C6100 */  sll        $t4, $t4, 4
    /* 10A308 800FB358 01AC6821 */  addu       $t5, $t5, $t4
    /* 10A30C 800FB35C 85AD7A0C */  lh         $t5, %lo(D_80257A0C)($t5)
    /* 10A310 800FB360 86040000 */  lh         $a0, 0x0($s0)
    /* 10A314 800FB364 86050004 */  lh         $a1, 0x4($s0)
    /* 10A318 800FB368 01AE3021 */  addu       $a2, $t5, $t6
    /* 10A31C 800FB36C 30CFFFFF */  andi       $t7, $a2, 0xFFFF
    /* 10A320 800FB370 0C0383A7 */  jal        func_800E0E9C_EFE4C
    /* 10A324 800FB374 01E03025 */   or        $a2, $t7, $zero
    /* 10A328 800FB378 3C188005 */  lui        $t8, %hi(D_80052A8C)
    /* 10A32C 800FB37C 8F182A8C */  lw         $t8, %lo(D_80052A8C)($t8)
    /* 10A330 800FB380 3C088016 */  lui        $t0, %hi(D_8015925C)
    /* 10A334 800FB384 2508925C */  addiu      $t0, $t0, %lo(D_8015925C)
    /* 10A338 800FB388 AD180000 */  sw         $t8, 0x0($t0)
    /* 10A33C 800FB38C 8FBF0024 */  lw         $ra, 0x24($sp)
  .L800FB390_10A340:
    /* 10A340 800FB390 8FB00020 */  lw         $s0, 0x20($sp)
    /* 10A344 800FB394 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 10A348 800FB398 03E00008 */  jr         $ra
    /* 10A34C 800FB39C 00000000 */   nop
endlabel func_800FB238_10A1E8
