nonmatching func_80018D14_19914, 0x44

glabel func_80018D14_19914
    /* 19914 80018D14 3C018003 */  lui        $at, %hi(D_80034484)
    /* 19918 80018D18 AC204484 */  sw         $zero, %lo(D_80034484)($at)
    /* 1991C 80018D1C 3C018003 */  lui        $at, %hi(D_8003447C)
    /* 19920 80018D20 AC20447C */  sw         $zero, %lo(D_8003447C)($at)
    /* 19924 80018D24 3C018007 */  lui        $at, %hi(D_8006C558)
    /* 19928 80018D28 240EFFFF */  addiu      $t6, $zero, -0x1
    /* 1992C 80018D2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 19930 80018D30 A42EC558 */  sh         $t6, %lo(D_8006C558)($at)
    /* 19934 80018D34 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 19938 80018D38 3C018007 */  lui        $at, %hi(D_8006C55E)
    /* 1993C 80018D3C 340FFFFF */  ori        $t7, $zero, 0xFFFF
    /* 19940 80018D40 0C006809 */  jal        func_8001A024_1AC24
    /* 19944 80018D44 A42FC55E */   sh        $t7, %lo(D_8006C55E)($at)
    /* 19948 80018D48 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1994C 80018D4C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 19950 80018D50 03E00008 */  jr         $ra
    /* 19954 80018D54 00000000 */   nop
endlabel func_80018D14_19914
