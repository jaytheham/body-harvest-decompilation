nonmatching func_802DC2A4_3203F4, 0x30

glabel func_802DC2A4_3203F4
    /* 3203F4 802DC2A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 3203F8 802DC2A8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 3203FC 802DC2AC AFA40018 */  sw         $a0, 0x18($sp)
    /* 320400 802DC2B0 0C021CD7 */  jal        func_8008735C_9630C
    /* 320404 802DC2B4 93A4001B */   lbu       $a0, 0x1B($sp)
    /* 320408 802DC2B8 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 32040C 802DC2BC 0C04DD1A */  jal        func_80137468_146418
    /* 320410 802DC2C0 2405026A */   addiu     $a1, $zero, 0x26A
    /* 320414 802DC2C4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 320418 802DC2C8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 32041C 802DC2CC 03E00008 */  jr         $ra
    /* 320420 802DC2D0 00000000 */   nop
endlabel func_802DC2A4_3203F4
