nonmatching func_80011D6C_1296C, 0x50

glabel func_80011D6C_1296C
    /* 1296C 80011D6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 12970 80011D70 AFA40018 */  sw         $a0, 0x18($sp)
    /* 12974 80011D74 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 12978 80011D78 3C048003 */  lui        $a0, %hi(__printfunc)
    /* 1297C 80011D7C 0C00470D */  jal        debug_printModelSegmentStart
    /* 12980 80011D80 8C841C84 */   lw        $a0, %lo(__printfunc)($a0)
    /* 12984 80011D84 3C048003 */  lui        $a0, %hi(__printfunc)
    /* 12988 80011D88 0C00466A */  jal        func_800119A8_125A8
    /* 1298C 80011D8C 8C841C84 */   lw        $a0, %lo(__printfunc)($a0)
    /* 12990 80011D90 0C00467D */  jal        func_800119F4_125F4
    /* 12994 80011D94 00402025 */   or        $a0, $v0, $zero
    /* 12998 80011D98 93A4001B */  lbu        $a0, 0x1B($sp)
    /* 1299C 80011D9C 0C004690 */  jal        func_80011A40_12640
    /* 129A0 80011DA0 00402825 */   or        $a1, $v0, $zero
    /* 129A4 80011DA4 0C00471B */  jal        debug_printModelSegmentEnd
    /* 129A8 80011DA8 00402025 */   or        $a0, $v0, $zero
    /* 129AC 80011DAC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 129B0 80011DB0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 129B4 80011DB4 03E00008 */  jr         $ra
    /* 129B8 80011DB8 00000000 */   nop
endlabel func_80011D6C_1296C
