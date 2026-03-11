nonmatching func_802D5CA8_2553E8, 0x60

glabel func_802D5CA8_2553E8
    /* 2553E8 802D5CA8 308600FF */  andi       $a2, $a0, 0xFF
    /* 2553EC 802D5CAC 00067080 */  sll        $t6, $a2, 2
    /* 2553F0 802D5CB0 01C67021 */  addu       $t6, $t6, $a2
    /* 2553F4 802D5CB4 3C0F8005 */  lui        $t7, %hi(alienInstances)
    /* 2553F8 802D5CB8 25EF8198 */  addiu      $t7, $t7, %lo(alienInstances)
    /* 2553FC 802D5CBC 000E7100 */  sll        $t6, $t6, 4
    /* 255400 802D5CC0 01CF1021 */  addu       $v0, $t6, $t7
    /* 255404 802D5CC4 8C580020 */  lw         $t8, 0x20($v0)
    /* 255408 802D5CC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 25540C 802D5CCC 2401FFEF */  addiu      $at, $zero, -0x11
    /* 255410 802D5CD0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 255414 802D5CD4 AFA40018 */  sw         $a0, 0x18($sp)
    /* 255418 802D5CD8 0301C824 */  and        $t9, $t8, $at
    /* 25541C 802D5CDC AC590020 */  sw         $t9, 0x20($v0)
    /* 255420 802D5CE0 A3A6001B */  sb         $a2, 0x1B($sp)
    /* 255424 802D5CE4 00C02025 */  or         $a0, $a2, $zero
    /* 255428 802D5CE8 0C04DD1A */  jal        func_80137468_146418
    /* 25542C 802D5CEC 24050130 */   addiu     $a1, $zero, 0x130
    /* 255430 802D5CF0 0C020193 */  jal        func_8008064C_8F5FC
    /* 255434 802D5CF4 93A4001B */   lbu       $a0, 0x1B($sp)
    /* 255438 802D5CF8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 25543C 802D5CFC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 255440 802D5D00 03E00008 */  jr         $ra
    /* 255444 802D5D04 00000000 */   nop
endlabel func_802D5CA8_2553E8
