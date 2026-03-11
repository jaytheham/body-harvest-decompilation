nonmatching func_802DC91C_19542C, 0x70

glabel func_802DC91C_19542C
    /* 19542C 802DC91C 308E00FF */  andi       $t6, $a0, 0xFF
    /* 195430 802DC920 000E7880 */  sll        $t7, $t6, 2
    /* 195434 802DC924 01EE7821 */  addu       $t7, $t7, $t6
    /* 195438 802DC928 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 19543C 802DC92C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 195440 802DC930 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 195444 802DC934 000F7900 */  sll        $t7, $t7, 4
    /* 195448 802DC938 01F81021 */  addu       $v0, $t7, $t8
    /* 19544C 802DC93C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 195450 802DC940 AFA40018 */  sw         $a0, 0x18($sp)
    /* 195454 802DC944 2419FF73 */  addiu      $t9, $zero, -0x8D
    /* 195458 802DC948 2408FFF9 */  addiu      $t0, $zero, -0x7
    /* 19545C 802DC94C 24090026 */  addiu      $t1, $zero, 0x26
    /* 195460 802DC950 01C02025 */  or         $a0, $t6, $zero
    /* 195464 802DC954 A4590014 */  sh         $t9, 0x14($v0)
    /* 195468 802DC958 A4480016 */  sh         $t0, 0x16($v0)
    /* 19546C 802DC95C A4490018 */  sh         $t1, 0x18($v0)
    /* 195470 802DC960 0C0B7140 */  jal        func_802DC500_195010
    /* 195474 802DC964 A3AE001B */   sb        $t6, 0x1B($sp)
    /* 195478 802DC968 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 19547C 802DC96C 2405FF45 */  addiu      $a1, $zero, -0xBB
    /* 195480 802DC970 24060022 */  addiu      $a2, $zero, 0x22
    /* 195484 802DC974 0C02A4E9 */  jal        func_800A93A4_B8354
    /* 195488 802DC978 24070147 */   addiu     $a3, $zero, 0x147
    /* 19548C 802DC97C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 195490 802DC980 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 195494 802DC984 03E00008 */  jr         $ra
    /* 195498 802DC988 00000000 */   nop
endlabel func_802DC91C_19542C
