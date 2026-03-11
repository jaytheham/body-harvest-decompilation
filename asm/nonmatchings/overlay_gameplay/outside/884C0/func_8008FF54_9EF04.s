nonmatching func_8008FF54_9EF04, 0x1D8

glabel func_8008FF54_9EF04
    /* 9EF04 8008FF54 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 9EF08 8008FF58 AFA40050 */  sw         $a0, 0x50($sp)
    /* 9EF0C 8008FF5C 93AE0053 */  lbu        $t6, 0x53($sp)
    /* 9EF10 8008FF60 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 9EF14 8008FF64 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 9EF18 8008FF68 000E7880 */  sll        $t7, $t6, 2
    /* 9EF1C 8008FF6C 01EE7821 */  addu       $t7, $t7, $t6
    /* 9EF20 8008FF70 000F7900 */  sll        $t7, $t7, 4
    /* 9EF24 8008FF74 01F85821 */  addu       $t3, $t7, $t8
    /* 9EF28 8008FF78 8568000C */  lh         $t0, 0xC($t3)
    /* 9EF2C 8008FF7C 3C0C8015 */  lui        $t4, %hi(D_8014DD50)
    /* 9EF30 8008FF80 258CDD50 */  addiu      $t4, $t4, %lo(D_8014DD50)
    /* 9EF34 8008FF84 0008C900 */  sll        $t9, $t0, 4
    /* 9EF38 8008FF88 01991021 */  addu       $v0, $t4, $t9
    /* 9EF3C 8008FF8C 8049000C */  lb         $t1, 0xC($v0)
    /* 9EF40 8008FF90 844F0000 */  lh         $t7, 0x0($v0)
    /* 9EF44 8008FF94 AFB00028 */  sw         $s0, 0x28($sp)
    /* 9EF48 8008FF98 00096900 */  sll        $t5, $t1, 4
    /* 9EF4C 8008FF9C 018D1821 */  addu       $v1, $t4, $t5
    /* 9EF50 8008FFA0 846E0000 */  lh         $t6, 0x0($v1)
    /* 9EF54 8008FFA4 84790002 */  lh         $t9, 0x2($v1)
    /* 9EF58 8008FFA8 844D0002 */  lh         $t5, 0x2($v0)
    /* 9EF5C 8008FFAC 01CFC021 */  addu       $t8, $t6, $t7
    /* 9EF60 8008FFB0 AFB80044 */  sw         $t8, 0x44($sp)
    /* 9EF64 8008FFB4 84580004 */  lh         $t8, 0x4($v0)
    /* 9EF68 8008FFB8 846F0004 */  lh         $t7, 0x4($v1)
    /* 9EF6C 8008FFBC 846A000A */  lh         $t2, 0xA($v1)
    /* 9EF70 8008FFC0 032D7021 */  addu       $t6, $t9, $t5
    /* 9EF74 8008FFC4 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 9EF78 8008FFC8 01F8C821 */  addu       $t9, $t7, $t8
    /* 9EF7C 8008FFCC 3150FFFF */  andi       $s0, $t2, 0xFFFF
    /* 9EF80 8008FFD0 AFA50054 */  sw         $a1, 0x54($sp)
    /* 9EF84 8008FFD4 AFA60058 */  sw         $a2, 0x58($sp)
    /* 9EF88 8008FFD8 AFA7005C */  sw         $a3, 0x5C($sp)
    /* 9EF8C 8008FFDC AFAE0040 */  sw         $t6, 0x40($sp)
    /* 9EF90 8008FFE0 AFB9003C */  sw         $t9, 0x3C($sp)
    /* 9EF94 8008FFE4 3204FFFF */  andi       $a0, $s0, 0xFFFF
    /* 9EF98 8008FFE8 0C007660 */  jal        sins
    /* 9EF9C 8008FFEC AFAB0034 */   sw        $t3, 0x34($sp)
    /* 9EFA0 8008FFF0 A7A20038 */  sh         $v0, 0x38($sp)
    /* 9EFA4 8008FFF4 0C007654 */  jal        coss
    /* 9EFA8 8008FFF8 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* 9EFAC 8008FFFC 44823000 */  mtc1       $v0, $f6
    /* 9EFB0 80090000 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 9EFB4 80090004 44810800 */  mtc1       $at, $f1
    /* 9EFB8 80090008 46803220 */  cvt.s.w    $f8, $f6
    /* 9EFBC 8009000C 44800000 */  mtc1       $zero, $f0
    /* 9EFC0 80090010 87AD0038 */  lh         $t5, 0x38($sp)
    /* 9EFC4 80090014 3C01C049 */  lui        $at, (0xC0490000 >> 16)
    /* 9EFC8 80090018 44812800 */  mtc1       $at, $f5
    /* 9EFCC 8009001C 44802000 */  mtc1       $zero, $f4
    /* 9EFD0 80090020 460042A1 */  cvt.d.s    $f10, $f8
    /* 9EFD4 80090024 448D4000 */  mtc1       $t5, $f8
    /* 9EFD8 80090028 46205403 */  div.d      $f16, $f10, $f0
    /* 9EFDC 8009002C 3C018014 */  lui        $at, %hi(D_80141EF8)
    /* 9EFE0 80090030 D4261EF8 */  ldc1       $f6, %lo(D_80141EF8)($at)
    /* 9EFE4 80090034 8FAE0040 */  lw         $t6, 0x40($sp)
    /* 9EFE8 80090038 468042A0 */  cvt.s.w    $f10, $f8
    /* 9EFEC 8009003C 3204FFFF */  andi       $a0, $s0, 0xFFFF
    /* 9EFF0 80090040 46302482 */  mul.d      $f18, $f4, $f16
    /* 9EFF4 80090044 46005121 */  cvt.d.s    $f4, $f10
    /* 9EFF8 80090048 46202403 */  div.d      $f16, $f4, $f0
    /* 9EFFC 8009004C 448E2000 */  mtc1       $t6, $f4
    /* 9F000 80090050 46303202 */  mul.d      $f8, $f6, $f16
    /* 9F004 80090054 468021A1 */  cvt.d.w    $f6, $f4
    /* 9F008 80090058 46289281 */  sub.d      $f10, $f18, $f8
    /* 9F00C 8009005C 462A3400 */  add.d      $f16, $f6, $f10
    /* 9F010 80090060 4620848D */  trunc.w.d  $f18, $f16
    /* 9F014 80090064 0C007654 */  jal        coss
    /* 9F018 80090068 E7B20040 */   swc1      $f18, 0x40($sp)
    /* 9F01C 8009006C A7A20038 */  sh         $v0, 0x38($sp)
    /* 9F020 80090070 0C007660 */  jal        sins
    /* 9F024 80090074 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* 9F028 80090078 44822000 */  mtc1       $v0, $f4
    /* 9F02C 8009007C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 9F030 80090080 44810800 */  mtc1       $at, $f1
    /* 9F034 80090084 468021A0 */  cvt.s.w    $f6, $f4
    /* 9F038 80090088 44800000 */  mtc1       $zero, $f0
    /* 9F03C 8009008C 87B80038 */  lh         $t8, 0x38($sp)
    /* 9F040 80090090 3C01C049 */  lui        $at, (0xC0490000 >> 16)
    /* 9F044 80090094 44814800 */  mtc1       $at, $f9
    /* 9F048 80090098 44804000 */  mtc1       $zero, $f8
    /* 9F04C 8009009C 460032A1 */  cvt.d.s    $f10, $f6
    /* 9F050 800900A0 44983000 */  mtc1       $t8, $f6
    /* 9F054 800900A4 46205403 */  div.d      $f16, $f10, $f0
    /* 9F058 800900A8 3C018014 */  lui        $at, %hi(D_80141F00)
    /* 9F05C 800900AC D4241F00 */  ldc1       $f4, %lo(D_80141F00)($at)
    /* 9F060 800900B0 8FA3003C */  lw         $v1, 0x3C($sp)
    /* 9F064 800900B4 468032A0 */  cvt.s.w    $f10, $f6
    /* 9F068 800900B8 8FB8005C */  lw         $t8, 0x5C($sp)
    /* 9F06C 800900BC 8FAE0054 */  lw         $t6, 0x54($sp)
    /* 9F070 800900C0 8FAF0058 */  lw         $t7, 0x58($sp)
    /* 9F074 800900C4 8FA40034 */  lw         $a0, 0x34($sp)
    /* 9F078 800900C8 87A50046 */  lh         $a1, 0x46($sp)
    /* 9F07C 800900CC 87A60042 */  lh         $a2, 0x42($sp)
    /* 9F080 800900D0 AFB80018 */  sw         $t8, 0x18($sp)
    /* 9F084 800900D4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 9F088 800900D8 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 9F08C 800900DC 46304482 */  mul.d      $f18, $f8, $f16
    /* 9F090 800900E0 46005221 */  cvt.d.s    $f8, $f10
    /* 9F094 800900E4 46204403 */  div.d      $f16, $f8, $f0
    /* 9F098 800900E8 44834000 */  mtc1       $v1, $f8
    /* 9F09C 800900EC 46302182 */  mul.d      $f6, $f4, $f16
    /* 9F0A0 800900F0 46804121 */  cvt.d.w    $f4, $f8
    /* 9F0A4 800900F4 46269280 */  add.d      $f10, $f18, $f6
    /* 9F0A8 800900F8 462A2400 */  add.d      $f16, $f4, $f10
    /* 9F0AC 800900FC 4620848D */  trunc.w.d  $f18, $f16
    /* 9F0B0 80090100 44039000 */  mfc1       $v1, $f18
    /* 9F0B4 80090104 00000000 */  nop
    /* 9F0B8 80090108 00033C00 */  sll        $a3, $v1, 16
    /* 9F0BC 8009010C 00076C03 */  sra        $t5, $a3, 16
    /* 9F0C0 80090110 0C04A10A */  jal        func_80128428_1373D8
    /* 9F0C4 80090114 01A03825 */   or        $a3, $t5, $zero
    /* 9F0C8 80090118 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 9F0CC 8009011C 8FB00028 */  lw         $s0, 0x28($sp)
    /* 9F0D0 80090120 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 9F0D4 80090124 03E00008 */  jr         $ra
    /* 9F0D8 80090128 00000000 */   nop
endlabel func_8008FF54_9EF04
