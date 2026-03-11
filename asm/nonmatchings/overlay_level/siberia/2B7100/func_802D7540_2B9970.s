nonmatching func_802D7540_2B9970, 0x58

glabel func_802D7540_2B9970
    /* 2B9970 802D7540 3C028015 */  lui        $v0, %hi(D_8014D17C)
    /* 2B9974 802D7544 2442D17C */  addiu      $v0, $v0, %lo(D_8014D17C)
    /* 2B9978 802D7548 844E0000 */  lh         $t6, 0x0($v0)
    /* 2B997C 802D754C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B9980 802D7550 24010064 */  addiu      $at, $zero, 0x64
    /* 2B9984 802D7554 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 2B9988 802D7558 A44F0000 */  sh         $t7, 0x0($v0)
    /* 2B998C 802D755C 84580000 */  lh         $t8, 0x0($v0)
    /* 2B9990 802D7560 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B9994 802D7564 3C04802D */  lui        $a0, %hi(func_802D7540_2B9970)
    /* 2B9998 802D7568 57010008 */  bnel       $t8, $at, .L802D758C_2B99BC
    /* 2B999C 802D756C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2B99A0 802D7570 0C001D2F */  jal        func_800074BC_80BC
    /* 2B99A4 802D7574 24847540 */   addiu     $a0, $a0, %lo(func_802D7540_2B9970)
    /* 2B99A8 802D7578 0C029BF5 */  jal        func_800A6FD4_B5F84
    /* 2B99AC 802D757C 00000000 */   nop
    /* 2B99B0 802D7580 0C001DB5 */  jal        func_800076D4_82D4
    /* 2B99B4 802D7584 2404000B */   addiu     $a0, $zero, 0xB
    /* 2B99B8 802D7588 8FBF0014 */  lw         $ra, 0x14($sp)
  .L802D758C_2B99BC:
    /* 2B99BC 802D758C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B99C0 802D7590 03E00008 */  jr         $ra
    /* 2B99C4 802D7594 00000000 */   nop
endlabel func_802D7540_2B9970
