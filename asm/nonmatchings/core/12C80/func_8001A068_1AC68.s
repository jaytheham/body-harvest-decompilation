nonmatching func_8001A068_1AC68, 0xAC

glabel func_8001A068_1AC68
    /* 1AC68 8001A068 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1AC6C 8001A06C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1AC70 8001A070 0C005EDE */  jal        func_80017B78_18778
    /* 1AC74 8001A074 00000000 */   nop
    /* 1AC78 8001A078 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* 1AC7C 8001A07C 14410021 */  bne        $v0, $at, .L8001A104_1AD04
    /* 1AC80 8001A080 3C028005 */   lui       $v0, %hi(gameplayMode)
    /* 1AC84 8001A084 8C422ADC */  lw         $v0, %lo(gameplayMode)($v0)
    /* 1AC88 8001A088 24010001 */  addiu      $at, $zero, 0x1
    /* 1AC8C 8001A08C 10410003 */  beq        $v0, $at, .L8001A09C_1AC9C
    /* 1AC90 8001A090 24010006 */   addiu     $at, $zero, 0x6
    /* 1AC94 8001A094 5441001C */  bnel       $v0, $at, .L8001A108_1AD08
    /* 1AC98 8001A098 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8001A09C_1AC9C:
    /* 1AC9C 8001A09C 0C005EDE */  jal        func_80017B78_18778
    /* 1ACA0 8001A0A0 00000000 */   nop
    /* 1ACA4 8001A0A4 24010001 */  addiu      $at, $zero, 0x1
    /* 1ACA8 8001A0A8 10410016 */  beq        $v0, $at, .L8001A104_1AD04
    /* 1ACAC 8001A0AC 3C0E8003 */   lui       $t6, %hi(D_80034478)
    /* 1ACB0 8001A0B0 8DCE4478 */  lw         $t6, %lo(D_80034478)($t6)
    /* 1ACB4 8001A0B4 3C188007 */  lui        $t8, %hi(D_8006C55E)
    /* 1ACB8 8001A0B8 11C0000C */  beqz       $t6, .L8001A0EC_1ACEC
    /* 1ACBC 8001A0BC 00000000 */   nop
    /* 1ACC0 8001A0C0 0C0067E0 */  jal        func_80019F80_1AB80
    /* 1ACC4 8001A0C4 00000000 */   nop
    /* 1ACC8 8001A0C8 240F0001 */  addiu      $t7, $zero, 0x1
    /* 1ACCC 8001A0CC 3C018003 */  lui        $at, %hi(D_80034484)
    /* 1ACD0 8001A0D0 3C048003 */  lui        $a0, %hi(D_80034480)
    /* 1ACD4 8001A0D4 AC2F4484 */  sw         $t7, %lo(D_80034484)($at)
    /* 1ACD8 8001A0D8 0C00635F */  jal        func_80018D7C_1997C
    /* 1ACDC 8001A0DC 94844480 */   lhu       $a0, %lo(D_80034480)($a0)
    /* 1ACE0 8001A0E0 3C018003 */  lui        $at, %hi(D_80034478)
    /* 1ACE4 8001A0E4 10000007 */  b          .L8001A104_1AD04
    /* 1ACE8 8001A0E8 AC204478 */   sw        $zero, %lo(D_80034478)($at)
  .L8001A0EC_1ACEC:
    /* 1ACEC 8001A0EC 9718C55E */  lhu        $t8, %lo(D_8006C55E)($t8)
    /* 1ACF0 8001A0F0 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* 1ACF4 8001A0F4 57010004 */  bnel       $t8, $at, .L8001A108_1AD08
    /* 1ACF8 8001A0F8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1ACFC 8001A0FC 0C0067C2 */  jal        func_80019F08_1AB08
    /* 1AD00 8001A100 00000000 */   nop
  .L8001A104_1AD04:
    /* 1AD04 8001A104 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8001A108_1AD08:
    /* 1AD08 8001A108 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1AD0C 8001A10C 03E00008 */  jr         $ra
    /* 1AD10 8001A110 00000000 */   nop
endlabel func_8001A068_1AC68
