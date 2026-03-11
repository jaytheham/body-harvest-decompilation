nonmatching func_802D5440_254B80, 0x2C

glabel func_802D5440_254B80
    /* 254B80 802D5440 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 254B84 802D5444 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 254B88 802D5448 0C0B54EF */  jal        func_802D53BC_254AFC
    /* 254B8C 802D544C 00000000 */   nop
    /* 254B90 802D5450 3C04802D */  lui        $a0, %hi(func_802D536C_254AAC)
    /* 254B94 802D5454 0C001D04 */  jal        func_80007410_8010
    /* 254B98 802D5458 2484536C */   addiu     $a0, $a0, %lo(func_802D536C_254AAC)
    /* 254B9C 802D545C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 254BA0 802D5460 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 254BA4 802D5464 03E00008 */  jr         $ra
    /* 254BA8 802D5468 00000000 */   nop
endlabel func_802D5440_254B80
