nonmatching guess_displayInventory, 0x130

glabel guess_displayInventory
    /* AC24 8000A024 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* AC28 8000A028 AFBF0014 */  sw         $ra, 0x14($sp)
    /* AC2C 8000A02C 0C001417 */  jal        func_8000505C_5C5C
    /* AC30 8000A030 00000000 */   nop
    /* AC34 8000A034 0C001431 */  jal        func_800050C4_5CC4
    /* AC38 8000A038 00000000 */   nop
    /* AC3C 8000A03C 3C028003 */  lui        $v0, %hi(D_80031B84)
    /* AC40 8000A040 8C421B84 */  lw         $v0, %lo(D_80031B84)($v0)
    /* AC44 8000A044 3C048006 */  lui        $a0, %hi(D_8005BB48)
    /* AC48 8000A048 3C058006 */  lui        $a1, %hi(D_8005BB4C)
    /* AC4C 8000A04C 00027080 */  sll        $t6, $v0, 2
    /* AC50 8000A050 000E7823 */  negu       $t7, $t6
    /* AC54 8000A054 00AF2821 */  addu       $a1, $a1, $t7
    /* AC58 8000A058 008E2021 */  addu       $a0, $a0, $t6
    /* AC5C 8000A05C 8C84BB48 */  lw         $a0, %lo(D_8005BB48)($a0)
    /* AC60 8000A060 8CA5BB4C */  lw         $a1, %lo(D_8005BB4C)($a1)
    /* AC64 8000A064 0C003727 */  jal        func_8000DC9C_E89C
    /* AC68 8000A068 01C01025 */   or        $v0, $t6, $zero
    /* AC6C 8000A06C 0C002BF7 */  jal        func_8000AFDC_BBDC
    /* AC70 8000A070 00000000 */   nop
    /* AC74 8000A074 0C001417 */  jal        func_8000505C_5C5C
    /* AC78 8000A078 00000000 */   nop
    /* AC7C 8000A07C 0C001431 */  jal        func_800050C4_5CC4
    /* AC80 8000A080 00000000 */   nop
    /* AC84 8000A084 3C048007 */  lui        $a0, %hi(D_80068084)
    /* AC88 8000A088 3C058007 */  lui        $a1, %hi(D_80068088)
    /* AC8C 8000A08C 8CA58088 */  lw         $a1, %lo(D_80068088)($a1)
    /* AC90 8000A090 0C00392C */  jal        osSetTime
    /* AC94 8000A094 8C848084 */   lw        $a0, %lo(D_80068084)($a0)
    /* AC98 8000A098 0C003931 */  jal        func_8000E4C4_F0C4
    /* AC9C 8000A09C 24040001 */   addiu     $a0, $zero, 0x1
    /* ACA0 8000A0A0 0C001417 */  jal        func_8000505C_5C5C
    /* ACA4 8000A0A4 00000000 */   nop
    /* ACA8 8000A0A8 0C004749 */  jal        func_80011D24_12924
    /* ACAC 8000A0AC 00000000 */   nop
    /* ACB0 8000A0B0 0C00457D */  jal        loadFrontendData
    /* ACB4 8000A0B4 00000000 */   nop
    /* ACB8 8000A0B8 0C001B57 */  jal        setFullResolution
    /* ACBC 8000A0BC 00000000 */   nop
    /* ACC0 8000A0C0 0C01C09C */  jal        func_80070270
    /* ACC4 8000A0C4 2404000B */   addiu     $a0, $zero, 0xB
    /* ACC8 8000A0C8 0C0015AA */  jal        func_800056A8_62A8
    /* ACCC 8000A0CC AFA2001C */   sw        $v0, 0x1C($sp)
    /* ACD0 8000A0D0 0C0015AA */  jal        func_800056A8_62A8
    /* ACD4 8000A0D4 00000000 */   nop
    /* ACD8 8000A0D8 0C001B61 */  jal        setGameplayResolution
    /* ACDC 8000A0DC 00000000 */   nop
    /* ACE0 8000A0E0 0C00459D */  jal        func_80011674_12274
    /* ACE4 8000A0E4 00000000 */   nop
    /* ACE8 8000A0E8 3C188005 */  lui        $t8, %hi(D_80052ACA)
    /* ACEC 8000A0EC 93182ACA */  lbu        $t8, %lo(D_80052ACA)($t8)
    /* ACF0 8000A0F0 24010002 */  addiu      $at, $zero, 0x2
    /* ACF4 8000A0F4 3C198004 */  lui        $t9, %hi(currentLevel)
    /* ACF8 8000A0F8 17010009 */  bne        $t8, $at, .L8000A120_AD20
    /* ACFC 8000A0FC 3C048004 */   lui       $a0, %hi(D_80047F93)
    /* AD00 8000A100 8F397F90 */  lw         $t9, %lo(currentLevel)($t9)
    /* AD04 8000A104 24010005 */  addiu      $at, $zero, 0x5
    /* AD08 8000A108 13210005 */  beq        $t9, $at, .L8000A120_AD20
    /* AD0C 8000A10C 00000000 */   nop
    /* AD10 8000A110 0C00475B */  jal        func_80011D6C_1296C
    /* AD14 8000A114 24040006 */   addiu     $a0, $zero, 0x6
    /* AD18 8000A118 10000004 */  b          .L8000A12C_AD2C
    /* AD1C 8000A11C 24080001 */   addiu     $t0, $zero, 0x1
  .L8000A120_AD20:
    /* AD20 8000A120 0C00475B */  jal        func_80011D6C_1296C
    /* AD24 8000A124 90847F93 */   lbu       $a0, %lo(D_80047F93)($a0)
    /* AD28 8000A128 24080001 */  addiu      $t0, $zero, 0x1
  .L8000A12C_AD2C:
    /* AD2C 8000A12C 3C018005 */  lui        $at, %hi(gameplayMode)
    /* AD30 8000A130 0C001431 */  jal        func_800050C4_5CC4
    /* AD34 8000A134 AC282ADC */   sw        $t0, %lo(gameplayMode)($at)
    /* AD38 8000A138 0C004CC9 */  jal        func_80013324_13F24
    /* AD3C 8000A13C 00000000 */   nop
    /* AD40 8000A140 8FBF0014 */  lw         $ra, 0x14($sp)
    /* AD44 8000A144 8FA2001C */  lw         $v0, 0x1C($sp)
    /* AD48 8000A148 27BD0020 */  addiu      $sp, $sp, 0x20
    /* AD4C 8000A14C 03E00008 */  jr         $ra
    /* AD50 8000A150 00000000 */   nop
endlabel guess_displayInventory
    /* AD54 8000A154 00000000 */  nop
    /* AD58 8000A158 00000000 */  nop
    /* AD5C 8000A15C 00000000 */  nop
