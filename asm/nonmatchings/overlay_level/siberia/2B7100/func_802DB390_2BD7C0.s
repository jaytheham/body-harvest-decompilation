nonmatching func_802DB390_2BD7C0, 0x60

glabel func_802DB390_2BD7C0
    /* 2BD7C0 802DB390 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2BD7C4 802DB394 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2BD7C8 802DB398 AFA40018 */  sw         $a0, 0x18($sp)
    /* 2BD7CC 802DB39C 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 2BD7D0 802DB3A0 0C04DD1A */  jal        func_80137468_146418
    /* 2BD7D4 802DB3A4 2405001C */   addiu     $a1, $zero, 0x1C
    /* 2BD7D8 802DB3A8 0C021CD7 */  jal        func_8008735C_9630C
    /* 2BD7DC 802DB3AC 93A4001B */   lbu       $a0, 0x1B($sp)
    /* 2BD7E0 802DB3B0 93AE001B */  lbu        $t6, 0x1B($sp)
    /* 2BD7E4 802DB3B4 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 2BD7E8 802DB3B8 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 2BD7EC 802DB3BC 000E7880 */  sll        $t7, $t6, 2
    /* 2BD7F0 802DB3C0 01EE7821 */  addu       $t7, $t7, $t6
    /* 2BD7F4 802DB3C4 000F7900 */  sll        $t7, $t7, 4
    /* 2BD7F8 802DB3C8 01F81021 */  addu       $v0, $t7, $t8
    /* 2BD7FC 802DB3CC 8C590020 */  lw         $t9, 0x20($v0)
    /* 2BD800 802DB3D0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2BD804 802DB3D4 8449000E */  lh         $t1, 0xE($v0)
    /* 2BD808 802DB3D8 2401FFEF */  addiu      $at, $zero, -0x11
    /* 2BD80C 802DB3DC 03214024 */  and        $t0, $t9, $at
    /* 2BD810 802DB3E0 AC480020 */  sw         $t0, 0x20($v0)
    /* 2BD814 802DB3E4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2BD818 802DB3E8 03E00008 */  jr         $ra
    /* 2BD81C 802DB3EC A4490006 */   sh        $t1, 0x6($v0)
endlabel func_802DB390_2BD7C0
