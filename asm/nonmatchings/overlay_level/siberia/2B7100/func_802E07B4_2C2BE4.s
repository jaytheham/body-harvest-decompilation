nonmatching func_802E07B4_2C2BE4, 0x38

glabel func_802E07B4_2C2BE4
    /* 2C2BE4 802E07B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2C2BE8 802E07B8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2C2BEC 802E07BC AFA40018 */  sw         $a0, 0x18($sp)
    /* 2C2BF0 802E07C0 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 2C2BF4 802E07C4 2405FEDF */  addiu      $a1, $zero, -0x121
    /* 2C2BF8 802E07C8 2406FFE6 */  addiu      $a2, $zero, -0x1A
    /* 2C2BFC 802E07CC 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 2C2C00 802E07D0 24070144 */   addiu     $a3, $zero, 0x144
    /* 2C2C04 802E07D4 0C0B80B3 */  jal        func_802E02CC_2C26FC
    /* 2C2C08 802E07D8 93A4001B */   lbu       $a0, 0x1B($sp)
    /* 2C2C0C 802E07DC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2C2C10 802E07E0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2C2C14 802E07E4 03E00008 */  jr         $ra
    /* 2C2C18 802E07E8 00000000 */   nop
endlabel func_802E07B4_2C2BE4
