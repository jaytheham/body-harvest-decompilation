nonmatching func_802DB428_1F4138, 0x40

glabel func_802DB428_1F4138
    /* 1F4138 802DB428 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1F413C 802DB42C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F4140 802DB430 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1F4144 802DB434 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 1F4148 802DB438 0C04DD1A */  jal        func_80137468_146418
    /* 1F414C 802DB43C 24050025 */   addiu     $a1, $zero, 0x25
    /* 1F4150 802DB440 93AE001B */  lbu        $t6, 0x1B($sp)
    /* 1F4154 802DB444 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F4158 802DB448 3C018005 */  lui        $at, %hi(D_800481AA)
    /* 1F415C 802DB44C 000E7880 */  sll        $t7, $t6, 2
    /* 1F4160 802DB450 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F4164 802DB454 000F7900 */  sll        $t7, $t7, 4
    /* 1F4168 802DB458 002F0821 */  addu       $at, $at, $t7
    /* 1F416C 802DB45C A42081AA */  sh         $zero, %lo(D_800481AA)($at)
    /* 1F4170 802DB460 03E00008 */  jr         $ra
    /* 1F4174 802DB464 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_802DB428_1F4138
