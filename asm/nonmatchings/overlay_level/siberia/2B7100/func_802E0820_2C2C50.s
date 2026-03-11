nonmatching func_802E0820_2C2C50, 0x38

glabel func_802E0820_2C2C50
    /* 2C2C50 802E0820 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2C2C54 802E0824 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2C2C58 802E0828 AFA40018 */  sw         $a0, 0x18($sp)
    /* 2C2C5C 802E082C 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 2C2C60 802E0830 2405011A */  addiu      $a1, $zero, 0x11A
    /* 2C2C64 802E0834 2406FFE3 */  addiu      $a2, $zero, -0x1D
    /* 2C2C68 802E0838 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 2C2C6C 802E083C 2407014E */   addiu     $a3, $zero, 0x14E
    /* 2C2C70 802E0840 0C0B80B3 */  jal        func_802E02CC_2C26FC
    /* 2C2C74 802E0844 93A4001B */   lbu       $a0, 0x1B($sp)
    /* 2C2C78 802E0848 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2C2C7C 802E084C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2C2C80 802E0850 03E00008 */  jr         $ra
    /* 2C2C84 802E0854 00000000 */   nop
endlabel func_802E0820_2C2C50
