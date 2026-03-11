nonmatching func_8007EBB8_4F068, 0x254

glabel func_8007EBB8_4F068
    /* 4F068 8007EBB8 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 4F06C 8007EBBC AFBF002C */  sw         $ra, 0x2C($sp)
    /* 4F070 8007EBC0 0C000D17 */  jal        func_8000345C_405C
    /* 4F074 8007EBC4 24040020 */   addiu     $a0, $zero, 0x20
    /* 4F078 8007EBC8 3C0E8009 */  lui        $t6, %hi(D_80094930)
    /* 4F07C 8007EBCC 8DCE4930 */  lw         $t6, %lo(D_80094930)($t6)
    /* 4F080 8007EBD0 11C00010 */  beqz       $t6, .L8007EC14_4F0C4
    /* 4F084 8007EBD4 00000000 */   nop
    /* 4F088 8007EBD8 0C01FBB8 */  jal        func_8007EEE0_4F390
    /* 4F08C 8007EBDC 00000000 */   nop
    /* 4F090 8007EBE0 3C02800D */  lui        $v0, %hi(D_800D7A18)
    /* 4F094 8007EBE4 8C427A18 */  lw         $v0, %lo(D_800D7A18)($v0)
    /* 4F098 8007EBE8 844F0036 */  lh         $t7, 0x36($v0)
    /* 4F09C 8007EBEC 84470038 */  lh         $a3, 0x38($v0)
    /* 4F0A0 8007EBF0 24440010 */  addiu      $a0, $v0, 0x10
    /* 4F0A4 8007EBF4 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 4F0A8 8007EBF8 84580034 */  lh         $t8, 0x34($v0)
    /* 4F0AC 8007EBFC 2445001C */  addiu      $a1, $v0, 0x1C
    /* 4F0B0 8007EC00 24460028 */  addiu      $a2, $v0, 0x28
    /* 4F0B4 8007EC04 AFB80014 */  sw         $t8, 0x14($sp)
    /* 4F0B8 8007EC08 8459003C */  lh         $t9, 0x3C($v0)
    /* 4F0BC 8007EC0C 0C01FC62 */  jal        func_8007F188_4F638
    /* 4F0C0 8007EC10 AFB90018 */   sw        $t9, 0x18($sp)
  .L8007EC14_4F0C4:
    /* 4F0C4 8007EC14 3C02800D */  lui        $v0, %hi(D_800D7A18)
    /* 4F0C8 8007EC18 8C427A18 */  lw         $v0, %lo(D_800D7A18)($v0)
    /* 4F0CC 8007EC1C C444001C */  lwc1       $f4, 0x1C($v0)
    /* 4F0D0 8007EC20 C4460010 */  lwc1       $f6, 0x10($v0)
    /* 4F0D4 8007EC24 46062032 */  c.eq.s     $f4, $f6
    /* 4F0D8 8007EC28 00000000 */  nop
    /* 4F0DC 8007EC2C 4502000D */  bc1fl      .L8007EC64_4F114
    /* 4F0E0 8007EC30 844C003A */   lh        $t4, 0x3A($v0)
    /* 4F0E4 8007EC34 C4480024 */  lwc1       $f8, 0x24($v0)
    /* 4F0E8 8007EC38 C44A0018 */  lwc1       $f10, 0x18($v0)
    /* 4F0EC 8007EC3C 3C04800B */  lui        $a0, %hi(D_800AE8FC)
    /* 4F0F0 8007EC40 460A4032 */  c.eq.s     $f8, $f10
    /* 4F0F4 8007EC44 00000000 */  nop
    /* 4F0F8 8007EC48 45020006 */  bc1fl      .L8007EC64_4F114
    /* 4F0FC 8007EC4C 844C003A */   lh        $t4, 0x3A($v0)
    /* 4F100 8007EC50 0C00731B */  jal        osSyncPrintf
    /* 4F104 8007EC54 2484E8FC */   addiu     $a0, $a0, %lo(D_800AE8FC)
    /* 4F108 8007EC58 3C02800D */  lui        $v0, %hi(D_800D7A18)
    /* 4F10C 8007EC5C 8C427A18 */  lw         $v0, %lo(D_800D7A18)($v0)
    /* 4F110 8007EC60 844C003A */  lh         $t4, 0x3A($v0)
  .L8007EC64_4F114:
    /* 4F114 8007EC64 3C01800E */  lui        $at, %hi(D_800D8510)
    /* 4F118 8007EC68 C4328510 */  lwc1       $f18, %lo(D_800D8510)($at)
    /* 4F11C 8007EC6C 448C8000 */  mtc1       $t4, $f16
    /* 4F120 8007EC70 3C01457A */  lui        $at, (0x457A0000 >> 16)
    /* 4F124 8007EC74 44812000 */  mtc1       $at, $f4
    /* 4F128 8007EC78 46808420 */  cvt.s.w    $f16, $f16
    /* 4F12C 8007EC7C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 4F130 8007EC80 44813000 */  mtc1       $at, $f6
    /* 4F134 8007EC84 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 4F138 8007EC88 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 4F13C 8007EC8C 3C07800D */  lui        $a3, %hi(D_800D7974)
    /* 4F140 8007EC90 44068000 */  mfc1       $a2, $f16
    /* 4F144 8007EC94 8CE77974 */  lw         $a3, %lo(D_800D7974)($a3)
    /* 4F148 8007EC98 8D040000 */  lw         $a0, 0x0($t0)
    /* 4F14C 8007EC9C 27A50056 */  addiu      $a1, $sp, 0x56
    /* 4F150 8007ECA0 E7B20010 */  swc1       $f18, 0x10($sp)
    /* 4F154 8007ECA4 E7A40014 */  swc1       $f4, 0x14($sp)
    /* 4F158 8007ECA8 0C007964 */  jal        guPerspective
    /* 4F15C 8007ECAC E7A60018 */   swc1      $f6, 0x18($sp)
    /* 4F160 8007ECB0 3C098006 */  lui        $t1, %hi(D_8005BB2C)
    /* 4F164 8007ECB4 2529BB2C */  addiu      $t1, $t1, %lo(D_8005BB2C)
    /* 4F168 8007ECB8 8D230000 */  lw         $v1, 0x0($t1)
    /* 4F16C 8007ECBC 3C0EBC00 */  lui        $t6, (0xBC00000E >> 16)
    /* 4F170 8007ECC0 35CE000E */  ori        $t6, $t6, (0xBC00000E & 0xFFFF)
    /* 4F174 8007ECC4 246D0008 */  addiu      $t5, $v1, 0x8
    /* 4F178 8007ECC8 AD2D0000 */  sw         $t5, 0x0($t1)
    /* 4F17C 8007ECCC AC6E0000 */  sw         $t6, 0x0($v1)
    /* 4F180 8007ECD0 97AF0056 */  lhu        $t7, 0x56($sp)
    /* 4F184 8007ECD4 3C190103 */  lui        $t9, (0x1030040 >> 16)
    /* 4F188 8007ECD8 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 4F18C 8007ECDC AC6F0004 */  sw         $t7, 0x4($v1)
    /* 4F190 8007ECE0 8D230000 */  lw         $v1, 0x0($t1)
    /* 4F194 8007ECE4 37390040 */  ori        $t9, $t9, (0x1030040 & 0xFFFF)
    /* 4F198 8007ECE8 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 4F19C 8007ECEC 24780008 */  addiu      $t8, $v1, 0x8
    /* 4F1A0 8007ECF0 AD380000 */  sw         $t8, 0x0($t1)
    /* 4F1A4 8007ECF4 AC790000 */  sw         $t9, 0x0($v1)
    /* 4F1A8 8007ECF8 8D0C0000 */  lw         $t4, 0x0($t0)
    /* 4F1AC 8007ECFC 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 4F1B0 8007ED00 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 4F1B4 8007ED04 01816824 */  and        $t5, $t4, $at
    /* 4F1B8 8007ED08 AC6D0004 */  sw         $t5, 0x4($v1)
    /* 4F1BC 8007ED0C 8D0E0000 */  lw         $t6, 0x0($t0)
    /* 4F1C0 8007ED10 3C02800D */  lui        $v0, %hi(D_800D7A18)
    /* 4F1C4 8007ED14 3C01800E */  lui        $at, %hi(D_800D8528)
    /* 4F1C8 8007ED18 25C40040 */  addiu      $a0, $t6, 0x40
    /* 4F1CC 8007ED1C AD040000 */  sw         $a0, 0x0($t0)
    /* 4F1D0 8007ED20 8C427A18 */  lw         $v0, %lo(D_800D7A18)($v0)
    /* 4F1D4 8007ED24 C4208528 */  lwc1       $f0, %lo(D_800D8528)($at)
    /* 4F1D8 8007ED28 C448001C */  lwc1       $f8, 0x1C($v0)
    /* 4F1DC 8007ED2C 8C450010 */  lw         $a1, 0x10($v0)
    /* 4F1E0 8007ED30 8C460014 */  lw         $a2, 0x14($v0)
    /* 4F1E4 8007ED34 46004280 */  add.s      $f10, $f8, $f0
    /* 4F1E8 8007ED38 8C470018 */  lw         $a3, 0x18($v0)
    /* 4F1EC 8007ED3C E7AA0010 */  swc1       $f10, 0x10($sp)
    /* 4F1F0 8007ED40 C4500020 */  lwc1       $f16, 0x20($v0)
    /* 4F1F4 8007ED44 46008480 */  add.s      $f18, $f16, $f0
    /* 4F1F8 8007ED48 E7B20014 */  swc1       $f18, 0x14($sp)
    /* 4F1FC 8007ED4C C4440024 */  lwc1       $f4, 0x24($v0)
    /* 4F200 8007ED50 E7A40018 */  swc1       $f4, 0x18($sp)
    /* 4F204 8007ED54 C4460028 */  lwc1       $f6, 0x28($v0)
    /* 4F208 8007ED58 E7A6001C */  swc1       $f6, 0x1C($sp)
    /* 4F20C 8007ED5C C448002C */  lwc1       $f8, 0x2C($v0)
    /* 4F210 8007ED60 E7A80020 */  swc1       $f8, 0x20($sp)
    /* 4F214 8007ED64 C44A0030 */  lwc1       $f10, 0x30($v0)
    /* 4F218 8007ED68 0C00779A */  jal        guLookAt
    /* 4F21C 8007ED6C E7AA0024 */   swc1      $f10, 0x24($sp)
    /* 4F220 8007ED70 3C098006 */  lui        $t1, %hi(D_8005BB2C)
    /* 4F224 8007ED74 2529BB2C */  addiu      $t1, $t1, %lo(D_8005BB2C)
    /* 4F228 8007ED78 8D230000 */  lw         $v1, 0x0($t1)
    /* 4F22C 8007ED7C 3C190101 */  lui        $t9, (0x1010040 >> 16)
    /* 4F230 8007ED80 3C088006 */  lui        $t0, %hi(D_8005BB38)
    /* 4F234 8007ED84 24780008 */  addiu      $t8, $v1, 0x8
    /* 4F238 8007ED88 AD380000 */  sw         $t8, 0x0($t1)
    /* 4F23C 8007ED8C 37390040 */  ori        $t9, $t9, (0x1010040 & 0xFFFF)
    /* 4F240 8007ED90 2508BB38 */  addiu      $t0, $t0, %lo(D_8005BB38)
    /* 4F244 8007ED94 AC790000 */  sw         $t9, 0x0($v1)
    /* 4F248 8007ED98 8D0C0000 */  lw         $t4, 0x0($t0)
    /* 4F24C 8007ED9C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* 4F250 8007EDA0 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* 4F254 8007EDA4 01816824 */  and        $t5, $t4, $at
    /* 4F258 8007EDA8 AC6D0004 */  sw         $t5, 0x4($v1)
    /* 4F25C 8007EDAC 8D0E0000 */  lw         $t6, 0x0($t0)
    /* 4F260 8007EDB0 8D230000 */  lw         $v1, 0x0($t1)
    /* 4F264 8007EDB4 3C0C8009 */  lui        $t4, %hi(D_80094958)
    /* 4F268 8007EDB8 25CF0040 */  addiu      $t7, $t6, 0x40
    /* 4F26C 8007EDBC 24780008 */  addiu      $t8, $v1, 0x8
    /* 4F270 8007EDC0 AD0F0000 */  sw         $t7, 0x0($t0)
    /* 4F274 8007EDC4 AD380000 */  sw         $t8, 0x0($t1)
    /* 4F278 8007EDC8 3C190102 */  lui        $t9, (0x1020040 >> 16)
    /* 4F27C 8007EDCC 37390040 */  ori        $t9, $t9, (0x1020040 & 0xFFFF)
    /* 4F280 8007EDD0 258C4958 */  addiu      $t4, $t4, %lo(D_80094958)
    /* 4F284 8007EDD4 AC6C0004 */  sw         $t4, 0x4($v1)
    /* 4F288 8007EDD8 AC790000 */  sw         $t9, 0x0($v1)
    /* 4F28C 8007EDDC 8D040000 */  lw         $a0, 0x0($t0)
    /* 4F290 8007EDE0 0C020E38 */  jal        func_800838E0_53D90
    /* 4F294 8007EDE4 2484FFC0 */   addiu     $a0, $a0, -0x40
    /* 4F298 8007EDE8 3C02800D */  lui        $v0, %hi(D_800D7A18)
    /* 4F29C 8007EDEC 8C427A18 */  lw         $v0, %lo(D_800D7A18)($v0)
    /* 4F2A0 8007EDF0 24440010 */  addiu      $a0, $v0, 0x10
    /* 4F2A4 8007EDF4 0C020E7C */  jal        func_800839F0_53EA0
    /* 4F2A8 8007EDF8 2445001C */   addiu     $a1, $v0, 0x1C
    /* 4F2AC 8007EDFC 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 4F2B0 8007EE00 27BD0058 */  addiu      $sp, $sp, 0x58
    /* 4F2B4 8007EE04 03E00008 */  jr         $ra
    /* 4F2B8 8007EE08 00000000 */   nop
endlabel func_8007EBB8_4F068
