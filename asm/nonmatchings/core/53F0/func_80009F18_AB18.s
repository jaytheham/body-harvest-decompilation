nonmatching func_80009F18_AB18, 0x10C

glabel func_80009F18_AB18
    /* AB18 80009F18 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* AB1C 80009F1C AFBF0014 */  sw         $ra, 0x14($sp)
    /* AB20 80009F20 0C001417 */  jal        func_8000505C_5C5C
    /* AB24 80009F24 AFA40020 */   sw        $a0, 0x20($sp)
    /* AB28 80009F28 0C001431 */  jal        func_800050C4_5CC4
    /* AB2C 80009F2C 00000000 */   nop
    /* AB30 80009F30 3C028003 */  lui        $v0, %hi(D_80031B84)
    /* AB34 80009F34 8C421B84 */  lw         $v0, %lo(D_80031B84)($v0)
    /* AB38 80009F38 3C048006 */  lui        $a0, %hi(D_8005BB48)
    /* AB3C 80009F3C 3C058006 */  lui        $a1, %hi(D_8005BB4C)
    /* AB40 80009F40 00027080 */  sll        $t6, $v0, 2
    /* AB44 80009F44 000E7823 */  negu       $t7, $t6
    /* AB48 80009F48 00AF2821 */  addu       $a1, $a1, $t7
    /* AB4C 80009F4C 008E2021 */  addu       $a0, $a0, $t6
    /* AB50 80009F50 8C84BB48 */  lw         $a0, %lo(D_8005BB48)($a0)
    /* AB54 80009F54 8CA5BB4C */  lw         $a1, %lo(D_8005BB4C)($a1)
    /* AB58 80009F58 0C003727 */  jal        func_8000DC9C_E89C
    /* AB5C 80009F5C 01C01025 */   or        $v0, $t6, $zero
    /* AB60 80009F60 0C001417 */  jal        func_8000505C_5C5C
    /* AB64 80009F64 00000000 */   nop
    /* AB68 80009F68 0C001431 */  jal        func_800050C4_5CC4
    /* AB6C 80009F6C 00000000 */   nop
    /* AB70 80009F70 3C048007 */  lui        $a0, %hi(D_80068084)
    /* AB74 80009F74 3C058007 */  lui        $a1, %hi(D_80068088)
    /* AB78 80009F78 8CA58088 */  lw         $a1, %lo(D_80068088)($a1)
    /* AB7C 80009F7C 0C00392C */  jal        osSetTime
    /* AB80 80009F80 8C848084 */   lw        $a0, %lo(D_80068084)($a0)
    /* AB84 80009F84 0C003931 */  jal        func_8000E4C4_F0C4
    /* AB88 80009F88 24040001 */   addiu     $a0, $zero, 0x1
    /* AB8C 80009F8C 0C001417 */  jal        func_8000505C_5C5C
    /* AB90 80009F90 00000000 */   nop
    /* AB94 80009F94 0C001B57 */  jal        setFullResolution
    /* AB98 80009F98 00000000 */   nop
    /* AB9C 80009F9C 0C004749 */  jal        func_80011D24_12924
    /* ABA0 80009FA0 00000000 */   nop
    /* ABA4 80009FA4 0C00457D */  jal        loadFrontendData
    /* ABA8 80009FA8 00000000 */   nop
    /* ABAC 80009FAC 8FB80020 */  lw         $t8, 0x20($sp)
    /* ABB0 80009FB0 13000005 */  beqz       $t8, .L80009FC8_ABC8
    /* ABB4 80009FB4 00000000 */   nop
    /* ABB8 80009FB8 0C01C09C */  jal        func_80070270
    /* ABBC 80009FBC 24040009 */   addiu     $a0, $zero, 0x9
    /* ABC0 80009FC0 10000004 */  b          .L80009FD4_ABD4
    /* ABC4 80009FC4 AFA2001C */   sw        $v0, 0x1C($sp)
  .L80009FC8_ABC8:
    /* ABC8 80009FC8 0C01C09C */  jal        func_80070270
    /* ABCC 80009FCC 2404000E */   addiu     $a0, $zero, 0xE
    /* ABD0 80009FD0 AFA2001C */  sw         $v0, 0x1C($sp)
  .L80009FD4_ABD4:
    /* ABD4 80009FD4 0C0015AA */  jal        func_800056A8_62A8
    /* ABD8 80009FD8 00000000 */   nop
    /* ABDC 80009FDC 0C0015AA */  jal        func_800056A8_62A8
    /* ABE0 80009FE0 00000000 */   nop
    /* ABE4 80009FE4 0C001B61 */  jal        setGameplayResolution
    /* ABE8 80009FE8 00000000 */   nop
    /* ABEC 80009FEC 0C00459D */  jal        func_80011674_12274
    /* ABF0 80009FF0 00000000 */   nop
    /* ABF4 80009FF4 3C048004 */  lui        $a0, %hi(D_80047F93)
    /* ABF8 80009FF8 0C00475B */  jal        func_80011D6C_1296C
    /* ABFC 80009FFC 90847F93 */   lbu       $a0, %lo(D_80047F93)($a0)
    /* AC00 8000A000 24190001 */  addiu      $t9, $zero, 0x1
    /* AC04 8000A004 3C018005 */  lui        $at, %hi(gameplayMode)
    /* AC08 8000A008 0C001431 */  jal        func_800050C4_5CC4
    /* AC0C 8000A00C AC392ADC */   sw        $t9, %lo(gameplayMode)($at)
    /* AC10 8000A010 8FBF0014 */  lw         $ra, 0x14($sp)
    /* AC14 8000A014 8FA2001C */  lw         $v0, 0x1C($sp)
    /* AC18 8000A018 27BD0020 */  addiu      $sp, $sp, 0x20
    /* AC1C 8000A01C 03E00008 */  jr         $ra
    /* AC20 8000A020 00000000 */   nop
endlabel func_80009F18_AB18
