nonmatching func_80011DBC_129BC, 0x58

glabel func_80011DBC_129BC
    /* 129BC 80011DBC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 129C0 80011DC0 AFA40018 */  sw         $a0, 0x18($sp)
    /* 129C4 80011DC4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 129C8 80011DC8 3C048003 */  lui        $a0, %hi(__printfunc)
    /* 129CC 80011DCC 0C00470D */  jal        debug_printModelSegmentStart
    /* 129D0 80011DD0 8C841C84 */   lw        $a0, %lo(__printfunc)($a0)
    /* 129D4 80011DD4 3C048003 */  lui        $a0, %hi(__printfunc)
    /* 129D8 80011DD8 0C00466A */  jal        func_800119A8_125A8
    /* 129DC 80011DDC 8C841C84 */   lw        $a0, %lo(__printfunc)($a0)
    /* 129E0 80011DE0 0C0046C5 */  jal        func_80011B14_12714
    /* 129E4 80011DE4 00402025 */   or        $a0, $v0, $zero
    /* 129E8 80011DE8 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 129EC 80011DEC 0C0046D8 */  jal        func_80011B60_12760
    /* 129F0 80011DF0 00402825 */   or        $a1, $v0, $zero
    /* 129F4 80011DF4 0C0046B2 */  jal        func_80011AC8_126C8
    /* 129F8 80011DF8 00402025 */   or        $a0, $v0, $zero
    /* 129FC 80011DFC 0C00471B */  jal        debug_printModelSegmentEnd
    /* 12A00 80011E00 00402025 */   or        $a0, $v0, $zero
    /* 12A04 80011E04 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 12A08 80011E08 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 12A0C 80011E0C 03E00008 */  jr         $ra
    /* 12A10 80011E10 00000000 */   nop
endlabel func_80011DBC_129BC
