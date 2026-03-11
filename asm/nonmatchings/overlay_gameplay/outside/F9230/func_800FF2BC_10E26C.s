nonmatching func_800FF2BC_10E26C, 0x78

glabel func_800FF2BC_10E26C
    /* 10E26C 800FF2BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10E270 800FF2C0 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10E274 800FF2C4 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10E278 800FF2C8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10E27C 800FF2CC AFA40018 */  sw         $a0, 0x18($sp)
    /* 10E280 800FF2D0 0C000E38 */  jal        func_800038E0_44E0
    /* 10E284 800FF2D4 A4A00000 */   sh        $zero, 0x0($a1)
    /* 10E288 800FF2D8 8FAE0018 */  lw         $t6, 0x18($sp)
    /* 10E28C 800FF2DC 3C068005 */  lui        $a2, %hi(D_80052B50)
    /* 10E290 800FF2E0 24C62B50 */  addiu      $a2, $a2, %lo(D_80052B50)
    /* 10E294 800FF2E4 240303A1 */  addiu      $v1, $zero, 0x3A1
    /* 10E298 800FF2E8 3C058005 */  lui        $a1, %hi(D_80052B48)
    /* 10E29C 800FF2EC 24A52B48 */  addiu      $a1, $a1, %lo(D_80052B48)
    /* 10E2A0 800FF2F0 3C198014 */  lui        $t9, %hi(D_8013FDA8)
    /* 10E2A4 800FF2F4 000E7900 */  sll        $t7, $t6, 4
    /* 10E2A8 800FF2F8 A4A20002 */  sh         $v0, 0x2($a1)
    /* 10E2AC 800FF2FC A4A00004 */  sh         $zero, 0x4($a1)
    /* 10E2B0 800FF300 A4C30000 */  sh         $v1, 0x0($a2)
    /* 10E2B4 800FF304 A4C30002 */  sh         $v1, 0x2($a2)
    /* 10E2B8 800FF308 A4C30004 */  sh         $v1, 0x4($a2)
    /* 10E2BC 800FF30C 25F80008 */  addiu      $t8, $t7, 0x8
    /* 10E2C0 800FF310 2739FDA8 */  addiu      $t9, $t9, %lo(D_8013FDA8)
    /* 10E2C4 800FF314 3C078006 */  lui        $a3, %hi(D_8005BB38)
    /* 10E2C8 800FF318 8CE7BB38 */  lw         $a3, %lo(D_8005BB38)($a3)
    /* 10E2CC 800FF31C 0C000E74 */  jal        func_800039D0_45D0
    /* 10E2D0 800FF320 03192021 */   addu      $a0, $t8, $t9
    /* 10E2D4 800FF324 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 10E2D8 800FF328 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10E2DC 800FF32C 03E00008 */  jr         $ra
    /* 10E2E0 800FF330 00000000 */   nop
endlabel func_800FF2BC_10E26C
