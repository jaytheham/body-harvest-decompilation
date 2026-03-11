nonmatching func_80019EA8_1AAA8, 0x60

glabel func_80019EA8_1AAA8
    /* 1AAA8 80019EA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1AAAC 80019EAC AFA40018 */  sw         $a0, 0x18($sp)
    /* 1AAB0 80019EB0 308600FF */  andi       $a2, $a0, 0xFF
    /* 1AAB4 80019EB4 3C028003 */  lui        $v0, %hi(D_80034480)
    /* 1AAB8 80019EB8 240E0001 */  addiu      $t6, $zero, 0x1
    /* 1AABC 80019EBC 3C018003 */  lui        $at, %hi(D_80034478)
    /* 1AAC0 80019EC0 24424480 */  addiu      $v0, $v0, %lo(D_80034480)
    /* 1AAC4 80019EC4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1AAC8 80019EC8 AC2E4478 */  sw         $t6, %lo(D_80034478)($at)
    /* 1AACC 80019ECC 3C048004 */  lui        $a0, %hi(D_800384E0)
    /* 1AAD0 80019ED0 A4460000 */  sh         $a2, 0x0($v0)
    /* 1AAD4 80019ED4 248484E0 */  addiu      $a0, $a0, %lo(D_800384E0)
    /* 1AAD8 80019ED8 0C00731B */  jal        osSyncPrintf
    /* 1AADC 80019EDC 30C5FFFF */   andi      $a1, $a2, 0xFFFF
    /* 1AAE0 80019EE0 3C018003 */  lui        $at, %hi(D_8003447C)
    /* 1AAE4 80019EE4 AC20447C */  sw         $zero, %lo(D_8003447C)($at)
    /* 1AAE8 80019EE8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1AAEC 80019EEC 3C018007 */  lui        $at, %hi(D_8006C56C)
    /* 1AAF0 80019EF0 A020C56C */  sb         $zero, %lo(D_8006C56C)($at)
    /* 1AAF4 80019EF4 3C018003 */  lui        $at, %hi(D_8003445C)
    /* 1AAF8 80019EF8 240F0001 */  addiu      $t7, $zero, 0x1
    /* 1AAFC 80019EFC AC2F445C */  sw         $t7, %lo(D_8003445C)($at)
    /* 1AB00 80019F00 03E00008 */  jr         $ra
    /* 1AB04 80019F04 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_80019EA8_1AAA8
