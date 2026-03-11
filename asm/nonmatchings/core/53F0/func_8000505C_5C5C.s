nonmatching func_8000505C_5C5C, 0x68

glabel func_8000505C_5C5C
    /* 5C5C 8000505C 3C088006 */  lui        $t0, %hi(D_8005BB2C)
    /* 5C60 80005060 2508BB2C */  addiu      $t0, $t0, %lo(D_8005BB2C)
    /* 5C64 80005064 8D020000 */  lw         $v0, 0x0($t0)
    /* 5C68 80005068 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 5C6C 8000506C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 5C70 80005070 244E0008 */  addiu      $t6, $v0, 0x8
    /* 5C74 80005074 AD0E0000 */  sw         $t6, 0x0($t0)
    /* 5C78 80005078 3C0FE900 */  lui        $t7, (0xE9000000 >> 16)
    /* 5C7C 8000507C AC4F0000 */  sw         $t7, 0x0($v0)
    /* 5C80 80005080 AC400004 */  sw         $zero, 0x4($v0)
    /* 5C84 80005084 8D020000 */  lw         $v0, 0x0($t0)
    /* 5C88 80005088 3C19B800 */  lui        $t9, (0xB8000000 >> 16)
    /* 5C8C 8000508C 3C048007 */  lui        $a0, %hi(D_8006A8B0)
    /* 5C90 80005090 24580008 */  addiu      $t8, $v0, 0x8
    /* 5C94 80005094 AD180000 */  sw         $t8, 0x0($t0)
    /* 5C98 80005098 3C058003 */  lui        $a1, %hi(D_800314CC)
    /* 5C9C 8000509C 24A514CC */  addiu      $a1, $a1, %lo(D_800314CC)
    /* 5CA0 800050A0 2484A8B0 */  addiu      $a0, $a0, %lo(D_8006A8B0)
    /* 5CA4 800050A4 24060001 */  addiu      $a2, $zero, 0x1
    /* 5CA8 800050A8 AC400004 */  sw         $zero, 0x4($v0)
    /* 5CAC 800050AC 0C0070F4 */  jal        osSendMesg
    /* 5CB0 800050B0 AC590000 */   sw        $t9, 0x0($v0)
    /* 5CB4 800050B4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 5CB8 800050B8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 5CBC 800050BC 03E00008 */  jr         $ra
    /* 5CC0 800050C0 00000000 */   nop
endlabel func_8000505C_5C5C
