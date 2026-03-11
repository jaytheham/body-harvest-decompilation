nonmatching func_8001A160_1AD60, 0x21C

glabel func_8001A160_1AD60
    /* 1AD60 8001A160 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1AD64 8001A164 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1AD68 8001A168 3C048004 */  lui        $a0, %hi(D_80038530)
    /* 1AD6C 8001A16C 0C002929 */  jal        drawText
    /* 1AD70 8001A170 24848530 */   addiu     $a0, $a0, %lo(D_80038530)
    /* 1AD74 8001A174 3C028004 */  lui        $v0, %hi(D_8004758A)
    /* 1AD78 8001A178 8042758A */  lb         $v0, %lo(D_8004758A)($v0)
    /* 1AD7C 8001A17C 3C018003 */  lui        $at, %hi(D_80034498)
    /* 1AD80 8001A180 AC204498 */  sw         $zero, %lo(D_80034498)($at)
    /* 1AD84 8001A184 2841001F */  slti       $at, $v0, 0x1F
    /* 1AD88 8001A188 14200003 */  bnez       $at, .L8001A198_1AD98
    /* 1AD8C 8001A18C 3C048004 */   lui       $a0, %hi(D_80038534)
    /* 1AD90 8001A190 3C018003 */  lui        $at, %hi(D_80034490)
    /* 1AD94 8001A194 AC204490 */  sw         $zero, %lo(D_80034490)($at)
  .L8001A198_1AD98:
    /* 1AD98 8001A198 2841FFE2 */  slti       $at, $v0, -0x1E
    /* 1AD9C 8001A19C 10200004 */  beqz       $at, .L8001A1B0_1ADB0
    /* 1ADA0 8001A1A0 24848534 */   addiu     $a0, $a0, %lo(D_80038534)
    /* 1ADA4 8001A1A4 240E0001 */  addiu      $t6, $zero, 0x1
    /* 1ADA8 8001A1A8 3C018003 */  lui        $at, %hi(D_80034490)
    /* 1ADAC 8001A1AC AC2E4490 */  sw         $t6, %lo(D_80034490)($at)
  .L8001A1B0_1ADB0:
    /* 1ADB0 8001A1B0 00002825 */  or         $a1, $zero, $zero
    /* 1ADB4 8001A1B4 0C002929 */  jal        drawText
    /* 1ADB8 8001A1B8 00003025 */   or        $a2, $zero, $zero
    /* 1ADBC 8001A1BC 3C048004 */  lui        $a0, %hi(D_8003853C)
    /* 1ADC0 8001A1C0 2484853C */  addiu      $a0, $a0, %lo(D_8003853C)
    /* 1ADC4 8001A1C4 00002825 */  or         $a1, $zero, $zero
    /* 1ADC8 8001A1C8 0C002929 */  jal        drawText
    /* 1ADCC 8001A1CC 24060008 */   addiu     $a2, $zero, 0x8
    /* 1ADD0 8001A1D0 3C0F8003 */  lui        $t7, %hi(D_80034490)
    /* 1ADD4 8001A1D4 8DEF4490 */  lw         $t7, %lo(D_80034490)($t7)
    /* 1ADD8 8001A1D8 3C028003 */  lui        $v0, %hi(D_800313D0)
    /* 1ADDC 8001A1DC 11E00031 */  beqz       $t7, .L8001A2A4_1AEA4
    /* 1ADE0 8001A1E0 00000000 */   nop
    /* 1ADE4 8001A1E4 3C028003 */  lui        $v0, %hi(D_800313D0)
    /* 1ADE8 8001A1E8 844213D0 */  lh         $v0, %lo(D_800313D0)($v0)
    /* 1ADEC 8001A1EC 24010001 */  addiu      $at, $zero, 0x1
    /* 1ADF0 8001A1F0 10400005 */  beqz       $v0, .L8001A208_1AE08
    /* 1ADF4 8001A1F4 00000000 */   nop
    /* 1ADF8 8001A1F8 1041001D */  beq        $v0, $at, .L8001A270_1AE70
    /* 1ADFC 8001A1FC 24010002 */   addiu     $at, $zero, 0x2
    /* 1AE00 8001A200 1041000E */  beq        $v0, $at, .L8001A23C_1AE3C
    /* 1AE04 8001A204 00000000 */   nop
  .L8001A208_1AE08:
    /* 1AE08 8001A208 0C0015DF */  jal        func_8000577C_637C
    /* 1AE0C 8001A20C 00000000 */   nop
    /* 1AE10 8001A210 3C048004 */  lui        $a0, %hi(D_80038540)
    /* 1AE14 8001A214 0C002929 */  jal        drawText
    /* 1AE18 8001A218 24848540 */   addiu     $a0, $a0, %lo(D_80038540)
    /* 1AE1C 8001A21C 3C048004 */  lui        $a0, %hi(D_80038554)
    /* 1AE20 8001A220 24848554 */  addiu      $a0, $a0, %lo(D_80038554)
    /* 1AE24 8001A224 24050032 */  addiu      $a1, $zero, 0x32
    /* 1AE28 8001A228 2406005A */  addiu      $a2, $zero, 0x5A
    /* 1AE2C 8001A22C 0C002929 */  jal        drawText
    /* 1AE30 8001A230 24070032 */   addiu     $a3, $zero, 0x32
    /* 1AE34 8001A234 10000047 */  b          .L8001A354_1AF54
    /* 1AE38 8001A238 00002025 */   or        $a0, $zero, $zero
  .L8001A23C_1AE3C:
    /* 1AE3C 8001A23C 0C0015DF */  jal        func_8000577C_637C
    /* 1AE40 8001A240 00000000 */   nop
    /* 1AE44 8001A244 3C048004 */  lui        $a0, %hi(D_8003855C)
    /* 1AE48 8001A248 0C002929 */  jal        drawText
    /* 1AE4C 8001A24C 2484855C */   addiu     $a0, $a0, %lo(D_8003855C)
    /* 1AE50 8001A250 3C048004 */  lui        $a0, %hi(D_8003856C)
    /* 1AE54 8001A254 2484856C */  addiu      $a0, $a0, %lo(D_8003856C)
    /* 1AE58 8001A258 24050032 */  addiu      $a1, $zero, 0x32
    /* 1AE5C 8001A25C 2406005A */  addiu      $a2, $zero, 0x5A
    /* 1AE60 8001A260 0C002929 */  jal        drawText
    /* 1AE64 8001A264 24070032 */   addiu     $a3, $zero, 0x32
    /* 1AE68 8001A268 1000003A */  b          .L8001A354_1AF54
    /* 1AE6C 8001A26C 00002025 */   or        $a0, $zero, $zero
  .L8001A270_1AE70:
    /* 1AE70 8001A270 0C0015DF */  jal        func_8000577C_637C
    /* 1AE74 8001A274 00000000 */   nop
    /* 1AE78 8001A278 3C048004 */  lui        $a0, %hi(D_80038574)
    /* 1AE7C 8001A27C 0C002929 */  jal        drawText
    /* 1AE80 8001A280 24848574 */   addiu     $a0, $a0, %lo(D_80038574)
    /* 1AE84 8001A284 3C048004 */  lui        $a0, %hi(D_80038588)
    /* 1AE88 8001A288 24848588 */  addiu      $a0, $a0, %lo(D_80038588)
    /* 1AE8C 8001A28C 24050032 */  addiu      $a1, $zero, 0x32
    /* 1AE90 8001A290 2406005A */  addiu      $a2, $zero, 0x5A
    /* 1AE94 8001A294 0C002929 */  jal        drawText
    /* 1AE98 8001A298 24070032 */   addiu     $a3, $zero, 0x32
    /* 1AE9C 8001A29C 1000002D */  b          .L8001A354_1AF54
    /* 1AEA0 8001A2A0 00002025 */   or        $a0, $zero, $zero
  .L8001A2A4_1AEA4:
    /* 1AEA4 8001A2A4 844213D0 */  lh         $v0, %lo(D_800313D0)($v0)
    /* 1AEA8 8001A2A8 3C048004 */  lui        $a0, %hi(D_80038590)
    /* 1AEAC 8001A2AC 24010001 */  addiu      $at, $zero, 0x1
    /* 1AEB0 8001A2B0 10400006 */  beqz       $v0, .L8001A2CC_1AECC
    /* 1AEB4 8001A2B4 24848590 */   addiu     $a0, $a0, %lo(D_80038590)
    /* 1AEB8 8001A2B8 1041001B */  beq        $v0, $at, .L8001A328_1AF28
    /* 1AEBC 8001A2BC 24050032 */   addiu     $a1, $zero, 0x32
    /* 1AEC0 8001A2C0 24010002 */  addiu      $at, $zero, 0x2
    /* 1AEC4 8001A2C4 1041000C */  beq        $v0, $at, .L8001A2F8_1AEF8
    /* 1AEC8 8001A2C8 24050032 */   addiu     $a1, $zero, 0x32
  .L8001A2CC_1AECC:
    /* 1AECC 8001A2CC 24050032 */  addiu      $a1, $zero, 0x32
    /* 1AED0 8001A2D0 2406005A */  addiu      $a2, $zero, 0x5A
    /* 1AED4 8001A2D4 0C002929 */  jal        drawText
    /* 1AED8 8001A2D8 24070032 */   addiu     $a3, $zero, 0x32
    /* 1AEDC 8001A2DC 0C0015DF */  jal        func_8000577C_637C
    /* 1AEE0 8001A2E0 00000000 */   nop
    /* 1AEE4 8001A2E4 3C048004 */  lui        $a0, %hi(D_800385A4)
    /* 1AEE8 8001A2E8 0C002929 */  jal        drawText
    /* 1AEEC 8001A2EC 248485A4 */   addiu     $a0, $a0, %lo(D_800385A4)
    /* 1AEF0 8001A2F0 10000018 */  b          .L8001A354_1AF54
    /* 1AEF4 8001A2F4 00002025 */   or        $a0, $zero, $zero
  .L8001A2F8_1AEF8:
    /* 1AEF8 8001A2F8 3C048004 */  lui        $a0, %hi(D_800385A8)
    /* 1AEFC 8001A2FC 248485A8 */  addiu      $a0, $a0, %lo(D_800385A8)
    /* 1AF00 8001A300 2406005A */  addiu      $a2, $zero, 0x5A
    /* 1AF04 8001A304 0C002929 */  jal        drawText
    /* 1AF08 8001A308 24070032 */   addiu     $a3, $zero, 0x32
    /* 1AF0C 8001A30C 0C0015DF */  jal        func_8000577C_637C
    /* 1AF10 8001A310 00000000 */   nop
    /* 1AF14 8001A314 3C048004 */  lui        $a0, %hi(D_800385BC)
    /* 1AF18 8001A318 0C002929 */  jal        drawText
    /* 1AF1C 8001A31C 248485BC */   addiu     $a0, $a0, %lo(D_800385BC)
    /* 1AF20 8001A320 1000000C */  b          .L8001A354_1AF54
    /* 1AF24 8001A324 00002025 */   or        $a0, $zero, $zero
  .L8001A328_1AF28:
    /* 1AF28 8001A328 3C048004 */  lui        $a0, %hi(D_800385C4)
    /* 1AF2C 8001A32C 248485C4 */  addiu      $a0, $a0, %lo(D_800385C4)
    /* 1AF30 8001A330 2406005A */  addiu      $a2, $zero, 0x5A
    /* 1AF34 8001A334 0C002929 */  jal        drawText
    /* 1AF38 8001A338 24070032 */   addiu     $a3, $zero, 0x32
    /* 1AF3C 8001A33C 0C0015DF */  jal        func_8000577C_637C
    /* 1AF40 8001A340 00000000 */   nop
    /* 1AF44 8001A344 3C048004 */  lui        $a0, %hi(D_800385D8)
    /* 1AF48 8001A348 0C002929 */  jal        drawText
    /* 1AF4C 8001A34C 248485D8 */   addiu     $a0, $a0, %lo(D_800385D8)
    /* 1AF50 8001A350 00002025 */  or         $a0, $zero, $zero
  .L8001A354_1AF54:
    /* 1AF54 8001A354 0C000D61 */  jal        isButtonNewlyPressed
    /* 1AF58 8001A358 34058000 */   ori       $a1, $zero, 0x8000
    /* 1AF5C 8001A35C 10400003 */  beqz       $v0, .L8001A36C_1AF6C
    /* 1AF60 8001A360 24180001 */   addiu     $t8, $zero, 0x1
    /* 1AF64 8001A364 3C018003 */  lui        $at, %hi(D_80034498)
    /* 1AF68 8001A368 AC384498 */  sw         $t8, %lo(D_80034498)($at)
  .L8001A36C_1AF6C:
    /* 1AF6C 8001A36C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1AF70 8001A370 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1AF74 8001A374 03E00008 */  jr         $ra
    /* 1AF78 8001A378 00000000 */   nop
endlabel func_8001A160_1AD60
