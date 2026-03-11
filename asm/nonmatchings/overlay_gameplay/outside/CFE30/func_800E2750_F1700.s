nonmatching func_800E2750_F1700, 0xE0

glabel func_800E2750_F1700
    /* F1700 800E2750 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* F1704 800E2754 AFBF0014 */  sw         $ra, 0x14($sp)
    /* F1708 800E2758 0C000E38 */  jal        func_800038E0_44E0
    /* F170C 800E275C AFA40020 */   sw        $a0, 0x20($sp)
    /* F1710 800E2760 3C198007 */  lui        $t9, %hi(D_80068084)
    /* F1714 800E2764 8F398084 */  lw         $t9, %lo(D_80068084)($t9)
    /* F1718 800E2768 93AE0023 */  lbu        $t6, 0x23($sp)
    /* F171C 800E276C 3C188015 */  lui        $t8, %hi(D_80153BD0)
    /* F1720 800E2770 0059001A */  div        $zero, $v0, $t9
    /* F1724 800E2774 000E7880 */  sll        $t7, $t6, 2
    /* F1728 800E2778 01EE7823 */  subu       $t7, $t7, $t6
    /* F172C 800E277C 000F7840 */  sll        $t7, $t7, 1
    /* F1730 800E2780 27183BD0 */  addiu      $t8, $t8, %lo(D_80153BD0)
    /* F1734 800E2784 01F81821 */  addu       $v1, $t7, $t8
    /* F1738 800E2788 00004010 */  mfhi       $t0
    /* F173C 800E278C 00084900 */  sll        $t1, $t0, 4
    /* F1740 800E2790 17200002 */  bnez       $t9, .L800E279C_F174C
    /* F1744 800E2794 00000000 */   nop
    /* F1748 800E2798 0007000D */  break      7
  .L800E279C_F174C:
    /* F174C 800E279C 2401FFFF */  addiu      $at, $zero, -0x1
    /* F1750 800E27A0 17210004 */  bne        $t9, $at, .L800E27B4_F1764
    /* F1754 800E27A4 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* F1758 800E27A8 14410002 */  bne        $v0, $at, .L800E27B4_F1764
    /* F175C 800E27AC 00000000 */   nop
    /* F1760 800E27B0 0006000D */  break      6
  .L800E27B4_F1764:
    /* F1764 800E27B4 A4690000 */  sh         $t1, 0x0($v1)
    /* F1768 800E27B8 A4600002 */  sh         $zero, 0x2($v1)
    /* F176C 800E27BC 3C048004 */  lui        $a0, %hi(currentLevel)
    /* F1770 800E27C0 8C847F90 */  lw         $a0, %lo(currentLevel)($a0)
    /* F1774 800E27C4 24010002 */  addiu      $at, $zero, 0x2
    /* F1778 800E27C8 5481000B */  bnel       $a0, $at, .L800E27F8_F17A8
    /* F177C 800E27CC 24010004 */   addiu     $at, $zero, 0x4
    /* F1780 800E27D0 0C000E38 */  jal        func_800038E0_44E0
    /* F1784 800E27D4 AFA3001C */   sw        $v1, 0x1C($sp)
    /* F1788 800E27D8 2401007D */  addiu      $at, $zero, 0x7D
    /* F178C 800E27DC 0041001A */  div        $zero, $v0, $at
    /* F1790 800E27E0 8FA3001C */  lw         $v1, 0x1C($sp)
    /* F1794 800E27E4 00005010 */  mfhi       $t2
    /* F1798 800E27E8 254B004B */  addiu      $t3, $t2, 0x4B
    /* F179C 800E27EC 1000000C */  b          .L800E2820_F17D0
    /* F17A0 800E27F0 A46B0004 */   sh        $t3, 0x4($v1)
    /* F17A4 800E27F4 24010004 */  addiu      $at, $zero, 0x4
  .L800E27F8_F17A8:
    /* F17A8 800E27F8 5481000A */  bnel       $a0, $at, .L800E2824_F17D4
    /* F17AC 800E27FC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* F17B0 800E2800 0C000E38 */  jal        func_800038E0_44E0
    /* F17B4 800E2804 AFA3001C */   sw        $v1, 0x1C($sp)
    /* F17B8 800E2808 2401004B */  addiu      $at, $zero, 0x4B
    /* F17BC 800E280C 0041001A */  div        $zero, $v0, $at
    /* F17C0 800E2810 8FA3001C */  lw         $v1, 0x1C($sp)
    /* F17C4 800E2814 00006010 */  mfhi       $t4
    /* F17C8 800E2818 258D0019 */  addiu      $t5, $t4, 0x19
    /* F17CC 800E281C A46D0004 */  sh         $t5, 0x4($v1)
  .L800E2820_F17D0:
    /* F17D0 800E2820 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800E2824_F17D4:
    /* F17D4 800E2824 27BD0020 */  addiu      $sp, $sp, 0x20
    /* F17D8 800E2828 03E00008 */  jr         $ra
    /* F17DC 800E282C 00000000 */   nop
endlabel func_800E2750_F1700
