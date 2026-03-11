nonmatching func_80011D24_12924, 0x48

glabel func_80011D24_12924
    /* 12924 80011D24 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 12928 80011D28 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1292C 80011D2C 3C048003 */  lui        $a0, %hi(__printfunc)
    /* 12930 80011D30 0C00470D */  jal        debug_printModelSegmentStart
    /* 12934 80011D34 8C841C84 */   lw        $a0, %lo(__printfunc)($a0)
    /* 12938 80011D38 3C048003 */  lui        $a0, %hi(__printfunc)
    /* 1293C 80011D3C 0C00466A */  jal        func_800119A8_125A8
    /* 12940 80011D40 8C841C84 */   lw        $a0, %lo(__printfunc)($a0)
    /* 12944 80011D44 0C0046B2 */  jal        func_80011AC8_126C8
    /* 12948 80011D48 00402025 */   or        $a0, $v0, $zero
    /* 1294C 80011D4C 0C0046FA */  jal        func_80011BE8_127E8
    /* 12950 80011D50 00402025 */   or        $a0, $v0, $zero
    /* 12954 80011D54 0C00471B */  jal        debug_printModelSegmentEnd
    /* 12958 80011D58 00402025 */   or        $a0, $v0, $zero
    /* 1295C 80011D5C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 12960 80011D60 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 12964 80011D64 03E00008 */  jr         $ra
    /* 12968 80011D68 00000000 */   nop
endlabel func_80011D24_12924
