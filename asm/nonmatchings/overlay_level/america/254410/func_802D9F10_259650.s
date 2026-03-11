nonmatching func_802D9F10_259650, 0x144

glabel func_802D9F10_259650
    /* 259650 802D9F10 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 259654 802D9F14 AFB0001C */  sw         $s0, 0x1C($sp)
    /* 259658 802D9F18 309000FF */  andi       $s0, $a0, 0xFF
    /* 25965C 802D9F1C 00107080 */  sll        $t6, $s0, 2
    /* 259660 802D9F20 01D07021 */  addu       $t6, $t6, $s0
    /* 259664 802D9F24 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 259668 802D9F28 AFB10020 */  sw         $s1, 0x20($sp)
    /* 25966C 802D9F2C 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 259670 802D9F30 000E7100 */  sll        $t6, $t6, 4
    /* 259674 802D9F34 01CF8821 */  addu       $s1, $t6, $t7
    /* 259678 802D9F38 8E380020 */  lw         $t8, 0x20($s1)
    /* 25967C 802D9F3C AFBF0024 */  sw         $ra, 0x24($sp)
    /* 259680 802D9F40 AFA40040 */  sw         $a0, 0x40($sp)
    /* 259684 802D9F44 33191000 */  andi       $t9, $t8, 0x1000
    /* 259688 802D9F48 AFA50044 */  sw         $a1, 0x44($sp)
    /* 25968C 802D9F4C AFA60048 */  sw         $a2, 0x48($sp)
    /* 259690 802D9F50 1320003B */  beqz       $t9, .L802DA040_259780
    /* 259694 802D9F54 AFA7004C */   sw        $a3, 0x4C($sp)
    /* 259698 802D9F58 87A80046 */  lh         $t0, 0x46($sp)
    /* 25969C 802D9F5C 87A9004A */  lh         $t1, 0x4A($sp)
    /* 2596A0 802D9F60 87AA004E */  lh         $t2, 0x4E($sp)
    /* 2596A4 802D9F64 87AB0052 */  lh         $t3, 0x52($sp)
    /* 2596A8 802D9F68 87AC0056 */  lh         $t4, 0x56($sp)
    /* 2596AC 802D9F6C 87AD005A */  lh         $t5, 0x5A($sp)
    /* 2596B0 802D9F70 87AE005E */  lh         $t6, 0x5E($sp)
    /* 2596B4 802D9F74 3C0F802E */  lui        $t7, %hi(D_802E02D8)
    /* 2596B8 802D9F78 25EF02D8 */  addiu      $t7, $t7, %lo(D_802E02D8)
    /* 2596BC 802D9F7C AFAF0010 */  sw         $t7, 0x10($sp)
    /* 2596C0 802D9F80 320400FF */  andi       $a0, $s0, 0xFF
    /* 2596C4 802D9F84 24050007 */  addiu      $a1, $zero, 0x7
    /* 2596C8 802D9F88 24060007 */  addiu      $a2, $zero, 0x7
    /* 2596CC 802D9F8C 27A70030 */  addiu      $a3, $sp, 0x30
    /* 2596D0 802D9F90 A7A80030 */  sh         $t0, 0x30($sp)
    /* 2596D4 802D9F94 A7A90032 */  sh         $t1, 0x32($sp)
    /* 2596D8 802D9F98 A7AA0034 */  sh         $t2, 0x34($sp)
    /* 2596DC 802D9F9C A7AB0036 */  sh         $t3, 0x36($sp)
    /* 2596E0 802D9FA0 A7AC0038 */  sh         $t4, 0x38($sp)
    /* 2596E4 802D9FA4 A7AD003A */  sh         $t5, 0x3A($sp)
    /* 2596E8 802D9FA8 0C0207C6 */  jal        func_80081F18_90EC8
    /* 2596EC 802D9FAC A7AE003C */   sh        $t6, 0x3C($sp)
    /* 2596F0 802D9FB0 305800FF */  andi       $t8, $v0, 0xFF
    /* 2596F4 802D9FB4 24010004 */  addiu      $at, $zero, 0x4
    /* 2596F8 802D9FB8 17010013 */  bne        $t8, $at, .L802DA008_259748
    /* 2596FC 802D9FBC A3A2002F */   sb        $v0, 0x2F($sp)
    /* 259700 802D9FC0 A620001E */  sh         $zero, 0x1E($s1)
    /* 259704 802D9FC4 320400FF */  andi       $a0, $s0, 0xFF
    /* 259708 802D9FC8 0C0213FA */  jal        func_80084FE8_93F98
    /* 25970C 802D9FCC 24050800 */   addiu     $a1, $zero, 0x800
    /* 259710 802D9FD0 10400007 */  beqz       $v0, .L802D9FF0_259730
    /* 259714 802D9FD4 320400FF */   andi      $a0, $s0, 0xFF
    /* 259718 802D9FD8 320400FF */  andi       $a0, $s0, 0xFF
    /* 25971C 802D9FDC 00002825 */  or         $a1, $zero, $zero
    /* 259720 802D9FE0 0C021C73 */  jal        func_800871CC_9617C
    /* 259724 802D9FE4 2406000A */   addiu     $a2, $zero, 0xA
    /* 259728 802D9FE8 10000005 */  b          .L802DA000_259740
    /* 25972C 802D9FEC 02002025 */   or        $a0, $s0, $zero
  .L802D9FF0_259730:
    /* 259730 802D9FF0 00002825 */  or         $a1, $zero, $zero
    /* 259734 802D9FF4 0C021C62 */  jal        func_80087188_96138
    /* 259738 802D9FF8 2406000A */   addiu     $a2, $zero, 0xA
    /* 25973C 802D9FFC 02002025 */  or         $a0, $s0, $zero
  .L802DA000_259740:
    /* 259740 802DA000 0C04DD1A */  jal        func_80137468_146418
    /* 259744 802DA004 2405012F */   addiu     $a1, $zero, 0x12F
  .L802DA008_259748:
    /* 259748 802DA008 93B9002F */  lbu        $t9, 0x2F($sp)
    /* 25974C 802DA00C 24010007 */  addiu      $at, $zero, 0x7
    /* 259750 802DA010 5721000C */  bnel       $t9, $at, .L802DA044_259784
    /* 259754 802DA014 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 259758 802DA018 8628002C */  lh         $t0, 0x2C($s1)
    /* 25975C 802DA01C 29010029 */  slti       $at, $t0, 0x29
    /* 259760 802DA020 54200004 */  bnel       $at, $zero, .L802DA034_259774
    /* 259764 802DA024 8E290020 */   lw        $t1, 0x20($s1)
    /* 259768 802DA028 10000005 */  b          .L802DA040_259780
    /* 25976C 802DA02C A2200036 */   sb        $zero, 0x36($s1)
    /* 259770 802DA030 8E290020 */  lw         $t1, 0x20($s1)
  .L802DA034_259774:
    /* 259774 802DA034 2401EFFF */  addiu      $at, $zero, -0x1001
    /* 259778 802DA038 01215024 */  and        $t2, $t1, $at
    /* 25977C 802DA03C AE2A0020 */  sw         $t2, 0x20($s1)
  .L802DA040_259780:
    /* 259780 802DA040 8FBF0024 */  lw         $ra, 0x24($sp)
  .L802DA044_259784:
    /* 259784 802DA044 8FB0001C */  lw         $s0, 0x1C($sp)
    /* 259788 802DA048 8FB10020 */  lw         $s1, 0x20($sp)
    /* 25978C 802DA04C 03E00008 */  jr         $ra
    /* 259790 802DA050 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_802D9F10_259650
