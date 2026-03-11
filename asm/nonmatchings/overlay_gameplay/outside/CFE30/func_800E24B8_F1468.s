nonmatching func_800E24B8_F1468, 0x1B0

glabel func_800E24B8_F1468
    /* F1468 800E24B8 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* F146C 800E24BC AFBF001C */  sw         $ra, 0x1C($sp)
    /* F1470 800E24C0 0C000E38 */  jal        func_800038E0_44E0
    /* F1474 800E24C4 AFA40030 */   sw        $a0, 0x30($sp)
    /* F1478 800E24C8 93AE0033 */  lbu        $t6, 0x33($sp)
    /* F147C 800E24CC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* F1480 800E24D0 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* F1484 800E24D4 000E7880 */  sll        $t7, $t6, 2
    /* F1488 800E24D8 01EE7821 */  addu       $t7, $t7, $t6
    /* F148C 800E24DC 000F7900 */  sll        $t7, $t7, 4
    /* F1490 800E24E0 01F84021 */  addu       $t0, $t7, $t8
    /* F1494 800E24E4 85030012 */  lh         $v1, 0x12($t0)
    /* F1498 800E24E8 0003C943 */  sra        $t9, $v1, 5
    /* F149C 800E24EC 00192023 */  negu       $a0, $t9
    /* F14A0 800E24F0 0099082A */  slt        $at, $a0, $t9
    /* F14A4 800E24F4 10200003 */  beqz       $at, .L800E2504_F14B4
    /* F14A8 800E24F8 00802825 */   or        $a1, $a0, $zero
    /* F14AC 800E24FC 10000001 */  b          .L800E2504_F14B4
    /* F14B0 800E2500 03202825 */   or        $a1, $t9, $zero
  .L800E2504_F14B4:
    /* F14B4 800E2504 24010028 */  addiu      $at, $zero, 0x28
    /* F14B8 800E2508 0041001A */  div        $zero, $v0, $at
    /* F14BC 800E250C 00004810 */  mfhi       $t1
    /* F14C0 800E2510 24AA000A */  addiu      $t2, $a1, 0xA
    /* F14C4 800E2514 012A082A */  slt        $at, $t1, $t2
    /* F14C8 800E2518 50200050 */  beql       $at, $zero, .L800E265C_F160C
    /* F14CC 800E251C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* F14D0 800E2520 0C000E38 */  jal        func_800038E0_44E0
    /* F14D4 800E2524 AFA80020 */   sw        $t0, 0x20($sp)
    /* F14D8 800E2528 0C000E38 */  jal        func_800038E0_44E0
    /* F14DC 800E252C A7A20024 */   sh        $v0, 0x24($sp)
    /* F14E0 800E2530 0C000E38 */  jal        func_800038E0_44E0
    /* F14E4 800E2534 A7A20026 */   sh        $v0, 0x26($sp)
    /* F14E8 800E2538 0C000E38 */  jal        func_800038E0_44E0
    /* F14EC 800E253C A7A20028 */   sh        $v0, 0x28($sp)
    /* F14F0 800E2540 2403001E */  addiu      $v1, $zero, 0x1E
    /* F14F4 800E2544 97AB0024 */  lhu        $t3, 0x24($sp)
    /* F14F8 800E2548 97A90026 */  lhu        $t1, 0x26($sp)
    /* F14FC 800E254C 8FA80020 */  lw         $t0, 0x20($sp)
    /* F1500 800E2550 0163001A */  div        $zero, $t3, $v1
    /* F1504 800E2554 00006010 */  mfhi       $t4
    /* F1508 800E2558 850D0000 */  lh         $t5, 0x0($t0)
    /* F150C 800E255C 14600002 */  bnez       $v1, .L800E2568_F1518
    /* F1510 800E2560 00000000 */   nop
    /* F1514 800E2564 0007000D */  break      7
  .L800E2568_F1518:
    /* F1518 800E2568 2401FFFF */  addiu      $at, $zero, -0x1
    /* F151C 800E256C 14610004 */  bne        $v1, $at, .L800E2580_F1530
    /* F1520 800E2570 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* F1524 800E2574 15610002 */  bne        $t3, $at, .L800E2580_F1530
    /* F1528 800E2578 00000000 */   nop
    /* F152C 800E257C 0006000D */  break      6
  .L800E2580_F1530:
    /* F1530 800E2580 0123001A */  div        $zero, $t1, $v1
    /* F1534 800E2584 018D2021 */  addu       $a0, $t4, $t5
    /* F1538 800E2588 2484FFF1 */  addiu      $a0, $a0, -0xF
    /* F153C 800E258C 00047400 */  sll        $t6, $a0, 16
    /* F1540 800E2590 000E7C03 */  sra        $t7, $t6, 16
    /* F1544 800E2594 97AE0028 */  lhu        $t6, 0x28($sp)
    /* F1548 800E2598 00005010 */  mfhi       $t2
    /* F154C 800E259C 3C058022 */  lui        $a1, %hi(D_80222A70)
    /* F1550 800E25A0 8CA52A70 */  lw         $a1, %lo(D_80222A70)($a1)
    /* F1554 800E25A4 850B0004 */  lh         $t3, 0x4($t0)
    /* F1558 800E25A8 01E02025 */  or         $a0, $t7, $zero
    /* F155C 800E25AC 24A50005 */  addiu      $a1, $a1, 0x5
    /* F1560 800E25B0 0005C400 */  sll        $t8, $a1, 16
    /* F1564 800E25B4 0018CC03 */  sra        $t9, $t8, 16
    /* F1568 800E25B8 9118001A */  lbu        $t8, 0x1A($t0)
    /* F156C 800E25BC 03202825 */  or         $a1, $t9, $zero
    /* F1570 800E25C0 14600002 */  bnez       $v1, .L800E25CC_F157C
    /* F1574 800E25C4 00000000 */   nop
    /* F1578 800E25C8 0007000D */  break      7
  .L800E25CC_F157C:
    /* F157C 800E25CC 2401FFFF */  addiu      $at, $zero, -0x1
    /* F1580 800E25D0 14610004 */  bne        $v1, $at, .L800E25E4_F1594
    /* F1584 800E25D4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* F1588 800E25D8 15210002 */  bne        $t1, $at, .L800E25E4_F1594
    /* F158C 800E25DC 00000000 */   nop
    /* F1590 800E25E0 0006000D */  break      6
  .L800E25E4_F1594:
    /* F1594 800E25E4 24010014 */  addiu      $at, $zero, 0x14
    /* F1598 800E25E8 01C1001A */  div        $zero, $t6, $at
    /* F159C 800E25EC 0018C880 */  sll        $t9, $t8, 2
    /* F15A0 800E25F0 0338C823 */  subu       $t9, $t9, $t8
    /* F15A4 800E25F4 0019C880 */  sll        $t9, $t9, 2
    /* F15A8 800E25F8 0338C821 */  addu       $t9, $t9, $t8
    /* F15AC 800E25FC 0019C8C0 */  sll        $t9, $t9, 3
    /* F15B0 800E2600 3C098025 */  lui        $t1, %hi(D_8025668C)
    /* F15B4 800E2604 01394821 */  addu       $t1, $t1, $t9
    /* F15B8 800E2608 8529668C */  lh         $t1, %lo(D_8025668C)($t1)
    /* F15BC 800E260C 014B3021 */  addu       $a2, $t2, $t3
    /* F15C0 800E2610 00007810 */  mfhi       $t7
    /* F15C4 800E2614 24C6FFF1 */  addiu      $a2, $a2, -0xF
    /* F15C8 800E2618 00066400 */  sll        $t4, $a2, 16
    /* F15CC 800E261C 000C6C03 */  sra        $t5, $t4, 16
    /* F15D0 800E2620 01A03025 */  or         $a2, $t5, $zero
    /* F15D4 800E2624 05210003 */  bgez       $t1, .L800E2634_F15E4
    /* F15D8 800E2628 00095043 */   sra       $t2, $t1, 1
    /* F15DC 800E262C 25210001 */  addiu      $at, $t1, 0x1
    /* F15E0 800E2630 00015043 */  sra        $t2, $at, 1
  .L800E2634_F15E4:
    /* F15E4 800E2634 2401000A */  addiu      $at, $zero, 0xA
    /* F15E8 800E2638 0041001A */  div        $zero, $v0, $at
    /* F15EC 800E263C 00006010 */  mfhi       $t4
    /* F15F0 800E2640 01EA3821 */  addu       $a3, $t7, $t2
    /* F15F4 800E2644 30EB00FF */  andi       $t3, $a3, 0xFF
    /* F15F8 800E2648 258D0032 */  addiu      $t5, $t4, 0x32
    /* F15FC 800E264C AFAD0010 */  sw         $t5, 0x10($sp)
    /* F1600 800E2650 0C037BB4 */  jal        func_800DEED0_EDE80
    /* F1604 800E2654 01603825 */   or        $a3, $t3, $zero
    /* F1608 800E2658 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800E265C_F160C:
    /* F160C 800E265C 27BD0030 */  addiu      $sp, $sp, 0x30
    /* F1610 800E2660 03E00008 */  jr         $ra
    /* F1614 800E2664 00000000 */   nop
endlabel func_800E24B8_F1468
