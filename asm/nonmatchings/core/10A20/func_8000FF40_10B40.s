nonmatching func_8000FF40_10B40, 0x48

glabel func_8000FF40_10B40
    /* 10B40 8000FF40 3C0E8003 */  lui        $t6, %hi(__osSiAccessQueueEnabled)
    /* 10B44 8000FF44 8DCE1B54 */  lw         $t6, %lo(__osSiAccessQueueEnabled)($t6)
    /* 10B48 8000FF48 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10B4C 8000FF4C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10B50 8000FF50 15C00003 */  bnez       $t6, .L8000FF60_10B60
    /* 10B54 8000FF54 00000000 */   nop
    /* 10B58 8000FF58 0C003FBC */  jal        __osSiCreateAccessQueue
    /* 10B5C 8000FF5C 00000000 */   nop
  .L8000FF60_10B60:
    /* 10B60 8000FF60 3C048006 */  lui        $a0, %hi(__osSiAccessQueue)
    /* 10B64 8000FF64 3C058007 */  lui        $a1, %hi(D_80068038)
    /* 10B68 8000FF68 24A58038 */  addiu      $a1, $a1, %lo(D_80068038)
    /* 10B6C 8000FF6C 2484BB08 */  addiu      $a0, $a0, %lo(__osSiAccessQueue)
    /* 10B70 8000FF70 0C006E9C */  jal        osRecvMesg
    /* 10B74 8000FF74 24060001 */   addiu     $a2, $zero, 0x1
    /* 10B78 8000FF78 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10B7C 8000FF7C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10B80 8000FF80 03E00008 */  jr         $ra
    /* 10B84 8000FF84 00000000 */   nop
endlabel func_8000FF40_10B40
