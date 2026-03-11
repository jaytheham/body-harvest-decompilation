nonmatching func_802D62B4_2B86E4, 0x30

glabel func_802D62B4_2B86E4
    /* 2B86E4 802D62B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2B86E8 802D62B8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2B86EC 802D62BC 240E004B */  addiu      $t6, $zero, 0x4B
    /* 2B86F0 802D62C0 3C01802E */  lui        $at, %hi(D_802E30F4)
    /* 2B86F4 802D62C4 3C04802D */  lui        $a0, %hi(func_802D6220_2B8650)
    /* 2B86F8 802D62C8 A42E30F4 */  sh         $t6, %lo(D_802E30F4)($at)
    /* 2B86FC 802D62CC 0C001D04 */  jal        func_80007410_8010
    /* 2B8700 802D62D0 24846220 */   addiu     $a0, $a0, %lo(func_802D6220_2B8650)
    /* 2B8704 802D62D4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2B8708 802D62D8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2B870C 802D62DC 03E00008 */  jr         $ra
    /* 2B8710 802D62E0 00000000 */   nop
endlabel func_802D62B4_2B86E4
