nonmatching func_8000E048_EC48, 0x394

glabel func_8000E048_EC48
    /* EC48 8000E048 AFA40000 */  sw         $a0, 0x0($sp)
    /* EC4C 8000E04C 00047400 */  sll        $t6, $a0, 16
    /* EC50 8000E050 000E2403 */  sra        $a0, $t6, 16
    /* EC54 8000E054 00077400 */  sll        $t6, $a3, 16
    /* EC58 8000E058 0005C400 */  sll        $t8, $a1, 16
    /* EC5C 8000E05C 00066400 */  sll        $t4, $a2, 16
    /* EC60 8000E060 000C6C03 */  sra        $t5, $t4, 16
    /* EC64 8000E064 0018CC03 */  sra        $t9, $t8, 16
    /* EC68 8000E068 000E7C03 */  sra        $t7, $t6, 16
    /* EC6C 8000E06C AFA50004 */  sw         $a1, 0x4($sp)
    /* EC70 8000E070 AFA60008 */  sw         $a2, 0x8($sp)
    /* EC74 8000E074 AFA7000C */  sw         $a3, 0xC($sp)
    /* EC78 8000E078 28810005 */  slti       $at, $a0, 0x5
    /* EC7C 8000E07C 01E03825 */  or         $a3, $t7, $zero
    /* EC80 8000E080 01A03025 */  or         $a2, $t5, $zero
    /* EC84 8000E084 1420006A */  bnez       $at, .L8000E230_EE30
    /* EC88 8000E088 03202825 */   or        $a1, $t9, $zero
    /* EC8C 8000E08C 2B210004 */  slti       $at, $t9, 0x4
    /* EC90 8000E090 1420002D */  bnez       $at, .L8000E148_ED48
    /* EC94 8000E094 00861021 */   addu      $v0, $a0, $a2
    /* EC98 8000E098 008D1021 */  addu       $v0, $a0, $t5
    /* EC9C 8000E09C 2442FFFC */  addiu      $v0, $v0, -0x4
    /* ECA0 8000E0A0 00420019 */  multu      $v0, $v0
    /* ECA4 8000E0A4 032F1821 */  addu       $v1, $t9, $t7
    /* ECA8 8000E0A8 2463FFFF */  addiu      $v1, $v1, -0x1
    /* ECAC 8000E0AC 3C098006 */  lui        $t1, %hi(D_80059CD0)
    /* ECB0 8000E0B0 85299CD0 */  lh         $t1, %lo(D_80059CD0)($t1)
    /* ECB4 8000E0B4 240D0019 */  addiu      $t5, $zero, 0x19
    /* ECB8 8000E0B8 3C018003 */  lui        $at, %hi(D_80037628)
    /* ECBC 8000E0BC 00096040 */  sll        $t4, $t1, 1
    /* ECC0 8000E0C0 D42C7628 */  ldc1       $f12, %lo(D_80037628)($at)
    /* ECC4 8000E0C4 3C0B8006 */  lui        $t3, %hi(D_80059CD4)
    /* ECC8 8000E0C8 0000C012 */  mflo       $t8
    /* ECCC 8000E0CC 256B9CD4 */  addiu      $t3, $t3, %lo(D_80059CD4)
    /* ECD0 8000E0D0 3C014440 */  lui        $at, (0x44400000 >> 16)
    /* ECD4 8000E0D4 00630019 */  multu      $v1, $v1
    /* ECD8 8000E0D8 0000C812 */  mflo       $t9
    /* ECDC 8000E0DC 03195021 */  addu       $t2, $t8, $t9
    /* ECE0 8000E0E0 01AA7023 */  subu       $t6, $t5, $t2
    /* ECE4 8000E0E4 018E0019 */  multu      $t4, $t6
    /* ECE8 8000E0E8 85790000 */  lh         $t9, 0x0($t3)
    /* ECEC 8000E0EC 272D0300 */  addiu      $t5, $t9, 0x300
    /* ECF0 8000E0F0 448D9000 */  mtc1       $t5, $f18
    /* ECF4 8000E0F4 00007812 */  mflo       $t7
    /* ECF8 8000E0F8 00000000 */  nop
    /* ECFC 8000E0FC 00000000 */  nop
    /* ED00 8000E100 012A0019 */  multu      $t1, $t2
    /* ED04 8000E104 0000C012 */  mflo       $t8
    /* ED08 8000E108 01F84021 */  addu       $t0, $t7, $t8
    /* ED0C 8000E10C 44882000 */  mtc1       $t0, $f4
    /* ED10 8000E110 00000000 */  nop
    /* ED14 8000E114 468021A0 */  cvt.s.w    $f6, $f4
    /* ED18 8000E118 46809120 */  cvt.s.w    $f4, $f18
    /* ED1C 8000E11C 46003221 */  cvt.d.s    $f8, $f6
    /* ED20 8000E120 46286281 */  sub.d      $f10, $f12, $f8
    /* ED24 8000E124 44814000 */  mtc1       $at, $f8
    /* ED28 8000E128 462C5403 */  div.d      $f16, $f10, $f12
    /* ED2C 8000E12C 46208020 */  cvt.s.d    $f0, $f16
    /* ED30 8000E130 46002182 */  mul.s      $f6, $f4, $f0
    /* ED34 8000E134 46083281 */  sub.s      $f10, $f6, $f8
    /* ED38 8000E138 4600540D */  trunc.w.s  $f16, $f10
    /* ED3C 8000E13C 440E8000 */  mfc1       $t6, $f16
    /* ED40 8000E140 1000002C */  b          .L8000E1F4_EDF4
    /* ED44 8000E144 A56E0000 */   sh        $t6, 0x0($t3)
  .L8000E148_ED48:
    /* ED48 8000E148 2442FFFC */  addiu      $v0, $v0, -0x4
    /* ED4C 8000E14C 00420019 */  multu      $v0, $v0
    /* ED50 8000E150 00A71821 */  addu       $v1, $a1, $a3
    /* ED54 8000E154 2463FFF9 */  addiu      $v1, $v1, -0x7
    /* ED58 8000E158 3C098006 */  lui        $t1, %hi(D_80059CD0)
    /* ED5C 8000E15C 85299CD0 */  lh         $t1, %lo(D_80059CD0)($t1)
    /* ED60 8000E160 240D0019 */  addiu      $t5, $zero, 0x19
    /* ED64 8000E164 3C018003 */  lui        $at, %hi(D_80037630)
    /* ED68 8000E168 0009C840 */  sll        $t9, $t1, 1
    /* ED6C 8000E16C D42C7630 */  ldc1       $f12, %lo(D_80037630)($at)
    /* ED70 8000E170 3C0B8006 */  lui        $t3, %hi(D_80059CD4)
    /* ED74 8000E174 00007812 */  mflo       $t7
    /* ED78 8000E178 256B9CD4 */  addiu      $t3, $t3, %lo(D_80059CD4)
    /* ED7C 8000E17C 3C014440 */  lui        $at, (0x44400000 >> 16)
    /* ED80 8000E180 00630019 */  multu      $v1, $v1
    /* ED84 8000E184 0000C012 */  mflo       $t8
    /* ED88 8000E188 01F85021 */  addu       $t2, $t7, $t8
    /* ED8C 8000E18C 01AA6023 */  subu       $t4, $t5, $t2
    /* ED90 8000E190 032C0019 */  multu      $t9, $t4
    /* ED94 8000E194 85780000 */  lh         $t8, 0x0($t3)
    /* ED98 8000E198 270DFD00 */  addiu      $t5, $t8, -0x300
    /* ED9C 8000E19C 448D8000 */  mtc1       $t5, $f16
    /* EDA0 8000E1A0 00007012 */  mflo       $t6
    /* EDA4 8000E1A4 00000000 */  nop
    /* EDA8 8000E1A8 00000000 */  nop
    /* EDAC 8000E1AC 012A0019 */  multu      $t1, $t2
    /* EDB0 8000E1B0 00007812 */  mflo       $t7
    /* EDB4 8000E1B4 01CF4021 */  addu       $t0, $t6, $t7
    /* EDB8 8000E1B8 44889000 */  mtc1       $t0, $f18
    /* EDBC 8000E1BC 00000000 */  nop
    /* EDC0 8000E1C0 46809120 */  cvt.s.w    $f4, $f18
    /* EDC4 8000E1C4 468084A0 */  cvt.s.w    $f18, $f16
    /* EDC8 8000E1C8 460021A1 */  cvt.d.s    $f6, $f4
    /* EDCC 8000E1CC 46266201 */  sub.d      $f8, $f12, $f6
    /* EDD0 8000E1D0 44813000 */  mtc1       $at, $f6
    /* EDD4 8000E1D4 462C4283 */  div.d      $f10, $f8, $f12
    /* EDD8 8000E1D8 46205020 */  cvt.s.d    $f0, $f10
    /* EDDC 8000E1DC 46009102 */  mul.s      $f4, $f18, $f0
    /* EDE0 8000E1E0 46062200 */  add.s      $f8, $f4, $f6
    /* EDE4 8000E1E4 4600428D */  trunc.w.s  $f10, $f8
    /* EDE8 8000E1E8 440C5000 */  mfc1       $t4, $f10
    /* EDEC 8000E1EC 00000000 */  nop
    /* EDF0 8000E1F0 A56C0000 */  sh         $t4, 0x0($t3)
  .L8000E1F4_EDF4:
    /* EDF4 8000E1F4 3C028006 */  lui        $v0, %hi(D_80059CD2)
    /* EDF8 8000E1F8 24429CD2 */  addiu      $v0, $v0, %lo(D_80059CD2)
    /* EDFC 8000E1FC 844E0000 */  lh         $t6, 0x0($v0)
    /* EE00 8000E200 3C014490 */  lui        $at, (0x44900000 >> 16)
    /* EE04 8000E204 44813000 */  mtc1       $at, $f6
    /* EE08 8000E208 25CFFB80 */  addiu      $t7, $t6, -0x480
    /* EE0C 8000E20C 448F8000 */  mtc1       $t7, $f16
    /* EE10 8000E210 00000000 */  nop
    /* EE14 8000E214 468084A0 */  cvt.s.w    $f18, $f16
    /* EE18 8000E218 46009102 */  mul.s      $f4, $f18, $f0
    /* EE1C 8000E21C 46062200 */  add.s      $f8, $f4, $f6
    /* EE20 8000E220 4600428D */  trunc.w.s  $f10, $f8
    /* EE24 8000E224 440D5000 */  mfc1       $t5, $f10
    /* EE28 8000E228 03E00008 */  jr         $ra
    /* EE2C 8000E22C A44D0000 */   sh        $t5, 0x0($v0)
  .L8000E230_EE30:
    /* EE30 8000E230 28A10004 */  slti       $at, $a1, 0x4
    /* EE34 8000E234 1420002C */  bnez       $at, .L8000E2E8_EEE8
    /* EE38 8000E238 00861021 */   addu      $v0, $a0, $a2
    /* EE3C 8000E23C 2442FFFA */  addiu      $v0, $v0, -0x6
    /* EE40 8000E240 00420019 */  multu      $v0, $v0
    /* EE44 8000E244 00A71821 */  addu       $v1, $a1, $a3
    /* EE48 8000E248 2463FFFF */  addiu      $v1, $v1, -0x1
    /* EE4C 8000E24C 3C098006 */  lui        $t1, %hi(D_80059CD0)
    /* EE50 8000E250 85299CD0 */  lh         $t1, %lo(D_80059CD0)($t1)
    /* EE54 8000E254 240F0019 */  addiu      $t7, $zero, 0x19
    /* EE58 8000E258 3C018003 */  lui        $at, %hi(D_80037638)
    /* EE5C 8000E25C 00097040 */  sll        $t6, $t1, 1
    /* EE60 8000E260 D42C7638 */  ldc1       $f12, %lo(D_80037638)($at)
    /* EE64 8000E264 3C0B8006 */  lui        $t3, %hi(D_80059CD4)
    /* EE68 8000E268 0000C812 */  mflo       $t9
    /* EE6C 8000E26C 256B9CD4 */  addiu      $t3, $t3, %lo(D_80059CD4)
    /* EE70 8000E270 3C014440 */  lui        $at, (0x44400000 >> 16)
    /* EE74 8000E274 00630019 */  multu      $v1, $v1
    /* EE78 8000E278 00006012 */  mflo       $t4
    /* EE7C 8000E27C 032C5021 */  addu       $t2, $t9, $t4
    /* EE80 8000E280 01EAC023 */  subu       $t8, $t7, $t2
    /* EE84 8000E284 01D80019 */  multu      $t6, $t8
    /* EE88 8000E288 856C0000 */  lh         $t4, 0x0($t3)
    /* EE8C 8000E28C 258F0300 */  addiu      $t7, $t4, 0x300
    /* EE90 8000E290 448F5000 */  mtc1       $t7, $f10
    /* EE94 8000E294 00006812 */  mflo       $t5
    /* EE98 8000E298 00000000 */  nop
    /* EE9C 8000E29C 00000000 */  nop
    /* EEA0 8000E2A0 012A0019 */  multu      $t1, $t2
    /* EEA4 8000E2A4 0000C812 */  mflo       $t9
    /* EEA8 8000E2A8 01B94021 */  addu       $t0, $t5, $t9
    /* EEAC 8000E2AC 44888000 */  mtc1       $t0, $f16
    /* EEB0 8000E2B0 00000000 */  nop
    /* EEB4 8000E2B4 468084A0 */  cvt.s.w    $f18, $f16
    /* EEB8 8000E2B8 46805420 */  cvt.s.w    $f16, $f10
    /* EEBC 8000E2BC 46009121 */  cvt.d.s    $f4, $f18
    /* EEC0 8000E2C0 46246181 */  sub.d      $f6, $f12, $f4
    /* EEC4 8000E2C4 44812000 */  mtc1       $at, $f4
    /* EEC8 8000E2C8 462C3203 */  div.d      $f8, $f6, $f12
    /* EECC 8000E2CC 46204020 */  cvt.s.d    $f0, $f8
    /* EED0 8000E2D0 46008482 */  mul.s      $f18, $f16, $f0
    /* EED4 8000E2D4 46049181 */  sub.s      $f6, $f18, $f4
    /* EED8 8000E2D8 4600320D */  trunc.w.s  $f8, $f6
    /* EEDC 8000E2DC 44184000 */  mfc1       $t8, $f8
    /* EEE0 8000E2E0 1000002D */  b          .L8000E398_EF98
    /* EEE4 8000E2E4 A5780000 */   sh        $t8, 0x0($t3)
  .L8000E2E8_EEE8:
    /* EEE8 8000E2E8 00861021 */  addu       $v0, $a0, $a2
    /* EEEC 8000E2EC 2442FFFA */  addiu      $v0, $v0, -0x6
    /* EEF0 8000E2F0 00420019 */  multu      $v0, $v0
    /* EEF4 8000E2F4 00A71821 */  addu       $v1, $a1, $a3
    /* EEF8 8000E2F8 2463FFF9 */  addiu      $v1, $v1, -0x7
    /* EEFC 8000E2FC 3C098006 */  lui        $t1, %hi(D_80059CD0)
    /* EF00 8000E300 85299CD0 */  lh         $t1, %lo(D_80059CD0)($t1)
    /* EF04 8000E304 240F0019 */  addiu      $t7, $zero, 0x19
    /* EF08 8000E308 3C018003 */  lui        $at, %hi(D_80037640)
    /* EF0C 8000E30C 00096040 */  sll        $t4, $t1, 1
    /* EF10 8000E310 D42C7640 */  ldc1       $f12, %lo(D_80037640)($at)
    /* EF14 8000E314 3C0B8006 */  lui        $t3, %hi(D_80059CD4)
    /* EF18 8000E318 00006812 */  mflo       $t5
    /* EF1C 8000E31C 256B9CD4 */  addiu      $t3, $t3, %lo(D_80059CD4)
    /* EF20 8000E320 3C014440 */  lui        $at, (0x44400000 >> 16)
    /* EF24 8000E324 00630019 */  multu      $v1, $v1
    /* EF28 8000E328 0000C812 */  mflo       $t9
    /* EF2C 8000E32C 01B95021 */  addu       $t2, $t5, $t9
    /* EF30 8000E330 01EA7023 */  subu       $t6, $t7, $t2
    /* EF34 8000E334 018E0019 */  multu      $t4, $t6
    /* EF38 8000E338 85790000 */  lh         $t9, 0x0($t3)
    /* EF3C 8000E33C 272FFD00 */  addiu      $t7, $t9, -0x300
    /* EF40 8000E340 448F4000 */  mtc1       $t7, $f8
    /* EF44 8000E344 0000C012 */  mflo       $t8
    /* EF48 8000E348 00000000 */  nop
    /* EF4C 8000E34C 00000000 */  nop
    /* EF50 8000E350 012A0019 */  multu      $t1, $t2
    /* EF54 8000E354 00006812 */  mflo       $t5
    /* EF58 8000E358 030D4021 */  addu       $t0, $t8, $t5
    /* EF5C 8000E35C 44885000 */  mtc1       $t0, $f10
    /* EF60 8000E360 00000000 */  nop
    /* EF64 8000E364 46805420 */  cvt.s.w    $f16, $f10
    /* EF68 8000E368 468042A0 */  cvt.s.w    $f10, $f8
    /* EF6C 8000E36C 460084A1 */  cvt.d.s    $f18, $f16
    /* EF70 8000E370 46326101 */  sub.d      $f4, $f12, $f18
    /* EF74 8000E374 44819000 */  mtc1       $at, $f18
    /* EF78 8000E378 462C2183 */  div.d      $f6, $f4, $f12
    /* EF7C 8000E37C 46203020 */  cvt.s.d    $f0, $f6
    /* EF80 8000E380 46005402 */  mul.s      $f16, $f10, $f0
    /* EF84 8000E384 46128100 */  add.s      $f4, $f16, $f18
    /* EF88 8000E388 4600218D */  trunc.w.s  $f6, $f4
    /* EF8C 8000E38C 440E3000 */  mfc1       $t6, $f6
    /* EF90 8000E390 00000000 */  nop
    /* EF94 8000E394 A56E0000 */  sh         $t6, 0x0($t3)
  .L8000E398_EF98:
    /* EF98 8000E398 3C028006 */  lui        $v0, %hi(D_80059CD2)
    /* EF9C 8000E39C 24429CD2 */  addiu      $v0, $v0, %lo(D_80059CD2)
    /* EFA0 8000E3A0 84580000 */  lh         $t8, 0x0($v0)
    /* EFA4 8000E3A4 3C014490 */  lui        $at, (0x44900000 >> 16)
    /* EFA8 8000E3A8 44819000 */  mtc1       $at, $f18
    /* EFAC 8000E3AC 270D0480 */  addiu      $t5, $t8, 0x480
    /* EFB0 8000E3B0 448D4000 */  mtc1       $t5, $f8
    /* EFB4 8000E3B4 00000000 */  nop
    /* EFB8 8000E3B8 468042A0 */  cvt.s.w    $f10, $f8
    /* EFBC 8000E3BC 46005402 */  mul.s      $f16, $f10, $f0
    /* EFC0 8000E3C0 46128101 */  sub.s      $f4, $f16, $f18
    /* EFC4 8000E3C4 4600218D */  trunc.w.s  $f6, $f4
    /* EFC8 8000E3C8 440F3000 */  mfc1       $t7, $f6
    /* EFCC 8000E3CC 00000000 */  nop
    /* EFD0 8000E3D0 A44F0000 */  sh         $t7, 0x0($v0)
    /* EFD4 8000E3D4 03E00008 */  jr         $ra
    /* EFD8 8000E3D8 00000000 */   nop
endlabel func_8000E048_EC48
