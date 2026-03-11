nonmatching func_802D513C_1EDE4C, 0x34

glabel func_802D513C_1EDE4C
    /* 1EDE4C 802D513C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EDE50 802D5140 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1EDE54 802D5144 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EDE58 802D5148 3C04802E */  lui        $a0, %hi(D_802E0DA8)
    /* 1EDE5C 802D514C 0C00731B */  jal        osSyncPrintf
    /* 1EDE60 802D5150 24840DA8 */   addiu     $a0, $a0, %lo(D_802E0DA8)
    /* 1EDE64 802D5154 24040000 */  addiu      $a0, $zero, 0x0
    /* 1EDE68 802D5158 0C001CB3 */  jal        func_800072CC_7ECC
    /* 1EDE6C 802D515C 2405000C */   addiu     $a1, $zero, 0xC
    /* 1EDE70 802D5160 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EDE74 802D5164 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EDE78 802D5168 03E00008 */  jr         $ra
    /* 1EDE7C 802D516C 00000000 */   nop
endlabel func_802D513C_1EDE4C
