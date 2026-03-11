nonmatching func_8000C6B8_D2B8, 0xC

glabel func_8000C6B8_D2B8
    /* D2B8 8000C6B8 3C018005 */  lui        $at, %hi(D_80053C98)
    /* D2BC 8000C6BC 03E00008 */  jr         $ra
    /* D2C0 8000C6C0 AC243C98 */   sw        $a0, %lo(D_80053C98)($at)
endlabel func_8000C6B8_D2B8
