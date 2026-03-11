nonmatching func_802D9C60_192770, 0x718

glabel func_802D9C60_192770
    /* 192770 802D9C60 308E00FF */  andi       $t6, $a0, 0xFF
    /* 192774 802D9C64 000E7880 */  sll        $t7, $t6, 2
    /* 192778 802D9C68 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 19277C 802D9C6C 01EE7821 */  addu       $t7, $t7, $t6
    /* 192780 802D9C70 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 192784 802D9C74 AFB10028 */  sw         $s1, 0x28($sp)
    /* 192788 802D9C78 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 19278C 802D9C7C 000F7900 */  sll        $t7, $t7, 4
    /* 192790 802D9C80 01F88821 */  addu       $s1, $t7, $t8
    /* 192794 802D9C84 8E390020 */  lw         $t9, 0x20($s1)
    /* 192798 802D9C88 AFA40070 */  sw         $a0, 0x70($sp)
    /* 19279C 802D9C8C 01C02025 */  or         $a0, $t6, $zero
    /* 1927A0 802D9C90 332A0600 */  andi       $t2, $t9, 0x600
    /* 1927A4 802D9C94 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 1927A8 802D9C98 114001B2 */  beqz       $t2, .L802DA364_192E74
    /* 1927AC 802D9C9C AFB00024 */   sw        $s0, 0x24($sp)
    /* 1927B0 802D9CA0 862B000C */  lh         $t3, 0xC($s1)
    /* 1927B4 802D9CA4 3C078015 */  lui        $a3, %hi(D_8014DD50)
    /* 1927B8 802D9CA8 24E7DD50 */  addiu      $a3, $a3, %lo(D_8014DD50)
    /* 1927BC 802D9CAC 000B6100 */  sll        $t4, $t3, 4
    /* 1927C0 802D9CB0 00EC6821 */  addu       $t5, $a3, $t4
    /* 1927C4 802D9CB4 81A5000C */  lb         $a1, 0xC($t5)
    /* 1927C8 802D9CB8 A3A40073 */  sb         $a0, 0x73($sp)
    /* 1927CC 802D9CBC 00057100 */  sll        $t6, $a1, 4
    /* 1927D0 802D9CC0 00EE1821 */  addu       $v1, $a3, $t6
    /* 1927D4 802D9CC4 8068000D */  lb         $t0, 0xD($v1)
    /* 1927D8 802D9CC8 AFA30040 */  sw         $v1, 0x40($sp)
    /* 1927DC 802D9CCC A7A5005A */  sh         $a1, 0x5A($sp)
    /* 1927E0 802D9CD0 00087900 */  sll        $t7, $t0, 4
    /* 1927E4 802D9CD4 00EF1021 */  addu       $v0, $a3, $t7
    /* 1927E8 802D9CD8 8049000D */  lb         $t1, 0xD($v0)
    /* 1927EC 802D9CDC 8058000C */  lb         $t8, 0xC($v0)
    /* 1927F0 802D9CE0 AFA2003C */  sw         $v0, 0x3C($sp)
    /* 1927F4 802D9CE4 0009C900 */  sll        $t9, $t1, 4
    /* 1927F8 802D9CE8 00F93021 */  addu       $a2, $a3, $t9
    /* 1927FC 802D9CEC 80CA000C */  lb         $t2, 0xC($a2)
    /* 192800 802D9CF0 AFA60038 */  sw         $a2, 0x38($sp)
    /* 192804 802D9CF4 A7A80058 */  sh         $t0, 0x58($sp)
    /* 192808 802D9CF8 A7A90056 */  sh         $t1, 0x56($sp)
    /* 19280C 802D9CFC A7B80054 */  sh         $t8, 0x54($sp)
    /* 192810 802D9D00 0C02245B */  jal        func_8008916C_9811C
    /* 192814 802D9D04 A7AA0052 */   sh        $t2, 0x52($sp)
    /* 192818 802D9D08 8FA30040 */  lw         $v1, 0x40($sp)
    /* 19281C 802D9D0C 27AB006C */  addiu      $t3, $sp, 0x6C
    /* 192820 802D9D10 27AC0068 */  addiu      $t4, $sp, 0x68
    /* 192824 802D9D14 27AD0064 */  addiu      $t5, $sp, 0x64
    /* 192828 802D9D18 00408025 */  or         $s0, $v0, $zero
    /* 19282C 802D9D1C AFAD0018 */  sw         $t5, 0x18($sp)
    /* 192830 802D9D20 AFAC0014 */  sw         $t4, 0x14($sp)
    /* 192834 802D9D24 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 192838 802D9D28 02202025 */  or         $a0, $s1, $zero
    /* 19283C 802D9D2C 84650000 */  lh         $a1, 0x0($v1)
    /* 192840 802D9D30 84660002 */  lh         $a2, 0x2($v1)
    /* 192844 802D9D34 0C04A10A */  jal        func_80128428_1373D8
    /* 192848 802D9D38 84670004 */   lh        $a3, 0x4($v1)
    /* 19284C 802D9D3C 922F001A */  lbu        $t7, 0x1A($s1)
    /* 192850 802D9D40 3C198025 */  lui        $t9, %hi(D_8025668C)
    /* 192854 802D9D44 240EFFF8 */  addiu      $t6, $zero, -0x8
    /* 192858 802D9D48 000FC080 */  sll        $t8, $t7, 2
    /* 19285C 802D9D4C 030FC023 */  subu       $t8, $t8, $t7
    /* 192860 802D9D50 0018C080 */  sll        $t8, $t8, 2
    /* 192864 802D9D54 030FC021 */  addu       $t8, $t8, $t7
    /* 192868 802D9D58 0018C0C0 */  sll        $t8, $t8, 3
    /* 19286C 802D9D5C 0338C821 */  addu       $t9, $t9, $t8
    /* 192870 802D9D60 8739668C */  lh         $t9, %lo(D_8025668C)($t9)
    /* 192874 802D9D64 240A0001 */  addiu      $t2, $zero, 0x1
    /* 192878 802D9D68 AFAA001C */  sw         $t2, 0x1C($sp)
    /* 19287C 802D9D6C AFAE0010 */  sw         $t6, 0x10($sp)
    /* 192880 802D9D70 87A4006E */  lh         $a0, 0x6E($sp)
    /* 192884 802D9D74 87A5006A */  lh         $a1, 0x6A($sp)
    /* 192888 802D9D78 87A60066 */  lh         $a2, 0x66($sp)
    /* 19288C 802D9D7C 24070040 */  addiu      $a3, $zero, 0x40
    /* 192890 802D9D80 AFB00018 */  sw         $s0, 0x18($sp)
    /* 192894 802D9D84 0C031E49 */  jal        func_800C7924_D68D4
    /* 192898 802D9D88 AFB90014 */   sw        $t9, 0x14($sp)
    /* 19289C 802D9D8C 8FA30040 */  lw         $v1, 0x40($sp)
    /* 1928A0 802D9D90 862D0006 */  lh         $t5, 0x6($s1)
    /* 1928A4 802D9D94 00023C00 */  sll        $a3, $v0, 16
    /* 1928A8 802D9D98 946B0006 */  lhu        $t3, 0x6($v1)
    /* 1928AC 802D9D9C 00077C03 */  sra        $t7, $a3, 16
    /* 1928B0 802D9DA0 01E03825 */  or         $a3, $t7, $zero
    /* 1928B4 802D9DA4 000B6023 */  negu       $t4, $t3
    /* 1928B8 802D9DA8 018D2023 */  subu       $a0, $t4, $t5
    /* 1928BC 802D9DAC 24844000 */  addiu      $a0, $a0, 0x4000
    /* 1928C0 802D9DB0 308EFFFF */  andi       $t6, $a0, 0xFFFF
    /* 1928C4 802D9DB4 01C02025 */  or         $a0, $t6, $zero
    /* 1928C8 802D9DB8 00002825 */  or         $a1, $zero, $zero
    /* 1928CC 802D9DBC 0C03203C */  jal        func_800C80F0_D70A0
    /* 1928D0 802D9DC0 00003025 */   or        $a2, $zero, $zero
    /* 1928D4 802D9DC4 87A4006E */  lh         $a0, 0x6E($sp)
    /* 1928D8 802D9DC8 87A5006A */  lh         $a1, 0x6A($sp)
    /* 1928DC 802D9DCC 87A60066 */  lh         $a2, 0x66($sp)
    /* 1928E0 802D9DD0 0C03824F */  jal        func_800E093C_EF8EC
    /* 1928E4 802D9DD4 00003825 */   or        $a3, $zero, $zero
    /* 1928E8 802D9DD8 87A4006E */  lh         $a0, 0x6E($sp)
    /* 1928EC 802D9DDC 87A5006A */  lh         $a1, 0x6A($sp)
    /* 1928F0 802D9DE0 87A60066 */  lh         $a2, 0x66($sp)
    /* 1928F4 802D9DE4 0C03824F */  jal        func_800E093C_EF8EC
    /* 1928F8 802D9DE8 2407001E */   addiu     $a3, $zero, 0x1E
    /* 1928FC 802D9DEC 86220006 */  lh         $v0, 0x6($s1)
    /* 192900 802D9DF0 8FB8006C */  lw         $t8, 0x6C($sp)
    /* 192904 802D9DF4 8FB90068 */  lw         $t9, 0x68($sp)
    /* 192908 802D9DF8 8FAA0064 */  lw         $t2, 0x64($sp)
    /* 19290C 802D9DFC 3050FFFF */  andi       $s0, $v0, 0xFFFF
    /* 192910 802D9E00 3204FFFF */  andi       $a0, $s0, 0xFFFF
    /* 192914 802D9E04 A6380014 */  sh         $t8, 0x14($s1)
    /* 192918 802D9E08 A6390016 */  sh         $t9, 0x16($s1)
    /* 19291C 802D9E0C 0C007654 */  jal        coss
    /* 192920 802D9E10 A62A0018 */   sh        $t2, 0x18($s1)
    /* 192924 802D9E14 44822000 */  mtc1       $v0, $f4
    /* 192928 802D9E18 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 19292C 802D9E1C 44815800 */  mtc1       $at, $f11
    /* 192930 802D9E20 468021A0 */  cvt.s.w    $f6, $f4
    /* 192934 802D9E24 44805000 */  mtc1       $zero, $f10
    /* 192938 802D9E28 3C014018 */  lui        $at, (0x40180000 >> 16)
    /* 19293C 802D9E2C 44819800 */  mtc1       $at, $f19
    /* 192940 802D9E30 44809000 */  mtc1       $zero, $f18
    /* 192944 802D9E34 3204FFFF */  andi       $a0, $s0, 0xFFFF
    /* 192948 802D9E38 46003221 */  cvt.d.s    $f8, $f6
    /* 19294C 802D9E3C 462A4403 */  div.d      $f16, $f8, $f10
    /* 192950 802D9E40 46328102 */  mul.d      $f4, $f16, $f18
    /* 192954 802D9E44 4620218D */  trunc.w.d  $f6, $f4
    /* 192958 802D9E48 0C007660 */  jal        sins
    /* 19295C 802D9E4C E7A60060 */   swc1      $f6, 0x60($sp)
    /* 192960 802D9E50 44824000 */  mtc1       $v0, $f8
    /* 192964 802D9E54 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 192968 802D9E58 44819800 */  mtc1       $at, $f19
    /* 19296C 802D9E5C 468042A0 */  cvt.s.w    $f10, $f8
    /* 192970 802D9E60 44809000 */  mtc1       $zero, $f18
    /* 192974 802D9E64 3C014018 */  lui        $at, (0x40180000 >> 16)
    /* 192978 802D9E68 44813800 */  mtc1       $at, $f7
    /* 19297C 802D9E6C 44803000 */  mtc1       $zero, $f6
    /* 192980 802D9E70 93A40073 */  lbu        $a0, 0x73($sp)
    /* 192984 802D9E74 46005421 */  cvt.d.s    $f16, $f10
    /* 192988 802D9E78 87A50058 */  lh         $a1, 0x58($sp)
    /* 19298C 802D9E7C 46328103 */  div.d      $f4, $f16, $f18
    /* 192990 802D9E80 46262202 */  mul.d      $f8, $f4, $f6
    /* 192994 802D9E84 4620428D */  trunc.w.d  $f10, $f8
    /* 192998 802D9E88 0C02245B */  jal        func_8008916C_9811C
    /* 19299C 802D9E8C E7AA005C */   swc1      $f10, 0x5C($sp)
    /* 1929A0 802D9E90 8FA3003C */  lw         $v1, 0x3C($sp)
    /* 1929A4 802D9E94 27AD006C */  addiu      $t5, $sp, 0x6C
    /* 1929A8 802D9E98 27AE0068 */  addiu      $t6, $sp, 0x68
    /* 1929AC 802D9E9C 27AF0064 */  addiu      $t7, $sp, 0x64
    /* 1929B0 802D9EA0 00408025 */  or         $s0, $v0, $zero
    /* 1929B4 802D9EA4 AFAF0018 */  sw         $t7, 0x18($sp)
    /* 1929B8 802D9EA8 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 1929BC 802D9EAC AFAD0010 */  sw         $t5, 0x10($sp)
    /* 1929C0 802D9EB0 02202025 */  or         $a0, $s1, $zero
    /* 1929C4 802D9EB4 84650000 */  lh         $a1, 0x0($v1)
    /* 1929C8 802D9EB8 84660002 */  lh         $a2, 0x2($v1)
    /* 1929CC 802D9EBC 0C04A10A */  jal        func_80128428_1373D8
    /* 1929D0 802D9EC0 84670004 */   lh        $a3, 0x4($v1)
    /* 1929D4 802D9EC4 9239001A */  lbu        $t9, 0x1A($s1)
    /* 1929D8 802D9EC8 3C0B8025 */  lui        $t3, %hi(D_8025668C)
    /* 1929DC 802D9ECC 2418FFF8 */  addiu      $t8, $zero, -0x8
    /* 1929E0 802D9ED0 00195080 */  sll        $t2, $t9, 2
    /* 1929E4 802D9ED4 01595023 */  subu       $t2, $t2, $t9
    /* 1929E8 802D9ED8 000A5080 */  sll        $t2, $t2, 2
    /* 1929EC 802D9EDC 01595021 */  addu       $t2, $t2, $t9
    /* 1929F0 802D9EE0 000A50C0 */  sll        $t2, $t2, 3
    /* 1929F4 802D9EE4 016A5821 */  addu       $t3, $t3, $t2
    /* 1929F8 802D9EE8 856B668C */  lh         $t3, %lo(D_8025668C)($t3)
    /* 1929FC 802D9EEC 240C0001 */  addiu      $t4, $zero, 0x1
    /* 192A00 802D9EF0 AFAC001C */  sw         $t4, 0x1C($sp)
    /* 192A04 802D9EF4 AFB80010 */  sw         $t8, 0x10($sp)
    /* 192A08 802D9EF8 87A4006E */  lh         $a0, 0x6E($sp)
    /* 192A0C 802D9EFC 87A5006A */  lh         $a1, 0x6A($sp)
    /* 192A10 802D9F00 87A60066 */  lh         $a2, 0x66($sp)
    /* 192A14 802D9F04 24070040 */  addiu      $a3, $zero, 0x40
    /* 192A18 802D9F08 AFB00018 */  sw         $s0, 0x18($sp)
    /* 192A1C 802D9F0C 0C031E49 */  jal        func_800C7924_D68D4
    /* 192A20 802D9F10 AFAB0014 */   sw        $t3, 0x14($sp)
    /* 192A24 802D9F14 862E0006 */  lh         $t6, 0x6($s1)
    /* 192A28 802D9F18 240F4000 */  addiu      $t7, $zero, 0x4000
    /* 192A2C 802D9F1C 00028400 */  sll        $s0, $v0, 16
    /* 192A30 802D9F20 00023C00 */  sll        $a3, $v0, 16
    /* 192A34 802D9F24 01EE2023 */  subu       $a0, $t7, $t6
    /* 192A38 802D9F28 00106C03 */  sra        $t5, $s0, 16
    /* 192A3C 802D9F2C 3098FFFF */  andi       $t8, $a0, 0xFFFF
    /* 192A40 802D9F30 0007CC03 */  sra        $t9, $a3, 16
    /* 192A44 802D9F34 01A08025 */  or         $s0, $t5, $zero
    /* 192A48 802D9F38 03203825 */  or         $a3, $t9, $zero
    /* 192A4C 802D9F3C 03002025 */  or         $a0, $t8, $zero
    /* 192A50 802D9F40 00002825 */  or         $a1, $zero, $zero
    /* 192A54 802D9F44 0C03203C */  jal        func_800C80F0_D70A0
    /* 192A58 802D9F48 00003025 */   or        $a2, $zero, $zero
    /* 192A5C 802D9F4C 00103C00 */  sll        $a3, $s0, 16
    /* 192A60 802D9F50 00075403 */  sra        $t2, $a3, 16
    /* 192A64 802D9F54 01403825 */  or         $a3, $t2, $zero
    /* 192A68 802D9F58 00002025 */  or         $a0, $zero, $zero
    /* 192A6C 802D9F5C 00002825 */  or         $a1, $zero, $zero
    /* 192A70 802D9F60 0C032083 */  jal        func_800C820C_D71BC
    /* 192A74 802D9F64 00003025 */   or        $a2, $zero, $zero
    /* 192A78 802D9F68 8FA60060 */  lw         $a2, 0x60($sp)
    /* 192A7C 802D9F6C 83A4005F */  lb         $a0, 0x5F($sp)
    /* 192A80 802D9F70 00103C00 */  sll        $a3, $s0, 16
    /* 192A84 802D9F74 00063023 */  negu       $a2, $a2
    /* 192A88 802D9F78 00065E00 */  sll        $t3, $a2, 24
    /* 192A8C 802D9F7C 000B3603 */  sra        $a2, $t3, 24
    /* 192A90 802D9F80 00076C03 */  sra        $t5, $a3, 16
    /* 192A94 802D9F84 01A03825 */  or         $a3, $t5, $zero
    /* 192A98 802D9F88 AFA60034 */  sw         $a2, 0x34($sp)
    /* 192A9C 802D9F8C 24050003 */  addiu      $a1, $zero, 0x3
    /* 192AA0 802D9F90 0C032061 */  jal        func_800C8184_D7134
    /* 192AA4 802D9F94 AFA40040 */   sw        $a0, 0x40($sp)
    /* 192AA8 802D9F98 87A50054 */  lh         $a1, 0x54($sp)
    /* 192AAC 802D9F9C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 192AB0 802D9FA0 50A10052 */  beql       $a1, $at, .L802DA0EC_192BFC
    /* 192AB4 802D9FA4 93A40073 */   lbu       $a0, 0x73($sp)
    /* 192AB8 802D9FA8 0C02245B */  jal        func_8008916C_9811C
    /* 192ABC 802D9FAC 93A40073 */   lbu       $a0, 0x73($sp)
    /* 192AC0 802D9FB0 87AF0054 */  lh         $t7, 0x54($sp)
    /* 192AC4 802D9FB4 8FA8003C */  lw         $t0, 0x3C($sp)
    /* 192AC8 802D9FB8 3C188015 */  lui        $t8, %hi(D_8014DD50)
    /* 192ACC 802D9FBC 2718DD50 */  addiu      $t8, $t8, %lo(D_8014DD50)
    /* 192AD0 802D9FC0 000F7100 */  sll        $t6, $t7, 4
    /* 192AD4 802D9FC4 01D81821 */  addu       $v1, $t6, $t8
    /* 192AD8 802D9FC8 84790000 */  lh         $t9, 0x0($v1)
    /* 192ADC 802D9FCC 850A0000 */  lh         $t2, 0x0($t0)
    /* 192AE0 802D9FD0 846D0002 */  lh         $t5, 0x2($v1)
    /* 192AE4 802D9FD4 850F0002 */  lh         $t7, 0x2($t0)
    /* 192AE8 802D9FD8 032A2821 */  addu       $a1, $t9, $t2
    /* 192AEC 802D9FDC 84790004 */  lh         $t9, 0x4($v1)
    /* 192AF0 802D9FE0 850A0004 */  lh         $t2, 0x4($t0)
    /* 192AF4 802D9FE4 01AF3021 */  addu       $a2, $t5, $t7
    /* 192AF8 802D9FE8 00067400 */  sll        $t6, $a2, 16
    /* 192AFC 802D9FEC 00055C00 */  sll        $t3, $a1, 16
    /* 192B00 802D9FF0 000B2C03 */  sra        $a1, $t3, 16
    /* 192B04 802D9FF4 000E3403 */  sra        $a2, $t6, 16
    /* 192B08 802D9FF8 032A3821 */  addu       $a3, $t9, $t2
    /* 192B0C 802D9FFC 00075C00 */  sll        $t3, $a3, 16
    /* 192B10 802DA000 27AE0064 */  addiu      $t6, $sp, 0x64
    /* 192B14 802DA004 27AF0068 */  addiu      $t7, $sp, 0x68
    /* 192B18 802DA008 27AD006C */  addiu      $t5, $sp, 0x6C
    /* 192B1C 802DA00C 00408025 */  or         $s0, $v0, $zero
    /* 192B20 802DA010 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 192B24 802DA014 AFAF0014 */  sw         $t7, 0x14($sp)
    /* 192B28 802DA018 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 192B2C 802DA01C 000B3C03 */  sra        $a3, $t3, 16
    /* 192B30 802DA020 0C04A10A */  jal        func_80128428_1373D8
    /* 192B34 802DA024 02202025 */   or        $a0, $s1, $zero
    /* 192B38 802DA028 9239001A */  lbu        $t9, 0x1A($s1)
    /* 192B3C 802DA02C 3C0B8025 */  lui        $t3, %hi(D_8025668C)
    /* 192B40 802DA030 2418FFF8 */  addiu      $t8, $zero, -0x8
    /* 192B44 802DA034 00195080 */  sll        $t2, $t9, 2
    /* 192B48 802DA038 01595023 */  subu       $t2, $t2, $t9
    /* 192B4C 802DA03C 000A5080 */  sll        $t2, $t2, 2
    /* 192B50 802DA040 01595021 */  addu       $t2, $t2, $t9
    /* 192B54 802DA044 000A50C0 */  sll        $t2, $t2, 3
    /* 192B58 802DA048 016A5821 */  addu       $t3, $t3, $t2
    /* 192B5C 802DA04C 856B668C */  lh         $t3, %lo(D_8025668C)($t3)
    /* 192B60 802DA050 240C0001 */  addiu      $t4, $zero, 0x1
    /* 192B64 802DA054 AFAC001C */  sw         $t4, 0x1C($sp)
    /* 192B68 802DA058 AFB80010 */  sw         $t8, 0x10($sp)
    /* 192B6C 802DA05C 87A4006E */  lh         $a0, 0x6E($sp)
    /* 192B70 802DA060 87A5006A */  lh         $a1, 0x6A($sp)
    /* 192B74 802DA064 87A60066 */  lh         $a2, 0x66($sp)
    /* 192B78 802DA068 24070040 */  addiu      $a3, $zero, 0x40
    /* 192B7C 802DA06C AFB00018 */  sw         $s0, 0x18($sp)
    /* 192B80 802DA070 0C031E49 */  jal        func_800C7924_D68D4
    /* 192B84 802DA074 AFAB0014 */   sw        $t3, 0x14($sp)
    /* 192B88 802DA078 862F0006 */  lh         $t7, 0x6($s1)
    /* 192B8C 802DA07C 240E4000 */  addiu      $t6, $zero, 0x4000
    /* 192B90 802DA080 00028400 */  sll        $s0, $v0, 16
    /* 192B94 802DA084 00023C00 */  sll        $a3, $v0, 16
    /* 192B98 802DA088 01CF2023 */  subu       $a0, $t6, $t7
    /* 192B9C 802DA08C 00106C03 */  sra        $t5, $s0, 16
    /* 192BA0 802DA090 3098FFFF */  andi       $t8, $a0, 0xFFFF
    /* 192BA4 802DA094 0007CC03 */  sra        $t9, $a3, 16
    /* 192BA8 802DA098 01A08025 */  or         $s0, $t5, $zero
    /* 192BAC 802DA09C 03203825 */  or         $a3, $t9, $zero
    /* 192BB0 802DA0A0 03002025 */  or         $a0, $t8, $zero
    /* 192BB4 802DA0A4 00002825 */  or         $a1, $zero, $zero
    /* 192BB8 802DA0A8 0C03203C */  jal        func_800C80F0_D70A0
    /* 192BBC 802DA0AC 00003025 */   or        $a2, $zero, $zero
    /* 192BC0 802DA0B0 00103C00 */  sll        $a3, $s0, 16
    /* 192BC4 802DA0B4 00075403 */  sra        $t2, $a3, 16
    /* 192BC8 802DA0B8 01403825 */  or         $a3, $t2, $zero
    /* 192BCC 802DA0BC 00002025 */  or         $a0, $zero, $zero
    /* 192BD0 802DA0C0 00002825 */  or         $a1, $zero, $zero
    /* 192BD4 802DA0C4 0C032083 */  jal        func_800C820C_D71BC
    /* 192BD8 802DA0C8 00003025 */   or        $a2, $zero, $zero
    /* 192BDC 802DA0CC 00103C00 */  sll        $a3, $s0, 16
    /* 192BE0 802DA0D0 00075C03 */  sra        $t3, $a3, 16
    /* 192BE4 802DA0D4 01603825 */  or         $a3, $t3, $zero
    /* 192BE8 802DA0D8 83A40043 */  lb         $a0, 0x43($sp)
    /* 192BEC 802DA0DC 24050003 */  addiu      $a1, $zero, 0x3
    /* 192BF0 802DA0E0 0C032061 */  jal        func_800C8184_D7134
    /* 192BF4 802DA0E4 83A60037 */   lb        $a2, 0x37($sp)
    /* 192BF8 802DA0E8 93A40073 */  lbu        $a0, 0x73($sp)
  .L802DA0EC_192BFC:
    /* 192BFC 802DA0EC 0C02245B */  jal        func_8008916C_9811C
    /* 192C00 802DA0F0 87A50056 */   lh        $a1, 0x56($sp)
    /* 192C04 802DA0F4 8FA30038 */  lw         $v1, 0x38($sp)
    /* 192C08 802DA0F8 27AC006C */  addiu      $t4, $sp, 0x6C
    /* 192C0C 802DA0FC 27AD0068 */  addiu      $t5, $sp, 0x68
    /* 192C10 802DA100 27AE0064 */  addiu      $t6, $sp, 0x64
    /* 192C14 802DA104 00408025 */  or         $s0, $v0, $zero
    /* 192C18 802DA108 AFAE0018 */  sw         $t6, 0x18($sp)
    /* 192C1C 802DA10C AFAD0014 */  sw         $t5, 0x14($sp)
    /* 192C20 802DA110 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 192C24 802DA114 02202025 */  or         $a0, $s1, $zero
    /* 192C28 802DA118 84650000 */  lh         $a1, 0x0($v1)
    /* 192C2C 802DA11C 84660002 */  lh         $a2, 0x2($v1)
    /* 192C30 802DA120 0C04A10A */  jal        func_80128428_1373D8
    /* 192C34 802DA124 84670004 */   lh        $a3, 0x4($v1)
    /* 192C38 802DA128 9238001A */  lbu        $t8, 0x1A($s1)
    /* 192C3C 802DA12C 3C0A8025 */  lui        $t2, %hi(D_8025668C)
    /* 192C40 802DA130 240FFFF8 */  addiu      $t7, $zero, -0x8
    /* 192C44 802DA134 0018C880 */  sll        $t9, $t8, 2
    /* 192C48 802DA138 0338C823 */  subu       $t9, $t9, $t8
    /* 192C4C 802DA13C 0019C880 */  sll        $t9, $t9, 2
    /* 192C50 802DA140 0338C821 */  addu       $t9, $t9, $t8
    /* 192C54 802DA144 0019C8C0 */  sll        $t9, $t9, 3
    /* 192C58 802DA148 01595021 */  addu       $t2, $t2, $t9
    /* 192C5C 802DA14C 854A668C */  lh         $t2, %lo(D_8025668C)($t2)
    /* 192C60 802DA150 240B0001 */  addiu      $t3, $zero, 0x1
    /* 192C64 802DA154 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 192C68 802DA158 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 192C6C 802DA15C 87A4006E */  lh         $a0, 0x6E($sp)
    /* 192C70 802DA160 87A5006A */  lh         $a1, 0x6A($sp)
    /* 192C74 802DA164 87A60066 */  lh         $a2, 0x66($sp)
    /* 192C78 802DA168 24070040 */  addiu      $a3, $zero, 0x40
    /* 192C7C 802DA16C AFB00018 */  sw         $s0, 0x18($sp)
    /* 192C80 802DA170 0C031E49 */  jal        func_800C7924_D68D4
    /* 192C84 802DA174 AFAA0014 */   sw        $t2, 0x14($sp)
    /* 192C88 802DA178 862D0006 */  lh         $t5, 0x6($s1)
    /* 192C8C 802DA17C 240E4000 */  addiu      $t6, $zero, 0x4000
    /* 192C90 802DA180 00028400 */  sll        $s0, $v0, 16
    /* 192C94 802DA184 00023C00 */  sll        $a3, $v0, 16
    /* 192C98 802DA188 01CD2023 */  subu       $a0, $t6, $t5
    /* 192C9C 802DA18C 00106403 */  sra        $t4, $s0, 16
    /* 192CA0 802DA190 308FFFFF */  andi       $t7, $a0, 0xFFFF
    /* 192CA4 802DA194 0007C403 */  sra        $t8, $a3, 16
    /* 192CA8 802DA198 01808025 */  or         $s0, $t4, $zero
    /* 192CAC 802DA19C 03003825 */  or         $a3, $t8, $zero
    /* 192CB0 802DA1A0 01E02025 */  or         $a0, $t7, $zero
    /* 192CB4 802DA1A4 00002825 */  or         $a1, $zero, $zero
    /* 192CB8 802DA1A8 0C03203C */  jal        func_800C80F0_D70A0
    /* 192CBC 802DA1AC 00003025 */   or        $a2, $zero, $zero
    /* 192CC0 802DA1B0 00103C00 */  sll        $a3, $s0, 16
    /* 192CC4 802DA1B4 0007CC03 */  sra        $t9, $a3, 16
    /* 192CC8 802DA1B8 03203825 */  or         $a3, $t9, $zero
    /* 192CCC 802DA1BC 00002025 */  or         $a0, $zero, $zero
    /* 192CD0 802DA1C0 00002825 */  or         $a1, $zero, $zero
    /* 192CD4 802DA1C4 0C032083 */  jal        func_800C820C_D71BC
    /* 192CD8 802DA1C8 00003025 */   or        $a2, $zero, $zero
    /* 192CDC 802DA1CC 8FA4005C */  lw         $a0, 0x5C($sp)
    /* 192CE0 802DA1D0 83A60063 */  lb         $a2, 0x63($sp)
    /* 192CE4 802DA1D4 00103C00 */  sll        $a3, $s0, 16
    /* 192CE8 802DA1D8 00042023 */  negu       $a0, $a0
    /* 192CEC 802DA1DC 00045600 */  sll        $t2, $a0, 24
    /* 192CF0 802DA1E0 000A2603 */  sra        $a0, $t2, 24
    /* 192CF4 802DA1E4 00076403 */  sra        $t4, $a3, 16
    /* 192CF8 802DA1E8 01803825 */  or         $a3, $t4, $zero
    /* 192CFC 802DA1EC AFA40040 */  sw         $a0, 0x40($sp)
    /* 192D00 802DA1F0 24050003 */  addiu      $a1, $zero, 0x3
    /* 192D04 802DA1F4 0C032061 */  jal        func_800C8184_D7134
    /* 192D08 802DA1F8 AFA6003C */   sw        $a2, 0x3C($sp)
    /* 192D0C 802DA1FC 87A50052 */  lh         $a1, 0x52($sp)
    /* 192D10 802DA200 2401FFFF */  addiu      $at, $zero, -0x1
    /* 192D14 802DA204 10A10051 */  beq        $a1, $at, .L802DA34C_192E5C
    /* 192D18 802DA208 00000000 */   nop
    /* 192D1C 802DA20C 0C02245B */  jal        func_8008916C_9811C
    /* 192D20 802DA210 93A40073 */   lbu       $a0, 0x73($sp)
    /* 192D24 802DA214 87AE0052 */  lh         $t6, 0x52($sp)
    /* 192D28 802DA218 8FA80038 */  lw         $t0, 0x38($sp)
    /* 192D2C 802DA21C 3C0F8015 */  lui        $t7, %hi(D_8014DD50)
    /* 192D30 802DA220 25EFDD50 */  addiu      $t7, $t7, %lo(D_8014DD50)
    /* 192D34 802DA224 000E6900 */  sll        $t5, $t6, 4
    /* 192D38 802DA228 01AF1821 */  addu       $v1, $t5, $t7
    /* 192D3C 802DA22C 84780000 */  lh         $t8, 0x0($v1)
    /* 192D40 802DA230 85190000 */  lh         $t9, 0x0($t0)
    /* 192D44 802DA234 846C0002 */  lh         $t4, 0x2($v1)
    /* 192D48 802DA238 850E0002 */  lh         $t6, 0x2($t0)
    /* 192D4C 802DA23C 03192821 */  addu       $a1, $t8, $t9
    /* 192D50 802DA240 84780004 */  lh         $t8, 0x4($v1)
    /* 192D54 802DA244 85190004 */  lh         $t9, 0x4($t0)
    /* 192D58 802DA248 018E3021 */  addu       $a2, $t4, $t6
    /* 192D5C 802DA24C 00066C00 */  sll        $t5, $a2, 16
    /* 192D60 802DA250 00055400 */  sll        $t2, $a1, 16
    /* 192D64 802DA254 000A2C03 */  sra        $a1, $t2, 16
    /* 192D68 802DA258 000D3403 */  sra        $a2, $t5, 16
    /* 192D6C 802DA25C 03193821 */  addu       $a3, $t8, $t9
    /* 192D70 802DA260 00075400 */  sll        $t2, $a3, 16
    /* 192D74 802DA264 27AD0064 */  addiu      $t5, $sp, 0x64
    /* 192D78 802DA268 27AE0068 */  addiu      $t6, $sp, 0x68
    /* 192D7C 802DA26C 27AC006C */  addiu      $t4, $sp, 0x6C
    /* 192D80 802DA270 00408025 */  or         $s0, $v0, $zero
    /* 192D84 802DA274 AFAC0010 */  sw         $t4, 0x10($sp)
    /* 192D88 802DA278 AFAE0014 */  sw         $t6, 0x14($sp)
    /* 192D8C 802DA27C AFAD0018 */  sw         $t5, 0x18($sp)
    /* 192D90 802DA280 000A3C03 */  sra        $a3, $t2, 16
    /* 192D94 802DA284 0C04A10A */  jal        func_80128428_1373D8
    /* 192D98 802DA288 02202025 */   or        $a0, $s1, $zero
    /* 192D9C 802DA28C 9238001A */  lbu        $t8, 0x1A($s1)
    /* 192DA0 802DA290 3C0A8025 */  lui        $t2, %hi(D_8025668C)
    /* 192DA4 802DA294 240FFFF8 */  addiu      $t7, $zero, -0x8
    /* 192DA8 802DA298 0018C880 */  sll        $t9, $t8, 2
    /* 192DAC 802DA29C 0338C823 */  subu       $t9, $t9, $t8
    /* 192DB0 802DA2A0 0019C880 */  sll        $t9, $t9, 2
    /* 192DB4 802DA2A4 0338C821 */  addu       $t9, $t9, $t8
    /* 192DB8 802DA2A8 0019C8C0 */  sll        $t9, $t9, 3
    /* 192DBC 802DA2AC 01595021 */  addu       $t2, $t2, $t9
    /* 192DC0 802DA2B0 854A668C */  lh         $t2, %lo(D_8025668C)($t2)
    /* 192DC4 802DA2B4 240B0001 */  addiu      $t3, $zero, 0x1
    /* 192DC8 802DA2B8 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 192DCC 802DA2BC AFAF0010 */  sw         $t7, 0x10($sp)
    /* 192DD0 802DA2C0 87A4006E */  lh         $a0, 0x6E($sp)
    /* 192DD4 802DA2C4 87A5006A */  lh         $a1, 0x6A($sp)
    /* 192DD8 802DA2C8 87A60066 */  lh         $a2, 0x66($sp)
    /* 192DDC 802DA2CC 24070040 */  addiu      $a3, $zero, 0x40
    /* 192DE0 802DA2D0 AFB00018 */  sw         $s0, 0x18($sp)
    /* 192DE4 802DA2D4 0C031E49 */  jal        func_800C7924_D68D4
    /* 192DE8 802DA2D8 AFAA0014 */   sw        $t2, 0x14($sp)
    /* 192DEC 802DA2DC 862E0006 */  lh         $t6, 0x6($s1)
    /* 192DF0 802DA2E0 240D4000 */  addiu      $t5, $zero, 0x4000
    /* 192DF4 802DA2E4 00028400 */  sll        $s0, $v0, 16
    /* 192DF8 802DA2E8 00023C00 */  sll        $a3, $v0, 16
    /* 192DFC 802DA2EC 01AE2023 */  subu       $a0, $t5, $t6
    /* 192E00 802DA2F0 00106403 */  sra        $t4, $s0, 16
    /* 192E04 802DA2F4 308FFFFF */  andi       $t7, $a0, 0xFFFF
    /* 192E08 802DA2F8 0007C403 */  sra        $t8, $a3, 16
    /* 192E0C 802DA2FC 01808025 */  or         $s0, $t4, $zero
    /* 192E10 802DA300 03003825 */  or         $a3, $t8, $zero
    /* 192E14 802DA304 01E02025 */  or         $a0, $t7, $zero
    /* 192E18 802DA308 00002825 */  or         $a1, $zero, $zero
    /* 192E1C 802DA30C 0C03203C */  jal        func_800C80F0_D70A0
    /* 192E20 802DA310 00003025 */   or        $a2, $zero, $zero
    /* 192E24 802DA314 00103C00 */  sll        $a3, $s0, 16
    /* 192E28 802DA318 0007CC03 */  sra        $t9, $a3, 16
    /* 192E2C 802DA31C 03203825 */  or         $a3, $t9, $zero
    /* 192E30 802DA320 00002025 */  or         $a0, $zero, $zero
    /* 192E34 802DA324 00002825 */  or         $a1, $zero, $zero
    /* 192E38 802DA328 0C032083 */  jal        func_800C820C_D71BC
    /* 192E3C 802DA32C 00003025 */   or        $a2, $zero, $zero
    /* 192E40 802DA330 00103C00 */  sll        $a3, $s0, 16
    /* 192E44 802DA334 00075403 */  sra        $t2, $a3, 16
    /* 192E48 802DA338 01403825 */  or         $a3, $t2, $zero
    /* 192E4C 802DA33C 83A40043 */  lb         $a0, 0x43($sp)
    /* 192E50 802DA340 24050003 */  addiu      $a1, $zero, 0x3
    /* 192E54 802DA344 0C032061 */  jal        func_800C8184_D7134
    /* 192E58 802DA348 83A6003F */   lb        $a2, 0x3F($sp)
  .L802DA34C_192E5C:
    /* 192E5C 802DA34C 0C022384 */  jal        func_80088E10_97DC0
    /* 192E60 802DA350 87A4005A */   lh        $a0, 0x5A($sp)
    /* 192E64 802DA354 0C022384 */  jal        func_80088E10_97DC0
    /* 192E68 802DA358 87A40058 */   lh        $a0, 0x58($sp)
    /* 192E6C 802DA35C 0C022384 */  jal        func_80088E10_97DC0
    /* 192E70 802DA360 87A40056 */   lh        $a0, 0x56($sp)
  .L802DA364_192E74:
    /* 192E74 802DA364 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 192E78 802DA368 8FB00024 */  lw         $s0, 0x24($sp)
    /* 192E7C 802DA36C 8FB10028 */  lw         $s1, 0x28($sp)
    /* 192E80 802DA370 03E00008 */  jr         $ra
    /* 192E84 802DA374 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_802D9C60_192770
