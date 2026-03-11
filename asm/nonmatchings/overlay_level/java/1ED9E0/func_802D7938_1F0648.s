nonmatching func_802D7938_1F0648, 0x24

glabel func_802D7938_1F0648
    /* 1F0648 802D7938 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1F064C 802D793C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F0650 802D7940 3C04802D */  lui        $a0, %hi(func_802D6E70_1EFB80)
    /* 1F0654 802D7944 0C001D04 */  jal        func_80007410_8010
    /* 1F0658 802D7948 24846E70 */   addiu     $a0, $a0, %lo(func_802D6E70_1EFB80)
    /* 1F065C 802D794C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F0660 802D7950 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1F0664 802D7954 03E00008 */  jr         $ra
    /* 1F0668 802D7958 00000000 */   nop
endlabel func_802D7938_1F0648
