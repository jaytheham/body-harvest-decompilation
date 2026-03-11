nonmatching func_802D72C4_2B96F4, 0x8C

glabel func_802D72C4_2B96F4
    /* 2B96F4 802D72C4 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 2B96F8 802D72C8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B96FC 802D72CC AFA40030 */  sw         $a0, 0x30($sp)
    /* 2B9700 802D72D0 AFA50034 */  sw         $a1, 0x34($sp)
    /* 2B9704 802D72D4 AFA60038 */  sw         $a2, 0x38($sp)
    /* 2B9708 802D72D8 0C01E55B */  jal        func_8007956C_8851C
    /* 2B970C 802D72DC 24040024 */   addiu     $a0, $zero, 0x24
    /* 2B9710 802D72E0 304E00FF */  andi       $t6, $v0, 0xFF
    /* 2B9714 802D72E4 240100FF */  addiu      $at, $zero, 0xFF
    /* 2B9718 802D72E8 11C10015 */  beq        $t6, $at, .L802D7340_2B9770
    /* 2B971C 802D72EC 304300FF */   andi      $v1, $v0, 0xFF
    /* 2B9720 802D72F0 00037880 */  sll        $t7, $v1, 2
    /* 2B9724 802D72F4 01E37821 */  addu       $t7, $t7, $v1
    /* 2B9728 802D72F8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2B972C 802D72FC 8FB90030 */  lw         $t9, 0x30($sp)
    /* 2B9730 802D7300 8FA80034 */  lw         $t0, 0x34($sp)
    /* 2B9734 802D7304 8FAA0038 */  lw         $t2, 0x38($sp)
    /* 2B9738 802D7308 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2B973C 802D730C 000F7900 */  sll        $t7, $t7, 4
    /* 2B9740 802D7310 3C0B802D */  lui        $t3, %hi(func_802D72A0_2B96D0)
    /* 2B9744 802D7314 01F81021 */  addu       $v0, $t7, $t8
    /* 2B9748 802D7318 24090003 */  addiu      $t1, $zero, 0x3
    /* 2B974C 802D731C 256B72A0 */  addiu      $t3, $t3, %lo(func_802D72A0_2B96D0)
    /* 2B9750 802D7320 A3A9001C */  sb         $t1, 0x1C($sp)
    /* 2B9754 802D7324 A3A30024 */  sb         $v1, 0x24($sp)
    /* 2B9758 802D7328 AFAB0028 */  sw         $t3, 0x28($sp)
    /* 2B975C 802D732C 27A4001C */  addiu      $a0, $sp, 0x1C
    /* 2B9760 802D7330 A4590000 */  sh         $t9, 0x0($v0)
    /* 2B9764 802D7334 A4480004 */  sh         $t0, 0x4($v0)
    /* 2B9768 802D7338 0C02B915 */  jal        func_800AE454_BD404
    /* 2B976C 802D733C A3AA0025 */   sb        $t2, 0x25($sp)
  .L802D7340_2B9770:
    /* 2B9770 802D7340 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B9774 802D7344 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 2B9778 802D7348 03E00008 */  jr         $ra
    /* 2B977C 802D734C 00000000 */   nop
endlabel func_802D72C4_2B96F4
