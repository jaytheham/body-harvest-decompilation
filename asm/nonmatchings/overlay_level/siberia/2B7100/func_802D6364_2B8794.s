nonmatching func_802D6364_2B8794, 0x84

glabel func_802D6364_2B8794
    /* 2B8794 802D6364 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 2B8798 802D6368 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B879C 802D636C 0C01E55B */  jal        func_8007956C_8851C
    /* 2B87A0 802D6370 24040013 */   addiu     $a0, $zero, 0x13
    /* 2B87A4 802D6374 304E00FF */  andi       $t6, $v0, 0xFF
    /* 2B87A8 802D6378 240100FF */  addiu      $at, $zero, 0xFF
    /* 2B87AC 802D637C 11C10016 */  beq        $t6, $at, .L802D63D8_2B8808
    /* 2B87B0 802D6380 304500FF */   andi      $a1, $v0, 0xFF
    /* 2B87B4 802D6384 3C04802E */  lui        $a0, %hi(D_802E2EE8)
    /* 2B87B8 802D6388 24842EE8 */  addiu      $a0, $a0, %lo(D_802E2EE8)
    /* 2B87BC 802D638C 0C00731B */  jal        osSyncPrintf
    /* 2B87C0 802D6390 A3A5001F */   sb        $a1, 0x1F($sp)
    /* 2B87C4 802D6394 93A5001F */  lbu        $a1, 0x1F($sp)
    /* 2B87C8 802D6398 3C038005 */  lui        $v1, %hi(buildingInstances)
    /* 2B87CC 802D639C 24630AD8 */  addiu      $v1, $v1, %lo(buildingInstances)
    /* 2B87D0 802D63A0 00057880 */  sll        $t7, $a1, 2
    /* 2B87D4 802D63A4 84790F00 */  lh         $t9, 0xF00($v1)
    /* 2B87D8 802D63A8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2B87DC 802D63AC 01E57821 */  addu       $t7, $t7, $a1
    /* 2B87E0 802D63B0 000F7900 */  sll        $t7, $t7, 4
    /* 2B87E4 802D63B4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2B87E8 802D63B8 84690F04 */  lh         $t1, 0xF04($v1)
    /* 2B87EC 802D63BC 01F81021 */  addu       $v0, $t7, $t8
    /* 2B87F0 802D63C0 27280320 */  addiu      $t0, $t9, 0x320
    /* 2B87F4 802D63C4 A4480000 */  sh         $t0, 0x0($v0)
    /* 2B87F8 802D63C8 A440000E */  sh         $zero, 0xE($v0)
    /* 2B87FC 802D63CC 30A400FF */  andi       $a0, $a1, 0xFF
    /* 2B8800 802D63D0 0C020144 */  jal        func_80080510_8F4C0
    /* 2B8804 802D63D4 A4490004 */   sh        $t1, 0x4($v0)
  .L802D63D8_2B8808:
    /* 2B8808 802D63D8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B880C 802D63DC 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 2B8810 802D63E0 03E00008 */  jr         $ra
    /* 2B8814 802D63E4 00000000 */   nop
endlabel func_802D6364_2B8794
