nonmatching func_8000FE50_10A50, 0xA0

glabel func_8000FE50_10A50
    /* 10A50 8000FE50 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10A54 8000FE54 AFA40018 */  sw         $a0, 0x18($sp)
    /* 10A58 8000FE58 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10A5C 8000FE5C 3C048007 */  lui        $a0, %hi(D_8006A8D0)
    /* 10A60 8000FE60 3C058007 */  lui        $a1, %hi(D_80068038)
    /* 10A64 8000FE64 24A58038 */  addiu      $a1, $a1, %lo(D_80068038)
    /* 10A68 8000FE68 2484A8D0 */  addiu      $a0, $a0, %lo(D_8006A8D0)
    /* 10A6C 8000FE6C 0C006E9C */  jal        osRecvMesg
    /* 10A70 8000FE70 24060001 */   addiu     $a2, $zero, 0x1
    /* 10A74 8000FE74 0C007CC4 */  jal        osViSetSpecialFeatures
    /* 10A78 8000FE78 24040040 */   addiu     $a0, $zero, 0x40
    /* 10A7C 8000FE7C 0C003D86 */  jal        func_8000F618_10218
    /* 10A80 8000FE80 00000000 */   nop
    /* 10A84 8000FE84 240E0003 */  addiu      $t6, $zero, 0x3
    /* 10A88 8000FE88 3C018005 */  lui        $at, %hi(D_80052ACA)
    /* 10A8C 8000FE8C 0C0015AA */  jal        func_800056A8_62A8
    /* 10A90 8000FE90 A02E2ACA */   sb        $t6, %lo(D_80052ACA)($at)
    /* 10A94 8000FE94 0C0015AA */  jal        func_800056A8_62A8
    /* 10A98 8000FE98 00000000 */   nop
    /* 10A9C 8000FE9C 3C048007 */  lui        $a0, %hi(D_8006A8F0)
    /* 10AA0 8000FEA0 3C058007 */  lui        $a1, %hi(D_80068038)
    /* 10AA4 8000FEA4 24A58038 */  addiu      $a1, $a1, %lo(D_80068038)
    /* 10AA8 8000FEA8 2484A8F0 */  addiu      $a0, $a0, %lo(D_8006A8F0)
    /* 10AAC 8000FEAC 0C006E9C */  jal        osRecvMesg
    /* 10AB0 8000FEB0 24060001 */   addiu     $a2, $zero, 0x1
    /* 10AB4 8000FEB4 0C000661 */  jal        func_80001984_2584
    /* 10AB8 8000FEB8 00000000 */   nop
    /* 10ABC 8000FEBC 3C048003 */  lui        $a0, %hi(D_80037764)
    /* 10AC0 8000FEC0 3C050002 */  lui        $a1, (0x28928 >> 16)
    /* 10AC4 8000FEC4 34A58928 */  ori        $a1, $a1, (0x28928 & 0xFFFF)
    /* 10AC8 8000FEC8 0C00731B */  jal        osSyncPrintf
    /* 10ACC 8000FECC 24847764 */   addiu     $a0, $a0, %lo(D_80037764)
    /* 10AD0 8000FED0 0C00457D */  jal        loadFrontendData
    /* 10AD4 8000FED4 00000000 */   nop
    /* 10AD8 8000FED8 0C01C09C */  jal        func_80070270
    /* 10ADC 8000FEDC 24040001 */   addiu     $a0, $zero, 0x1
    /* 10AE0 8000FEE0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10AE4 8000FEE4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10AE8 8000FEE8 03E00008 */  jr         $ra
    /* 10AEC 8000FEEC 00000000 */   nop
endlabel func_8000FE50_10A50
