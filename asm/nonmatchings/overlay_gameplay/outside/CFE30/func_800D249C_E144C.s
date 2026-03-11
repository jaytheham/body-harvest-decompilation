nonmatching func_800D249C_E144C, 0x108

glabel func_800D249C_E144C
    /* E144C 800D249C 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* E1450 800D24A0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* E1454 800D24A4 AFA40030 */  sw         $a0, 0x30($sp)
    /* E1458 800D24A8 AFA50034 */  sw         $a1, 0x34($sp)
    /* E145C 800D24AC AFB10018 */  sw         $s1, 0x18($sp)
    /* E1460 800D24B0 AFB00014 */  sw         $s0, 0x14($sp)
    /* E1464 800D24B4 AFA60038 */  sw         $a2, 0x38($sp)
    /* E1468 800D24B8 AFA7003C */  sw         $a3, 0x3C($sp)
    /* E146C 800D24BC 24050001 */  addiu      $a1, $zero, 0x1
    /* E1470 800D24C0 0C030675 */  jal        func_800C19D4_D0984
    /* E1474 800D24C4 2404000B */   addiu     $a0, $zero, 0xB
    /* E1478 800D24C8 2401FFFD */  addiu      $at, $zero, -0x3
    /* E147C 800D24CC 1041002F */  beq        $v0, $at, .L800D258C_E153C
    /* E1480 800D24D0 A7A20026 */   sh        $v0, 0x26($sp)
    /* E1484 800D24D4 2407001C */  addiu      $a3, $zero, 0x1C
    /* E1488 800D24D8 00470019 */  multu      $v0, $a3
    /* E148C 800D24DC 3C068015 */  lui        $a2, %hi(D_80154318)
    /* E1490 800D24E0 24C64318 */  addiu      $a2, $a2, %lo(D_80154318)
    /* E1494 800D24E4 87AF003E */  lh         $t7, 0x3E($sp)
    /* E1498 800D24E8 87B80032 */  lh         $t8, 0x32($sp)
    /* E149C 800D24EC 87B90036 */  lh         $t9, 0x36($sp)
    /* E14A0 800D24F0 87A8003A */  lh         $t0, 0x3A($sp)
    /* E14A4 800D24F4 87AA004A */  lh         $t2, 0x4A($sp)
    /* E14A8 800D24F8 93AB004F */  lbu        $t3, 0x4F($sp)
    /* E14AC 800D24FC 240900F5 */  addiu      $t1, $zero, 0xF5
    /* E14B0 800D2500 00007012 */  mflo       $t6
    /* E14B4 800D2504 00CE1821 */  addu       $v1, $a2, $t6
    /* E14B8 800D2508 84650004 */  lh         $a1, 0x4($v1)
    /* E14BC 800D250C 87AD0042 */  lh         $t5, 0x42($sp)
    /* E14C0 800D2510 87AE0046 */  lh         $t6, 0x46($sp)
    /* E14C4 800D2514 00A70019 */  multu      $a1, $a3
    /* E14C8 800D2518 A069000E */  sb         $t1, 0xE($v1)
    /* E14CC 800D251C A060000F */  sb         $zero, 0xF($v1)
    /* E14D0 800D2520 A46F0002 */  sh         $t7, 0x2($v1)
    /* E14D4 800D2524 A4780008 */  sh         $t8, 0x8($v1)
    /* E14D8 800D2528 A479000A */  sh         $t9, 0xA($v1)
    /* E14DC 800D252C A468000C */  sh         $t0, 0xC($v1)
    /* E14E0 800D2530 A46A0010 */  sh         $t2, 0x10($v1)
    /* E14E4 800D2534 A06B0012 */  sb         $t3, 0x12($v1)
    /* E14E8 800D2538 00008025 */  or         $s0, $zero, $zero
    /* E14EC 800D253C 00006012 */  mflo       $t4
    /* E14F0 800D2540 00CC2021 */  addu       $a0, $a2, $t4
    /* E14F4 800D2544 A4800002 */  sh         $zero, 0x2($a0)
    /* E14F8 800D2548 24910008 */  addiu      $s1, $a0, 0x8
    /* E14FC 800D254C A48D0008 */  sh         $t5, 0x8($a0)
    /* E1500 800D2550 A48E000A */  sh         $t6, 0xA($a0)
  .L800D2554_E1504:
    /* E1504 800D2554 0C000E38 */  jal        func_800038E0_44E0
    /* E1508 800D2558 00000000 */   nop
    /* E150C 800D255C 0230C021 */  addu       $t8, $s1, $s0
    /* E1510 800D2560 26100001 */  addiu      $s0, $s0, 0x1
    /* E1514 800D2564 321900FF */  andi       $t9, $s0, 0xFF
    /* E1518 800D2568 2B210008 */  slti       $at, $t9, 0x8
    /* E151C 800D256C 04410004 */  bgez       $v0, .L800D2580_E1530
    /* E1520 800D2570 304F000F */   andi      $t7, $v0, 0xF
    /* E1524 800D2574 11E00002 */  beqz       $t7, .L800D2580_E1530
    /* E1528 800D2578 00000000 */   nop
    /* E152C 800D257C 25EFFFF0 */  addiu      $t7, $t7, -0x10
  .L800D2580_E1530:
    /* E1530 800D2580 03208025 */  or         $s0, $t9, $zero
    /* E1534 800D2584 1420FFF3 */  bnez       $at, .L800D2554_E1504
    /* E1538 800D2588 A30F0004 */   sb        $t7, 0x4($t8)
  .L800D258C_E153C:
    /* E153C 800D258C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* E1540 800D2590 87A20026 */  lh         $v0, 0x26($sp)
    /* E1544 800D2594 8FB00014 */  lw         $s0, 0x14($sp)
    /* E1548 800D2598 8FB10018 */  lw         $s1, 0x18($sp)
    /* E154C 800D259C 03E00008 */  jr         $ra
    /* E1550 800D25A0 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_800D249C_E144C
