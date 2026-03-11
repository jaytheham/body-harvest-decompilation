nonmatching func_802DA6A4_31E7F4, 0x30

glabel func_802DA6A4_31E7F4
    /* 31E7F4 802DA6A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 31E7F8 802DA6A8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 31E7FC 802DA6AC AFA40018 */  sw         $a0, 0x18($sp)
    /* 31E800 802DA6B0 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 31E804 802DA6B4 0C04DD1A */  jal        func_80137468_146418
    /* 31E808 802DA6B8 2405001E */   addiu     $a1, $zero, 0x1E
    /* 31E80C 802DA6BC 0C021CD7 */  jal        func_8008735C_9630C
    /* 31E810 802DA6C0 93A4001B */   lbu       $a0, 0x1B($sp)
    /* 31E814 802DA6C4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 31E818 802DA6C8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 31E81C 802DA6CC 03E00008 */  jr         $ra
    /* 31E820 802DA6D0 00000000 */   nop
endlabel func_802DA6A4_31E7F4
