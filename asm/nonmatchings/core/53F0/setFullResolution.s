nonmatching setFullResolution, 0x28

glabel setFullResolution
    /* 795C 80006D5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 7960 80006D60 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 7964 80006D64 0C003D92 */  jal        setVideoInterfaceXSize
    /* 7968 80006D68 24040140 */   addiu     $a0, $zero, 0x140
    /* 796C 80006D6C 0C003D9F */  jal        setVideoInterfaceYSize
    /* 7970 80006D70 240400F0 */   addiu     $a0, $zero, 0xF0
    /* 7974 80006D74 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 7978 80006D78 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 797C 80006D7C 03E00008 */  jr         $ra
    /* 7980 80006D80 00000000 */   nop
endlabel setFullResolution
