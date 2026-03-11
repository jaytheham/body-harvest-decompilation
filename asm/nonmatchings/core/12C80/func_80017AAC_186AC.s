nonmatching func_80017AAC_186AC, 0x34

glabel func_80017AAC_186AC
    /* 186AC 80017AAC 3C018007 */  lui        $at, %hi(D_8006C55C)
    /* 186B0 80017AB0 A420C55C */  sh         $zero, %lo(D_8006C55C)($at)
    /* 186B4 80017AB4 3C018007 */  lui        $at, %hi(D_8006C558)
    /* 186B8 80017AB8 240EFFFF */  addiu      $t6, $zero, -0x1
    /* 186BC 80017ABC A42EC558 */  sh         $t6, %lo(D_8006C558)($at)
    /* 186C0 80017AC0 3C018007 */  lui        $at, %hi(D_8006C55E)
    /* 186C4 80017AC4 340FFFFF */  ori        $t7, $zero, 0xFFFF
    /* 186C8 80017AC8 A42FC55E */  sh         $t7, %lo(D_8006C55E)($at)
    /* 186CC 80017ACC 3C018007 */  lui        $at, %hi(D_8006C568)
    /* 186D0 80017AD0 A420C568 */  sh         $zero, %lo(D_8006C568)($at)
    /* 186D4 80017AD4 3C018007 */  lui        $at, %hi(D_8006C56A)
    /* 186D8 80017AD8 03E00008 */  jr         $ra
    /* 186DC 80017ADC A420C56A */   sh        $zero, %lo(D_8006C56A)($at)
endlabel func_80017AAC_186AC
