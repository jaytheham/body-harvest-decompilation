nonmatching func_80013314_13F14, 0x10

glabel func_80013314_13F14
    /* 13F14 80013314 240EFFFF */  addiu      $t6, $zero, -0x1
    /* 13F18 80013318 3C018003 */  lui        $at, %hi(D_80031CA4)
    /* 13F1C 8001331C 03E00008 */  jr         $ra
    /* 13F20 80013320 A02E1CA4 */   sb        $t6, %lo(D_80031CA4)($at)
endlabel func_80013314_13F14
