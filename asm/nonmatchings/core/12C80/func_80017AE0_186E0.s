nonmatching func_80017AE0_186E0, 0x28

glabel func_80017AE0_186E0
    /* 186E0 80017AE0 3C018003 */  lui        $at, %hi(D_80034478)
    /* 186E4 80017AE4 AC204478 */  sw         $zero, %lo(D_80034478)($at)
    /* 186E8 80017AE8 3C018003 */  lui        $at, %hi(D_80034480)
    /* 186EC 80017AEC 340EFFFF */  ori        $t6, $zero, 0xFFFF
    /* 186F0 80017AF0 A42E4480 */  sh         $t6, %lo(D_80034480)($at)
    /* 186F4 80017AF4 3C018003 */  lui        $at, %hi(D_8003447C)
    /* 186F8 80017AF8 AC20447C */  sw         $zero, %lo(D_8003447C)($at)
    /* 186FC 80017AFC 3C018003 */  lui        $at, %hi(D_80034484)
    /* 18700 80017B00 03E00008 */  jr         $ra
    /* 18704 80017B04 AC204484 */   sw        $zero, %lo(D_80034484)($at)
endlabel func_80017AE0_186E0
