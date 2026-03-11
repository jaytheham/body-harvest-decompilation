nonmatching func_80019F80_1AB80, 0xA4

glabel func_80019F80_1AB80
    /* 1AB80 80019F80 3C038003 */  lui        $v1, %hi(D_80034460)
    /* 1AB84 80019F84 24634460 */  addiu      $v1, $v1, %lo(D_80034460)
    /* 1AB88 80019F88 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 1AB8C 80019F8C 3C068003 */  lui        $a2, %hi(D_80034468)
    /* 1AB90 80019F90 3C018003 */  lui        $at, %hi(D_80034464)
    /* 1AB94 80019F94 24C64468 */  addiu      $a2, $a2, %lo(D_80034468)
    /* 1AB98 80019F98 AC2E4464 */  sw         $t6, %lo(D_80034464)($at)
    /* 1AB9C 80019F9C 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 1ABA0 80019FA0 3C078003 */  lui        $a3, %hi(D_80034470)
    /* 1ABA4 80019FA4 3C018003 */  lui        $at, %hi(D_8003446C)
    /* 1ABA8 80019FA8 24E74470 */  addiu      $a3, $a3, %lo(D_80034470)
    /* 1ABAC 80019FAC AC2F446C */  sw         $t7, %lo(D_8003446C)($at)
    /* 1ABB0 80019FB0 8CF80000 */  lw         $t8, 0x0($a3)
    /* 1ABB4 80019FB4 3C028007 */  lui        $v0, %hi(D_8006C550)
    /* 1ABB8 80019FB8 3C018003 */  lui        $at, %hi(D_80034474)
    /* 1ABBC 80019FBC 2442C550 */  addiu      $v0, $v0, %lo(D_8006C550)
    /* 1ABC0 80019FC0 AC384474 */  sw         $t8, %lo(D_80034474)($at)
    /* 1ABC4 80019FC4 8C590000 */  lw         $t9, 0x0($v0)
    /* 1ABC8 80019FC8 3C018007 */  lui        $at, %hi(D_8006C554)
    /* 1ABCC 80019FCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1ABD0 80019FD0 AC39C554 */  sw         $t9, %lo(D_8006C554)($at)
    /* 1ABD4 80019FD4 3C088007 */  lui        $t0, %hi(D_8006AC10)
    /* 1ABD8 80019FD8 3C098007 */  lui        $t1, %hi(D_8006C410)
    /* 1ABDC 80019FDC 3C0A0306 */  lui        $t2, %hi(D_3059BA0)
    /* 1ABE0 80019FE0 3C0B8007 */  lui        $t3, %hi(D_8006C450)
    /* 1ABE4 80019FE4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1ABE8 80019FE8 2508AC10 */  addiu      $t0, $t0, %lo(D_8006AC10)
    /* 1ABEC 80019FEC 2529C410 */  addiu      $t1, $t1, %lo(D_8006C410)
    /* 1ABF0 80019FF0 254A9BA0 */  addiu      $t2, $t2, %lo(D_3059BA0)
    /* 1ABF4 80019FF4 2565C450 */  addiu      $a1, $t3, %lo(D_8006C450)
    /* 1ABF8 80019FF8 3C048004 */  lui        $a0, %hi(D_80038500)
    /* 1ABFC 80019FFC AC680000 */  sw         $t0, 0x0($v1)
    /* 1AC00 8001A000 ACC90000 */  sw         $t1, 0x0($a2)
    /* 1AC04 8001A004 ACEA0000 */  sw         $t2, 0x0($a3)
    /* 1AC08 8001A008 AC450000 */  sw         $a1, 0x0($v0)
    /* 1AC0C 8001A00C 0C00731B */  jal        osSyncPrintf
    /* 1AC10 8001A010 24848500 */   addiu     $a0, $a0, %lo(D_80038500)
    /* 1AC14 8001A014 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1AC18 8001A018 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1AC1C 8001A01C 03E00008 */  jr         $ra
    /* 1AC20 8001A020 00000000 */   nop
endlabel func_80019F80_1AB80
