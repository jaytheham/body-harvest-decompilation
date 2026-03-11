nonmatching func_802DC4A0_2BE8D0, 0x30

glabel func_802DC4A0_2BE8D0
    /* 2BE8D0 802DC4A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2BE8D4 802DC4A4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2BE8D8 802DC4A8 AFA40018 */  sw         $a0, 0x18($sp)
    /* 2BE8DC 802DC4AC 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 2BE8E0 802DC4B0 0C04DD1A */  jal        func_80137468_146418
    /* 2BE8E4 802DC4B4 2405001E */   addiu     $a1, $zero, 0x1E
    /* 2BE8E8 802DC4B8 0C021CD7 */  jal        func_8008735C_9630C
    /* 2BE8EC 802DC4BC 93A4001B */   lbu       $a0, 0x1B($sp)
    /* 2BE8F0 802DC4C0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2BE8F4 802DC4C4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2BE8F8 802DC4C8 03E00008 */  jr         $ra
    /* 2BE8FC 802DC4CC 00000000 */   nop
endlabel func_802DC4A0_2BE8D0
