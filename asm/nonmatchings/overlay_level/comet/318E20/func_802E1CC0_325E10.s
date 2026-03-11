nonmatching func_802E1CC0_325E10, 0x23C

glabel func_802E1CC0_325E10
    /* 325E10 802E1CC0 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* 325E14 802E1CC4 AFA40080 */  sw         $a0, 0x80($sp)
    /* 325E18 802E1CC8 93AE0083 */  lbu        $t6, 0x83($sp)
    /* 325E1C 802E1CCC 3C188005 */  lui        $t8, %hi(alienInstances)
    /* 325E20 802E1CD0 AFB0003C */  sw         $s0, 0x3C($sp)
    /* 325E24 802E1CD4 000E7880 */  sll        $t7, $t6, 2
    /* 325E28 802E1CD8 01EE7821 */  addu       $t7, $t7, $t6
    /* 325E2C 802E1CDC 000F7900 */  sll        $t7, $t7, 4
    /* 325E30 802E1CE0 27188198 */  addiu      $t8, $t8, %lo(alienInstances)
    /* 325E34 802E1CE4 01F88021 */  addu       $s0, $t7, $t8
    /* 325E38 802E1CE8 9219001A */  lbu        $t9, 0x1A($s0)
    /* 325E3C 802E1CEC 3C08802E */  lui        $t0, %hi(D_802E7198)
    /* 325E40 802E1CF0 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 325E44 802E1CF4 AFB10040 */  sw         $s1, 0x40($sp)
    /* 325E48 802E1CF8 25087198 */  addiu      $t0, $t0, %lo(D_802E7198)
    /* 325E4C 802E1CFC A3B9007F */  sb         $t9, 0x7F($sp)
    /* 325E50 802E1D00 8D010000 */  lw         $at, 0x0($t0)
    /* 325E54 802E1D04 27A50078 */  addiu      $a1, $sp, 0x78
    /* 325E58 802E1D08 8204000D */  lb         $a0, 0xD($s0)
    /* 325E5C 802E1D0C ACA10000 */  sw         $at, 0x0($a1)
    /* 325E60 802E1D10 95010004 */  lhu        $at, 0x4($t0)
    /* 325E64 802E1D14 A600001E */  sh         $zero, 0x1E($s0)
    /* 325E68 802E1D18 27A6006C */  addiu      $a2, $sp, 0x6C
    /* 325E6C 802E1D1C 0C02A4C7 */  jal        func_800A931C_B82CC
    /* 325E70 802E1D20 A4A10004 */   sh        $at, 0x4($a1)
    /* 325E74 802E1D24 93AC007F */  lbu        $t4, 0x7F($sp)
    /* 325E78 802E1D28 860A000C */  lh         $t2, 0xC($s0)
    /* 325E7C 802E1D2C 3C0E8025 */  lui        $t6, %hi(alienSpecs)
    /* 325E80 802E1D30 000C6880 */  sll        $t5, $t4, 2
    /* 325E84 802E1D34 01AC6823 */  subu       $t5, $t5, $t4
    /* 325E88 802E1D38 000D6880 */  sll        $t5, $t5, 2
    /* 325E8C 802E1D3C 3C088015 */  lui        $t0, %hi(D_8014DD50)
    /* 325E90 802E1D40 01AC6821 */  addu       $t5, $t5, $t4
    /* 325E94 802E1D44 000D68C0 */  sll        $t5, $t5, 3
    /* 325E98 802E1D48 25CE6680 */  addiu      $t6, $t6, %lo(alienSpecs)
    /* 325E9C 802E1D4C 2508DD50 */  addiu      $t0, $t0, %lo(D_8014DD50)
    /* 325EA0 802E1D50 000A4900 */  sll        $t1, $t2, 4
    /* 325EA4 802E1D54 01AE8821 */  addu       $s1, $t5, $t6
    /* 325EA8 802E1D58 01281021 */  addu       $v0, $t1, $t0
    /* 325EAC 802E1D5C 8FAF006C */  lw         $t7, 0x6C($sp)
    /* 325EB0 802E1D60 94460006 */  lhu        $a2, 0x6($v0)
    /* 325EB4 802E1D64 944D000A */  lhu        $t5, 0xA($v0)
    /* 325EB8 802E1D68 860E000A */  lh         $t6, 0xA($s0)
    /* 325EBC 802E1D6C 8FB80070 */  lw         $t8, 0x70($sp)
    /* 325EC0 802E1D70 8FB90074 */  lw         $t9, 0x74($sp)
    /* 325EC4 802E1D74 A62F0020 */  sh         $t7, 0x20($s1)
    /* 325EC8 802E1D78 00063023 */  negu       $a2, $a2
    /* 325ECC 802E1D7C 01AE3821 */  addu       $a3, $t5, $t6
    /* 325ED0 802E1D80 00077C00 */  sll        $t7, $a3, 16
    /* 325ED4 802E1D84 00065C00 */  sll        $t3, $a2, 16
    /* 325ED8 802E1D88 000B3403 */  sra        $a2, $t3, 16
    /* 325EDC 802E1D8C 000F3C03 */  sra        $a3, $t7, 16
    /* 325EE0 802E1D90 93A40083 */  lbu        $a0, 0x83($sp)
    /* 325EE4 802E1D94 00002825 */  or         $a1, $zero, $zero
    /* 325EE8 802E1D98 A6380022 */  sh         $t8, 0x22($s1)
    /* 325EEC 802E1D9C 0C021A29 */  jal        func_800868A4_95854
    /* 325EF0 802E1DA0 A6390024 */   sh        $t9, 0x24($s1)
    /* 325EF4 802E1DA4 86040000 */  lh         $a0, 0x0($s0)
    /* 325EF8 802E1DA8 86050002 */  lh         $a1, 0x2($s0)
    /* 325EFC 802E1DAC 86060004 */  lh         $a2, 0x4($s0)
    /* 325F00 802E1DB0 0C04D751 */  jal        func_80135D44_144CF4
    /* 325F04 802E1DB4 3C074040 */   lui       $a3, (0x40400000 >> 16)
    /* 325F08 802E1DB8 86040006 */  lh         $a0, 0x6($s0)
    /* 325F0C 802E1DBC 24844000 */  addiu      $a0, $a0, 0x4000
    /* 325F10 802E1DC0 3099FFFF */  andi       $t9, $a0, 0xFFFF
    /* 325F14 802E1DC4 0C007660 */  jal        sins
    /* 325F18 802E1DC8 03202025 */   or        $a0, $t9, $zero
    /* 325F1C 802E1DCC 44822000 */  mtc1       $v0, $f4
    /* 325F20 802E1DD0 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 325F24 802E1DD4 44815800 */  mtc1       $at, $f11
    /* 325F28 802E1DD8 468021A0 */  cvt.s.w    $f6, $f4
    /* 325F2C 802E1DDC 44805000 */  mtc1       $zero, $f10
    /* 325F30 802E1DE0 86040006 */  lh         $a0, 0x6($s0)
    /* 325F34 802E1DE4 24844000 */  addiu      $a0, $a0, 0x4000
    /* 325F38 802E1DE8 46003221 */  cvt.d.s    $f8, $f6
    /* 325F3C 802E1DEC 308AFFFF */  andi       $t2, $a0, 0xFFFF
    /* 325F40 802E1DF0 462A4403 */  div.d      $f16, $f8, $f10
    /* 325F44 802E1DF4 01402025 */  or         $a0, $t2, $zero
    /* 325F48 802E1DF8 462084A0 */  cvt.s.d    $f18, $f16
    /* 325F4C 802E1DFC 0C007654 */  jal        coss
    /* 325F50 802E1E00 E7B2005C */   swc1      $f18, 0x5C($sp)
    /* 325F54 802E1E04 44822000 */  mtc1       $v0, $f4
    /* 325F58 802E1E08 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
    /* 325F5C 802E1E0C 44815800 */  mtc1       $at, $f11
    /* 325F60 802E1E10 468021A0 */  cvt.s.w    $f6, $f4
    /* 325F64 802E1E14 44805000 */  mtc1       $zero, $f10
    /* 325F68 802E1E18 27A90068 */  addiu      $t1, $sp, 0x68
    /* 325F6C 802E1E1C 27A80064 */  addiu      $t0, $sp, 0x64
    /* 325F70 802E1E20 27AB0060 */  addiu      $t3, $sp, 0x60
    /* 325F74 802E1E24 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 325F78 802E1E28 46003221 */  cvt.d.s    $f8, $f6
    /* 325F7C 802E1E2C AFA80014 */  sw         $t0, 0x14($sp)
    /* 325F80 802E1E30 462A4403 */  div.d      $f16, $f8, $f10
    /* 325F84 802E1E34 AFA90010 */  sw         $t1, 0x10($sp)
    /* 325F88 802E1E38 02002025 */  or         $a0, $s0, $zero
    /* 325F8C 802E1E3C 86250020 */  lh         $a1, 0x20($s1)
    /* 325F90 802E1E40 86260022 */  lh         $a2, 0x22($s1)
    /* 325F94 802E1E44 86270024 */  lh         $a3, 0x24($s1)
    /* 325F98 802E1E48 46208487 */  neg.d      $f18, $f16
    /* 325F9C 802E1E4C 46209120 */  cvt.s.d    $f4, $f18
    /* 325FA0 802E1E50 0C04A10A */  jal        func_80128428_1373D8
    /* 325FA4 802E1E54 E7A40058 */   swc1      $f4, 0x58($sp)
    /* 325FA8 802E1E58 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
    /* 325FAC 802E1E5C 44810000 */  mtc1       $at, $f0
    /* 325FB0 802E1E60 C7A6005C */  lwc1       $f6, 0x5C($sp)
    /* 325FB4 802E1E64 C7B00058 */  lwc1       $f16, 0x58($sp)
    /* 325FB8 802E1E68 240F0028 */  addiu      $t7, $zero, 0x28
    /* 325FBC 802E1E6C 46003202 */  mul.s      $f8, $f6, $f0
    /* 325FC0 802E1E70 240A0064 */  addiu      $t2, $zero, 0x64
    /* 325FC4 802E1E74 2409004B */  addiu      $t1, $zero, 0x4B
    /* 325FC8 802E1E78 46008482 */  mul.s      $f18, $f16, $f0
    /* 325FCC 802E1E7C 2408000A */  addiu      $t0, $zero, 0xA
    /* 325FD0 802E1E80 240B0006 */  addiu      $t3, $zero, 0x6
    /* 325FD4 802E1E84 240C00FF */  addiu      $t4, $zero, 0xFF
    /* 325FD8 802E1E88 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 325FDC 802E1E8C AFAE0030 */  sw         $t6, 0x30($sp)
    /* 325FE0 802E1E90 4600428D */  trunc.w.s  $f10, $f8
    /* 325FE4 802E1E94 AFAC0028 */  sw         $t4, 0x28($sp)
    /* 325FE8 802E1E98 AFAB0024 */  sw         $t3, 0x24($sp)
    /* 325FEC 802E1E9C 4600910D */  trunc.w.s  $f4, $f18
    /* 325FF0 802E1EA0 44075000 */  mfc1       $a3, $f10
    /* 325FF4 802E1EA4 AFA80020 */  sw         $t0, 0x20($sp)
    /* 325FF8 802E1EA8 AFA9001C */  sw         $t1, 0x1C($sp)
    /* 325FFC 802E1EAC 00076E00 */  sll        $t5, $a3, 24
    /* 326000 802E1EB0 44192000 */  mfc1       $t9, $f4
    /* 326004 802E1EB4 000D3E03 */  sra        $a3, $t5, 24
    /* 326008 802E1EB8 240D00FF */  addiu      $t5, $zero, 0xFF
    /* 32600C 802E1EBC AFAD002C */  sw         $t5, 0x2C($sp)
    /* 326010 802E1EC0 AFAA0018 */  sw         $t2, 0x18($sp)
    /* 326014 802E1EC4 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 326018 802E1EC8 87A4006A */  lh         $a0, 0x6A($sp)
    /* 32601C 802E1ECC 87A50066 */  lh         $a1, 0x66($sp)
    /* 326020 802E1ED0 87A60062 */  lh         $a2, 0x62($sp)
    /* 326024 802E1ED4 0C031507 */  jal        func_800C541C_D43CC
    /* 326028 802E1ED8 AFB90014 */   sw        $t9, 0x14($sp)
    /* 32602C 802E1EDC 93A40083 */  lbu        $a0, 0x83($sp)
    /* 326030 802E1EE0 0C04DD1A */  jal        func_80137468_146418
    /* 326034 802E1EE4 2405025C */   addiu     $a1, $zero, 0x25C
    /* 326038 802E1EE8 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 32603C 802E1EEC 8FB0003C */  lw         $s0, 0x3C($sp)
    /* 326040 802E1EF0 8FB10040 */  lw         $s1, 0x40($sp)
    /* 326044 802E1EF4 03E00008 */  jr         $ra
    /* 326048 802E1EF8 27BD0080 */   addiu     $sp, $sp, 0x80
endlabel func_802E1CC0_325E10
