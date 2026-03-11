nonmatching func_802D5DFC_1EEB0C, 0x9C

glabel func_802D5DFC_1EEB0C
    /* 1EEB0C 802D5DFC 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 1EEB10 802D5E00 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1EEB14 802D5E04 80820001 */  lb         $v0, 0x1($a0)
    /* 1EEB18 802D5E08 80830002 */  lb         $v1, 0x2($a0)
    /* 1EEB1C 802D5E0C 00027200 */  sll        $t6, $v0, 8
    /* 1EEB20 802D5E10 00037A00 */  sll        $t7, $v1, 8
    /* 1EEB24 802D5E14 25C20080 */  addiu      $v0, $t6, 0x80
    /* 1EEB28 802D5E18 25E30080 */  addiu      $v1, $t7, 0x80
    /* 1EEB2C 802D5E1C 00032C00 */  sll        $a1, $v1, 16
    /* 1EEB30 802D5E20 00022400 */  sll        $a0, $v0, 16
    /* 1EEB34 802D5E24 0004C403 */  sra        $t8, $a0, 16
    /* 1EEB38 802D5E28 0005CC03 */  sra        $t9, $a1, 16
    /* 1EEB3C 802D5E2C 03202825 */  or         $a1, $t9, $zero
    /* 1EEB40 802D5E30 AFB90024 */  sw         $t9, 0x24($sp)
    /* 1EEB44 802D5E34 03002025 */  or         $a0, $t8, $zero
    /* 1EEB48 802D5E38 0C02E134 */  jal        func_800B84D0_C7480
    /* 1EEB4C 802D5E3C AFB80028 */   sw        $t8, 0x28($sp)
    /* 1EEB50 802D5E40 00021A03 */  sra        $v1, $v0, 8
    /* 1EEB54 802D5E44 00032C00 */  sll        $a1, $v1, 16
    /* 1EEB58 802D5E48 00054403 */  sra        $t0, $a1, 16
    /* 1EEB5C 802D5E4C 24090096 */  addiu      $t1, $zero, 0x96
    /* 1EEB60 802D5E50 AFA30030 */  sw         $v1, 0x30($sp)
    /* 1EEB64 802D5E54 AFA90010 */  sw         $t1, 0x10($sp)
    /* 1EEB68 802D5E58 01002825 */  or         $a1, $t0, $zero
    /* 1EEB6C 802D5E5C 87A4002A */  lh         $a0, 0x2A($sp)
    /* 1EEB70 802D5E60 87A60026 */  lh         $a2, 0x26($sp)
    /* 1EEB74 802D5E64 0C0492D7 */  jal        func_80124B5C_133B0C
    /* 1EEB78 802D5E68 240703E8 */   addiu     $a3, $zero, 0x3E8
    /* 1EEB7C 802D5E6C 87A4002A */  lh         $a0, 0x2A($sp)
    /* 1EEB80 802D5E70 87A50032 */  lh         $a1, 0x32($sp)
    /* 1EEB84 802D5E74 87A60026 */  lh         $a2, 0x26($sp)
    /* 1EEB88 802D5E78 240700C8 */  addiu      $a3, $zero, 0xC8
    /* 1EEB8C 802D5E7C AFA00010 */  sw         $zero, 0x10($sp)
    /* 1EEB90 802D5E80 0C037C0E */  jal        func_800DF038_EDFE8
    /* 1EEB94 802D5E84 AFA00014 */   sw        $zero, 0x14($sp)
    /* 1EEB98 802D5E88 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1EEB9C 802D5E8C 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 1EEBA0 802D5E90 03E00008 */  jr         $ra
    /* 1EEBA4 802D5E94 00000000 */   nop
endlabel func_802D5DFC_1EEB0C
