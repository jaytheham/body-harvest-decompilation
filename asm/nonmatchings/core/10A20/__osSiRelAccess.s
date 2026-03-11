nonmatching __osSiRelAccess, 0x2C

glabel __osSiRelAccess
    /* 10B88 8000FF88 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10B8C 8000FF8C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10B90 8000FF90 3C048006 */  lui        $a0, %hi(__osSiAccessQueue)
    /* 10B94 8000FF94 2484BB08 */  addiu      $a0, $a0, %lo(__osSiAccessQueue)
    /* 10B98 8000FF98 00002825 */  or         $a1, $zero, $zero
    /* 10B9C 8000FF9C 0C0070F4 */  jal        osSendMesg
    /* 10BA0 8000FFA0 00003025 */   or        $a2, $zero, $zero
    /* 10BA4 8000FFA4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10BA8 8000FFA8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10BAC 8000FFAC 03E00008 */  jr         $ra
    /* 10BB0 8000FFB0 00000000 */   nop
endlabel __osSiRelAccess
    /* 10BB4 8000FFB4 00000000 */  nop
    /* 10BB8 8000FFB8 00000000 */  nop
    /* 10BBC 8000FFBC 00000000 */  nop
