nonmatching func_802D507C_1EDD8C, 0x34

glabel func_802D507C_1EDD8C
    /* 1EDD8C 802D507C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EDD90 802D5080 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1EDD94 802D5084 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EDD98 802D5088 3C04802E */  lui        $a0, %hi(D_802E0D84)
    /* 1EDD9C 802D508C 0C00731B */  jal        osSyncPrintf
    /* 1EDDA0 802D5090 24840D84 */   addiu     $a0, $a0, %lo(D_802E0D84)
    /* 1EDDA4 802D5094 24040000 */  addiu      $a0, $zero, 0x0
    /* 1EDDA8 802D5098 0C001CEE */  jal        func_800073B8_7FB8
    /* 1EDDAC 802D509C 2405000B */   addiu     $a1, $zero, 0xB
    /* 1EDDB0 802D50A0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EDDB4 802D50A4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EDDB8 802D50A8 03E00008 */  jr         $ra
    /* 1EDDBC 802D50AC 00000000 */   nop
endlabel func_802D507C_1EDD8C
