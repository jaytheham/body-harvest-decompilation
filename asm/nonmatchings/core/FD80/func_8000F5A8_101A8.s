nonmatching func_8000F5A8_101A8, 0x70

glabel func_8000F5A8_101A8
    /* 101A8 8000F5A8 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 101AC 8000F5AC AFBF0024 */  sw         $ra, 0x24($sp)
    /* 101B0 8000F5B0 AFA40040 */  sw         $a0, 0x40($sp)
    /* 101B4 8000F5B4 AFA50044 */  sw         $a1, 0x44($sp)
    /* 101B8 8000F5B8 0C007CB8 */  jal        func_8001F2E0_1FEE0
    /* 101BC 8000F5BC AFA60048 */   sw        $a2, 0x48($sp)
    /* 101C0 8000F5C0 8FAE0044 */  lw         $t6, 0x44($sp)
    /* 101C4 8000F5C4 8FAF0048 */  lw         $t7, 0x48($sp)
    /* 101C8 8000F5C8 3C188006 */  lui        $t8, %hi(D_80067FD0)
    /* 101CC 8000F5CC 27187FD0 */  addiu      $t8, $t8, %lo(D_80067FD0)
    /* 101D0 8000F5D0 AFB80018 */  sw         $t8, 0x18($sp)
    /* 101D4 8000F5D4 27A40028 */  addiu      $a0, $sp, 0x28
    /* 101D8 8000F5D8 00002825 */  or         $a1, $zero, $zero
    /* 101DC 8000F5DC 00003025 */  or         $a2, $zero, $zero
    /* 101E0 8000F5E0 8FA70040 */  lw         $a3, 0x40($sp)
    /* 101E4 8000F5E4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 101E8 8000F5E8 0C007148 */  jal        osPiStartDma
    /* 101EC 8000F5EC AFAF0014 */   sw        $t7, 0x14($sp)
    /* 101F0 8000F5F0 3C048006 */  lui        $a0, %hi(D_80067FD0)
    /* 101F4 8000F5F4 3C058007 */  lui        $a1, %hi(D_80068038)
    /* 101F8 8000F5F8 24A58038 */  addiu      $a1, $a1, %lo(D_80068038)
    /* 101FC 8000F5FC 24847FD0 */  addiu      $a0, $a0, %lo(D_80067FD0)
    /* 10200 8000F600 0C006E9C */  jal        osRecvMesg
    /* 10204 8000F604 24060001 */   addiu     $a2, $zero, 0x1
    /* 10208 8000F608 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 1020C 8000F60C 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 10210 8000F610 03E00008 */  jr         $ra
    /* 10214 8000F614 00000000 */   nop
endlabel func_8000F5A8_101A8
