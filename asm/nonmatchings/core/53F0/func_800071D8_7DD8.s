nonmatching func_800071D8_7DD8, 0x94

glabel func_800071D8_7DD8
    /* 7DD8 800071D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 7DDC 800071DC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 7DE0 800071E0 0C001417 */  jal        func_8000505C_5C5C
    /* 7DE4 800071E4 00000000 */   nop
    /* 7DE8 800071E8 0C0015AA */  jal        func_800056A8_62A8
    /* 7DEC 800071EC 00000000 */   nop
    /* 7DF0 800071F0 0C0015AA */  jal        func_800056A8_62A8
    /* 7DF4 800071F4 00000000 */   nop
    /* 7DF8 800071F8 0C001B57 */  jal        setFullResolution
    /* 7DFC 800071FC 00000000 */   nop
    /* 7E00 80007200 0C0045F6 */  jal        func_800117D8_123D8
    /* 7E04 80007204 00000000 */   nop
    /* 7E08 80007208 0C01C09C */  jal        func_80070270
    /* 7E0C 8000720C 00002025 */   or        $a0, $zero, $zero
    /* 7E10 80007210 3C028005 */  lui        $v0, %hi(gameplayMode)
    /* 7E14 80007214 8C422ADC */  lw         $v0, %lo(gameplayMode)($v0)
    /* 7E18 80007218 24010010 */  addiu      $at, $zero, 0x10
    /* 7E1C 8000721C 10400008 */  beqz       $v0, .L80007240_7E40
    /* 7E20 80007220 00000000 */   nop
    /* 7E24 80007224 10410006 */  beq        $v0, $at, .L80007240_7E40
    /* 7E28 80007228 3C0E8005 */   lui       $t6, %hi(D_80052AD0)
    /* 7E2C 8000722C 8DCE2AD0 */  lw         $t6, %lo(D_80052AD0)($t6)
    /* 7E30 80007230 11C00003 */  beqz       $t6, .L80007240_7E40
    /* 7E34 80007234 00000000 */   nop
    /* 7E38 80007238 0C001B61 */  jal        setGameplayResolution
    /* 7E3C 8000723C 00000000 */   nop
  .L80007240_7E40:
    /* 7E40 80007240 0C00459D */  jal        func_80011674_12274
    /* 7E44 80007244 00000000 */   nop
    /* 7E48 80007248 3C048004 */  lui        $a0, %hi(D_80047F93)
    /* 7E4C 8000724C 0C00475B */  jal        func_80011D6C_1296C
    /* 7E50 80007250 90847F93 */   lbu       $a0, %lo(D_80047F93)($a0)
    /* 7E54 80007254 0C001431 */  jal        func_800050C4_5CC4
    /* 7E58 80007258 00000000 */   nop
    /* 7E5C 8000725C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 7E60 80007260 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 7E64 80007264 03E00008 */  jr         $ra
    /* 7E68 80007268 00000000 */   nop
endlabel func_800071D8_7DD8
