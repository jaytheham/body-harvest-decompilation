nonmatching func_802DA844_1F3554, 0x718

glabel func_802DA844_1F3554
    /* 1F3554 802DA844 308E00FF */  andi       $t6, $a0, 0xFF
    /* 1F3558 802DA848 000E7880 */  sll        $t7, $t6, 2
    /* 1F355C 802DA84C 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 1F3560 802DA850 01EE7821 */  addu       $t7, $t7, $t6
    /* 1F3564 802DA854 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 1F3568 802DA858 AFB10028 */  sw         $s1, 0x28($sp)
    /* 1F356C 802DA85C 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 1F3570 802DA860 000F7900 */  sll        $t7, $t7, 4
    /* 1F3574 802DA864 01F88821 */  addu       $s1, $t7, $t8
    /* 1F3578 802DA868 8E390020 */  lw         $t9, 0x20($s1)
    /* 1F357C 802DA86C AFA40070 */  sw         $a0, 0x70($sp)
    /* 1F3580 802DA870 01C02025 */  or         $a0, $t6, $zero
    /* 1F3584 802DA874 332A0600 */  andi       $t2, $t9, 0x600
    /* 1F3588 802DA878 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 1F358C 802DA87C 114001B2 */  beqz       $t2, .L802DAF48_1F3C58
    /* 1F3590 802DA880 AFB00024 */   sw        $s0, 0x24($sp)
    /* 1F3594 802DA884 862B000C */  lh         $t3, 0xC($s1)
    /* 1F3598 802DA888 3C078015 */  lui        $a3, %hi(D_8014DD50)
    /* 1F359C 802DA88C 24E7DD50 */  addiu      $a3, $a3, %lo(D_8014DD50)
    /* 1F35A0 802DA890 000B6100 */  sll        $t4, $t3, 4
    /* 1F35A4 802DA894 00EC6821 */  addu       $t5, $a3, $t4
    /* 1F35A8 802DA898 81A5000C */  lb         $a1, 0xC($t5)
    /* 1F35AC 802DA89C A3A40073 */  sb         $a0, 0x73($sp)
    /* 1F35B0 802DA8A0 00057100 */  sll        $t6, $a1, 4
    /* 1F35B4 802DA8A4 00EE1821 */  addu       $v1, $a3, $t6
    /* 1F35B8 802DA8A8 8068000D */  lb         $t0, 0xD($v1)
    /* 1F35BC 802DA8AC AFA30040 */  sw         $v1, 0x40($sp)
    /* 1F35C0 802DA8B0 A7A5005A */  sh         $a1, 0x5A($sp)
    /* 1F35C4 802DA8B4 00087900 */  sll        $t7, $t0, 4
    /* 1F35C8 802DA8B8 00EF1021 */  addu       $v0, $a3, $t7
    /* 1F35CC 802DA8BC 8049000D */  lb         $t1, 0xD($v0)
    /* 1F35D0 802DA8C0 8058000C */  lb         $t8, 0xC($v0)
    /* 1F35D4 802DA8C4 AFA2003C */  sw         $v0, 0x3C($sp)
    /* 1F35D8 802DA8C8 0009C900 */  sll        $t9, $t1, 4
    /* 1F35DC 802DA8CC 00F93021 */  addu       $a2, $a3, $t9
    /* 1F35E0 802DA8D0 80CA000C */  lb         $t2, 0xC($a2)
    /* 1F35E4 802DA8D4 AFA60038 */  sw         $a2, 0x38($sp)
    /* 1F35E8 802DA8D8 A7A80058 */  sh         $t0, 0x58($sp)
    /* 1F35EC 802DA8DC A7A90056 */  sh         $t1, 0x56($sp)
    /* 1F35F0 802DA8E0 A7B80054 */  sh         $t8, 0x54($sp)
    /* 1F35F4 802DA8E4 0C02245B */  jal        func_8008916C_9811C
    /* 1F35F8 802DA8E8 A7AA0052 */   sh        $t2, 0x52($sp)
    /* 1F35FC 802DA8EC 8FA30040 */  lw         $v1, 0x40($sp)
    /* 1F3600 802DA8F0 27AB006C */  addiu      $t3, $sp, 0x6C
    /* 1F3604 802DA8F4 27AC0068 */  addiu      $t4, $sp, 0x68
    /* 1F3608 802DA8F8 27AD0064 */  addiu      $t5, $sp, 0x64
    /* 1F360C 802DA8FC 00408025 */  or         $s0, $v0, $zero
    /* 1F3610 802DA900 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 1F3614 802DA904 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 1F3618 802DA908 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 1F361C 802DA90C 02202025 */  or         $a0, $s1, $zero
    /* 1F3620 802DA910 84650000 */  lh         $a1, 0x0($v1)
    /* 1F3624 802DA914 84660002 */  lh         $a2, 0x2($v1)
    /* 1F3628 802DA918 0C04A10A */  jal        func_80128428_1373D8
    /* 1F362C 802DA91C 84670004 */   lh        $a3, 0x4($v1)
    /* 1F3630 802DA920 922F001A */  lbu        $t7, 0x1A($s1)
    /* 1F3634 802DA924 3C198025 */  lui        $t9, %hi(D_8025668C)
    /* 1F3638 802DA928 240EFFF8 */  addiu      $t6, $zero, -0x8
    /* 1F363C 802DA92C 000FC080 */  sll        $t8, $t7, 2
    /* 1F3640 802DA930 030FC023 */  subu       $t8, $t8, $t7
    /* 1F3644 802DA934 0018C080 */  sll        $t8, $t8, 2
    /* 1F3648 802DA938 030FC021 */  addu       $t8, $t8, $t7
    /* 1F364C 802DA93C 0018C0C0 */  sll        $t8, $t8, 3
    /* 1F3650 802DA940 0338C821 */  addu       $t9, $t9, $t8
    /* 1F3654 802DA944 8739668C */  lh         $t9, %lo(D_8025668C)($t9)
    /* 1F3658 802DA948 240A0001 */  addiu      $t2, $zero, 0x1
    /* 1F365C 802DA94C AFAA001C */  sw         $t2, 0x1C($sp)
    /* 1F3660 802DA950 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 1F3664 802DA954 87A4006E */  lh         $a0, 0x6E($sp)
    /* 1F3668 802DA958 87A5006A */  lh         $a1, 0x6A($sp)
    /* 1F366C 802DA95C 87A60066 */  lh         $a2, 0x66($sp)
    /* 1F3670 802DA960 24070040 */  addiu      $a3, $zero, 0x40
    /* 1F3674 802DA964 AFB00018 */  sw         $s0, 0x18($sp)
    /* 1F3678 802DA968 0C031E49 */  jal        func_800C7924_D68D4
    /* 1F367C 802DA96C AFB90014 */   sw        $t9, 0x14($sp)
    /* 1F3680 802DA970 8FA30040 */  lw         $v1, 0x40($sp)
    /* 1F3684 802DA974 862D0006 */  lh         $t5, 0x6($s1)
    /* 1F3688 802DA978 00023C00 */  sll        $a3, $v0, 16
    /* 1F368C 802DA97C 946B0006 */  lhu        $t3, 0x6($v1)
    /* 1F3690 802DA980 00077C03 */  sra        $t7, $a3, 16
    /* 1F3694 802DA984 01E03825 */  or         $a3, $t7, $zero
    /* 1F3698 802DA988 000B6023 */  negu       $t4, $t3
    /* 1F369C 802DA98C 018D2023 */  subu       $a0, $t4, $t5
    /* 1F36A0 802DA990 24844000 */  addiu      $a0, $a0, 0x4000
    /* 1F36A4 802DA994 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* 1F36A8 802DA998 01C02025 */  or         $a0, $t6, $zero
    /* 1F36AC 802DA99C 00002825 */  or         $a1, $zero, $zero
    /* 1F36B0 802DA9A0 0C03203C */  jal        func_800C80F0_D70A0
    /* 1F36B4 802DA9A4 00003025 */   or        $a2, $zero, $zero
    /* 1F36B8 802DA9A8 87A4006E */  lh         $a0, 0x6E($sp)
    /* 1F36BC 802DA9AC 87A5006A */  lh         $a1, 0x6A($sp)
    /* 1F36C0 802DA9B0 87A60066 */  lh         $a2, 0x66($sp)
    /* 1F36C4 802DA9B4 0C03824F */  jal        func_800E093C_EF8EC
    /* 1F36C8 802DA9B8 00003825 */   or        $a3, $zero, $zero
    /* 1F36CC 802DA9BC 87A4006E */  lh         $a0, 0x6E($sp)
    /* 1F36D0 802DA9C0 87A5006A */  lh         $a1, 0x6A($sp)
    /* 1F36D4 802DA9C4 87A60066 */  lh         $a2, 0x66($sp)
    /* 1F36D8 802DA9C8 0C03824F */  jal        func_800E093C_EF8EC
    /* 1F36DC 802DA9CC 2407001E */   addiu     $a3, $zero, 0x1E
    /* 1F36E0 802DA9D0 86220006 */  lh         $v0, 0x6($s1)
    /* 1F36E4 802DA9D4 8FB8006C */  lw         $t8, 0x6C($sp)
    /* 1F36E8 802DA9D8 8FB90068 */  lw         $t9, 0x68($sp)
    /* 1F36EC 802DA9DC 8FAA0064 */  lw         $t2, 0x64($sp)
    /* 1F36F0 802DA9E0 3050FFFF */  andi       $s0, $v0, 0xFFFF
    /* 1F36F4 802DA9E4 3204FFFF */  andi       $a0, $s0, 0xFFFF
    /* 1F36F8 802DA9E8 A6380014 */  sh         $t8, 0x14($s1)
    /* 1F36FC 802DA9EC A6390016 */  sh         $t9, 0x16($s1)
    /* 1F3700 802DA9F0 0C007654 */  jal        coss
    /* 1F3704 802DA9F4 A62A0018 */   sh        $t2, 0x18($s1)
    /* 1F3708 802DA9F8 44822000 */  mtc1       $v0, $f4
    /* 1F370C 802DA9FC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F3710 802DAA00 44815800 */  mtc1       $at, $f11
    /* 1F3714 802DAA04 468021A0 */  cvt.s.w    $f6, $f4
    /* 1F3718 802DAA08 44805000 */  mtc1       $zero, $f10
    /* 1F371C 802DAA0C 3C014018 */  lui        $at, (0x40180000 >> 16)
    /* 1F3720 802DAA10 44819800 */  mtc1       $at, $f19
    /* 1F3724 802DAA14 44809000 */  mtc1       $zero, $f18
    /* 1F3728 802DAA18 3204FFFF */  andi       $a0, $s0, 0xFFFF
    /* 1F372C 802DAA1C 46003221 */  cvt.d.s    $f8, $f6
    /* 1F3730 802DAA20 462A4403 */  div.d      $f16, $f8, $f10
    /* 1F3734 802DAA24 46328102 */  mul.d      $f4, $f16, $f18
    /* 1F3738 802DAA28 4620218D */  trunc.w.d  $f6, $f4
    /* 1F373C 802DAA2C 0C007660 */  jal        sins
    /* 1F3740 802DAA30 E7A60060 */   swc1      $f6, 0x60($sp)
    /* 1F3744 802DAA34 44824000 */  mtc1       $v0, $f8
    /* 1F3748 802DAA38 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 1F374C 802DAA3C 44819800 */  mtc1       $at, $f19
    /* 1F3750 802DAA40 468042A0 */  cvt.s.w    $f10, $f8
    /* 1F3754 802DAA44 44809000 */  mtc1       $zero, $f18
    /* 1F3758 802DAA48 3C014018 */  lui        $at, (0x40180000 >> 16)
    /* 1F375C 802DAA4C 44813800 */  mtc1       $at, $f7
    /* 1F3760 802DAA50 44803000 */  mtc1       $zero, $f6
    /* 1F3764 802DAA54 93A40073 */  lbu        $a0, 0x73($sp)
    /* 1F3768 802DAA58 46005421 */  cvt.d.s    $f16, $f10
    /* 1F376C 802DAA5C 87A50058 */  lh         $a1, 0x58($sp)
    /* 1F3770 802DAA60 46328103 */  div.d      $f4, $f16, $f18
    /* 1F3774 802DAA64 46262202 */  mul.d      $f8, $f4, $f6
    /* 1F3778 802DAA68 4620428D */  trunc.w.d  $f10, $f8
    /* 1F377C 802DAA6C 0C02245B */  jal        func_8008916C_9811C
    /* 1F3780 802DAA70 E7AA005C */   swc1      $f10, 0x5C($sp)
    /* 1F3784 802DAA74 8FA3003C */  lw         $v1, 0x3C($sp)
    /* 1F3788 802DAA78 27AD006C */  addiu      $t5, $sp, 0x6C
    /* 1F378C 802DAA7C 27AE0068 */  addiu      $t6, $sp, 0x68
    /* 1F3790 802DAA80 27AF0064 */  addiu      $t7, $sp, 0x64
    /* 1F3794 802DAA84 00408025 */  or         $s0, $v0, $zero
    /* 1F3798 802DAA88 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 1F379C 802DAA8C AFAE0014 */  sw         $t6, 0x14($sp)
    /* 1F37A0 802DAA90 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1F37A4 802DAA94 02202025 */  or         $a0, $s1, $zero
    /* 1F37A8 802DAA98 84650000 */  lh         $a1, 0x0($v1)
    /* 1F37AC 802DAA9C 84660002 */  lh         $a2, 0x2($v1)
    /* 1F37B0 802DAAA0 0C04A10A */  jal        func_80128428_1373D8
    /* 1F37B4 802DAAA4 84670004 */   lh        $a3, 0x4($v1)
    /* 1F37B8 802DAAA8 9239001A */  lbu        $t9, 0x1A($s1)
    /* 1F37BC 802DAAAC 3C0B8025 */  lui        $t3, %hi(D_8025668C)
    /* 1F37C0 802DAAB0 2418FFF8 */  addiu      $t8, $zero, -0x8
    /* 1F37C4 802DAAB4 00195080 */  sll        $t2, $t9, 2
    /* 1F37C8 802DAAB8 01595023 */  subu       $t2, $t2, $t9
    /* 1F37CC 802DAABC 000A5080 */  sll        $t2, $t2, 2
    /* 1F37D0 802DAAC0 01595021 */  addu       $t2, $t2, $t9
    /* 1F37D4 802DAAC4 000A50C0 */  sll        $t2, $t2, 3
    /* 1F37D8 802DAAC8 016A5821 */  addu       $t3, $t3, $t2
    /* 1F37DC 802DAACC 856B668C */  lh         $t3, %lo(D_8025668C)($t3)
    /* 1F37E0 802DAAD0 240C0001 */  addiu      $t4, $zero, 0x1
    /* 1F37E4 802DAAD4 AFAC001C */  sw         $t4, 0x1C($sp)
    /* 1F37E8 802DAAD8 AFB80010 */  sw         $t8, 0x10($sp)
    /* 1F37EC 802DAADC 87A4006E */  lh         $a0, 0x6E($sp)
    /* 1F37F0 802DAAE0 87A5006A */  lh         $a1, 0x6A($sp)
    /* 1F37F4 802DAAE4 87A60066 */  lh         $a2, 0x66($sp)
    /* 1F37F8 802DAAE8 24070040 */  addiu      $a3, $zero, 0x40
    /* 1F37FC 802DAAEC AFB00018 */  sw         $s0, 0x18($sp)
    /* 1F3800 802DAAF0 0C031E49 */  jal        func_800C7924_D68D4
    /* 1F3804 802DAAF4 AFAB0014 */   sw        $t3, 0x14($sp)
    /* 1F3808 802DAAF8 862E0006 */  lh         $t6, 0x6($s1)
    /* 1F380C 802DAAFC 240F4000 */  addiu      $t7, $zero, 0x4000
    /* 1F3810 802DAB00 00028400 */  sll        $s0, $v0, 16
    /* 1F3814 802DAB04 00023C00 */  sll        $a3, $v0, 16
    /* 1F3818 802DAB08 01EE2023 */  subu       $a0, $t7, $t6
    /* 1F381C 802DAB0C 00106C03 */  sra        $t5, $s0, 16
    /* 1F3820 802DAB10 3098FFFF */  andi       $t8, $a0, 0xFFFF
    /* 1F3824 802DAB14 0007CC03 */  sra        $t9, $a3, 16
    /* 1F3828 802DAB18 01A08025 */  or         $s0, $t5, $zero
    /* 1F382C 802DAB1C 03203825 */  or         $a3, $t9, $zero
    /* 1F3830 802DAB20 03002025 */  or         $a0, $t8, $zero
    /* 1F3834 802DAB24 00002825 */  or         $a1, $zero, $zero
    /* 1F3838 802DAB28 0C03203C */  jal        func_800C80F0_D70A0
    /* 1F383C 802DAB2C 00003025 */   or        $a2, $zero, $zero
    /* 1F3840 802DAB30 00103C00 */  sll        $a3, $s0, 16
    /* 1F3844 802DAB34 00075403 */  sra        $t2, $a3, 16
    /* 1F3848 802DAB38 01403825 */  or         $a3, $t2, $zero
    /* 1F384C 802DAB3C 00002025 */  or         $a0, $zero, $zero
    /* 1F3850 802DAB40 00002825 */  or         $a1, $zero, $zero
    /* 1F3854 802DAB44 0C032083 */  jal        func_800C820C_D71BC
    /* 1F3858 802DAB48 00003025 */   or        $a2, $zero, $zero
    /* 1F385C 802DAB4C 8FA60060 */  lw         $a2, 0x60($sp)
    /* 1F3860 802DAB50 83A4005F */  lb         $a0, 0x5F($sp)
    /* 1F3864 802DAB54 00103C00 */  sll        $a3, $s0, 16
    /* 1F3868 802DAB58 00063023 */  negu       $a2, $a2
    /* 1F386C 802DAB5C 00065E00 */  sll        $t3, $a2, 24
    /* 1F3870 802DAB60 000B3603 */  sra        $a2, $t3, 24
    /* 1F3874 802DAB64 00076C03 */  sra        $t5, $a3, 16
    /* 1F3878 802DAB68 01A03825 */  or         $a3, $t5, $zero
    /* 1F387C 802DAB6C AFA60034 */  sw         $a2, 0x34($sp)
    /* 1F3880 802DAB70 24050003 */  addiu      $a1, $zero, 0x3
    /* 1F3884 802DAB74 0C032061 */  jal        func_800C8184_D7134
    /* 1F3888 802DAB78 AFA40040 */   sw        $a0, 0x40($sp)
    /* 1F388C 802DAB7C 87A50054 */  lh         $a1, 0x54($sp)
    /* 1F3890 802DAB80 2401FFFF */  addiu      $at, $zero, -0x1
    /* 1F3894 802DAB84 50A10052 */  beql       $a1, $at, .L802DACD0_1F39E0
    /* 1F3898 802DAB88 93A40073 */   lbu       $a0, 0x73($sp)
    /* 1F389C 802DAB8C 0C02245B */  jal        func_8008916C_9811C
    /* 1F38A0 802DAB90 93A40073 */   lbu       $a0, 0x73($sp)
    /* 1F38A4 802DAB94 87AF0054 */  lh         $t7, 0x54($sp)
    /* 1F38A8 802DAB98 8FA8003C */  lw         $t0, 0x3C($sp)
    /* 1F38AC 802DAB9C 3C188015 */  lui        $t8, %hi(D_8014DD50)
    /* 1F38B0 802DABA0 2718DD50 */  addiu      $t8, $t8, %lo(D_8014DD50)
    /* 1F38B4 802DABA4 000F7100 */  sll        $t6, $t7, 4
    /* 1F38B8 802DABA8 01D81821 */  addu       $v1, $t6, $t8
    /* 1F38BC 802DABAC 84790000 */  lh         $t9, 0x0($v1)
    /* 1F38C0 802DABB0 850A0000 */  lh         $t2, 0x0($t0)
    /* 1F38C4 802DABB4 846D0002 */  lh         $t5, 0x2($v1)
    /* 1F38C8 802DABB8 850F0002 */  lh         $t7, 0x2($t0)
    /* 1F38CC 802DABBC 032A2821 */  addu       $a1, $t9, $t2
    /* 1F38D0 802DABC0 84790004 */  lh         $t9, 0x4($v1)
    /* 1F38D4 802DABC4 850A0004 */  lh         $t2, 0x4($t0)
    /* 1F38D8 802DABC8 01AF3021 */  addu       $a2, $t5, $t7
    /* 1F38DC 802DABCC 00067400 */  sll        $t6, $a2, 16
    /* 1F38E0 802DABD0 00055C00 */  sll        $t3, $a1, 16
    /* 1F38E4 802DABD4 000B2C03 */  sra        $a1, $t3, 16
    /* 1F38E8 802DABD8 000E3403 */  sra        $a2, $t6, 16
    /* 1F38EC 802DABDC 032A3821 */  addu       $a3, $t9, $t2
    /* 1F38F0 802DABE0 00075C00 */  sll        $t3, $a3, 16
    /* 1F38F4 802DABE4 27AE0064 */  addiu      $t6, $sp, 0x64
    /* 1F38F8 802DABE8 27AF0068 */  addiu      $t7, $sp, 0x68
    /* 1F38FC 802DABEC 27AD006C */  addiu      $t5, $sp, 0x6C
    /* 1F3900 802DABF0 00408025 */  or         $s0, $v0, $zero
    /* 1F3904 802DABF4 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1F3908 802DABF8 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 1F390C 802DABFC AFAE0018 */  sw         $t6, 0x18($sp)
    /* 1F3910 802DAC00 000B3C03 */  sra        $a3, $t3, 16
    /* 1F3914 802DAC04 0C04A10A */  jal        func_80128428_1373D8
    /* 1F3918 802DAC08 02202025 */   or        $a0, $s1, $zero
    /* 1F391C 802DAC0C 9239001A */  lbu        $t9, 0x1A($s1)
    /* 1F3920 802DAC10 3C0B8025 */  lui        $t3, %hi(D_8025668C)
    /* 1F3924 802DAC14 2418FFF8 */  addiu      $t8, $zero, -0x8
    /* 1F3928 802DAC18 00195080 */  sll        $t2, $t9, 2
    /* 1F392C 802DAC1C 01595023 */  subu       $t2, $t2, $t9
    /* 1F3930 802DAC20 000A5080 */  sll        $t2, $t2, 2
    /* 1F3934 802DAC24 01595021 */  addu       $t2, $t2, $t9
    /* 1F3938 802DAC28 000A50C0 */  sll        $t2, $t2, 3
    /* 1F393C 802DAC2C 016A5821 */  addu       $t3, $t3, $t2
    /* 1F3940 802DAC30 856B668C */  lh         $t3, %lo(D_8025668C)($t3)
    /* 1F3944 802DAC34 240C0001 */  addiu      $t4, $zero, 0x1
    /* 1F3948 802DAC38 AFAC001C */  sw         $t4, 0x1C($sp)
    /* 1F394C 802DAC3C AFB80010 */  sw         $t8, 0x10($sp)
    /* 1F3950 802DAC40 87A4006E */  lh         $a0, 0x6E($sp)
    /* 1F3954 802DAC44 87A5006A */  lh         $a1, 0x6A($sp)
    /* 1F3958 802DAC48 87A60066 */  lh         $a2, 0x66($sp)
    /* 1F395C 802DAC4C 24070040 */  addiu      $a3, $zero, 0x40
    /* 1F3960 802DAC50 AFB00018 */  sw         $s0, 0x18($sp)
    /* 1F3964 802DAC54 0C031E49 */  jal        func_800C7924_D68D4
    /* 1F3968 802DAC58 AFAB0014 */   sw        $t3, 0x14($sp)
    /* 1F396C 802DAC5C 862F0006 */  lh         $t7, 0x6($s1)
    /* 1F3970 802DAC60 240E4000 */  addiu      $t6, $zero, 0x4000
    /* 1F3974 802DAC64 00028400 */  sll        $s0, $v0, 16
    /* 1F3978 802DAC68 00023C00 */  sll        $a3, $v0, 16
    /* 1F397C 802DAC6C 01CF2023 */  subu       $a0, $t6, $t7
    /* 1F3980 802DAC70 00106C03 */  sra        $t5, $s0, 16
    /* 1F3984 802DAC74 3098FFFF */  andi       $t8, $a0, 0xFFFF
    /* 1F3988 802DAC78 0007CC03 */  sra        $t9, $a3, 16
    /* 1F398C 802DAC7C 01A08025 */  or         $s0, $t5, $zero
    /* 1F3990 802DAC80 03203825 */  or         $a3, $t9, $zero
    /* 1F3994 802DAC84 03002025 */  or         $a0, $t8, $zero
    /* 1F3998 802DAC88 00002825 */  or         $a1, $zero, $zero
    /* 1F399C 802DAC8C 0C03203C */  jal        func_800C80F0_D70A0
    /* 1F39A0 802DAC90 00003025 */   or        $a2, $zero, $zero
    /* 1F39A4 802DAC94 00103C00 */  sll        $a3, $s0, 16
    /* 1F39A8 802DAC98 00075403 */  sra        $t2, $a3, 16
    /* 1F39AC 802DAC9C 01403825 */  or         $a3, $t2, $zero
    /* 1F39B0 802DACA0 00002025 */  or         $a0, $zero, $zero
    /* 1F39B4 802DACA4 00002825 */  or         $a1, $zero, $zero
    /* 1F39B8 802DACA8 0C032083 */  jal        func_800C820C_D71BC
    /* 1F39BC 802DACAC 00003025 */   or        $a2, $zero, $zero
    /* 1F39C0 802DACB0 00103C00 */  sll        $a3, $s0, 16
    /* 1F39C4 802DACB4 00075C03 */  sra        $t3, $a3, 16
    /* 1F39C8 802DACB8 01603825 */  or         $a3, $t3, $zero
    /* 1F39CC 802DACBC 83A40043 */  lb         $a0, 0x43($sp)
    /* 1F39D0 802DACC0 24050003 */  addiu      $a1, $zero, 0x3
    /* 1F39D4 802DACC4 0C032061 */  jal        func_800C8184_D7134
    /* 1F39D8 802DACC8 83A60037 */   lb        $a2, 0x37($sp)
    /* 1F39DC 802DACCC 93A40073 */  lbu        $a0, 0x73($sp)
  .L802DACD0_1F39E0:
    /* 1F39E0 802DACD0 0C02245B */  jal        func_8008916C_9811C
    /* 1F39E4 802DACD4 87A50056 */   lh        $a1, 0x56($sp)
    /* 1F39E8 802DACD8 8FA30038 */  lw         $v1, 0x38($sp)
    /* 1F39EC 802DACDC 27AC006C */  addiu      $t4, $sp, 0x6C
    /* 1F39F0 802DACE0 27AD0068 */  addiu      $t5, $sp, 0x68
    /* 1F39F4 802DACE4 27AE0064 */  addiu      $t6, $sp, 0x64
    /* 1F39F8 802DACE8 00408025 */  or         $s0, $v0, $zero
    /* 1F39FC 802DACEC AFAE0018 */  sw         $t6, 0x18($sp)
    /* 1F3A00 802DACF0 AFAD0014 */  sw         $t5, 0x14($sp)
    /* 1F3A04 802DACF4 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 1F3A08 802DACF8 02202025 */  or         $a0, $s1, $zero
    /* 1F3A0C 802DACFC 84650000 */  lh         $a1, 0x0($v1)
    /* 1F3A10 802DAD00 84660002 */  lh         $a2, 0x2($v1)
    /* 1F3A14 802DAD04 0C04A10A */  jal        func_80128428_1373D8
    /* 1F3A18 802DAD08 84670004 */   lh        $a3, 0x4($v1)
    /* 1F3A1C 802DAD0C 9238001A */  lbu        $t8, 0x1A($s1)
    /* 1F3A20 802DAD10 3C0A8025 */  lui        $t2, %hi(D_8025668C)
    /* 1F3A24 802DAD14 240FFFF8 */  addiu      $t7, $zero, -0x8
    /* 1F3A28 802DAD18 0018C880 */  sll        $t9, $t8, 2
    /* 1F3A2C 802DAD1C 0338C823 */  subu       $t9, $t9, $t8
    /* 1F3A30 802DAD20 0019C880 */  sll        $t9, $t9, 2
    /* 1F3A34 802DAD24 0338C821 */  addu       $t9, $t9, $t8
    /* 1F3A38 802DAD28 0019C8C0 */  sll        $t9, $t9, 3
    /* 1F3A3C 802DAD2C 01595021 */  addu       $t2, $t2, $t9
    /* 1F3A40 802DAD30 854A668C */  lh         $t2, %lo(D_8025668C)($t2)
    /* 1F3A44 802DAD34 240B0001 */  addiu      $t3, $zero, 0x1
    /* 1F3A48 802DAD38 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 1F3A4C 802DAD3C AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F3A50 802DAD40 87A4006E */  lh         $a0, 0x6E($sp)
    /* 1F3A54 802DAD44 87A5006A */  lh         $a1, 0x6A($sp)
    /* 1F3A58 802DAD48 87A60066 */  lh         $a2, 0x66($sp)
    /* 1F3A5C 802DAD4C 24070040 */  addiu      $a3, $zero, 0x40
    /* 1F3A60 802DAD50 AFB00018 */  sw         $s0, 0x18($sp)
    /* 1F3A64 802DAD54 0C031E49 */  jal        func_800C7924_D68D4
    /* 1F3A68 802DAD58 AFAA0014 */   sw        $t2, 0x14($sp)
    /* 1F3A6C 802DAD5C 862D0006 */  lh         $t5, 0x6($s1)
    /* 1F3A70 802DAD60 240E4000 */  addiu      $t6, $zero, 0x4000
    /* 1F3A74 802DAD64 00028400 */  sll        $s0, $v0, 16
    /* 1F3A78 802DAD68 00023C00 */  sll        $a3, $v0, 16
    /* 1F3A7C 802DAD6C 01CD2023 */  subu       $a0, $t6, $t5
    /* 1F3A80 802DAD70 00106403 */  sra        $t4, $s0, 16
    /* 1F3A84 802DAD74 308FFFFF */  andi       $t7, $a0, 0xFFFF
    /* 1F3A88 802DAD78 0007C403 */  sra        $t8, $a3, 16
    /* 1F3A8C 802DAD7C 01808025 */  or         $s0, $t4, $zero
    /* 1F3A90 802DAD80 03003825 */  or         $a3, $t8, $zero
    /* 1F3A94 802DAD84 01E02025 */  or         $a0, $t7, $zero
    /* 1F3A98 802DAD88 00002825 */  or         $a1, $zero, $zero
    /* 1F3A9C 802DAD8C 0C03203C */  jal        func_800C80F0_D70A0
    /* 1F3AA0 802DAD90 00003025 */   or        $a2, $zero, $zero
    /* 1F3AA4 802DAD94 00103C00 */  sll        $a3, $s0, 16
    /* 1F3AA8 802DAD98 0007CC03 */  sra        $t9, $a3, 16
    /* 1F3AAC 802DAD9C 03203825 */  or         $a3, $t9, $zero
    /* 1F3AB0 802DADA0 00002025 */  or         $a0, $zero, $zero
    /* 1F3AB4 802DADA4 00002825 */  or         $a1, $zero, $zero
    /* 1F3AB8 802DADA8 0C032083 */  jal        func_800C820C_D71BC
    /* 1F3ABC 802DADAC 00003025 */   or        $a2, $zero, $zero
    /* 1F3AC0 802DADB0 8FA4005C */  lw         $a0, 0x5C($sp)
    /* 1F3AC4 802DADB4 83A60063 */  lb         $a2, 0x63($sp)
    /* 1F3AC8 802DADB8 00103C00 */  sll        $a3, $s0, 16
    /* 1F3ACC 802DADBC 00042023 */  negu       $a0, $a0
    /* 1F3AD0 802DADC0 00045600 */  sll        $t2, $a0, 24
    /* 1F3AD4 802DADC4 000A2603 */  sra        $a0, $t2, 24
    /* 1F3AD8 802DADC8 00076403 */  sra        $t4, $a3, 16
    /* 1F3ADC 802DADCC 01803825 */  or         $a3, $t4, $zero
    /* 1F3AE0 802DADD0 AFA40040 */  sw         $a0, 0x40($sp)
    /* 1F3AE4 802DADD4 24050003 */  addiu      $a1, $zero, 0x3
    /* 1F3AE8 802DADD8 0C032061 */  jal        func_800C8184_D7134
    /* 1F3AEC 802DADDC AFA6003C */   sw        $a2, 0x3C($sp)
    /* 1F3AF0 802DADE0 87A50052 */  lh         $a1, 0x52($sp)
    /* 1F3AF4 802DADE4 2401FFFF */  addiu      $at, $zero, -0x1
    /* 1F3AF8 802DADE8 10A10051 */  beq        $a1, $at, .L802DAF30_1F3C40
    /* 1F3AFC 802DADEC 00000000 */   nop
    /* 1F3B00 802DADF0 0C02245B */  jal        func_8008916C_9811C
    /* 1F3B04 802DADF4 93A40073 */   lbu       $a0, 0x73($sp)
    /* 1F3B08 802DADF8 87AE0052 */  lh         $t6, 0x52($sp)
    /* 1F3B0C 802DADFC 8FA80038 */  lw         $t0, 0x38($sp)
    /* 1F3B10 802DAE00 3C0F8015 */  lui        $t7, %hi(D_8014DD50)
    /* 1F3B14 802DAE04 25EFDD50 */  addiu      $t7, $t7, %lo(D_8014DD50)
    /* 1F3B18 802DAE08 000E6900 */  sll        $t5, $t6, 4
    /* 1F3B1C 802DAE0C 01AF1821 */  addu       $v1, $t5, $t7
    /* 1F3B20 802DAE10 84780000 */  lh         $t8, 0x0($v1)
    /* 1F3B24 802DAE14 85190000 */  lh         $t9, 0x0($t0)
    /* 1F3B28 802DAE18 846C0002 */  lh         $t4, 0x2($v1)
    /* 1F3B2C 802DAE1C 850E0002 */  lh         $t6, 0x2($t0)
    /* 1F3B30 802DAE20 03192821 */  addu       $a1, $t8, $t9
    /* 1F3B34 802DAE24 84780004 */  lh         $t8, 0x4($v1)
    /* 1F3B38 802DAE28 85190004 */  lh         $t9, 0x4($t0)
    /* 1F3B3C 802DAE2C 018E3021 */  addu       $a2, $t4, $t6
    /* 1F3B40 802DAE30 00066C00 */  sll        $t5, $a2, 16
    /* 1F3B44 802DAE34 00055400 */  sll        $t2, $a1, 16
    /* 1F3B48 802DAE38 000A2C03 */  sra        $a1, $t2, 16
    /* 1F3B4C 802DAE3C 000D3403 */  sra        $a2, $t5, 16
    /* 1F3B50 802DAE40 03193821 */  addu       $a3, $t8, $t9
    /* 1F3B54 802DAE44 00075400 */  sll        $t2, $a3, 16
    /* 1F3B58 802DAE48 27AD0064 */  addiu      $t5, $sp, 0x64
    /* 1F3B5C 802DAE4C 27AE0068 */  addiu      $t6, $sp, 0x68
    /* 1F3B60 802DAE50 27AC006C */  addiu      $t4, $sp, 0x6C
    /* 1F3B64 802DAE54 00408025 */  or         $s0, $v0, $zero
    /* 1F3B68 802DAE58 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 1F3B6C 802DAE5C AFAE0014 */  sw         $t6, 0x14($sp)
    /* 1F3B70 802DAE60 AFAD0018 */  sw         $t5, 0x18($sp)
    /* 1F3B74 802DAE64 000A3C03 */  sra        $a3, $t2, 16
    /* 1F3B78 802DAE68 0C04A10A */  jal        func_80128428_1373D8
    /* 1F3B7C 802DAE6C 02202025 */   or        $a0, $s1, $zero
    /* 1F3B80 802DAE70 9238001A */  lbu        $t8, 0x1A($s1)
    /* 1F3B84 802DAE74 3C0A8025 */  lui        $t2, %hi(D_8025668C)
    /* 1F3B88 802DAE78 240FFFF8 */  addiu      $t7, $zero, -0x8
    /* 1F3B8C 802DAE7C 0018C880 */  sll        $t9, $t8, 2
    /* 1F3B90 802DAE80 0338C823 */  subu       $t9, $t9, $t8
    /* 1F3B94 802DAE84 0019C880 */  sll        $t9, $t9, 2
    /* 1F3B98 802DAE88 0338C821 */  addu       $t9, $t9, $t8
    /* 1F3B9C 802DAE8C 0019C8C0 */  sll        $t9, $t9, 3
    /* 1F3BA0 802DAE90 01595021 */  addu       $t2, $t2, $t9
    /* 1F3BA4 802DAE94 854A668C */  lh         $t2, %lo(D_8025668C)($t2)
    /* 1F3BA8 802DAE98 240B0001 */  addiu      $t3, $zero, 0x1
    /* 1F3BAC 802DAE9C AFAB001C */  sw         $t3, 0x1C($sp)
    /* 1F3BB0 802DAEA0 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 1F3BB4 802DAEA4 87A4006E */  lh         $a0, 0x6E($sp)
    /* 1F3BB8 802DAEA8 87A5006A */  lh         $a1, 0x6A($sp)
    /* 1F3BBC 802DAEAC 87A60066 */  lh         $a2, 0x66($sp)
    /* 1F3BC0 802DAEB0 24070040 */  addiu      $a3, $zero, 0x40
    /* 1F3BC4 802DAEB4 AFB00018 */  sw         $s0, 0x18($sp)
    /* 1F3BC8 802DAEB8 0C031E49 */  jal        func_800C7924_D68D4
    /* 1F3BCC 802DAEBC AFAA0014 */   sw        $t2, 0x14($sp)
    /* 1F3BD0 802DAEC0 862E0006 */  lh         $t6, 0x6($s1)
    /* 1F3BD4 802DAEC4 240D4000 */  addiu      $t5, $zero, 0x4000
    /* 1F3BD8 802DAEC8 00028400 */  sll        $s0, $v0, 16
    /* 1F3BDC 802DAECC 00023C00 */  sll        $a3, $v0, 16
    /* 1F3BE0 802DAED0 01AE2023 */  subu       $a0, $t5, $t6
    /* 1F3BE4 802DAED4 00106403 */  sra        $t4, $s0, 16
    /* 1F3BE8 802DAED8 308FFFFF */  andi       $t7, $a0, 0xFFFF
    /* 1F3BEC 802DAEDC 0007C403 */  sra        $t8, $a3, 16
    /* 1F3BF0 802DAEE0 01808025 */  or         $s0, $t4, $zero
    /* 1F3BF4 802DAEE4 03003825 */  or         $a3, $t8, $zero
    /* 1F3BF8 802DAEE8 01E02025 */  or         $a0, $t7, $zero
    /* 1F3BFC 802DAEEC 00002825 */  or         $a1, $zero, $zero
    /* 1F3C00 802DAEF0 0C03203C */  jal        func_800C80F0_D70A0
    /* 1F3C04 802DAEF4 00003025 */   or        $a2, $zero, $zero
    /* 1F3C08 802DAEF8 00103C00 */  sll        $a3, $s0, 16
    /* 1F3C0C 802DAEFC 0007CC03 */  sra        $t9, $a3, 16
    /* 1F3C10 802DAF00 03203825 */  or         $a3, $t9, $zero
    /* 1F3C14 802DAF04 00002025 */  or         $a0, $zero, $zero
    /* 1F3C18 802DAF08 00002825 */  or         $a1, $zero, $zero
    /* 1F3C1C 802DAF0C 0C032083 */  jal        func_800C820C_D71BC
    /* 1F3C20 802DAF10 00003025 */   or        $a2, $zero, $zero
    /* 1F3C24 802DAF14 00103C00 */  sll        $a3, $s0, 16
    /* 1F3C28 802DAF18 00075403 */  sra        $t2, $a3, 16
    /* 1F3C2C 802DAF1C 01403825 */  or         $a3, $t2, $zero
    /* 1F3C30 802DAF20 83A40043 */  lb         $a0, 0x43($sp)
    /* 1F3C34 802DAF24 24050003 */  addiu      $a1, $zero, 0x3
    /* 1F3C38 802DAF28 0C032061 */  jal        func_800C8184_D7134
    /* 1F3C3C 802DAF2C 83A6003F */   lb        $a2, 0x3F($sp)
  .L802DAF30_1F3C40:
    /* 1F3C40 802DAF30 0C022384 */  jal        func_80088E10_97DC0
    /* 1F3C44 802DAF34 87A4005A */   lh        $a0, 0x5A($sp)
    /* 1F3C48 802DAF38 0C022384 */  jal        func_80088E10_97DC0
    /* 1F3C4C 802DAF3C 87A40058 */   lh        $a0, 0x58($sp)
    /* 1F3C50 802DAF40 0C022384 */  jal        func_80088E10_97DC0
    /* 1F3C54 802DAF44 87A40056 */   lh        $a0, 0x56($sp)
  .L802DAF48_1F3C58:
    /* 1F3C58 802DAF48 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 1F3C5C 802DAF4C 8FB00024 */  lw         $s0, 0x24($sp)
    /* 1F3C60 802DAF50 8FB10028 */  lw         $s1, 0x28($sp)
    /* 1F3C64 802DAF54 03E00008 */  jr         $ra
    /* 1F3C68 802DAF58 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_802DA844_1F3554
