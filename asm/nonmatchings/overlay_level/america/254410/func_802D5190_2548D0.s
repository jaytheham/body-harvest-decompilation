nonmatching func_802D5190_2548D0, 0x28

glabel func_802D5190_2548D0
    /* 2548D0 802D5190 3C048005 */  lui        $a0, %hi(buildingInstances)
    /* 2548D4 802D5194 24840AD8 */  addiu      $a0, $a0, %lo(buildingInstances)
    /* 2548D8 802D5198 8C8205D8 */  lw         $v0, 0x5D8($a0)
    /* 2548DC 802D519C 00021B02 */  srl        $v1, $v0, 12
    /* 2548E0 802D51A0 346E0020 */  ori        $t6, $v1, 0x20
    /* 2548E4 802D51A4 01C37826 */  xor        $t7, $t6, $v1
    /* 2548E8 802D51A8 000FC300 */  sll        $t8, $t7, 12
    /* 2548EC 802D51AC 0302C826 */  xor        $t9, $t8, $v0
    /* 2548F0 802D51B0 03E00008 */  jr         $ra
    /* 2548F4 802D51B4 AC9905D8 */   sw        $t9, 0x5D8($a0)
endlabel func_802D5190_2548D0
