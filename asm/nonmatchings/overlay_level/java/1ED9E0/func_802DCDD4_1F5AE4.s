nonmatching func_802DCDD4_1F5AE4, 0x60

glabel func_802DCDD4_1F5AE4
    /* 1F5AE4 802DCDD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1F5AE8 802DCDD8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F5AEC 802DCDDC AFA40018 */  sw         $a0, 0x18($sp)
    /* 1F5AF0 802DCDE0 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 1F5AF4 802DCDE4 0C04DD1A */  jal        func_80137468_146418
    /* 1F5AF8 802DCDE8 2405001C */   addiu     $a1, $zero, 0x1C
    /* 1F5AFC 802DCDEC 0C021CEA */  jal        func_800873A8_96358
    /* 1F5B00 802DCDF0 93A4001B */   lbu       $a0, 0x1B($sp)
    /* 1F5B04 802DCDF4 93AE001B */  lbu        $t6, 0x1B($sp)
    /* 1F5B08 802DCDF8 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F5B0C 802DCDFC 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F5B10 802DCE00 000E7880 */  sll        $t7, $t6, 2
    /* 1F5B14 802DCE04 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F5B18 802DCE08 000F7900 */  sll        $t7, $t7, 4
    /* 1F5B1C 802DCE0C 01F81021 */  addu       $v0, $t7, $t8
    /* 1F5B20 802DCE10 8C590020 */  lw         $t9, 0x20($v0)
    /* 1F5B24 802DCE14 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F5B28 802DCE18 8449000E */  lh         $t1, 0xE($v0)
    /* 1F5B2C 802DCE1C 2401FFEF */  addiu      $at, $zero, -0x11
    /* 1F5B30 802DCE20 03214024 */  and        $t0, $t9, $at
    /* 1F5B34 802DCE24 AC480020 */  sw         $t0, 0x20($v0)
    /* 1F5B38 802DCE28 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1F5B3C 802DCE2C 03E00008 */  jr         $ra
    /* 1F5B40 802DCE30 A4490006 */   sh        $t1, 0x6($v0)
endlabel func_802DCDD4_1F5AE4
