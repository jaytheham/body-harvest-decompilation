nonmatching func_80005AEC_66EC, 0x44

glabel func_80005AEC_66EC
    /* 66EC 80005AEC 24190001 */  addiu      $t9, $zero, 0x1
    /* 66F0 80005AF0 3C018004 */  lui        $at, %hi(D_80047734)
    /* 66F4 80005AF4 AC397734 */  sw         $t9, %lo(D_80047734)($at)
    /* 66F8 80005AF8 3C018004 */  lui        $at, %hi(D_80047738)
    /* 66FC 80005AFC A0247738 */  sb         $a0, %lo(D_80047738)($at)
    /* 6700 80005B00 3C018004 */  lui        $at, %hi(D_80047739)
    /* 6704 80005B04 A0257739 */  sb         $a1, %lo(D_80047739)($at)
    /* 6708 80005B08 3C018004 */  lui        $at, %hi(D_8004773A)
    /* 670C 80005B0C A026773A */  sb         $a2, %lo(D_8004773A)($at)
    /* 6710 80005B10 3C018004 */  lui        $at, %hi(D_80047730)
    /* 6714 80005B14 24080040 */  addiu      $t0, $zero, 0x40
    /* 6718 80005B18 AFA40000 */  sw         $a0, 0x0($sp)
    /* 671C 80005B1C AFA50004 */  sw         $a1, 0x4($sp)
    /* 6720 80005B20 AFA60008 */  sw         $a2, 0x8($sp)
    /* 6724 80005B24 AFA7000C */  sw         $a3, 0xC($sp)
    /* 6728 80005B28 03E00008 */  jr         $ra
    /* 672C 80005B2C AC287730 */   sw        $t0, %lo(D_80047730)($at)
endlabel func_80005AEC_66EC
