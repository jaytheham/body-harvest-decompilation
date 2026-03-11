nonmatching func_800FF390_10E340, 0x218

glabel func_800FF390_10E340
    /* 10E340 800FF390 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 10E344 800FF394 AFB00030 */  sw         $s0, 0x30($sp)
    /* 10E348 800FF398 00808025 */  or         $s0, $a0, $zero
    /* 10E34C 800FF39C 3C0F8014 */  lui        $t7, %hi(D_8013FDA8)
    /* 10E350 800FF3A0 25EFFDA8 */  addiu      $t7, $t7, %lo(D_8013FDA8)
    /* 10E354 800FF3A4 00107100 */  sll        $t6, $s0, 4
    /* 10E358 800FF3A8 01CF1021 */  addu       $v0, $t6, $t7
    /* 10E35C 800FF3AC 84580008 */  lh         $t8, 0x8($v0)
    /* 10E360 800FF3B0 8459000A */  lh         $t9, 0xA($v0)
    /* 10E364 800FF3B4 3C048005 */  lui        $a0, %hi(D_80052B40)
    /* 10E368 800FF3B8 24842B40 */  addiu      $a0, $a0, %lo(D_80052B40)
    /* 10E36C 800FF3BC 3C098016 */  lui        $t1, %hi(D_80159312)
    /* 10E370 800FF3C0 A4980000 */  sh         $t8, 0x0($a0)
    /* 10E374 800FF3C4 A4990002 */  sh         $t9, 0x2($a0)
    /* 10E378 800FF3C8 85299312 */  lh         $t1, %lo(D_80159312)($t1)
    /* 10E37C 800FF3CC 8448000C */  lh         $t0, 0xC($v0)
    /* 10E380 800FF3D0 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 10E384 800FF3D4 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10E388 800FF3D8 01095021 */  addu       $t2, $t0, $t1
    /* 10E38C 800FF3DC A48A0004 */  sh         $t2, 0x4($a0)
    /* 10E390 800FF3E0 F7B40028 */  sdc1       $f20, 0x28($sp)
    /* 10E394 800FF3E4 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10E398 800FF3E8 00002825 */  or         $a1, $zero, $zero
    /* 10E39C 800FF3EC 0C000E74 */  jal        func_800039D0_45D0
    /* 10E3A0 800FF3F0 00003025 */   or        $a2, $zero, $zero
    /* 10E3A4 800FF3F4 3C108016 */  lui        $s0, %hi(D_801592C0)
    /* 10E3A8 800FF3F8 261092C0 */  addiu      $s0, $s0, %lo(D_801592C0)
    /* 10E3AC 800FF3FC 3C048006 */  lui        $a0, %hi(D_8005BB38)
    /* 10E3B0 800FF400 8C84BB38 */  lw         $a0, %lo(D_8005BB38)($a0)
    /* 10E3B4 800FF404 02002825 */  or         $a1, $s0, $zero
    /* 10E3B8 800FF408 0C008BFC */  jal        guMtxCatL
    /* 10E3BC 800FF40C 02003025 */   or        $a2, $s0, $zero
    /* 10E3C0 800FF410 4480A000 */  mtc1       $zero, $f20
    /* 10E3C4 800FF414 27AB0054 */  addiu      $t3, $sp, 0x54
    /* 10E3C8 800FF418 27AC0050 */  addiu      $t4, $sp, 0x50
    /* 10E3CC 800FF41C 27AD004C */  addiu      $t5, $sp, 0x4C
    /* 10E3D0 800FF420 4405A000 */  mfc1       $a1, $f20
    /* 10E3D4 800FF424 4406A000 */  mfc1       $a2, $f20
    /* 10E3D8 800FF428 4407A000 */  mfc1       $a3, $f20
    /* 10E3DC 800FF42C AFAD0018 */  sw         $t5, 0x18($sp)
    /* 10E3E0 800FF430 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 10E3E4 800FF434 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 10E3E8 800FF438 0C008BE4 */  jal        guMtxXFML
    /* 10E3EC 800FF43C 02002025 */   or        $a0, $s0, $zero
    /* 10E3F0 800FF440 4405A000 */  mfc1       $a1, $f20
    /* 10E3F4 800FF444 4406A000 */  mfc1       $a2, $f20
    /* 10E3F8 800FF448 27AE0048 */  addiu      $t6, $sp, 0x48
    /* 10E3FC 800FF44C 27AF0044 */  addiu      $t7, $sp, 0x44
    /* 10E400 800FF450 27B80040 */  addiu      $t8, $sp, 0x40
    /* 10E404 800FF454 AFB80018 */  sw         $t8, 0x18($sp)
    /* 10E408 800FF458 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 10E40C 800FF45C AFAE0010 */  sw         $t6, 0x10($sp)
    /* 10E410 800FF460 02002025 */  or         $a0, $s0, $zero
    /* 10E414 800FF464 0C008BE4 */  jal        guMtxXFML
    /* 10E418 800FF468 3C074580 */   lui       $a3, (0x45800000 >> 16)
    /* 10E41C 800FF46C C7AC0048 */  lwc1       $f12, 0x48($sp)
    /* 10E420 800FF470 C7AE0040 */  lwc1       $f14, 0x40($sp)
    /* 10E424 800FF474 C7A40054 */  lwc1       $f4, 0x54($sp)
    /* 10E428 800FF478 C7A60044 */  lwc1       $f6, 0x44($sp)
    /* 10E42C 800FF47C C7A80050 */  lwc1       $f8, 0x50($sp)
    /* 10E430 800FF480 C7B0004C */  lwc1       $f16, 0x4C($sp)
    /* 10E434 800FF484 46046301 */  sub.s      $f12, $f12, $f4
    /* 10E438 800FF488 46083281 */  sub.s      $f10, $f6, $f8
    /* 10E43C 800FF48C E7AC0048 */  swc1       $f12, 0x48($sp)
    /* 10E440 800FF490 46107381 */  sub.s      $f14, $f14, $f16
    /* 10E444 800FF494 E7AA0044 */  swc1       $f10, 0x44($sp)
    /* 10E448 800FF498 0C000E09 */  jal        func_80003824_4424
    /* 10E44C 800FF49C E7AE0040 */   swc1      $f14, 0x40($sp)
    /* 10E450 800FF4A0 C7A00048 */  lwc1       $f0, 0x48($sp)
    /* 10E454 800FF4A4 C7AE0040 */  lwc1       $f14, 0x40($sp)
    /* 10E458 800FF4A8 3C018016 */  lui        $at, %hi(D_8015927E)
    /* 10E45C 800FF4AC 46000482 */  mul.s      $f18, $f0, $f0
    /* 10E460 800FF4B0 A422927E */  sh         $v0, %lo(D_8015927E)($at)
    /* 10E464 800FF4B4 460E7102 */  mul.s      $f4, $f14, $f14
    /* 10E468 800FF4B8 0C007650 */  jal        sqrtf
    /* 10E46C 800FF4BC 46049300 */   add.s     $f12, $f18, $f4
    /* 10E470 800FF4C0 46000306 */  mov.s      $f12, $f0
    /* 10E474 800FF4C4 0C000E09 */  jal        func_80003824_4424
    /* 10E478 800FF4C8 C7AE0044 */   lwc1      $f14, 0x44($sp)
    /* 10E47C 800FF4CC 0002C823 */  negu       $t9, $v0
    /* 10E480 800FF4D0 3C018016 */  lui        $at, %hi(D_80159280)
    /* 10E484 800FF4D4 4406A000 */  mfc1       $a2, $f20
    /* 10E488 800FF4D8 4407A000 */  mfc1       $a3, $f20
    /* 10E48C 800FF4DC 27A80048 */  addiu      $t0, $sp, 0x48
    /* 10E490 800FF4E0 27A90044 */  addiu      $t1, $sp, 0x44
    /* 10E494 800FF4E4 27AA0040 */  addiu      $t2, $sp, 0x40
    /* 10E498 800FF4E8 A4399280 */  sh         $t9, %lo(D_80159280)($at)
    /* 10E49C 800FF4EC AFAA0018 */  sw         $t2, 0x18($sp)
    /* 10E4A0 800FF4F0 AFA90014 */  sw         $t1, 0x14($sp)
    /* 10E4A4 800FF4F4 AFA80010 */  sw         $t0, 0x10($sp)
    /* 10E4A8 800FF4F8 02002025 */  or         $a0, $s0, $zero
    /* 10E4AC 800FF4FC 0C008BE4 */  jal        guMtxXFML
    /* 10E4B0 800FF500 3C054580 */   lui       $a1, (0x45800000 >> 16)
    /* 10E4B4 800FF504 C7A00048 */  lwc1       $f0, 0x48($sp)
    /* 10E4B8 800FF508 C7A60054 */  lwc1       $f6, 0x54($sp)
    /* 10E4BC 800FF50C C7AE0040 */  lwc1       $f14, 0x40($sp)
    /* 10E4C0 800FF510 C7B2004C */  lwc1       $f18, 0x4C($sp)
    /* 10E4C4 800FF514 46060001 */  sub.s      $f0, $f0, $f6
    /* 10E4C8 800FF518 C7A80044 */  lwc1       $f8, 0x44($sp)
    /* 10E4CC 800FF51C C7AA0050 */  lwc1       $f10, 0x50($sp)
    /* 10E4D0 800FF520 46127381 */  sub.s      $f14, $f14, $f18
    /* 10E4D4 800FF524 46000102 */  mul.s      $f4, $f0, $f0
    /* 10E4D8 800FF528 E7A00048 */  swc1       $f0, 0x48($sp)
    /* 10E4DC 800FF52C 460A4401 */  sub.s      $f16, $f8, $f10
    /* 10E4E0 800FF530 460E7182 */  mul.s      $f6, $f14, $f14
    /* 10E4E4 800FF534 E7AE0040 */  swc1       $f14, 0x40($sp)
    /* 10E4E8 800FF538 E7B00044 */  swc1       $f16, 0x44($sp)
    /* 10E4EC 800FF53C 0C007650 */  jal        sqrtf
    /* 10E4F0 800FF540 46062300 */   add.s     $f12, $f4, $f6
    /* 10E4F4 800FF544 46000306 */  mov.s      $f12, $f0
    /* 10E4F8 800FF548 0C000E09 */  jal        func_80003824_4424
    /* 10E4FC 800FF54C C7AE0044 */   lwc1      $f14, 0x44($sp)
    /* 10E500 800FF550 3C0C8016 */  lui        $t4, %hi(D_80159284)
    /* 10E504 800FF554 3C0D8016 */  lui        $t5, %hi(D_80159288)
    /* 10E508 800FF558 3C0E8016 */  lui        $t6, %hi(D_8015928C)
    /* 10E50C 800FF55C 00025823 */  negu       $t3, $v0
    /* 10E510 800FF560 3C018016 */  lui        $at, %hi(D_80159282)
    /* 10E514 800FF564 25CE928C */  addiu      $t6, $t6, %lo(D_8015928C)
    /* 10E518 800FF568 25AD9288 */  addiu      $t5, $t5, %lo(D_80159288)
    /* 10E51C 800FF56C 258C9284 */  addiu      $t4, $t4, %lo(D_80159284)
    /* 10E520 800FF570 4405A000 */  mfc1       $a1, $f20
    /* 10E524 800FF574 4407A000 */  mfc1       $a3, $f20
    /* 10E528 800FF578 A42B9282 */  sh         $t3, %lo(D_80159282)($at)
    /* 10E52C 800FF57C AFAC0010 */  sw         $t4, 0x10($sp)
    /* 10E530 800FF580 AFAD0014 */  sw         $t5, 0x14($sp)
    /* 10E534 800FF584 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 10E538 800FF588 02002025 */  or         $a0, $s0, $zero
    /* 10E53C 800FF58C 0C008BE4 */  jal        guMtxXFML
    /* 10E540 800FF590 3C06C208 */   lui       $a2, (0xC2080000 >> 16)
    /* 10E544 800FF594 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 10E548 800FF598 D7B40028 */  ldc1       $f20, 0x28($sp)
    /* 10E54C 800FF59C 8FB00030 */  lw         $s0, 0x30($sp)
    /* 10E550 800FF5A0 03E00008 */  jr         $ra
    /* 10E554 800FF5A4 27BD0058 */   addiu     $sp, $sp, 0x58
endlabel func_800FF390_10E340
