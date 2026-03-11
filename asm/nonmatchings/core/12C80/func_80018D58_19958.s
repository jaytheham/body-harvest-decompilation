nonmatching func_80018D58_19958, 0x24

glabel func_80018D58_19958
    /* 19958 80018D58 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1995C 80018D5C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 19960 80018D60 0C006345 */  jal        func_80018D14_19914
    /* 19964 80018D64 00000000 */   nop
    /* 19968 80018D68 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1996C 80018D6C 3C018003 */  lui        $at, %hi(D_8003449C)
    /* 19970 80018D70 AC20449C */  sw         $zero, %lo(D_8003449C)($at)
    /* 19974 80018D74 03E00008 */  jr         $ra
    /* 19978 80018D78 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_80018D58_19958
