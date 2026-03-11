nonmatching __osInitialize_emu, 0x14

glabel __osInitialize_emu
    /* 124E4 800118E4 3C0E802D */  lui        $t6, %hi(func_802D4CD0_18D7E0)
    /* 124E8 800118E8 25CE4CD0 */  addiu      $t6, $t6, %lo(func_802D4CD0_18D7E0)
    /* 124EC 800118EC 3C018003 */  lui        $at, %hi(__printfunc)
    /* 124F0 800118F0 03E00008 */  jr         $ra
    /* 124F4 800118F4 AC2E1C84 */   sw        $t6, %lo(__printfunc)($at)
endlabel __osInitialize_emu
