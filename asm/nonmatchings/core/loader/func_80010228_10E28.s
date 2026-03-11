nonmatching func_80010228_10E28, 0x68

glabel func_80010228_10E28
    /* 10E28 80010228 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 10E2C 8001022C AFBF0024 */  sw         $ra, 0x24($sp)
    /* 10E30 80010230 AFA40040 */  sw         $a0, 0x40($sp)
    /* 10E34 80010234 0C007CB8 */  jal        func_8001F2E0_1FEE0
    /* 10E38 80010238 AFA50044 */   sw        $a1, 0x44($sp)
    /* 10E3C 8001023C 8FAE0044 */  lw         $t6, 0x44($sp)
    /* 10E40 80010240 3C188006 */  lui        $t8, %hi(D_80067F70)
    /* 10E44 80010244 27187F70 */  addiu      $t8, $t8, %lo(D_80067F70)
    /* 10E48 80010248 240F0018 */  addiu      $t7, $zero, 0x18
    /* 10E4C 8001024C AFAF0014 */  sw         $t7, 0x14($sp)
    /* 10E50 80010250 AFB80018 */  sw         $t8, 0x18($sp)
    /* 10E54 80010254 27A40028 */  addiu      $a0, $sp, 0x28
    /* 10E58 80010258 00002825 */  or         $a1, $zero, $zero
    /* 10E5C 8001025C 00003025 */  or         $a2, $zero, $zero
    /* 10E60 80010260 8FA70040 */  lw         $a3, 0x40($sp)
    /* 10E64 80010264 0C007148 */  jal        osPiStartDma
    /* 10E68 80010268 AFAE0010 */   sw        $t6, 0x10($sp)
    /* 10E6C 8001026C 3C048006 */  lui        $a0, %hi(D_80067F70)
    /* 10E70 80010270 24847F70 */  addiu      $a0, $a0, %lo(D_80067F70)
    /* 10E74 80010274 00002825 */  or         $a1, $zero, $zero
    /* 10E78 80010278 0C006E9C */  jal        osRecvMesg
    /* 10E7C 8001027C 24060001 */   addiu     $a2, $zero, 0x1
    /* 10E80 80010280 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 10E84 80010284 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 10E88 80010288 03E00008 */  jr         $ra
    /* 10E8C 8001028C 00000000 */   nop
endlabel func_80010228_10E28
