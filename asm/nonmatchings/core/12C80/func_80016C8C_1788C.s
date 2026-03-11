nonmatching func_80016C8C_1788C, 0x4C

glabel func_80016C8C_1788C
    /* 1788C 80016C8C AFA60008 */  sw         $a2, 0x8($sp)
    /* 17890 80016C90 C7A40008 */  lwc1       $f4, 0x8($sp)
    /* 17894 80016C94 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* 17898 80016C98 44810000 */  mtc1       $at, $f0
    /* 1789C 80016C9C 46047201 */  sub.s      $f8, $f14, $f4
    /* 178A0 80016CA0 3C018003 */  lui        $at, %hi(D_80031D50)
    /* 178A4 80016CA4 E42C1D50 */  swc1       $f12, %lo(D_80031D50)($at)
    /* 178A8 80016CA8 46002183 */  div.s      $f6, $f4, $f0
    /* 178AC 80016CAC 3C018003 */  lui        $at, %hi(D_80031D54)
    /* 178B0 80016CB0 E42C1D54 */  swc1       $f12, %lo(D_80031D54)($at)
    /* 178B4 80016CB4 3C018003 */  lui        $at, %hi(D_80031D58)
    /* 178B8 80016CB8 240E0001 */  addiu      $t6, $zero, 0x1
    /* 178BC 80016CBC 46004283 */  div.s      $f10, $f8, $f0
    /* 178C0 80016CC0 E4261D58 */  swc1       $f6, %lo(D_80031D58)($at)
    /* 178C4 80016CC4 3C018003 */  lui        $at, %hi(D_80031D5C)
    /* 178C8 80016CC8 E42A1D5C */  swc1       $f10, %lo(D_80031D5C)($at)
    /* 178CC 80016CCC 3C018003 */  lui        $at, %hi(D_80031D4C)
    /* 178D0 80016CD0 03E00008 */  jr         $ra
    /* 178D4 80016CD4 A02E1D4C */   sb        $t6, %lo(D_80031D4C)($at)
endlabel func_80016C8C_1788C
