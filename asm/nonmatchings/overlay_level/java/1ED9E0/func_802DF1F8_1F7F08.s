nonmatching func_802DF1F8_1F7F08, 0x1C8

glabel func_802DF1F8_1F7F08
    /* 1F7F08 802DF1F8 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 1F7F0C 802DF1FC AFA40070 */  sw         $a0, 0x70($sp)
    /* 1F7F10 802DF200 93AE0073 */  lbu        $t6, 0x73($sp)
    /* 1F7F14 802DF204 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F7F18 802DF208 AFB00028 */  sw         $s0, 0x28($sp)
    /* 1F7F1C 802DF20C 000E7880 */  sll        $t7, $t6, 2
    /* 1F7F20 802DF210 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F7F24 802DF214 000F7900 */  sll        $t7, $t7, 4
    /* 1F7F28 802DF218 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F7F2C 802DF21C 01F88021 */  addu       $s0, $t7, $t8
    /* 1F7F30 802DF220 8619000C */  lh         $t9, 0xC($s0)
    /* 1F7F34 802DF224 3C078015 */  lui        $a3, %hi(D_8014DD50)
    /* 1F7F38 802DF228 24E7DD50 */  addiu      $a3, $a3, %lo(D_8014DD50)
    /* 1F7F3C 802DF22C 00194100 */  sll        $t0, $t9, 4
    /* 1F7F40 802DF230 00E84821 */  addu       $t1, $a3, $t0
    /* 1F7F44 802DF234 8122000C */  lb         $v0, 0xC($t1)
    /* 1F7F48 802DF238 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 1F7F4C 802DF23C 27A60054 */  addiu      $a2, $sp, 0x54
    /* 1F7F50 802DF240 00025100 */  sll        $t2, $v0, 4
    /* 1F7F54 802DF244 00EA5821 */  addu       $t3, $a3, $t2
    /* 1F7F58 802DF248 8163000C */  lb         $v1, 0xC($t3)
    /* 1F7F5C 802DF24C 00022600 */  sll        $a0, $v0, 24
    /* 1F7F60 802DF250 00046603 */  sra        $t4, $a0, 24
    /* 1F7F64 802DF254 00036900 */  sll        $t5, $v1, 4
    /* 1F7F68 802DF258 00ED2821 */  addu       $a1, $a3, $t5
    /* 1F7F6C 802DF25C 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 1F7F70 802DF260 01802025 */   or        $a0, $t4, $zero
    /* 1F7F74 802DF264 27AE0050 */  addiu      $t6, $sp, 0x50
    /* 1F7F78 802DF268 27AF004C */  addiu      $t7, $sp, 0x4C
    /* 1F7F7C 802DF26C 27B80048 */  addiu      $t8, $sp, 0x48
    /* 1F7F80 802DF270 AFB80018 */  sw         $t8, 0x18($sp)
    /* 1F7F84 802DF274 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 1F7F88 802DF278 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 1F7F8C 802DF27C 02002025 */  or         $a0, $s0, $zero
    /* 1F7F90 802DF280 87A50056 */  lh         $a1, 0x56($sp)
    /* 1F7F94 802DF284 87A6005A */  lh         $a2, 0x5A($sp)
    /* 1F7F98 802DF288 0C04A10A */  jal        func_80128428_1373D8
    /* 1F7F9C 802DF28C 87A7005E */   lh        $a3, 0x5E($sp)
    /* 1F7FA0 802DF290 3C028005 */  lui        $v0, %hi(D_80052B34)
    /* 1F7FA4 802DF294 8C422B34 */  lw         $v0, %lo(D_80052B34)($v0)
    /* 1F7FA8 802DF298 8FA80050 */  lw         $t0, 0x50($sp)
    /* 1F7FAC 802DF29C 8FAC0048 */  lw         $t4, 0x48($sp)
    /* 1F7FB0 802DF2A0 84590000 */  lh         $t9, 0x0($v0)
    /* 1F7FB4 802DF2A4 844B0004 */  lh         $t3, 0x4($v0)
    /* 1F7FB8 802DF2A8 03281823 */  subu       $v1, $t9, $t0
    /* 1F7FBC 802DF2AC 016C2023 */  subu       $a0, $t3, $t4
    /* 1F7FC0 802DF2B0 00034C00 */  sll        $t1, $v1, 16
    /* 1F7FC4 802DF2B4 00046C00 */  sll        $t5, $a0, 16
    /* 1F7FC8 802DF2B8 00091C03 */  sra        $v1, $t1, 16
    /* 1F7FCC 802DF2BC 000D2403 */  sra        $a0, $t5, 16
    /* 1F7FD0 802DF2C0 44843000 */  mtc1       $a0, $f6
    /* 1F7FD4 802DF2C4 44832000 */  mtc1       $v1, $f4
    /* 1F7FD8 802DF2C8 A7A40064 */  sh         $a0, 0x64($sp)
    /* 1F7FDC 802DF2CC A7A30066 */  sh         $v1, 0x66($sp)
    /* 1F7FE0 802DF2D0 468033A0 */  cvt.s.w    $f14, $f6
    /* 1F7FE4 802DF2D4 0C000E09 */  jal        func_80003824_4424
    /* 1F7FE8 802DF2D8 46802320 */   cvt.s.w   $f12, $f4
    /* 1F7FEC 802DF2DC 87A30066 */  lh         $v1, 0x66($sp)
    /* 1F7FF0 802DF2E0 87A40064 */  lh         $a0, 0x64($sp)
    /* 1F7FF4 802DF2E4 860F0006 */  lh         $t7, 0x6($s0)
    /* 1F7FF8 802DF2E8 00630019 */  multu      $v1, $v1
    /* 1F7FFC 802DF2EC 004FC023 */  subu       $t8, $v0, $t7
    /* 1F8000 802DF2F0 A7B80046 */  sh         $t8, 0x46($sp)
    /* 1F8004 802DF2F4 0000C812 */  mflo       $t9
    /* 1F8008 802DF2F8 00000000 */  nop
    /* 1F800C 802DF2FC 00000000 */  nop
    /* 1F8010 802DF300 00840019 */  multu      $a0, $a0
    /* 1F8014 802DF304 00004012 */  mflo       $t0
    /* 1F8018 802DF308 03284821 */  addu       $t1, $t9, $t0
    /* 1F801C 802DF30C 44894000 */  mtc1       $t1, $f8
    /* 1F8020 802DF310 0C007650 */  jal        sqrtf
    /* 1F8024 802DF314 46804320 */   cvt.s.w   $f12, $f8
    /* 1F8028 802DF318 3C0D8005 */  lui        $t5, %hi(D_80052B34)
    /* 1F802C 802DF31C 8DAD2B34 */  lw         $t5, %lo(D_80052B34)($t5)
    /* 1F8030 802DF320 860A0002 */  lh         $t2, 0x2($s0)
    /* 1F8034 802DF324 8FAB0058 */  lw         $t3, 0x58($sp)
    /* 1F8038 802DF328 85AE0002 */  lh         $t6, 0x2($t5)
    /* 1F803C 802DF32C 46000306 */  mov.s      $f12, $f0
    /* 1F8040 802DF330 014B6021 */  addu       $t4, $t2, $t3
    /* 1F8044 802DF334 018E7823 */  subu       $t7, $t4, $t6
    /* 1F8048 802DF338 448F5000 */  mtc1       $t7, $f10
    /* 1F804C 802DF33C 0C000E09 */  jal        func_80003824_4424
    /* 1F8050 802DF340 468053A0 */   cvt.s.w   $f14, $f10
    /* 1F8054 802DF344 3C188004 */  lui        $t8, %hi(D_80047710)
    /* 1F8058 802DF348 87187710 */  lh         $t8, %lo(D_80047710)($t8)
    /* 1F805C 802DF34C 93A40073 */  lbu        $a0, 0x73($sp)
    /* 1F8060 802DF350 87A50046 */  lh         $a1, 0x46($sp)
    /* 1F8064 802DF354 00583023 */  subu       $a2, $v0, $t8
    /* 1F8068 802DF358 24C6E000 */  addiu      $a2, $a2, -0x2000
    /* 1F806C 802DF35C 0006CC00 */  sll        $t9, $a2, 16
    /* 1F8070 802DF360 00194403 */  sra        $t0, $t9, 16
    /* 1F8074 802DF364 01003025 */  or         $a2, $t0, $zero
    /* 1F8078 802DF368 04C10003 */  bgez       $a2, .L802DF378_1F8088
    /* 1F807C 802DF36C 00064843 */   sra       $t1, $a2, 1
    /* 1F8080 802DF370 24C10001 */  addiu      $at, $a2, 0x1
    /* 1F8084 802DF374 00014843 */  sra        $t1, $at, 1
  .L802DF378_1F8088:
    /* 1F8088 802DF378 00095400 */  sll        $t2, $t1, 16
    /* 1F808C 802DF37C 000A3403 */  sra        $a2, $t2, 16
    /* 1F8090 802DF380 28C1E000 */  slti       $at, $a2, -0x2000
    /* 1F8094 802DF384 50200004 */  beql       $at, $zero, .L802DF398_1F80A8
    /* 1F8098 802DF388 28C10801 */   slti      $at, $a2, 0x801
    /* 1F809C 802DF38C 10000005 */  b          .L802DF3A4_1F80B4
    /* 1F80A0 802DF390 2406E000 */   addiu     $a2, $zero, -0x2000
    /* 1F80A4 802DF394 28C10801 */  slti       $at, $a2, 0x801
  .L802DF398_1F80A8:
    /* 1F80A8 802DF398 14200002 */  bnez       $at, .L802DF3A4_1F80B4
    /* 1F80AC 802DF39C 00000000 */   nop
    /* 1F80B0 802DF3A0 24060800 */  addiu      $a2, $zero, 0x800
  .L802DF3A4_1F80B4:
    /* 1F80B4 802DF3A4 0C0B7BF0 */  jal        func_802DEFC0_1F7CD0
    /* 1F80B8 802DF3A8 00003825 */   or        $a3, $zero, $zero
    /* 1F80BC 802DF3AC 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 1F80C0 802DF3B0 8FB00028 */  lw         $s0, 0x28($sp)
    /* 1F80C4 802DF3B4 27BD0070 */  addiu      $sp, $sp, 0x70
    /* 1F80C8 802DF3B8 03E00008 */  jr         $ra
    /* 1F80CC 802DF3BC 00000000 */   nop
endlabel func_802DF1F8_1F7F08
