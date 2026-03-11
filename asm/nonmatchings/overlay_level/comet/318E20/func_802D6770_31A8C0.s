nonmatching func_802D6770_31A8C0, 0x38

glabel func_802D6770_31A8C0
    /* 31A8C0 802D6770 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 31A8C4 802D6774 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 31A8C8 802D6778 3C01802E */  lui        $at, %hi(D_802E7C40)
    /* 31A8CC 802D677C 3C04802E */  lui        $a0, %hi(D_802E7A7C)
    /* 31A8D0 802D6780 A4207C40 */  sh         $zero, %lo(D_802E7C40)($at)
    /* 31A8D4 802D6784 0C00731B */  jal        osSyncPrintf
    /* 31A8D8 802D6788 24847A7C */   addiu     $a0, $a0, %lo(D_802E7A7C)
    /* 31A8DC 802D678C 3C04802D */  lui        $a0, %hi(func_802D6670_31A7C0)
    /* 31A8E0 802D6790 0C001D04 */  jal        func_80007410_8010
    /* 31A8E4 802D6794 24846670 */   addiu     $a0, $a0, %lo(func_802D6670_31A7C0)
    /* 31A8E8 802D6798 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 31A8EC 802D679C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 31A8F0 802D67A0 03E00008 */  jr         $ra
    /* 31A8F4 802D67A4 00000000 */   nop
endlabel func_802D6770_31A8C0
