nonmatching func_802D57F4_1EE504, 0x284

glabel func_802D57F4_1EE504
    /* 1EE504 802D57F4 3C088015 */  lui        $t0, %hi(D_80157F8C)
    /* 1EE508 802D57F8 25087F8C */  addiu      $t0, $t0, %lo(D_80157F8C)
    /* 1EE50C 802D57FC 85030000 */  lh         $v1, 0x0($t0)
    /* 1EE510 802D5800 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 1EE514 802D5804 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1EE518 802D5808 1060000C */  beqz       $v1, .L802D583C_1EE54C
    /* 1EE51C 802D580C 3C058005 */   lui       $a1, %hi(buildingInstances)
    /* 1EE520 802D5810 24010001 */  addiu      $at, $zero, 0x1
    /* 1EE524 802D5814 1061002E */  beq        $v1, $at, .L802D58D0_1EE5E0
    /* 1EE528 802D5818 3C068015 */   lui       $a2, %hi(D_80157F8E)
    /* 1EE52C 802D581C 24010002 */  addiu      $at, $zero, 0x2
    /* 1EE530 802D5820 10610054 */  beq        $v1, $at, .L802D5974_1EE684
    /* 1EE534 802D5824 3C0E802E */   lui       $t6, %hi(D_802E056C)
    /* 1EE538 802D5828 24010003 */  addiu      $at, $zero, 0x3
    /* 1EE53C 802D582C 10610076 */  beq        $v1, $at, .L802D5A08_1EE718
    /* 1EE540 802D5830 00000000 */   nop
    /* 1EE544 802D5834 10000086 */  b          .L802D5A50_1EE760
    /* 1EE548 802D5838 00000000 */   nop
  .L802D583C_1EE54C:
    /* 1EE54C 802D583C 24A50AD8 */  addiu      $a1, $a1, %lo(buildingInstances)
    /* 1EE550 802D5840 8CA30398 */  lw         $v1, 0x398($a1)
    /* 1EE554 802D5844 3C010001 */  lui        $at, (0x10000 >> 16)
    /* 1EE558 802D5848 3C068015 */  lui        $a2, %hi(D_80157F8E)
    /* 1EE55C 802D584C 00032302 */  srl        $a0, $v1, 12
    /* 1EE560 802D5850 00817025 */  or         $t6, $a0, $at
    /* 1EE564 802D5854 01C47826 */  xor        $t7, $t6, $a0
    /* 1EE568 802D5858 000FC300 */  sll        $t8, $t7, 12
    /* 1EE56C 802D585C 0303C826 */  xor        $t9, $t8, $v1
    /* 1EE570 802D5860 ACB90398 */  sw         $t9, 0x398($a1)
    /* 1EE574 802D5864 3C01802E */  lui        $at, %hi(D_802E056C)
    /* 1EE578 802D5868 24C67F8E */  addiu      $a2, $a2, %lo(D_80157F8E)
    /* 1EE57C 802D586C A420056C */  sh         $zero, %lo(D_802E056C)($at)
    /* 1EE580 802D5870 84C20000 */  lh         $v0, 0x0($a2)
    /* 1EE584 802D5874 24010001 */  addiu      $at, $zero, 0x1
    /* 1EE588 802D5878 3C04802E */  lui        $a0, %hi(D_802E0DC0)
    /* 1EE58C 802D587C 5441000C */  bnel       $v0, $at, .L802D58B0_1EE5C0
    /* 1EE590 802D5880 28430015 */   slti      $v1, $v0, 0x15
    /* 1EE594 802D5884 0C00731B */  jal        osSyncPrintf
    /* 1EE598 802D5888 24840DC0 */   addiu     $a0, $a0, %lo(D_802E0DC0)
    /* 1EE59C 802D588C 2404000C */  addiu      $a0, $zero, 0xC
    /* 1EE5A0 802D5890 0C04750E */  jal        func_8011D438_12C3E8
    /* 1EE5A4 802D5894 00002825 */   or        $a1, $zero, $zero
    /* 1EE5A8 802D5898 3C068015 */  lui        $a2, %hi(D_80157F8E)
    /* 1EE5AC 802D589C 24C67F8E */  addiu      $a2, $a2, %lo(D_80157F8E)
    /* 1EE5B0 802D58A0 3C088015 */  lui        $t0, %hi(D_80157F8C)
    /* 1EE5B4 802D58A4 25087F8C */  addiu      $t0, $t0, %lo(D_80157F8C)
    /* 1EE5B8 802D58A8 84C20000 */  lh         $v0, 0x0($a2)
    /* 1EE5BC 802D58AC 28430015 */  slti       $v1, $v0, 0x15
  .L802D58B0_1EE5C0:
    /* 1EE5C0 802D58B0 24490001 */  addiu      $t1, $v0, 0x1
    /* 1EE5C4 802D58B4 14600066 */  bnez       $v1, .L802D5A50_1EE760
    /* 1EE5C8 802D58B8 A4C90000 */   sh        $t1, 0x0($a2)
    /* 1EE5CC 802D58BC 850A0000 */  lh         $t2, 0x0($t0)
    /* 1EE5D0 802D58C0 A4C00000 */  sh         $zero, 0x0($a2)
    /* 1EE5D4 802D58C4 254B0001 */  addiu      $t3, $t2, 0x1
    /* 1EE5D8 802D58C8 10000061 */  b          .L802D5A50_1EE760
    /* 1EE5DC 802D58CC A50B0000 */   sh        $t3, 0x0($t0)
  .L802D58D0_1EE5E0:
    /* 1EE5E0 802D58D0 3C038025 */  lui        $v1, %hi(alienSpecs)
    /* 1EE5E4 802D58D4 24636680 */  addiu      $v1, $v1, %lo(alienSpecs)
    /* 1EE5E8 802D58D8 8C6C00BC */  lw         $t4, 0xBC($v1)
    /* 1EE5EC 802D58DC 24C67F8E */  addiu      $a2, $a2, %lo(D_80157F8E)
    /* 1EE5F0 802D58E0 84C20000 */  lh         $v0, 0x0($a2)
    /* 1EE5F4 802D58E4 2401FFFD */  addiu      $at, $zero, -0x3
    /* 1EE5F8 802D58E8 01816824 */  and        $t5, $t4, $at
    /* 1EE5FC 802D58EC 24010005 */  addiu      $at, $zero, 0x5
    /* 1EE600 802D58F0 14410014 */  bne        $v0, $at, .L802D5944_1EE654
    /* 1EE604 802D58F4 AC6D00BC */   sw        $t5, 0xBC($v1)
    /* 1EE608 802D58F8 3C04802E */  lui        $a0, %hi(D_802E0DE8)
    /* 1EE60C 802D58FC 0C00731B */  jal        osSyncPrintf
    /* 1EE610 802D5900 24840DE8 */   addiu     $a0, $a0, %lo(D_802E0DE8)
    /* 1EE614 802D5904 3C058005 */  lui        $a1, %hi(buildingInstances)
    /* 1EE618 802D5908 24A50AD8 */  addiu      $a1, $a1, %lo(buildingInstances)
    /* 1EE61C 802D590C 8CA30398 */  lw         $v1, 0x398($a1)
    /* 1EE620 802D5910 3C068015 */  lui        $a2, %hi(D_80157F8E)
    /* 1EE624 802D5914 24C67F8E */  addiu      $a2, $a2, %lo(D_80157F8E)
    /* 1EE628 802D5918 00032302 */  srl        $a0, $v1, 12
    /* 1EE62C 802D591C 348E0020 */  ori        $t6, $a0, 0x20
    /* 1EE630 802D5920 01C47826 */  xor        $t7, $t6, $a0
    /* 1EE634 802D5924 000FC300 */  sll        $t8, $t7, 12
    /* 1EE638 802D5928 3C088015 */  lui        $t0, %hi(D_80157F8C)
    /* 1EE63C 802D592C 24090050 */  addiu      $t1, $zero, 0x50
    /* 1EE640 802D5930 0303C826 */  xor        $t9, $t8, $v1
    /* 1EE644 802D5934 25087F8C */  addiu      $t0, $t0, %lo(D_80157F8C)
    /* 1EE648 802D5938 ACB90398 */  sw         $t9, 0x398($a1)
    /* 1EE64C 802D593C A0A9039E */  sb         $t1, 0x39E($a1)
    /* 1EE650 802D5940 84C20000 */  lh         $v0, 0x0($a2)
  .L802D5944_1EE654:
    /* 1EE654 802D5944 3C058005 */  lui        $a1, %hi(buildingInstances)
    /* 1EE658 802D5948 24A50AD8 */  addiu      $a1, $a1, %lo(buildingInstances)
    /* 1EE65C 802D594C 90AB0397 */  lbu        $t3, 0x397($a1)
    /* 1EE660 802D5950 244A0001 */  addiu      $t2, $v0, 0x1
    /* 1EE664 802D5954 A4CA0000 */  sh         $t2, 0x0($a2)
    /* 1EE668 802D5958 1560003D */  bnez       $t3, .L802D5A50_1EE760
    /* 1EE66C 802D595C 00000000 */   nop
    /* 1EE670 802D5960 850C0000 */  lh         $t4, 0x0($t0)
    /* 1EE674 802D5964 A4C00000 */  sh         $zero, 0x0($a2)
    /* 1EE678 802D5968 258D0001 */  addiu      $t5, $t4, 0x1
    /* 1EE67C 802D596C 10000038 */  b          .L802D5A50_1EE760
    /* 1EE680 802D5970 A50D0000 */   sh        $t5, 0x0($t0)
  .L802D5974_1EE684:
    /* 1EE684 802D5974 85CE056C */  lh         $t6, %lo(D_802E056C)($t6)
    /* 1EE688 802D5978 240100B4 */  addiu      $at, $zero, 0xB4
    /* 1EE68C 802D597C 2404FFB0 */  addiu      $a0, $zero, -0x50
    /* 1EE690 802D5980 15C10005 */  bne        $t6, $at, .L802D5998_1EE6A8
    /* 1EE694 802D5984 24050050 */   addiu     $a1, $zero, 0x50
    /* 1EE698 802D5988 0C030347 */  jal        func_800C0D1C_CFCCC
    /* 1EE69C 802D598C 00003025 */   or        $a2, $zero, $zero
    /* 1EE6A0 802D5990 3C088015 */  lui        $t0, %hi(D_80157F8C)
    /* 1EE6A4 802D5994 25087F8C */  addiu      $t0, $t0, %lo(D_80157F8C)
  .L802D5998_1EE6A8:
    /* 1EE6A8 802D5998 3C0F802E */  lui        $t7, %hi(D_802E056C)
    /* 1EE6AC 802D599C 85EF056C */  lh         $t7, %lo(D_802E056C)($t7)
    /* 1EE6B0 802D59A0 24010091 */  addiu      $at, $zero, 0x91
    /* 1EE6B4 802D59A4 00002025 */  or         $a0, $zero, $zero
    /* 1EE6B8 802D59A8 11E10003 */  beq        $t7, $at, .L802D59B8_1EE6C8
    /* 1EE6BC 802D59AC 240500DB */   addiu     $a1, $zero, 0xDB
    /* 1EE6C0 802D59B0 240100C8 */  addiu      $at, $zero, 0xC8
    /* 1EE6C4 802D59B4 15E10008 */  bne        $t7, $at, .L802D59D8_1EE6E8
  .L802D59B8_1EE6C8:
    /* 1EE6C8 802D59B8 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
    /* 1EE6CC 802D59BC 44812000 */  mtc1       $at, $f4
    /* 1EE6D0 802D59C0 3C064448 */  lui        $a2, (0x44480000 >> 16)
    /* 1EE6D4 802D59C4 00003825 */  or         $a3, $zero, $zero
    /* 1EE6D8 802D59C8 0C00528F */  jal        func_80014A3C_1563C
    /* 1EE6DC 802D59CC E7A40010 */   swc1      $f4, 0x10($sp)
    /* 1EE6E0 802D59D0 3C088015 */  lui        $t0, %hi(D_80157F8C)
    /* 1EE6E4 802D59D4 25087F8C */  addiu      $t0, $t0, %lo(D_80157F8C)
  .L802D59D8_1EE6E8:
    /* 1EE6E8 802D59D8 3C068015 */  lui        $a2, %hi(D_80157F8E)
    /* 1EE6EC 802D59DC 24C67F8E */  addiu      $a2, $a2, %lo(D_80157F8E)
    /* 1EE6F0 802D59E0 84C20000 */  lh         $v0, 0x0($a2)
    /* 1EE6F4 802D59E4 28430191 */  slti       $v1, $v0, 0x191
    /* 1EE6F8 802D59E8 24580001 */  addiu      $t8, $v0, 0x1
    /* 1EE6FC 802D59EC 14600018 */  bnez       $v1, .L802D5A50_1EE760
    /* 1EE700 802D59F0 A4D80000 */   sh        $t8, 0x0($a2)
    /* 1EE704 802D59F4 85190000 */  lh         $t9, 0x0($t0)
    /* 1EE708 802D59F8 A4C00000 */  sh         $zero, 0x0($a2)
    /* 1EE70C 802D59FC 27290001 */  addiu      $t1, $t9, 0x1
    /* 1EE710 802D5A00 10000013 */  b          .L802D5A50_1EE760
    /* 1EE714 802D5A04 A5090000 */   sh        $t1, 0x0($t0)
  .L802D5A08_1EE718:
    /* 1EE718 802D5A08 3C038025 */  lui        $v1, %hi(alienSpecs)
    /* 1EE71C 802D5A0C 24636680 */  addiu      $v1, $v1, %lo(alienSpecs)
    /* 1EE720 802D5A10 8C6A00BC */  lw         $t2, 0xBC($v1)
    /* 1EE724 802D5A14 3C04802E */  lui        $a0, %hi(D_802E0E04)
    /* 1EE728 802D5A18 24840E04 */  addiu      $a0, $a0, %lo(D_802E0E04)
    /* 1EE72C 802D5A1C 354B0002 */  ori        $t3, $t2, 0x2
    /* 1EE730 802D5A20 0C00731B */  jal        osSyncPrintf
    /* 1EE734 802D5A24 AC6B00BC */   sw        $t3, 0xBC($v1)
    /* 1EE738 802D5A28 3C01802E */  lui        $at, %hi(D_802E0FB0)
    /* 1EE73C 802D5A2C 3C04802D */  lui        $a0, %hi(func_802D5590_1EE2A0)
    /* 1EE740 802D5A30 A4200FB0 */  sh         $zero, %lo(D_802E0FB0)($at)
    /* 1EE744 802D5A34 0C001D04 */  jal        func_80007410_8010
    /* 1EE748 802D5A38 24845590 */   addiu     $a0, $a0, %lo(func_802D5590_1EE2A0)
    /* 1EE74C 802D5A3C 240CFFCE */  addiu      $t4, $zero, -0x32
    /* 1EE750 802D5A40 3C01802E */  lui        $at, %hi(D_802E0FB0)
    /* 1EE754 802D5A44 A42C0FB0 */  sh         $t4, %lo(D_802E0FB0)($at)
    /* 1EE758 802D5A48 10000007 */  b          .L802D5A68_1EE778
    /* 1EE75C 802D5A4C 24020001 */   addiu     $v0, $zero, 0x1
  .L802D5A50_1EE760:
    /* 1EE760 802D5A50 3C0D802E */  lui        $t5, %hi(D_802E056C)
    /* 1EE764 802D5A54 85AD056C */  lh         $t5, %lo(D_802E056C)($t5)
    /* 1EE768 802D5A58 3C01802E */  lui        $at, %hi(D_802E056C)
    /* 1EE76C 802D5A5C 00001025 */  or         $v0, $zero, $zero
    /* 1EE770 802D5A60 25AE0001 */  addiu      $t6, $t5, 0x1
    /* 1EE774 802D5A64 A42E056C */  sh         $t6, %lo(D_802E056C)($at)
  .L802D5A68_1EE778:
    /* 1EE778 802D5A68 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1EE77C 802D5A6C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1EE780 802D5A70 03E00008 */  jr         $ra
    /* 1EE784 802D5A74 00000000 */   nop
endlabel func_802D57F4_1EE504
