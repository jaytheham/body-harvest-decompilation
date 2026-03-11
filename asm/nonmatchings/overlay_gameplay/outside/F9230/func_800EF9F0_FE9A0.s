nonmatching func_800EF9F0_FE9A0, 0x238

glabel func_800EF9F0_FE9A0
    /* FE9A0 800EF9F0 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* FE9A4 800EF9F4 AFB00018 */  sw         $s0, 0x18($sp)
    /* FE9A8 800EF9F8 00048400 */  sll        $s0, $a0, 16
    /* FE9AC 800EF9FC 00107403 */  sra        $t6, $s0, 16
    /* FE9B0 800EFA00 000E7880 */  sll        $t7, $t6, 2
    /* FE9B4 800EFA04 01EE7821 */  addu       $t7, $t7, $t6
    /* FE9B8 800EFA08 3C188005 */  lui        $t8, %hi(alienInstances)
    /* FE9BC 800EFA0C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* FE9C0 800EFA10 000F7900 */  sll        $t7, $t7, 4
    /* FE9C4 800EFA14 01F81021 */  addu       $v0, $t7, $t8
    /* FE9C8 800EFA18 9059001A */  lbu        $t9, 0x1A($v0)
    /* FE9CC 800EFA1C 3C098025 */  lui        $t1, %hi(alienSpecs)
    /* FE9D0 800EFA20 AFB1001C */  sw         $s1, 0x1C($sp)
    /* FE9D4 800EFA24 00194080 */  sll        $t0, $t9, 2
    /* FE9D8 800EFA28 01194023 */  subu       $t0, $t0, $t9
    /* FE9DC 800EFA2C 00084080 */  sll        $t0, $t0, 2
    /* FE9E0 800EFA30 01194021 */  addu       $t0, $t0, $t9
    /* FE9E4 800EFA34 000840C0 */  sll        $t0, $t0, 3
    /* FE9E8 800EFA38 01284821 */  addu       $t1, $t1, $t0
    /* FE9EC 800EFA3C 8D296680 */  lw         $t1, %lo(alienSpecs)($t1)
    /* FE9F0 800EFA40 3C118006 */  lui        $s1, %hi(D_8005BB38)
    /* FE9F4 800EFA44 2631BB38 */  addiu      $s1, $s1, %lo(D_8005BB38)
    /* FE9F8 800EFA48 AFBF0024 */  sw         $ra, 0x24($sp)
    /* FE9FC 800EFA4C AFA40068 */  sw         $a0, 0x68($sp)
    /* FEA00 800EFA50 3C068003 */  lui        $a2, %hi(D_800311A0)
    /* FEA04 800EFA54 AFB20020 */  sw         $s2, 0x20($sp)
    /* FEA08 800EFA58 24C611A0 */  addiu      $a2, $a2, %lo(D_800311A0)
    /* FEA0C 800EFA5C 00002025 */  or         $a0, $zero, $zero
    /* FEA10 800EFA60 8E270000 */  lw         $a3, 0x0($s1)
    /* FEA14 800EFA64 AFA2002C */  sw         $v0, 0x2C($sp)
    /* FEA18 800EFA68 00002825 */  or         $a1, $zero, $zero
    /* FEA1C 800EFA6C 0C000E74 */  jal        func_800039D0_45D0
    /* FEA20 800EFA70 AFA90064 */   sw        $t1, 0x64($sp)
    /* FEA24 800EFA74 3C128006 */  lui        $s2, %hi(D_8005BB2C)
    /* FEA28 800EFA78 2652BB2C */  addiu      $s2, $s2, %lo(D_8005BB2C)
    /* FEA2C 800EFA7C 8E500000 */  lw         $s0, 0x0($s2)
    /* FEA30 800EFA80 3C0B0102 */  lui        $t3, (0x1020040 >> 16)
    /* FEA34 800EFA84 8FA2002C */  lw         $v0, 0x2C($sp)
    /* FEA38 800EFA88 260A0008 */  addiu      $t2, $s0, 0x8
    /* FEA3C 800EFA8C AE4A0000 */  sw         $t2, 0x0($s2)
    /* FEA40 800EFA90 356B0040 */  ori        $t3, $t3, (0x1020040 & 0xFFFF)
    /* FEA44 800EFA94 AE0B0000 */  sw         $t3, 0x0($s0)
    /* FEA48 800EFA98 8E2C0000 */  lw         $t4, 0x0($s1)
    /* FEA4C 800EFA9C 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* FEA50 800EFAA0 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* FEA54 800EFAA4 01816824 */  and        $t5, $t4, $at
    /* FEA58 800EFAA8 AE0D0004 */  sw         $t5, 0x4($s0)
    /* FEA5C 800EFAAC 8E2E0000 */  lw         $t6, 0x0($s1)
    /* FEA60 800EFAB0 84490006 */  lh         $t1, 0x6($v0)
    /* FEA64 800EFAB4 84580000 */  lh         $t8, 0x0($v0)
    /* FEA68 800EFAB8 84590002 */  lh         $t9, 0x2($v0)
    /* FEA6C 800EFABC 84480004 */  lh         $t0, 0x4($v0)
    /* FEA70 800EFAC0 240A4000 */  addiu      $t2, $zero, 0x4000
    /* FEA74 800EFAC4 3C068003 */  lui        $a2, %hi(D_800311A0)
    /* FEA78 800EFAC8 25C70040 */  addiu      $a3, $t6, 0x40
    /* FEA7C 800EFACC 01495823 */  subu       $t3, $t2, $t1
    /* FEA80 800EFAD0 AE270000 */  sw         $a3, 0x0($s1)
    /* FEA84 800EFAD4 A7AB0048 */  sh         $t3, 0x48($sp)
    /* FEA88 800EFAD8 A7A0004A */  sh         $zero, 0x4A($sp)
    /* FEA8C 800EFADC A7A0004C */  sh         $zero, 0x4C($sp)
    /* FEA90 800EFAE0 24C611A0 */  addiu      $a2, $a2, %lo(D_800311A0)
    /* FEA94 800EFAE4 27A4005C */  addiu      $a0, $sp, 0x5C
    /* FEA98 800EFAE8 27A50048 */  addiu      $a1, $sp, 0x48
    /* FEA9C 800EFAEC A7B8005C */  sh         $t8, 0x5C($sp)
    /* FEAA0 800EFAF0 A7B9005E */  sh         $t9, 0x5E($sp)
    /* FEAA4 800EFAF4 0C000E74 */  jal        func_800039D0_45D0
    /* FEAA8 800EFAF8 A7A80060 */   sh        $t0, 0x60($sp)
    /* FEAAC 800EFAFC 8E500000 */  lw         $s0, 0x0($s2)
    /* FEAB0 800EFB00 3C0D0100 */  lui        $t5, (0x1000040 >> 16)
    /* FEAB4 800EFB04 35AD0040 */  ori        $t5, $t5, (0x1000040 & 0xFFFF)
    /* FEAB8 800EFB08 260C0008 */  addiu      $t4, $s0, 0x8
    /* FEABC 800EFB0C AE4C0000 */  sw         $t4, 0x0($s2)
    /* FEAC0 800EFB10 AE0D0000 */  sw         $t5, 0x0($s0)
    /* FEAC4 800EFB14 8E2E0000 */  lw         $t6, 0x0($s1)
    /* FEAC8 800EFB18 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
    /* FEACC 800EFB1C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
    /* FEAD0 800EFB20 01C17824 */  and        $t7, $t6, $at
    /* FEAD4 800EFB24 AE0F0004 */  sw         $t7, 0x4($s0)
    /* FEAD8 800EFB28 3C038015 */  lui        $v1, %hi(D_80157A48)
    /* FEADC 800EFB2C 24637A48 */  addiu      $v1, $v1, %lo(D_80157A48)
    /* FEAE0 800EFB30 C464000C */  lwc1       $f4, 0xC($v1)
    /* FEAE4 800EFB34 8E380000 */  lw         $t8, 0x0($s1)
    /* FEAE8 800EFB38 84690002 */  lh         $t1, 0x2($v1)
    /* FEAEC 800EFB3C 4600218D */  trunc.w.s  $f6, $f4
    /* FEAF0 800EFB40 846C0004 */  lh         $t4, 0x4($v1)
    /* FEAF4 800EFB44 846E0000 */  lh         $t6, 0x0($v1)
    /* FEAF8 800EFB48 27070040 */  addiu      $a3, $t8, 0x40
    /* FEAFC 800EFB4C 440A3000 */  mfc1       $t2, $f6
    /* FEB00 800EFB50 000958C0 */  sll        $t3, $t1, 3
    /* FEB04 800EFB54 000C68C0 */  sll        $t5, $t4, 3
    /* FEB08 800EFB58 000E78C0 */  sll        $t7, $t6, 3
    /* FEB0C 800EFB5C AE270000 */  sw         $a3, 0x0($s1)
    /* FEB10 800EFB60 A7A0005C */  sh         $zero, 0x5C($sp)
    /* FEB14 800EFB64 A7A00060 */  sh         $zero, 0x60($sp)
    /* FEB18 800EFB68 A7AB0048 */  sh         $t3, 0x48($sp)
    /* FEB1C 800EFB6C A7AD004A */  sh         $t5, 0x4A($sp)
    /* FEB20 800EFB70 A7AF004C */  sh         $t7, 0x4C($sp)
    /* FEB24 800EFB74 27A4005C */  addiu      $a0, $sp, 0x5C
    /* FEB28 800EFB78 27A50048 */  addiu      $a1, $sp, 0x48
    /* FEB2C 800EFB7C 00003025 */  or         $a2, $zero, $zero
    /* FEB30 800EFB80 0C000E74 */  jal        func_800039D0_45D0
    /* FEB34 800EFB84 A7AA005E */   sh        $t2, 0x5E($sp)
    /* FEB38 800EFB88 8E500000 */  lw         $s0, 0x0($s2)
    /* FEB3C 800EFB8C 3C190100 */  lui        $t9, (0x1000040 >> 16)
    /* FEB40 800EFB90 37390040 */  ori        $t9, $t9, (0x1000040 & 0xFFFF)
    /* FEB44 800EFB94 26180008 */  addiu      $t8, $s0, 0x8
    /* FEB48 800EFB98 AE580000 */  sw         $t8, 0x0($s2)
    /* FEB4C 800EFB9C AE190000 */  sw         $t9, 0x0($s0)
    /* FEB50 800EFBA0 8E280000 */  lw         $t0, 0x0($s1)
    /* FEB54 800EFBA4 3C061FFF */  lui        $a2, (0x1FFFFFFF >> 16)
    /* FEB58 800EFBA8 34C6FFFF */  ori        $a2, $a2, (0x1FFFFFFF & 0xFFFF)
    /* FEB5C 800EFBAC 01065024 */  and        $t2, $t0, $a2
    /* FEB60 800EFBB0 AE0A0004 */  sw         $t2, 0x4($s0)
    /* FEB64 800EFBB4 8E290000 */  lw         $t1, 0x0($s1)
    /* FEB68 800EFBB8 8E500000 */  lw         $s0, 0x0($s2)
    /* FEB6C 800EFBBC 3C0DBC00 */  lui        $t5, (0xBC001C06 >> 16)
    /* FEB70 800EFBC0 252B0040 */  addiu      $t3, $t1, 0x40
    /* FEB74 800EFBC4 260C0008 */  addiu      $t4, $s0, 0x8
    /* FEB78 800EFBC8 AE2B0000 */  sw         $t3, 0x0($s1)
    /* FEB7C 800EFBCC AE4C0000 */  sw         $t4, 0x0($s2)
    /* FEB80 800EFBD0 35AD1C06 */  ori        $t5, $t5, (0xBC001C06 & 0xFFFF)
    /* FEB84 800EFBD4 AE0D0000 */  sw         $t5, 0x0($s0)
    /* FEB88 800EFBD8 8E2E0000 */  lw         $t6, 0x0($s1)
    /* FEB8C 800EFBDC 3C048015 */  lui        $a0, %hi(D_80157A48)
    /* FEB90 800EFBE0 24847A48 */  addiu      $a0, $a0, %lo(D_80157A48)
    /* FEB94 800EFBE4 01C67824 */  and        $t7, $t6, $a2
    /* FEB98 800EFBE8 24050010 */  addiu      $a1, $zero, 0x10
    /* FEB9C 800EFBEC 0C00330F */  jal        func_8000CC3C_D83C
    /* FEBA0 800EFBF0 AE0F0004 */   sw        $t7, 0x4($s0)
    /* FEBA4 800EFBF4 8E500000 */  lw         $s0, 0x0($s2)
    /* FEBA8 800EFBF8 3C190600 */  lui        $t9, (0x6000000 >> 16)
    /* FEBAC 800EFBFC 26180008 */  addiu      $t8, $s0, 0x8
    /* FEBB0 800EFC00 AE580000 */  sw         $t8, 0x0($s2)
    /* FEBB4 800EFC04 AE190000 */  sw         $t9, 0x0($s0)
    /* FEBB8 800EFC08 8FA80064 */  lw         $t0, 0x64($sp)
    /* FEBBC 800EFC0C AE080004 */  sw         $t0, 0x4($s0)
    /* FEBC0 800EFC10 8FBF0024 */  lw         $ra, 0x24($sp)
    /* FEBC4 800EFC14 8FB20020 */  lw         $s2, 0x20($sp)
    /* FEBC8 800EFC18 8FB1001C */  lw         $s1, 0x1C($sp)
    /* FEBCC 800EFC1C 8FB00018 */  lw         $s0, 0x18($sp)
    /* FEBD0 800EFC20 03E00008 */  jr         $ra
    /* FEBD4 800EFC24 27BD0068 */   addiu     $sp, $sp, 0x68
endlabel func_800EF9F0_FE9A0
