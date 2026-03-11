nonmatching __osSiCreateAccessQueue, 0x50

glabel __osSiCreateAccessQueue
    /* 10AF0 8000FEF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10AF4 8000FEF4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10AF8 8000FEF8 240E0001 */  addiu      $t6, $zero, 0x1
    /* 10AFC 8000FEFC 3C018003 */  lui        $at, %hi(__osSiAccessQueueEnabled)
    /* 10B00 8000FF00 3C048006 */  lui        $a0, %hi(__osSiAccessQueue)
    /* 10B04 8000FF04 3C058006 */  lui        $a1, %hi(siacs_bss_0000)
    /* 10B08 8000FF08 AC2E1B54 */  sw         $t6, %lo(__osSiAccessQueueEnabled)($at)
    /* 10B0C 8000FF0C 24A5BB00 */  addiu      $a1, $a1, %lo(siacs_bss_0000)
    /* 10B10 8000FF10 2484BB08 */  addiu      $a0, $a0, %lo(__osSiAccessQueue)
    /* 10B14 8000FF14 0C006B98 */  jal        osCreateMesgQueue
    /* 10B18 8000FF18 24060001 */   addiu     $a2, $zero, 0x1
    /* 10B1C 8000FF1C 3C048006 */  lui        $a0, %hi(__osSiAccessQueue)
    /* 10B20 8000FF20 2484BB08 */  addiu      $a0, $a0, %lo(__osSiAccessQueue)
    /* 10B24 8000FF24 00002825 */  or         $a1, $zero, $zero
    /* 10B28 8000FF28 0C0070F4 */  jal        osSendMesg
    /* 10B2C 8000FF2C 00003025 */   or        $a2, $zero, $zero
    /* 10B30 8000FF30 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10B34 8000FF34 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10B38 8000FF38 03E00008 */  jr         $ra
    /* 10B3C 8000FF3C 00000000 */   nop
endlabel __osSiCreateAccessQueue
