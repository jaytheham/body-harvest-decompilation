nonmatching func_802D5DE4_1EEAF4, 0x18

glabel func_802D5DE4_1EEAF4
    /* 1EEAF4 802D5DE4 3C028005 */  lui        $v0, %hi(vehicleInstances)
    /* 1EEAF8 802D5DE8 2442DCD0 */  addiu      $v0, $v0, %lo(vehicleInstances)
    /* 1EEAFC 802D5DEC 944E1C84 */  lhu        $t6, 0x1C84($v0)
    /* 1EEB00 802D5DF0 31CFFBFF */  andi       $t7, $t6, 0xFBFF
    /* 1EEB04 802D5DF4 03E00008 */  jr         $ra
    /* 1EEB08 802D5DF8 A44F1C84 */   sh        $t7, 0x1C84($v0)
endlabel func_802D5DE4_1EEAF4
