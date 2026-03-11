nonmatching func_800D9A8C_E8A3C, 0x48

glabel func_800D9A8C_E8A3C
    /* E8A3C 800D9A8C 00047400 */  sll        $t6, $a0, 16
    /* E8A40 800D9A90 000E7C03 */  sra        $t7, $t6, 16
    /* E8A44 800D9A94 2407001C */  addiu      $a3, $zero, 0x1C
    /* E8A48 800D9A98 01E70019 */  multu      $t7, $a3
    /* E8A4C 800D9A9C 3C038015 */  lui        $v1, %hi(D_80154318)
    /* E8A50 800D9AA0 24634318 */  addiu      $v1, $v1, %lo(D_80154318)
    /* E8A54 800D9AA4 00056040 */  sll        $t4, $a1, 1
    /* E8A58 800D9AA8 AFA40000 */  sw         $a0, 0x0($sp)
    /* E8A5C 800D9AAC AFA60008 */  sw         $a2, 0x8($sp)
    /* E8A60 800D9AB0 00004012 */  mflo       $t0
    /* E8A64 800D9AB4 00684821 */  addu       $t1, $v1, $t0
    /* E8A68 800D9AB8 85220004 */  lh         $v0, 0x4($t1)
    /* E8A6C 800D9ABC 00470019 */  multu      $v0, $a3
    /* E8A70 800D9AC0 00005012 */  mflo       $t2
    /* E8A74 800D9AC4 006A5821 */  addu       $t3, $v1, $t2
    /* E8A78 800D9AC8 016C6821 */  addu       $t5, $t3, $t4
    /* E8A7C 800D9ACC 03E00008 */  jr         $ra
    /* E8A80 800D9AD0 A5A60008 */   sh        $a2, 0x8($t5)
endlabel func_800D9A8C_E8A3C
