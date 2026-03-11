nonmatching setGameplayResolution, 0x28

glabel setGameplayResolution
    /* 7984 80006D84 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 7988 80006D88 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 798C 80006D8C 0C003D92 */  jal        setVideoInterfaceXSize
    /* 7990 80006D90 24040130 */   addiu     $a0, $zero, 0x130
    /* 7994 80006D94 0C003D9F */  jal        setVideoInterfaceYSize
    /* 7998 80006D98 240400E6 */   addiu     $a0, $zero, 0xE6
    /* 799C 80006D9C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 79A0 80006DA0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 79A4 80006DA4 03E00008 */  jr         $ra
    /* 79A8 80006DA8 00000000 */   nop
endlabel setGameplayResolution
