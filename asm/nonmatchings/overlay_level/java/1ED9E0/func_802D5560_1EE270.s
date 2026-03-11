nonmatching func_802D5560_1EE270, 0x30

glabel func_802D5560_1EE270
    /* 1EE270 802D5560 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EE274 802D5564 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EE278 802D5568 240E001E */  addiu      $t6, $zero, 0x1E
    /* 1EE27C 802D556C 3C01802E */  lui        $at, %hi(D_802E0FB0)
    /* 1EE280 802D5570 3C04802D */  lui        $a0, %hi(func_802D5508_1EE218)
    /* 1EE284 802D5574 A42E0FB0 */  sh         $t6, %lo(D_802E0FB0)($at)
    /* 1EE288 802D5578 0C001D04 */  jal        func_80007410_8010
    /* 1EE28C 802D557C 24845508 */   addiu     $a0, $a0, %lo(func_802D5508_1EE218)
    /* 1EE290 802D5580 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EE294 802D5584 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EE298 802D5588 03E00008 */  jr         $ra
    /* 1EE29C 802D558C 00000000 */   nop
endlabel func_802D5560_1EE270
