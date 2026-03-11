nonmatching func_802D998C_2590CC, 0x58

glabel func_802D998C_2590CC
    /* 2590CC 802D998C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2590D0 802D9990 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2590D4 802D9994 AFA40018 */  sw         $a0, 0x18($sp)
    /* 2590D8 802D9998 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 2590DC 802D999C 0C04DD1A */  jal        func_80137468_146418
    /* 2590E0 802D99A0 2405001C */   addiu     $a1, $zero, 0x1C
    /* 2590E4 802D99A4 0C021CD7 */  jal        func_8008735C_9630C
    /* 2590E8 802D99A8 93A4001B */   lbu       $a0, 0x1B($sp)
    /* 2590EC 802D99AC 93AE001B */  lbu        $t6, 0x1B($sp)
    /* 2590F0 802D99B0 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2590F4 802D99B4 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2590F8 802D99B8 000E7880 */  sll        $t7, $t6, 2
    /* 2590FC 802D99BC 01EE7821 */  addu       $t7, $t7, $t6
    /* 259100 802D99C0 000F7900 */  sll        $t7, $t7, 4
    /* 259104 802D99C4 01F81021 */  addu       $v0, $t7, $t8
    /* 259108 802D99C8 8C590020 */  lw         $t9, 0x20($v0)
    /* 25910C 802D99CC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 259110 802D99D0 2401FFEF */  addiu      $at, $zero, -0x11
    /* 259114 802D99D4 03214024 */  and        $t0, $t9, $at
    /* 259118 802D99D8 AC480020 */  sw         $t0, 0x20($v0)
    /* 25911C 802D99DC 03E00008 */  jr         $ra
    /* 259120 802D99E0 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_802D998C_2590CC
