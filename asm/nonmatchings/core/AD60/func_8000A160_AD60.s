nonmatching func_8000A160_AD60, 0x158

glabel func_8000A160_AD60
    /* AD60 8000A160 3C018005 */  lui        $at, %hi(D_80053C98)
    /* AD64 8000A164 AC203C98 */  sw         $zero, %lo(D_80053C98)($at)
    /* AD68 8000A168 3C01447A */  lui        $at, (0x447A0000 >> 16)
    /* AD6C 8000A16C 44806000 */  mtc1       $zero, $f12
    /* AD70 8000A170 44812000 */  mtc1       $at, $f4
    /* AD74 8000A174 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* AD78 8000A178 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* AD7C 8000A17C 44813000 */  mtc1       $at, $f6
    /* AD80 8000A180 AFBF002C */  sw         $ra, 0x2C($sp)
    /* AD84 8000A184 3C048005 */  lui        $a0, %hi(D_80052B60)
    /* AD88 8000A188 44056000 */  mfc1       $a1, $f12
    /* AD8C 8000A18C 24842B60 */  addiu      $a0, $a0, %lo(D_80052B60)
    /* AD90 8000A190 3C0643A0 */  lui        $a2, (0x43A00000 >> 16)
    /* AD94 8000A194 3C074370 */  lui        $a3, (0x43700000 >> 16)
    /* AD98 8000A198 E7AC0010 */  swc1       $f12, 0x10($sp)
    /* AD9C 8000A19C E7AC0014 */  swc1       $f12, 0x14($sp)
    /* ADA0 8000A1A0 E7A40018 */  swc1       $f4, 0x18($sp)
    /* ADA4 8000A1A4 0C0076D1 */  jal        guFrustum
    /* ADA8 8000A1A8 E7A6001C */   swc1      $f6, 0x1C($sp)
    /* ADAC 8000A1AC 3C0E8005 */  lui        $t6, %hi(D_80053C84)
    /* ADB0 8000A1B0 3C0F8005 */  lui        $t7, %hi(D_80053C86)
    /* ADB4 8000A1B4 85EF3C86 */  lh         $t7, %lo(D_80053C86)($t7)
    /* ADB8 8000A1B8 85CE3C84 */  lh         $t6, %lo(D_80053C84)($t6)
    /* ADBC 8000A1BC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* ADC0 8000A1C0 448F5000 */  mtc1       $t7, $f10
    /* ADC4 8000A1C4 448E4000 */  mtc1       $t6, $f8
    /* ADC8 8000A1C8 44817000 */  mtc1       $at, $f14
    /* ADCC 8000A1CC 468050A0 */  cvt.s.w    $f2, $f10
    /* ADD0 8000A1D0 44806000 */  mtc1       $zero, $f12
    /* ADD4 8000A1D4 3C048005 */  lui        $a0, %hi(D_80052BA0)
    /* ADD8 8000A1D8 44077000 */  mfc1       $a3, $f14
    /* ADDC 8000A1DC 24842BA0 */  addiu      $a0, $a0, %lo(D_80052BA0)
    /* ADE0 8000A1E0 46804020 */  cvt.s.w    $f0, $f8
    /* ADE4 8000A1E4 44061000 */  mfc1       $a2, $f2
    /* ADE8 8000A1E8 E7A20014 */  swc1       $f2, 0x14($sp)
    /* ADEC 8000A1EC E7AE0020 */  swc1       $f14, 0x20($sp)
    /* ADF0 8000A1F0 E7AC0018 */  swc1       $f12, 0x18($sp)
    /* ADF4 8000A1F4 E7AC001C */  swc1       $f12, 0x1C($sp)
    /* ADF8 8000A1F8 44050000 */  mfc1       $a1, $f0
    /* ADFC 8000A1FC E7A00010 */  swc1       $f0, 0x10($sp)
    /* AE00 8000A200 0C00779A */  jal        guLookAt
    /* AE04 8000A204 E7AC0024 */   swc1      $f12, 0x24($sp)
    /* AE08 8000A208 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* AE0C 8000A20C 44817000 */  mtc1       $at, $f14
    /* AE10 8000A210 3C018005 */  lui        $at, %hi(D_80053C88)
    /* AE14 8000A214 A4203C88 */  sh         $zero, %lo(D_80053C88)($at)
    /* AE18 8000A218 3C018005 */  lui        $at, %hi(D_80053BF0)
    /* AE1C 8000A21C A4203BF0 */  sh         $zero, %lo(D_80053BF0)($at)
    /* AE20 8000A220 3C018005 */  lui        $at, %hi(D_80053BF2)
    /* AE24 8000A224 241800FF */  addiu      $t8, $zero, 0xFF
    /* AE28 8000A228 A4383BF2 */  sh         $t8, %lo(D_80053BF2)($at)
    /* AE2C 8000A22C 3C018005 */  lui        $at, %hi(D_80053BF4)
    /* AE30 8000A230 A4203BF4 */  sh         $zero, %lo(D_80053BF4)($at)
    /* AE34 8000A234 3C018005 */  lui        $at, %hi(D_80053BF6)
    /* AE38 8000A238 A4203BF6 */  sh         $zero, %lo(D_80053BF6)($at)
    /* AE3C 8000A23C 3C018005 */  lui        $at, %hi(D_80053BF8)
    /* AE40 8000A240 A4203BF8 */  sh         $zero, %lo(D_80053BF8)($at)
    /* AE44 8000A244 3C018005 */  lui        $at, %hi(D_80053BFA)
    /* AE48 8000A248 A4203BFA */  sh         $zero, %lo(D_80053BFA)($at)
    /* AE4C 8000A24C 3C018005 */  lui        $at, %hi(D_80053BFC)
    /* AE50 8000A250 A4203BFC */  sh         $zero, %lo(D_80053BFC)($at)
    /* AE54 8000A254 3C018005 */  lui        $at, %hi(D_80053BFE)
    /* AE58 8000A258 A4203BFE */  sh         $zero, %lo(D_80053BFE)($at)
    /* AE5C 8000A25C 3C018005 */  lui        $at, %hi(D_80053BE2)
    /* AE60 8000A260 A4203BE2 */  sh         $zero, %lo(D_80053BE2)($at)
    /* AE64 8000A264 3C018005 */  lui        $at, %hi(D_80053BE4)
    /* AE68 8000A268 A4203BE4 */  sh         $zero, %lo(D_80053BE4)($at)
    /* AE6C 8000A26C 3C018005 */  lui        $at, %hi(D_80053BE8)
    /* AE70 8000A270 E42E3BE8 */  swc1       $f14, %lo(D_80053BE8)($at)
    /* AE74 8000A274 3C018005 */  lui        $at, %hi(D_80053BEC)
    /* AE78 8000A278 E42E3BEC */  swc1       $f14, %lo(D_80053BEC)($at)
    /* AE7C 8000A27C 3C018005 */  lui        $at, %hi(D_80053C84)
    /* AE80 8000A280 A4203C84 */  sh         $zero, %lo(D_80053C84)($at)
    /* AE84 8000A284 3C018005 */  lui        $at, %hi(D_80053C86)
    /* AE88 8000A288 A4203C86 */  sh         $zero, %lo(D_80053C86)($at)
    /* AE8C 8000A28C 3C018005 */  lui        $at, %hi(D_80053C94)
    /* AE90 8000A290 2419001E */  addiu      $t9, $zero, 0x1E
    /* AE94 8000A294 A4393C94 */  sh         $t9, %lo(D_80053C94)($at)
    /* AE98 8000A298 3C018005 */  lui        $at, %hi(D_80053C96)
    /* AE9C 8000A29C 24080122 */  addiu      $t0, $zero, 0x122
    /* AEA0 8000A2A0 0C002BF7 */  jal        func_8000AFDC_BBDC
    /* AEA4 8000A2A4 A4283C96 */   sh        $t0, %lo(D_80053C96)($at)
    /* AEA8 8000A2A8 8FBF002C */  lw         $ra, 0x2C($sp)
    /* AEAC 8000A2AC 27BD0030 */  addiu      $sp, $sp, 0x30
    /* AEB0 8000A2B0 03E00008 */  jr         $ra
    /* AEB4 8000A2B4 00000000 */   nop
endlabel func_8000A160_AD60
