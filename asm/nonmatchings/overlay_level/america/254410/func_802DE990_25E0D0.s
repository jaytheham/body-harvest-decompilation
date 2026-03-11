nonmatching func_802DE990_25E0D0, 0x27C

glabel func_802DE990_25E0D0
    /* 25E0D0 802DE990 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 25E0D4 802DE994 AFA40068 */  sw         $a0, 0x68($sp)
    /* 25E0D8 802DE998 93AC006B */  lbu        $t4, 0x6B($sp)
    /* 25E0DC 802DE99C AFA5006C */  sw         $a1, 0x6C($sp)
    /* 25E0E0 802DE9A0 00057400 */  sll        $t6, $a1, 16
    /* 25E0E4 802DE9A4 000E2C03 */  sra        $a1, $t6, 16
    /* 25E0E8 802DE9A8 000C6880 */  sll        $t5, $t4, 2
    /* 25E0EC 802DE9AC 3C0E8005 */  lui        $t6, %hi(alienInstances)
    /* 25E0F0 802DE9B0 01AC6821 */  addu       $t5, $t5, $t4
    /* 25E0F4 802DE9B4 AFB00028 */  sw         $s0, 0x28($sp)
    /* 25E0F8 802DE9B8 000D6900 */  sll        $t5, $t5, 4
    /* 25E0FC 802DE9BC 25CE8198 */  addiu      $t6, $t6, %lo(alienInstances)
    /* 25E100 802DE9C0 01AE8021 */  addu       $s0, $t5, $t6
    /* 25E104 802DE9C4 8609000C */  lh         $t1, 0xC($s0)
    /* 25E108 802DE9C8 AFA60070 */  sw         $a2, 0x70($sp)
    /* 25E10C 802DE9CC 0006C400 */  sll        $t8, $a2, 16
    /* 25E110 802DE9D0 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 25E114 802DE9D4 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 25E118 802DE9D8 00183403 */  sra        $a2, $t8, 16
    /* 25E11C 802DE9DC 00097900 */  sll        $t7, $t1, 4
    /* 25E120 802DE9E0 010FC021 */  addu       $t8, $t0, $t7
    /* 25E124 802DE9E4 8303000C */  lb         $v1, 0xC($t8)
    /* 25E128 802DE9E8 AFA70074 */  sw         $a3, 0x74($sp)
    /* 25E12C 802DE9EC 00075400 */  sll        $t2, $a3, 16
    /* 25E130 802DE9F0 000A3C03 */  sra        $a3, $t2, 16
    /* 25E134 802DE9F4 0003C900 */  sll        $t9, $v1, 4
    /* 25E138 802DE9F8 01195021 */  addu       $t2, $t0, $t9
    /* 25E13C 802DE9FC 8142000C */  lb         $v0, 0xC($t2)
    /* 25E140 802DEA00 8E0E0020 */  lw         $t6, 0x20($s0)
    /* 25E144 802DEA04 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 25E148 802DEA08 00025900 */  sll        $t3, $v0, 4
    /* 25E14C 802DEA0C 010B6021 */  addu       $t4, $t0, $t3
    /* 25E150 802DEA10 818D000D */  lb         $t5, 0xD($t4)
    /* 25E154 802DEA14 000E7AC0 */  sll        $t7, $t6, 11
    /* 25E158 802DEA18 05E0006D */  bltz       $t7, .L802DEBD0_25E310
    /* 25E15C 802DEA1C A7AD0054 */   sh        $t5, 0x54($sp)
    /* 25E160 802DEA20 27B80064 */  addiu      $t8, $sp, 0x64
    /* 25E164 802DEA24 27B90060 */  addiu      $t9, $sp, 0x60
    /* 25E168 802DEA28 27AA005C */  addiu      $t2, $sp, 0x5C
    /* 25E16C 802DEA2C AFAA0018 */  sw         $t2, 0x18($sp)
    /* 25E170 802DEA30 AFB90014 */  sw         $t9, 0x14($sp)
    /* 25E174 802DEA34 AFB80010 */  sw         $t8, 0x10($sp)
    /* 25E178 802DEA38 02002025 */  or         $a0, $s0, $zero
    /* 25E17C 802DEA3C A7A30058 */  sh         $v1, 0x58($sp)
    /* 25E180 802DEA40 0C04A10A */  jal        func_80128428_1373D8
    /* 25E184 802DEA44 A7A9005A */   sh        $t1, 0x5A($sp)
    /* 25E188 802DEA48 87A40066 */  lh         $a0, 0x66($sp)
    /* 25E18C 802DEA4C 87A50062 */  lh         $a1, 0x62($sp)
    /* 25E190 802DEA50 87A6005E */  lh         $a2, 0x5E($sp)
    /* 25E194 802DEA54 24070096 */  addiu      $a3, $zero, 0x96
    /* 25E198 802DEA58 0C037E12 */  jal        func_800DF848_EE7F8
    /* 25E19C 802DEA5C AFA00010 */   sw        $zero, 0x10($sp)
    /* 25E1A0 802DEA60 8E0D0020 */  lw         $t5, 0x20($s0)
    /* 25E1A4 802DEA64 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 25E1A8 802DEA68 240B0028 */  addiu      $t3, $zero, 0x28
    /* 25E1AC 802DEA6C 35AE1000 */  ori        $t6, $t5, 0x1000
    /* 25E1B0 802DEA70 240C0003 */  addiu      $t4, $zero, 0x3
    /* 25E1B4 802DEA74 31D84000 */  andi       $t8, $t6, 0x4000
    /* 25E1B8 802DEA78 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 25E1BC 802DEA7C 87A30058 */  lh         $v1, 0x58($sp)
    /* 25E1C0 802DEA80 A60B002C */  sh         $t3, 0x2C($s0)
    /* 25E1C4 802DEA84 A2000036 */  sb         $zero, 0x36($s0)
    /* 25E1C8 802DEA88 A20C0026 */  sb         $t4, 0x26($s0)
    /* 25E1CC 802DEA8C 1300004D */  beqz       $t8, .L802DEBC4_25E304
    /* 25E1D0 802DEA90 AE0E0020 */   sw        $t6, 0x20($s0)
    /* 25E1D4 802DEA94 0180C825 */  or         $t9, $t4, $zero
    /* 25E1D8 802DEA98 87AC0054 */  lh         $t4, 0x54($sp)
    /* 25E1DC 802DEA9C 00032600 */  sll        $a0, $v1, 24
    /* 25E1E0 802DEAA0 272AFFFF */  addiu      $t2, $t9, -0x1
    /* 25E1E4 802DEAA4 00045E03 */  sra        $t3, $a0, 24
    /* 25E1E8 802DEAA8 000C6900 */  sll        $t5, $t4, 4
    /* 25E1EC 802DEAAC A20A0026 */  sb         $t2, 0x26($s0)
    /* 25E1F0 802DEAB0 010D2821 */  addu       $a1, $t0, $t5
    /* 25E1F4 802DEAB4 01602025 */  or         $a0, $t3, $zero
    /* 25E1F8 802DEAB8 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25E1FC 802DEABC 27A60038 */   addiu     $a2, $sp, 0x38
    /* 25E200 802DEAC0 8FAE0038 */  lw         $t6, 0x38($sp)
    /* 25E204 802DEAC4 8FAF003C */  lw         $t7, 0x3C($sp)
    /* 25E208 802DEAC8 8FB80040 */  lw         $t8, 0x40($sp)
    /* 25E20C 802DEACC 83A4005B */  lb         $a0, 0x5B($sp)
    /* 25E210 802DEAD0 27A50044 */  addiu      $a1, $sp, 0x44
    /* 25E214 802DEAD4 27A60038 */  addiu      $a2, $sp, 0x38
    /* 25E218 802DEAD8 A7AE0044 */  sh         $t6, 0x44($sp)
    /* 25E21C 802DEADC A7AF0046 */  sh         $t7, 0x46($sp)
    /* 25E220 802DEAE0 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 25E224 802DEAE4 A7B80048 */   sh        $t8, 0x48($sp)
    /* 25E228 802DEAE8 8FA20038 */  lw         $v0, 0x38($sp)
    /* 25E22C 802DEAEC 3C01802E */  lui        $at, %hi(D_802DF3A8)
    /* 25E230 802DEAF0 C420F3A8 */  lwc1       $f0, %lo(D_802DF3A8)($at)
    /* 25E234 802DEAF4 44822000 */  mtc1       $v0, $f4
    /* 25E238 802DEAF8 8FA3003C */  lw         $v1, 0x3C($sp)
    /* 25E23C 802DEAFC 8FA80040 */  lw         $t0, 0x40($sp)
    /* 25E240 802DEB00 468021A0 */  cvt.s.w    $f6, $f4
    /* 25E244 802DEB04 44838000 */  mtc1       $v1, $f16
    /* 25E248 802DEB08 27AF0064 */  addiu      $t7, $sp, 0x64
    /* 25E24C 802DEB0C 27B80060 */  addiu      $t8, $sp, 0x60
    /* 25E250 802DEB10 27B9005C */  addiu      $t9, $sp, 0x5C
    /* 25E254 802DEB14 468084A0 */  cvt.s.w    $f18, $f16
    /* 25E258 802DEB18 46003202 */  mul.s      $f8, $f6, $f0
    /* 25E25C 802DEB1C AFB90018 */  sw         $t9, 0x18($sp)
    /* 25E260 802DEB20 AFB80014 */  sw         $t8, 0x14($sp)
    /* 25E264 802DEB24 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 25E268 802DEB28 02002025 */  or         $a0, $s0, $zero
    /* 25E26C 802DEB2C 46009102 */  mul.s      $f4, $f18, $f0
    /* 25E270 802DEB30 4600428D */  trunc.w.s  $f10, $f8
    /* 25E274 802DEB34 44884000 */  mtc1       $t0, $f8
    /* 25E278 802DEB38 4600218D */  trunc.w.s  $f6, $f4
    /* 25E27C 802DEB3C 44025000 */  mfc1       $v0, $f10
    /* 25E280 802DEB40 468042A0 */  cvt.s.w    $f10, $f8
    /* 25E284 802DEB44 44033000 */  mfc1       $v1, $f6
    /* 25E288 802DEB48 00022C00 */  sll        $a1, $v0, 16
    /* 25E28C 802DEB4C 00056403 */  sra        $t4, $a1, 16
    /* 25E290 802DEB50 00033400 */  sll        $a2, $v1, 16
    /* 25E294 802DEB54 00066C03 */  sra        $t5, $a2, 16
    /* 25E298 802DEB58 46005402 */  mul.s      $f16, $f10, $f0
    /* 25E29C 802DEB5C 01A03025 */  or         $a2, $t5, $zero
    /* 25E2A0 802DEB60 01802825 */  or         $a1, $t4, $zero
    /* 25E2A4 802DEB64 AFA20038 */  sw         $v0, 0x38($sp)
    /* 25E2A8 802DEB68 AFA3003C */  sw         $v1, 0x3C($sp)
    /* 25E2AC 802DEB6C 4600848D */  trunc.w.s  $f18, $f16
    /* 25E2B0 802DEB70 44089000 */  mfc1       $t0, $f18
    /* 25E2B4 802DEB74 00000000 */  nop
    /* 25E2B8 802DEB78 00083C00 */  sll        $a3, $t0, 16
    /* 25E2BC 802DEB7C 00077403 */  sra        $t6, $a3, 16
    /* 25E2C0 802DEB80 01C03825 */  or         $a3, $t6, $zero
    /* 25E2C4 802DEB84 0C04A10A */  jal        func_80128428_1373D8
    /* 25E2C8 802DEB88 AFA80040 */   sw        $t0, 0x40($sp)
    /* 25E2CC 802DEB8C 240A0002 */  addiu      $t2, $zero, 0x2
    /* 25E2D0 802DEB90 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 25E2D4 802DEB94 87A40066 */  lh         $a0, 0x66($sp)
    /* 25E2D8 802DEB98 87A50062 */  lh         $a1, 0x62($sp)
    /* 25E2DC 802DEB9C 87A6005E */  lh         $a2, 0x5E($sp)
    /* 25E2E0 802DEBA0 0C037E12 */  jal        func_800DF848_EE7F8
    /* 25E2E4 802DEBA4 240701F4 */   addiu     $a3, $zero, 0x1F4
    /* 25E2E8 802DEBA8 240B0006 */  addiu      $t3, $zero, 0x6
    /* 25E2EC 802DEBAC AFAB0010 */  sw         $t3, 0x10($sp)
    /* 25E2F0 802DEBB0 86040000 */  lh         $a0, 0x0($s0)
    /* 25E2F4 802DEBB4 86050002 */  lh         $a1, 0x2($s0)
    /* 25E2F8 802DEBB8 86060004 */  lh         $a2, 0x4($s0)
    /* 25E2FC 802DEBBC 0C037E12 */  jal        func_800DF848_EE7F8
    /* 25E300 802DEBC0 240701F4 */   addiu     $a3, $zero, 0x1F4
  .L802DEBC4_25E304:
    /* 25E304 802DEBC4 93A4006B */  lbu        $a0, 0x6B($sp)
    /* 25E308 802DEBC8 0C04DD1A */  jal        func_80137468_146418
    /* 25E30C 802DEBCC 24050011 */   addiu     $a1, $zero, 0x11
  .L802DEBD0_25E310:
    /* 25E310 802DEBD0 860C002C */  lh         $t4, 0x2C($s0)
    /* 25E314 802DEBD4 24010001 */  addiu      $at, $zero, 0x1
    /* 25E318 802DEBD8 240701F4 */  addiu      $a3, $zero, 0x1F4
    /* 25E31C 802DEBDC 15810006 */  bne        $t4, $at, .L802DEBF8_25E338
    /* 25E320 802DEBE0 240D0006 */   addiu     $t5, $zero, 0x6
    /* 25E324 802DEBE4 86040000 */  lh         $a0, 0x0($s0)
    /* 25E328 802DEBE8 86050002 */  lh         $a1, 0x2($s0)
    /* 25E32C 802DEBEC 86060004 */  lh         $a2, 0x4($s0)
    /* 25E330 802DEBF0 0C037E12 */  jal        func_800DF848_EE7F8
    /* 25E334 802DEBF4 AFAD0010 */   sw        $t5, 0x10($sp)
  .L802DEBF8_25E338:
    /* 25E338 802DEBF8 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 25E33C 802DEBFC 8FB00028 */  lw         $s0, 0x28($sp)
    /* 25E340 802DEC00 27BD0068 */  addiu      $sp, $sp, 0x68
    /* 25E344 802DEC04 03E00008 */  jr         $ra
    /* 25E348 802DEC08 00000000 */   nop
endlabel func_802DE990_25E0D0
