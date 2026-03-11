nonmatching func_8000C764_D364, 0x2C

glabel func_8000C764_D364
    /* D364 8000C764 3C0E8005 */  lui        $t6, %hi(D_80054680)
    /* D368 8000C768 25CE4680 */  addiu      $t6, $t6, %lo(D_80054680)
    /* D36C 8000C76C 008E7823 */  subu       $t7, $a0, $t6
    /* D370 8000C770 24010E58 */  addiu      $at, $zero, 0xE58
    /* D374 8000C774 01E1001A */  div        $zero, $t7, $at
    /* D378 8000C778 0000C012 */  mflo       $t8
    /* D37C 8000C77C 0018C880 */  sll        $t9, $t8, 2
    /* D380 8000C780 3C018005 */  lui        $at, %hi(D_80054668)
    /* D384 8000C784 00390821 */  addu       $at, $at, $t9
    /* D388 8000C788 03E00008 */  jr         $ra
    /* D38C 8000C78C AC204668 */   sw        $zero, %lo(D_80054668)($at)
endlabel func_8000C764_D364
