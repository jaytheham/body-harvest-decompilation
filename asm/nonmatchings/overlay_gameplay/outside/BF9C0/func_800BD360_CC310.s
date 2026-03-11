nonmatching func_800BD360_CC310, 0x328

glabel func_800BD360_CC310
    /* CC310 800BD360 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* CC314 800BD364 AFB40038 */  sw         $s4, 0x38($sp)
    /* CC318 800BD368 3C148004 */  lui        $s4, %hi(currentLevel)
    /* CC31C 800BD36C 26947F90 */  addiu      $s4, $s4, %lo(currentLevel)
    /* CC320 800BD370 8E8E0000 */  lw         $t6, 0x0($s4)
    /* CC324 800BD374 24010005 */  addiu      $at, $zero, 0x5
    /* CC328 800BD378 AFBF004C */  sw         $ra, 0x4C($sp)
    /* CC32C 800BD37C AFBE0048 */  sw         $fp, 0x48($sp)
    /* CC330 800BD380 AFB70044 */  sw         $s7, 0x44($sp)
    /* CC334 800BD384 AFB60040 */  sw         $s6, 0x40($sp)
    /* CC338 800BD388 AFB5003C */  sw         $s5, 0x3C($sp)
    /* CC33C 800BD38C AFB30034 */  sw         $s3, 0x34($sp)
    /* CC340 800BD390 AFB20030 */  sw         $s2, 0x30($sp)
    /* CC344 800BD394 AFB1002C */  sw         $s1, 0x2C($sp)
    /* CC348 800BD398 11C100AF */  beq        $t6, $at, .L800BD658_CC608
    /* CC34C 800BD39C AFB00028 */   sw        $s0, 0x28($sp)
    /* CC350 800BD3A0 3C078006 */  lui        $a3, %hi(D_8005BB2C)
    /* CC354 800BD3A4 24E7BB2C */  addiu      $a3, $a3, %lo(D_8005BB2C)
    /* CC358 800BD3A8 8CE20000 */  lw         $v0, 0x0($a3)
    /* CC35C 800BD3AC 3C18B900 */  lui        $t8, (0xB900031D >> 16)
    /* CC360 800BD3B0 3C190C18 */  lui        $t9, (0xC1849F0 >> 16)
    /* CC364 800BD3B4 244F0008 */  addiu      $t7, $v0, 0x8
    /* CC368 800BD3B8 ACEF0000 */  sw         $t7, 0x0($a3)
    /* CC36C 800BD3BC 373949F0 */  ori        $t9, $t9, (0xC1849F0 & 0xFFFF)
    /* CC370 800BD3C0 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
    /* CC374 800BD3C4 AC580000 */  sw         $t8, 0x0($v0)
    /* CC378 800BD3C8 AC590004 */  sw         $t9, 0x4($v0)
    /* CC37C 800BD3CC 8CE20000 */  lw         $v0, 0x0($a3)
    /* CC380 800BD3D0 3C09B600 */  lui        $t1, (0xB6000000 >> 16)
    /* CC384 800BD3D4 3C0A0003 */  lui        $t2, (0x30000 >> 16)
    /* CC388 800BD3D8 24480008 */  addiu      $t0, $v0, 0x8
    /* CC38C 800BD3DC ACE80000 */  sw         $t0, 0x0($a3)
    /* CC390 800BD3E0 AC4A0004 */  sw         $t2, 0x4($v0)
    /* CC394 800BD3E4 AC490000 */  sw         $t1, 0x0($v0)
    /* CC398 800BD3E8 8CE20000 */  lw         $v0, 0x0($a3)
    /* CC39C 800BD3EC 3C0CFCFF */  lui        $t4, (0xFCFFFFFF >> 16)
    /* CC3A0 800BD3F0 3C0DFFFE */  lui        $t5, (0xFFFE7838 >> 16)
    /* CC3A4 800BD3F4 244B0008 */  addiu      $t3, $v0, 0x8
    /* CC3A8 800BD3F8 ACEB0000 */  sw         $t3, 0x0($a3)
    /* CC3AC 800BD3FC 35AD7838 */  ori        $t5, $t5, (0xFFFE7838 & 0xFFFF)
    /* CC3B0 800BD400 358CFFFF */  ori        $t4, $t4, (0xFCFFFFFF & 0xFFFF)
    /* CC3B4 800BD404 AC4C0000 */  sw         $t4, 0x0($v0)
    /* CC3B8 800BD408 AC4D0004 */  sw         $t5, 0x4($v0)
    /* CC3BC 800BD40C 8CE20000 */  lw         $v0, 0x0($a3)
    /* CC3C0 800BD410 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* CC3C4 800BD414 3C138004 */  lui        $s3, %hi(D_8003E0FC)
    /* CC3C8 800BD418 244E0008 */  addiu      $t6, $v0, 0x8
    /* CC3CC 800BD41C ACEE0000 */  sw         $t6, 0x0($a3)
    /* CC3D0 800BD420 2673E0FC */  addiu      $s3, $s3, %lo(D_8003E0FC)
    /* CC3D4 800BD424 00009025 */  or         $s2, $zero, $zero
    /* CC3D8 800BD428 241E000A */  addiu      $fp, $zero, 0xA
    /* CC3DC 800BD42C 24170002 */  addiu      $s7, $zero, 0x2
    /* CC3E0 800BD430 27B60088 */  addiu      $s6, $sp, 0x88
    /* CC3E4 800BD434 27B5008A */  addiu      $s5, $sp, 0x8A
    /* CC3E8 800BD438 AC400004 */  sw         $zero, 0x4($v0)
    /* CC3EC 800BD43C AC4F0000 */  sw         $t7, 0x0($v0)
  .L800BD440_CC3F0:
    /* CC3F0 800BD440 025E0019 */  multu      $s2, $fp
    /* CC3F4 800BD444 8E980000 */  lw         $t8, 0x0($s4)
    /* CC3F8 800BD448 3C028015 */  lui        $v0, %hi(D_80149434)
    /* CC3FC 800BD44C 3C038015 */  lui        $v1, %hi(D_80149436)
    /* CC400 800BD450 0018C880 */  sll        $t9, $t8, 2
    /* CC404 800BD454 0338C821 */  addu       $t9, $t9, $t8
    /* CC408 800BD458 0019C900 */  sll        $t9, $t9, 4
    /* CC40C 800BD45C 02794021 */  addu       $t0, $s3, $t9
    /* CC410 800BD460 00008812 */  mflo       $s1
    /* CC414 800BD464 01118021 */  addu       $s0, $t0, $s1
    /* CC418 800BD468 9209FFB9 */  lbu        $t1, -0x47($s0)
    /* CC41C 800BD46C 16E90006 */  bne        $s7, $t1, .L800BD488_CC438
    /* CC420 800BD470 00000000 */   nop
    /* CC424 800BD474 820AFFB6 */  lb         $t2, -0x4A($s0)
    /* CC428 800BD478 55400078 */  bnel       $t2, $zero, .L800BD65C_CC60C
    /* CC42C 800BD47C 8FBF004C */   lw        $ra, 0x4C($sp)
    /* CC430 800BD480 10000076 */  b          .L800BD65C_CC60C
    /* CC434 800BD484 8FBF004C */   lw        $ra, 0x4C($sp)
  .L800BD488_CC438:
    /* CC438 800BD488 84429434 */  lh         $v0, %lo(D_80149434)($v0)
    /* CC43C 800BD48C 84639436 */  lh         $v1, %lo(D_80149436)($v1)
    /* CC440 800BD490 860BFFB0 */  lh         $t3, -0x50($s0)
    /* CC444 800BD494 860DFFB4 */  lh         $t5, -0x4C($s0)
    /* CC448 800BD498 2444F800 */  addiu      $a0, $v0, -0x800
    /* CC44C 800BD49C 24460700 */  addiu      $a2, $v0, 0x700
    /* CC450 800BD4A0 2465F700 */  addiu      $a1, $v1, -0x900
    /* CC454 800BD4A4 24670700 */  addiu      $a3, $v1, 0x700
    /* CC458 800BD4A8 000B6200 */  sll        $t4, $t3, 8
    /* CC45C 800BD4AC 00075C00 */  sll        $t3, $a3, 16
    /* CC460 800BD4B0 0005CC00 */  sll        $t9, $a1, 16
    /* CC464 800BD4B4 00064C00 */  sll        $t1, $a2, 16
    /* CC468 800BD4B8 00047C00 */  sll        $t7, $a0, 16
    /* CC46C 800BD4BC 000D7200 */  sll        $t6, $t5, 8
    /* CC470 800BD4C0 A7AC008A */  sh         $t4, 0x8A($sp)
    /* CC474 800BD4C4 A7AE0088 */  sh         $t6, 0x88($sp)
    /* CC478 800BD4C8 000F2403 */  sra        $a0, $t7, 16
    /* CC47C 800BD4CC 00093403 */  sra        $a2, $t1, 16
    /* CC480 800BD4D0 00192C03 */  sra        $a1, $t9, 16
    /* CC484 800BD4D4 000B3C03 */  sra        $a3, $t3, 16
    /* CC488 800BD4D8 AFB50010 */  sw         $s5, 0x10($sp)
    /* CC48C 800BD4DC AFB60014 */  sw         $s6, 0x14($sp)
    /* CC490 800BD4E0 AFB50018 */  sw         $s5, 0x18($sp)
    /* CC494 800BD4E4 0C02ECF4 */  jal        func_800BB3D0_CA380
    /* CC498 800BD4E8 AFB6001C */   sw        $s6, 0x1C($sp)
    /* CC49C 800BD4EC 10400047 */  beqz       $v0, .L800BD60C_CC5BC
    /* CC4A0 800BD4F0 240600A0 */   addiu     $a2, $zero, 0xA0
    /* CC4A4 800BD4F4 8E8D0000 */  lw         $t5, 0x0($s4)
    /* CC4A8 800BD4F8 3C028005 */  lui        $v0, %hi(D_80052B2C)
    /* CC4AC 800BD4FC 8C422B2C */  lw         $v0, %lo(D_80052B2C)($v0)
    /* CC4B0 800BD500 000D7080 */  sll        $t6, $t5, 2
    /* CC4B4 800BD504 01CD7021 */  addu       $t6, $t6, $t5
    /* CC4B8 800BD508 000E7100 */  sll        $t6, $t6, 4
    /* CC4BC 800BD50C 026E7821 */  addu       $t7, $s3, $t6
    /* CC4C0 800BD510 C4440000 */  lwc1       $f4, 0x0($v0)
    /* CC4C4 800BD514 01F18021 */  addu       $s0, $t7, $s1
    /* CC4C8 800BD518 8618FFB0 */  lh         $t8, -0x50($s0)
    /* CC4CC 800BD51C C4480008 */  lwc1       $f8, 0x8($v0)
    /* CC4D0 800BD520 4600218D */  trunc.w.s  $f6, $f4
    /* CC4D4 800BD524 0018CE00 */  sll        $t9, $t8, 24
    /* CC4D8 800BD528 00192403 */  sra        $a0, $t9, 16
    /* CC4DC 800BD52C 4600428D */  trunc.w.s  $f10, $f8
    /* CC4E0 800BD530 8609FFB4 */  lh         $t1, -0x4C($s0)
    /* CC4E4 800BD534 3C198004 */  lui        $t9, %hi(D_80047950)
    /* CC4E8 800BD538 87397950 */  lh         $t9, %lo(D_80047950)($t9)
    /* CC4EC 800BD53C 44073000 */  mfc1       $a3, $f6
    /* CC4F0 800BD540 44185000 */  mfc1       $t8, $f10
    /* CC4F4 800BD544 24084000 */  addiu      $t0, $zero, 0x4000
    /* CC4F8 800BD548 00095600 */  sll        $t2, $t1, 24
    /* CC4FC 800BD54C 01194823 */  subu       $t1, $t0, $t9
    /* CC500 800BD550 00076C00 */  sll        $t5, $a3, 16
    /* CC504 800BD554 000D3C03 */  sra        $a3, $t5, 16
    /* CC508 800BD558 AFA90014 */  sw         $t1, 0x14($sp)
    /* CC50C 800BD55C 000A2C03 */  sra        $a1, $t2, 16
    /* CC510 800BD560 0C02E4EB */  jal        func_800B93AC_C835C
    /* CC514 800BD564 AFB80010 */   sw        $t8, 0x10($sp)
    /* CC518 800BD568 50400029 */  beql       $v0, $zero, .L800BD610_CC5C0
    /* CC51C 800BD56C 26520001 */   addiu     $s2, $s2, 0x1
    /* CC520 800BD570 8E8A0000 */  lw         $t2, 0x0($s4)
    /* CC524 800BD574 000A5880 */  sll        $t3, $t2, 2
    /* CC528 800BD578 016A5821 */  addu       $t3, $t3, $t2
    /* CC52C 800BD57C 000B5900 */  sll        $t3, $t3, 4
    /* CC530 800BD580 026B6021 */  addu       $t4, $s3, $t3
    /* CC534 800BD584 01918021 */  addu       $s0, $t4, $s1
    /* CC538 800BD588 860DFFB0 */  lh         $t5, -0x50($s0)
    /* CC53C 800BD58C 8618FFB4 */  lh         $t8, -0x4C($s0)
    /* CC540 800BD590 000D7600 */  sll        $t6, $t5, 24
    /* CC544 800BD594 00184600 */  sll        $t0, $t8, 24
    /* CC548 800BD598 00082C03 */  sra        $a1, $t0, 16
    /* CC54C 800BD59C 0C02E134 */  jal        func_800B84D0_C7480
    /* CC550 800BD5A0 000E2403 */   sra       $a0, $t6, 16
    /* CC554 800BD5A4 8E890000 */  lw         $t1, 0x0($s4)
    /* CC558 800BD5A8 00095080 */  sll        $t2, $t1, 2
    /* CC55C 800BD5AC 01495021 */  addu       $t2, $t2, $t1
    /* CC560 800BD5B0 000A5100 */  sll        $t2, $t2, 4
    /* CC564 800BD5B4 026A5821 */  addu       $t3, $s3, $t2
    /* CC568 800BD5B8 01718021 */  addu       $s0, $t3, $s1
    /* CC56C 800BD5BC 8203FFB6 */  lb         $v1, -0x4A($s0)
    /* CC570 800BD5C0 8605FFB2 */  lh         $a1, -0x4E($s0)
    /* CC574 800BD5C4 00032023 */  negu       $a0, $v1
    /* CC578 800BD5C8 0083082A */  slt        $at, $a0, $v1
    /* CC57C 800BD5CC 10200003 */  beqz       $at, .L800BD5DC_CC58C
    /* CC580 800BD5D0 00801025 */   or        $v0, $a0, $zero
    /* CC584 800BD5D4 10000001 */  b          .L800BD5DC_CC58C
    /* CC588 800BD5D8 00601025 */   or        $v0, $v1, $zero
  .L800BD5DC_CC58C:
    /* CC58C 800BD5DC 9219FFB9 */  lbu        $t9, -0x47($s0)
    /* CC590 800BD5E0 860CFFB0 */  lh         $t4, -0x50($s0)
    /* CC594 800BD5E4 860FFFB4 */  lh         $t7, -0x4C($s0)
    /* CC598 800BD5E8 00194B80 */  sll        $t1, $t9, 14
    /* CC59C 800BD5EC 252A4000 */  addiu      $t2, $t1, 0x4000
    /* CC5A0 800BD5F0 000C6E00 */  sll        $t5, $t4, 24
    /* CC5A4 800BD5F4 000FC600 */  sll        $t8, $t7, 24
    /* CC5A8 800BD5F8 00183403 */  sra        $a2, $t8, 16
    /* CC5AC 800BD5FC 000D2403 */  sra        $a0, $t5, 16
    /* CC5B0 800BD600 AFAA0010 */  sw         $t2, 0x10($sp)
    /* CC5B4 800BD604 0C02F1D8 */  jal        func_800BC760_CB710
    /* CC5B8 800BD608 304700FF */   andi      $a3, $v0, 0xFF
  .L800BD60C_CC5BC:
    /* CC5BC 800BD60C 26520001 */  addiu      $s2, $s2, 0x1
  .L800BD610_CC5C0:
    /* CC5C0 800BD610 324B00FF */  andi       $t3, $s2, 0xFF
    /* CC5C4 800BD614 29610008 */  slti       $at, $t3, 0x8
    /* CC5C8 800BD618 1420FF89 */  bnez       $at, .L800BD440_CC3F0
    /* CC5CC 800BD61C 01609025 */   or        $s2, $t3, $zero
    /* CC5D0 800BD620 3C028006 */  lui        $v0, %hi(D_8005BB2C)
    /* CC5D4 800BD624 8C42BB2C */  lw         $v0, %lo(D_8005BB2C)($v0)
    /* CC5D8 800BD628 3C018006 */  lui        $at, %hi(D_8005BB2C)
    /* CC5DC 800BD62C 3C0DB700 */  lui        $t5, (0xB7000000 >> 16)
    /* CC5E0 800BD630 244C0008 */  addiu      $t4, $v0, 0x8
    /* CC5E4 800BD634 AC2CBB2C */  sw         $t4, %lo(D_8005BB2C)($at)
    /* CC5E8 800BD638 3C0E0003 */  lui        $t6, (0x30000 >> 16)
    /* CC5EC 800BD63C 3C048006 */  lui        $a0, %hi(D_8005BB2C)
    /* CC5F0 800BD640 AC4E0004 */  sw         $t6, 0x4($v0)
    /* CC5F4 800BD644 AC4D0000 */  sw         $t5, 0x0($v0)
    /* CC5F8 800BD648 8C84BB2C */  lw         $a0, %lo(D_8005BB2C)($a0)
    /* CC5FC 800BD64C 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
    /* CC600 800BD650 AC8F0000 */  sw         $t7, 0x0($a0)
    /* CC604 800BD654 AC800004 */  sw         $zero, 0x4($a0)
  .L800BD658_CC608:
    /* CC608 800BD658 8FBF004C */  lw         $ra, 0x4C($sp)
  .L800BD65C_CC60C:
    /* CC60C 800BD65C 8FB00028 */  lw         $s0, 0x28($sp)
    /* CC610 800BD660 8FB1002C */  lw         $s1, 0x2C($sp)
    /* CC614 800BD664 8FB20030 */  lw         $s2, 0x30($sp)
    /* CC618 800BD668 8FB30034 */  lw         $s3, 0x34($sp)
    /* CC61C 800BD66C 8FB40038 */  lw         $s4, 0x38($sp)
    /* CC620 800BD670 8FB5003C */  lw         $s5, 0x3C($sp)
    /* CC624 800BD674 8FB60040 */  lw         $s6, 0x40($sp)
    /* CC628 800BD678 8FB70044 */  lw         $s7, 0x44($sp)
    /* CC62C 800BD67C 8FBE0048 */  lw         $fp, 0x48($sp)
    /* CC630 800BD680 03E00008 */  jr         $ra
    /* CC634 800BD684 27BD0090 */   addiu     $sp, $sp, 0x90
endlabel func_800BD360_CC310
