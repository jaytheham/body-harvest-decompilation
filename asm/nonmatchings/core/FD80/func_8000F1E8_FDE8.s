nonmatching func_8000F1E8_FDE8, 0x30

glabel func_8000F1E8_FDE8
    /* FDE8 8000F1E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* FDEC 8000F1EC AFBF0014 */  sw         $ra, 0x14($sp)
    /* FDF0 8000F1F0 3C048006 */  lui        $a0, %hi(D_80067A48)
    /* FDF4 8000F1F4 0C007C2C */  jal        osStopThread
    /* FDF8 8000F1F8 24847A48 */   addiu     $a0, $a0, %lo(D_80067A48)
    /* FDFC 8000F1FC 3C048006 */  lui        $a0, %hi(D_80067A48)
    /* FE00 8000F200 0C007C5C */  jal        osDestroyThread
    /* FE04 8000F204 24847A48 */   addiu     $a0, $a0, %lo(D_80067A48)
    /* FE08 8000F208 8FBF0014 */  lw         $ra, 0x14($sp)
    /* FE0C 8000F20C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* FE10 8000F210 03E00008 */  jr         $ra
    /* FE14 8000F214 00000000 */   nop
endlabel func_8000F1E8_FDE8
